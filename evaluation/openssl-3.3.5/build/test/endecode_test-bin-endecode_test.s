	.file	"endecode_test.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB493:
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
.LFE493:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB494:
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
.LFE494:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.data
	.align 4
	.type	default_libctx, @object
	.size	default_libctx, 4
default_libctx:
	.long	1
	.local	is_fips
	.comm	is_fips,4,4
	.local	is_fips_3_0_0
	.comm	is_fips_3_0_0,4,4
	.local	testctx
	.comm	testctx,8,8
	.local	keyctx
	.comm	keyctx,8,8
	.local	testpropq
	.comm	testpropq,8,8
	.local	nullprov
	.comm	nullprov,8,8
	.local	deflprov
	.comm	deflprov,8,8
	.local	keyprov
	.comm	keyprov,8,8
	.local	bnctx
	.comm	bnctx,8,8
	.local	bld_prime_nc
	.comm	bld_prime_nc,8,8
	.local	bld_prime
	.comm	bld_prime,8,8
	.local	ec_explicit_prime_params_nc
	.comm	ec_explicit_prime_params_nc,8,8
	.local	ec_explicit_prime_params_explicit
	.comm	ec_explicit_prime_params_explicit,8,8
	.local	bld_tri_nc
	.comm	bld_tri_nc,8,8
	.local	bld_tri
	.comm	bld_tri,8,8
	.local	ec_explicit_tri_params_nc
	.comm	ec_explicit_tri_params_nc,8,8
	.local	ec_explicit_tri_params_explicit
	.comm	ec_explicit_tri_params_explicit,8,8
	.section	.rodata
.LC0:
	.string	"DH"
.LC1:
	.string	"X9.42 DH"
	.text
	.type	make_template, @function
make_template:
.LFB564:
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
	movq	$0, -8(%rbp)
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L6
	movq	keyctx(%rip), %rax
	movq	%rax, %rdi
	call	get_dh512@PLT
	jmp	.L12
.L6:
	leaq	.LC1(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L8
	movq	keyctx(%rip), %rax
	movq	%rax, %rdi
	call	get_dhx512@PLT
	jmp	.L12
.L8:
	movq	testpropq(%rip), %rdx
	movq	keyctx(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen_init@PLT
	testl	%eax, %eax
	jle	.L11
	cmpq	$0, -32(%rbp)
	je	.L10
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	jle	.L11
.L10:
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_generate@PLT
	testl	%eax, %eax
	nop
.L11:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-16(%rbp), %rax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	make_template, .-make_template
	.type	make_key, @function
make_key:
.LFB565:
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
	movq	$0, -16(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L14
	movq	testpropq(%rip), %rdx
	movq	keyctx(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -8(%rbp)
	jmp	.L15
.L14:
	movq	testpropq(%rip), %rdx
	movq	keyctx(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -8(%rbp)
.L15:
	cmpq	$0, -8(%rbp)
	je	.L18
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	testl	%eax, %eax
	jle	.L18
	cmpq	$0, -40(%rbp)
	je	.L17
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	jle	.L18
.L17:
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	testl	%eax, %eax
	nop
.L18:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	make_key, .-make_key
	.section	.rodata
	.align 8
.LC2:
	.string	"encode_cb(file, line, &encoded, &encoded_len, pkey, selection, output_type, output_structure, pass, pcipher)"
.LC3:
	.string	"../test/endecode_test.c"
	.align 8
.LC4:
	.string	"decode_cb(file, line, (void **)&pkey2, encoded, encoded_len, output_type, output_structure, (flags & FLAG_DECODE_WITH_TYPE ? type : NULL), selection, pass)"
	.align 8
.LC5:
	.string	"check_cb(file, line, type, encoded, encoded_len)"
.LC6:
	.string	"type-specific"
	.align 8
.LC7:
	.string	"decode_cb(file, line, (void **)&pkey3, encoded, encoded_len, output_type, output_structure, (flags & FLAG_DECODE_WITH_TYPE ? type : NULL), 0, pass)"
	.align 8
.LC8:
	.string	"encode_cb(file, line, &encoded2, &encoded2_len, pkey2, selection, output_type, output_structure, pass, pcipher)"
.LC9:
	.string	"1"
	.align 8
.LC10:
	.string	"EVP_PKEY_parameters_eq(pkey, pkey2)"
	.align 8
.LC11:
	.string	"EVP_PKEY_parameters_eq(pkey, pkey3)"
.LC12:
	.string	"EVP_PKEY_eq(pkey, pkey2)"
.LC13:
	.string	"EVP_PKEY_eq(pkey, pkey3)"
.LC14:
	.string	"|pkey| encoded"
.LC15:
	.string	"|pkey2| encoded"
	.text
	.type	test_encode_decode, @function
test_encode_decode:
.LFB566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -80(%rbp)
	movq	%r9, -104(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -4(%rbp)
	movl	-80(%rbp), %r8d
	movq	-96(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-72(%rbp), %rax
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	pushq	-104(%rbp)
	movq	40(%rbp), %r10
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$175, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L43
	movl	80(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L23
	movl	is_fips(%rip), %eax
	testl	%eax, %eax
	je	.L23
	movl	is_fips_3_0_0(%rip), %eax
	testl	%eax, %eax
	jne	.L23
	movl	80(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L24
	movq	-88(%rbp), %rdi
	jmp	.L25
.L24:
	movl	$0, %edi
.L25:
	movq	-24(%rbp), %r11
	movq	-16(%rbp), %rcx
	movq	-104(%rbp), %r9
	leaq	-32(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-72(%rbp), %rax
	pushq	24(%rbp)
	movl	-80(%rbp), %r8d
	pushq	%r8
	pushq	%rdi
	pushq	16(%rbp)
	movq	48(%rbp), %r10
	movq	%r11, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$180, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L44
	movl	$1, -4(%rbp)
	jmp	.L44
.L23:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movq	-16(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-72(%rbp), %rax
	movq	64(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$188, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L45
	movl	80(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L28
	movq	-88(%rbp), %rdi
	jmp	.L29
.L28:
	movl	$0, %edi
.L29:
	movq	-24(%rbp), %r11
	movq	-16(%rbp), %rcx
	movq	-104(%rbp), %r9
	leaq	-32(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-72(%rbp), %rax
	pushq	24(%rbp)
	movl	-80(%rbp), %r8d
	pushq	%r8
	pushq	%rdi
	pushq	16(%rbp)
	movq	48(%rbp), %r10
	movq	%r11, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$189, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L45
	cmpq	$0, 16(%rbp)
	je	.L30
	leaq	.LC6(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L31
.L30:
	movl	80(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L32
	movq	-88(%rbp), %rdi
	jmp	.L33
.L32:
	movl	$0, %edi
.L33:
	movq	-24(%rbp), %r8
	movq	-16(%rbp), %rcx
	movq	-104(%rbp), %r9
	leaq	-40(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-72(%rbp), %rax
	pushq	24(%rbp)
	pushq	$0
	pushq	%rdi
	pushq	16(%rbp)
	movq	48(%rbp), %r10
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$195, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L45
.L31:
	movq	-32(%rbp), %rdi
	movl	-80(%rbp), %r8d
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-72(%rbp), %rax
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	pushq	-104(%rbp)
	movq	40(%rbp), %r10
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$199, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L45
	cmpl	$4, -80(%rbp)
	jne	.L35
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_parameters_eq@PLT
	movl	%eax, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$204, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L37
	movq	-40(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_parameters_eq@PLT
	movl	%eax, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$206, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L37
	jmp	.L46
.L35:
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$209, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L47
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L37
	movq	-40(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$211, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L47
.L37:
	cmpq	$0, 24(%rbp)
	jne	.L39
	cmpq	$0, 32(%rbp)
	jne	.L39
	movq	-56(%rbp), %rax
	movq	%rax, %r8
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movq	-16(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-72(%rbp), %rax
	movq	56(%rbp), %r10
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	*%r10
	testl	%eax, %eax
	je	.L48
.L39:
	movl	$1, -4(%rbp)
	jmp	.L22
.L43:
	nop
	jmp	.L22
.L44:
	nop
	jmp	.L22
.L45:
	nop
	jmp	.L22
.L46:
	nop
	jmp	.L22
.L47:
	nop
	jmp	.L22
.L48:
	nop
.L22:
	cmpl	$0, -4(%rbp)
	jne	.L40
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L41
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L41
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	leaq	.LC14(%rip), %rdi
	movq	72(%rbp), %rcx
	movq	%rax, %rsi
	call	*%rcx
.L41:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L40
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.L40
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	leaq	.LC15(%rip), %rdi
	movq	72(%rbp), %rcx
	movq	%rax, %rsi
	call	*%rcx
.L40:
	movq	-16(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$233, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$234, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	test_encode_decode, .-test_encode_decode
	.section	.rodata
	.align 8
.LC16:
	.string	"ectx = OSSL_ENCODER_CTX_new_for_pkey(pkey, selection, output_type, output_structure, testpropq)"
.LC17:
	.string	"0"
	.align 8
.LC18:
	.string	"OSSL_ENCODER_CTX_get_num_encoders(ectx)"
	.align 8
.LC19:
	.string	"OSSL_ENCODER_CTX_set_passphrase(ectx, upass, strlen(pass))"
	.align 8
.LC20:
	.string	"OSSL_ENCODER_CTX_set_cipher(ectx, pcipher, NULL)"
	.align 8
.LC21:
	.string	"mem_ser = BIO_new(BIO_s_mem())"
	.align 8
.LC22:
	.string	"OSSL_ENCODER_to_bio(ectx, mem_ser)"
	.align 8
.LC23:
	.string	"BIO_get_mem_ptr(mem_ser, &mem_buf) > 0"
.LC24:
	.string	"*encoded = mem_buf->data"
	.align 8
.LC25:
	.string	"*encoded_len = mem_buf->length"
	.text
	.type	encode_EVP_PKEY_prov, @function
encode_EVP_PKEY_prov:
.LFB567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movl	%r9d, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -48(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -12(%rbp)
	movq	testpropq(%rip), %rdi
	movq	24(%rbp), %rcx
	movq	16(%rbp), %rdx
	movl	-64(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	leaq	.LC16(%rip), %rdi
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L56
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_get_num_encoders@PLT
	movl	%eax, %edi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L56
	cmpq	$0, 32(%rbp)
	je	.L51
	movq	32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_passphrase@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	leaq	.LC19(%rip), %rdi
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L56
.L51:
	cmpq	$0, 40(%rbp)
	je	.L52
	movq	40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_cipher@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	leaq	.LC20(%rip), %rdi
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L56
.L52:
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	leaq	.LC21(%rip), %rdi
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L56
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_bio@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	leaq	.LC22(%rip), %rdi
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L56
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$115, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	setg	%al
	movzbl	%al, %edx
	leaq	.LC23(%rip), %rdi
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L56
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	leaq	.LC24(%rip), %rdi
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L56
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-80(%rbp), %rax
	movq	(%rax), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	test_long_gt@PLT
	testl	%eax, %eax
	je	.L56
	movq	-48(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, -12(%rbp)
	jmp	.L54
.L56:
	nop
.L54:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	encode_EVP_PKEY_prov, .-encode_EVP_PKEY_prov
	.section	.rodata
.LC26:
	.string	"DER"
.LC27:
	.string	"PEM"
	.align 8
.LC28:
	.string	"encoded_bio = BIO_new_mem_buf(encoded, encoded_len)"
	.align 8
.LC29:
	.string	"dctx = OSSL_DECODER_CTX_new_for_pkey(&testpkey, testtype, structure_type, keytype, selection, testctx, testpropq)"
.LC30:
	.string	"BIO_reset(encoded_bio)"
.LC31:
	.string	"(i == 2) ? 0 : 1"
	.align 8
.LC32:
	.string	"OSSL_DECODER_from_bio(dctx, encoded_bio)"
	.align 8
.LC33:
	.string	"EVP_PKEY_parameters_eq(pkey, testpkey)"
.LC34:
	.string	"EVP_PKEY_eq(pkey, testpkey)"
	.text
	.type	decode_EVP_PKEY_prov, @function
decode_EVP_PKEY_prov:
.LFB568:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -64(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	leaq	.LC26(%rip), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L58
	leaq	.LC27(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	.L59
.L58:
	leaq	.LC26(%rip), %rax
	movq	%rax, -48(%rbp)
.L59:
	movq	-120(%rbp), %rax
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdx
	leaq	.LC28(%rip), %rdi
	movl	-92(%rbp), %esi
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L74
	movl	$0, -40(%rbp)
	jmp	.L62
.L72:
	cmpl	$0, -40(%rbp)
	je	.L63
	cmpl	$1, -40(%rbp)
	je	.L64
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.L65
.L64:
	movq	$0, -56(%rbp)
	jmp	.L65
.L63:
	movq	-128(%rbp), %rax
	movq	%rax, -56(%rbp)
.L65:
	movq	testpropq(%rip), %rdi
	movq	testctx(%rip), %r9
	movl	32(%rbp), %r8d
	movq	24(%rbp), %rcx
	movq	16(%rbp), %rdx
	movq	-56(%rbp), %rsi
	leaq	-80(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_new_for_pkey@PLT
	addq	$16, %rsp
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	leaq	.LC29(%rip), %rdi
	movl	-92(%rbp), %esi
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L75
	cmpq	$0, 40(%rbp)
	je	.L67
	movq	40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_set_passphrase@PLT
	testl	%eax, %eax
	je	.L75
.L67:
	movq	-64(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %edi
	leaq	.LC17(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	movl	-92(%rbp), %esi
	movq	-88(%rbp), %rax
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L75
	cmpl	$2, -40(%rbp)
	setne	%al
	movzbl	%al, %ebx
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_from_bio@PLT
	movl	%eax, %edi
	leaq	.LC31(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	movl	-92(%rbp), %esi
	movq	-88(%rbp), %rax
	movl	%ebx, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L75
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	movq	$0, -32(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.L69
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -80(%rbp)
	jmp	.L70
.L69:
	cmpl	$1, -40(%rbp)
	jne	.L70
	cmpl	$4, 32(%rbp)
	jne	.L71
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_parameters_eq@PLT
	movl	%eax, %edi
	leaq	.LC9(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	movl	-92(%rbp), %esi
	movq	-88(%rbp), %rax
	movl	$1, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L70
	jmp	.L61
.L71:
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %edi
	leaq	.LC9(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	movl	-92(%rbp), %esi
	movq	-88(%rbp), %rax
	movl	$1, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L76
.L70:
	addl	$1, -40(%rbp)
.L62:
	cmpl	$2, -40(%rbp)
	jle	.L72
	movl	$1, -36(%rbp)
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	$0, -24(%rbp)
	jmp	.L61
.L74:
	nop
	jmp	.L61
.L75:
	nop
	jmp	.L61
.L76:
	nop
.L61:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	decode_EVP_PKEY_prov, .-decode_EVP_PKEY_prov
	.section	.rodata
	.align 8
.LC35:
	.string	"cipher = EVP_CIPHER_fetch(testctx, pcipher, testpropq)"
	.align 8
.LC36:
	.string	"PEM_write_bio_PrivateKey_traditional(mem_ser, pkey, cipher, upass, passlen, NULL, NULL)"
	.text
	.type	encode_EVP_PKEY_legacy_PEM, @function
encode_EVP_PKEY_legacy_PEM:
.LFB569:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movl	%r9d, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -56(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, 40(%rbp)
	je	.L78
	cmpq	$0, 32(%rbp)
	je	.L78
	movq	32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rax
	movq	40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	leaq	.LC35(%rip), %rdi
	movl	-76(%rbp), %esi
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L83
.L78:
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	leaq	.LC21(%rip), %rdi
	movl	-76(%rbp), %esi
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L84
	movq	-24(%rbp), %rax
	movl	%eax, %edi
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	PEM_write_bio_PrivateKey_traditional@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	leaq	.LC36(%rip), %rdi
	movl	-76(%rbp), %esi
	movq	-72(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L84
	leaq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$115, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	setg	%al
	movzbl	%al, %edx
	leaq	.LC23(%rip), %rdi
	movl	-76(%rbp), %esi
	movq	-72(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L84
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	leaq	.LC24(%rip), %rdi
	movl	-76(%rbp), %esi
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L84
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	movl	-76(%rbp), %esi
	movq	-72(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	test_long_gt@PLT
	testl	%eax, %eax
	je	.L84
	movq	-56(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, -28(%rbp)
	jmp	.L79
.L83:
	nop
	jmp	.L79
.L84:
	nop
.L79:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	encode_EVP_PKEY_legacy_PEM, .-encode_EVP_PKEY_legacy_PEM
	.section	.rodata
	.align 8
.LC37:
	.string	"i2b_PrivateKey_bio(mem_ser, pkey)"
	.align 8
.LC38:
	.string	"i2b_PublicKey_bio(mem_ser, pkey)"
	.text
	.type	encode_EVP_PKEY_MSBLOB, @function
encode_EVP_PKEY_MSBLOB:
.LFB570:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	%r9d, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -4(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	.LC21(%rip), %rdi
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L93
	movl	-48(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L88
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2b_PrivateKey_bio@PLT
	movl	%eax, %edi
	leaq	.LC17(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	jne	.L89
	jmp	.L87
.L88:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2b_PublicKey_bio@PLT
	movl	%eax, %edi
	leaq	.LC17(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L94
.L89:
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$115, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	setg	%al
	movzbl	%al, %edx
	leaq	.LC23(%rip), %rdi
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L95
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	leaq	.LC24(%rip), %rdi
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L95
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	test_long_gt@PLT
	testl	%eax, %eax
	je	.L95
	movq	-32(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L87
.L93:
	nop
	jmp	.L87
.L94:
	nop
	jmp	.L87
.L95:
	nop
.L87:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	encode_EVP_PKEY_MSBLOB, .-encode_EVP_PKEY_MSBLOB
	.type	pass_pw, @function
pass_pw:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	pass_pw, .-pass_pw
	.section	.rodata
	.align 8
.LC39:
	.string	"ossl_assert((selection & OSSL_KEYMGMT_SELECT_PRIVATE_KEY) != 0)"
	.align 8
.LC40:
	.string	"i2b_PVK_bio_ex(mem_ser, pkey, enc, pass_pw, (void *)pass, testctx, testpropq)"
	.text
	.type	encode_EVP_PKEY_PVK, @function
encode_EVP_PKEY_PVK:
.LFB572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movl	%r9d, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, 32(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	movl	$0, -12(%rbp)
	movl	-64(%rbp), %eax
	cltq
	andl	$1, %eax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edx
	leaq	.LC39(%rip), %rdi
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L103
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	leaq	.LC21(%rip), %rdi
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L103
	movq	testpropq(%rip), %rdi
	movq	testctx(%rip), %r9
	movq	32(%rbp), %r8
	leaq	pass_pw(%rip), %rcx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	i2b_PVK_bio_ex@PLT
	addq	$16, %rsp
	movl	%eax, %edi
	leaq	.LC17(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L103
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$115, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	setg	%al
	movzbl	%al, %edx
	leaq	.LC23(%rip), %rdi
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L103
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	leaq	.LC24(%rip), %rdi
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L103
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-80(%rbp), %rax
	movq	(%rax), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	test_long_gt@PLT
	testl	%eax, %eax
	je	.L103
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, -12(%rbp)
	jmp	.L101
.L103:
	nop
.L101:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	encode_EVP_PKEY_PVK, .-encode_EVP_PKEY_PVK
	.section	.rodata
.LC41:
	.string	"data2"
.LC42:
	.string	"data1"
	.text
	.type	test_text, @function
test_text:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC41(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	test_strn_eq@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	test_text, .-test_text
	.type	test_mem, @function
test_mem:
.LFB574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC41(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	test_mem, .-test_mem
	.type	collect_name, @function
collect_name:
.LFB575:
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
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L109
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-8(%rbp), %rdx
	addq	%rdx, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
.L109:
	addq	$1, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	-8(%rbp), %rsi
	movl	$503, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L114
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L112
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movw	$8236, (%rax)
	movb	$0, 2(%rax)
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	jmp	.L113
.L112:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
.L113:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L108
.L114:
	nop
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	collect_name, .-collect_name
	.type	dump_der, @function
dump_der:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_output_memory@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	dump_der, .-dump_der
	.type	dump_pem, @function
dump_pem:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_output_string@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	dump_pem, .-dump_pem
	.section	.rodata
.LC43:
	.string	"p8inf"
.LC44:
	.string	"pkey"
.LC45:
	.string	"EVP_PKEY_is_a(pkey, type)"
.LC46:
	.string	"%s isn't any of %s"
.LC47:
	.string	"evp_pkey_is_provided(pkey)"
	.text
	.type	check_unprotected_PKCS8_DER, @function
check_unprotected_PKCS8_DER:
.LFB578:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_PKCS8_PRIV_KEY_INFO@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rdx
	leaq	.LC43(%rip), %rdi
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L118
	movq	testpropq(%rip), %rdx
	movq	testctx(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKCS82PKEY_ex@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rdx
	leaq	.LC44(%rip), %rdi
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L118
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	leaq	.LC45(%rip), %rdi
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_true@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L120
	leaq	-40(%rbp), %rdx
	leaq	collect_name(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_type_names_do_all@PLT
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L121
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC46(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_note@PLT
.L121:
	movq	-40(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$543, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L120:
	cmpl	$0, -4(%rbp)
	je	.L122
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edx
	leaq	.LC47(%rip), %rdi
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L122
	movl	$1, %eax
	jmp	.L123
.L122:
	movl	$0, %eax
.L123:
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L118:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	check_unprotected_PKCS8_DER, .-check_unprotected_PKCS8_DER
	.section	.rodata
.LC48:
	.string	"PrivateKeyInfo"
	.text
	.type	test_unprotected_via_DER, @function
test_unprotected_via_DER:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L126
	movl	$0, %ecx
	jmp	.L127
.L126:
	movl	$2, %ecx
.L127:
	leaq	.LC26(%rip), %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdi
	subq	$8, %rsp
	pushq	%rcx
	leaq	dump_der(%rip), %rcx
	pushq	%rcx
	leaq	check_unprotected_PKCS8_DER(%rip), %rcx
	pushq	%rcx
	leaq	test_mem(%rip), %rcx
	pushq	%rcx
	leaq	decode_EVP_PKEY_prov(%rip), %rcx
	pushq	%rcx
	leaq	encode_EVP_PKEY_prov(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	leaq	.LC48(%rip), %rcx
	pushq	%rcx
	movq	%rsi, %r9
	movl	$135, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$555, %esi
	call	test_encode_decode
	addq	$80, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	test_unprotected_via_DER, .-test_unprotected_via_DER
	.section	.rodata
.LC49:
	.string	"expected_pem_header"
.LC50:
	.string	"data"
	.text
	.type	check_unprotected_PKCS8_PEM, @function
check_unprotected_PKCS8_PEM:
.LFB580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-32(%rbp), %r8
	leaq	.LC49(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	pushq	$27
	leaq	expected_pem_header.23(%rip), %rdi
	pushq	%rdi
	movl	$27, %r9d
	movq	%rax, %rdi
	call	test_strn_eq@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	check_unprotected_PKCS8_PEM, .-check_unprotected_PKCS8_PEM
	.type	test_unprotected_via_PEM, @function
test_unprotected_via_PEM:
.LFB581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L132
	movl	$0, %ecx
	jmp	.L133
.L132:
	movl	$2, %ecx
.L133:
	leaq	.LC27(%rip), %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdi
	subq	$8, %rsp
	pushq	%rcx
	leaq	dump_pem(%rip), %rcx
	pushq	%rcx
	leaq	check_unprotected_PKCS8_PEM(%rip), %rcx
	pushq	%rcx
	leaq	test_text(%rip), %rcx
	pushq	%rcx
	leaq	decode_EVP_PKEY_prov(%rip), %rcx
	pushq	%rcx
	leaq	encode_EVP_PKEY_prov(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	leaq	.LC48(%rip), %rcx
	pushq	%rcx
	movq	%rsi, %r9
	movl	$135, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$577, %esi
	call	test_encode_decode
	addq	$80, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	test_unprotected_via_PEM, .-test_unprotected_via_PEM
	.section	.rodata
.LC51:
	.string	"DSA"
.LC52:
	.string	"EC"
	.text
	.type	check_params_DER, @function
check_params_DER:
.LFB582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC0(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L136
	movl	$28, -8(%rbp)
	jmp	.L137
.L136:
	leaq	.LC1(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L138
	movl	$920, -8(%rbp)
	jmp	.L137
.L138:
	leaq	.LC51(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L139
	movl	$116, -8(%rbp)
	jmp	.L137
.L139:
	leaq	.LC52(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L137
	movl	$408, -8(%rbp)
.L137:
	cmpl	$0, -8(%rbp)
	je	.L140
	movq	-72(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movl	-8(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	d2i_KeyParams@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L140:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	check_params_DER, .-check_params_DER
	.section	.rodata
.LC53:
	.string	"-----BEGIN %s PARAMETERS-----"
	.align 8
.LC54:
	.string	"BIO_snprintf(expected_pem_header, sizeof(expected_pem_header), \"-----BEGIN %s PARAMETERS-----\", type)"
	.text
	.type	check_params_PEM, @function
check_params_PEM:
.LFB583:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC53(%rip), %rdx
	leaq	expected_pem_header.22(%rip), %rdi
	movq	%rax, %rcx
	movl	$80, %esi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, %edi
	leaq	.LC17(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L143
	leaq	expected_pem_header.22(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	leaq	expected_pem_header.22(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdi
	movq	-48(%rbp), %r10
	leaq	.LC49(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	pushq	%rbx
	leaq	expected_pem_header.22(%rip), %r8
	pushq	%r8
	movq	%rdi, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	test_strn_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L143
	movl	$1, %eax
	jmp	.L145
.L143:
	movl	$0, %eax
.L145:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	check_params_PEM, .-check_params_PEM
	.type	test_params_via_DER, @function
test_params_via_DER:
.LFB584:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC26(%rip), %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdi
	subq	$8, %rsp
	pushq	$1
	leaq	dump_der(%rip), %rcx
	pushq	%rcx
	leaq	check_params_DER(%rip), %rcx
	pushq	%rcx
	leaq	test_mem(%rip), %rcx
	pushq	%rcx
	leaq	decode_EVP_PKEY_prov(%rip), %rcx
	pushq	%rcx
	leaq	encode_EVP_PKEY_prov(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	leaq	.LC6(%rip), %rcx
	pushq	%rcx
	movq	%rsi, %r9
	movl	$4, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$628, %esi
	call	test_encode_decode
	addq	$80, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	test_params_via_DER, .-test_params_via_DER
	.type	test_params_via_PEM, @function
test_params_via_PEM:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC27(%rip), %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdi
	subq	$8, %rsp
	pushq	$0
	leaq	dump_pem(%rip), %rcx
	pushq	%rcx
	leaq	check_params_PEM(%rip), %rcx
	pushq	%rcx
	leaq	test_text(%rip), %rcx
	pushq	%rcx
	leaq	decode_EVP_PKEY_prov(%rip), %rcx
	pushq	%rcx
	leaq	encode_EVP_PKEY_prov(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	leaq	.LC6(%rip), %rcx
	pushq	%rcx
	movq	%rsi, %r9
	movl	$4, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$637, %esi
	call	test_encode_decode
	addq	$80, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	test_params_via_PEM, .-test_params_via_PEM
	.section	.rodata
	.align 8
.LC55:
	.string	"-----BEGIN %s PRIVATE KEY-----"
	.align 8
.LC56:
	.string	"BIO_snprintf(expected_pem_header, sizeof(expected_pem_header), \"-----BEGIN %s PRIVATE KEY-----\", type)"
	.text
	.type	check_unprotected_legacy_PEM, @function
check_unprotected_legacy_PEM:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	leaq	expected_pem_header.21(%rip), %rdi
	movq	%rax, %rcx
	movl	$80, %esi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, %edi
	leaq	.LC17(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L151
	leaq	expected_pem_header.21(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	leaq	expected_pem_header.21(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdi
	movq	-48(%rbp), %r10
	leaq	.LC49(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	pushq	%rbx
	leaq	expected_pem_header.21(%rip), %r8
	pushq	%r8
	movq	%rdi, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	test_strn_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L151
	movl	$1, %eax
	jmp	.L153
.L151:
	movl	$0, %eax
.L153:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	check_unprotected_legacy_PEM, .-check_unprotected_legacy_PEM
	.section	.rodata
	.align 8
.LC57:
	.string	"Test not available if using a non-default library context or FIPS provider"
	.text
	.type	test_unprotected_via_legacy_PEM, @function
test_unprotected_via_legacy_PEM:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	default_libctx(%rip), %eax
	testl	%eax, %eax
	je	.L155
	movl	is_fips(%rip), %eax
	testl	%eax, %eax
	je	.L156
.L155:
	leaq	.LC57(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$661, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L157
.L156:
	leaq	.LC27(%rip), %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdi
	subq	$8, %rsp
	pushq	$0
	leaq	dump_pem(%rip), %rcx
	pushq	%rcx
	leaq	check_unprotected_legacy_PEM(%rip), %rcx
	pushq	%rcx
	leaq	test_text(%rip), %rcx
	pushq	%rcx
	leaq	decode_EVP_PKEY_prov(%rip), %rcx
	pushq	%rcx
	leaq	encode_EVP_PKEY_legacy_PEM(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	leaq	.LC6(%rip), %rcx
	pushq	%rcx
	movq	%rsi, %r9
	movl	$7, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$663, %esi
	call	test_encode_decode
	addq	$80, %rsp
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	test_unprotected_via_legacy_PEM, .-test_unprotected_via_legacy_PEM
	.type	check_MSBLOB, @function
check_MSBLOB:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	b2i_PrivateKey@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	leaq	.LC44(%rip), %rdi
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_ptr@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	check_MSBLOB, .-check_MSBLOB
	.section	.rodata
.LC58:
	.string	"MSBLOB"
	.text
	.type	test_unprotected_via_MSBLOB, @function
test_unprotected_via_MSBLOB:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC58(%rip), %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdi
	subq	$8, %rsp
	pushq	$0
	leaq	dump_der(%rip), %rcx
	pushq	%rcx
	leaq	check_MSBLOB(%rip), %rcx
	pushq	%rcx
	leaq	test_mem(%rip), %rcx
	pushq	%rcx
	leaq	decode_EVP_PKEY_prov(%rip), %rcx
	pushq	%rcx
	leaq	encode_EVP_PKEY_MSBLOB(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	movq	%rsi, %r9
	movl	$7, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$685, %esi
	call	test_encode_decode
	addq	$80, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	test_unprotected_via_MSBLOB, .-test_unprotected_via_MSBLOB
	.type	check_PVK, @function
check_PVK:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-72(%rbp), %rax
	movl	%eax, %esi
	leaq	-24(%rbp), %rcx
	leaq	-20(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_do_PVK_header@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	check_PVK, .-check_PVK
	.section	.rodata
.LC59:
	.string	"PVK"
	.text
	.type	test_unprotected_via_PVK, @function
test_unprotected_via_PVK:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC59(%rip), %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdi
	subq	$8, %rsp
	pushq	$0
	leaq	dump_der(%rip), %rcx
	pushq	%rcx
	leaq	check_PVK(%rip), %rcx
	pushq	%rcx
	leaq	test_mem(%rip), %rcx
	pushq	%rcx
	leaq	decode_EVP_PKEY_prov(%rip), %rcx
	pushq	%rcx
	leaq	encode_EVP_PKEY_PVK(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	movq	%rsi, %r9
	movl	$7, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$706, %esi
	call	test_encode_decode
	addq	$80, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	test_unprotected_via_PVK, .-test_unprotected_via_PVK
	.section	.rodata
.LC60:
	.string	"AES-256-CBC"
	.section	.data.rel.local,"aw"
	.align 8
	.type	pass_cipher, @object
	.size	pass_cipher, 8
pass_cipher:
	.quad	.LC60
	.section	.rodata
	.align 8
.LC61:
	.string	"the holy handgrenade of antioch"
	.section	.data.rel.local
	.align 8
	.type	pass, @object
	.size	pass, 8
pass:
	.quad	.LC61
	.section	.rodata
.LC62:
	.string	"p8"
	.text
	.type	check_protected_PKCS8_DER, @function
check_protected_PKCS8_DER:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_X509_SIG@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	leaq	.LC62(%rip), %rdi
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_ptr@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_SIG_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	check_protected_PKCS8_DER, .-check_protected_PKCS8_DER
	.section	.rodata
.LC63:
	.string	"EncryptedPrivateKeyInfo"
	.text
	.type	test_protected_via_DER, @function
test_protected_via_DER:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L169
	movl	$0, %r8d
	jmp	.L170
.L169:
	movl	$2, %r8d
.L170:
	movq	pass_cipher(%rip), %rsi
	movq	pass(%rip), %rcx
	leaq	.LC26(%rip), %r9
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdi
	subq	$8, %rsp
	pushq	%r8
	leaq	dump_der(%rip), %r8
	pushq	%r8
	leaq	check_protected_PKCS8_DER(%rip), %r8
	pushq	%r8
	leaq	test_mem(%rip), %r8
	pushq	%r8
	leaq	decode_EVP_PKEY_prov(%rip), %r8
	pushq	%r8
	leaq	encode_EVP_PKEY_prov(%rip), %r8
	pushq	%r8
	pushq	%rsi
	pushq	%rcx
	leaq	.LC63(%rip), %rcx
	pushq	%rcx
	movl	$7, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$732, %esi
	call	test_encode_decode
	addq	$80, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	test_protected_via_DER, .-test_protected_via_DER
	.type	check_protected_PKCS8_PEM, @function
check_protected_PKCS8_PEM:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-32(%rbp), %r8
	leaq	.LC49(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	pushq	$37
	leaq	expected_pem_header.20(%rip), %rdi
	pushq	%rdi
	movl	$37, %r9d
	movq	%rax, %rdi
	call	test_strn_eq@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	check_protected_PKCS8_PEM, .-check_protected_PKCS8_PEM
	.type	test_protected_via_PEM, @function
test_protected_via_PEM:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L175
	movl	$0, %r8d
	jmp	.L176
.L175:
	movl	$2, %r8d
.L176:
	movq	pass_cipher(%rip), %rsi
	movq	pass(%rip), %rcx
	leaq	.LC27(%rip), %r9
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdi
	subq	$8, %rsp
	pushq	%r8
	leaq	dump_pem(%rip), %r8
	pushq	%r8
	leaq	check_protected_PKCS8_PEM(%rip), %r8
	pushq	%r8
	leaq	test_text(%rip), %r8
	pushq	%r8
	leaq	decode_EVP_PKEY_prov(%rip), %r8
	pushq	%r8
	leaq	encode_EVP_PKEY_prov(%rip), %r8
	pushq	%r8
	pushq	%rsi
	pushq	%rcx
	leaq	.LC63(%rip), %rcx
	pushq	%rcx
	movl	$7, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$755, %esi
	call	test_encode_decode
	addq	$80, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	test_protected_via_PEM, .-test_protected_via_PEM
	.section	.rodata
.LC64:
	.string	"\nDEK-Info: "
.LC65:
	.string	"strstr(data, \"\\nDEK-Info: \")"
	.text
	.type	check_protected_legacy_PEM, @function
check_protected_legacy_PEM:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	leaq	expected_pem_header.19(%rip), %rdi
	movq	%rax, %rcx
	movl	$80, %esi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, %edi
	leaq	.LC17(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L179
	leaq	expected_pem_header.19(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	leaq	expected_pem_header.19(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdi
	movq	-48(%rbp), %r10
	leaq	.LC49(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	pushq	%rbx
	leaq	expected_pem_header.19(%rip), %r8
	pushq	%r8
	movq	%rdi, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	test_strn_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L179
	leaq	.LC64(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	movq	%rax, %rcx
	leaq	.LC65(%rip), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L179
	movl	$1, %eax
	jmp	.L181
.L179:
	movl	$0, %eax
.L181:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	check_protected_legacy_PEM, .-check_protected_legacy_PEM
	.type	test_protected_via_legacy_PEM, @function
test_protected_via_legacy_PEM:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	default_libctx(%rip), %eax
	testl	%eax, %eax
	je	.L183
	movl	is_fips(%rip), %eax
	testl	%eax, %eax
	je	.L184
.L183:
	leaq	.LC57(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$782, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L185
.L184:
	movq	pass_cipher(%rip), %rsi
	movq	pass(%rip), %rcx
	leaq	.LC27(%rip), %r9
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdi
	subq	$8, %rsp
	pushq	$0
	leaq	dump_pem(%rip), %r8
	pushq	%r8
	leaq	check_protected_legacy_PEM(%rip), %r8
	pushq	%r8
	leaq	test_text(%rip), %r8
	pushq	%r8
	leaq	decode_EVP_PKEY_prov(%rip), %r8
	pushq	%r8
	leaq	encode_EVP_PKEY_legacy_PEM(%rip), %r8
	pushq	%r8
	pushq	%rsi
	pushq	%rcx
	leaq	.LC6(%rip), %rcx
	pushq	%rcx
	movl	$7, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$784, %esi
	call	test_encode_decode
	addq	$80, %rsp
.L185:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	test_protected_via_legacy_PEM, .-test_protected_via_legacy_PEM
	.section	.rodata
.LC66:
	.string	"legacy"
.LC67:
	.string	"Legacy provider not available"
	.text
	.type	test_protected_via_PVK, @function
test_protected_via_PVK:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	testctx(%rip), %rax
	leaq	.LC66(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L187
	leaq	.LC67(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$799, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L188
.L187:
	movq	pass(%rip), %rcx
	leaq	.LC59(%rip), %r8
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC3(%rip), %rdi
	subq	$8, %rsp
	pushq	$0
	leaq	dump_der(%rip), %rsi
	pushq	%rsi
	leaq	check_PVK(%rip), %rsi
	pushq	%rsi
	leaq	test_mem(%rip), %rsi
	pushq	%rsi
	leaq	decode_EVP_PKEY_prov(%rip), %rsi
	pushq	%rsi
	leaq	encode_EVP_PKEY_PVK(%rip), %rsi
	pushq	%rsi
	pushq	$0
	pushq	%rcx
	pushq	$0
	movq	%r8, %r9
	movl	$7, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$801, %esi
	call	test_encode_decode
	addq	$80, %rsp
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movl	-4(%rbp), %eax
.L188:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	test_protected_via_PVK, .-test_protected_via_PVK
	.type	check_public_DER, @function
check_public_DER:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	testpropq(%rip), %rsi
	movq	testctx(%rip), %rcx
	movq	-72(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_PUBKEY_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	leaq	.LC44(%rip), %rdi
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L190
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	leaq	.LC45(%rip), %rdi
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L190
	movl	$1, %eax
	jmp	.L191
.L190:
	movl	$0, %eax
.L191:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	check_public_DER, .-check_public_DER
	.section	.rodata
.LC68:
	.string	"SubjectPublicKeyInfo"
	.text
	.type	test_public_via_DER, @function
test_public_via_DER:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L194
	movl	$0, %ecx
	jmp	.L195
.L194:
	movl	$2, %ecx
.L195:
	leaq	.LC26(%rip), %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdi
	subq	$8, %rsp
	pushq	%rcx
	leaq	dump_der(%rip), %rcx
	pushq	%rcx
	leaq	check_public_DER(%rip), %rcx
	pushq	%rcx
	leaq	test_mem(%rip), %rcx
	pushq	%rcx
	leaq	decode_EVP_PKEY_prov(%rip), %rcx
	pushq	%rcx
	leaq	encode_EVP_PKEY_prov(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	leaq	.LC68(%rip), %rcx
	pushq	%rcx
	movq	%rsi, %r9
	movl	$134, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$825, %esi
	call	test_encode_decode
	addq	$80, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	test_public_via_DER, .-test_public_via_DER
	.type	check_public_PEM, @function
check_public_PEM:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-32(%rbp), %r8
	leaq	.LC49(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	pushq	$26
	leaq	expected_pem_header.18(%rip), %rdi
	pushq	%rdi
	movl	$26, %r9d
	movq	%rax, %rdi
	call	test_strn_eq@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	check_public_PEM, .-check_public_PEM
	.type	test_public_via_PEM, @function
test_public_via_PEM:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L200
	movl	$0, %ecx
	jmp	.L201
.L200:
	movl	$2, %ecx
.L201:
	leaq	.LC27(%rip), %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdi
	subq	$8, %rsp
	pushq	%rcx
	leaq	dump_pem(%rip), %rcx
	pushq	%rcx
	leaq	check_public_PEM(%rip), %rcx
	pushq	%rcx
	leaq	test_text(%rip), %rcx
	pushq	%rcx
	leaq	decode_EVP_PKEY_prov(%rip), %rcx
	pushq	%rcx
	leaq	encode_EVP_PKEY_prov(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	leaq	.LC68(%rip), %rcx
	pushq	%rcx
	movq	%rsi, %r9
	movl	$134, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$847, %esi
	call	test_encode_decode
	addq	$80, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	test_public_via_PEM, .-test_public_via_PEM
	.type	check_public_MSBLOB, @function
check_public_MSBLOB:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	b2i_PublicKey@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	leaq	.LC44(%rip), %rdi
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	test_ptr@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	check_public_MSBLOB, .-check_public_MSBLOB
	.type	test_public_via_MSBLOB, @function
test_public_via_MSBLOB:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC58(%rip), %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdi
	subq	$8, %rsp
	pushq	$0
	leaq	dump_der(%rip), %rcx
	pushq	%rcx
	leaq	check_public_MSBLOB(%rip), %rcx
	pushq	%rcx
	leaq	test_mem(%rip), %rcx
	pushq	%rcx
	leaq	decode_EVP_PKEY_prov(%rip), %rcx
	pushq	%rcx
	leaq	encode_EVP_PKEY_MSBLOB(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	movq	%rsi, %r9
	movl	$6, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$870, %esi
	call	test_encode_decode
	addq	$80, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	test_public_via_MSBLOB, .-test_public_via_MSBLOB
	.local	template_DH
	.comm	template_DH,8,8
	.local	key_DH
	.comm	key_DH,8,8
	.type	test_unprotected_DH_via_DER, @function
test_unprotected_DH_via_DER:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DH(%rip), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	test_unprotected_DH_via_DER, .-test_unprotected_DH_via_DER
	.type	test_unprotected_DH_via_PEM, @function
test_unprotected_DH_via_PEM:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DH(%rip), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	test_unprotected_DH_via_PEM, .-test_unprotected_DH_via_PEM
	.type	test_protected_DH_via_DER, @function
test_protected_DH_via_DER:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DH(%rip), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	test_protected_DH_via_DER, .-test_protected_DH_via_DER
	.type	test_protected_DH_via_PEM, @function
test_protected_DH_via_PEM:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DH(%rip), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	test_protected_DH_via_PEM, .-test_protected_DH_via_PEM
	.type	test_public_DH_via_DER, @function
test_public_DH_via_DER:
.LFB609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DH(%rip), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	test_public_DH_via_DER, .-test_public_DH_via_DER
	.type	test_public_DH_via_PEM, @function
test_public_DH_via_PEM:
.LFB610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DH(%rip), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	test_public_DH_via_PEM, .-test_public_DH_via_PEM
	.type	test_params_DH_via_DER, @function
test_params_DH_via_DER:
.LFB611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DH(%rip), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_params_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	test_params_DH_via_DER, .-test_params_DH_via_DER
	.type	test_params_DH_via_PEM, @function
test_params_DH_via_PEM:
.LFB612:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DH(%rip), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_params_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	test_params_DH_via_PEM, .-test_params_DH_via_PEM
	.local	template_DHX
	.comm	template_DHX,8,8
	.local	key_DHX
	.comm	key_DHX,8,8
	.type	test_unprotected_DHX_via_DER, @function
test_unprotected_DHX_via_DER:
.LFB613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DHX(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	test_unprotected_DHX_via_DER, .-test_unprotected_DHX_via_DER
	.type	test_unprotected_DHX_via_PEM, @function
test_unprotected_DHX_via_PEM:
.LFB614:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DHX(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	test_unprotected_DHX_via_PEM, .-test_unprotected_DHX_via_PEM
	.type	test_protected_DHX_via_DER, @function
test_protected_DHX_via_DER:
.LFB615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DHX(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	test_protected_DHX_via_DER, .-test_protected_DHX_via_DER
	.type	test_protected_DHX_via_PEM, @function
test_protected_DHX_via_PEM:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DHX(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	test_protected_DHX_via_PEM, .-test_protected_DHX_via_PEM
	.type	test_public_DHX_via_DER, @function
test_public_DHX_via_DER:
.LFB617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DHX(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	test_public_DHX_via_DER, .-test_public_DHX_via_DER
	.type	test_public_DHX_via_PEM, @function
test_public_DHX_via_PEM:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DHX(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	test_public_DHX_via_PEM, .-test_public_DHX_via_PEM
	.type	test_params_DHX_via_DER, @function
test_params_DHX_via_DER:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DHX(%rip), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_params_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	test_params_DHX_via_DER, .-test_params_DHX_via_DER
	.type	test_params_DHX_via_PEM, @function
test_params_DHX_via_PEM:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DHX(%rip), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_params_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	test_params_DHX_via_PEM, .-test_params_DHX_via_PEM
	.local	template_DSA
	.comm	template_DSA,8,8
	.local	key_DSA
	.comm	key_DSA,8,8
	.type	test_unprotected_DSA_via_DER, @function
test_unprotected_DSA_via_DER:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DSA(%rip), %rax
	leaq	.LC51(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	test_unprotected_DSA_via_DER, .-test_unprotected_DSA_via_DER
	.type	test_unprotected_DSA_via_PEM, @function
test_unprotected_DSA_via_PEM:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DSA(%rip), %rax
	leaq	.LC51(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	test_unprotected_DSA_via_PEM, .-test_unprotected_DSA_via_PEM
	.type	test_protected_DSA_via_DER, @function
test_protected_DSA_via_DER:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DSA(%rip), %rax
	leaq	.LC51(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	test_protected_DSA_via_DER, .-test_protected_DSA_via_DER
	.type	test_protected_DSA_via_PEM, @function
test_protected_DSA_via_PEM:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DSA(%rip), %rax
	leaq	.LC51(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	test_protected_DSA_via_PEM, .-test_protected_DSA_via_PEM
	.type	test_public_DSA_via_DER, @function
test_public_DSA_via_DER:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DSA(%rip), %rax
	leaq	.LC51(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	test_public_DSA_via_DER, .-test_public_DSA_via_DER
	.type	test_public_DSA_via_PEM, @function
test_public_DSA_via_PEM:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DSA(%rip), %rax
	leaq	.LC51(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	test_public_DSA_via_PEM, .-test_public_DSA_via_PEM
	.type	test_params_DSA_via_DER, @function
test_params_DSA_via_DER:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DSA(%rip), %rax
	leaq	.LC51(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_params_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	test_params_DSA_via_DER, .-test_params_DSA_via_DER
	.type	test_params_DSA_via_PEM, @function
test_params_DSA_via_PEM:
.LFB628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DSA(%rip), %rax
	leaq	.LC51(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_params_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	test_params_DSA_via_PEM, .-test_params_DSA_via_PEM
	.type	test_unprotected_DSA_via_legacy_PEM, @function
test_unprotected_DSA_via_legacy_PEM:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DSA(%rip), %rax
	leaq	.LC51(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_unprotected_via_legacy_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	test_unprotected_DSA_via_legacy_PEM, .-test_unprotected_DSA_via_legacy_PEM
	.type	test_protected_DSA_via_legacy_PEM, @function
test_protected_DSA_via_legacy_PEM:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DSA(%rip), %rax
	leaq	.LC51(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_protected_via_legacy_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	test_protected_DSA_via_legacy_PEM, .-test_protected_DSA_via_legacy_PEM
	.type	test_unprotected_DSA_via_MSBLOB, @function
test_unprotected_DSA_via_MSBLOB:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DSA(%rip), %rax
	leaq	.LC51(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_unprotected_via_MSBLOB
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	test_unprotected_DSA_via_MSBLOB, .-test_unprotected_DSA_via_MSBLOB
	.type	test_public_DSA_via_MSBLOB, @function
test_public_DSA_via_MSBLOB:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DSA(%rip), %rax
	leaq	.LC51(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_public_via_MSBLOB
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	test_public_DSA_via_MSBLOB, .-test_public_DSA_via_MSBLOB
	.type	test_unprotected_DSA_via_PVK, @function
test_unprotected_DSA_via_PVK:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DSA(%rip), %rax
	leaq	.LC51(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_unprotected_via_PVK
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	test_unprotected_DSA_via_PVK, .-test_unprotected_DSA_via_PVK
	.type	test_protected_DSA_via_PVK, @function
test_protected_DSA_via_PVK:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_DSA(%rip), %rax
	leaq	.LC51(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_protected_via_PVK
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	test_protected_DSA_via_PVK, .-test_protected_DSA_via_PVK
	.local	template_EC
	.comm	template_EC,8,8
	.local	key_EC
	.comm	key_EC,8,8
	.type	test_unprotected_EC_via_DER, @function
test_unprotected_EC_via_DER:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_EC(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	test_unprotected_EC_via_DER, .-test_unprotected_EC_via_DER
	.type	test_unprotected_EC_via_PEM, @function
test_unprotected_EC_via_PEM:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_EC(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	test_unprotected_EC_via_PEM, .-test_unprotected_EC_via_PEM
	.type	test_protected_EC_via_DER, @function
test_protected_EC_via_DER:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_EC(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	test_protected_EC_via_DER, .-test_protected_EC_via_DER
	.type	test_protected_EC_via_PEM, @function
test_protected_EC_via_PEM:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_EC(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	test_protected_EC_via_PEM, .-test_protected_EC_via_PEM
	.type	test_public_EC_via_DER, @function
test_public_EC_via_DER:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_EC(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	test_public_EC_via_DER, .-test_public_EC_via_DER
	.type	test_public_EC_via_PEM, @function
test_public_EC_via_PEM:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_EC(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	test_public_EC_via_PEM, .-test_public_EC_via_PEM
	.type	test_params_EC_via_DER, @function
test_params_EC_via_DER:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_EC(%rip), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_params_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	test_params_EC_via_DER, .-test_params_EC_via_DER
	.type	test_params_EC_via_PEM, @function
test_params_EC_via_PEM:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_EC(%rip), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_params_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	test_params_EC_via_PEM, .-test_params_EC_via_PEM
	.type	test_unprotected_EC_via_legacy_PEM, @function
test_unprotected_EC_via_legacy_PEM:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_EC(%rip), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_unprotected_via_legacy_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	test_unprotected_EC_via_legacy_PEM, .-test_unprotected_EC_via_legacy_PEM
	.type	test_protected_EC_via_legacy_PEM, @function
test_protected_EC_via_legacy_PEM:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_EC(%rip), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_protected_via_legacy_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	test_protected_EC_via_legacy_PEM, .-test_protected_EC_via_legacy_PEM
	.local	template_ECExplicitPrimeNamedCurve
	.comm	template_ECExplicitPrimeNamedCurve,8,8
	.local	key_ECExplicitPrimeNamedCurve
	.comm	key_ECExplicitPrimeNamedCurve,8,8
	.type	test_unprotected_ECExplicitPrimeNamedCurve_via_DER, @function
test_unprotected_ECExplicitPrimeNamedCurve_via_DER:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitPrimeNamedCurve(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	test_unprotected_ECExplicitPrimeNamedCurve_via_DER, .-test_unprotected_ECExplicitPrimeNamedCurve_via_DER
	.type	test_unprotected_ECExplicitPrimeNamedCurve_via_PEM, @function
test_unprotected_ECExplicitPrimeNamedCurve_via_PEM:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitPrimeNamedCurve(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	test_unprotected_ECExplicitPrimeNamedCurve_via_PEM, .-test_unprotected_ECExplicitPrimeNamedCurve_via_PEM
	.type	test_protected_ECExplicitPrimeNamedCurve_via_DER, @function
test_protected_ECExplicitPrimeNamedCurve_via_DER:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitPrimeNamedCurve(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	test_protected_ECExplicitPrimeNamedCurve_via_DER, .-test_protected_ECExplicitPrimeNamedCurve_via_DER
	.type	test_protected_ECExplicitPrimeNamedCurve_via_PEM, @function
test_protected_ECExplicitPrimeNamedCurve_via_PEM:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitPrimeNamedCurve(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	test_protected_ECExplicitPrimeNamedCurve_via_PEM, .-test_protected_ECExplicitPrimeNamedCurve_via_PEM
	.type	test_public_ECExplicitPrimeNamedCurve_via_DER, @function
test_public_ECExplicitPrimeNamedCurve_via_DER:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitPrimeNamedCurve(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	test_public_ECExplicitPrimeNamedCurve_via_DER, .-test_public_ECExplicitPrimeNamedCurve_via_DER
	.type	test_public_ECExplicitPrimeNamedCurve_via_PEM, @function
test_public_ECExplicitPrimeNamedCurve_via_PEM:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitPrimeNamedCurve(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	test_public_ECExplicitPrimeNamedCurve_via_PEM, .-test_public_ECExplicitPrimeNamedCurve_via_PEM
	.type	test_unprotected_ECExplicitPrimeNamedCurve_via_legacy_PEM, @function
test_unprotected_ECExplicitPrimeNamedCurve_via_legacy_PEM:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitPrimeNamedCurve(%rip), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_unprotected_via_legacy_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	test_unprotected_ECExplicitPrimeNamedCurve_via_legacy_PEM, .-test_unprotected_ECExplicitPrimeNamedCurve_via_legacy_PEM
	.type	test_protected_ECExplicitPrimeNamedCurve_via_legacy_PEM, @function
test_protected_ECExplicitPrimeNamedCurve_via_legacy_PEM:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitPrimeNamedCurve(%rip), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_protected_via_legacy_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	test_protected_ECExplicitPrimeNamedCurve_via_legacy_PEM, .-test_protected_ECExplicitPrimeNamedCurve_via_legacy_PEM
	.local	template_ECExplicitPrime2G
	.comm	template_ECExplicitPrime2G,8,8
	.local	key_ECExplicitPrime2G
	.comm	key_ECExplicitPrime2G,8,8
	.type	test_unprotected_ECExplicitPrime2G_via_DER, @function
test_unprotected_ECExplicitPrime2G_via_DER:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitPrime2G(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	test_unprotected_ECExplicitPrime2G_via_DER, .-test_unprotected_ECExplicitPrime2G_via_DER
	.type	test_unprotected_ECExplicitPrime2G_via_PEM, @function
test_unprotected_ECExplicitPrime2G_via_PEM:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitPrime2G(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	test_unprotected_ECExplicitPrime2G_via_PEM, .-test_unprotected_ECExplicitPrime2G_via_PEM
	.type	test_protected_ECExplicitPrime2G_via_DER, @function
test_protected_ECExplicitPrime2G_via_DER:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitPrime2G(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	test_protected_ECExplicitPrime2G_via_DER, .-test_protected_ECExplicitPrime2G_via_DER
	.type	test_protected_ECExplicitPrime2G_via_PEM, @function
test_protected_ECExplicitPrime2G_via_PEM:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitPrime2G(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	test_protected_ECExplicitPrime2G_via_PEM, .-test_protected_ECExplicitPrime2G_via_PEM
	.type	test_public_ECExplicitPrime2G_via_DER, @function
test_public_ECExplicitPrime2G_via_DER:
.LFB657:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitPrime2G(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	test_public_ECExplicitPrime2G_via_DER, .-test_public_ECExplicitPrime2G_via_DER
	.type	test_public_ECExplicitPrime2G_via_PEM, @function
test_public_ECExplicitPrime2G_via_PEM:
.LFB658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitPrime2G(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	test_public_ECExplicitPrime2G_via_PEM, .-test_public_ECExplicitPrime2G_via_PEM
	.type	test_unprotected_ECExplicitPrime2G_via_legacy_PEM, @function
test_unprotected_ECExplicitPrime2G_via_legacy_PEM:
.LFB659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitPrime2G(%rip), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_unprotected_via_legacy_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	test_unprotected_ECExplicitPrime2G_via_legacy_PEM, .-test_unprotected_ECExplicitPrime2G_via_legacy_PEM
	.type	test_protected_ECExplicitPrime2G_via_legacy_PEM, @function
test_protected_ECExplicitPrime2G_via_legacy_PEM:
.LFB660:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitPrime2G(%rip), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_protected_via_legacy_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	test_protected_ECExplicitPrime2G_via_legacy_PEM, .-test_protected_ECExplicitPrime2G_via_legacy_PEM
	.local	template_ECExplicitTriNamedCurve
	.comm	template_ECExplicitTriNamedCurve,8,8
	.local	key_ECExplicitTriNamedCurve
	.comm	key_ECExplicitTriNamedCurve,8,8
	.type	test_unprotected_ECExplicitTriNamedCurve_via_DER, @function
test_unprotected_ECExplicitTriNamedCurve_via_DER:
.LFB661:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitTriNamedCurve(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	test_unprotected_ECExplicitTriNamedCurve_via_DER, .-test_unprotected_ECExplicitTriNamedCurve_via_DER
	.type	test_unprotected_ECExplicitTriNamedCurve_via_PEM, @function
test_unprotected_ECExplicitTriNamedCurve_via_PEM:
.LFB662:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitTriNamedCurve(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	test_unprotected_ECExplicitTriNamedCurve_via_PEM, .-test_unprotected_ECExplicitTriNamedCurve_via_PEM
	.type	test_protected_ECExplicitTriNamedCurve_via_DER, @function
test_protected_ECExplicitTriNamedCurve_via_DER:
.LFB663:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitTriNamedCurve(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	test_protected_ECExplicitTriNamedCurve_via_DER, .-test_protected_ECExplicitTriNamedCurve_via_DER
	.type	test_protected_ECExplicitTriNamedCurve_via_PEM, @function
test_protected_ECExplicitTriNamedCurve_via_PEM:
.LFB664:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitTriNamedCurve(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	test_protected_ECExplicitTriNamedCurve_via_PEM, .-test_protected_ECExplicitTriNamedCurve_via_PEM
	.type	test_public_ECExplicitTriNamedCurve_via_DER, @function
test_public_ECExplicitTriNamedCurve_via_DER:
.LFB665:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitTriNamedCurve(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	test_public_ECExplicitTriNamedCurve_via_DER, .-test_public_ECExplicitTriNamedCurve_via_DER
	.type	test_public_ECExplicitTriNamedCurve_via_PEM, @function
test_public_ECExplicitTriNamedCurve_via_PEM:
.LFB666:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitTriNamedCurve(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	test_public_ECExplicitTriNamedCurve_via_PEM, .-test_public_ECExplicitTriNamedCurve_via_PEM
	.type	test_unprotected_ECExplicitTriNamedCurve_via_legacy_PEM, @function
test_unprotected_ECExplicitTriNamedCurve_via_legacy_PEM:
.LFB667:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitTriNamedCurve(%rip), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_unprotected_via_legacy_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE667:
	.size	test_unprotected_ECExplicitTriNamedCurve_via_legacy_PEM, .-test_unprotected_ECExplicitTriNamedCurve_via_legacy_PEM
	.type	test_protected_ECExplicitTriNamedCurve_via_legacy_PEM, @function
test_protected_ECExplicitTriNamedCurve_via_legacy_PEM:
.LFB668:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitTriNamedCurve(%rip), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_protected_via_legacy_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	test_protected_ECExplicitTriNamedCurve_via_legacy_PEM, .-test_protected_ECExplicitTriNamedCurve_via_legacy_PEM
	.local	template_ECExplicitTri2G
	.comm	template_ECExplicitTri2G,8,8
	.local	key_ECExplicitTri2G
	.comm	key_ECExplicitTri2G,8,8
	.type	test_unprotected_ECExplicitTri2G_via_DER, @function
test_unprotected_ECExplicitTri2G_via_DER:
.LFB669:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitTri2G(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE669:
	.size	test_unprotected_ECExplicitTri2G_via_DER, .-test_unprotected_ECExplicitTri2G_via_DER
	.type	test_unprotected_ECExplicitTri2G_via_PEM, @function
test_unprotected_ECExplicitTri2G_via_PEM:
.LFB670:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitTri2G(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	test_unprotected_ECExplicitTri2G_via_PEM, .-test_unprotected_ECExplicitTri2G_via_PEM
	.type	test_protected_ECExplicitTri2G_via_DER, @function
test_protected_ECExplicitTri2G_via_DER:
.LFB671:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitTri2G(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	test_protected_ECExplicitTri2G_via_DER, .-test_protected_ECExplicitTri2G_via_DER
	.type	test_protected_ECExplicitTri2G_via_PEM, @function
test_protected_ECExplicitTri2G_via_PEM:
.LFB672:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitTri2G(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	test_protected_ECExplicitTri2G_via_PEM, .-test_protected_ECExplicitTri2G_via_PEM
	.type	test_public_ECExplicitTri2G_via_DER, @function
test_public_ECExplicitTri2G_via_DER:
.LFB673:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitTri2G(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	test_public_ECExplicitTri2G_via_DER, .-test_public_ECExplicitTri2G_via_DER
	.type	test_public_ECExplicitTri2G_via_PEM, @function
test_public_ECExplicitTri2G_via_PEM:
.LFB674:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitTri2G(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	test_public_ECExplicitTri2G_via_PEM, .-test_public_ECExplicitTri2G_via_PEM
	.type	test_unprotected_ECExplicitTri2G_via_legacy_PEM, @function
test_unprotected_ECExplicitTri2G_via_legacy_PEM:
.LFB675:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitTri2G(%rip), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_unprotected_via_legacy_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	test_unprotected_ECExplicitTri2G_via_legacy_PEM, .-test_unprotected_ECExplicitTri2G_via_legacy_PEM
	.type	test_protected_ECExplicitTri2G_via_legacy_PEM, @function
test_protected_ECExplicitTri2G_via_legacy_PEM:
.LFB676:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ECExplicitTri2G(%rip), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_protected_via_legacy_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE676:
	.size	test_protected_ECExplicitTri2G_via_legacy_PEM, .-test_protected_ECExplicitTri2G_via_legacy_PEM
	.local	key_SM2
	.comm	key_SM2,8,8
	.section	.rodata
.LC69:
	.string	"SM2"
	.text
	.type	test_unprotected_SM2_via_DER, @function
test_unprotected_SM2_via_DER:
.LFB677:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_SM2(%rip), %rax
	leaq	.LC69(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	test_unprotected_SM2_via_DER, .-test_unprotected_SM2_via_DER
	.type	test_unprotected_SM2_via_PEM, @function
test_unprotected_SM2_via_PEM:
.LFB678:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_SM2(%rip), %rax
	leaq	.LC69(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	test_unprotected_SM2_via_PEM, .-test_unprotected_SM2_via_PEM
	.type	test_protected_SM2_via_DER, @function
test_protected_SM2_via_DER:
.LFB679:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_SM2(%rip), %rax
	leaq	.LC69(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE679:
	.size	test_protected_SM2_via_DER, .-test_protected_SM2_via_DER
	.type	test_protected_SM2_via_PEM, @function
test_protected_SM2_via_PEM:
.LFB680:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_SM2(%rip), %rax
	leaq	.LC69(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	test_protected_SM2_via_PEM, .-test_protected_SM2_via_PEM
	.type	test_public_SM2_via_DER, @function
test_public_SM2_via_DER:
.LFB681:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_SM2(%rip), %rax
	leaq	.LC69(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	test_public_SM2_via_DER, .-test_public_SM2_via_DER
	.type	test_public_SM2_via_PEM, @function
test_public_SM2_via_PEM:
.LFB682:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_SM2(%rip), %rax
	leaq	.LC69(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	test_public_SM2_via_PEM, .-test_public_SM2_via_PEM
	.local	key_ED25519
	.comm	key_ED25519,8,8
	.section	.rodata
.LC70:
	.string	"ED25519"
	.text
	.type	test_unprotected_ED25519_via_DER, @function
test_unprotected_ED25519_via_DER:
.LFB683:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ED25519(%rip), %rax
	leaq	.LC70(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	test_unprotected_ED25519_via_DER, .-test_unprotected_ED25519_via_DER
	.type	test_unprotected_ED25519_via_PEM, @function
test_unprotected_ED25519_via_PEM:
.LFB684:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ED25519(%rip), %rax
	leaq	.LC70(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	test_unprotected_ED25519_via_PEM, .-test_unprotected_ED25519_via_PEM
	.type	test_protected_ED25519_via_DER, @function
test_protected_ED25519_via_DER:
.LFB685:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ED25519(%rip), %rax
	leaq	.LC70(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	test_protected_ED25519_via_DER, .-test_protected_ED25519_via_DER
	.type	test_protected_ED25519_via_PEM, @function
test_protected_ED25519_via_PEM:
.LFB686:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ED25519(%rip), %rax
	leaq	.LC70(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	test_protected_ED25519_via_PEM, .-test_protected_ED25519_via_PEM
	.type	test_public_ED25519_via_DER, @function
test_public_ED25519_via_DER:
.LFB687:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ED25519(%rip), %rax
	leaq	.LC70(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	test_public_ED25519_via_DER, .-test_public_ED25519_via_DER
	.type	test_public_ED25519_via_PEM, @function
test_public_ED25519_via_PEM:
.LFB688:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ED25519(%rip), %rax
	leaq	.LC70(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE688:
	.size	test_public_ED25519_via_PEM, .-test_public_ED25519_via_PEM
	.local	key_ED448
	.comm	key_ED448,8,8
	.section	.rodata
.LC71:
	.string	"ED448"
	.text
	.type	test_unprotected_ED448_via_DER, @function
test_unprotected_ED448_via_DER:
.LFB689:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ED448(%rip), %rax
	leaq	.LC71(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE689:
	.size	test_unprotected_ED448_via_DER, .-test_unprotected_ED448_via_DER
	.type	test_unprotected_ED448_via_PEM, @function
test_unprotected_ED448_via_PEM:
.LFB690:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ED448(%rip), %rax
	leaq	.LC71(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE690:
	.size	test_unprotected_ED448_via_PEM, .-test_unprotected_ED448_via_PEM
	.type	test_protected_ED448_via_DER, @function
test_protected_ED448_via_DER:
.LFB691:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ED448(%rip), %rax
	leaq	.LC71(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE691:
	.size	test_protected_ED448_via_DER, .-test_protected_ED448_via_DER
	.type	test_protected_ED448_via_PEM, @function
test_protected_ED448_via_PEM:
.LFB692:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ED448(%rip), %rax
	leaq	.LC71(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE692:
	.size	test_protected_ED448_via_PEM, .-test_protected_ED448_via_PEM
	.type	test_public_ED448_via_DER, @function
test_public_ED448_via_DER:
.LFB693:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ED448(%rip), %rax
	leaq	.LC71(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE693:
	.size	test_public_ED448_via_DER, .-test_public_ED448_via_DER
	.type	test_public_ED448_via_PEM, @function
test_public_ED448_via_PEM:
.LFB694:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_ED448(%rip), %rax
	leaq	.LC71(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE694:
	.size	test_public_ED448_via_PEM, .-test_public_ED448_via_PEM
	.local	key_X25519
	.comm	key_X25519,8,8
	.section	.rodata
.LC72:
	.string	"X25519"
	.text
	.type	test_unprotected_X25519_via_DER, @function
test_unprotected_X25519_via_DER:
.LFB695:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_X25519(%rip), %rax
	leaq	.LC72(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE695:
	.size	test_unprotected_X25519_via_DER, .-test_unprotected_X25519_via_DER
	.type	test_unprotected_X25519_via_PEM, @function
test_unprotected_X25519_via_PEM:
.LFB696:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_X25519(%rip), %rax
	leaq	.LC72(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	test_unprotected_X25519_via_PEM, .-test_unprotected_X25519_via_PEM
	.type	test_protected_X25519_via_DER, @function
test_protected_X25519_via_DER:
.LFB697:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_X25519(%rip), %rax
	leaq	.LC72(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	test_protected_X25519_via_DER, .-test_protected_X25519_via_DER
	.type	test_protected_X25519_via_PEM, @function
test_protected_X25519_via_PEM:
.LFB698:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_X25519(%rip), %rax
	leaq	.LC72(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	test_protected_X25519_via_PEM, .-test_protected_X25519_via_PEM
	.type	test_public_X25519_via_DER, @function
test_public_X25519_via_DER:
.LFB699:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_X25519(%rip), %rax
	leaq	.LC72(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	test_public_X25519_via_DER, .-test_public_X25519_via_DER
	.type	test_public_X25519_via_PEM, @function
test_public_X25519_via_PEM:
.LFB700:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_X25519(%rip), %rax
	leaq	.LC72(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	test_public_X25519_via_PEM, .-test_public_X25519_via_PEM
	.local	key_X448
	.comm	key_X448,8,8
	.section	.rodata
.LC73:
	.string	"X448"
	.text
	.type	test_unprotected_X448_via_DER, @function
test_unprotected_X448_via_DER:
.LFB701:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_X448(%rip), %rax
	leaq	.LC73(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	test_unprotected_X448_via_DER, .-test_unprotected_X448_via_DER
	.type	test_unprotected_X448_via_PEM, @function
test_unprotected_X448_via_PEM:
.LFB702:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_X448(%rip), %rax
	leaq	.LC73(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	test_unprotected_X448_via_PEM, .-test_unprotected_X448_via_PEM
	.type	test_protected_X448_via_DER, @function
test_protected_X448_via_DER:
.LFB703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_X448(%rip), %rax
	leaq	.LC73(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	test_protected_X448_via_DER, .-test_protected_X448_via_DER
	.type	test_protected_X448_via_PEM, @function
test_protected_X448_via_PEM:
.LFB704:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_X448(%rip), %rax
	leaq	.LC73(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	test_protected_X448_via_PEM, .-test_protected_X448_via_PEM
	.type	test_public_X448_via_DER, @function
test_public_X448_via_DER:
.LFB705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_X448(%rip), %rax
	leaq	.LC73(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	test_public_X448_via_DER, .-test_public_X448_via_DER
	.type	test_public_X448_via_PEM, @function
test_public_X448_via_PEM:
.LFB706:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_X448(%rip), %rax
	leaq	.LC73(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	test_public_X448_via_PEM, .-test_public_X448_via_PEM
	.local	key_RSA
	.comm	key_RSA,8,8
	.section	.rodata
.LC74:
	.string	"RSA"
	.text
	.type	test_unprotected_RSA_via_DER, @function
test_unprotected_RSA_via_DER:
.LFB707:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_RSA(%rip), %rax
	leaq	.LC74(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	test_unprotected_RSA_via_DER, .-test_unprotected_RSA_via_DER
	.type	test_unprotected_RSA_via_PEM, @function
test_unprotected_RSA_via_PEM:
.LFB708:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_RSA(%rip), %rax
	leaq	.LC74(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	test_unprotected_RSA_via_PEM, .-test_unprotected_RSA_via_PEM
	.type	test_protected_RSA_via_DER, @function
test_protected_RSA_via_DER:
.LFB709:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_RSA(%rip), %rax
	leaq	.LC74(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	test_protected_RSA_via_DER, .-test_protected_RSA_via_DER
	.type	test_protected_RSA_via_PEM, @function
test_protected_RSA_via_PEM:
.LFB710:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_RSA(%rip), %rax
	leaq	.LC74(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	test_protected_RSA_via_PEM, .-test_protected_RSA_via_PEM
	.type	test_public_RSA_via_DER, @function
test_public_RSA_via_DER:
.LFB711:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_RSA(%rip), %rax
	leaq	.LC74(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	test_public_RSA_via_DER, .-test_public_RSA_via_DER
	.type	test_public_RSA_via_PEM, @function
test_public_RSA_via_PEM:
.LFB712:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_RSA(%rip), %rax
	leaq	.LC74(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	test_public_RSA_via_PEM, .-test_public_RSA_via_PEM
	.type	test_unprotected_RSA_via_legacy_PEM, @function
test_unprotected_RSA_via_legacy_PEM:
.LFB713:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_RSA(%rip), %rax
	leaq	.LC74(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_unprotected_via_legacy_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE713:
	.size	test_unprotected_RSA_via_legacy_PEM, .-test_unprotected_RSA_via_legacy_PEM
	.type	test_protected_RSA_via_legacy_PEM, @function
test_protected_RSA_via_legacy_PEM:
.LFB714:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_RSA(%rip), %rax
	leaq	.LC74(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_protected_via_legacy_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE714:
	.size	test_protected_RSA_via_legacy_PEM, .-test_protected_RSA_via_legacy_PEM
	.local	key_RSA_PSS
	.comm	key_RSA_PSS,8,8
	.section	.rodata
.LC75:
	.string	"RSA-PSS"
	.text
	.type	test_unprotected_RSA_PSS_via_DER, @function
test_unprotected_RSA_PSS_via_DER:
.LFB715:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_RSA_PSS(%rip), %rax
	leaq	.LC75(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE715:
	.size	test_unprotected_RSA_PSS_via_DER, .-test_unprotected_RSA_PSS_via_DER
	.type	test_unprotected_RSA_PSS_via_PEM, @function
test_unprotected_RSA_PSS_via_PEM:
.LFB716:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_RSA_PSS(%rip), %rax
	leaq	.LC75(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_unprotected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE716:
	.size	test_unprotected_RSA_PSS_via_PEM, .-test_unprotected_RSA_PSS_via_PEM
	.type	test_protected_RSA_PSS_via_DER, @function
test_protected_RSA_PSS_via_DER:
.LFB717:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_RSA_PSS(%rip), %rax
	leaq	.LC75(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE717:
	.size	test_protected_RSA_PSS_via_DER, .-test_protected_RSA_PSS_via_DER
	.type	test_protected_RSA_PSS_via_PEM, @function
test_protected_RSA_PSS_via_PEM:
.LFB718:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_RSA_PSS(%rip), %rax
	leaq	.LC75(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_protected_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE718:
	.size	test_protected_RSA_PSS_via_PEM, .-test_protected_RSA_PSS_via_PEM
	.type	test_public_RSA_PSS_via_DER, @function
test_public_RSA_PSS_via_DER:
.LFB719:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_RSA_PSS(%rip), %rax
	leaq	.LC75(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_DER
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE719:
	.size	test_public_RSA_PSS_via_DER, .-test_public_RSA_PSS_via_DER
	.type	test_public_RSA_PSS_via_PEM, @function
test_public_RSA_PSS_via_PEM:
.LFB720:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_RSA_PSS(%rip), %rax
	leaq	.LC75(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_public_via_PEM
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE720:
	.size	test_public_RSA_PSS_via_PEM, .-test_public_RSA_PSS_via_PEM
	.type	test_unprotected_RSA_via_MSBLOB, @function
test_unprotected_RSA_via_MSBLOB:
.LFB721:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_RSA(%rip), %rax
	leaq	.LC74(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_unprotected_via_MSBLOB
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE721:
	.size	test_unprotected_RSA_via_MSBLOB, .-test_unprotected_RSA_via_MSBLOB
	.type	test_public_RSA_via_MSBLOB, @function
test_public_RSA_via_MSBLOB:
.LFB722:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_RSA(%rip), %rax
	leaq	.LC74(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_public_via_MSBLOB
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE722:
	.size	test_public_RSA_via_MSBLOB, .-test_public_RSA_via_MSBLOB
	.type	test_unprotected_RSA_via_PVK, @function
test_unprotected_RSA_via_PVK:
.LFB723:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_RSA(%rip), %rax
	leaq	.LC74(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_unprotected_via_PVK
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE723:
	.size	test_unprotected_RSA_via_PVK, .-test_unprotected_RSA_via_PVK
	.type	test_protected_RSA_via_PVK, @function
test_protected_RSA_via_PVK:
.LFB724:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	key_RSA(%rip), %rax
	leaq	.LC74(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_protected_via_PVK
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE724:
	.size	test_protected_RSA_via_PVK, .-test_protected_RSA_via_PVK
	.section	.rodata
.LC76:
	.string	"a = BN_CTX_get(bnctx)"
.LC77:
	.string	"b = BN_CTX_get(bnctx)"
.LC78:
	.string	"prime = BN_CTX_get(bnctx)"
.LC79:
	.string	"order = BN_CTX_get(bnctx)"
	.align 8
.LC80:
	.string	"BN_bin2bn(prime_data, sizeof(prime_data), prime)"
	.align 8
.LC81:
	.string	"BN_bin2bn(a_data, sizeof(a_data), a)"
	.align 8
.LC82:
	.string	"BN_bin2bn(b_data, sizeof(b_data), b)"
	.align 8
.LC83:
	.string	"BN_bin2bn(order_data, sizeof(order_data), order)"
.LC84:
	.string	"prime-field"
.LC85:
	.string	"field-type"
	.align 8
.LC86:
	.string	"OSSL_PARAM_BLD_push_utf8_string(bld, OSSL_PKEY_PARAM_EC_FIELD_TYPE, SN_X9_62_prime_field, 0)"
.LC87:
	.string	"p"
	.align 8
.LC88:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_P, prime)"
.LC89:
	.string	"a"
	.align 8
.LC90:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_A, a)"
.LC91:
	.string	"b"
	.align 8
.LC92:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_B, b)"
.LC93:
	.string	"order"
	.align 8
.LC94:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_ORDER, order)"
.LC95:
	.string	"generator"
	.align 8
.LC96:
	.string	"OSSL_PARAM_BLD_push_octet_string(bld, OSSL_PKEY_PARAM_EC_GENERATOR, gen, gen_len)"
.LC97:
	.string	"seed"
	.align 8
.LC98:
	.string	"OSSL_PARAM_BLD_push_octet_string(bld, OSSL_PKEY_PARAM_EC_SEED, seed, sizeof(seed))"
.LC99:
	.string	"cofactor"
	.align 8
.LC100:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_COFACTOR, BN_value_one())"
	.text
	.type	do_create_ec_explicit_prime_params, @function
do_create_ec_explicit_prime_params:
.LFB725:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	bnctx(%rip), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1107, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L448
	movq	bnctx(%rip), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC77(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1108, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L448
	movq	bnctx(%rip), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC78(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1109, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L448
	movq	bnctx(%rip), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC79(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1110, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L448
	movq	-24(%rbp), %rax
	leaq	prime_data.17(%rip), %rcx
	movq	%rax, %rdx
	movl	$33, %esi
	movq	%rcx, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC80(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1111, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L448
	movq	-8(%rbp), %rax
	leaq	a_data.16(%rip), %rcx
	movq	%rax, %rdx
	movl	$33, %esi
	movq	%rcx, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC81(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1112, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L448
	movq	-16(%rbp), %rax
	leaq	b_data.15(%rip), %rcx
	movq	%rax, %rdx
	movl	$32, %esi
	movq	%rcx, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC82(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1113, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L448
	movq	-32(%rbp), %rax
	leaq	order_data.14(%rip), %rcx
	movq	%rax, %rdx
	movl	$33, %esi
	movq	%rcx, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC83(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1114, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L448
	leaq	.LC84(%rip), %rdx
	leaq	.LC85(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC86(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1115, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L448
	movq	-24(%rbp), %rdx
	leaq	.LC87(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC88(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1118, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L448
	movq	-8(%rbp), %rdx
	leaq	.LC89(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC90(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1119, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L448
	movq	-16(%rbp), %rdx
	leaq	.LC91(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC92(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1120, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L448
	movq	-32(%rbp), %rdx
	leaq	.LC93(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC94(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1121, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L448
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	leaq	.LC95(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC96(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1123, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L448
	leaq	seed.13(%rip), %rdx
	leaq	.LC97(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$20, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC98(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1125, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L448
	call	BN_value_one@PLT
	movq	%rax, %rdx
	leaq	.LC99(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC100(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1127, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L448
	movl	$1, %eax
	jmp	.L450
.L448:
	movl	$0, %eax
.L450:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE725:
	.size	do_create_ec_explicit_prime_params, .-do_create_ec_explicit_prime_params
	.type	create_ec_explicit_prime_params_namedcurve, @function
create_ec_explicit_prime_params_namedcurve:
.LFB726:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	prime256v1_gen.12(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$65, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_create_ec_explicit_prime_params
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE726:
	.size	create_ec_explicit_prime_params_namedcurve, .-create_ec_explicit_prime_params_namedcurve
	.type	create_ec_explicit_prime_params, @function
create_ec_explicit_prime_params:
.LFB727:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	prime256v1_gen2.11(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$65, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_create_ec_explicit_prime_params
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE727:
	.size	create_ec_explicit_prime_params, .-create_ec_explicit_prime_params
	.section	.rodata
.LC101:
	.string	"poly = BN_CTX_get(bnctx)"
.LC102:
	.string	"cofactor = BN_CTX_get(bnctx)"
	.align 8
.LC103:
	.string	"BN_bin2bn(poly_data, sizeof(poly_data), poly)"
	.align 8
.LC104:
	.string	"BN_bin2bn(cofactor_data, sizeof(cofactor_data), cofactor)"
.LC105:
	.string	"characteristic-two-field"
	.align 8
.LC106:
	.string	"OSSL_PARAM_BLD_push_utf8_string(bld, OSSL_PKEY_PARAM_EC_FIELD_TYPE, SN_X9_62_characteristic_two_field, 0)"
	.align 8
.LC107:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_P, poly)"
	.align 8
.LC108:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_COFACTOR, cofactor)"
	.text
	.type	do_create_ec_explicit_trinomial_params, @function
do_create_ec_explicit_trinomial_params:
.LFB728:
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
	movq	bnctx(%rip), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1196, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L456
	movq	bnctx(%rip), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC77(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1197, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L456
	movq	bnctx(%rip), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC101(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1198, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L456
	movq	bnctx(%rip), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC79(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1199, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L456
	movq	bnctx(%rip), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC102(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1200, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L456
	movq	-24(%rbp), %rax
	leaq	poly_data.10(%rip), %rcx
	movq	%rax, %rdx
	movl	$30, %esi
	movq	%rcx, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC103(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1201, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L456
	movq	-8(%rbp), %rax
	leaq	a_data.9(%rip), %rcx
	movq	%rax, %rdx
	movl	$30, %esi
	movq	%rcx, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC81(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1202, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L456
	movq	-16(%rbp), %rax
	leaq	b_data.8(%rip), %rcx
	movq	%rax, %rdx
	movl	$30, %esi
	movq	%rcx, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC82(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1203, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L456
	movq	-32(%rbp), %rax
	leaq	order_data.7(%rip), %rcx
	movq	%rax, %rdx
	movl	$30, %esi
	movq	%rcx, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC83(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1204, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L456
	movq	-40(%rbp), %rax
	leaq	cofactor_data.6(%rip), %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	movq	%rcx, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC104(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1205, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L456
	leaq	.LC105(%rip), %rdx
	leaq	.LC85(%rip), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC106(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1206, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L456
	movq	-24(%rbp), %rdx
	leaq	.LC87(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC107(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1209, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L456
	movq	-8(%rbp), %rdx
	leaq	.LC89(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC90(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1210, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L456
	movq	-16(%rbp), %rdx
	leaq	.LC91(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC92(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1211, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L456
	movq	-32(%rbp), %rdx
	leaq	.LC93(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC94(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1212, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L456
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	.LC95(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC96(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1214, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L456
	movq	-40(%rbp), %rdx
	leaq	.LC99(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC108(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1216, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L456
	movl	$1, %eax
	jmp	.L458
.L456:
	movl	$0, %eax
.L458:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	do_create_ec_explicit_trinomial_params, .-do_create_ec_explicit_trinomial_params
	.type	create_ec_explicit_trinomial_params_namedcurve, @function
create_ec_explicit_trinomial_params_namedcurve:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	gen.5(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$61, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_create_ec_explicit_trinomial_params
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	create_ec_explicit_trinomial_params_namedcurve, .-create_ec_explicit_trinomial_params_namedcurve
	.type	create_ec_explicit_trinomial_params, @function
create_ec_explicit_trinomial_params:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	gen2.4(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$61, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_create_ec_explicit_trinomial_params
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	create_ec_explicit_trinomial_params, .-create_ec_explicit_trinomial_params
	.section	.rodata
.LC109:
	.string	"P-256"
.LC110:
	.string	""
	.align 8
.LC111:
	.string	"key = EVP_PKEY_Q_keygen(testctx, \"\", \"EC\", \"P-256\")"
	.align 8
.LC112:
	.string	"ectx = OSSL_ENCODER_CTX_new_for_pkey(key, EVP_PKEY_KEYPAIR, \"DER\", NULL, NULL)"
	.align 8
.LC113:
	.string	"OSSL_ENCODER_to_data(ectx, NULL, &enc_len)"
	.align 8
.LC114:
	.string	"OSSL_ENCODER_to_data(ectx, &enc, &enc_len)"
	.text
	.type	ec_encode_to_data_multi, @function
ec_encode_to_data_multi:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	testctx(%rip), %rax
	leaq	.LC109(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC110(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	EVP_PKEY_Q_keygen@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC111(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1260, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L464
	leaq	.LC26(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$135, %esi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC112(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1261, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L464
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_data@PLT
	movl	%eax, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC113(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1263, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L464
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_data@PLT
	movl	%eax, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC114(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1264, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L464
	movl	$1, %eax
	jmp	.L465
.L464:
	movl	$0, %eax
.L465:
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$1265, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	ec_encode_to_data_multi, .-ec_encode_to_data_multi
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	options.3(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC115:
	.string	"default"
.LC116:
	.string	"pbits"
.LC117:
	.string	"qbits"
.LC118:
	.string	"group"
.LC119:
	.string	"fips"
.LC120:
	.string	"keyctx = OSSL_LIB_CTX_new()"
	.align 8
.LC121:
	.string	"keyprov = OSSL_PROVIDER_load(keyctx, \"default\")"
	.align 8
.LC122:
	.string	"bnctx = BN_CTX_new_ex(testctx)"
	.align 8
.LC123:
	.string	"bld_prime_nc = OSSL_PARAM_BLD_new()"
	.align 8
.LC124:
	.string	"bld_prime = OSSL_PARAM_BLD_new()"
	.align 8
.LC125:
	.string	"ec_explicit_prime_params_nc = OSSL_PARAM_BLD_to_param(bld_prime_nc)"
	.align 8
.LC126:
	.string	"ec_explicit_prime_params_explicit = OSSL_PARAM_BLD_to_param(bld_prime)"
	.align 8
.LC127:
	.string	"bld_tri_nc = OSSL_PARAM_BLD_new()"
	.align 8
.LC128:
	.string	"bld_tri = OSSL_PARAM_BLD_new()"
	.align 8
.LC129:
	.string	"ec_explicit_tri_params_nc = OSSL_PARAM_BLD_to_param(bld_tri_nc)"
	.align 8
.LC130:
	.string	"ec_explicit_tri_params_explicit = OSSL_PARAM_BLD_to_param(bld_tri)"
.LC131:
	.string	"Generating keys..."
.LC132:
	.string	"Generating DH keys..."
	.align 8
.LC133:
	.string	"template_DH = make_template(\"DH\", ((void *)0))"
	.align 8
.LC134:
	.string	"key_DH = make_key(\"DH\", template_DH, NULL)"
	.align 8
.LC135:
	.string	"template_DHX = make_template(\"X9.42 DH\", ((void *)0))"
	.align 8
.LC136:
	.string	"key_DHX = make_key(\"X9.42 DH\", template_DHX, NULL)"
.LC137:
	.string	"Generating DSA keys..."
	.align 8
.LC138:
	.string	"template_DSA = make_template(\"DSA\", DSA_params)"
	.align 8
.LC139:
	.string	"key_DSA = make_key(\"DSA\", template_DSA, NULL)"
.LC140:
	.string	"Generating EC keys..."
	.align 8
.LC141:
	.string	"template_EC = make_template(\"EC\", EC_params)"
	.align 8
.LC142:
	.string	"key_EC = make_key(\"EC\", template_EC, NULL)"
	.align 8
.LC143:
	.string	"template_ECExplicitPrimeNamedCurve = make_template(\"EC\", ec_explicit_prime_params_nc)"
	.align 8
.LC144:
	.string	"key_ECExplicitPrimeNamedCurve = make_key(\"EC\", template_ECExplicitPrimeNamedCurve, NULL)"
	.align 8
.LC145:
	.string	"template_ECExplicitPrime2G = make_template(\"EC\", ec_explicit_prime_params_explicit)"
	.align 8
.LC146:
	.string	"key_ECExplicitPrime2G = make_key(\"EC\", template_ECExplicitPrime2G, NULL)"
	.align 8
.LC147:
	.string	"template_ECExplicitTriNamedCurve = make_template(\"EC\", ec_explicit_tri_params_nc)"
	.align 8
.LC148:
	.string	"key_ECExplicitTriNamedCurve = make_key(\"EC\", template_ECExplicitTriNamedCurve, NULL)"
	.align 8
.LC149:
	.string	"template_ECExplicitTri2G = make_template(\"EC\", ec_explicit_tri_params_explicit)"
	.align 8
.LC150:
	.string	"key_ECExplicitTri2G = make_key(\"EC\", template_ECExplicitTri2G, NULL)"
	.align 8
.LC151:
	.string	"key_SM2 = make_key(\"SM2\", NULL, ((void *)0))"
	.align 8
.LC152:
	.string	"key_ED25519 = make_key(\"ED25519\", NULL, ((void *)0))"
	.align 8
.LC153:
	.string	"key_ED448 = make_key(\"ED448\", NULL, ((void *)0))"
	.align 8
.LC154:
	.string	"key_X25519 = make_key(\"X25519\", NULL, ((void *)0))"
	.align 8
.LC155:
	.string	"key_X448 = make_key(\"X448\", NULL, ((void *)0))"
.LC156:
	.string	"Loading RSA key..."
	.align 8
.LC157:
	.string	"key_RSA = load_pkey_pem(rsa_file, keyctx)"
.LC158:
	.string	"Loading RSA_PSS key..."
	.align 8
.LC159:
	.string	"key_RSA_PSS = load_pkey_pem(rsa_pss_file, keyctx)"
.LC160:
	.string	"Generating keys done"
.LC161:
	.string	"test_unprotected_DH_via_DER"
.LC162:
	.string	"test_unprotected_DH_via_PEM"
.LC163:
	.string	"test_protected_DH_via_DER"
.LC164:
	.string	"test_protected_DH_via_PEM"
.LC165:
	.string	"test_public_DH_via_DER"
.LC166:
	.string	"test_public_DH_via_PEM"
.LC167:
	.string	"test_params_DH_via_DER"
.LC168:
	.string	"test_params_DH_via_PEM"
.LC169:
	.string	"test_unprotected_DHX_via_DER"
.LC170:
	.string	"test_unprotected_DHX_via_PEM"
.LC171:
	.string	"test_protected_DHX_via_DER"
.LC172:
	.string	"test_protected_DHX_via_PEM"
.LC173:
	.string	"test_public_DHX_via_DER"
.LC174:
	.string	"test_public_DHX_via_PEM"
.LC175:
	.string	"test_params_DHX_via_DER"
.LC176:
	.string	"test_params_DHX_via_PEM"
.LC177:
	.string	"test_unprotected_DSA_via_DER"
.LC178:
	.string	"test_unprotected_DSA_via_PEM"
.LC179:
	.string	"test_protected_DSA_via_DER"
.LC180:
	.string	"test_protected_DSA_via_PEM"
.LC181:
	.string	"test_public_DSA_via_DER"
.LC182:
	.string	"test_public_DSA_via_PEM"
.LC183:
	.string	"test_params_DSA_via_DER"
.LC184:
	.string	"test_params_DSA_via_PEM"
	.align 8
.LC185:
	.string	"test_unprotected_DSA_via_legacy_PEM"
	.align 8
.LC186:
	.string	"test_protected_DSA_via_legacy_PEM"
	.align 8
.LC187:
	.string	"test_unprotected_DSA_via_MSBLOB"
.LC188:
	.string	"test_public_DSA_via_MSBLOB"
.LC189:
	.string	"test_unprotected_DSA_via_PVK"
.LC190:
	.string	"test_protected_DSA_via_PVK"
.LC191:
	.string	"ec_encode_to_data_multi"
.LC192:
	.string	"test_unprotected_EC_via_DER"
.LC193:
	.string	"test_unprotected_EC_via_PEM"
.LC194:
	.string	"test_protected_EC_via_DER"
.LC195:
	.string	"test_protected_EC_via_PEM"
.LC196:
	.string	"test_public_EC_via_DER"
.LC197:
	.string	"test_public_EC_via_PEM"
.LC198:
	.string	"test_params_EC_via_DER"
.LC199:
	.string	"test_params_EC_via_PEM"
	.align 8
.LC200:
	.string	"test_unprotected_EC_via_legacy_PEM"
	.align 8
.LC201:
	.string	"test_protected_EC_via_legacy_PEM"
	.align 8
.LC202:
	.string	"test_unprotected_ECExplicitPrimeNamedCurve_via_DER"
	.align 8
.LC203:
	.string	"test_unprotected_ECExplicitPrimeNamedCurve_via_PEM"
	.align 8
.LC204:
	.string	"test_protected_ECExplicitPrimeNamedCurve_via_DER"
	.align 8
.LC205:
	.string	"test_protected_ECExplicitPrimeNamedCurve_via_PEM"
	.align 8
.LC206:
	.string	"test_public_ECExplicitPrimeNamedCurve_via_DER"
	.align 8
.LC207:
	.string	"test_public_ECExplicitPrimeNamedCurve_via_PEM"
	.align 8
.LC208:
	.string	"test_unprotected_ECExplicitPrimeNamedCurve_via_legacy_PEM"
	.align 8
.LC209:
	.string	"test_protected_ECExplicitPrimeNamedCurve_via_legacy_PEM"
	.align 8
.LC210:
	.string	"test_unprotected_ECExplicitPrime2G_via_DER"
	.align 8
.LC211:
	.string	"test_unprotected_ECExplicitPrime2G_via_PEM"
	.align 8
.LC212:
	.string	"test_protected_ECExplicitPrime2G_via_DER"
	.align 8
.LC213:
	.string	"test_protected_ECExplicitPrime2G_via_PEM"
	.align 8
.LC214:
	.string	"test_public_ECExplicitPrime2G_via_DER"
	.align 8
.LC215:
	.string	"test_public_ECExplicitPrime2G_via_PEM"
	.align 8
.LC216:
	.string	"test_unprotected_ECExplicitPrime2G_via_legacy_PEM"
	.align 8
.LC217:
	.string	"test_protected_ECExplicitPrime2G_via_legacy_PEM"
	.align 8
.LC218:
	.string	"test_unprotected_ECExplicitTriNamedCurve_via_DER"
	.align 8
.LC219:
	.string	"test_unprotected_ECExplicitTriNamedCurve_via_PEM"
	.align 8
.LC220:
	.string	"test_protected_ECExplicitTriNamedCurve_via_DER"
	.align 8
.LC221:
	.string	"test_protected_ECExplicitTriNamedCurve_via_PEM"
	.align 8
.LC222:
	.string	"test_public_ECExplicitTriNamedCurve_via_DER"
	.align 8
.LC223:
	.string	"test_public_ECExplicitTriNamedCurve_via_PEM"
	.align 8
.LC224:
	.string	"test_unprotected_ECExplicitTriNamedCurve_via_legacy_PEM"
	.align 8
.LC225:
	.string	"test_protected_ECExplicitTriNamedCurve_via_legacy_PEM"
	.align 8
.LC226:
	.string	"test_unprotected_ECExplicitTri2G_via_DER"
	.align 8
.LC227:
	.string	"test_unprotected_ECExplicitTri2G_via_PEM"
	.align 8
.LC228:
	.string	"test_protected_ECExplicitTri2G_via_DER"
	.align 8
.LC229:
	.string	"test_protected_ECExplicitTri2G_via_PEM"
	.align 8
.LC230:
	.string	"test_public_ECExplicitTri2G_via_DER"
	.align 8
.LC231:
	.string	"test_public_ECExplicitTri2G_via_PEM"
	.align 8
.LC232:
	.string	"test_unprotected_ECExplicitTri2G_via_legacy_PEM"
	.align 8
.LC233:
	.string	"test_protected_ECExplicitTri2G_via_legacy_PEM"
.LC234:
	.string	"test_unprotected_SM2_via_DER"
.LC235:
	.string	"test_unprotected_SM2_via_PEM"
.LC236:
	.string	"test_protected_SM2_via_DER"
.LC237:
	.string	"test_protected_SM2_via_PEM"
.LC238:
	.string	"test_public_SM2_via_DER"
.LC239:
	.string	"test_public_SM2_via_PEM"
	.align 8
.LC240:
	.string	"test_unprotected_ED25519_via_DER"
	.align 8
.LC241:
	.string	"test_unprotected_ED25519_via_PEM"
	.align 8
.LC242:
	.string	"test_protected_ED25519_via_DER"
	.align 8
.LC243:
	.string	"test_protected_ED25519_via_PEM"
.LC244:
	.string	"test_public_ED25519_via_DER"
.LC245:
	.string	"test_public_ED25519_via_PEM"
	.align 8
.LC246:
	.string	"test_unprotected_ED448_via_DER"
	.align 8
.LC247:
	.string	"test_unprotected_ED448_via_PEM"
.LC248:
	.string	"test_protected_ED448_via_DER"
.LC249:
	.string	"test_protected_ED448_via_PEM"
.LC250:
	.string	"test_public_ED448_via_DER"
.LC251:
	.string	"test_public_ED448_via_PEM"
	.align 8
.LC252:
	.string	"test_unprotected_X25519_via_DER"
	.align 8
.LC253:
	.string	"test_unprotected_X25519_via_PEM"
.LC254:
	.string	"test_protected_X25519_via_DER"
.LC255:
	.string	"test_protected_X25519_via_PEM"
.LC256:
	.string	"test_public_X25519_via_DER"
.LC257:
	.string	"test_public_X25519_via_PEM"
.LC258:
	.string	"test_unprotected_X448_via_DER"
.LC259:
	.string	"test_unprotected_X448_via_PEM"
.LC260:
	.string	"test_protected_X448_via_DER"
.LC261:
	.string	"test_protected_X448_via_PEM"
.LC262:
	.string	"test_public_X448_via_DER"
.LC263:
	.string	"test_public_X448_via_PEM"
.LC264:
	.string	"test_unprotected_RSA_via_DER"
.LC265:
	.string	"test_unprotected_RSA_via_PEM"
.LC266:
	.string	"test_protected_RSA_via_DER"
.LC267:
	.string	"test_protected_RSA_via_PEM"
.LC268:
	.string	"test_public_RSA_via_DER"
.LC269:
	.string	"test_public_RSA_via_PEM"
	.align 8
.LC270:
	.string	"test_unprotected_RSA_via_legacy_PEM"
	.align 8
.LC271:
	.string	"test_protected_RSA_via_legacy_PEM"
	.align 8
.LC272:
	.string	"test_unprotected_RSA_PSS_via_DER"
	.align 8
.LC273:
	.string	"test_unprotected_RSA_PSS_via_PEM"
	.align 8
.LC274:
	.string	"test_protected_RSA_PSS_via_DER"
	.align 8
.LC275:
	.string	"test_protected_RSA_PSS_via_PEM"
.LC276:
	.string	"test_public_RSA_PSS_via_DER"
.LC277:
	.string	"test_public_RSA_PSS_via_PEM"
	.align 8
.LC278:
	.string	"test_unprotected_RSA_via_MSBLOB"
.LC279:
	.string	"test_public_RSA_via_MSBLOB"
.LC280:
	.string	"test_unprotected_RSA_via_PVK"
.LC281:
	.string	"test_protected_RSA_via_PVK"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC115(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$1, -36(%rbp)
	leaq	.LC116(%rip), %rax
	movq	%rax, -160(%rbp)
	movl	$2, -152(%rbp)
	leaq	pbits.2(%rip), %rax
	movq	%rax, -144(%rbp)
	movq	$8, -136(%rbp)
	movq	$-1, -128(%rbp)
	leaq	.LC117(%rip), %rax
	movq	%rax, -120(%rbp)
	movl	$2, -112(%rbp)
	leaq	qbits.1(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	$8, -96(%rbp)
	movq	$-1, -88(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	leaq	.LC118(%rip), %rax
	movq	%rax, -240(%rbp)
	movl	$4, -232(%rbp)
	leaq	groupname.0(%rip), %rax
	movq	%rax, -224(%rbp)
	movq	$10, -216(%rbp)
	movq	$-1, -208(%rbp)
	movq	$0, -200(%rbp)
	movl	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	jmp	.L470
.L479:
	cmpl	$505, -40(%rbp)
	jg	.L471
	cmpl	$500, -40(%rbp)
	jge	.L470
	cmpl	$5, -40(%rbp)
	je	.L473
	cmpl	$5, -40(%rbp)
	jg	.L471
	cmpl	$4, -40(%rbp)
	je	.L474
	cmpl	$4, -40(%rbp)
	jg	.L471
	cmpl	$3, -40(%rbp)
	je	.L475
	cmpl	$3, -40(%rbp)
	jg	.L471
	cmpl	$1, -40(%rbp)
	je	.L476
	cmpl	$2, -40(%rbp)
	je	.L477
	jmp	.L471
.L476:
	movl	$0, default_libctx(%rip)
	jmp	.L470
.L473:
	call	opt_arg@PLT
	movq	%rax, -24(%rbp)
	jmp	.L470
.L474:
	call	opt_arg@PLT
	movq	%rax, -32(%rbp)
	jmp	.L470
.L477:
	call	opt_arg@PLT
	movq	%rax, -8(%rbp)
	jmp	.L470
.L475:
	call	opt_arg@PLT
	movq	%rax, -16(%rbp)
	jmp	.L470
.L471:
	movl	$0, %eax
	jmp	.L522
.L470:
	call	opt_next@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.L479
	leaq	.LC119(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L480
	movl	$1, is_fips(%rip)
.L480:
	movl	default_libctx(%rip), %eax
	testl	%eax, %eax
	je	.L481
	movq	-24(%rbp), %rcx
	leaq	deflprov(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	test_get_libctx@PLT
	testl	%eax, %eax
	jne	.L482
	movl	$0, %eax
	jmp	.L522
.L481:
	movq	-24(%rbp), %rcx
	leaq	deflprov(%rip), %rdx
	movq	-32(%rbp), %rax
	leaq	nullprov(%rip), %rsi
	leaq	testctx(%rip), %rdi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	test_get_libctx@PLT
	testl	%eax, %eax
	jne	.L482
	movl	$0, %eax
	jmp	.L522
.L482:
	movl	is_fips(%rip), %eax
	testl	%eax, %eax
	je	.L483
	movq	testctx(%rip), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	fips_provider_version_eq@PLT
	testl	%eax, %eax
	je	.L483
	movl	$1, %eax
	jmp	.L484
.L483:
	movl	$0, %eax
.L484:
	movl	%eax, is_fips_3_0_0(%rip)
	movq	testctx(%rip), %rax
	movq	ossl_legacy_provider_init@GOTPCREL(%rip), %rdx
	leaq	.LC66(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_add_builtin@PLT
	testl	%eax, %eax
	jne	.L485
	movl	$0, %eax
	jmp	.L522
.L485:
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, keyctx(%rip)
	movq	keyctx(%rip), %rax
	leaq	.LC120(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1379, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L486
	movl	$0, %eax
	jmp	.L522
.L486:
	movq	keyctx(%rip), %rax
	leaq	.LC115(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, keyprov(%rip)
	movq	keyprov(%rip), %rax
	leaq	.LC121(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1381, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L487
	movl	$0, %eax
	jmp	.L522
.L487:
	movq	testctx(%rip), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, bnctx(%rip)
	movq	bnctx(%rip), %rax
	leaq	.LC122(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1385, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L488
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, bld_prime_nc(%rip)
	movq	bld_prime_nc(%rip), %rax
	leaq	.LC123(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1386, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L488
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, bld_prime(%rip)
	movq	bld_prime(%rip), %rax
	leaq	.LC124(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1387, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L488
	movq	bld_prime_nc(%rip), %rax
	movq	%rax, %rdi
	call	create_ec_explicit_prime_params_namedcurve
	testl	%eax, %eax
	je	.L488
	movq	bld_prime(%rip), %rax
	movq	%rax, %rdi
	call	create_ec_explicit_prime_params
	testl	%eax, %eax
	je	.L488
	movq	bld_prime_nc(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, ec_explicit_prime_params_nc(%rip)
	movq	ec_explicit_prime_params_nc(%rip), %rax
	leaq	.LC125(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1390, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L488
	movq	bld_prime(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, ec_explicit_prime_params_explicit(%rip)
	movq	ec_explicit_prime_params_explicit(%rip), %rax
	leaq	.LC126(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1391, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L488
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, bld_tri_nc(%rip)
	movq	bld_tri_nc(%rip), %rax
	leaq	.LC127(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1393, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L488
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, bld_tri(%rip)
	movq	bld_tri(%rip), %rax
	leaq	.LC128(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1394, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L488
	movq	bld_tri_nc(%rip), %rax
	movq	%rax, %rdi
	call	create_ec_explicit_trinomial_params_namedcurve
	testl	%eax, %eax
	je	.L488
	movq	bld_tri(%rip), %rax
	movq	%rax, %rdi
	call	create_ec_explicit_trinomial_params
	testl	%eax, %eax
	je	.L488
	movq	bld_tri_nc(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, ec_explicit_tri_params_nc(%rip)
	movq	ec_explicit_tri_params_nc(%rip), %rax
	leaq	.LC129(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1397, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L488
	movq	bld_tri(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, ec_explicit_tri_params_explicit(%rip)
	movq	ec_explicit_tri_params_explicit(%rip), %rax
	leaq	.LC130(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1398, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L489
.L488:
	movl	$0, %eax
	jmp	.L522
.L489:
	leaq	.LC131(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1404, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	.LC132(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1407, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	cmpl	$0, -36(%rbp)
	je	.L490
	leaq	.LC0(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	make_template
	movq	%rax, template_DH(%rip)
	movq	template_DH(%rip), %rax
	leaq	.LC133(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1408, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L490
	movq	template_DH(%rip), %rax
	leaq	.LC0(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	make_key
	movq	%rax, key_DH(%rip)
	movq	key_DH(%rip), %rax
	leaq	.LC134(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1408, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L490
	movl	$1, %eax
	jmp	.L491
.L490:
	movl	$0, %eax
.L491:
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L492
	leaq	.LC1(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	make_template
	movq	%rax, template_DHX(%rip)
	movq	template_DHX(%rip), %rax
	leaq	.LC135(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1409, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L492
	movq	template_DHX(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	make_key
	movq	%rax, key_DHX(%rip)
	movq	key_DHX(%rip), %rax
	leaq	.LC136(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1409, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L492
	movl	$1, %eax
	jmp	.L493
.L492:
	movl	$0, %eax
.L493:
	movl	%eax, -36(%rbp)
	leaq	.LC137(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1412, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	cmpl	$0, -36(%rbp)
	je	.L494
	leaq	-160(%rbp), %rax
	leaq	.LC51(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	make_template
	movq	%rax, template_DSA(%rip)
	movq	template_DSA(%rip), %rax
	leaq	.LC138(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1413, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L494
	movq	template_DSA(%rip), %rax
	leaq	.LC51(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	make_key
	movq	%rax, key_DSA(%rip)
	movq	key_DSA(%rip), %rax
	leaq	.LC139(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1413, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L494
	movl	$1, %eax
	jmp	.L495
.L494:
	movl	$0, %eax
.L495:
	movl	%eax, -36(%rbp)
	leaq	.LC140(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1416, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	cmpl	$0, -36(%rbp)
	je	.L496
	leaq	-240(%rbp), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	make_template
	movq	%rax, template_EC(%rip)
	movq	template_EC(%rip), %rax
	leaq	.LC141(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1417, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L496
	movq	template_EC(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	make_key
	movq	%rax, key_EC(%rip)
	movq	key_EC(%rip), %rax
	leaq	.LC142(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1417, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L496
	movl	$1, %eax
	jmp	.L497
.L496:
	movl	$0, %eax
.L497:
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L498
	movq	ec_explicit_prime_params_nc(%rip), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	make_template
	movq	%rax, template_ECExplicitPrimeNamedCurve(%rip)
	movq	template_ECExplicitPrimeNamedCurve(%rip), %rax
	leaq	.LC143(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1418, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L498
	movq	template_ECExplicitPrimeNamedCurve(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	make_key
	movq	%rax, key_ECExplicitPrimeNamedCurve(%rip)
	movq	key_ECExplicitPrimeNamedCurve(%rip), %rax
	leaq	.LC144(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1418, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L498
	movl	$1, %eax
	jmp	.L499
.L498:
	movl	$0, %eax
.L499:
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L500
	movq	ec_explicit_prime_params_explicit(%rip), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	make_template
	movq	%rax, template_ECExplicitPrime2G(%rip)
	movq	template_ECExplicitPrime2G(%rip), %rax
	leaq	.LC145(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1419, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L500
	movq	template_ECExplicitPrime2G(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	make_key
	movq	%rax, key_ECExplicitPrime2G(%rip)
	movq	key_ECExplicitPrime2G(%rip), %rax
	leaq	.LC146(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1419, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L500
	movl	$1, %eax
	jmp	.L501
.L500:
	movl	$0, %eax
.L501:
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L502
	movq	ec_explicit_tri_params_nc(%rip), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	make_template
	movq	%rax, template_ECExplicitTriNamedCurve(%rip)
	movq	template_ECExplicitTriNamedCurve(%rip), %rax
	leaq	.LC147(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1421, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L502
	movq	template_ECExplicitTriNamedCurve(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	make_key
	movq	%rax, key_ECExplicitTriNamedCurve(%rip)
	movq	key_ECExplicitTriNamedCurve(%rip), %rax
	leaq	.LC148(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1421, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L502
	movl	$1, %eax
	jmp	.L503
.L502:
	movl	$0, %eax
.L503:
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L504
	movq	ec_explicit_tri_params_explicit(%rip), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	make_template
	movq	%rax, template_ECExplicitTri2G(%rip)
	movq	template_ECExplicitTri2G(%rip), %rax
	leaq	.LC149(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1422, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L504
	movq	template_ECExplicitTri2G(%rip), %rax
	leaq	.LC52(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	make_key
	movq	%rax, key_ECExplicitTri2G(%rip)
	movq	key_ECExplicitTri2G(%rip), %rax
	leaq	.LC150(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1422, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L504
	movl	$1, %eax
	jmp	.L505
.L504:
	movl	$0, %eax
.L505:
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L506
	leaq	.LC69(%rip), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	make_key
	movq	%rax, key_SM2(%rip)
	movq	key_SM2(%rip), %rax
	leaq	.LC151(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1425, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L506
	movl	$1, %eax
	jmp	.L507
.L506:
	movl	$0, %eax
.L507:
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L508
	leaq	.LC70(%rip), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	make_key
	movq	%rax, key_ED25519(%rip)
	movq	key_ED25519(%rip), %rax
	leaq	.LC152(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1427, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L508
	movl	$1, %eax
	jmp	.L509
.L508:
	movl	$0, %eax
.L509:
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L510
	leaq	.LC71(%rip), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	make_key
	movq	%rax, key_ED448(%rip)
	movq	key_ED448(%rip), %rax
	leaq	.LC153(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1428, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L510
	movl	$1, %eax
	jmp	.L511
.L510:
	movl	$0, %eax
.L511:
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L512
	leaq	.LC72(%rip), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	make_key
	movq	%rax, key_X25519(%rip)
	movq	key_X25519(%rip), %rax
	leaq	.LC154(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1429, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L512
	movl	$1, %eax
	jmp	.L513
.L512:
	movl	$0, %eax
.L513:
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L514
	leaq	.LC73(%rip), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	make_key
	movq	%rax, key_X448(%rip)
	movq	key_X448(%rip), %rax
	leaq	.LC155(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1430, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L514
	movl	$1, %eax
	jmp	.L515
.L514:
	movl	$0, %eax
.L515:
	movl	%eax, -36(%rbp)
	leaq	.LC156(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1432, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	cmpl	$0, -36(%rbp)
	je	.L516
	movq	keyctx(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkey_pem@PLT
	movq	%rax, key_RSA(%rip)
	movq	key_RSA(%rip), %rax
	leaq	.LC157(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1433, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L516
	movl	$1, %eax
	jmp	.L517
.L516:
	movl	$0, %eax
.L517:
	movl	%eax, -36(%rbp)
	leaq	.LC158(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1434, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	cmpl	$0, -36(%rbp)
	je	.L518
	movq	keyctx(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkey_pem@PLT
	movq	%rax, key_RSA_PSS(%rip)
	movq	key_RSA_PSS(%rip), %rax
	leaq	.LC159(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1435, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L518
	movl	$1, %eax
	jmp	.L519
.L518:
	movl	$0, %eax
.L519:
	movl	%eax, -36(%rbp)
	leaq	.LC160(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1436, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	cmpl	$0, -36(%rbp)
	je	.L520
	leaq	test_unprotected_DH_via_DER(%rip), %rdx
	leaq	.LC161(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_DH_via_PEM(%rip), %rdx
	leaq	.LC162(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_DH_via_DER(%rip), %rdx
	leaq	.LC163(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_DH_via_PEM(%rip), %rdx
	leaq	.LC164(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_DH_via_DER(%rip), %rdx
	leaq	.LC165(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_DH_via_PEM(%rip), %rdx
	leaq	.LC166(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_params_DH_via_DER(%rip), %rdx
	leaq	.LC167(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_params_DH_via_PEM(%rip), %rdx
	leaq	.LC168(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_DHX_via_DER(%rip), %rdx
	leaq	.LC169(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_DHX_via_PEM(%rip), %rdx
	leaq	.LC170(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_DHX_via_DER(%rip), %rdx
	leaq	.LC171(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_DHX_via_PEM(%rip), %rdx
	leaq	.LC172(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_DHX_via_DER(%rip), %rdx
	leaq	.LC173(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_DHX_via_PEM(%rip), %rdx
	leaq	.LC174(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_params_DHX_via_DER(%rip), %rdx
	leaq	.LC175(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_params_DHX_via_PEM(%rip), %rdx
	leaq	.LC176(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_DSA_via_DER(%rip), %rdx
	leaq	.LC177(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_DSA_via_PEM(%rip), %rdx
	leaq	.LC178(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_DSA_via_DER(%rip), %rdx
	leaq	.LC179(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_DSA_via_PEM(%rip), %rdx
	leaq	.LC180(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_DSA_via_DER(%rip), %rdx
	leaq	.LC181(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_DSA_via_PEM(%rip), %rdx
	leaq	.LC182(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_params_DSA_via_DER(%rip), %rdx
	leaq	.LC183(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_params_DSA_via_PEM(%rip), %rdx
	leaq	.LC184(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_DSA_via_legacy_PEM(%rip), %rdx
	leaq	.LC185(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_DSA_via_legacy_PEM(%rip), %rdx
	leaq	.LC186(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_DSA_via_MSBLOB(%rip), %rdx
	leaq	.LC187(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_DSA_via_MSBLOB(%rip), %rdx
	leaq	.LC188(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_DSA_via_PVK(%rip), %rdx
	leaq	.LC189(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_DSA_via_PVK(%rip), %rdx
	leaq	.LC190(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	ec_encode_to_data_multi(%rip), %rdx
	leaq	.LC191(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_EC_via_DER(%rip), %rdx
	leaq	.LC192(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_EC_via_PEM(%rip), %rdx
	leaq	.LC193(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_EC_via_DER(%rip), %rdx
	leaq	.LC194(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_EC_via_PEM(%rip), %rdx
	leaq	.LC195(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_EC_via_DER(%rip), %rdx
	leaq	.LC196(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_EC_via_PEM(%rip), %rdx
	leaq	.LC197(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_params_EC_via_DER(%rip), %rdx
	leaq	.LC198(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_params_EC_via_PEM(%rip), %rdx
	leaq	.LC199(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_EC_via_legacy_PEM(%rip), %rdx
	leaq	.LC200(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_EC_via_legacy_PEM(%rip), %rdx
	leaq	.LC201(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_ECExplicitPrimeNamedCurve_via_DER(%rip), %rdx
	leaq	.LC202(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_ECExplicitPrimeNamedCurve_via_PEM(%rip), %rdx
	leaq	.LC203(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_ECExplicitPrimeNamedCurve_via_DER(%rip), %rdx
	leaq	.LC204(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_ECExplicitPrimeNamedCurve_via_PEM(%rip), %rdx
	leaq	.LC205(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_ECExplicitPrimeNamedCurve_via_DER(%rip), %rdx
	leaq	.LC206(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_ECExplicitPrimeNamedCurve_via_PEM(%rip), %rdx
	leaq	.LC207(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_ECExplicitPrimeNamedCurve_via_legacy_PEM(%rip), %rdx
	leaq	.LC208(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_ECExplicitPrimeNamedCurve_via_legacy_PEM(%rip), %rdx
	leaq	.LC209(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_ECExplicitPrime2G_via_DER(%rip), %rdx
	leaq	.LC210(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_ECExplicitPrime2G_via_PEM(%rip), %rdx
	leaq	.LC211(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_ECExplicitPrime2G_via_DER(%rip), %rdx
	leaq	.LC212(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_ECExplicitPrime2G_via_PEM(%rip), %rdx
	leaq	.LC213(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_ECExplicitPrime2G_via_DER(%rip), %rdx
	leaq	.LC214(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_ECExplicitPrime2G_via_PEM(%rip), %rdx
	leaq	.LC215(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_ECExplicitPrime2G_via_legacy_PEM(%rip), %rdx
	leaq	.LC216(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_ECExplicitPrime2G_via_legacy_PEM(%rip), %rdx
	leaq	.LC217(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_ECExplicitTriNamedCurve_via_DER(%rip), %rdx
	leaq	.LC218(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_ECExplicitTriNamedCurve_via_PEM(%rip), %rdx
	leaq	.LC219(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_ECExplicitTriNamedCurve_via_DER(%rip), %rdx
	leaq	.LC220(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_ECExplicitTriNamedCurve_via_PEM(%rip), %rdx
	leaq	.LC221(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_ECExplicitTriNamedCurve_via_DER(%rip), %rdx
	leaq	.LC222(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_ECExplicitTriNamedCurve_via_PEM(%rip), %rdx
	leaq	.LC223(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_ECExplicitTriNamedCurve_via_legacy_PEM(%rip), %rdx
	leaq	.LC224(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_ECExplicitTriNamedCurve_via_legacy_PEM(%rip), %rdx
	leaq	.LC225(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_ECExplicitTri2G_via_DER(%rip), %rdx
	leaq	.LC226(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_ECExplicitTri2G_via_PEM(%rip), %rdx
	leaq	.LC227(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_ECExplicitTri2G_via_DER(%rip), %rdx
	leaq	.LC228(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_ECExplicitTri2G_via_PEM(%rip), %rdx
	leaq	.LC229(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_ECExplicitTri2G_via_DER(%rip), %rdx
	leaq	.LC230(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_ECExplicitTri2G_via_PEM(%rip), %rdx
	leaq	.LC231(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_ECExplicitTri2G_via_legacy_PEM(%rip), %rdx
	leaq	.LC232(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_ECExplicitTri2G_via_legacy_PEM(%rip), %rdx
	leaq	.LC233(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	is_fips_3_0_0(%rip), %eax
	testl	%eax, %eax
	jne	.L521
	leaq	test_unprotected_SM2_via_DER(%rip), %rdx
	leaq	.LC234(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_SM2_via_PEM(%rip), %rdx
	leaq	.LC235(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_SM2_via_DER(%rip), %rdx
	leaq	.LC236(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_SM2_via_PEM(%rip), %rdx
	leaq	.LC237(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_SM2_via_DER(%rip), %rdx
	leaq	.LC238(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_SM2_via_PEM(%rip), %rdx
	leaq	.LC239(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
.L521:
	leaq	test_unprotected_ED25519_via_DER(%rip), %rdx
	leaq	.LC240(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_ED25519_via_PEM(%rip), %rdx
	leaq	.LC241(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_ED25519_via_DER(%rip), %rdx
	leaq	.LC242(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_ED25519_via_PEM(%rip), %rdx
	leaq	.LC243(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_ED25519_via_DER(%rip), %rdx
	leaq	.LC244(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_ED25519_via_PEM(%rip), %rdx
	leaq	.LC245(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_ED448_via_DER(%rip), %rdx
	leaq	.LC246(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_ED448_via_PEM(%rip), %rdx
	leaq	.LC247(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_ED448_via_DER(%rip), %rdx
	leaq	.LC248(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_ED448_via_PEM(%rip), %rdx
	leaq	.LC249(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_ED448_via_DER(%rip), %rdx
	leaq	.LC250(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_ED448_via_PEM(%rip), %rdx
	leaq	.LC251(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_X25519_via_DER(%rip), %rdx
	leaq	.LC252(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_X25519_via_PEM(%rip), %rdx
	leaq	.LC253(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_X25519_via_DER(%rip), %rdx
	leaq	.LC254(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_X25519_via_PEM(%rip), %rdx
	leaq	.LC255(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_X25519_via_DER(%rip), %rdx
	leaq	.LC256(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_X25519_via_PEM(%rip), %rdx
	leaq	.LC257(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_X448_via_DER(%rip), %rdx
	leaq	.LC258(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_X448_via_PEM(%rip), %rdx
	leaq	.LC259(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_X448_via_DER(%rip), %rdx
	leaq	.LC260(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_X448_via_PEM(%rip), %rdx
	leaq	.LC261(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_X448_via_DER(%rip), %rdx
	leaq	.LC262(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_X448_via_PEM(%rip), %rdx
	leaq	.LC263(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_RSA_via_DER(%rip), %rdx
	leaq	.LC264(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_RSA_via_PEM(%rip), %rdx
	leaq	.LC265(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_RSA_via_DER(%rip), %rdx
	leaq	.LC266(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_RSA_via_PEM(%rip), %rdx
	leaq	.LC267(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_RSA_via_DER(%rip), %rdx
	leaq	.LC268(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_RSA_via_PEM(%rip), %rdx
	leaq	.LC269(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_RSA_via_legacy_PEM(%rip), %rdx
	leaq	.LC270(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_RSA_via_legacy_PEM(%rip), %rdx
	leaq	.LC271(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_RSA_PSS_via_DER(%rip), %rdx
	leaq	.LC272(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_RSA_PSS_via_PEM(%rip), %rdx
	leaq	.LC273(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_RSA_PSS_via_DER(%rip), %rdx
	leaq	.LC274(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_RSA_PSS_via_PEM(%rip), %rdx
	leaq	.LC275(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_RSA_PSS_via_DER(%rip), %rdx
	leaq	.LC276(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_RSA_PSS_via_PEM(%rip), %rdx
	leaq	.LC277(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_RSA_via_MSBLOB(%rip), %rdx
	leaq	.LC278(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_public_RSA_via_MSBLOB(%rip), %rdx
	leaq	.LC279(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unprotected_RSA_via_PVK(%rip), %rdx
	leaq	.LC280(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_RSA_via_PVK(%rip), %rdx
	leaq	.LC281(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
.L520:
	movl	$1, %eax
.L522:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	ec_explicit_prime_params_nc(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	ec_explicit_prime_params_explicit(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	bld_prime_nc(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	bld_prime(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	ec_explicit_tri_params_nc(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	ec_explicit_tri_params_explicit(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	bld_tri_nc(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	bld_tri(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	bnctx(%rip), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	template_DH(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	key_DH(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	template_DHX(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	key_DHX(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	template_DSA(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	key_DSA(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	template_EC(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	key_EC(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	template_ECExplicitPrimeNamedCurve(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	key_ECExplicitPrimeNamedCurve(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	template_ECExplicitPrime2G(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	key_ECExplicitPrime2G(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	template_ECExplicitTriNamedCurve(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	key_ECExplicitTriNamedCurve(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	template_ECExplicitTri2G(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	key_ECExplicitTri2G(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	key_SM2(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	key_ED25519(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	key_ED448(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	key_X25519(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	key_X448(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	key_RSA(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	key_RSA_PSS(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	nullprov(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	deflprov(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	keyprov(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	testctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movq	keyctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
	.align 16
	.type	expected_pem_header.23, @object
	.size	expected_pem_header.23, 28
expected_pem_header.23:
	.string	"-----BEGIN PRIVATE KEY-----"
	.local	expected_pem_header.22
	.comm	expected_pem_header.22,80,32
	.local	expected_pem_header.21
	.comm	expected_pem_header.21,80,32
	.align 32
	.type	expected_pem_header.20, @object
	.size	expected_pem_header.20, 38
expected_pem_header.20:
	.string	"-----BEGIN ENCRYPTED PRIVATE KEY-----"
	.local	expected_pem_header.19
	.comm	expected_pem_header.19,80,32
	.align 16
	.type	expected_pem_header.18, @object
	.size	expected_pem_header.18, 27
expected_pem_header.18:
	.string	"-----BEGIN PUBLIC KEY-----"
	.align 32
	.type	prime_data.17, @object
	.size	prime_data.17, 33
prime_data.17:
	.base64	"AP////8AAAABAAAAAAAAAAAAAAAA////////////////"
	.align 32
	.type	a_data.16, @object
	.size	a_data.16, 33
a_data.16:
	.base64	"AP////8AAAABAAAAAAAAAAAAAAAA///////////////8"
	.align 32
	.type	b_data.15, @object
	.size	b_data.15, 32
b_data.15:
	.base64	"WsY12Ko6k+ez671VdpiGvGUdBrDMU7D2O848PifSYEs="
	.align 32
	.type	order_data.14, @object
	.size	order_data.14, 33
order_data.14:
	.base64	"AP////8AAAAA//////////+85vqtpxeehPO5ysL8YyVR"
	.align 16
	.type	seed.13, @object
	.size	seed.13, 20
seed.13:
	.base64	"xJ02CIbnBJNqZnjhE50mt4GffpA="
	.align 32
	.type	prime256v1_gen.12, @object
	.size	prime256v1_gen.12, 65
prime256v1_gen.12:
	.base64	"BGsX0fLhLEJH+Lzm5WOkQPJ3A32BLeszoPShOUXYmMKWT+NC4v4af5uO5+tKfA+eFivOM1drMV7Oy7ZAaDe/UfU="
	.align 32
	.type	prime256v1_gen2.11, @object
	.size	prime256v1_gen2.11, 65
prime256v1_gen2.11:
	.base64	"BOSXCL59+qKaoxJv5OfQJeNKwQMVjNkzxpdC9dyXudcx6X10PWdqOyEInDFz+MEnydKgoINm4MnaqMZWK5SxrlU="
	.align 16
	.type	poly_data.10, @object
	.size	poly_data.10, 30
poly_data.10:
	.string	"\002"
	.zero	18
	.string	"\004"
	.zero	7
	.ascii	"\001"
	.align 16
	.type	a_data.9, @object
	.size	a_data.9, 30
a_data.9:
	.zero	30
	.align 16
	.type	b_data.8, @object
	.size	b_data.8, 30
b_data.8:
	.zero	29
	.ascii	"\001"
	.align 16
	.type	order_data.7, @object
	.size	order_data.7, 30
order_data.7:
	.base64	"AIAAAAAAAAAAAAAAAAAABp1buRW81G77GtXxc6vf"
	.type	cofactor_data.6, @object
	.size	cofactor_data.6, 1
cofactor_data.6:
	.ascii	"\004"
	.align 32
	.type	gen.5, @object
	.size	gen.5, 61
gen.5:
	.base64	"BAFyMrqFOn5zGvEp8i/0FJVjpBnCa/UKTJ1u761hJgHbU33s6Bm39w9VWmfEJ6jNm/GK65tW4MEQVvrmow=="
	.align 32
	.type	gen2.4, @object
	.size	gen2.4, 61
gen2.4:
	.base64	"BADXutAmbDFqeHYB0TJLjzApLXgwykOq8KJa1A+z9ACFSxuNUBClHID3hkBiTIfRJnqcXOmCKdFncEHqyw=="
.LC282:
	.string	"Usage: %s [options]\n"
.LC283:
	.string	"Valid options are:\n"
.LC284:
	.string	"help"
.LC285:
	.string	"Display this summary"
.LC286:
	.string	"list"
	.align 8
.LC287:
	.string	"Display the list of tests available"
.LC288:
	.string	"test"
	.align 8
.LC289:
	.string	"Run a single test by id or name"
.LC290:
	.string	"iter"
	.align 8
.LC291:
	.string	"Run a single iteration of a test"
.LC292:
	.string	"indent"
	.align 8
.LC293:
	.string	"Number of tabs added to output"
	.align 8
.LC294:
	.string	"Seed value to randomize tests with"
.LC295:
	.string	"context"
	.align 8
.LC296:
	.string	"Explicitly use a non-default library context"
.LC297:
	.string	"rsa"
	.align 8
.LC298:
	.string	"PEM format RSA key file to encode/decode"
.LC299:
	.string	"pss"
	.align 8
.LC300:
	.string	"PEM format RSA-PSS key file to encode/decode"
.LC301:
	.string	"config"
	.align 8
.LC302:
	.string	"The configuration file to use for the library context"
.LC303:
	.string	"provider"
	.align 8
.LC304:
	.string	"The provider to load (The default value is 'default')"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.3, @object
	.size	options.3, 336
options.3:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC282
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC283
	.quad	.LC284
	.long	500
	.long	45
	.quad	.LC285
	.quad	.LC286
	.long	501
	.long	45
	.quad	.LC287
	.quad	.LC288
	.long	502
	.long	115
	.quad	.LC289
	.quad	.LC290
	.long	503
	.long	110
	.quad	.LC291
	.quad	.LC292
	.long	504
	.long	112
	.quad	.LC293
	.quad	.LC97
	.long	505
	.long	110
	.quad	.LC294
	.quad	.LC295
	.long	1
	.long	45
	.quad	.LC296
	.quad	.LC297
	.long	2
	.long	60
	.quad	.LC298
	.quad	.LC299
	.long	3
	.long	60
	.quad	.LC300
	.quad	.LC301
	.long	4
	.long	60
	.quad	.LC302
	.quad	.LC303
	.long	5
	.long	115
	.quad	.LC304
	.quad	0
	.zero	16
	.data
	.align 8
	.type	pbits.2, @object
	.size	pbits.2, 8
pbits.2:
	.quad	1024
	.align 8
	.type	qbits.1, @object
	.size	qbits.1, 8
qbits.1:
	.quad	160
	.align 8
	.type	groupname.0, @object
	.size	groupname.0, 11
groupname.0:
	.string	"prime256v1"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

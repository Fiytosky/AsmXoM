	.file	"evp_libctx_test.c"
	.text
	.type	ossl_check_OPENSSL_STRING_type, @function
ossl_check_OPENSSL_STRING_type:
.LFB0:
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
.LFE0:
	.size	ossl_check_OPENSSL_STRING_type, .-ossl_check_OPENSSL_STRING_type
	.type	ossl_check_const_OPENSSL_STRING_sk_type, @function
ossl_check_const_OPENSSL_STRING_sk_type:
.LFB1:
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
.LFE1:
	.size	ossl_check_const_OPENSSL_STRING_sk_type, .-ossl_check_const_OPENSSL_STRING_sk_type
	.type	ossl_check_OPENSSL_STRING_sk_type, @function
ossl_check_OPENSSL_STRING_sk_type:
.LFB2:
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
.LFE2:
	.size	ossl_check_OPENSSL_STRING_sk_type, .-ossl_check_OPENSSL_STRING_sk_type
	.type	ossl_check_OPENSSL_STRING_compfunc_type, @function
ossl_check_OPENSSL_STRING_compfunc_type:
.LFB3:
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
.LFE3:
	.size	ossl_check_OPENSSL_STRING_compfunc_type, .-ossl_check_OPENSSL_STRING_compfunc_type
	.type	ossl_check_OPENSSL_STRING_freefunc_type, @function
ossl_check_OPENSSL_STRING_freefunc_type:
.LFB5:
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
.LFE5:
	.size	ossl_check_OPENSSL_STRING_freefunc_type, .-ossl_check_OPENSSL_STRING_freefunc_type
	.local	libctx
	.comm	libctx,8,8
	.local	nullprov
	.comm	nullprov,8,8
	.local	libprov
	.comm	libprov,8,8
	.local	cipher_names
	.comm	cipher_names,8,8
	.local	is_fips
	.comm	is_fips,4,4
	.local	is_fips_lt_3_5
	.comm	is_fips_lt_3_5,4,4
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
	leaq	test_options.6(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC0:
	.string	"p"
.LC1:
	.string	"q"
.LC2:
	.string	"g"
.LC3:
	.string	"?"
	.text
	.type	getname, @function
getname:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, -36(%rbp)
	js	.L14
	cmpl	$2, -36(%rbp)
	jg	.L14
	movl	-36(%rbp), %eax
	cltq
	movq	-32(%rbp,%rax,8), %rax
	jmp	.L16
.L14:
	leaq	.LC3(%rip), %rax
.L16:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	getname, .-getname
	.section	.rodata
.LC4:
	.string	"ctx"
.LC5:
	.string	"../test/evp_libctx_test.c"
.LC6:
	.string	"0"
	.align 8
.LC7:
	.string	"EVP_CIPHER_CTX_get_block_size(ctx)"
	.align 8
.LC8:
	.string	"EVP_CIPHER_CTX_get_iv_length(ctx)"
	.text
	.type	test_evp_cipher_api_safety, @function
test_evp_cipher_api_safety:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$83, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L24
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_block_size@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$90, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L25
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_iv_length@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$97, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L26
	movl	$1, -4(%rbp)
	jmp	.L21
.L25:
	nop
	jmp	.L21
.L26:
	nop
.L21:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	jmp	.L19
.L24:
	nop
.L19:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_evp_cipher_api_safety, .-test_evp_cipher_api_safety
	.section	.rodata
	.align 8
.LC9:
	.string	"Testing with (p, q, g) = (%s, %s, %s)\n"
.LC10:
	.string	"pkey_parm = EVP_PKEY_new()"
.LC11:
	.string	"dsa = DSA_new()"
.LC12:
	.string	"p = BN_dup(bn[pind])"
.LC13:
	.string	"q = BN_dup(bn[qind])"
.LC14:
	.string	"g = BN_dup(bn[gind])"
.LC15:
	.string	"DSA_set0_pqg(dsa, p, q, g)"
	.align 8
.LC16:
	.string	"EVP_PKEY_assign_DSA(pkey_parm, dsa)"
	.align 8
.LC17:
	.string	"gen_ctx = EVP_PKEY_CTX_new_from_pkey(libctx, pkey_parm, NULL)"
.LC18:
	.string	"EVP_PKEY_keygen_init(gen_ctx)"
.LC19:
	.string	"expected"
	.align 8
.LC20:
	.string	"EVP_PKEY_keygen(gen_ctx, &pkey)"
.LC21:
	.string	"dup_pk = EVP_PKEY_dup(pkey)"
.LC22:
	.string	"1"
.LC23:
	.string	"EVP_PKEY_eq(pkey, dup_pk)"
	.text
	.type	test_dsa_param_keygen, @function
test_dsa_param_keygen:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$112, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -116(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$954437177, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	%ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -84(%rbp)
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1431655766, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$31, %eax
	subl	%eax, %edx
	movslq	%edx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, -88(%rbp)
	movl	-116(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movq	%rax, %rcx
	movl	%edx, %eax
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, -92(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.L28
	cmpl	$1, -88(%rbp)
	jne	.L28
	cmpl	$2, -92(%rbp)
	jne	.L28
	movl	$1, %eax
	jmp	.L29
.L28:
	movl	$0, %eax
.L29:
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, %edi
	call	getname
	movq	%rax, %r12
	movl	-88(%rbp), %eax
	movl	%eax, %edi
	call	getname
	movq	%rax, %rbx
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	getname
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	call	EVP_PKEY_new@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$146, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L39
	call	DSA_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$147, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L39
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	bn.5(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$148, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L39
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	bn.5(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$149, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L39
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	bn.5(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$150, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L39
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_set0_pqg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$151, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L39
	movq	$0, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$155, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L40
	movq	$0, -48(%rbp)
	movq	libctx(%rip), %rax
	movq	-80(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$159, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L41
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$160, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L41
	leaq	-104(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	movl	%eax, %esi
	movl	-96(%rbp), %edi
	leaq	.LC19(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$161, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L41
	cmpl	$0, -96(%rbp)
	je	.L36
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_dup@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$165, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L42
	movq	-104(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$166, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L42
.L36:
	movl	$1, -20(%rbp)
	jmp	.L32
.L39:
	nop
	jmp	.L32
.L40:
	nop
	jmp	.L32
.L41:
	nop
	jmp	.L32
.L42:
	nop
.L32:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-20(%rbp), %eax
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_dsa_param_keygen, .-test_dsa_param_keygen
	.section	.rodata
	.align 8
.LC24:
	.string	"Testing with (p, q, g) = (%s, %s, %s)"
.LC25:
	.string	"dh = DH_new()"
.LC26:
	.string	"DH_set0_pqg(dh, p, q, g)"
	.align 8
.LC27:
	.string	"EVP_PKEY_assign_DH(pkey_parm, dh)"
	.text
	.type	do_dh_param_keygen, @function
do_dh_param_keygen:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$112, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -116(%rbp)
	movq	%rsi, -128(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$954437177, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	%ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -84(%rbp)
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1431655766, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$31, %eax
	subl	%eax, %edx
	movslq	%edx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, -88(%rbp)
	movl	-116(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movq	%rax, %rcx
	movl	%edx, %eax
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, -92(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.L44
	cmpl	$1, -88(%rbp)
	jne	.L44
	cmpl	$2, -92(%rbp)
	jne	.L44
	movl	$1, %eax
	jmp	.L45
.L44:
	movl	$0, %eax
.L45:
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, %edi
	call	getname
	movq	%rax, %r12
	movl	-88(%rbp), %eax
	movl	%eax, %edi
	call	getname
	movq	%rax, %rbx
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	getname
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	call	EVP_PKEY_new@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$209, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L55
	call	DH_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$210, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L55
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$211, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L55
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$212, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L55
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$213, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L55
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DH_set0_pqg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$214, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L55
	movq	$0, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	$28, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$218, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L56
	movq	$0, -48(%rbp)
	movq	libctx(%rip), %rax
	movq	-80(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$222, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L57
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$223, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L57
	leaq	-104(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	movl	%eax, %esi
	movl	-96(%rbp), %edi
	leaq	.LC19(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$224, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L57
	cmpl	$0, -96(%rbp)
	je	.L52
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_dup@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$228, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L58
	movq	-104(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$229, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L58
.L52:
	movl	$1, -20(%rbp)
	jmp	.L48
.L55:
	nop
	jmp	.L48
.L56:
	nop
	jmp	.L48
.L57:
	nop
	jmp	.L48
.L58:
	nop
.L48:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-20(%rbp), %eax
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	do_dh_param_keygen, .-do_dh_param_keygen
	.type	test_dh_safeprime_param_keygen, @function
test_dh_safeprime_param_keygen:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	leaq	bn.4(%rip), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	do_dh_param_keygen
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	test_dh_safeprime_param_keygen, .-test_dh_safeprime_param_keygen
	.section	.rodata
	.align 8
.LC28:
	.string	"bio = BIO_new_mem_buf(dhx_cert, sizeof(dhx_cert))"
	.align 8
.LC29:
	.string	"cert = X509_new_ex(libctx, NULL)"
.LC30:
	.string	"d2i_X509_bio(bio, &cert)"
	.text
	.type	dhx_cert_load, @function
dhx_cert_load:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	leaq	dhx_cert.3(%rip), %rax
	movl	$1027, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$334, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L66
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_new_ex@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$335, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L66
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	d2i_X509_bio@PLT
	movq	%rax, %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$336, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L66
	movl	$1, -4(%rbp)
	jmp	.L64
.L66:
	nop
.L64:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	dhx_cert_load, .-dhx_cert_load
	.section	.rodata
.LC31:
	.string	"ctx = EVP_CIPHER_CTX_new()"
.LC32:
	.string	"Fetching %s\n"
	.align 8
.LC33:
	.string	"cipher = EVP_CIPHER_fetch(libctx, name, NULL)"
.LC34:
	.string	"RC4"
.LC35:
	.string	"RC4-40"
.LC36:
	.string	"RC4-HMAC-MD5"
.LC37:
	.string	"DES3-WRAP"
	.align 8
.LC38:
	.string	"EVP_EncryptInit_ex(ctx, cipher, NULL, key, iv)"
	.align 8
.LC39:
	.string	"EVP_EncryptUpdate(ctx, out1, &out1_len, in, sizeof(in))"
	.align 8
.LC40:
	.string	"EVP_EncryptInit_ex(ctx, NULL, NULL, key, iv)"
.LC41:
	.string	"ccm ? 0 : 1"
	.align 8
.LC42:
	.string	"EVP_EncryptUpdate(ctx, out2, &out2_len, in, sizeof(in))"
	.align 8
.LC43:
	.string	"EVP_EncryptInit_ex(ctx, NULL, NULL, NULL, iv)"
.LC44:
	.string	"ccm || siv ? 0 : 1"
	.align 8
.LC45:
	.string	"EVP_EncryptUpdate(ctx, out3, &out3_len, in, sizeof(in))"
.LC46:
	.string	"out2"
.LC47:
	.string	"out1"
.LC48:
	.string	"out3"
	.text
	.type	test_cipher_reinit, @function
test_cipher_reinit:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$952, %rsp
	.cfi_offset 3, -24
	movl	%edi, -948(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movabsq	$578437695752307201, %rax
	movabsq	$1157159078456920585, %rdx
	movq	%rax, -864(%rbp)
	movq	%rdx, -856(%rbp)
	movabsq	$506097522914230528, %rax
	movabsq	$1084818905618843912, %rdx
	movq	%rax, -928(%rbp)
	movq	%rdx, -920(%rbp)
	movabsq	$506097522914230529, %rax
	movabsq	$1084818905618843912, %rdx
	movq	%rax, -912(%rbp)
	movq	%rdx, -904(%rbp)
	movabsq	$506097522914230530, %rax
	movabsq	$1084818905618843912, %rdx
	movq	%rax, -896(%rbp)
	movq	%rdx, -888(%rbp)
	movabsq	$506097522914230531, %rax
	movabsq	$1084818905618843912, %rdx
	movq	%rax, -880(%rbp)
	movq	%rdx, -872(%rbp)
	movabsq	$579005069656919567, %rax
	movabsq	$283686952306183, %rdx
	movq	%rax, -944(%rbp)
	movq	%rdx, -936(%rbp)
	movq	cipher_names(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-948(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$376, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L83
	movq	-48(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	libctx(%rip), %rax
	movq	-48(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$380, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L84
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$7, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$65540, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -56(%rbp)
	leaq	.LC34(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_is_a@PLT
	testl	%eax, %eax
	jne	.L71
	leaq	.LC35(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_is_a@PLT
	testl	%eax, %eax
	jne	.L71
	leaq	.LC36(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_is_a@PLT
	testl	%eax, %eax
	je	.L72
.L71:
	movl	$1, %eax
	jmp	.L73
.L72:
	movl	$0, %eax
.L73:
	movl	%eax, -60(%rbp)
	leaq	.LC37(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_is_a@PLT
	movl	%eax, -64(%rbp)
	leaq	-944(%rbp), %rcx
	leaq	-928(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$400, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L85
	leaq	-864(%rbp), %rcx
	leaq	-68(%rbp), %rdx
	leaq	-336(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$16, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$401, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L85
	leaq	-944(%rbp), %rcx
	leaq	-928(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$402, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L85
	cmpl	$0, -52(%rbp)
	sete	%al
	movzbl	%al, %ebx
	leaq	-864(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	leaq	-592(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$16, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	movl	%eax, %esi
	leaq	.LC41(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$403, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L85
	cmpl	$0, -60(%rbp)
	jne	.L75
	leaq	-944(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC43(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$406, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L85
	cmpl	$0, -52(%rbp)
	jne	.L76
	cmpl	$0, -56(%rbp)
	jne	.L76
	movl	$1, %ebx
	jmp	.L77
.L76:
	movl	$0, %ebx
.L77:
	leaq	-864(%rbp), %rcx
	leaq	-76(%rbp), %rdx
	leaq	-848(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$16, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	movl	%eax, %esi
	leaq	.LC44(%rip), %rcx
	leaq	.LC45(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$407, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L85
.L75:
	cmpl	$0, -52(%rbp)
	jne	.L78
	cmpl	$0, -64(%rbp)
	je	.L79
	movl	-72(%rbp), %eax
	movslq	%eax, %rsi
	movl	-68(%rbp), %eax
	movslq	%eax, %r8
	leaq	-336(%rbp), %rdi
	leaq	.LC46(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC5(%rip), %rax
	pushq	%rsi
	leaq	-592(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$413, %esi
	movq	%rax, %rdi
	call	test_mem_ne@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L86
	movl	-76(%rbp), %eax
	movslq	%eax, %rsi
	movl	-68(%rbp), %eax
	movslq	%eax, %r8
	leaq	-336(%rbp), %rdi
	leaq	.LC48(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC5(%rip), %rax
	pushq	%rsi
	leaq	-848(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$414, %esi
	movq	%rax, %rdi
	call	test_mem_ne@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L86
	movl	-76(%rbp), %eax
	movslq	%eax, %rsi
	movl	-72(%rbp), %eax
	movslq	%eax, %r8
	leaq	-592(%rbp), %rdi
	leaq	.LC48(%rip), %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC5(%rip), %rax
	pushq	%rsi
	leaq	-848(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$415, %esi
	movq	%rax, %rdi
	call	test_mem_ne@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L78
	jmp	.L86
.L79:
	movl	-72(%rbp), %eax
	movslq	%eax, %rsi
	movl	-68(%rbp), %eax
	movslq	%eax, %r8
	leaq	-336(%rbp), %rdi
	leaq	.LC46(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC5(%rip), %rax
	pushq	%rsi
	leaq	-592(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$418, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L87
	cmpl	$0, -56(%rbp)
	jne	.L78
	cmpl	$0, -60(%rbp)
	jne	.L78
	movl	-76(%rbp), %eax
	movslq	%eax, %rsi
	movl	-68(%rbp), %eax
	movslq	%eax, %r8
	leaq	-336(%rbp), %rdi
	leaq	.LC48(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC5(%rip), %rax
	pushq	%rsi
	leaq	-848(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$419, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L87
.L78:
	movl	$1, -20(%rbp)
	jmp	.L69
.L83:
	nop
	jmp	.L69
.L84:
	nop
	jmp	.L69
.L85:
	nop
	jmp	.L69
.L86:
	nop
	jmp	.L69
.L87:
	nop
.L69:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_cipher_reinit, .-test_cipher_reinit
	.section	.rodata
.LC49:
	.string	"in_len"
	.align 8
.LC50:
	.string	"EVP_EncryptUpdate(ctx, out1, &out1_len, in, in_len)"
	.align 8
.LC51:
	.string	"EVP_EncryptUpdate(ctx, out2, &out2_len, in, in_len)"
	.align 8
.LC52:
	.string	"EVP_EncryptUpdate(ctx, out3, &out3_len, in, in_len)"
	.text
	.type	test_cipher_reinit_partialupdate, @function
test_cipher_reinit_partialupdate:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$832, %rsp
	movl	%edi, -820(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	cipher_names(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-820(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$467, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L103
	movq	-32(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	libctx(%rip), %rax
	movq	-32(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$471, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L104
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_block_size@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$475, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L105
	cmpl	$1, -8(%rbp)
	jle	.L93
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -8(%rbp)
.L93:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$4210688, %eax
	testq	%rax, %rax
	jne	.L94
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$7, %eax
	je	.L94
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$65537, %eax
	je	.L94
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$65538, %eax
	jne	.L95
.L94:
	movl	$1, -4(%rbp)
	jmp	.L90
.L95:
	leaq	iv.1(%rip), %rcx
	leaq	key.2(%rip), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$490, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L106
	movl	-8(%rbp), %edi
	leaq	in.0(%rip), %rcx
	leaq	-36(%rbp), %rdx
	leaq	-304(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC50(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$491, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L106
	leaq	iv.1(%rip), %rcx
	leaq	key.2(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$492, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L106
	movl	-8(%rbp), %edi
	leaq	in.0(%rip), %rcx
	leaq	-40(%rbp), %rdx
	leaq	-560(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC51(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$493, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L106
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	testl	%eax, %eax
	je	.L98
	movl	-40(%rbp), %eax
	movslq	%eax, %rsi
	movl	-36(%rbp), %eax
	movslq	%eax, %r8
	leaq	-304(%rbp), %rdi
	leaq	.LC46(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC5(%rip), %rax
	pushq	%rsi
	leaq	-560(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$497, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L107
.L98:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$65540, %eax
	je	.L99
	leaq	iv.1(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC43(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$501, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L108
	movl	-8(%rbp), %edi
	leaq	in.0(%rip), %rcx
	leaq	-44(%rbp), %rdx
	leaq	-816(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC52(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$502, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L108
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	testl	%eax, %eax
	je	.L99
	movl	-44(%rbp), %eax
	movslq	%eax, %rsi
	movl	-36(%rbp), %eax
	movslq	%eax, %r8
	leaq	-304(%rbp), %rdi
	leaq	.LC48(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC5(%rip), %rax
	pushq	%rsi
	leaq	-816(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$506, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L109
.L99:
	movl	$1, -4(%rbp)
	jmp	.L90
.L103:
	nop
	jmp	.L90
.L104:
	nop
	jmp	.L90
.L105:
	nop
	jmp	.L90
.L106:
	nop
	jmp	.L90
.L107:
	nop
	jmp	.L90
.L108:
	nop
	jmp	.L90
.L109:
	nop
.L90:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	test_cipher_reinit_partialupdate, .-test_cipher_reinit_partialupdate
	.type	name_cmp, @function
name_cmp:
.LFB477:
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
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	name_cmp, .-name_cmp
	.type	collect_cipher_names, @function
collect_cipher_names:
.LFB478:
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
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	leaq	.LC5(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$530, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L114
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L114
	leaq	.LC5(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$532, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L114:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	collect_cipher_names, .-collect_cipher_names
	.section	.rodata
.LC53:
	.string	"RSA"
	.align 8
.LC54:
	.string	"*priv = EVP_PKEY_Q_keygen(libctx, NULL, \"RSA\", (size_t)bits)"
.LC55:
	.string	"type-specific"
.LC56:
	.string	"DER"
	.align 8
.LC57:
	.string	"ectx = OSSL_ENCODER_CTX_new_for_pkey(*priv, EVP_PKEY_PUBLIC_KEY, \"DER\", \"type-specific\", NULL)"
	.align 8
.LC58:
	.string	"OSSL_ENCODER_to_data(ectx, &pub_der, &len)"
	.align 8
.LC59:
	.string	"d2i_PublicKey(EVP_PKEY_RSA, pub, &pp, len)"
	.text
	.type	rsa_keygen, @function
rsa_keygen:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	libctx(%rip), %rax
	leaq	.LC53(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	EVP_PKEY_Q_keygen@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC54(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$543, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC55(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	movl	$0, %r8d
	movl	$134, %esi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC57(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$544, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	leaq	-40(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC58(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$549, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L121
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	leaq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$6, %edi
	call	d2i_PublicKey@PLT
	movq	%rax, %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$552, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L122
	movl	$1, -4(%rbp)
	jmp	.L118
.L121:
	nop
	jmp	.L118
.L122:
	nop
.L118:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rcx
	movl	$557, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	rsa_keygen, .-rsa_keygen
	.section	.rodata
.LC60:
	.string	"rsa_keygen(bits, &pub, &priv)"
	.align 8
.LC61:
	.string	"sctx = EVP_PKEY_CTX_new_from_pkey(libctx, pub, NULL)"
	.align 8
.LC62:
	.string	"EVP_PKEY_encapsulate_init(sctx, NULL)"
.LC63:
	.string	"RSASVE"
	.align 8
.LC64:
	.string	"EVP_PKEY_CTX_set_kem_op(sctx, \"RSASVE\")"
.LC65:
	.string	"dctx = EVP_PKEY_CTX_dup(sctx)"
	.align 8
.LC66:
	.string	"EVP_PKEY_encapsulate(dctx, NULL, NULL, NULL, NULL)"
	.align 8
.LC67:
	.string	"EVP_PKEY_encapsulate(dctx, NULL, &ctlen, NULL, &secretlen)"
.LC68:
	.string	"secretlen"
.LC69:
	.string	"ctlen"
.LC70:
	.string	"bits / 8"
	.align 8
.LC71:
	.string	"EVP_PKEY_encapsulate(dctx, ct, &ctlen, secret, &secretlen)"
	.align 8
.LC72:
	.string	"rctx = EVP_PKEY_CTX_new_from_pkey(libctx, priv, NULL)"
	.align 8
.LC73:
	.string	"EVP_PKEY_decapsulate_init(rctx, NULL)"
	.align 8
.LC74:
	.string	"EVP_PKEY_CTX_set_kem_op(rctx, \"RSASVE\")"
	.align 8
.LC75:
	.string	"EVP_PKEY_decapsulate(rctx, NULL, NULL, ct, ctlen)"
	.align 8
.LC76:
	.string	"EVP_PKEY_decapsulate(rctx, NULL, &unwraplen, ct, ctlen)"
	.align 8
.LC77:
	.string	"EVP_PKEY_decapsulate(rctx, unwrap, &unwraplen, ct, ctlen)"
.LC78:
	.string	"secret"
.LC79:
	.string	"unwrap"
.LC80:
	.string	">=3.4.0"
	.text
	.type	kem_rsa_gen_recover, @function
kem_rsa_gen_recover:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$864, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -320(%rbp)
	movq	$0, -312(%rbp)
	movq	$0, -304(%rbp)
	movq	$0, -296(%rbp)
	movq	$0, -288(%rbp)
	movq	$0, -280(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -576(%rbp)
	movq	$0, -568(%rbp)
	movq	$0, -560(%rbp)
	movq	$0, -552(%rbp)
	movq	$0, -544(%rbp)
	movq	$0, -536(%rbp)
	movq	$0, -528(%rbp)
	movq	$0, -520(%rbp)
	movq	$0, -512(%rbp)
	movq	$0, -504(%rbp)
	movq	$0, -496(%rbp)
	movq	$0, -488(%rbp)
	movq	$0, -480(%rbp)
	movq	$0, -472(%rbp)
	movq	$0, -464(%rbp)
	movq	$0, -456(%rbp)
	movq	$0, -448(%rbp)
	movq	$0, -440(%rbp)
	movq	$0, -432(%rbp)
	movq	$0, -424(%rbp)
	movq	$0, -416(%rbp)
	movq	$0, -408(%rbp)
	movq	$0, -400(%rbp)
	movq	$0, -392(%rbp)
	movq	$0, -384(%rbp)
	movq	$0, -376(%rbp)
	movq	$0, -368(%rbp)
	movq	$0, -360(%rbp)
	movq	$0, -352(%rbp)
	movq	$0, -344(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -328(%rbp)
	movq	$0, -832(%rbp)
	movq	$0, -824(%rbp)
	movq	$0, -816(%rbp)
	movq	$0, -808(%rbp)
	movq	$0, -800(%rbp)
	movq	$0, -792(%rbp)
	movq	$0, -784(%rbp)
	movq	$0, -776(%rbp)
	movq	$0, -768(%rbp)
	movq	$0, -760(%rbp)
	movq	$0, -752(%rbp)
	movq	$0, -744(%rbp)
	movq	$0, -736(%rbp)
	movq	$0, -728(%rbp)
	movq	$0, -720(%rbp)
	movq	$0, -712(%rbp)
	movq	$0, -704(%rbp)
	movq	$0, -696(%rbp)
	movq	$0, -688(%rbp)
	movq	$0, -680(%rbp)
	movq	$0, -672(%rbp)
	movq	$0, -664(%rbp)
	movq	$0, -656(%rbp)
	movq	$0, -648(%rbp)
	movq	$0, -640(%rbp)
	movq	$0, -632(%rbp)
	movq	$0, -624(%rbp)
	movq	$0, -616(%rbp)
	movq	$0, -608(%rbp)
	movq	$0, -600(%rbp)
	movq	$0, -592(%rbp)
	movq	$0, -584(%rbp)
	movq	$0, -840(%rbp)
	movq	$0, -848(%rbp)
	movq	$0, -856(%rbp)
	movl	$2048, -36(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movl	-36(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	rsa_keygen
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC60(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$573, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L124
	movq	-48(%rbp), %rcx
	movq	libctx(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC61(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$574, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L124
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC62(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$575, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L124
	leaq	.LC63(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_kem_op@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$576, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L124
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_dup@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$577, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L124
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC66(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$579, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L124
	leaq	-856(%rbp), %rcx
	leaq	-840(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC67(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$580, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L124
	movq	-856(%rbp), %rax
	movl	%eax, %edi
	movq	-840(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC68(%rip), %rcx
	leaq	.LC69(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$582, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L124
	movl	-36(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edi
	movq	-840(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC70(%rip), %rcx
	leaq	.LC69(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$583, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L124
	leaq	-856(%rbp), %rdi
	leaq	-320(%rbp), %rcx
	leaq	-840(%rbp), %rdx
	leaq	-576(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC71(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$584, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L124
	movq	-56(%rbp), %rcx
	movq	libctx(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC72(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$586, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L124
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC73(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$587, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L124
	leaq	.LC63(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_kem_op@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC74(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$588, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L124
	movq	-840(%rbp), %rcx
	leaq	-576(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$590, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L124
	movq	-840(%rbp), %rsi
	leaq	-576(%rbp), %rcx
	leaq	-848(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC76(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$591, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L124
	movq	-840(%rbp), %rdi
	leaq	-576(%rbp), %rcx
	leaq	-848(%rbp), %rdx
	leaq	-832(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$593, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L124
	movq	-856(%rbp), %rsi
	movq	-848(%rbp), %r8
	leaq	-832(%rbp), %rdi
	leaq	.LC78(%rip), %rcx
	leaq	.LC79(%rip), %rdx
	leaq	.LC5(%rip), %rax
	pushq	%rsi
	leaq	-320(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$595, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L124
	movl	$1, %eax
	jmp	.L125
.L124:
	movl	$0, %eax
.L125:
	movl	%eax, -4(%rbp)
	movq	libctx(%rip), %rax
	leaq	.LC80(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fips_provider_version_match@PLT
	testl	%eax, %eax
	je	.L126
	movq	$1, -840(%rbp)
	leaq	-856(%rbp), %rdi
	leaq	-320(%rbp), %rcx
	leaq	-840(%rbp), %rdx
	leaq	-576(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC71(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$600, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L127
	movl	$0, -4(%rbp)
.L127:
	movq	$1, -848(%rbp)
	movq	-840(%rbp), %rdi
	leaq	-576(%rbp), %rcx
	leaq	-848(%rbp), %rdx
	leaq	-832(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$604, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L126
	movl	$0, -4(%rbp)
.L126:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-32(%rbp), %rax
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
.LFE480:
	.size	kem_rsa_gen_recover, .-kem_rsa_gen_recover
	.section	.rodata
.LC81:
	.string	"AES-256-CBC"
	.align 8
.LC82:
	.string	"aes_cipher = EVP_CIPHER_fetch(libctx, \"AES-256-CBC\", NULL)"
	.align 8
.LC83:
	.string	"EVP_CIPHER_get_flags(aes_cipher) & EVP_CIPH_RAND_KEY"
.LC84:
	.string	"DES-EDE3-CBC"
	.align 8
.LC85:
	.string	"tdes_cipher = EVP_CIPHER_fetch(libctx, \"DES-EDE3-CBC\", NULL)"
	.align 8
.LC86:
	.string	"EVP_CIPHER_get_flags(tdes_cipher) & EVP_CIPH_RAND_KEY"
	.align 8
.LC87:
	.string	"EVP_CipherInit_ex(ctx, tdes_cipher, NULL, NULL, NULL, 1)"
	.align 8
.LC88:
	.string	"EVP_CIPHER_CTX_rand_key(ctx, key)"
	.text
	.type	test_cipher_tdes_randkey, @function
test_cipher_tdes_randkey:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	libctx(%rip), %rax
	leaq	.LC81(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC82(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$629, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L130
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$512, %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC83(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$630, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L130
	movq	libctx(%rip), %rax
	leaq	.LC84(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC85(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$631, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L130
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$512, %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC86(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$632, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L130
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$633, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L130
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC87(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$634, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L130
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_rand_key@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$635, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L130
	movl	$1, %eax
	jmp	.L131
.L130:
	movl	$0, %eax
.L131:
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	test_cipher_tdes_randkey, .-test_cipher_tdes_randkey
	.section	.rodata
.LC89:
	.string	"rsa_keygen(2048, &pub, &priv)"
	.align 8
.LC90:
	.string	"pubctx = EVP_PKEY_CTX_new_from_pkey(libctx, pub, NULL)"
	.align 8
.LC91:
	.string	"privctx = EVP_PKEY_CTX_new_from_pkey(libctx, priv, NULL)"
.LC92:
	.string	"-2"
	.align 8
.LC93:
	.string	"EVP_PKEY_CTX_set_kem_op(pubctx, \"RSASVE\")"
	.align 8
.LC94:
	.string	"EVP_PKEY_encapsulate_init(NULL, NULL)"
	.align 8
.LC95:
	.string	"EVP_PKEY_encapsulate(NULL, NULL, NULL, NULL, NULL)"
	.align 8
.LC96:
	.string	"EVP_PKEY_decapsulate_init(NULL, NULL)"
	.align 8
.LC97:
	.string	"EVP_PKEY_decapsulate(NULL, NULL, NULL, NULL, 0)"
.LC98:
	.string	"-1"
	.align 8
.LC99:
	.string	"EVP_PKEY_encapsulate(pubctx, NULL, NULL, NULL, NULL)"
	.align 8
.LC100:
	.string	"EVP_PKEY_decapsulate(privctx, NULL, NULL, NULL, 0)"
	.align 8
.LC101:
	.string	"EVP_PKEY_decapsulate_init(pubctx, NULL)"
	.align 8
.LC102:
	.string	"EVP_PKEY_decapsulate(pubctx, secret, &secretlen, ct, sizeof(ct))"
.LC103:
	.string	"secret[0]"
	.align 8
.LC104:
	.string	"EVP_PKEY_encapsulate_init(pubctx, NULL)"
	.align 8
.LC105:
	.string	"EVP_PKEY_encapsulate(pubctx, ct, &ctlen, secret, &secretlen)"
	.align 8
.LC106:
	.string	"EVP_PKEY_CTX_set_kem_op(pubctx, \"RSA\")"
	.align 8
.LC107:
	.string	"EVP_PKEY_CTX_set_kem_op(pubctx, NULL)"
	.align 8
.LC108:
	.string	"EVP_PKEY_CTX_set_kem_op(NULL, \"RSASVE\")"
	.align 8
.LC109:
	.string	"EVP_PKEY_CTX_set_kem_op(NULL, NULL)"
	.align 8
.LC110:
	.string	"EVP_PKEY_encapsulate(pubctx, NULL, &ctlen, NULL, NULL)"
	.align 8
.LC111:
	.string	"EVP_PKEY_encapsulate(pubctx, ct, &ctlen, secret, NULL)"
	.align 8
.LC112:
	.string	"EVP_PKEY_encapsulate(pubctx, NULL, NULL, NULL, &secretlen)"
	.align 8
.LC113:
	.string	"EVP_PKEY_encapsulate(pubctx, ct, NULL, secret, &secretlen)"
	.align 8
.LC114:
	.string	"EVP_PKEY_encapsulate(pubctx, NULL, &ctlen, NULL, &secretlen)"
	.align 8
.LC115:
	.string	"EVP_PKEY_encapsulate(pubctx, ct, &ctlen, NULL, NULL)"
	.align 8
.LC116:
	.string	"EVP_PKEY_encapsulate(pubctx, ct, NULL, secret, NULL)"
	.align 8
.LC117:
	.string	"EVP_PKEY_decapsulate_init(privctx, NULL)"
	.align 8
.LC118:
	.string	"EVP_PKEY_CTX_set_kem_op(privctx, \"RSASVE\")"
	.align 8
.LC119:
	.string	"EVP_PKEY_decapsulate(privctx, secret, NULL, ct, sizeof(ct))"
	.align 8
.LC120:
	.string	"EVP_PKEY_decapsulate(privctx, NULL, &secretlen, ct, sizeof(ct))"
.LC121:
	.string	"256"
	.align 8
.LC122:
	.string	"EVP_PKEY_decapsulate(privctx, NULL, NULL, ct, sizeof(ct))"
	.align 8
.LC123:
	.string	"EVP_PKEY_decapsulate(privctx, secret, &secretlen, NULL, 0)"
	.align 8
.LC124:
	.string	"EVP_PKEY_decapsulate(privctx, secret, &secretlen, NULL, sizeof(ct))"
	.align 8
.LC125:
	.string	"EVP_PKEY_decapsulate(privctx, secret, &secretlen, ct, 0)"
	.text
	.type	kem_rsa_params, @function
kem_rsa_params:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$576, %rsp
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -304(%rbp)
	movq	$0, -296(%rbp)
	movq	$0, -288(%rbp)
	movq	$0, -280(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -560(%rbp)
	movq	$0, -552(%rbp)
	movq	$0, -544(%rbp)
	movq	$0, -536(%rbp)
	movq	$0, -528(%rbp)
	movq	$0, -520(%rbp)
	movq	$0, -512(%rbp)
	movq	$0, -504(%rbp)
	movq	$0, -496(%rbp)
	movq	$0, -488(%rbp)
	movq	$0, -480(%rbp)
	movq	$0, -472(%rbp)
	movq	$0, -464(%rbp)
	movq	$0, -456(%rbp)
	movq	$0, -448(%rbp)
	movq	$0, -440(%rbp)
	movq	$0, -432(%rbp)
	movq	$0, -424(%rbp)
	movq	$0, -416(%rbp)
	movq	$0, -408(%rbp)
	movq	$0, -400(%rbp)
	movq	$0, -392(%rbp)
	movq	$0, -384(%rbp)
	movq	$0, -376(%rbp)
	movq	$0, -368(%rbp)
	movq	$0, -360(%rbp)
	movq	$0, -352(%rbp)
	movq	$0, -344(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -328(%rbp)
	movq	$0, -320(%rbp)
	movq	$0, -312(%rbp)
	movq	$0, -568(%rbp)
	movq	$0, -576(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$2048, %edi
	call	rsa_keygen
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC89(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$654, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L134
	movq	-32(%rbp), %rcx
	movq	libctx(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC90(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$655, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L134
	movq	-40(%rbp), %rcx
	movq	libctx(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC91(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$656, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L134
	leaq	.LC63(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_kem_op@PLT
	movl	%eax, %esi
	leaq	.LC92(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$-2, %r9d
	movl	%esi, %r8d
	movl	$658, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	movl	$0, %esi
	movl	$0, %edi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC94(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$660, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$661, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	movl	$0, %esi
	movl	$0, %edi
	call	EVP_PKEY_decapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC96(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$662, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC97(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$663, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC98(%rip), %rcx
	leaq	.LC99(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$665, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC100(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$666, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC101(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$668, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	.LC63(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_kem_op@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$669, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-560(%rbp), %rcx
	leaq	-576(%rbp), %rdx
	leaq	-304(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$256, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC102(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$670, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	movzbl	-304(%rbp), %eax
	movzbl	%al, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC103(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$672, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	je	.L134
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC104(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$674, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	movl	is_fips_lt_3_5(%rip), %eax
	testl	%eax, %eax
	je	.L135
	leaq	-576(%rbp), %rdi
	leaq	-304(%rbp), %rcx
	leaq	-568(%rbp), %rdx
	leaq	-560(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC92(%rip), %rcx
	leaq	.LC105(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$-2, %r9d
	movl	%esi, %r8d
	movl	$676, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
.L135:
	leaq	.LC53(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_kem_op@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC106(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$678, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_kem_op@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC107(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$679, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	.LC63(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_set_kem_op@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC108(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$680, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	movl	$0, %esi
	movl	$0, %edi
	call	EVP_PKEY_CTX_set_kem_op@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC109(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$681, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	.LC63(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_kem_op@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$683, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-568(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC110(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$684, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-304(%rbp), %rcx
	leaq	-568(%rbp), %rdx
	leaq	-560(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC111(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$685, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-568(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC110(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$686, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-576(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC112(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$688, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-576(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	leaq	-560(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC113(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$689, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC99(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$691, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-568(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC110(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$692, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-576(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC112(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$693, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-576(%rbp), %rcx
	leaq	-568(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC114(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$694, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-568(%rbp), %rdx
	leaq	-560(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC115(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$696, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-304(%rbp), %rdx
	leaq	-560(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC116(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$698, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC117(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$700, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	.LC63(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_kem_op@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC118(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$701, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-560(%rbp), %rdx
	leaq	-304(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$256, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC119(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$702, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-560(%rbp), %rcx
	leaq	-576(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$256, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC120(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$703, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	movq	-576(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC121(%rip), %rcx
	leaq	.LC68(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$256, %r9d
	movl	%esi, %r8d
	movl	$704, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-560(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$256, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC122(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$706, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-576(%rbp), %rdx
	leaq	-304(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC123(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$707, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-576(%rbp), %rdx
	leaq	-304(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$256, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC124(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$708, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-560(%rbp), %rcx
	leaq	-576(%rbp), %rdx
	leaq	-304(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC125(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$709, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L134
	movl	$1, %eax
	jmp	.L136
.L134:
	movl	$0, %eax
.L136:
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-40(%rbp), %rax
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
.LFE482:
	.size	kem_rsa_params, .-kem_rsa_params
	.section	.rodata
.LC126:
	.string	"ffdhe2048"
.LC127:
	.string	"group"
.LC128:
	.string	"DH"
	.align 8
.LC129:
	.string	"gctx = EVP_PKEY_CTX_new_from_name(libctx, \"DH\", NULL)"
.LC130:
	.string	"EVP_PKEY_keygen_init(gctx)"
	.align 8
.LC131:
	.string	"EVP_PKEY_CTX_set_params(gctx, params)"
.LC132:
	.string	"EVP_PKEY_keygen(gctx, &pkey)"
	.text
	.type	gen_dh_key, @function
gen_dh_key:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	leaq	-144(%rbp), %rax
	leaq	.LC126(%rip), %rdx
	leaq	.LC127(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	libctx(%rip), %rax
	leaq	.LC128(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC129(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$728, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L142
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC130(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$729, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L142
	leaq	-96(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC131(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$730, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L142
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC132(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$731, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jmp	.L140
.L142:
	nop
.L140:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	gen_dh_key, .-gen_dh_key
	.section	.rodata
.LC133:
	.string	"key = gen_dh_key()"
	.align 8
.LC134:
	.string	"sctx = EVP_PKEY_CTX_new_from_pkey(libctx, key, NULL)"
	.text
	.type	kem_invalid_keytype, @function
kem_invalid_keytype:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	call	gen_dh_key
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC133(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$745, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L149
	movq	libctx(%rip), %rax
	movq	-24(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC134(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$748, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L150
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC92(%rip), %rcx
	leaq	.LC62(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$-2, %r9d
	movl	%esi, %r8d
	movl	$750, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L151
	movl	$1, -4(%rbp)
	jmp	.L145
.L149:
	nop
	jmp	.L145
.L150:
	nop
	jmp	.L145
.L151:
	nop
.L145:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	kem_invalid_keytype, .-kem_invalid_keytype
	.section	.rodata
.LC135:
	.string	"default"
.LC136:
	.string	"test_evp_cipher_api_safety"
.LC137:
	.string	"fips"
.LC138:
	.string	"test_dsa_param_keygen"
	.align 8
.LC139:
	.string	"test_dh_safeprime_param_keygen"
.LC140:
	.string	"dhx_cert_load"
	.align 8
.LC141:
	.string	"cipher_names = sk_OPENSSL_STRING_new(name_cmp)"
.LC142:
	.string	"test_cipher_reinit"
	.align 8
.LC143:
	.string	"test_cipher_reinit_partialupdate"
.LC144:
	.string	"kem_rsa_gen_recover"
.LC145:
	.string	"kem_rsa_params"
.LC146:
	.string	"kem_invalid_keytype"
.LC147:
	.string	"test_cipher_tdes_randkey"
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
	subq	$32, %rsp
	leaq	.LC135(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L153
.L158:
	cmpl	$505, -20(%rbp)
	jg	.L154
	cmpl	$500, -20(%rbp)
	jge	.L153
	cmpl	$1, -20(%rbp)
	je	.L156
	cmpl	$2, -20(%rbp)
	jne	.L154
	call	opt_arg@PLT
	movq	%rax, -8(%rbp)
	jmp	.L153
.L156:
	call	opt_arg@PLT
	movq	%rax, -16(%rbp)
	jmp	.L153
.L154:
	movl	$0, %eax
	jmp	.L157
.L153:
	call	opt_next@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L158
	movq	-8(%rbp), %rcx
	leaq	libprov(%rip), %rdx
	movq	-16(%rbp), %rax
	leaq	nullprov(%rip), %rsi
	leaq	libctx(%rip), %rdi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	test_get_libctx@PLT
	testl	%eax, %eax
	jne	.L159
	movl	$0, %eax
	jmp	.L157
.L159:
	leaq	test_evp_cipher_api_safety(%rip), %rdx
	leaq	.LC136(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	.LC137(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L160
	movl	$1, is_fips(%rip)
.L160:
	movl	is_fips(%rip), %eax
	testl	%eax, %eax
	je	.L161
	movq	libctx(%rip), %rax
	movl	$0, %ecx
	movl	$5, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	fips_provider_version_lt@PLT
	testl	%eax, %eax
	je	.L161
	movl	$1, %eax
	jmp	.L162
.L161:
	movl	$0, %eax
.L162:
	movl	%eax, is_fips_lt_3_5(%rip)
	movl	is_fips(%rip), %eax
	testl	%eax, %eax
	je	.L163
	movq	libctx(%rip), %rax
	movl	$0, %ecx
	movl	$4, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	fips_provider_version_lt@PLT
	testl	%eax, %eax
	je	.L164
.L163:
	leaq	test_dsa_param_keygen(%rip), %rsi
	leaq	.LC138(%rip), %rax
	movl	$1, %ecx
	movl	$27, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
.L164:
	leaq	test_dh_safeprime_param_keygen(%rip), %rsi
	leaq	.LC139(%rip), %rax
	movl	$1, %ecx
	movl	$27, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	dhx_cert_load(%rip), %rdx
	leaq	.LC140(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	name_cmp(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	%rax, cipher_names(%rip)
	movq	cipher_names(%rip), %rax
	leaq	.LC141(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$802, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L165
	movl	$0, %eax
	jmp	.L157
.L165:
	movq	cipher_names(%rip), %rdx
	movq	libctx(%rip), %rax
	leaq	collect_cipher_names(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_do_all_provided@PLT
	movq	cipher_names(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %edx
	leaq	test_cipher_reinit(%rip), %rsi
	leaq	.LC142(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movq	cipher_names(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %edx
	leaq	test_cipher_reinit_partialupdate(%rip), %rsi
	leaq	.LC143(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	kem_rsa_gen_recover(%rip), %rdx
	leaq	.LC144(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	kem_rsa_params(%rip), %rdx
	leaq	.LC145(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	kem_invalid_keytype(%rip), %rdx
	leaq	.LC146(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cipher_tdes_randkey(%rip), %rdx
	leaq	.LC147(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	setup_tests, .-setup_tests
	.type	string_free, @function
string_free:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC5(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$823, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	string_free, .-string_free
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	leaq	string_free(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_freefunc_type
	movq	%rax, %rbx
	movq	cipher_names(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	libprov(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	libctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movq	nullprov(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
.LC148:
	.string	"Usage: %s [options]\n"
.LC149:
	.string	"Valid options are:\n"
.LC150:
	.string	"help"
.LC151:
	.string	"Display this summary"
.LC152:
	.string	"list"
	.align 8
.LC153:
	.string	"Display the list of tests available"
.LC154:
	.string	"test"
	.align 8
.LC155:
	.string	"Run a single test by id or name"
.LC156:
	.string	"iter"
	.align 8
.LC157:
	.string	"Run a single iteration of a test"
.LC158:
	.string	"indent"
	.align 8
.LC159:
	.string	"Number of tabs added to output"
.LC160:
	.string	"seed"
	.align 8
.LC161:
	.string	"Seed value to randomize tests with"
.LC162:
	.string	"config"
	.align 8
.LC163:
	.string	"The configuration file to use for the libctx"
.LC164:
	.string	"provider"
	.align 8
.LC165:
	.string	"The provider to load (The default value is 'default')"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	test_options.6, @object
	.size	test_options.6, 264
test_options.6:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC148
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC149
	.quad	.LC150
	.long	500
	.long	45
	.quad	.LC151
	.quad	.LC152
	.long	501
	.long	45
	.quad	.LC153
	.quad	.LC154
	.long	502
	.long	115
	.quad	.LC155
	.quad	.LC156
	.long	503
	.long	110
	.quad	.LC157
	.quad	.LC158
	.long	504
	.long	112
	.quad	.LC159
	.quad	.LC160
	.long	505
	.long	110
	.quad	.LC161
	.quad	.LC162
	.long	1
	.long	60
	.quad	.LC163
	.quad	.LC164
	.long	2
	.long	115
	.quad	.LC165
	.quad	0
	.zero	16
	.section	.data.rel,"aw"
	.align 16
	.type	bn.5, @object
	.size	bn.5, 24
bn.5:
	.quad	ossl_bignum_dh2048_256_p
	.quad	ossl_bignum_dh2048_256_q
	.quad	ossl_bignum_dh2048_256_g
	.align 16
	.type	bn.4, @object
	.size	bn.4, 24
bn.4:
	.quad	ossl_bignum_ffdhe2048_p
	.quad	ossl_bignum_ffdhe2048_q
	.quad	ossl_bignum_const_2
	.section	.rodata
	.align 32
	.type	dhx_cert.3, @object
	.size	dhx_cert.3, 1027
dhx_cert.3:
	.base64	"MIID/zCCAuegAwIBAgIJANv1TSKgememMA0GCSqGSIb3DQEBBQUAMEQxCzAJBgNVBAYTAlVLMRYwFAYDVQQKDA1PcGVuU1NMIEdyb3VwMR0wGwYDVQQDDBRUZXN0IFMvTUlNRSBSU0EgUm9vdDAeFw0xMzA4MDIxNDQ5MjlaFw0yMzA2MTExNDQ5MjlaMEQxCzAJBgNVBAYTAlVLMRYwFAYDVQQKDA1PcGVuU1NMIEdyb3VwMR0wGwYDVQQDDBRUZXN0IFMvTUlNRSBFRSBESCAjMTCCAbYwggErBgcqhkjOPgIBMIIBHgKBgQDUDEoMBHJxGd9ZGcWvRH/Kjivw"
	.base64	"CfXTJbFzFlWJ3/0HrxnTf9AHov4/WvEBxvgr705tAzhCoTfUFLQASrGGWoPOuQgOwZknR40LhaiC7cwNubAyft/o5Pb27LPuehE0ZZf8GrCVSxm5phzZATL3NXwtXf7BhXBJ+MyZ0L7xWnjIAwKBgGkA/Wby/BWLCbjcTeqqeVX530amL8otj1kqrUSjxhgvlbYWIOPT0Y8DznF87zrHRDkO4h/Y04kr51HcEkhMGE2ZEgbkFwIDjCQFjqaF8mkb4Wrc4gQ6AZ1kvv5F+UQYcb0tPnpvcn0agEJXrhhvkdZhA4ociXPHVkED0/jtZeKFAhUAiZSrEGdFQa1jxnFA"
	.base64	"jWueGVukx/UDgYQAAoGAL1vecgI2awBeJH8ULBhSQpdL224VUDxFPiXzt8Vu5VLnxPv0pfA5En+8VByTuV7u6RSw3/78NuTyr/sTyN8YlB1AuXHdTJynA1ICte1xgD4j2ijlq+dv8goOAFt9xkvXx7LDumJ/cCignXETcNGfMi8+0s0bpMZyoHRdce8DQ26jYDBeMAwGA1UdEwEB/wQCMAAwDgYDVR0PAQH/BAQDAgXgMB0GA1UdDgQWBBQLWk1ffSXH8p3Bqrdjgi/6jzLnwDAfBgNVHSMEGDAWgBTffl6IBSQzCN0igQKXzJq3sTMnMDANBgkqhkiG9w0BAQUF"
	.base64	"AAOCAQEAWvJj79MW1/Wq3RIANgAhonsI1jufYqxTH+1M0RU0ZXHulgem77Le2Ls1bizi0SbvfpTiiFGkbKonKtO2wvfqwwuptSg3omMI5IjAGxYbyv2KBzIpp1O1LTDk9RbD48JMMF01gByi2+NLUQ1MYF+5RqyoRqcyp5x2+Om1GeIM4Q/GRuI4p4dybWy8iC+dLeXQfR7HXfh+tAum+WzjfLJwbnWbHmPhTbKB01U4lBp6+r8BGHAtNdPjEHqap4/zvVZVXti9ThZ20EhM+VFU3y2wyapeQjhQvw/A2YRES0Ik7BSj3hHfWH/CTbLVQnhuUj6tw18ExOYxqoEG"
	.base64	"ixNLPA5qsQ=="
	.align 32
	.type	key.2, @object
	.size	key.2, 64
key.2:
	.base64	"AAECAwQFBgcICQoLDA0ODwEBAgMEBQYHCAkKCwwNDg8CAQIDBAUGBwgJCgsMDQ4PAwECAwQFBgcICQoLDA0ODw=="
	.align 16
	.type	iv.1, @object
	.size	iv.1, 16
iv.1:
	.base64	"Dw4NDAsKCQgHBgUEAwIBAA=="
	.align 32
	.type	in.0, @object
	.size	in.0, 32
in.0:
	.base64	"CAkKCwwNDg+6vrq+AAC6vgEBAgMEBQYHCAkKCwwNDg8="
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

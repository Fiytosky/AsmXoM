	.file	"dsa_no_digest_size_test.c"
	.text
	.local	dsakey
	.comm	dsakey,8,8
	.type	load_dsa_params, @function
load_dsa_params:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	call	DSA_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	leaq	dsag_2048.2(%rip), %rax
	movl	$0, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -16(%rbp)
	leaq	dsaq_2048.1(%rip), %rax
	movl	$0, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -24(%rbp)
	leaq	dsap_2048.0(%rip), %rax
	movl	$0, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_set0_pqg@PLT
	testl	%eax, %eax
	jne	.L4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	$0, %eax
	jmp	.L3
.L4:
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	load_dsa_params, .-load_dsa_params
	.section	.rodata
.LC0:
	.string	"dsakey = load_dsa_params()"
	.align 8
.LC1:
	.string	"../test/dsa_no_digest_size_test.c"
.LC2:
	.string	"1"
.LC3:
	.string	"DSA_generate_key(dsakey)"
	.text
	.type	genkeys, @function
genkeys:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	load_dsa_params
	movq	%rax, dsakey(%rip)
	movq	dsakey(%rip), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$117, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	dsakey(%rip), %rax
	movq	%rax, %rdi
	call	DSA_generate_key@PLT
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$120, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L7
.L8:
	movl	$1, %eax
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	genkeys, .-genkeys
	.section	.rodata
.LC4:
	.string	"dataToSign"
.LC5:
	.string	"paddedData"
.LC6:
	.string	"RAND_bytes(dataToSign, len)"
.LC7:
	.string	"pkey = EVP_PKEY_new()"
	.align 8
.LC8:
	.string	"ctx = EVP_PKEY_CTX_new(pkey, NULL)"
.LC9:
	.string	"EVP_PKEY_sign_init(ctx)"
	.align 8
.LC10:
	.string	"Failed to get signature length, len=%d"
	.align 8
.LC11:
	.string	"signature = OPENSSL_malloc(sigLength)"
.LC12:
	.string	"Failed to sign, len=%d"
.LC13:
	.string	"EVP_PKEY_verify_init(ctx)"
	.align 8
.LC14:
	.string	"EVP verify with unpadded length %d failed\n"
	.align 8
.LC15:
	.string	"EVP verify with length %d failed\n"
	.align 8
.LC16:
	.string	"Verification with unpadded data failed, len=%d"
.LC17:
	.string	"verify with length %d failed\n"
	.text
	.type	sign_and_verify, @function
sign_and_verify:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	dsakey(%rip), %rax
	movq	%rax, %rdi
	call	DSA_get0_q@PLT
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -36(%rbp)
	movl	$0, -4(%rbp)
	movl	-68(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$137, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$138, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -56(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$143, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L27
	movq	-56(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$144, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L27
	movl	-68(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$145, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L27
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-68(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.L13
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L14
.L13:
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movl	-68(%rbp), %eax
	cltq
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L14:
	call	EVP_PKEY_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$154, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L28
	movq	dsakey(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set1_DSA@PLT
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$158, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L29
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_sign_init@PLT
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$160, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L30
	movl	-68(%rbp), %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	cmpl	$1, %eax
	je	.L18
	movl	-68(%rbp), %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$164, %esi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L12
.L18:
	movq	-64(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$168, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$168, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L31
	movl	-68(%rbp), %eax
	movslq	%eax, %rdi
	movq	-48(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	cmpl	$1, %eax
	je	.L20
	movl	-68(%rbp), %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$172, %esi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L12
.L20:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_verify_init@PLT
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$177, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L32
	movl	-68(%rbp), %eax
	movslq	%eax, %rdi
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_verify@PLT
	cmpl	$1, %eax
	je	.L22
	movl	-68(%rbp), %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$182, %esi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L12
.L22:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdi
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_verify@PLT
	cmpl	$1, %eax
	je	.L23
	movl	-68(%rbp), %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$188, %esi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L12
.L23:
	movq	dsakey(%rip), %rsi
	movq	-64(%rbp), %rax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movl	-68(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	%rsi, %r9
	movl	%edi, %r8d
	movq	%rax, %rsi
	movl	$0, %edi
	call	DSA_verify@PLT
	cmpl	$1, %eax
	je	.L24
	movl	-68(%rbp), %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$194, %esi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L12
.L24:
	movq	dsakey(%rip), %rsi
	movq	-64(%rbp), %rax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	%rsi, %r9
	movl	%edi, %r8d
	movq	%rax, %rsi
	movl	$0, %edi
	call	DSA_verify@PLT
	cmpl	$1, %eax
	je	.L25
	movl	-68(%rbp), %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$199, %esi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L12
.L25:
	movl	$1, -4(%rbp)
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
	jmp	.L12
.L31:
	nop
	jmp	.L12
.L32:
	nop
.L12:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$208, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$209, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$210, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	sign_and_verify, .-sign_and_verify
	.type	dsa_exact_size_test, @function
dsa_exact_size_test:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$28, %edi
	call	sign_and_verify
	testl	%eax, %eax
	je	.L34
	movl	$32, %edi
	call	sign_and_verify
	testl	%eax, %eax
	je	.L34
	movl	$1, %eax
	jmp	.L36
.L34:
	movl	$0, %eax
.L36:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	dsa_exact_size_test, .-dsa_exact_size_test
	.type	dsa_small_digest_test, @function
dsa_small_digest_test:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$16, %edi
	call	sign_and_verify
	testl	%eax, %eax
	je	.L38
	movl	$1, %edi
	call	sign_and_verify
	testl	%eax, %eax
	je	.L38
	movl	$1, %eax
	jmp	.L40
.L38:
	movl	$0, %eax
.L40:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	dsa_small_digest_test, .-dsa_small_digest_test
	.type	dsa_large_digest_test, @function
dsa_large_digest_test:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$33, %edi
	call	sign_and_verify
	testl	%eax, %eax
	je	.L42
	movl	$64, %edi
	call	sign_and_verify
	testl	%eax, %eax
	je	.L42
	movl	$1, %eax
	jmp	.L44
.L42:
	movl	$0, %eax
.L44:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	dsa_large_digest_test, .-dsa_large_digest_test
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	dsakey(%rip), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
.LC18:
	.string	"dsa_exact_size_test"
.LC19:
	.string	"dsa_small_digest_test"
.LC20:
	.string	"dsa_large_digest_test"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	genkeys
	testl	%eax, %eax
	jne	.L47
	movl	$0, %eax
	jmp	.L48
.L47:
	leaq	dsa_exact_size_test(%rip), %rdx
	leaq	.LC18(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	dsa_small_digest_test(%rip), %rdx
	leaq	.LC19(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	dsa_large_digest_test(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L48:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	setup_tests, .-setup_tests
	.data
	.align 32
	.type	dsag_2048.2, @object
	.size	dsag_2048.2, 256
dsag_2048.2:
	.base64	"Zm/aY6WO0kzVRS12XV/NSrQaQjWGOm+p+ier3gMhNgoHKckvbUmo98b0ktdzwdh2DmGnC26WuMjLODUSIHmlCCg1XLxSFq9Sug/DsWMSJwt0pEdD1jC4nC5AFM2Zf+iON7CpP1TpZiJhTPhJA1cUMh03PeKS+I6gamZj8LBuBys9v9CEaqofMHdl5fz17FXOc9u+p406n3rtT6+igEwwnihJZUDwA0VWmaKTG5xG3r2oq1+QP7c/1G+NWjDh1GM6anyPJPzZFCgJ5IROF0NWuNRLoilF0xPwwnabAaCAbpNjXockICr/u5+omWynmgC5fdpmycByciIPGswj2bdf"
	.ascii	"\033"
	.align 32
	.type	dsaq_2048.1, @object
	.size	dsaq_2048.1, 32
dsaq_2048.1:
	.base64	"rS1uF7Dz68e47pV48hf1MwFnvN6T/+5A6H/xk21LhxM="
	.align 32
	.type	dsap_2048.0, @object
	.size	dsap_2048.0, 256
dsap_2048.0:
	.base64	"rjV9Th2W4p8AlmBabk0HjaV8vPmt15/V6e6mM1Hee3LSdapxd/Fj+7bsWroNcqIaHGS45YkJbclvC3/Szp/vh1q2Zy/v7utZ9V7/qCiEnls3CRGAfAhc1eFIS9Jo+z+fK2tsDUgbGoDC6xEbN3nWjItyPmelBQ5Bip41ULTSQCdr/eBka1s4QpS1Sdrvbng3zTCJw0VQe5yM5xyYcHFdeV/v6JSFUz7voyzOGqt91l4UzVFUiZ135Pgi8DUQdQVxUU+MTFwNLCy+bDTuEoKHAxkGEqiq9A08ScxwWtgy7jJQhXDoGP10gFMyV+5Qya7rrrYiMhZrjFna7h0z30yi"
	.ascii	"="
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"evp_kdf_test.c"
	.text
	.type	get_kdfbyname_libctx, @function
get_kdfbyname_libctx:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_fetch@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	get_kdfbyname_libctx, .-get_kdfbyname_libctx
	.type	get_kdfbyname, @function
get_kdfbyname:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	get_kdfbyname_libctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	get_kdfbyname, .-get_kdfbyname
	.section	.rodata
.LC0:
	.string	"../test/evp_kdf_test.c"
.LC1:
	.string	"digest"
.LC2:
	.string	"secret"
.LC3:
	.string	"seed"
	.text
	.type	construct_tls1_prf_params, @function
construct_tls1_prf_params:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$40, %edx
	movq	%rax, %rsi
	movl	$160, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-112(%rbp), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-112(%rbp), %rax
	movq	-48(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-112(%rbp), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rax
.L7:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	construct_tls1_prf_params, .-construct_tls1_prf_params
	.section	.rodata
.LC4:
	.string	"sha256"
.LC5:
	.string	"params"
.LC6:
	.string	"TLS1-PRF"
	.align 8
.LC7:
	.string	"kctx = get_kdfbyname(OSSL_KDF_NAME_TLS1_PRF)"
.LC8:
	.string	"0"
	.align 8
.LC9:
	.string	"EVP_KDF_derive(kctx, out, sizeof(out), params)"
.LC10:
	.string	"expected"
.LC11:
	.string	"out"
	.text
	.type	test_kdf_tls1_prf, @function
test_kdf_tls1_prf:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rcx
	leaq	.LC4(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	construct_tls1_prf_params
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$72, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L9
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$73, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L9
	movq	-16(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$74, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L9
	leaq	-48(%rbp), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$16
	leaq	expected.58(%rip), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$75, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L9
	movl	$1, %eax
	jmp	.L10
.L9:
	movl	$0, %eax
.L10:
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$78, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_kdf_tls1_prf, .-test_kdf_tls1_prf
	.section	.rodata
.LC12:
	.string	"blah"
	.align 8
.LC13:
	.string	"EVP_KDF_CTX_set_params(kctx, params)"
	.text
	.type	test_kdf_tls1_prf_invalid_digest, @function
test_kdf_tls1_prf_invalid_digest:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rcx
	leaq	.LC12(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	construct_tls1_prf_params
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$90, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L13
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$91, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L13
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$92, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L13
	movl	$1, %eax
	jmp	.L14
.L13:
	movl	$0, %eax
.L14:
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$95, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_kdf_tls1_prf_invalid_digest, .-test_kdf_tls1_prf_invalid_digest
	.section	.rodata
	.align 8
.LC14:
	.string	"EVP_KDF_derive(kctx, out, 0, NULL)"
	.text
	.type	test_kdf_tls1_prf_zero_output_size, @function
test_kdf_tls1_prf_zero_output_size:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rcx
	leaq	.LC4(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	construct_tls1_prf_params
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$109, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L17
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$110, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L17
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$111, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L17
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$112, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L17
	movl	$1, %eax
	jmp	.L18
.L17:
	movl	$0, %eax
.L18:
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$115, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	test_kdf_tls1_prf_zero_output_size, .-test_kdf_tls1_prf_zero_output_size
	.section	.rodata
.LC15:
	.string	""
	.text
	.type	test_kdf_tls1_prf_empty_secret, @function
test_kdf_tls1_prf_empty_secret:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	leaq	.LC3(%rip), %rdx
	leaq	.LC15(%rip), %rcx
	leaq	.LC4(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	construct_tls1_prf_params
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$128, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L21
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$129, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L21
	movq	-16(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$130, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L21
	movl	$1, %eax
	jmp	.L22
.L21:
	movl	$0, %eax
.L22:
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$133, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_kdf_tls1_prf_empty_secret, .-test_kdf_tls1_prf_empty_secret
	.section	.rodata
.LC16:
	.string	"1"
	.text
	.type	test_kdf_tls1_prf_1byte_secret, @function
test_kdf_tls1_prf_1byte_secret:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	leaq	.LC3(%rip), %rdx
	leaq	.LC16(%rip), %rcx
	leaq	.LC4(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	construct_tls1_prf_params
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$146, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L25
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$147, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L25
	movq	-16(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$148, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L25
	movl	$1, %eax
	jmp	.L26
.L25:
	movl	$0, %eax
.L26:
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$151, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_kdf_tls1_prf_1byte_secret, .-test_kdf_tls1_prf_1byte_secret
	.section	.rodata
	.align 8
.LC17:
	.string	"EVP_KDF_derive(kctx, out, sizeof(out), NULL)"
	.text
	.type	test_kdf_tls1_prf_empty_seed, @function
test_kdf_tls1_prf_empty_seed:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rcx
	leaq	.LC4(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	construct_tls1_prf_params
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$165, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L29
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$166, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L29
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$167, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L29
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$168, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L29
	movl	$1, %eax
	jmp	.L30
.L29:
	movl	$0, %eax
.L30:
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$171, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	test_kdf_tls1_prf_empty_seed, .-test_kdf_tls1_prf_empty_seed
	.type	test_kdf_tls1_prf_1byte_seed, @function
test_kdf_tls1_prf_1byte_seed:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rcx
	leaq	.LC4(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	construct_tls1_prf_params
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$184, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L33
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$185, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L33
	movq	-16(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$186, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L33
	movl	$1, %eax
	jmp	.L34
.L33:
	movl	$0, %eax
.L34:
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$189, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	test_kdf_tls1_prf_1byte_seed, .-test_kdf_tls1_prf_1byte_seed
	.section	.rodata
.LC18:
	.string	"salt"
.LC19:
	.string	"key"
.LC20:
	.string	"info"
.LC21:
	.string	"EXTRACT_ONLY"
.LC22:
	.string	"mode"
	.text
	.type	construct_hkdf_params, @function
construct_hkdf_params:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$196, %edx
	movq	%rax, %rsi
	movl	$200, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	cmpq	$0, -40(%rbp)
	je	.L39
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-128(%rbp), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbx)
.L39:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-128(%rbp), %rax
	movq	-64(%rbp), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-128(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbx)
	cmpq	$0, -72(%rbp)
	je	.L40
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-128(%rbp), %rax
	movq	-72(%rbp), %rdx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbx)
	jmp	.L41
.L40:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-128(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC22(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbx)
.L41:
	movq	-24(%rbp), %rbx
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rax
.L38:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	construct_hkdf_params, .-construct_hkdf_params
	.section	.rodata
.LC23:
	.string	"label"
.LC24:
	.string	"HKDF"
	.align 8
.LC25:
	.string	"kctx = get_kdfbyname(OSSL_KDF_NAME_HKDF)"
	.text
	.type	test_kdf_hkdf, @function
test_kdf_hkdf:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	leaq	.LC23(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	leaq	.LC4(%rip), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$6, %edx
	movq	%rax, %rdi
	call	construct_hkdf_params
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$232, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L43
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$233, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L43
	movq	-16(%rbp), %rdx
	leaq	-30(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$10, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$234, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L43
	leaq	-30(%rbp), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$10
	leaq	expected.57(%rip), %rsi
	pushq	%rsi
	movl	$10, %r9d
	movq	%rdi, %r8
	movl	$235, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L43
	movl	$1, %eax
	jmp	.L44
.L43:
	movl	$0, %eax
.L44:
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$238, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	test_kdf_hkdf, .-test_kdf_hkdf
	.section	.rodata
	.align 8
.LC26:
	.string	"params = construct_hkdf_params( has_digest ? \"sha256\" : NULL, \"secret\", 6, \"salt\", expand_only ? NULL : \"label\")"
	.align 8
.LC27:
	.string	"gettables = EVP_KDF_CTX_gettable_params(kctx)"
.LC28:
	.string	"size"
	.align 8
.LC29:
	.string	"p = OSSL_PARAM_locate_const(gettables, OSSL_KDF_PARAM_SIZE)"
	.align 8
.LC30:
	.string	"EVP_KDF_CTX_get_params(kctx, params_get)"
	.align 8
.LC31:
	.string	"expand_only ? SHA256_DIGEST_LENGTH : SIZE_MAX"
.LC32:
	.string	"sz"
.LC33:
	.string	"-2"
	.text
	.type	do_kdf_hkdf_gettables, @function
do_kdf_hkdf_gettables:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movl	%edi, -132(%rbp)
	movl	%esi, -136(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -16(%rbp)
	cmpl	$0, -132(%rbp)
	jne	.L47
	leaq	.LC23(%rip), %rcx
	jmp	.L48
.L47:
	movl	$0, %ecx
.L48:
	cmpl	$0, -136(%rbp)
	je	.L49
	leaq	.LC4(%rip), %rax
	jmp	.L50
.L49:
	movl	$0, %eax
.L50:
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$6, %edx
	movq	%rax, %rdi
	call	construct_hkdf_params
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$251, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L63
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$255, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L63
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$256, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L63
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_gettable_params@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$260, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L64
	leaq	.LC28(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$261, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L64
	leaq	-192(%rbp), %rax
	leaq	-48(%rbp), %rdx
	leaq	.LC28(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -136(%rbp)
	je	.L56
	leaq	-128(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_get_params@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$268, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L65
	cmpl	$0, -132(%rbp)
	je	.L58
	movl	$32, %edi
	jmp	.L59
.L58:
	movq	$-1, %rdi
.L59:
	movq	-48(%rbp), %rsi
	leaq	.LC31(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$269, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L60
	jmp	.L65
.L56:
	leaq	-128(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_get_params@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$272, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L66
.L60:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-128(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_get_params@PLT
	movl	%eax, %esi
	leaq	.LC33(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$-2, %r9d
	movl	%esi, %r8d
	movl	$278, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L67
	movl	$1, -4(%rbp)
	jmp	.L53
.L63:
	nop
	jmp	.L53
.L64:
	nop
	jmp	.L53
.L65:
	nop
	jmp	.L53
.L66:
	nop
	jmp	.L53
.L67:
	nop
.L53:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$283, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	do_kdf_hkdf_gettables, .-do_kdf_hkdf_gettables
	.type	test_kdf_hkdf_gettables, @function
test_kdf_hkdf_gettables:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %esi
	movl	$0, %edi
	call	do_kdf_hkdf_gettables
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	test_kdf_hkdf_gettables, .-test_kdf_hkdf_gettables
	.type	test_kdf_hkdf_gettables_expandonly, @function
test_kdf_hkdf_gettables_expandonly:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %esi
	movl	$1, %edi
	call	do_kdf_hkdf_gettables
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	test_kdf_hkdf_gettables_expandonly, .-test_kdf_hkdf_gettables_expandonly
	.type	test_kdf_hkdf_gettables_no_digest, @function
test_kdf_hkdf_gettables_no_digest:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %esi
	movl	$1, %edi
	call	do_kdf_hkdf_gettables
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	test_kdf_hkdf_gettables_no_digest, .-test_kdf_hkdf_gettables_no_digest
	.type	test_kdf_hkdf_invalid_digest, @function
test_kdf_hkdf_invalid_digest:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	leaq	.LC23(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	leaq	.LC12(%rip), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$6, %edx
	movq	%rax, %rdi
	call	construct_hkdf_params
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$310, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L75
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$311, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L75
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$312, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L75
	movl	$1, %eax
	jmp	.L76
.L75:
	movl	$0, %eax
.L76:
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$315, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	test_kdf_hkdf_invalid_digest, .-test_kdf_hkdf_invalid_digest
	.type	test_kdf_hkdf_derive_set_params_fail, @function
test_kdf_hkdf_derive_set_params_fail:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$326, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L83
	leaq	-176(%rbp), %rax
	leaq	-20(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-112(%rbp), %rdx
	leaq	-122(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$10, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$334, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L84
	movl	$1, -4(%rbp)
	jmp	.L80
.L83:
	nop
	jmp	.L80
.L84:
	nop
.L80:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	test_kdf_hkdf_derive_set_params_fail, .-test_kdf_hkdf_derive_set_params_fail
	.section	.rodata
.LC34:
	.string	"BADMODE"
	.text
	.type	test_kdf_hkdf_set_invalid_mode, @function
test_kdf_hkdf_set_invalid_mode:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movl	$0, -4(%rbp)
	movl	$100, -20(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$348, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L91
	leaq	-160(%rbp), %rax
	leaq	.LC34(%rip), %rdx
	leaq	.LC22(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-112(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$353, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L92
	leaq	-160(%rbp), %rax
	leaq	-20(%rbp), %rdx
	leaq	.LC22(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-112(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$357, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L93
	movl	$1, -4(%rbp)
	jmp	.L87
.L91:
	nop
	jmp	.L87
.L92:
	nop
	jmp	.L87
.L93:
	nop
.L87:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	test_kdf_hkdf_set_invalid_mode, .-test_kdf_hkdf_set_invalid_mode
	.section	.rodata
.LC35:
	.string	"BAD"
	.text
	.type	do_kdf_hkdf_set_invalid_param, @function
do_kdf_hkdf_set_invalid_param:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$373, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L101
	cmpl	$4, -124(%rbp)
	jne	.L97
	leaq	-176(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	movq	-120(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L98
.L97:
	leaq	-176(%rbp), %rax
	leaq	-98(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movl	$2, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -64(%rbp)
.L98:
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-96(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$381, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L102
	movl	$1, -4(%rbp)
	jmp	.L96
.L101:
	nop
	jmp	.L96
.L102:
	nop
.L96:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	do_kdf_hkdf_set_invalid_param, .-do_kdf_hkdf_set_invalid_param
	.type	test_kdf_hkdf_set_ctx_param_fail, @function
test_kdf_hkdf_set_ctx_param_fail:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC22(%rip), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	do_kdf_hkdf_set_invalid_param
	testl	%eax, %eax
	je	.L104
	leaq	.LC19(%rip), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	do_kdf_hkdf_set_invalid_param
	testl	%eax, %eax
	je	.L104
	leaq	.LC18(%rip), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	do_kdf_hkdf_set_invalid_param
	testl	%eax, %eax
	je	.L104
	leaq	.LC20(%rip), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	do_kdf_hkdf_set_invalid_param
	testl	%eax, %eax
	je	.L104
	movl	$1, %eax
	jmp	.L106
.L104:
	movl	$0, %eax
.L106:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	test_kdf_hkdf_set_ctx_param_fail, .-test_kdf_hkdf_set_ctx_param_fail
	.type	test_kdf_hkdf_zero_output_size, @function
test_kdf_hkdf_zero_output_size:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	leaq	.LC23(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	leaq	.LC4(%rip), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$6, %edx
	movq	%rax, %rdi
	call	construct_hkdf_params
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$412, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L108
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$413, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L108
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$414, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L108
	leaq	-30(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$415, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L108
	movl	$1, %eax
	jmp	.L109
.L108:
	movl	$0, %eax
.L109:
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$418, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	test_kdf_hkdf_zero_output_size, .-test_kdf_hkdf_zero_output_size
	.type	test_kdf_hkdf_empty_key, @function
test_kdf_hkdf_empty_key:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	leaq	.LC23(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC15(%rip), %rsi
	leaq	.LC4(%rip), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	construct_hkdf_params
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$431, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L112
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$432, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L112
	movq	-16(%rbp), %rdx
	leaq	-30(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$10, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$433, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L112
	movl	$1, %eax
	jmp	.L113
.L112:
	movl	$0, %eax
.L113:
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$436, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	test_kdf_hkdf_empty_key, .-test_kdf_hkdf_empty_key
	.type	test_kdf_hkdf_1byte_key, @function
test_kdf_hkdf_1byte_key:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	leaq	.LC23(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC16(%rip), %rsi
	leaq	.LC4(%rip), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	construct_hkdf_params
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$449, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L116
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$450, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L116
	movq	-16(%rbp), %rdx
	leaq	-30(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$10, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$451, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L116
	movl	$1, %eax
	jmp	.L117
.L116:
	movl	$0, %eax
.L117:
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$454, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	test_kdf_hkdf_1byte_key, .-test_kdf_hkdf_1byte_key
	.type	test_kdf_hkdf_empty_salt, @function
test_kdf_hkdf_empty_salt:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	leaq	.LC23(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	leaq	.LC4(%rip), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$6, %edx
	movq	%rax, %rdi
	call	construct_hkdf_params
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$467, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L120
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$468, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L120
	movq	-16(%rbp), %rdx
	leaq	-30(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$10, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$469, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L120
	movl	$1, %eax
	jmp	.L121
.L120:
	movl	$0, %eax
.L121:
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$472, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	test_kdf_hkdf_empty_salt, .-test_kdf_hkdf_empty_salt
	.section	.rodata
.LC36:
	.string	"pass"
.LC37:
	.string	"iter"
	.text
	.type	construct_pbkdf1_params, @function
construct_pbkdf1_params:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$479, %edx
	movq	%rax, %rsi
	movl	$200, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L124
	movl	$0, %eax
	jmp	.L125
.L124:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-112(%rbp), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-112(%rbp), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-112(%rbp), %rax
	movq	-64(%rbp), %rdx
	leaq	.LC37(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-112(%rbp), %rax
	movq	-48(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rax
.L125:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	construct_pbkdf1_params, .-construct_pbkdf1_params
	.section	.rodata
.LC38:
	.string	"libctx = OSSL_LIB_CTX_new()"
.LC39:
	.string	"legacy"
	.align 8
.LC40:
	.string	"PBKDF1 only available in legacy provider"
.LC41:
	.string	"default"
	.align 8
.LC42:
	.string	"defprov = OSSL_PROVIDER_load(libctx, \"default\")"
	.align 8
.LC43:
	.string	"saltSALTsaltSALTsaltSALTsaltSALTsalt"
.LC44:
	.string	"passwordPASSWORDpassword"
.LC45:
	.string	"PBKDF1"
	.align 8
.LC46:
	.string	"kctx = get_kdfbyname_libctx(libctx, OSSL_KDF_NAME_PBKDF1)"
	.text
	.type	test_kdf_pbkdf1, @function
test_kdf_pbkdf1:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movl	$4096, -84(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movabsq	$-8695399278273788933, %rax
	movabsq	$5706773853329693493, %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movabsq	$4489862915716101147, %rax
	movabsq	$-3746884306895535742, %rdx
	movq	%rax, -103(%rbp)
	movq	%rdx, -95(%rbp)
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$513, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L135
	leaq	.LC39(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L129
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	leaq	.LC40(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$520, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L134
.L129:
	leaq	.LC41(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC42(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$523, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L136
	leaq	-84(%rbp), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	leaq	.LC44(%rip), %rdi
	movq	%rax, %rcx
	call	construct_pbkdf1_params
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$530, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L137
	leaq	.LC45(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_kdfbyname_libctx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$531, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L137
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$532, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L137
	leaq	-80(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$25, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$533, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L137
	leaq	-80(%rbp), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$25
	leaq	-112(%rbp), %rsi
	pushq	%rsi
	movl	$25, %r9d
	movq	%rdi, %r8
	movl	$534, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L137
	movl	$1, -4(%rbp)
	jmp	.L128
.L135:
	nop
	jmp	.L128
.L136:
	nop
	jmp	.L128
.L137:
	nop
.L128:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$540, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-4(%rbp), %eax
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	test_kdf_pbkdf1, .-test_kdf_pbkdf1
	.type	test_kdf_pbkdf1_key_too_long, @function
test_kdf_pbkdf1_key_too_long:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movl	$4096, -132(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$558, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L147
	leaq	.LC39(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L141
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	leaq	.LC40(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$565, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L146
.L141:
	leaq	.LC41(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC42(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$568, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L148
	leaq	-132(%rbp), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	leaq	.LC44(%rip), %rdi
	movq	%rax, %rcx
	call	construct_pbkdf1_params
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$580, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L149
	leaq	.LC45(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_kdfbyname_libctx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$581, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L149
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$582, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L149
	leaq	-128(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$65, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$583, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L149
	movl	$1, -4(%rbp)
	jmp	.L140
.L147:
	nop
	jmp	.L140
.L148:
	nop
	jmp	.L140
.L149:
	nop
.L140:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$589, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-4(%rbp), %eax
.L146:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	test_kdf_pbkdf1_key_too_long, .-test_kdf_pbkdf1_key_too_long
	.section	.rodata
.LC47:
	.string	"pkcs5"
	.text
	.type	construct_pbkdf2_params, @function
construct_pbkdf2_params:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$599, %edx
	movq	%rax, %rsi
	movl	$240, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L151
	movl	$0, %eax
	jmp	.L152
.L151:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-128(%rbp), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-128(%rbp), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-128(%rbp), %rax
	movq	-64(%rbp), %rdx
	leaq	.LC37(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-128(%rbp), %rax
	movq	-48(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-128(%rbp), %rax
	movq	-72(%rbp), %rdx
	leaq	.LC47(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rax
.L152:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	construct_pbkdf2_params, .-construct_pbkdf2_params
	.section	.rodata
.LC48:
	.string	"PBKDF2"
	.align 8
.LC49:
	.string	"kctx = get_kdfbyname(OSSL_KDF_NAME_PBKDF2)"
	.text
	.type	test_kdf_pbkdf2, @function
test_kdf_pbkdf2:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movl	$4096, -68(%rbp)
	movl	$0, -72(%rbp)
	movabsq	$3399043216296217652, %rax
	movabsq	$-3493546388550789070, %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movabsq	$3156887472088552664, %rax
	movabsq	$2024368138744640535, %rdx
	movq	%rax, -103(%rbp)
	movq	%rdx, -95(%rbp)
	leaq	-72(%rbp), %rcx
	leaq	-68(%rbp), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	leaq	.LC44(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	construct_pbkdf2_params
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$637, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L158
	leaq	.LC48(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$638, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L158
	movq	-24(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$25, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$639, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L158
	leaq	-64(%rbp), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$25
	leaq	-112(%rbp), %rsi
	pushq	%rsi
	movl	$25, %r9d
	movq	%rdi, %r8
	movl	$640, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L158
	movl	$1, -4(%rbp)
	jmp	.L156
.L158:
	nop
.L156:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$646, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	test_kdf_pbkdf2, .-test_kdf_pbkdf2
	.section	.rodata
	.align 8
.LC50:
	.string	"EVP_KDF_derive(kctx, out, 112 / 8 - 1, NULL)"
	.text
	.type	test_kdf_pbkdf2_small_output, @function
test_kdf_pbkdf2_small_output:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movl	$4096, -68(%rbp)
	movl	$0, -72(%rbp)
	leaq	-72(%rbp), %rcx
	leaq	-68(%rbp), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	leaq	.LC44(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	construct_pbkdf2_params
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$663, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L164
	leaq	.LC48(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$664, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L164
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$665, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L164
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$13, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$667, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L164
	movl	$1, -4(%rbp)
	jmp	.L162
.L164:
	nop
.L162:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$673, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	test_kdf_pbkdf2_small_output, .-test_kdf_pbkdf2_small_output
	.section	.rodata
	.align 8
.LC51:
	.string	"EVP_KDF_derive(kctx, out, len, NULL)"
	.text
	.type	test_kdf_pbkdf2_large_output, @function
test_kdf_pbkdf2_large_output:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$4096, -68(%rbp)
	movl	$0, -72(%rbp)
	leaq	-72(%rbp), %rcx
	leaq	-68(%rbp), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	leaq	.LC44(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	construct_pbkdf2_params
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$694, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L170
	leaq	.LC48(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$695, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L170
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$697, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L170
	cmpq	$0, -24(%rbp)
	je	.L167
	movq	-24(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC51(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$698, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L170
.L167:
	movl	$1, -4(%rbp)
	jmp	.L168
.L170:
	nop
.L168:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$704, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	test_kdf_pbkdf2_large_output, .-test_kdf_pbkdf2_large_output
	.section	.rodata
.LC52:
	.string	"saltSALT"
	.text
	.type	test_kdf_pbkdf2_small_salt, @function
test_kdf_pbkdf2_small_salt:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movl	$4096, -28(%rbp)
	movl	$0, -32(%rbp)
	leaq	-32(%rbp), %rcx
	leaq	-28(%rbp), %rax
	leaq	.LC52(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	leaq	.LC44(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	construct_pbkdf2_params
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$720, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L176
	leaq	.LC48(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$721, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L176
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$723, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L176
	movl	$1, -4(%rbp)
	jmp	.L174
.L176:
	nop
.L174:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$729, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	test_kdf_pbkdf2_small_salt, .-test_kdf_pbkdf2_small_salt
	.type	test_kdf_pbkdf2_small_iterations, @function
test_kdf_pbkdf2_small_iterations:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movl	$1, -28(%rbp)
	movl	$0, -32(%rbp)
	leaq	-32(%rbp), %rcx
	leaq	-28(%rbp), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	leaq	.LC44(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	construct_pbkdf2_params
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$745, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L182
	leaq	.LC48(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$746, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L182
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$748, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L182
	movl	$1, -4(%rbp)
	jmp	.L180
.L182:
	nop
.L180:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$754, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	test_kdf_pbkdf2_small_iterations, .-test_kdf_pbkdf2_small_iterations
	.section	.rodata
	.align 8
.LC53:
	.string	"EVP_KDF_CTX_set_params(kctx, mode_params)"
	.text
	.type	test_kdf_pbkdf2_small_salt_pkcs5, @function
test_kdf_pbkdf2_small_salt_pkcs5:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movl	$4096, -68(%rbp)
	movl	$1, -72(%rbp)
	leaq	-72(%rbp), %rcx
	leaq	-68(%rbp), %rax
	leaq	.LC52(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	leaq	.LC44(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	construct_pbkdf2_params
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$772, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L190
	leaq	.LC48(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$773, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L190
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$775, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L190
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$25, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$776, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L190
	movl	$0, -72(%rbp)
	leaq	-208(%rbp), %rax
	leaq	-72(%rbp), %rdx
	leaq	.LC47(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-160(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC53(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$784, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L191
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$25, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$785, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L191
	movl	$1, -4(%rbp)
	jmp	.L186
.L190:
	nop
	jmp	.L186
.L191:
	nop
.L186:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$791, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	test_kdf_pbkdf2_small_salt_pkcs5, .-test_kdf_pbkdf2_small_salt_pkcs5
	.type	test_kdf_pbkdf2_small_iterations_pkcs5, @function
test_kdf_pbkdf2_small_iterations_pkcs5:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movl	$1, -68(%rbp)
	movl	$1, -72(%rbp)
	leaq	-72(%rbp), %rcx
	leaq	-68(%rbp), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	leaq	.LC44(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	construct_pbkdf2_params
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$809, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L199
	leaq	.LC48(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$810, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L199
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$812, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L199
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$25, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$813, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L199
	movl	$0, -72(%rbp)
	leaq	-208(%rbp), %rax
	leaq	-72(%rbp), %rdx
	leaq	.LC47(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-160(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC53(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$821, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L200
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$25, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$822, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L200
	movl	$1, -4(%rbp)
	jmp	.L195
.L199:
	nop
	jmp	.L195
.L200:
	nop
.L195:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$828, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	test_kdf_pbkdf2_small_iterations_pkcs5, .-test_kdf_pbkdf2_small_iterations_pkcs5
	.type	test_kdf_pbkdf2_invalid_digest, @function
test_kdf_pbkdf2_invalid_digest:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movl	$4096, -28(%rbp)
	movl	$0, -32(%rbp)
	leaq	-32(%rbp), %rcx
	leaq	-28(%rbp), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC12(%rip), %rsi
	leaq	.LC44(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	construct_pbkdf2_params
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$844, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L206
	leaq	.LC48(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$845, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L206
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$847, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L206
	movl	$1, -4(%rbp)
	jmp	.L204
.L206:
	nop
.L204:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$853, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	test_kdf_pbkdf2_invalid_digest, .-test_kdf_pbkdf2_invalid_digest
	.section	.rodata
.LC54:
	.string	"password"
.LC55:
	.string	"NaCl"
.LC56:
	.string	"n"
.LC57:
	.string	"r"
.LC58:
	.string	"p"
.LC59:
	.string	"maxmem_bytes"
.LC60:
	.string	"SCRYPT"
	.align 8
.LC61:
	.string	"kctx = get_kdfbyname(OSSL_KDF_NAME_SCRYPT)"
	.align 8
.LC62:
	.string	"OSSL_PARAM_set_uint(p - 1, 10 * 1024 * 1024)"
	.align 8
.LC63:
	.string	"EVP_KDF_CTX_set_params(kctx, p - 1)"
	.text
	.type	test_kdf_scrypt, @function
test_kdf_scrypt:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$440, %rsp
	.cfi_offset 3, -24
	leaq	-320(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$1024, -388(%rbp)
	movl	$8, -392(%rbp)
	movl	$16, -396(%rbp)
	movl	$16, -400(%rbp)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-448(%rbp), %rax
	leaq	.LC54(%rip), %rdx
	leaq	.LC36(%rip), %rsi
	movl	$8, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-448(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movl	$4, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-448(%rbp), %rax
	leaq	-388(%rbp), %rdx
	leaq	.LC56(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-448(%rbp), %rax
	leaq	-392(%rbp), %rdx
	leaq	.LC57(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-448(%rbp), %rax
	leaq	-396(%rbp), %rdx
	leaq	.LC58(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-448(%rbp), %rax
	leaq	-400(%rbp), %rdx
	leaq	.LC59(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	.LC60(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC61(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$886, %esi
	call	test_ptr@PLT
	movl	%eax, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L208
.L218:
	cmpl	$0, -24(%rbp)
	je	.L209
	leaq	-320(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$889, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L209
	movl	$1, %eax
	jmp	.L210
.L209:
	movl	$0, %eax
.L210:
	movl	%eax, -24(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L211
	cmpl	$0, -24(%rbp)
	je	.L212
	leaq	-384(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$64, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$892, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L212
	movq	-32(%rbp), %rax
	subq	$40, %rax
	movl	$10485760, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC62(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$893, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L212
	movq	-32(%rbp), %rax
	leaq	-40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC63(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$894, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L212
	movl	$1, %eax
	jmp	.L213
.L212:
	movl	$0, %eax
.L213:
	movl	%eax, -24(%rbp)
.L211:
	cmpl	$0, -24(%rbp)
	je	.L214
	leaq	-384(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$64, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$896, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L214
	leaq	-384(%rbp), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$64
	leaq	expected.56(%rip), %rsi
	pushq	%rsi
	movl	$64, %r9d
	movq	%rdi, %r8
	movl	$897, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L214
	movl	$1, %eax
	jmp	.L215
.L214:
	movl	$0, %eax
.L215:
	movl	%eax, -24(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L216
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_reset@PLT
.L216:
	addl	$1, -20(%rbp)
.L208:
	cmpl	$0, -24(%rbp)
	je	.L217
	cmpl	$1, -20(%rbp)
	jle	.L218
.L217:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	test_kdf_scrypt, .-test_kdf_scrypt
	.section	.rodata
.LC64:
	.string	"sha224"
.LC65:
	.string	"SSKDF"
	.align 8
.LC66:
	.string	"kctx = get_kdfbyname(OSSL_KDF_NAME_SSKDF)"
	.text
	.type	test_kdf_ss_hash, @function
test_kdf_ss_hash:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 3, -24
	leaq	-208(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-272(%rbp), %rax
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-240(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-272(%rbp), %rax
	leaq	z.55(%rip), %rdx
	leaq	.LC19(%rip), %rsi
	movl	$56, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-240(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-272(%rbp), %rax
	leaq	other.54(%rip), %rdx
	leaq	.LC20(%rip), %rsi
	movl	$47, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-240(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-240(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	.LC65(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$937, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L221
	leaq	-208(%rbp), %rdx
	leaq	-222(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$14, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$938, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L221
	leaq	-222(%rbp), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$14
	leaq	expected.53(%rip), %rsi
	pushq	%rsi
	movl	$14, %r9d
	movq	%rdi, %r8
	movl	$939, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L221
	movl	$1, %eax
	jmp	.L222
.L221:
	movl	$0, %eax
.L222:
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	test_kdf_ss_hash, .-test_kdf_ss_hash
	.section	.rodata
.LC67:
	.string	"sha512"
.LC68:
	.string	"X963KDF"
	.align 8
.LC69:
	.string	"kctx = get_kdfbyname(OSSL_KDF_NAME_X963KDF)"
	.text
	.type	test_kdf_x963, @function
test_kdf_x963:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$376, %rsp
	.cfi_offset 3, -24
	leaq	-208(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-384(%rbp), %rax
	leaq	.LC67(%rip), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-352(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-384(%rbp), %rax
	leaq	z.52(%rip), %rdx
	leaq	.LC19(%rip), %rsi
	movl	$66, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-352(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-384(%rbp), %rax
	leaq	shared.51(%rip), %rdx
	leaq	.LC20(%rip), %rsi
	movl	$16, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-352(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-352(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	.LC68(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC69(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$990, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L225
	leaq	-208(%rbp), %rdx
	leaq	-336(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$128, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$991, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L225
	leaq	-336(%rbp), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$128
	leaq	expected.50(%rip), %rsi
	pushq	%rsi
	movl	$128, %r9d
	movq	%rdi, %r8
	movl	$992, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L225
	movl	$1, %eax
	jmp	.L226
.L225:
	movl	$0, %eax
.L226:
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	test_kdf_x963, .-test_kdf_x963
	.section	.rodata
.LC70:
	.string	"CAMELLIA-128-CBC"
.LC71:
	.string	"cipher"
.LC72:
	.string	"CMAC"
.LC73:
	.string	"mac"
.LC74:
	.string	"FEEDBACK"
.LC75:
	.string	"KBKDF"
.LC76:
	.string	"kctx"
	.align 8
.LC77:
	.string	"EVP_KDF_derive(kctx, result, sizeof(result), params)"
.LC78:
	.string	"outputs[i]"
.LC79:
	.string	"result"
	.text
	.type	test_kdf_kbkdf_6803_128, @function
test_kdf_kbkdf_6803_128:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$376, %rsp
	.cfi_offset 3, -24
	movl	$0, -20(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -328(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L229
.L234:
	movl	$0, -28(%rbp)
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -28(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-384(%rbp), %rax
	leaq	.LC70(%rip), %rdx
	leaq	.LC71(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-352(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -28(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-384(%rbp), %rax
	leaq	.LC72(%rip), %rdx
	leaq	.LC73(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-352(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -28(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-384(%rbp), %rax
	leaq	.LC74(%rip), %rdx
	leaq	.LC22(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-352(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -28(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-384(%rbp), %rax
	leaq	input_key.49(%rip), %rdx
	leaq	.LC19(%rip), %rsi
	movl	$16, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-352(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	constants.48(%rip), %rdx
	leaq	(%rax,%rdx), %rdi
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -28(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-384(%rbp), %rax
	leaq	.LC18(%rip), %rsi
	movl	$5, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-352(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -28(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-384(%rbp), %rax
	leaq	iv.47(%rip), %rdx
	leaq	.LC3(%rip), %rsi
	movl	$16, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-352(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-352(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	.LC75(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1045, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L230
	leaq	-320(%rbp), %rdx
	leaq	-336(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1046, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L230
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	outputs.46(%rip), %rax
	leaq	(%rdx,%rax), %rsi
	leaq	-336(%rbp), %rdi
	leaq	.LC78(%rip), %rcx
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$16
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$1048, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L230
	movl	$1, %eax
	jmp	.L231
.L230:
	movl	$0, %eax
.L231:
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	cmpl	$1, -20(%rbp)
	je	.L232
	movl	-20(%rbp), %eax
	jmp	.L235
.L232:
	addl	$1, -24(%rbp)
.L229:
	cmpl	$2, -24(%rbp)
	jle	.L234
	movl	-20(%rbp), %eax
.L235:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	test_kdf_kbkdf_6803_128, .-test_kdf_kbkdf_6803_128
	.section	.rodata
.LC80:
	.string	"CAMELLIA-256-CBC"
	.text
	.type	test_kdf_kbkdf_6803_256, @function
test_kdf_kbkdf_6803_256:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$392, %rsp
	.cfi_offset 3, -24
	movl	$0, -20(%rbp)
	movq	$0, -352(%rbp)
	movq	$0, -344(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -328(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L237
.L242:
	movl	$0, -28(%rbp)
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -28(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-400(%rbp), %rax
	leaq	.LC80(%rip), %rdx
	leaq	.LC71(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -28(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-400(%rbp), %rax
	leaq	.LC72(%rip), %rdx
	leaq	.LC73(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -28(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-400(%rbp), %rax
	leaq	.LC74(%rip), %rdx
	leaq	.LC22(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -28(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-400(%rbp), %rax
	leaq	input_key.45(%rip), %rdx
	leaq	.LC19(%rip), %rsi
	movl	$32, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	constants.44(%rip), %rdx
	leaq	(%rax,%rdx), %rdi
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -28(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-400(%rbp), %rax
	leaq	.LC18(%rip), %rsi
	movl	$5, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -28(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-400(%rbp), %rax
	leaq	iv.43(%rip), %rdx
	leaq	.LC3(%rip), %rsi
	movl	$16, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	.LC75(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1111, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L238
	leaq	-320(%rbp), %rdx
	leaq	-352(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1112, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L238
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	outputs.42(%rip), %rax
	leaq	(%rdx,%rax), %rsi
	leaq	-352(%rbp), %rdi
	leaq	.LC78(%rip), %rcx
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$32
	pushq	%rsi
	movl	$32, %r9d
	movq	%rdi, %r8
	movl	$1114, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L238
	movl	$1, %eax
	jmp	.L239
.L238:
	movl	$0, %eax
.L239:
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	cmpl	$1, -20(%rbp)
	je	.L240
	movl	-20(%rbp), %eax
	jmp	.L243
.L240:
	addl	$1, -24(%rbp)
.L237:
	cmpl	$2, -24(%rbp)
	jle	.L242
	movl	-20(%rbp), %eax
.L243:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	test_kdf_kbkdf_6803_256, .-test_kdf_kbkdf_6803_256
	.section	.rodata
.LC81:
	.string	"COUNTER"
	.text
	.type	construct_kbkdf_params, @function
construct_kbkdf_params:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$1128, %edx
	movq	%rax, %rsi
	movl	$320, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L245
	movl	$0, %eax
	jmp	.L246
.L245:
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-128(%rbp), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-128(%rbp), %rax
	movq	-48(%rbp), %rdx
	leaq	.LC73(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-128(%rbp), %rax
	leaq	.LC81(%rip), %rdx
	leaq	.LC22(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-128(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-128(%rbp), %rax
	movq	-72(%rbp), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-128(%rbp), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-128(%rbp), %rax
	movq	16(%rbp), %rdx
	leaq	.LC57(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rax
.L246:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	construct_kbkdf_params, .-construct_kbkdf_params
	.section	.rodata
.LC82:
	.string	"test"
.LC83:
	.string	"prf"
.LC84:
	.string	"HMAC"
	.text
	.type	test_kdf_kbkdf_invalid_digest, @function
test_kdf_kbkdf_invalid_digest:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$32, -24(%rbp)
	leaq	.LC82(%rip), %r8
	leaq	.LC83(%rip), %rdi
	leaq	key.41(%rip), %rdx
	leaq	.LC84(%rip), %rsi
	leaq	.LC12(%rip), %rax
	subq	$8, %rsp
	leaq	-24(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	construct_kbkdf_params
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1163, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L248
	movl	$0, %eax
	jmp	.L252
.L248:
	leaq	.LC75(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1168, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L250
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1169, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L250
	movl	$1, %eax
	jmp	.L251
.L250:
	movl	$0, %eax
.L251:
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1172, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
.L252:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	test_kdf_kbkdf_invalid_digest, .-test_kdf_kbkdf_invalid_digest
	.type	test_kdf_kbkdf_invalid_mac, @function
test_kdf_kbkdf_invalid_mac:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$32, -24(%rbp)
	leaq	.LC82(%rip), %r8
	leaq	.LC83(%rip), %rdi
	leaq	key.40(%rip), %rdx
	leaq	.LC12(%rip), %rsi
	leaq	.LC4(%rip), %rax
	subq	$8, %rsp
	leaq	-24(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	construct_kbkdf_params
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1186, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L254
	movl	$0, %eax
	jmp	.L258
.L254:
	leaq	.LC75(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1191, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L256
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1192, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L256
	movl	$1, %eax
	jmp	.L257
.L256:
	movl	$0, %eax
.L257:
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1195, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
.L258:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	test_kdf_kbkdf_invalid_mac, .-test_kdf_kbkdf_invalid_mac
	.type	test_kdf_kbkdf_invalid_r, @function
test_kdf_kbkdf_invalid_r:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$31, -24(%rbp)
	leaq	.LC82(%rip), %r8
	leaq	.LC83(%rip), %rdi
	leaq	key.39(%rip), %rdx
	leaq	.LC84(%rip), %rsi
	leaq	.LC4(%rip), %rax
	subq	$8, %rsp
	leaq	-24(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	construct_kbkdf_params
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1209, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L260
	movl	$0, %eax
	jmp	.L264
.L260:
	leaq	.LC75(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1214, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L262
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1215, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L262
	movl	$1, %eax
	jmp	.L263
.L262:
	movl	$0, %eax
.L263:
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1218, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
.L264:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	test_kdf_kbkdf_invalid_r, .-test_kdf_kbkdf_invalid_r
	.section	.rodata
	.align 8
.LC85:
	.string	"EVP_KDF_derive(kctx, result, sizeof(result), NULL)"
	.text
	.type	test_kdf_kbkdf_empty_key, @function
test_kdf_kbkdf_empty_key:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$32, -68(%rbp)
	leaq	.LC82(%rip), %r8
	leaq	.LC83(%rip), %rdi
	leaq	key.38(%rip), %rdx
	leaq	.LC84(%rip), %rsi
	leaq	.LC4(%rip), %rax
	subq	$8, %rsp
	leaq	-68(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	construct_kbkdf_params
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1234, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L266
	movl	$0, %eax
	jmp	.L270
.L266:
	leaq	.LC75(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1239, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L268
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1240, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L268
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$32, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1241, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L268
	movl	$1, %eax
	jmp	.L269
.L268:
	movl	$0, %eax
.L269:
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1244, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
.L270:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	test_kdf_kbkdf_empty_key, .-test_kdf_kbkdf_empty_key
	.type	test_kdf_kbkdf_1byte_key, @function
test_kdf_kbkdf_1byte_key:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$32, -68(%rbp)
	leaq	.LC82(%rip), %r8
	leaq	.LC83(%rip), %rdi
	leaq	key.37(%rip), %rdx
	leaq	.LC84(%rip), %rsi
	leaq	.LC4(%rip), %rax
	subq	$8, %rsp
	leaq	-68(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	construct_kbkdf_params
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1259, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L272
	movl	$0, %eax
	jmp	.L276
.L272:
	leaq	.LC75(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1263, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L274
	movq	-8(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1264, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L274
	movl	$1, %eax
	jmp	.L275
.L274:
	movl	$0, %eax
.L275:
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1267, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
.L276:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	test_kdf_kbkdf_1byte_key, .-test_kdf_kbkdf_1byte_key
	.section	.rodata
	.align 8
.LC86:
	.string	"EVP_KDF_derive(kctx, result, 0, NULL)"
	.text
	.type	test_kdf_kbkdf_zero_output_size, @function
test_kdf_kbkdf_zero_output_size:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$32, -68(%rbp)
	leaq	.LC82(%rip), %r8
	leaq	.LC83(%rip), %rdi
	leaq	key.36(%rip), %rdx
	leaq	.LC84(%rip), %rsi
	leaq	.LC4(%rip), %rax
	subq	$8, %rsp
	leaq	-68(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	construct_kbkdf_params
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1282, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L278
	movl	$0, %eax
	jmp	.L282
.L278:
	leaq	.LC75(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1287, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L280
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1288, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L280
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC86(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1289, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L280
	movl	$1, %eax
	jmp	.L281
.L280:
	movl	$0, %eax
.L281:
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1292, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
.L282:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	test_kdf_kbkdf_zero_output_size, .-test_kdf_kbkdf_zero_output_size
	.section	.rodata
.LC87:
	.string	"output"
	.text
	.type	test_kdf_kbkdf_8009_prf1, @function
test_kdf_kbkdf_8009_prf1:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$392, %rsp
	.cfi_offset 3, -24
	movl	$0, -20(%rbp)
	leaq	.LC83(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC82(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC84(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -352(%rbp)
	movq	$0, -344(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -328(%rbp)
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-400(%rbp), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-400(%rbp), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC73(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-400(%rbp), %rax
	leaq	input_key.35(%rip), %rdx
	leaq	.LC19(%rip), %rsi
	movl	$16, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-400(%rbp), %rax
	movq	-32(%rbp), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-400(%rbp), %rax
	movq	-48(%rbp), %rdx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	.LC75(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1330, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L284
	leaq	-320(%rbp), %rdx
	leaq	-352(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1331, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L284
	leaq	-352(%rbp), %rdi
	leaq	.LC87(%rip), %rcx
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$32
	leaq	output.34(%rip), %rsi
	pushq	%rsi
	movl	$32, %r9d
	movq	%rdi, %r8
	movl	$1332, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L284
	movl	$1, %eax
	jmp	.L285
.L284:
	movl	$0, %eax
.L285:
	movl	%eax, -68(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	test_kdf_kbkdf_8009_prf1, .-test_kdf_kbkdf_8009_prf1
	.section	.rodata
.LC88:
	.string	"sha384"
	.text
	.type	test_kdf_kbkdf_8009_prf2, @function
test_kdf_kbkdf_8009_prf2:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$408, %rsp
	.cfi_offset 3, -24
	movl	$0, -20(%rbp)
	leaq	.LC83(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC88(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC82(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC84(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -368(%rbp)
	movq	$0, -360(%rbp)
	movq	$0, -352(%rbp)
	movq	$0, -344(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -328(%rbp)
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-416(%rbp), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-384(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-416(%rbp), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC73(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-384(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-416(%rbp), %rax
	leaq	input_key.33(%rip), %rdx
	leaq	.LC19(%rip), %rsi
	movl	$32, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-384(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-416(%rbp), %rax
	movq	-32(%rbp), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-384(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-416(%rbp), %rax
	movq	-48(%rbp), %rdx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-384(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-304(%rax), %rbx
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-384(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	.LC75(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1374, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L288
	leaq	-320(%rbp), %rdx
	leaq	-368(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	$48, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1375, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L288
	leaq	-368(%rbp), %rdi
	leaq	.LC87(%rip), %rcx
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$48
	leaq	output.32(%rip), %rsi
	pushq	%rsi
	movl	$48, %r9d
	movq	%rdi, %r8
	movl	$1376, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L288
	movl	$1, %eax
	jmp	.L289
.L288:
	movl	$0, %eax
.L289:
	movl	%eax, -68(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	test_kdf_kbkdf_8009_prf2, .-test_kdf_kbkdf_8009_prf2
	.section	.rodata
.LC89:
	.string	"use-l"
.LC90:
	.string	"use-separator"
	.text
	.type	test_kdf_kbkdf_fixedinfo, @function
test_kdf_kbkdf_fixedinfo:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$440, %rsp
	.cfi_offset 3, -24
	leaq	-368(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -372(%rbp)
	movl	$0, -376(%rbp)
	movq	$0, -400(%rbp)
	movq	$0, -392(%rbp)
	movq	cipher.31(%rip), %rdx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-448(%rbp), %rax
	leaq	.LC71(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	mac.30(%rip), %rdx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-448(%rbp), %rax
	leaq	.LC73(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	mode.29(%rip), %rdx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-448(%rbp), %rax
	leaq	.LC22(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-448(%rbp), %rax
	leaq	input_key.28(%rip), %rdx
	leaq	.LC19(%rip), %rsi
	movl	$16, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-448(%rbp), %rax
	leaq	fixed_input.27(%rip), %rdx
	leaq	.LC20(%rip), %rsi
	movl	$60, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-448(%rbp), %rax
	leaq	-372(%rbp), %rdx
	leaq	.LC89(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-448(%rbp), %rax
	leaq	-376(%rbp), %rdx
	leaq	.LC90(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	.LC75(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1433, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L292
	leaq	-368(%rbp), %rdx
	leaq	-400(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1434, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L292
	leaq	-400(%rbp), %rdi
	leaq	.LC87(%rip), %rcx
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$16
	leaq	output.26(%rip), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$1435, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L292
	movl	$1, %eax
	jmp	.L293
.L292:
	movl	$0, %eax
.L293:
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	test_kdf_kbkdf_fixedinfo, .-test_kdf_kbkdf_fixedinfo
	.section	.rodata
.LC91:
	.string	"SIZE_MAX"
	.align 8
.LC92:
	.string	"EVP_KDF_CTX_get_kdf_size(kctx)"
	.text
	.type	test_kdf_kbkdf_kmac, @function
test_kdf_kbkdf_kmac:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$600, %rsp
	.cfi_offset 3, -24
	leaq	-240(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-560(%rbp), %rdx
	movl	$0, %eax
	movl	$38, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq	mac.25(%rip), %rdx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-608(%rbp), %rax
	leaq	.LC73(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-608(%rbp), %rax
	movq	-600(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-592(%rbp), %rax
	movq	-584(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-576(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-608(%rbp), %rax
	leaq	input_key.24(%rip), %rdx
	leaq	.LC19(%rip), %rsi
	movl	$41, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-608(%rbp), %rax
	movq	-600(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-592(%rbp), %rax
	movq	-584(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-576(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-608(%rbp), %rax
	leaq	context.23(%rip), %rdx
	leaq	.LC20(%rip), %rsi
	movl	$512, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-608(%rbp), %rax
	movq	-600(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-592(%rbp), %rax
	movq	-584(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-576(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-608(%rbp), %rax
	leaq	label.22(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movl	$54, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-608(%rbp), %rax
	movq	-600(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-592(%rbp), %rax
	movq	-584(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-576(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	-608(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-608(%rbp), %rax
	movq	-600(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-592(%rbp), %rax
	movq	-584(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-576(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	.LC75(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1585, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L296
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_get_kdf_size@PLT
	movq	%rax, %rsi
	leaq	.LC91(%rip), %rcx
	leaq	.LC92(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$1586, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L296
	leaq	-240(%rbp), %rdx
	leaq	-560(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$309, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1587, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L296
	leaq	-560(%rbp), %rdi
	leaq	.LC87(%rip), %rcx
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$309
	leaq	output.21(%rip), %rsi
	pushq	%rsi
	movl	$309, %r9d
	movq	%rdi, %r8
	movl	$1588, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L296
	movl	$1, %eax
	jmp	.L297
.L296:
	movl	$0, %eax
.L297:
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	test_kdf_kbkdf_kmac, .-test_kdf_kbkdf_kmac
	.type	test_kdf_ss_hmac, @function
test_kdf_ss_hmac:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$344, %rsp
	.cfi_offset 3, -24
	leaq	-288(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-352(%rbp), %rax
	leaq	.LC84(%rip), %rdx
	leaq	.LC73(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-352(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-352(%rbp), %rax
	leaq	z.20(%rip), %rdx
	leaq	.LC19(%rip), %rsi
	movl	$14, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-352(%rbp), %rax
	leaq	other.19(%rip), %rdx
	leaq	.LC20(%rip), %rsi
	movl	$12, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-352(%rbp), %rax
	leaq	salt.18(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movl	$16, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	.LC65(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1627, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L300
	leaq	-288(%rbp), %rdx
	leaq	-304(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1628, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L300
	leaq	-304(%rbp), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$16
	leaq	expected.17(%rip), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$1629, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L300
	movl	$1, %eax
	jmp	.L301
.L300:
	movl	$0, %eax
.L301:
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	test_kdf_ss_hmac, .-test_kdf_ss_hmac
	.section	.rodata
.LC93:
	.string	"KMAC128"
.LC94:
	.string	"SHA256"
.LC95:
	.string	"maclen"
	.text
	.type	test_kdf_ss_kmac, @function
test_kdf_ss_kmac:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$440, %rsp
	.cfi_offset 3, -24
	leaq	-320(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$20, -392(%rbp)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-448(%rbp), %rax
	leaq	.LC93(%rip), %rdx
	leaq	.LC73(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-448(%rbp), %rax
	leaq	.LC94(%rip), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-448(%rbp), %rax
	leaq	z.16(%rip), %rdx
	leaq	.LC19(%rip), %rsi
	movl	$14, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-448(%rbp), %rax
	leaq	other.15(%rip), %rdx
	leaq	.LC20(%rip), %rsi
	movl	$12, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-448(%rbp), %rax
	leaq	salt.14(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movl	$16, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-448(%rbp), %rax
	leaq	-392(%rbp), %rdx
	leaq	.LC95(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	.LC65(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1674, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L304
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_get_kdf_size@PLT
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rcx
	leaq	.LC92(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$1675, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L304
	leaq	-320(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1676, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L304
	movl	$8, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movl	$0, %edi
	call	fips_provider_version_lt@PLT
	testl	%eax, %eax
	jne	.L305
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_get_kdf_size@PLT
	movq	%rax, %rsi
	leaq	.LC91(%rip), %rcx
	leaq	.LC92(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$1679, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L304
.L305:
	leaq	-384(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$64, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1680, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L304
	leaq	-384(%rbp), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$64
	leaq	expected.13(%rip), %rsi
	pushq	%rsi
	movl	$64, %r9d
	movq	%rdi, %r8
	movl	$1681, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L304
	movl	$1, %eax
	jmp	.L306
.L304:
	movl	$0, %eax
.L306:
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	test_kdf_ss_kmac, .-test_kdf_ss_kmac
	.section	.rodata
.LC96:
	.string	"xcghash"
.LC97:
	.string	"session_id"
.LC98:
	.string	"type"
.LC99:
	.string	"SSHKDF"
	.align 8
.LC100:
	.string	"kctx = get_kdfbyname(OSSL_KDF_NAME_SSHKDF)"
	.text
	.type	test_kdf_sshkdf, @function
test_kdf_sshkdf:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$344, %rsp
	.cfi_offset 3, -24
	leaq	-288(%rbp), %rax
	movq	%rax, -24(%rbp)
	movb	$65, -289(%rbp)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-352(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-352(%rbp), %rax
	leaq	key.12(%rip), %rdx
	leaq	.LC19(%rip), %rsi
	movl	$133, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-352(%rbp), %rax
	leaq	xcghash.11(%rip), %rdx
	leaq	.LC96(%rip), %rsi
	movl	$32, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-352(%rbp), %rax
	leaq	sessid.10(%rip), %rdx
	leaq	.LC97(%rip), %rsi
	movl	$32, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-352(%rbp), %rax
	leaq	-289(%rbp), %rdx
	leaq	.LC98(%rip), %rsi
	movl	$1, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	.LC99(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC100(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1736, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L309
	leaq	-288(%rbp), %rdx
	leaq	-297(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1737, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L309
	leaq	-297(%rbp), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$8
	leaq	expected.9(%rip), %rsi
	pushq	%rsi
	movl	$8, %r9d
	movq	%rdi, %r8
	movl	$1738, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L309
	movl	$1, %eax
	jmp	.L310
.L309:
	movl	$0, %eax
.L310:
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	test_kdf_sshkdf, .-test_kdf_sshkdf
	.section	.rodata
.LC101:
	.string	"EVP_KDF_get0_provider(kdf2)"
.LC102:
	.string	"EVP_KDF_get0_provider(kdf1)"
.LC103:
	.string	"EVP_KDF_get0_name(kdf2)"
.LC104:
	.string	"EVP_KDF_get0_name(kdf1)"
	.text
	.type	test_kdfs_same, @function
test_kdfs_same:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L313
	movl	$1, %eax
	jmp	.L314
.L313:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_get0_provider@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_get0_provider@PLT
	movq	%rax, %rsi
	leaq	.LC101(%rip), %rcx
	leaq	.LC102(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$1755, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L315
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_get0_name@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_get0_name@PLT
	movq	%rax, %rsi
	leaq	.LC103(%rip), %rcx
	leaq	.LC104(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$1756, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L315
	movl	$1, %eax
	jmp	.L314
.L315:
	movl	$0, %eax
.L314:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	test_kdfs_same, .-test_kdfs_same
	.section	.rodata
	.align 8
.LC105:
	.string	"obj = OBJ_nid2obj(NID_id_pbkdf2)"
	.align 8
.LC106:
	.string	"kdf1 = EVP_KDF_fetch(NULL, OSSL_KDF_NAME_PBKDF2, NULL)"
	.align 8
.LC107:
	.string	"kdf2 = EVP_KDF_fetch(NULL, OBJ_nid2sn(OBJ_obj2nid(obj)), NULL)"
	.align 8
.LC108:
	.string	"kdf1 = EVP_KDF_fetch(NULL, SN_tls1_prf, NULL)"
.LC109:
	.string	"tls1-prf"
	.align 8
.LC110:
	.string	"kdf2 = EVP_KDF_fetch(NULL, LN_tls1_prf, NULL)"
	.align 8
.LC111:
	.string	"kdf2 = EVP_KDF_fetch(NULL, OBJ_nid2sn(NID_tls1_prf), NULL)"
	.text
	.type	test_kdf_get_kdf, @function
test_kdf_get_kdf:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$1, -20(%rbp)
	movl	$69, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC105(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1765, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L318
	leaq	.LC48(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_KDF_fetch@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC106(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1766, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L318
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_KDF_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC107(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1767, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L318
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_kdfs_same
	testl	%eax, %eax
	jne	.L319
.L318:
	movl	$0, -20(%rbp)
.L319:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	movq	$0, -16(%rbp)
	leaq	.LC6(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_KDF_fetch@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC108(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1776, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L320
	leaq	.LC109(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_KDF_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC110(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1777, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L320
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_kdfs_same
	testl	%eax, %eax
	jne	.L321
.L320:
	movl	$0, -20(%rbp)
.L321:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	movq	$0, -16(%rbp)
	movl	$1021, %edi
	call	OBJ_nid2sn@PLT
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_KDF_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC111(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1784, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L322
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_kdfs_same
	testl	%eax, %eax
	jne	.L323
.L322:
	movl	$0, -20(%rbp)
.L323:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	movq	$0, -16(%rbp)
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	test_kdf_get_kdf, .-test_kdf_get_kdf
	.section	.rodata
.LC112:
	.string	"id-smime-alg-CMS3DESwrap"
.LC113:
	.string	"sha1"
.LC114:
	.string	"cekalg"
.LC115:
	.string	"X942KDF-ASN1"
	.align 8
.LC116:
	.string	"kctx = get_kdfbyname(OSSL_KDF_NAME_X942KDF_ASN1)"
	.text
	.type	test_kdf_x942_asn1, @function
test_kdf_x942_asn1:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$280, %rsp
	.cfi_offset 3, -24
	movq	$0, -24(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC112(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-288(%rbp), %rax
	leaq	.LC113(%rip), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-256(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-288(%rbp), %rax
	leaq	z.8(%rip), %rdx
	leaq	.LC19(%rip), %rsi
	movl	$20, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-256(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-288(%rbp), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC114(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-256(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-256(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	.LC115(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC116(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1823, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L326
	leaq	-208(%rbp), %rdx
	leaq	-240(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$24, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1824, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L326
	leaq	-240(%rbp), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$24
	leaq	expected.7(%rip), %rsi
	pushq	%rsi
	movl	$24, %r9d
	movq	%rdi, %r8
	movl	$1825, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L326
	movl	$1, %eax
	jmp	.L327
.L326:
	movl	$0, %eax
.L327:
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	test_kdf_x942_asn1, .-test_kdf_x942_asn1
	.section	.rodata
.LC117:
	.string	"AES-128-CBC"
.LC118:
	.string	"constant"
.LC119:
	.string	"KRB5KDF"
	.align 8
.LC120:
	.string	"kctx = get_kdfbyname(OSSL_KDF_NAME_KRB5KDF)"
	.text
	.type	test_kdf_krb5kdf, @function
test_kdf_krb5kdf:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 3, -24
	leaq	-208(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-272(%rbp), %rax
	leaq	.LC117(%rip), %rdx
	leaq	.LC71(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-240(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-272(%rbp), %rax
	leaq	key.6(%rip), %rdx
	leaq	.LC19(%rip), %rsi
	movl	$16, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-240(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-272(%rbp), %rax
	leaq	constant.5(%rip), %rdx
	leaq	.LC118(%rip), %rsi
	movl	$5, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-240(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-240(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	.LC119(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC120(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1859, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L330
	leaq	-208(%rbp), %rdx
	leaq	-224(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1860, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L330
	leaq	-224(%rbp), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$16
	leaq	expected.4(%rip), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$1861, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L330
	movl	$1, %eax
	jmp	.L331
.L330:
	movl	$0, %eax
.L331:
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	test_kdf_krb5kdf, .-test_kdf_krb5kdf
	.section	.rodata
.LC121:
	.string	"HMAC-DRBG-KDF"
	.align 8
.LC122:
	.string	"kctx = get_kdfbyname(OSSL_KDF_NAME_HMACDRBGKDF)"
	.align 8
.LC123:
	.string	"settableparams = EVP_KDF_CTX_settable_params(kctx)"
.LC124:
	.string	"properties"
.LC125:
	.string	"Testing set int into %s fails"
.LC126:
	.string	"entropy"
.LC127:
	.string	"nonce"
	.align 8
.LC128:
	.string	"EVP_KDF_CTX_get_params(kctx, params)"
.LC129:
	.string	"\"SHA2-256\""
.LC130:
	.string	"digestname"
.LC131:
	.string	"SHA2-256"
.LC132:
	.string	"\"HMAC\""
.LC133:
	.string	"macname"
.LC134:
	.string	"shake256"
	.text
	.type	test_kdf_hmac_drbg_settables, @function
test_kdf_hmac_drbg_settables:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$384, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	leaq	.LC121(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC122(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1880, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L348
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_settable_params@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC123(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1881, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L348
	leaq	-272(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$32, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1885, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L349
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -168(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L338
.L340:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC124(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L339
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC125(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	leaq	-384(%rbp), %rax
	leaq	-36(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-240(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1896, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L350
.L339:
	addl	$1, -8(%rbp)
.L338:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L340
	leaq	-384(%rbp), %rax
	leaq	ent.3(%rip), %rdx
	leaq	.LC126(%rip), %rsi
	movl	$32, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-384(%rbp), %rax
	leaq	ent.3(%rip), %rdx
	leaq	.LC127(%rip), %rsi
	movl	$32, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -168(%rbp)
	leaq	-384(%rbp), %rax
	leaq	.LC94(%rip), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-384(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC124(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-240(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1910, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L351
	leaq	-240(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1912, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L352
	leaq	-384(%rbp), %rax
	leaq	-304(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$32, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-384(%rbp), %rax
	leaq	-336(%rbp), %rdx
	leaq	.LC73(%rip), %rsi
	movl	$32, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -168(%rbp)
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-240(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_get_params@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC128(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1920, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L353
	movq	-208(%rbp), %r8
	leaq	-304(%rbp), %rdi
	leaq	.LC129(%rip), %rcx
	leaq	.LC130(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$8
	leaq	.LC131(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1921, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L353
	movq	-168(%rbp), %r8
	leaq	-336(%rbp), %rdi
	leaq	.LC132(%rip), %rcx
	leaq	.LC133(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$4
	leaq	.LC84(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1922, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L353
	leaq	-272(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$32, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1926, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L354
	leaq	-384(%rbp), %rax
	leaq	.LC134(%rip), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -168(%rbp)
	leaq	-240(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1933, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L355
	movl	$1, -4(%rbp)
	jmp	.L336
.L348:
	nop
	jmp	.L336
.L349:
	nop
	jmp	.L336
.L350:
	nop
	jmp	.L336
.L351:
	nop
	jmp	.L336
.L352:
	nop
	jmp	.L336
.L353:
	nop
	jmp	.L336
.L354:
	nop
	jmp	.L336
.L355:
	nop
.L336:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	test_kdf_hmac_drbg_settables, .-test_kdf_hmac_drbg_settables
	.section	.rodata
	.align 8
.LC135:
	.string	"gettableparams = EVP_KDF_CTX_gettable_params(kctx)"
	.text
	.type	test_kdf_hmac_drbg_gettables, @function
test_kdf_hmac_drbg_gettables:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC121(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC122(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1952, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L367
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_gettable_params@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC135(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1953, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L367
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L360
.L362:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	leaq	-272(%rbp), %rax
	leaq	-28(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-160(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_get_params@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC128(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1959, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L368
	addl	$1, -8(%rbp)
.L360:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L362
	movl	$0, -8(%rbp)
	jmp	.L363
.L365:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rsi
	leaq	-272(%rbp), %rax
	leaq	-224(%rbp), %rdx
	movl	$64, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-160(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_get_params@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC128(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1966, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L369
	addl	$1, -8(%rbp)
.L363:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L365
	movl	$1, -4(%rbp)
	jmp	.L359
.L367:
	nop
	jmp	.L359
.L368:
	nop
	jmp	.L359
.L369:
	nop
.L359:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	test_kdf_hmac_drbg_gettables, .-test_kdf_hmac_drbg_gettables
	.section	.rodata
	.align 8
.LC136:
	.string	"kctx = get_kdfbyname(OSSL_KDF_NAME_KBKDF)"
	.text
	.type	test_kbkdf_mac_change, @function
test_kbkdf_mac_change:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$472, %rsp
	.cfi_offset 3, -24
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	leaq	-400(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -404(%rbp)
	movl	$0, -408(%rbp)
	movl	$8, -412(%rbp)
	leaq	-480(%rbp), %rax
	leaq	.LC93(%rip), %rdx
	leaq	.LC73(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, -400(%rbp)
	movq	%rdx, -392(%rbp)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, -384(%rbp)
	movq	%rdx, -376(%rbp)
	movq	-448(%rbp), %rax
	movq	%rax, -368(%rbp)
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, -360(%rbp)
	movq	%rdx, -352(%rbp)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, -344(%rbp)
	movq	%rdx, -336(%rbp)
	movq	-448(%rbp), %rax
	movq	%rax, -328(%rbp)
	leaq	.LC75(%rip), %rax
	movq	%rax, %rdi
	call	get_kdfbyname
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC136(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2008, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L377
	leaq	-400(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2009, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L377
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-480(%rbp), %rax
	leaq	.LC81(%rip), %rdx
	leaq	.LC22(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-480(%rbp), %rax
	leaq	.LC84(%rip), %rdx
	leaq	.LC73(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-480(%rbp), %rax
	leaq	.LC94(%rip), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-480(%rbp), %rax
	leaq	-404(%rbp), %rdx
	leaq	.LC89(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-480(%rbp), %rax
	leaq	-408(%rbp), %rdx
	leaq	.LC90(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-480(%rbp), %rax
	leaq	-412(%rbp), %rdx
	leaq	.LC57(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-480(%rbp), %rax
	leaq	key.2(%rip), %rdx
	leaq	.LC19(%rip), %rsi
	movl	$32, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-480(%rbp), %rax
	leaq	info.1(%rip), %rdx
	leaq	.LC20(%rip), %rsi
	movl	$60, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-400(%rbp), %rdx
	leaq	-432(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2023, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L378
	leaq	-432(%rbp), %rdi
	leaq	.LC87(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$16
	leaq	output.0(%rip), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$2024, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L378
	movl	$1, -20(%rbp)
	jmp	.L373
.L377:
	nop
	jmp	.L373
.L378:
	nop
.L373:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	test_kbkdf_mac_change, .-test_kbkdf_mac_change
	.section	.rodata
.LC137:
	.string	"test_kdf_pbkdf1"
.LC138:
	.string	"test_kdf_pbkdf1_key_too_long"
.LC139:
	.string	"test_kdf_kbkdf_6803_128"
.LC140:
	.string	"test_kdf_kbkdf_6803_256"
.LC141:
	.string	"test_kdf_kbkdf_invalid_digest"
.LC142:
	.string	"test_kdf_kbkdf_invalid_mac"
.LC143:
	.string	"test_kdf_kbkdf_invalid_r"
	.align 8
.LC144:
	.string	"test_kdf_kbkdf_zero_output_size"
.LC145:
	.string	"test_kdf_kbkdf_empty_key"
.LC146:
	.string	"test_kdf_kbkdf_1byte_key"
.LC147:
	.string	"test_kdf_kbkdf_8009_prf1"
.LC148:
	.string	"test_kdf_kbkdf_8009_prf2"
.LC149:
	.string	"test_kdf_kbkdf_fixedinfo"
.LC150:
	.string	"test_kdf_kbkdf_kmac"
.LC151:
	.string	"test_kdf_get_kdf"
.LC152:
	.string	"test_kdf_tls1_prf"
	.align 8
.LC153:
	.string	"test_kdf_tls1_prf_invalid_digest"
	.align 8
.LC154:
	.string	"test_kdf_tls1_prf_zero_output_size"
	.align 8
.LC155:
	.string	"test_kdf_tls1_prf_empty_secret"
	.align 8
.LC156:
	.string	"test_kdf_tls1_prf_1byte_secret"
.LC157:
	.string	"test_kdf_tls1_prf_empty_seed"
.LC158:
	.string	"test_kdf_tls1_prf_1byte_seed"
.LC159:
	.string	"test_kdf_hkdf"
.LC160:
	.string	"test_kdf_hkdf_invalid_digest"
	.align 8
.LC161:
	.string	"test_kdf_hkdf_zero_output_size"
.LC162:
	.string	"test_kdf_hkdf_empty_key"
.LC163:
	.string	"test_kdf_hkdf_1byte_key"
.LC164:
	.string	"test_kdf_hkdf_empty_salt"
.LC165:
	.string	"test_kdf_hkdf_gettables"
	.align 8
.LC166:
	.string	"test_kdf_hkdf_gettables_expandonly"
	.align 8
.LC167:
	.string	"test_kdf_hkdf_gettables_no_digest"
	.align 8
.LC168:
	.string	"test_kdf_hkdf_derive_set_params_fail"
	.align 8
.LC169:
	.string	"test_kdf_hkdf_set_invalid_mode"
	.align 8
.LC170:
	.string	"test_kdf_hkdf_set_ctx_param_fail"
.LC171:
	.string	"test_kdf_pbkdf2"
.LC172:
	.string	"test_kdf_pbkdf2_small_output"
.LC173:
	.string	"test_kdf_pbkdf2_large_output"
.LC174:
	.string	"test_kdf_pbkdf2_small_salt"
	.align 8
.LC175:
	.string	"test_kdf_pbkdf2_small_iterations"
	.align 8
.LC176:
	.string	"test_kdf_pbkdf2_small_salt_pkcs5"
	.align 8
.LC177:
	.string	"test_kdf_pbkdf2_small_iterations_pkcs5"
	.align 8
.LC178:
	.string	"test_kdf_pbkdf2_invalid_digest"
.LC179:
	.string	"test_kdf_scrypt"
.LC180:
	.string	"test_kdf_ss_hash"
.LC181:
	.string	"test_kdf_ss_hmac"
.LC182:
	.string	"test_kdf_ss_kmac"
.LC183:
	.string	"test_kdf_sshkdf"
.LC184:
	.string	"test_kdf_x963"
.LC185:
	.string	"test_kdf_x942_asn1"
.LC186:
	.string	"test_kdf_krb5kdf"
.LC187:
	.string	"test_kdf_hmac_drbg_settables"
.LC188:
	.string	"test_kdf_hmac_drbg_gettables"
.LC189:
	.string	"test_kbkdf_mac_change"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_kdf_pbkdf1(%rip), %rdx
	leaq	.LC137(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_pbkdf1_key_too_long(%rip), %rdx
	leaq	.LC138(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_kbkdf_6803_128(%rip), %rdx
	leaq	.LC139(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_kbkdf_6803_256(%rip), %rdx
	leaq	.LC140(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_kbkdf_invalid_digest(%rip), %rdx
	leaq	.LC141(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_kbkdf_invalid_mac(%rip), %rdx
	leaq	.LC142(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_kbkdf_invalid_r(%rip), %rdx
	leaq	.LC143(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_kbkdf_zero_output_size(%rip), %rdx
	leaq	.LC144(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_kbkdf_empty_key(%rip), %rdx
	leaq	.LC145(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_kbkdf_1byte_key(%rip), %rdx
	leaq	.LC146(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_kbkdf_8009_prf1(%rip), %rdx
	leaq	.LC147(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_kbkdf_8009_prf2(%rip), %rdx
	leaq	.LC148(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_kbkdf_fixedinfo(%rip), %rdx
	leaq	.LC149(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$0, %ecx
	movl	$1, %edx
	movl	$3, %esi
	movl	$0, %edi
	call	fips_provider_version_ge@PLT
	testl	%eax, %eax
	je	.L380
	leaq	test_kdf_kbkdf_kmac(%rip), %rdx
	leaq	.LC150(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
.L380:
	leaq	test_kdf_get_kdf(%rip), %rdx
	leaq	.LC151(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_tls1_prf(%rip), %rdx
	leaq	.LC152(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_tls1_prf_invalid_digest(%rip), %rdx
	leaq	.LC153(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_tls1_prf_zero_output_size(%rip), %rdx
	leaq	.LC154(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_tls1_prf_empty_secret(%rip), %rdx
	leaq	.LC155(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_tls1_prf_1byte_secret(%rip), %rdx
	leaq	.LC156(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_tls1_prf_empty_seed(%rip), %rdx
	leaq	.LC157(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_tls1_prf_1byte_seed(%rip), %rdx
	leaq	.LC158(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_hkdf(%rip), %rdx
	leaq	.LC159(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_hkdf_invalid_digest(%rip), %rdx
	leaq	.LC160(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_hkdf_zero_output_size(%rip), %rdx
	leaq	.LC161(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_hkdf_empty_key(%rip), %rdx
	leaq	.LC162(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_hkdf_1byte_key(%rip), %rdx
	leaq	.LC163(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_hkdf_empty_salt(%rip), %rdx
	leaq	.LC164(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_hkdf_gettables(%rip), %rdx
	leaq	.LC165(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_hkdf_gettables_expandonly(%rip), %rdx
	leaq	.LC166(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_hkdf_gettables_no_digest(%rip), %rdx
	leaq	.LC167(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_hkdf_derive_set_params_fail(%rip), %rdx
	leaq	.LC168(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_hkdf_set_invalid_mode(%rip), %rdx
	leaq	.LC169(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_hkdf_set_ctx_param_fail(%rip), %rdx
	leaq	.LC170(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_pbkdf2(%rip), %rdx
	leaq	.LC171(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_pbkdf2_small_output(%rip), %rdx
	leaq	.LC172(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_pbkdf2_large_output(%rip), %rdx
	leaq	.LC173(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_pbkdf2_small_salt(%rip), %rdx
	leaq	.LC174(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_pbkdf2_small_iterations(%rip), %rdx
	leaq	.LC175(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_pbkdf2_small_salt_pkcs5(%rip), %rdx
	leaq	.LC176(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_pbkdf2_small_iterations_pkcs5(%rip), %rdx
	leaq	.LC177(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_pbkdf2_invalid_digest(%rip), %rdx
	leaq	.LC178(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_scrypt(%rip), %rdx
	leaq	.LC179(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_ss_hash(%rip), %rdx
	leaq	.LC180(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_ss_hmac(%rip), %rdx
	leaq	.LC181(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_ss_kmac(%rip), %rdx
	leaq	.LC182(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_sshkdf(%rip), %rdx
	leaq	.LC183(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_x963(%rip), %rdx
	leaq	.LC184(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_x942_asn1(%rip), %rdx
	leaq	.LC185(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_krb5kdf(%rip), %rdx
	leaq	.LC186(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_hmac_drbg_settables(%rip), %rdx
	leaq	.LC187(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kdf_hmac_drbg_gettables(%rip), %rdx
	leaq	.LC188(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kbkdf_mac_change(%rip), %rdx
	leaq	.LC189(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 16
	.type	expected.58, @object
	.size	expected.58, 16
expected.58:
	.base64	"jk2TJTDXZaCq6XTDBHNezA=="
	.align 8
	.type	expected.57, @object
	.size	expected.57, 10
expected.57:
	.base64	"KsQ2n1JZlvjeEw=="
	.align 32
	.type	expected.56, @object
	.size	expected.56, 64
expected.56:
	.base64	"/bq+HJ00cgB4VucZDQHp/nxq18vII3gw53N2Y0s3MWIurzDZLiKjiG/xCSedmDDaxyevuUqD7m2DYMvfoswGQA=="
	.data
	.align 32
	.type	z.55, @object
	.size	z.55, 56
z.55:
	.base64	"bb3CPwRUiOQGJ1ewa5664YP8WllG2A25P+xvYuwH43J/ASau0SzksmL0fUjVQof4HUdMfDsYUOk="
	.align 32
	.type	other.54, @object
	.size	other.54, 47
other.54:
	.base64	"obLD1OVDQVZTaWQ8gy6YSdzbpx6aMTnmBuCV3jwmSmbpihZYVM0HmJse4Ow/jb4="
	.section	.rodata
	.align 8
	.type	expected.53, @object
	.size	expected.53, 14
expected.53:
	.base64	"pGLeFqid6EZu9UYLR7g="
	.data
	.align 32
	.type	z.52, @object
	.size	z.52, 66
z.52:
	.base64	"AKpbt5sz44n6WM6twEcZfxTnNxL0Usqp/Eya2zaTSLgVBzkvGobd/bfE/4IxxL0PRORKG1WxQEdHqeLnU/Ve8Fot"
	.align 16
	.type	shared.51, @object
	.size	shared.51, 16
shared.51:
	.base64	"47W0wbDVzx0rOi+ZN4ldMQ=="
	.section	.rodata
	.align 32
	.type	expected.50, @object
	.size	expected.50, 128
expected.50:
	.base64	"RGP4afPMGHabUiZLARK1hY960ypaLZbYz/q/f6czYz1uTdKlmazOs+pUpiF84LUO709rQKXDAlClqO7uIIACJnCJ2/NR8/UCKqlji/HuQZ3qnE/3RaJawnvaM8oIvVbdGlm0EGzy27wKsqqOLvp7F5AtNCdpUc7Mq4f5Zhw+iBY="
	.data
	.align 16
	.type	input_key.49, @object
	.size	input_key.49, 16
input_key.49:
	.base64	"V9Apcpj/2dNd5aR/tL3iSw=="
	.align 8
	.type	constants.48, @object
	.size	constants.48, 15
constants.48:
	.base64	"AAAAApk="
	.base64	"AAAAAqo="
	.base64	"AAAAAlU="
	.local	iv.47
	.comm	iv.47,16,16
	.align 32
	.type	outputs.46, @object
	.size	outputs.46, 48
outputs.46:
	.base64	"0VV3WiCdBfArONQqOJ5aVg=="
	.base64	"ZN+D+FpTLxdXfYw3A1eWqw=="
	.base64	"Pk+98w+4JZxCXLbJbx9GNQ=="
	.align 32
	.type	input_key.45, @object
	.size	input_key.45, 32
input_key.45:
	.base64	"udaCiyBWt75lbYihI7H6xoIUrCtyfs9faa/gxN8qbSw="
	.align 8
	.type	constants.44, @object
	.size	constants.44, 15
constants.44:
	.base64	"AAAAApk="
	.base64	"AAAAAqo="
	.base64	"AAAAAlU="
	.local	iv.43
	.comm	iv.43,16,16
	.align 32
	.type	outputs.42, @object
	.size	outputs.42, 96
outputs.42:
	.base64	"5Gf5qVUrx9MVWmIgr5wZIg7u1P94sNHmoVRJkUYanlA="
	.base64	"QSrvw2KnKF/DlmxqUYHnYFrmdSNbbVSfv8mrZjCkxgQ="
	.base64	"+mJPoOUjmT+jiK79xn5n682MCOigJGsdc7DR3Z/FgrA="
	.type	key.41, @object
	.size	key.41, 1
key.41:
	.ascii	"\001"
	.type	key.40, @object
	.size	key.40, 1
key.40:
	.ascii	"\001"
	.type	key.39, @object
	.size	key.39, 1
key.39:
	.ascii	"\001"
	.type	key.38, @object
	.size	key.38, 1
key.38:
	.ascii	"\001"
	.type	key.37, @object
	.size	key.37, 1
key.37:
	.ascii	"\001"
	.type	key.36, @object
	.size	key.36, 1
key.36:
	.ascii	"\001"
	.align 16
	.type	input_key.35, @object
	.size	input_key.35, 16
input_key.35:
	.base64	"NwXZYIDBdyig6ADqtuDSPA=="
	.align 32
	.type	output.34, @object
	.size	output.34, 32
output.34:
	.base64	"nRiGFvY4Uv6GkVu4QLSohv8+a7D4GbSbiTOT05OFQpU="
	.align 32
	.type	input_key.33, @object
	.size	input_key.33, 32
input_key.33:
	.base64	"bUBNN/r3n53w0zVo0yBmmADrSDZHLqigJtFrcYJGDFI="
	.align 32
	.type	output.32, @object
	.size	output.32, 48
output.32:
	.base64	"mAH2mjaMK/Z15ZUh4XfZoH9n7+HP3o08jW9qAlbjsX2zwbYq0bhVM2DRc2frFRTS"
	.section	.rodata
.LC190:
	.string	"AES128"
	.section	.data.rel.local,"aw"
	.align 8
	.type	cipher.31, @object
	.size	cipher.31, 8
cipher.31:
	.quad	.LC190
	.align 8
	.type	mac.30, @object
	.size	mac.30, 8
mac.30:
	.quad	.LC72
	.align 8
	.type	mode.29, @object
	.size	mode.29, 8
mode.29:
	.quad	.LC81
	.data
	.align 16
	.type	input_key.28, @object
	.size	input_key.28, 16
input_key.28:
	.base64	"wQsVLoyXt34YcE4PC9ODBQ=="
	.align 32
	.type	fixed_input.27, @object
	.size	fixed_input.27, 60
fixed_input.27:
	.base64	"mM1Mu76+FdF9yG5tutgAoty9ZPfHrQ546c+U/9uonQPpfq32xPe4Bsr1KqOPCdDrcdcfSXvMaQa0jTbE"
	.align 16
	.type	output.26, @object
	.size	output.26, 16
output.26:
	.base64	"Jvr2GQitnuiBuDBcIh21Pw=="
	.section	.rodata
.LC191:
	.string	"KMAC256"
	.section	.data.rel.local
	.align 8
	.type	mac.25, @object
	.size	mac.25, 8
mac.25:
	.quad	.LC191
	.data
	.align 32
	.type	input_key.24, @object
	.size	input_key.24, 41
input_key.24:
	.base64	"3YHvyCzd7FHECb2My6+U9l/6e5LxEflAKw1q4F5EkjTwO7r1T+8ZRdo="
	.align 32
	.type	context.23, @object
	.size	context.23, 512
context.23:
	.base64	"gaH+OZHuP9OQToLmEyDsa24UC7qVXQtSjidns+B3BRW9ePboin2bCCAP6Y3WJGfizG1C5mBQIHeJibct91/iedtYC3sCudmw+msLttSV20ZVXxLD8OBuyPT4oWQulnQrxr0isWq8Qd8wMsfOGBRwKu3lxGuKqDb9CnY4RJgK48I6JMtFv8ksGcudbCfeeD4sPTluEVmuT5ED4nuX1gx9nVqlR1dBrWRb9x0a2jo534UND1AVpz1ogXsN8iQkIzfld6Zhvv5LO45PFU/BMMue9Qafuw7y9EO7ZEWjfTu0cEffSqXZL+YlyB1DCur5zMcfii3YlWsWMB2AkKQjFFnR"
	.base64	"WgBIjffqKSPfNSYlIhLETAlpuNYMDnGQbEKQAlPFWu9CZh2vRdUx12E65gb7g3KtguNqfgObN3evjWMowopexjsiqJTARi9z57tyRIUgHdBqUoyxi5YR6/vd9XRJGZPTf2wnGVTdAA+V9hQVhzJUpQKtQVVe3TJiO/xxwVbEavzQ+XfaxSB9rKjrj775Tehtnkw5sxVjzfZG7DrSian6JLQOYm+f8/E8YVe5LNR4T3bP+2pR6B4KM2kWzbdc3wNiF2M3ScO3aAmeItIgljcNE6SWsY0LEofrVyUnCPyQXjN3UGPhjPQMgIl2Y3AKYVmQH8lHuhJ7snpEwz3QOPF/"
	.ascii	"\002\222"
	.align 32
	.type	label.22, @object
	.size	label.22, 54
label.22:
	.base64	"pd4qCvDaWQTM/1DTpdLeozPAJ+3calRUlXh0Dee3ktZk1fsfD4f9ZXmLgYOVQHoZjcrgSpOo"
	.align 32
	.type	output.21, @object
	.size	output.21, 309
output.21:
	.base64	"tWHjfQbVNIB0YRYIb4lvsUOvYSiT2N/2tiNDaOSE8+1QtoFtUPSv8qVQfiW/Bb7nB7CVwwQ4tPnBHpYI9MkFVEq2gZJbNIpF3X2YUR/ZkCNZl6JOQ0nrTobsIDwx/0lVSfX1FnnZHI5usxyvyKs6Ws6xvVlp7sAoPpTSzJGTc2rWtsFCl7ETz/lVNVD8hnWYn/yWsUNBj/wxCTs1InsBlqfweHtXAPLlkjbOZP1lCdi8XIJcTGJbzgm2z02tjt2WsMpSwfQXDi1Ow/mJGiQ9AcgFv30qRs2aZu4FeIgq7zeeclXagnqb6PemdLh0OQPouR+XeLnZNxb9LzHezAbW"
	.base64	"WuvRu4QwFoGwfgSMBmfRigczdkKOh6uQbwjtjejQIAB+PE2kQDcTDwAMtyYDk9C7CNPMqSjC"
	.align 8
	.type	z.20, @object
	.size	z.20, 14
z.20:
	.base64	"t0oUmhYVRvjCCwasTtQ="
	.align 8
	.type	other.19, @object
	.size	other.19, 12
other.19:
	.base64	"NIo3on7xKC9fAg3M"
	.align 16
	.type	salt.18, @object
	.size	salt.18, 16
salt.18:
	.base64	"NjgnHM1ool3CTs3dOe8/iQ=="
	.section	.rodata
	.align 16
	.type	expected.17, @object
	.size	expected.17, 16
expected.17:
	.base64	"RPZ26FwbGou8PTGSGGMcow=="
	.data
	.align 8
	.type	z.16, @object
	.size	z.16, 14
z.16:
	.base64	"t0oUmhYVRvjCCwasTtQ="
	.align 8
	.type	other.15, @object
	.size	other.15, 12
other.15:
	.base64	"NIo3on7xKC9fAg3M"
	.align 16
	.type	salt.14, @object
	.size	salt.14, 16
salt.14:
	.base64	"NjgnHM1ool3CTs3dOe8/iQ=="
	.section	.rodata
	.align 32
	.type	expected.13, @object
	.size	expected.13, 64
expected.13:
	.base64	"6cGEU6BitTvb/LtaNL245ecH7rtd0TRCQ9jPwsLmMy+RvaWG833kimXUxRT976oeZ1Tzc9I44ZWuFX4d6BSYAw=="
	.data
	.align 32
	.type	key.12, @object
	.size	key.12, 133
key.12:
	.base64	"AAAAgQCHXFUc71JqSovhp98n6e01S6ya+3H1PbrpBWedFPn68kacU0V8+Ao2a+J4llumJVJ2yi2fSpfScfceUNip7EYlOmqQasLF5PSLJ6Y84I2AOQpJKqQ7rZ2ILMrCPayIvK2ktNQmo2IIPatlacVMIk3S2HZDqiJ2k+FBrRYwzhMUTg=="
	.align 32
	.type	xcghash.11, @object
	.size	xcghash.11, 32
xcghash.11:
	.base64	"Dmg/yKntfC/wLe8jsnRevJmyZ9qoakqnaXI5CIJT9kI="
	.align 32
	.type	sessid.10, @object
	.size	sessid.10, 32
sessid.10:
	.base64	"Dmg/yKntfC/wLe8jsnRevJmyZ9qoakqnaXI5CIJT9kI="
	.section	.rodata
	.align 8
	.type	expected.9, @object
	.size	expected.9, 8
expected.9:
	.base64	"Qf8urRaD8eY="
	.data
	.align 16
	.type	z.8, @object
	.size	z.8, 20
z.8:
	.base64	"AAECAwQFBgcICQoLDA0ODxAREhM="
	.section	.rodata
	.align 16
	.type	expected.7, @object
	.size	expected.7, 24
expected.7:
	.base64	"oJZhOSN29wRNkFKjl4gyRrZ/Xx72PrX7"
	.data
	.align 16
	.type	key.6, @object
	.size	key.6, 16
key.6:
	.base64	"QiY8bon0/Ci432juCXmfFQ=="
	.type	constant.5, @object
	.size	constant.5, 5
constant.5:
	.base64	"AAAAApk="
	.section	.rodata
	.align 16
	.type	expected.4, @object
	.size	expected.4, 16
expected.4:
	.base64	"NCgKOCvJJ2my2i+e8GaFSw=="
	.align 32
	.type	ent.3, @object
	.size	ent.3, 32
ent.3:
	.zero	32
	.data
	.align 32
	.type	key.2, @object
	.size	key.2, 32
key.2:
	.base64	"PtxrW496rb1xNzK0grj5eShuHqO4+PmcMMiEz+M0m4M="
	.align 32
	.type	info.1, @object
	.size	info.1, 60
info.1:
	.base64	"mOmYi7TMizTXki4caK1pK6Kh2a4VFJVxZ18Xp3rUnoDI0qhegxomRFsfD/RNcIShcga0iWyBEtqtGGBa"
	.section	.rodata
	.align 16
	.type	output.0, @object
	.size	output.0, 16
output.0:
	.base64	"bAN2UpkGdKB4RHMtCtmF+Q=="
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

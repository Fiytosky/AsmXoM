	.file	"evp_test.c"
	.text
	.type	ossl_check_OPENSSL_STRING_type, @function
ossl_check_OPENSSL_STRING_type:
.LFB6:
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
.LFE6:
	.size	ossl_check_OPENSSL_STRING_type, .-ossl_check_OPENSSL_STRING_type
	.type	ossl_check_const_OPENSSL_STRING_sk_type, @function
ossl_check_const_OPENSSL_STRING_sk_type:
.LFB7:
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
.LFE7:
	.size	ossl_check_const_OPENSSL_STRING_sk_type, .-ossl_check_const_OPENSSL_STRING_sk_type
	.type	ossl_check_OPENSSL_STRING_sk_type, @function
ossl_check_OPENSSL_STRING_sk_type:
.LFB8:
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
.LFE8:
	.size	ossl_check_OPENSSL_STRING_sk_type, .-ossl_check_OPENSSL_STRING_sk_type
	.type	ossl_check_OPENSSL_STRING_freefunc_type, @function
ossl_check_OPENSSL_STRING_freefunc_type:
.LFB11:
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
.LFE11:
	.size	ossl_check_OPENSSL_STRING_freefunc_type, .-ossl_check_OPENSSL_STRING_freefunc_type
	.type	ERR_GET_LIB, @function
ERR_GET_LIB:
.LFB449:
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
	je	.L10
	movl	$2, %eax
	jmp	.L11
.L10:
	movq	-8(%rbp), %rax
	shrq	$23, %rax
	movzbl	%al, %eax
.L11:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE449:
	.size	ERR_GET_LIB, .-ERR_GET_LIB
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB451:
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
	je	.L13
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L14
.L13:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L14:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE451:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.type	sk_EVP_TEST_BUFFER_num, @function
sk_EVP_TEST_BUFFER_num:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	sk_EVP_TEST_BUFFER_num, .-sk_EVP_TEST_BUFFER_num
	.type	sk_EVP_TEST_BUFFER_value, @function
sk_EVP_TEST_BUFFER_value:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	sk_EVP_TEST_BUFFER_value, .-sk_EVP_TEST_BUFFER_value
	.type	sk_EVP_TEST_BUFFER_new_null, @function
sk_EVP_TEST_BUFFER_new_null:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OPENSSL_sk_new_null@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	sk_EVP_TEST_BUFFER_new_null, .-sk_EVP_TEST_BUFFER_new_null
	.type	sk_EVP_TEST_BUFFER_push, @function
sk_EVP_TEST_BUFFER_push:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	sk_EVP_TEST_BUFFER_push, .-sk_EVP_TEST_BUFFER_push
	.type	sk_EVP_TEST_BUFFER_pop_free, @function
sk_EVP_TEST_BUFFER_pop_free:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	sk_EVP_TEST_BUFFER_pop_free, .-sk_EVP_TEST_BUFFER_pop_free
	.local	prov_null
	.comm	prov_null,8,8
	.local	libprov
	.comm	libprov,8,8
	.local	libctx
	.comm	libctx,8,8
	.local	private_keys
	.comm	private_keys,8,8
	.local	public_keys
	.comm	public_keys,8,8
	.section	.rodata
.LC0:
	.string	"got"
.LC1:
	.string	"expected"
.LC2:
	.string	"../test/evp_test.c"
	.text
	.type	memory_err_compare, @function
memory_err_compare:
.LFB662:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	6584(%rax), %rax
	testq	%rax, %rax
	je	.L25
	movq	-24(%rbp), %rax
	movq	6584(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L25
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	-64(%rbp)
	pushq	-56(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$110, %esi
	movq	%rax, %rdi
	call	test_mem_ne@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.L26
.L25:
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	-64(%rbp)
	pushq	-56(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$112, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
.L26:
	cmpl	$0, -4(%rbp)
	jne	.L27
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 6568(%rax)
.L27:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	memory_err_compare, .-memory_err_compare
	.local	process_mode_in_place
	.comm	process_mode_in_place,4,4
	.local	propquery
	.comm	propquery,8,8
	.section	.rodata
.LC3:
	.string	"in_place"
.LC4:
	.string	"both"
	.text
	.type	evp_test_process_mode, @function
evp_test_process_mode:
.LFB663:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC3(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L30
	movl	$1, %eax
	jmp	.L31
.L30:
	leaq	.LC4(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L32
	movl	$0, %eax
	jmp	.L31
.L32:
	movl	$-1, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	evp_test_process_mode, .-evp_test_process_mode
	.type	evp_test_buffer_free, @function
evp_test_buffer_free:
.LFB664:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L35
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$145, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$146, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L35:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	evp_test_buffer_free, .-evp_test_buffer_free
	.section	.rodata
	.align 8
.LC5:
	.string	"db = OPENSSL_malloc(sizeof(*db))"
	.align 8
.LC6:
	.string	"*sk = sk_EVP_TEST_BUFFER_new_null()"
	.text
	.type	evp_test_buffer_append, @function
evp_test_buffer_append:
.LFB665:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	leaq	.LC2(%rip), %rax
	movl	$156, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$156, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L43
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	testl	%eax, %eax
	je	.L44
	movq	-8(%rbp), %rax
	movq	$1, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L40
	call	sk_EVP_TEST_BUFFER_new_null
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$164, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L45
.L40:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_TEST_BUFFER_push
	testl	%eax, %eax
	je	.L46
	movl	$1, %eax
	jmp	.L42
.L43:
	nop
	jmp	.L38
.L44:
	nop
	jmp	.L38
.L45:
	nop
	jmp	.L38
.L46:
	nop
.L38:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	evp_test_buffer_free
	movl	$0, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	evp_test_buffer_append, .-evp_test_buffer_append
	.section	.rodata
	.align 8
.LC7:
	.string	"tbuf = OPENSSL_malloc(tbuflen)"
	.text
	.type	evp_test_buffer_ncopy, @function
evp_test_buffer_ncopy:
.LFB666:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jg	.L48
	movl	$0, %eax
	jmp	.L49
.L48:
	cmpq	$0, -64(%rbp)
	je	.L50
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_TEST_BUFFER_num
	testl	%eax, %eax
	jne	.L51
.L50:
	movl	$0, %eax
	jmp	.L49
.L51:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_TEST_BUFFER_num
	leal	-1(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_TEST_BUFFER_value
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -32(%rbp)
	leaq	.LC2(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$193, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$193, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L52
	movl	$0, %eax
	jmp	.L49
.L52:
	movl	$0, -12(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L53
.L54:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	addl	$1, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rax, -8(%rbp)
.L53:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L54
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$198, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	evp_test_buffer_ncopy, .-evp_test_buffer_ncopy
	.type	evp_test_buffer_set_count, @function
evp_test_buffer_set_count:
.LFB667:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L56
	movl	$0, %eax
	jmp	.L57
.L56:
	cmpq	$0, -32(%rbp)
	je	.L58
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_TEST_BUFFER_num
	testl	%eax, %eax
	jne	.L59
.L58:
	movl	$0, %eax
	jmp	.L57
.L59:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_TEST_BUFFER_num
	leal	-1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_TEST_BUFFER_value
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L60
	movl	$0, %eax
	jmp	.L57
.L60:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 24(%rax)
	movl	$1, %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE667:
	.size	evp_test_buffer_set_count, .-evp_test_buffer_set_count
	.type	evp_test_buffer_do, @function
evp_test_buffer_do:
.LFB668:
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
	movl	$0, -4(%rbp)
	jmp	.L62
.L67:
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_TEST_BUFFER_value
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L63
.L66:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jg	.L64
	movl	$0, %eax
	jmp	.L65
.L64:
	addq	$1, -16(%rbp)
.L63:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L66
	addl	$1, -4(%rbp)
.L62:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_TEST_BUFFER_num
	cmpl	%eax, -4(%rbp)
	jl	.L67
	movl	$1, %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	evp_test_buffer_do, .-evp_test_buffer_do
	.section	.rodata
	.align 8
.LC8:
	.string	"ret = p = OPENSSL_malloc(input_len)"
.LC9:
	.string	"Bad escape sequence in file"
	.text
	.type	unescape, @function
unescape:
.LFB669:
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
	cmpq	$0, -48(%rbp)
	jne	.L69
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	leaq	.LC2(%rip), %rax
	movl	$260, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	CRYPTO_zalloc@PLT
	jmp	.L70
.L69:
	leaq	.LC2(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$264, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$264, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L71
	movl	$0, %eax
	jmp	.L70
.L71:
	movq	$0, -16(%rbp)
	jmp	.L72
.L78:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L73
	movq	-48(%rbp), %rax
	subq	$1, %rax
	cmpq	%rax, -16(%rbp)
	je	.L74
	addq	$1, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$110, %al
	je	.L75
.L74:
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$270, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	nop
.L76:
	leaq	.LC2(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$285, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L70
.L75:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$10, (%rax)
	addq	$1, -16(%rbp)
	addq	$1, -40(%rbp)
	jmp	.L77
.L73:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %ecx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L77:
	addq	$1, -16(%rbp)
.L72:
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L78
	movq	-8(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE669:
	.size	unescape, .-unescape
	.section	.rodata
.LC10:
	.string	"NULL"
	.align 8
.LC11:
	.string	"*buf = OPENSSL_hexstr2buf(value, &len)"
.LC12:
	.string	"Can't convert %s"
	.text
	.type	parse_bin, @function
parse_bin:
.LFB670:
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
	leaq	.LC10(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L80
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L88
.L80:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L82
	leaq	.LC2(%rip), %rax
	movl	$311, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L83
	movl	$0, %eax
	jmp	.L88
.L83:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L88
.L82:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	jne	.L84
	addq	$1, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L85
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	je	.L86
.L85:
	movl	$0, %eax
	jmp	.L88
.L86:
	subq	$1, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	unescape
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	jmp	.L88
.L84:
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_hexstr2buf@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$331, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L87
	movq	-24(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$332, %esi
	movl	$0, %eax
	call	test_info@PLT
	call	test_openssl_errors@PLT
	movl	$-1, %eax
	jmp	.L88
.L87:
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	parse_bin, .-parse_bin
	.section	.rodata
.LC13:
	.string	"skipping, '%s' is disabled"
	.align 8
.LC14:
	.string	"mdat = OPENSSL_zalloc(sizeof(*mdat))"
.LC15:
	.string	"%s is fetched"
	.text
	.type	digest_test_init, @function
digest_test_init:
.LFB671:
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
	movq	%rax, %rdi
	call	is_digest_disabled
	testl	%eax, %eax
	je	.L90
	movq	-48(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$369, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-40(%rbp), %rax
	movl	$1, 6552(%rax)
	movl	$1, %eax
	jmp	.L91
.L90:
	movq	propquery(%rip), %rdx
	movq	libctx(%rip), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L92
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L92
	movl	$0, %eax
	jmp	.L91
.L92:
	leaq	.LC2(%rip), %rax
	movl	$377, %edx
	movq	%rax, %rsi
	movl	$56, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$377, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L93
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$0, %eax
	jmp	.L91
.L93:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 6600(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 44(%rax)
	cmpq	$0, -16(%rbp)
	je	.L94
	movq	-48(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$387, %esi
	movl	$0, %eax
	call	test_info@PLT
.L94:
	movl	$1, %eax
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	digest_test_init, .-digest_test_init
	.type	digest_test_cleanup, @function
digest_test_cleanup:
.LFB672:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	evp_test_buffer_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_TEST_BUFFER_pop_free
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$396, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	digest_test_cleanup, .-digest_test_cleanup
	.section	.rodata
.LC16:
	.string	"Input"
.LC17:
	.string	"Output"
.LC18:
	.string	"Count"
.LC19:
	.string	"Ncopy"
.LC20:
	.string	"Padding"
.LC21:
	.string	"XOF"
.LC22:
	.string	"OutputSize"
	.text
	.type	digest_test_parse, @function
digest_test_parse:
.LFB673:
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
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC16(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L97
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_test_buffer_append
	jmp	.L98
.L97:
	leaq	.LC17(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L99
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L98
.L99:
	leaq	.LC18(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L100
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_test_buffer_set_count
	jmp	.L98
.L100:
	leaq	.LC19(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L101
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_test_buffer_ncopy
	jmp	.L98
.L101:
	leaq	.LC20(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L102
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movq	-8(%rbp), %rdx
	movl	%eax, 40(%rdx)
	movq	-8(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	jmp	.L98
.L102:
	leaq	.LC21(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L103
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movq	-8(%rbp), %rdx
	movl	%eax, 44(%rdx)
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	jmp	.L98
.L103:
	leaq	.LC22(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L104
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L105
	movl	$-1, %eax
	jmp	.L98
.L105:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movl	$1, %eax
	jmp	.L98
.L104:
	movl	$0, %eax
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	digest_test_parse, .-digest_test_parse
	.type	digest_update_fn, @function
digest_update_fn:
.LFB674:
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
	call	EVP_DigestUpdate@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	digest_update_fn, .-digest_update_fn
	.section	.rodata
.LC23:
	.string	"mctx"
.LC24:
	.string	"DIGESTFINALXOF_ERROR"
.LC25:
	.string	"touch"
.LC26:
	.string	"\"touch\""
.LC27:
	.string	"dont"
	.text
	.type	test_duplicate_md_ctx, @function
test_duplicate_md_ctx:
.LFB675:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1668640628, -6(%rbp)
	movw	$104, -2(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$438, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L109
	movl	$0, %eax
	jmp	.L113
.L109:
	leaq	-6(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinalXOF@PLT
	testl	%eax, %eax
	jne	.L111
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-24(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	movq	%rdx, 6568(%rax)
	movl	$0, %eax
	jmp	.L113
.L111:
	leaq	.LC25(%rip), %rdi
	leaq	-6(%rbp), %rsi
	leaq	.LC26(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$445, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L112
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-24(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	movq	%rdx, 6568(%rax)
	movl	$0, %eax
	jmp	.L113
.L112:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	$1, %eax
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	test_duplicate_md_ctx, .-test_duplicate_md_ctx
	.section	.rodata
.LC28:
	.string	"TEST_FAILURE"
.LC29:
	.string	"mctx = EVP_MD_CTX_new()"
.LC30:
	.string	"xoflen"
.LC31:
	.string	"size"
.LC32:
	.string	"pad-type"
.LC33:
	.string	"DIGESTINIT_ERROR"
.LC34:
	.string	"DIGESTUPDATE_ERROR"
.LC35:
	.string	"mctx_cpy = EVP_MD_CTX_new()"
	.align 8
.LC36:
	.string	"EVP_MD_CTX_copy(mctx_cpy, mctx)"
.LC37:
	.string	"DIGESTFINAL_ERROR"
.LC38:
	.string	"got_len"
.LC39:
	.string	"expected->output_len"
.LC40:
	.string	"DIGEST_LENGTH_MISMATCH"
.LC41:
	.string	"DIGEST_MISMATCH"
	.align 8
.LC42:
	.string	"inbuf = sk_EVP_TEST_BUFFER_value(expected->input, 0)"
	.align 8
.LC43:
	.string	"EVP_Q_digest(libctx, EVP_MD_get0_name(expected->fetched_digest), NULL, inbuf->buf, inbuf->buflen, got, &size)"
.LC44:
	.string	"expected->output"
.LC45:
	.string	"EVP_Q_digest failed"
	.text
	.type	digest_test_run, @function
digest_test_run:
.LFB676:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$304, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -28(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-264(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, 6568(%rax)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$466, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L133
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movl	$64, %edx
	cmpq	%rdx, %rax
	cmovb	%rdx, %rax
	leaq	.LC2(%rip), %rcx
	movl	$469, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$471, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L134
	movq	-48(%rbp), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	jle	.L118
	orl	$1, -28(%rbp)
	movq	-48(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-320(%rbp), %rax
	leaq	.LC30(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-288(%rbp), %rax
	movq	%rax, 32(%rbx)
.L118:
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L119
	movq	-48(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-320(%rbp), %rax
	leaq	.LC31(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-288(%rbp), %rax
	movq	%rax, 32(%rbx)
.L119:
	movq	-48(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jle	.L120
	movq	-48(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-320(%rbp), %rax
	leaq	.LC32(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-288(%rbp), %rax
	movq	%rax, 32(%rbx)
.L120:
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-288(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	leaq	-256(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex2@PLT
	testl	%eax, %eax
	jne	.L121
	movq	-264(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L116
.L121:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	digest_update_fn(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_test_buffer_do
	testl	%eax, %eax
	jne	.L122
	movq	-264(%rbp), %rax
	leaq	.LC34(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L116
.L122:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_flags@PLT
	andl	$2, %eax
	shrq	%rax
	andl	$1, %eax
	movzbl	%al, %eax
	orl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L123
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$502, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L135
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$505, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L125
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	jmp	.L116
.L125:
	movq	-64(%rbp), %rdx
	movq	-264(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_duplicate_md_ctx
	testl	%eax, %eax
	je	.L136
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_dup@PLT
	movq	%rax, %rdx
	movq	-264(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_duplicate_md_ctx
	testl	%eax, %eax
	je	.L137
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinalXOF@PLT
	testl	%eax, %eax
	jne	.L128
	movq	-264(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L116
.L123:
	leaq	-76(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal@PLT
	testl	%eax, %eax
	jne	.L128
	movq	-264(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L116
.L128:
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movl	%eax, %esi
	leaq	.LC38(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$526, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L129
	movq	-264(%rbp), %rax
	leaq	.LC40(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L116
.L129:
	movl	-76(%rbp), %eax
	movl	%eax, %r8d
	movq	-48(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rdi
	leaq	.LC41(%rip), %rsi
	movq	-264(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	memory_err_compare
	testl	%eax, %eax
	je	.L138
	movq	-264(%rbp), %rax
	movq	$0, 6568(%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	sk_EVP_TEST_BUFFER_num
	cmpl	$1, %eax
	jne	.L139
	cmpl	$0, -28(%rbp)
	jne	.L139
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_EVP_TEST_BUFFER_value
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC42(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$541, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L139
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L139
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-72(%rbp), %rax
	movq	8(%rax), %r12
	movq	-72(%rbp), %rax
	movq	(%rax), %rbx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rsi
	movq	libctx(%rip), %rax
	movq	-24(%rbp), %rcx
	subq	$8, %rsp
	leaq	-88(%rbp), %rdx
	pushq	%rdx
	movq	%rcx, %r9
	movq	%r12, %r8
	movq	%rbx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_Q_digest@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$544, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L131
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-88(%rbp), %r9
	movq	-24(%rbp), %r8
	leaq	.LC44(%rip), %rcx
	leaq	.LC0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$548, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L139
.L131:
	movq	-264(%rbp), %rax
	leaq	.LC45(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L116
.L133:
	nop
	jmp	.L116
.L134:
	nop
	jmp	.L116
.L135:
	nop
	jmp	.L116
.L136:
	nop
	jmp	.L116
.L137:
	nop
	jmp	.L116
.L138:
	nop
	jmp	.L116
.L139:
	nop
.L116:
	leaq	.LC2(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$556, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	$1, %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE676:
	.size	digest_test_run, .-digest_test_run
	.section	.rodata
.LC46:
	.string	"Digest"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	digest_test_method, @object
	.size	digest_test_method, 40
digest_test_method:
	.quad	.LC46
	.quad	digest_test_init
	.quad	digest_test_cleanup
	.quad	digest_test_parse
	.quad	digest_test_run
	.section	.rodata
.LC47:
	.string	"HMAC"
	.align 8
.LC48:
	.string	"skipping, '%s' is not available"
	.align 8
.LC49:
	.string	"cdat = OPENSSL_zalloc(sizeof(*cdat))"
	.text
	.type	cipher_test_init, @function
cipher_test_init:
.LFB677:
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
	movq	%rax, %rdi
	call	is_cipher_disabled
	testl	%eax, %eax
	je	.L141
	movq	-40(%rbp), %rax
	movl	$1, 6552(%rax)
	movq	-48(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$613, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, %eax
	jmp	.L142
.L141:
	call	ERR_set_mark@PLT
	movq	propquery(%rip), %rdx
	movq	libctx(%rip), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L143
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_cipherbyname@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L143
	leaq	.LC47(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L144
	call	ERR_pop_to_mark@PLT
	movq	-40(%rbp), %rax
	movl	$1, 6552(%rax)
	movq	-48(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$624, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, %eax
	jmp	.L142
.L144:
	call	ERR_clear_last_mark@PLT
	movl	$0, %eax
	jmp	.L142
.L143:
	call	ERR_clear_last_mark@PLT
	leaq	.LC2(%rip), %rax
	movl	$632, %edx
	movq	%rax, %rsi
	movl	$240, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC49(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$632, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L145
	movl	$0, %eax
	jmp	.L142
.L145:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	$-1, 16(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$2097152, %eax
	testq	%rax, %rax
	je	.L146
	cmpl	$0, -28(%rbp)
	je	.L147
	movl	-28(%rbp), %eax
	jmp	.L148
.L147:
	movl	$-1, %eax
.L148:
	movq	-24(%rbp), %rdx
	movl	%eax, 20(%rdx)
	jmp	.L149
.L146:
	movq	-24(%rbp), %rax
	movl	$0, 20(%rax)
.L149:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 6600(%rax)
	cmpq	$0, -16(%rbp)
	je	.L150
	movq	-48(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$646, %esi
	movl	$0, %eax
	call	test_info@PLT
.L150:
	movl	$1, %eax
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	cipher_test_init, .-cipher_test_init
	.type	cipher_test_cleanup, @function
cipher_test_cleanup:
.LFB678:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$655, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$656, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$657, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$658, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$659, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, -4(%rbp)
	jmp	.L152
.L153:
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$14, %rdx
	movq	(%rax,%rdx,8), %rax
	leaq	.LC2(%rip), %rcx
	movl	$661, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addl	$1, -4(%rbp)
.L152:
	cmpl	$3, -4(%rbp)
	jle	.L153
	movq	-16(%rbp), %rax
	movq	184(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$662, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	216(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$663, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	cipher_test_cleanup, .-cipher_test_cleanup
	.section	.rodata
.LC50:
	.string	"Key"
.LC51:
	.string	"Rounds"
.LC52:
	.string	"IV"
.LC53:
	.string	"NextIV"
.LC54:
	.string	"Plaintext"
.LC55:
	.string	"Ciphertext"
.LC56:
	.string	"KeyBits"
.LC57:
	.string	"TLSAAD"
.LC58:
	.string	"AAD"
.LC59:
	.string	"Tag"
.LC60:
	.string	"SetTagLate"
.LC61:
	.string	"TRUE"
.LC62:
	.string	"FALSE"
.LC63:
	.string	"MACKey"
.LC64:
	.string	"TLSVersion"
.LC65:
	.string	"Operation"
.LC66:
	.string	"ENCRYPT"
.LC67:
	.string	"DECRYPT"
.LC68:
	.string	"CTSMode"
.LC69:
	.string	"XTSStandard"
	.text
	.type	cipher_test_parse, @function
cipher_test_parse:
.LFB679:
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
	movq	-40(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC50(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L155
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L156
.L155:
	leaq	.LC51(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L157
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L158
	movl	$-1, %eax
	jmp	.L156
.L158:
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 64(%rax)
	movl	$1, %eax
	jmp	.L156
.L157:
	leaq	.LC52(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L159
	movq	-16(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L156
.L159:
	leaq	.LC53(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L160
	movq	-16(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	56(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L156
.L160:
	leaq	.LC54(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L161
	movq	-16(%rbp), %rax
	leaq	88(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L156
.L161:
	leaq	.LC55(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L162
	movq	-16(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	96(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L156
.L162:
	leaq	.LC56(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L163
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L164
	movl	$-1, %eax
	jmp	.L156
.L164:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movl	$1, %eax
	jmp	.L156
.L163:
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L165
	movl	$0, -8(%rbp)
	leaq	.LC57(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L166
	movl	$1, -8(%rbp)
	movq	-16(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 176(%rax)
.L166:
	leaq	.LC58(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L167
	cmpl	$0, -8(%rbp)
	je	.L168
.L167:
	movl	$0, -4(%rbp)
	jmp	.L169
.L171:
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$14, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	jne	.L170
	movl	-4(%rbp), %eax
	cltq
	addq	$18, %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	0(,%rax,8), %rcx
	movq	-16(%rbp), %rax
	addq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L156
.L170:
	addl	$1, -4(%rbp)
.L169:
	cmpl	$3, -4(%rbp)
	jle	.L171
	movl	$-1, %eax
	jmp	.L156
.L168:
	leaq	.LC59(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L172
	movq	-16(%rbp), %rax
	leaq	200(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	184(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L156
.L172:
	leaq	.LC60(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L173
	leaq	.LC61(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L174
	movq	-16(%rbp), %rax
	movl	$1, 208(%rax)
	jmp	.L175
.L174:
	leaq	.LC62(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L176
	movq	-16(%rbp), %rax
	movl	$0, 208(%rax)
	jmp	.L175
.L176:
	movl	$-1, %eax
	jmp	.L156
.L175:
	movl	$1, %eax
	jmp	.L156
.L173:
	leaq	.LC63(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L177
	movq	-16(%rbp), %rax
	leaq	224(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	216(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L156
.L177:
	leaq	.LC64(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L165
	leaq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 180(%rax)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L178
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L178
	movl	$1, %eax
	jmp	.L156
.L178:
	movl	$0, %eax
	jmp	.L156
.L165:
	leaq	.LC65(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L180
	leaq	.LC66(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L181
	movq	-16(%rbp), %rax
	movl	$1, 16(%rax)
	jmp	.L182
.L181:
	leaq	.LC67(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L183
	movq	-16(%rbp), %rax
	movl	$0, 16(%rax)
	jmp	.L182
.L183:
	movl	$-1, %eax
	jmp	.L156
.L182:
	movl	$1, %eax
	jmp	.L156
.L180:
	leaq	.LC68(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L184
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 192(%rax)
	movl	$1, %eax
	jmp	.L156
.L184:
	leaq	.LC69(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L185
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 232(%rax)
	movl	$1, %eax
	jmp	.L156
.L185:
	movl	$0, %eax
.L156:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE679:
	.size	cipher_test_parse, .-cipher_test_parse
	.section	.rodata
	.align 8
.LC70:
	.string	"ctx_base = EVP_CIPHER_CTX_new()"
.LC71:
	.string	"ctx = EVP_CIPHER_CTX_new()"
.LC72:
	.string	"CIPHERINIT_ERROR"
.LC73:
	.string	"cts_mode"
.LC74:
	.string	"INVALID_CTS_MODE"
.LC75:
	.string	"INVALID_IV_LENGTH"
.LC76:
	.string	"TAG_LENGTH_SET_ERROR"
.LC77:
	.string	"TAG_SET_ERROR"
.LC78:
	.string	"INVALID_ROUNDS"
.LC79:
	.string	"INVALID_KEY_LENGTH"
.LC80:
	.string	"INVALID KEY BITS"
.LC81:
	.string	"KEY_SET_ERROR"
	.align 8
.LC82:
	.string	"EVP_CIPHER_CTX_get_updated_iv(ctx_base, iv, sizeof(iv))"
.LC83:
	.string	"iv"
.LC84:
	.string	"expected->iv"
.LC85:
	.string	"INVALID_IV"
	.align 8
.LC86:
	.string	"Doing a copy of Cipher %s Fails!\n"
	.align 8
.LC87:
	.string	"Allowing copy fail as an old fips provider is in use."
	.align 8
.LC88:
	.string	"Doing a dup of Cipher %s Fails!\n"
	.align 8
.LC89:
	.string	"Allowing dup fail as an old fips provider is in use."
.LC90:
	.string	"SET_MAC_KEY_ERROR"
.LC91:
	.string	"tls-version"
.LC92:
	.string	"SET_TLS_VERSION_ERROR"
	.align 8
.LC93:
	.string	"CCM_PLAINTEXT_LENGTH_SET_ERROR"
.LC94:
	.string	"AAD_SET_ERROR"
.LC95:
	.string	"tlsaad"
.LC96:
	.string	"TLS1_AAD_ERROR"
.LC97:
	.string	"xts_standard"
.LC98:
	.string	"SET_XTS_STANDARD_ERROR"
.LC99:
	.string	"CIPHERUPDATE_ERROR"
.LC100:
	.string	"CIPHERFINAL_ERROR"
.LC101:
	.string	"AES-128-CBC-HMAC-SHA1"
.LC102:
	.string	"AES-256-CBC-HMAC-SHA1"
.LC103:
	.string	"VALUE_MISMATCH"
.LC104:
	.string	"sizeof(rtag)"
.LC105:
	.string	"expected->tag_len"
.LC106:
	.string	"TAG_LENGTH_INTERNAL_ERROR"
.LC107:
	.string	"TAG_RETRIEVE_ERROR"
.LC108:
	.string	"TAG_VALUE_MISMATCH"
	.align 8
.LC109:
	.string	"EVP_CIPHER_CTX_get_updated_iv(ctx, iv, sizeof(iv))"
.LC110:
	.string	"expected->next_iv"
.LC111:
	.string	"INVALID_NEXT_IV"
	.text
	.type	cipher_test_enc, @function
cipher_test_enc:
.LFB680:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$392, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -312(%rbp)
	movl	%esi, -316(%rbp)
	movq	%rdx, -328(%rbp)
	movq	%rcx, -336(%rbp)
	movl	%r8d, -320(%rbp)
	movl	%r9d, -340(%rbp)
	movq	-312(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	libctx(%rip), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	fips_provider_version_ge@PLT
	movl	%eax, -108(%rbp)
	movq	-312(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, 6568(%rax)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC70(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$762, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L265
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC71(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$764, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L266
	movq	-80(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_flags@PLT
	cmpl	$0, -316(%rbp)
	je	.L190
	movq	-104(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-104(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.L191
.L190:
	movq	-104(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-104(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -56(%rbp)
.L191:
	cmpl	$1, -340(%rbp)
	jne	.L192
	movq	-328(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	addq	$64, %rax
	leaq	.LC2(%rip), %rcx
	movl	$780, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L267
	movq	-40(%rbp), %rdx
	movq	-328(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	%rax, -24(%rbp)
	jmp	.L194
.L192:
	movq	-328(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	andl	$15, %eax
	movq	-336(%rbp), %rdx
	subq	%rax, %rdx
	leaq	16(%rdx), %rax
	movq	%rax, -336(%rbp)
	movq	-328(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-336(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	addq	$64, %rax
	leaq	.LC2(%rip), %rcx
	movl	$794, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L268
	movq	-328(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-336(%rbp), %rax
	addq	%rdx, %rax
	leaq	64(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	%rax, -24(%rbp)
.L194:
	movq	-104(%rbp), %rax
	movq	(%rax), %rsi
	movl	-316(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L196
	movq	-312(%rbp), %rax
	leaq	.LC72(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L188
.L196:
	movq	-104(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L197
	movq	-104(%rbp), %rax
	movq	192(%rax), %rdx
	leaq	-400(%rbp), %rax
	leaq	.LC73(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, -304(%rbp)
	movq	%rdx, -296(%rbp)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -272(%rbp)
	leaq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, -264(%rbp)
	movq	%rdx, -256(%rbp)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -248(%rbp)
	movq	%rdx, -240(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -232(%rbp)
	leaq	-304(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_params@PLT
	testl	%eax, %eax
	jne	.L197
	movq	-312(%rbp), %rax
	leaq	.LC74(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L188
.L197:
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L199
	movq	-104(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L200
	movq	-104(%rbp), %rax
	movq	72(%rax), %rax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	$0, %ecx
	movl	$9, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L199
	movq	-312(%rbp), %rax
	leaq	.LC75(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L188
.L200:
	movq	-104(%rbp), %rax
	movq	72(%rax), %rbx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_iv_length@PLT
	cltq
	cmpq	%rax, %rbx
	je	.L199
	movq	-312(%rbp), %rax
	leaq	.LC75(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L188
.L199:
	movq	-104(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L201
	movq	-104(%rbp), %rax
	movl	176(%rax), %eax
	testl	%eax, %eax
	jne	.L201
	cmpl	$0, -316(%rbp)
	jne	.L202
	movq	-104(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$65539, %eax
	je	.L202
	movq	-104(%rbp), %rax
	movl	208(%rax), %eax
	testl	%eax, %eax
	je	.L203
.L202:
	movq	-312(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	movq	%rdx, 6568(%rax)
	movq	$0, -96(%rbp)
	jmp	.L204
.L203:
	movq	-312(%rbp), %rax
	leaq	.LC77(%rip), %rdx
	movq	%rdx, 6568(%rax)
	movq	-104(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -96(%rbp)
.L204:
	cmpq	$0, -96(%rbp)
	jne	.L205
	movq	-104(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$6, %eax
	je	.L201
.L205:
	movq	-104(%rbp), %rax
	movq	200(%rax), %rax
	movl	%eax, %esi
	movq	-96(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$17, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jle	.L269
.L201:
	movq	-104(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L206
	movq	-104(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, -112(%rbp)
	movl	-112(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	$0, %ecx
	movl	$5, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L206
	movq	-312(%rbp), %rax
	leaq	.LC78(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L188
.L206:
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_key_length@PLT
	testl	%eax, %eax
	jne	.L207
	movq	-312(%rbp), %rax
	leaq	.LC79(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L188
.L207:
	movq	-104(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L208
	movq	-104(%rbp), %rax
	movq	40(%rax), %rax
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	$0, %ecx
	movl	$3, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L208
	movq	-312(%rbp), %rax
	leaq	.LC80(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L188
.L208:
	movq	-104(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-80(%rbp), %rax
	movl	$-1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L209
	movq	-312(%rbp), %rax
	leaq	.LC81(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L188
.L209:
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L210
	leaq	-304(%rbp), %rcx
	movq	-80(%rbp), %rax
	movl	$128, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_updated_iv@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC82(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$879, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L211
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$16, %eax
	testq	%rax, %rax
	jne	.L210
	movq	-104(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-104(%rbp), %rax
	movq	72(%rax), %r8
	movq	-104(%rbp), %rax
	movq	48(%rax), %rdi
	leaq	.LC83(%rip), %rcx
	leaq	.LC84(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	leaq	-304(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$881, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L210
.L211:
	movq	-312(%rbp), %rax
	leaq	.LC85(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L188
.L210:
	call	ERR_set_mark@PLT
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_copy@PLT
	testl	%eax, %eax
	jne	.L213
	cmpl	$0, -108(%rbp)
	je	.L214
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, %rcx
	leaq	.LC86(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$892, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors_fp@PLT
	jmp	.L188
.L214:
	leaq	.LC87(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$897, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L215
.L213:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	$0, -80(%rbp)
.L215:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_dup@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L216
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-128(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L217
.L216:
	cmpl	$0, -108(%rbp)
	je	.L218
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, %rcx
	leaq	.LC88(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$912, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors_fp@PLT
	jmp	.L188
.L218:
	leaq	.LC89(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$917, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
.L217:
	call	ERR_pop_to_mark@PLT
	movq	-104(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	je	.L219
	movq	-104(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	224(%rax), %rax
	movl	%eax, %esi
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$23, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L219
	movq	-312(%rbp), %rax
	leaq	.LC90(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L188
.L219:
	movq	-104(%rbp), %rax
	movl	180(%rax), %eax
	testl	%eax, %eax
	je	.L220
	movq	-104(%rbp), %rax
	leaq	180(%rax), %rdx
	leaq	-400(%rbp), %rax
	leaq	.LC91(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, -304(%rbp)
	movq	%rdx, -296(%rbp)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -272(%rbp)
	leaq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, -264(%rbp)
	movq	%rdx, -256(%rbp)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -248(%rbp)
	movq	%rdx, -240(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -232(%rbp)
	leaq	-304(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_params@PLT
	testl	%eax, %eax
	jne	.L220
	movq	-312(%rbp), %rax
	leaq	.LC92(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L188
.L220:
	movq	-104(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$7, %eax
	jne	.L222
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	leaq	-140(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	jne	.L222
	movq	-312(%rbp), %rax
	leaq	.LC93(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L188
.L222:
	movq	-104(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L223
	movq	-104(%rbp), %rax
	movl	176(%rax), %eax
	testl	%eax, %eax
	jne	.L223
	movq	-312(%rbp), %rax
	leaq	.LC94(%rip), %rdx
	movq	%rdx, 6568(%rax)
	cmpl	$0, -320(%rbp)
	jne	.L224
	movl	$0, -72(%rbp)
	jmp	.L225
.L227:
	movq	-104(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$18, %rdx
	movq	(%rax,%rdx,8), %rax
	movl	%eax, %esi
	movq	-104(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$14, %rdx
	movq	(%rax,%rdx,8), %rcx
	leaq	-144(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	%esi, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	je	.L270
	addl	$1, -72(%rbp)
.L225:
	movq	-104(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$14, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	jne	.L227
	jmp	.L223
.L224:
	movl	$0, -72(%rbp)
	jmp	.L228
.L234:
	movq	-104(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$18, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L229
	movq	-104(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$14, %rdx
	movq	(%rax,%rdx,8), %rcx
	leaq	-144(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	je	.L271
	addq	$1, -64(%rbp)
.L229:
	movq	-104(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$18, %rdx
	movq	(%rax,%rdx,8), %rax
	cmpq	$2, %rax
	jbe	.L231
	movq	-104(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$18, %rdx
	movq	(%rax,%rdx,8), %rax
	subl	$2, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$14, %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-144(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	%esi, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	je	.L272
	movq	-104(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$18, %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	subq	$2, %rax
	movq	%rax, -64(%rbp)
.L231:
	movq	-104(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$18, %rdx
	movq	(%rax,%rdx,8), %rax
	cmpq	$1, %rax
	jbe	.L233
	movq	-104(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$14, %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-144(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	je	.L273
.L233:
	addl	$1, -72(%rbp)
.L228:
	movq	-104(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$14, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	jne	.L234
.L223:
	movq	-104(%rbp), %rax
	movl	176(%rax), %eax
	testl	%eax, %eax
	je	.L235
	movq	-104(%rbp), %rax
	movq	144(%rax), %rsi
	movq	-104(%rbp), %rax
	movq	112(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movl	$986, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L274
	movq	-104(%rbp), %rax
	movq	144(%rax), %rcx
	leaq	-400(%rbp), %rax
	movq	-136(%rbp), %rdx
	leaq	.LC95(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, -304(%rbp)
	movq	%rdx, -296(%rbp)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -272(%rbp)
	leaq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, -264(%rbp)
	movq	%rdx, -256(%rbp)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -248(%rbp)
	movq	%rdx, -240(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -232(%rbp)
	leaq	-304(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_params@PLT
	testl	%eax, %eax
	jne	.L238
	leaq	.LC2(%rip), %rcx
	movq	-136(%rbp), %rax
	movl	$994, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-312(%rbp), %rax
	leaq	.LC96(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L188
.L238:
	leaq	.LC2(%rip), %rcx
	movq	-136(%rbp), %rax
	movl	$998, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L239
.L235:
	cmpl	$0, -316(%rbp)
	jne	.L239
	movq	-104(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$65539, %eax
	je	.L240
	movq	-104(%rbp), %rax
	movl	208(%rax), %eax
	testl	%eax, %eax
	je	.L239
.L240:
	movq	-104(%rbp), %rax
	movq	184(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	200(%rax), %rax
	movl	%eax, %esi
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$17, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L239
	movq	-312(%rbp), %rax
	leaq	.LC77(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L188
.L239:
	movq	-104(%rbp), %rax
	movq	232(%rax), %rax
	testq	%rax, %rax
	je	.L241
	movq	-104(%rbp), %rax
	movq	232(%rax), %rdx
	leaq	-400(%rbp), %rax
	leaq	.LC97(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, -304(%rbp)
	movq	%rdx, -296(%rbp)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -272(%rbp)
	leaq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, -264(%rbp)
	movq	%rdx, -256(%rbp)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -248(%rbp)
	movq	%rdx, -240(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -232(%rbp)
	leaq	-304(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_params@PLT
	testl	%eax, %eax
	jne	.L241
	movq	-312(%rbp), %rax
	leaq	.LC98(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L188
.L241:
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_padding@PLT
	movq	-312(%rbp), %rax
	leaq	.LC99(%rip), %rdx
	movq	%rdx, 6568(%rax)
	movl	$0, -140(%rbp)
	cmpl	$0, -320(%rbp)
	jne	.L243
	movq	-48(%rbp), %rax
	movl	%eax, %edi
	movq	-40(%rbp), %rdx
	movq	-328(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-24(%rbp), %rcx
	leaq	-140(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	jne	.L244
	jmp	.L188
.L243:
	cmpq	$0, -48(%rbp)
	je	.L245
	movq	-40(%rbp), %rdx
	movq	-328(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-24(%rbp), %rcx
	leaq	-144(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	je	.L275
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	addq	$1, -24(%rbp)
	subq	$1, -48(%rbp)
.L245:
	cmpq	$1, -48(%rbp)
	jbe	.L247
	movq	-48(%rbp), %rax
	subl	$1, %eax
	movl	%eax, %edi
	movl	-140(%rbp), %eax
	movslq	%eax, %rdx
	movq	-328(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-24(%rbp), %rcx
	leaq	-144(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	je	.L276
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movq	-48(%rbp), %rax
	subq	$1, %rax
	addq	%rax, -24(%rbp)
	movq	$1, -48(%rbp)
.L247:
	cmpq	$0, -48(%rbp)
	je	.L244
	movl	-140(%rbp), %eax
	movslq	%eax, %rdx
	movq	-328(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-24(%rbp), %rcx
	leaq	-144(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	je	.L277
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
.L244:
	movl	-140(%rbp), %eax
	movslq	%eax, %rdx
	movq	-328(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-148(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CipherFinal_ex@PLT
	testl	%eax, %eax
	jne	.L250
	movq	-312(%rbp), %rax
	leaq	.LC100(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L188
.L250:
	cmpl	$0, -316(%rbp)
	jne	.L251
	movq	-104(%rbp), %rax
	movl	176(%rax), %eax
	testl	%eax, %eax
	je	.L251
	movq	-104(%rbp), %rax
	movl	180(%rax), %eax
	cmpl	$769, %eax
	jle	.L252
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC101(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_is_a@PLT
	testl	%eax, %eax
	jne	.L253
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC102(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_is_a@PLT
	testl	%eax, %eax
	je	.L252
.L253:
	movl	-140(%rbp), %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rax
	movq	72(%rax), %rax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -140(%rbp)
	movq	-104(%rbp), %rax
	movq	72(%rax), %rax
	addq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	72(%rax), %rax
	addq	%rax, -328(%rbp)
.L252:
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movl	-140(%rbp), %edx
	movl	-148(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, %ecx
	jle	.L251
	movl	-140(%rbp), %edx
	movl	-148(%rbp), %eax
	addl	%edx, %eax
	cltq
	movq	%rax, -56(%rbp)
.L251:
	movl	-140(%rbp), %edx
	movl	-148(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdi
	movq	-40(%rbp), %rdx
	movq	-328(%rbp), %rax
	leaq	(%rdx,%rax), %r8
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	.LC103(%rip), %rsi
	movq	-312(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	memory_err_compare
	testl	%eax, %eax
	je	.L278
	cmpl	$0, -316(%rbp)
	je	.L255
	movq	-104(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L255
	movq	-104(%rbp), %rax
	movl	176(%rax), %eax
	testl	%eax, %eax
	jne	.L255
	movq	-104(%rbp), %rax
	movq	200(%rax), %rsi
	leaq	.LC104(%rip), %rcx
	leaq	.LC105(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$16, %r9d
	movq	%rsi, %r8
	movl	$1071, %esi
	movq	%rax, %rdi
	call	test_size_t_le@PLT
	testl	%eax, %eax
	jne	.L256
	movq	-312(%rbp), %rax
	leaq	.LC106(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L188
.L256:
	movq	-104(%rbp), %rax
	movq	200(%rax), %rax
	movl	%eax, %esi
	leaq	-176(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L258
	movq	-312(%rbp), %rax
	leaq	.LC107(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L188
.L258:
	movq	-104(%rbp), %rax
	movq	200(%rax), %r8
	movq	-104(%rbp), %rax
	movq	200(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	184(%rax), %rdx
	leaq	-176(%rbp), %rdi
	leaq	.LC108(%rip), %rsi
	movq	-312(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	memory_err_compare
	testl	%eax, %eax
	je	.L279
.L255:
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L260
	leaq	-304(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$128, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_updated_iv@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC109(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1089, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L261
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$16, %eax
	testq	%rax, %rax
	jne	.L260
	movq	-104(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-104(%rbp), %rax
	movq	72(%rax), %r8
	movq	-104(%rbp), %rax
	movq	56(%rax), %rdi
	leaq	.LC83(%rip), %rcx
	leaq	.LC110(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	leaq	-304(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1091, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L260
.L261:
	movq	-312(%rbp), %rax
	leaq	.LC111(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L188
.L260:
	movq	-312(%rbp), %rax
	movq	$0, 6568(%rax)
	movl	$1, -68(%rbp)
	jmp	.L188
.L265:
	nop
	jmp	.L188
.L266:
	nop
	jmp	.L188
.L267:
	nop
	jmp	.L188
.L268:
	nop
	jmp	.L188
.L269:
	nop
	jmp	.L188
.L270:
	nop
	jmp	.L188
.L271:
	nop
	jmp	.L188
.L272:
	nop
	jmp	.L188
.L273:
	nop
	jmp	.L188
.L274:
	nop
	jmp	.L188
.L275:
	nop
	jmp	.L188
.L276:
	nop
	jmp	.L188
.L277:
	nop
	jmp	.L188
.L278:
	nop
	jmp	.L188
.L279:
	nop
.L188:
	leaq	.LC2(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1101, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L263
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
.L263:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	cipher_test_enc, .-cipher_test_enc
	.type	cipher_test_valid_fragmentation, @function
cipher_test_valid_fragmentation:
.LFB681:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$7, %eax
	je	.L281
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$2, %eax
	je	.L281
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$-1, %eax
	jne	.L282
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	testl	%eax, %eax
	je	.L281
.L282:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$16384, %eax
	testq	%rax, %rax
	jne	.L281
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$65540, %eax
	je	.L281
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$65541, %eax
	je	.L281
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$65537, %eax
	je	.L281
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$65538, %eax
	je	.L281
	movl	$1, %eax
	jmp	.L284
.L281:
	movl	$0, %eax
.L284:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	cipher_test_valid_fragmentation, .-cipher_test_valid_fragmentation
	.section	.rodata
.LC112:
	.string	"RUNNING TEST FOR CIPHER %s\n"
.LC113:
	.string	"NO_KEY"
.LC114:
	.string	"NO_IV"
.LC115:
	.string	"NO_TAG"
.LC116:
	.string	""
.LC117:
	.string	"not "
.LC118:
	.string	"misaligned"
.LC119:
	.string	"aligned"
.LC120:
	.string	"%s in-place, %sfragmented"
	.align 8
.LC121:
	.string	"%s output and %s input, %sfragmented"
	.text
	.type	cipher_test_run, @function
cipher_test_run:
.LFB682:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, %rcx
	leaq	.LC112(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1131, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L286
	movq	-56(%rbp), %rax
	leaq	.LC113(%rip), %rdx
	movq	%rdx, 6568(%rax)
	movl	$0, %eax
	jmp	.L287
.L286:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L288
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	testl	%eax, %eax
	jle	.L288
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$65538, %eax
	je	.L288
	movq	-56(%rbp), %rax
	leaq	.LC114(%rip), %rdx
	movq	%rdx, 6568(%rax)
	movl	$0, %eax
	jmp	.L287
.L288:
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L289
	movq	-32(%rbp), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	jne	.L289
	movq	-32(%rbp), %rax
	movl	176(%rax), %eax
	testl	%eax, %eax
	jne	.L289
	movq	-56(%rbp), %rax
	leaq	.LC115(%rip), %rdx
	movq	%rdx, 6568(%rax)
	movl	$0, %eax
	jmp	.L287
.L289:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	cipher_test_valid_fragmentation
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	movl	$1, -8(%rbp)
	jmp	.L290
.L317:
	movq	-56(%rbp), %rax
	leaq	aux_err.2(%rip), %rdx
	movq	%rdx, 6576(%rax)
	movl	process_mode_in_place(%rip), %eax
	cmpl	$1, %eax
	jne	.L291
	cmpl	$0, -8(%rbp)
	je	.L318
.L291:
	movl	$0, -4(%rbp)
	jmp	.L293
.L316:
	movq	$0, -16(%rbp)
	jmp	.L294
.L315:
	movq	$0, -24(%rbp)
	jmp	.L295
.L314:
	cmpq	$1, -24(%rbp)
	jne	.L296
	cmpl	$1, -8(%rbp)
	je	.L319
.L296:
	cmpl	$1, -8(%rbp)
	jne	.L298
	cmpl	$0, -4(%rbp)
	je	.L299
	leaq	.LC116(%rip), %rdx
	jmp	.L300
.L299:
	leaq	.LC117(%rip), %rdx
.L300:
	cmpq	$0, -16(%rbp)
	je	.L301
	leaq	.LC118(%rip), %rax
	jmp	.L302
.L301:
	leaq	.LC119(%rip), %rax
.L302:
	leaq	.LC120(%rip), %rsi
	leaq	aux_err.2(%rip), %rdi
	movq	%rdx, %r8
	movq	%rax, %rcx
	movq	%rsi, %rdx
	movl	$64, %esi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L303
.L298:
	cmpl	$0, -4(%rbp)
	je	.L304
	leaq	.LC116(%rip), %rcx
	jmp	.L305
.L304:
	leaq	.LC117(%rip), %rcx
.L305:
	cmpq	$0, -24(%rbp)
	je	.L306
	leaq	.LC118(%rip), %rdx
	jmp	.L307
.L306:
	leaq	.LC119(%rip), %rdx
.L307:
	cmpq	$0, -16(%rbp)
	je	.L308
	leaq	.LC118(%rip), %rax
	jmp	.L309
.L308:
	leaq	.LC119(%rip), %rax
.L309:
	leaq	.LC121(%rip), %rsi
	leaq	aux_err.2(%rip), %rdi
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rcx
	movq	%rsi, %rdx
	movl	$64, %esi
	movl	$0, %eax
	call	BIO_snprintf@PLT
.L303:
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L310
	movl	-8(%rbp), %edi
	movl	-4(%rbp), %esi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	cipher_test_enc
	movl	%eax, -40(%rbp)
	cmpl	$1, -40(%rbp)
	je	.L310
	cmpl	$0, -40(%rbp)
	jns	.L311
	movl	$0, %eax
	jmp	.L287
.L311:
	movl	$1, %eax
	jmp	.L287
.L310:
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	je	.L312
	movl	-8(%rbp), %edi
	movl	-4(%rbp), %esi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	cipher_test_enc
	movl	%eax, -40(%rbp)
	cmpl	$1, -40(%rbp)
	je	.L312
	cmpl	$0, -40(%rbp)
	jns	.L313
	movl	$0, %eax
	jmp	.L287
.L313:
	movl	$1, %eax
	jmp	.L287
.L312:
	addq	$1, -24(%rbp)
.L295:
	cmpq	$1, -24(%rbp)
	jbe	.L314
	jmp	.L297
.L319:
	nop
.L297:
	addq	$1, -16(%rbp)
.L294:
	cmpq	$1, -16(%rbp)
	jbe	.L315
	addl	$1, -4(%rbp)
.L293:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.L316
	subl	$1, -8(%rbp)
.L290:
	cmpl	$0, -8(%rbp)
	jns	.L317
	jmp	.L292
.L318:
	nop
.L292:
	movq	-56(%rbp), %rax
	movq	$0, 6576(%rax)
	movl	$1, %eax
.L287:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	cipher_test_run, .-cipher_test_run
	.section	.rodata
.LC122:
	.string	"Cipher"
	.section	.data.rel.ro.local
	.align 32
	.type	cipher_test_method, @object
	.size	cipher_test_method, 40
cipher_test_method:
	.quad	.LC122
	.quad	cipher_test_init
	.quad	cipher_test_cleanup
	.quad	cipher_test_parse
	.quad	cipher_test_run
	.section	.rodata
.LC123:
	.string	"CMAC"
.LC124:
	.string	"Poly1305"
.LC125:
	.string	"SipHash"
	.align 8
.LC126:
	.string	"mdat->mac_name = OPENSSL_strdup(alg)"
	.align 8
.LC127:
	.string	"mdat->controls = sk_OPENSSL_STRING_new_null()"
	.text
	.type	mac_test_init, @function
mac_test_init:
.LFB683:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	is_mac_disabled
	testl	%eax, %eax
	je	.L321
	movq	-48(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1260, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-40(%rbp), %rax
	movl	$1, 6552(%rax)
	movl	$1, %eax
	jmp	.L322
.L321:
	movq	propquery(%rip), %rdx
	movq	libctx(%rip), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L323
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -16(%rbp)
	cmpq	$12, -16(%rbp)
	jbe	.L324
	movq	-16(%rbp), %rax
	leaq	-12(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	leaq	epilogue.1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L324
	subq	$12, -16(%rbp)
.L324:
	movq	-16(%rbp), %rdx
	leaq	.LC47(%rip), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L325
	movl	$855, -4(%rbp)
	jmp	.L323
.L325:
	movq	-16(%rbp), %rdx
	leaq	.LC123(%rip), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L326
	movl	$894, -4(%rbp)
	jmp	.L323
.L326:
	movq	-16(%rbp), %rdx
	leaq	.LC124(%rip), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L327
	movl	$1061, -4(%rbp)
	jmp	.L323
.L327:
	movq	-16(%rbp), %rdx
	leaq	.LC125(%rip), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L328
	movl	$1062, -4(%rbp)
	jmp	.L323
.L328:
	movl	$0, %eax
	jmp	.L322
.L323:
	leaq	.LC2(%rip), %rax
	movl	$1289, %edx
	movq	%rax, %rsi
	movl	$152, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1289, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L329
	movl	$0, %eax
	jmp	.L322
.L329:
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 16(%rax)
	leaq	.LC2(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$1293, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC126(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1293, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L330
	leaq	.LC2(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1294, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L322
.L330:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	call	OPENSSL_sk_new_null@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 136(%rdx)
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	leaq	.LC127(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1299, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L331
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$1300, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1301, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L322
.L331:
	movq	-32(%rbp), %rax
	movl	$-1, 148(%rax)
	movq	-32(%rbp), %rax
	movl	148(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 144(%rax)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 6600(%rax)
	movl	$1, %eax
.L322:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	mac_test_init, .-mac_test_init
	.type	openssl_free, @function
openssl_free:
.LFB684:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1313, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	openssl_free, .-openssl_free
	.type	mac_test_cleanup, @function
mac_test_cleanup:
.LFB685:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$1321, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	openssl_free(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$1323, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$1324, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$1325, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$1326, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$1327, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$1328, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$1329, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	mac_test_cleanup, .-mac_test_cleanup
	.section	.rodata
.LC128:
	.string	"Custom"
.LC129:
	.string	"Salt"
.LC130:
	.string	"Algorithm"
.LC131:
	.string	"NoReinit"
.LC132:
	.string	"Ctrl"
.LC133:
	.string	"BlockSize"
	.text
	.type	mac_test_parse, @function
mac_test_parse:
.LFB686:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC50(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L335
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L336
.L335:
	leaq	.LC52(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L337
	movq	-24(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L336
.L337:
	leaq	.LC128(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L338
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	96(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L336
.L338:
	leaq	.LC129(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L339
	movq	-24(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	112(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L336
.L339:
	leaq	.LC130(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L340
	leaq	.LC2(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$1346, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L341
	movl	$-1, %eax
	jmp	.L336
.L341:
	movl	$1, %eax
	jmp	.L336
.L340:
	leaq	.LC16(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L342
	movq	-24(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L336
.L342:
	leaq	.LC17(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L343
	movq	-24(%rbp), %rax
	leaq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L336
.L343:
	leaq	.LC21(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L344
	movq	-24(%rbp), %rax
	movl	$1, 128(%rax)
	movq	-24(%rbp), %rax
	movl	128(%rax), %eax
	jmp	.L336
.L344:
	leaq	.LC131(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L345
	movq	-24(%rbp), %rax
	movl	$1, 132(%rax)
	movq	-24(%rbp), %rax
	movl	132(%rax), %eax
	jmp	.L336
.L345:
	leaq	.LC132(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L346
	leaq	.LC2(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$1360, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L347
	movl	$-1, %eax
	jmp	.L336
.L347:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	jmp	.L336
.L346:
	leaq	.LC22(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L348
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movq	-24(%rbp), %rdx
	movl	%eax, 144(%rdx)
	movq	-24(%rbp), %rax
	movl	144(%rax), %eax
	testl	%eax, %eax
	jns	.L349
	movl	$-1, %eax
	jmp	.L336
.L349:
	movl	$1, %eax
	jmp	.L336
.L348:
	leaq	.LC133(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L350
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movq	-24(%rbp), %rdx
	movl	%eax, 148(%rdx)
	movq	-24(%rbp), %rax
	movl	148(%rax), %eax
	testl	%eax, %eax
	jns	.L351
	movl	$-1, %eax
	jmp	.L336
.L351:
	movl	$1, %eax
	jmp	.L336
.L350:
	movl	$0, %eax
.L336:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	mac_test_parse, .-mac_test_parse
	.section	.rodata
	.align 8
.LC134:
	.string	"tmpval = OPENSSL_strdup(value)"
.LC135:
	.string	"PKEY_CTRL_INVALID"
.LC136:
	.string	"PKEY_CTRL_ERROR"
	.text
	.type	mac_test_ctrl_pkey, @function
mac_test_ctrl_pkey:
.LFB687:
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
	movl	$0, -4(%rbp)
	leaq	.LC2(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$1387, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC134(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1387, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L353
	movl	$0, %eax
	jmp	.L354
.L353:
	movq	-16(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L355
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl_str@PLT
	movl	%eax, -4(%rbp)
.L355:
	cmpl	$-2, -4(%rbp)
	jne	.L356
	movq	-40(%rbp), %rax
	leaq	.LC135(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L357
.L356:
	cmpl	$0, -4(%rbp)
	jg	.L358
	movq	-40(%rbp), %rax
	leaq	.LC136(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L357
.L358:
	movl	$1, -4(%rbp)
.L357:
	leaq	.LC2(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$1400, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpl	$0, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
.L354:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	mac_test_ctrl_pkey, .-mac_test_ctrl_pkey
	.section	.rodata
.LC137:
	.string	"Trying the EVP_PKEY %s test"
	.align 8
.LC138:
	.string	"Trying the EVP_PKEY %s test with %s"
	.align 8
.LC139:
	.string	"skipping, PKEY CMAC '%s' is disabled"
	.align 8
.LC140:
	.string	"cipher = EVP_CIPHER_fetch(libctx, expected->alg, propquery)"
.LC141:
	.string	"MAC_KEY_CREATE_ERROR"
	.align 8
.LC142:
	.string	"skipping, HMAC '%s' is disabled"
.LC143:
	.string	"INTERNAL_ERROR"
.LC144:
	.string	"DIGESTSIGNINIT_ERROR"
.LC145:
	.string	"EVPPKEYCTXCTRL_ERROR"
.LC146:
	.string	"DIGESTSIGNUPDATE_ERROR"
.LC147:
	.string	"DIGESTSIGNFINAL_LENGTH_ERROR"
.LC148:
	.string	"got = OPENSSL_malloc(got_len)"
.LC149:
	.string	"TEST_MAC_ERR"
	.text
	.type	mac_test_run_pkey, @function
mac_test_run_pkey:
.LFB688:
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
	movq	%rdi, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-72(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	je	.L360
	movl	$1, %eax
	jmp	.L382
.L360:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L362
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	leaq	.LC137(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1421, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L363
.L362:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rbx
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	leaq	.LC138(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rbx, %r8
	movl	$1423, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
.L363:
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$894, %eax
	jne	.L364
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L365
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	is_cipher_disabled
	testl	%eax, %eax
	je	.L365
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC139(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1436, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-120(%rbp), %rax
	movl	$1, 6552(%rax)
	movq	-120(%rbp), %rax
	movq	$0, 6568(%rax)
	jmp	.L366
.L365:
	movq	propquery(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	24(%rax), %rcx
	movq	libctx(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC140(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1441, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L367
	movq	-120(%rbp), %rax
	leaq	.LC141(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L366
.L367:
	movq	libctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_new_CMAC_key@PLT
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	jmp	.L368
.L364:
	movq	-72(%rbp), %rax
	movq	40(%rax), %r12
	movq	-72(%rbp), %rax
	movq	32(%rax), %rbx
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rsi
	movq	libctx(%rip), %rax
	movq	%r12, %r8
	movq	%rbx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_new_raw_private_key_ex@PLT
	movq	%rax, -32(%rbp)
.L368:
	cmpq	$0, -32(%rbp)
	jne	.L369
	movq	-120(%rbp), %rax
	leaq	.LC141(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L366
.L369:
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$855, %eax
	jne	.L370
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L370
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	is_digest_disabled
	testl	%eax, %eax
	je	.L371
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC142(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1462, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-120(%rbp), %rax
	movl	$1, 6552(%rax)
	movq	-120(%rbp), %rax
	movq	$0, 6568(%rax)
	jmp	.L366
.L371:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
.L370:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1469, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L372
	movq	-120(%rbp), %rax
	leaq	.LC143(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L366
.L372:
	movq	libctx(%rip), %rcx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EVP_DigestSignInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L373
	movq	-120(%rbp), %rax
	leaq	.LC144(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L366
.L373:
	movl	$0, -60(%rbp)
	jmp	.L374
.L376:
	movq	-72(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mac_test_ctrl_pkey
	testl	%eax, %eax
	jne	.L375
	movq	-120(%rbp), %rax
	leaq	.LC145(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L366
.L375:
	addl	$1, -60(%rbp)
.L374:
	movq	-72(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -60(%rbp)
	jl	.L376
	movq	-72(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignUpdate@PLT
	testl	%eax, %eax
	jne	.L377
	movq	-120(%rbp), %rax
	leaq	.LC146(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L366
.L377:
	leaq	-104(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	jne	.L378
	movq	-120(%rbp), %rax
	leaq	.LC147(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L366
.L378:
	movq	-104(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$1492, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC148(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1492, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L379
	movq	-120(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L366
.L379:
	leaq	-104(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	je	.L380
	movq	-104(%rbp), %r8
	movq	-72(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-56(%rbp), %rdi
	leaq	.LC149(%rip), %rsi
	movq	-120(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	memory_err_compare
	testl	%eax, %eax
	jne	.L381
.L380:
	movq	-120(%rbp), %rax
	leaq	.LC149(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L366
.L381:
	movq	-120(%rbp), %rax
	movq	$0, 6568(%rax)
.L366:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$1507, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$1, %eax
.L382:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE688:
	.size	mac_test_run_pkey, .-mac_test_run_pkey
	.section	.rodata
.LC150:
	.string	"Trying the EVP_MAC %s test"
	.align 8
.LC151:
	.string	"Trying the EVP_MAC %s test with %s"
.LC152:
	.string	"cipher"
.LC153:
	.string	"digest"
.LC154:
	.string	"MAC_BAD_PARAMS"
	.align 8
.LC155:
	.string	"skipping, algorithm '%s' is disabled"
.LC156:
	.string	"custom"
.LC157:
	.string	"salt"
.LC158:
	.string	"MAC_TOO_MANY_PARAMETERS"
	.align 8
.LC159:
	.string	"tmpkey = OPENSSL_strdup(value)"
.LC160:
	.string	"MAC_PARAM_ERROR"
.LC161:
	.string	"MAC_CREATE_ERROR"
.LC162:
	.string	"MAC_INIT_ERROR"
	.align 8
.LC163:
	.string	"size_before_init == 0 && size_after_init == 0"
.LC164:
	.string	"MAC SIZE not set"
.LC165:
	.string	"size_after_init"
.LC166:
	.string	"size_before_init"
.LC167:
	.string	"MAC SIZE check failed"
.LC168:
	.string	"size_val"
.LC169:
	.string	"block-size"
	.align 8
.LC170:
	.string	"EVP_MAC_CTX_get_params(ctx, sizes)"
.LC171:
	.string	"expected->output_size"
.LC172:
	.string	"output_size"
.LC173:
	.string	"expected->block_size"
.LC174:
	.string	"block_size"
.LC175:
	.string	"MAC_UPDATE_ERROR"
	.align 8
.LC176:
	.string	"got = OPENSSL_malloc(expected->output_len)"
.LC177:
	.string	"MAC_FINAL_ERROR"
.LC178:
	.string	"MAC_FINAL_LENGTH_ERROR"
.LC179:
	.string	"MAC_REINIT_SHOULD_FAIL"
.LC180:
	.string	"MAC_REINIT_ERROR"
	.align 8
.LC181:
	.string	"EVP_Q_mac(libctx, expected->mac_name, NULL, expected->alg, params, expected->key, expected->key_len, expected->input, expected->input_len, got, got_len, &size)"
.LC182:
	.string	"EVP_Q_mac failed"
	.text
	.type	mac_test_run_mac, @function
mac_test_run_mac:
.LFB689:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1272, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1224(%rbp)
	movq	-1224(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$-1, -164(%rbp)
	movl	$-1, -168(%rbp)
	leaq	-1136(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_settable_ctx_params@PLT
	movq	%rax, -112(%rbp)
	movl	$1, -84(%rbp)
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L384
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC150(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1530, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L385
.L384:
	movq	-104(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC151(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$1532, %esi
	movl	$0, %eax
	call	test_info@PLT
.L385:
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L386
	movl	$0, -88(%rbp)
	leaq	.LC152(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	je	.L387
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	is_cipher_disabled
	testl	%eax, %eax
	je	.L388
	movl	$1, -88(%rbp)
	jmp	.L389
.L388:
	movq	-104(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-992(%rax), %rbx
	leaq	-1280(%rbp), %rax
	leaq	.LC152(%rip), %rdi
	movl	$0, %ecx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-1280(%rbp), %rax
	movq	-1272(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1264(%rbp), %rax
	movq	-1256(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1248(%rbp), %rax
	movq	%rax, 32(%rbx)
	jmp	.L389
.L387:
	leaq	.LC153(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	je	.L390
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	is_digest_disabled
	testl	%eax, %eax
	je	.L391
	movl	$1, -88(%rbp)
	jmp	.L389
.L391:
	movq	-104(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-992(%rax), %rbx
	leaq	-1280(%rbp), %rax
	leaq	.LC153(%rip), %rdi
	movl	$0, %ecx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-1280(%rbp), %rax
	movq	-1272(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1264(%rbp), %rax
	movq	-1256(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1248(%rbp), %rax
	movq	%rax, 32(%rbx)
	jmp	.L389
.L390:
	movq	-1224(%rbp), %rax
	leaq	.LC154(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L392
.L389:
	cmpl	$0, -88(%rbp)
	je	.L386
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC155(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1564, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-1224(%rbp), %rax
	movl	$1, 6552(%rax)
	movq	-1224(%rbp), %rax
	movq	$0, 6568(%rax)
	jmp	.L392
.L386:
	movq	-104(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L393
	movq	-104(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	96(%rax), %rsi
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-992(%rax), %rbx
	leaq	-1280(%rbp), %rax
	leaq	.LC156(%rip), %rdi
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-1280(%rbp), %rax
	movq	-1272(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1264(%rbp), %rax
	movq	-1256(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1248(%rbp), %rax
	movq	%rax, 32(%rbx)
.L393:
	movq	-104(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L394
	movq	-104(%rbp), %rax
	movq	120(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	112(%rax), %rsi
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-992(%rax), %rbx
	leaq	-1280(%rbp), %rax
	leaq	.LC157(%rip), %rdi
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-1280(%rbp), %rax
	movq	-1272(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1264(%rbp), %rax
	movq	-1256(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1248(%rbp), %rax
	movq	%rax, 32(%rbx)
.L394:
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L395
	movq	-104(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-992(%rax), %rbx
	leaq	-1280(%rbp), %rax
	leaq	.LC83(%rip), %rdi
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-1280(%rbp), %rax
	movq	-1272(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1264(%rbp), %rax
	movq	-1256(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1248(%rbp), %rax
	movq	%rax, 32(%rbx)
.L395:
	movq	-104(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	cmpq	$20, %rax
	jbe	.L396
	movq	-1224(%rbp), %rax
	leaq	.LC158(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L392
.L396:
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L397
.L403:
	movq	-104(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -136(%rbp)
	leaq	.LC2(%rip), %rcx
	movq	-136(%rbp), %rax
	movl	$1597, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	leaq	.LC159(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1597, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L398
	movq	-1224(%rbp), %rax
	leaq	.LC160(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L392
.L398:
	movq	-144(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L399
	movq	-96(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -96(%rbp)
	movb	$0, (%rax)
.L399:
	cmpq	$0, -96(%rbp)
	je	.L400
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	leaq	-1008(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdi
	movq	-96(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movq	-112(%rbp), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	OSSL_PARAM_allocate_from_text@PLT
	testl	%eax, %eax
	jne	.L401
.L400:
	leaq	.LC2(%rip), %rcx
	movq	-144(%rbp), %rax
	movl	$1610, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-1224(%rbp), %rax
	leaq	.LC160(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L392
.L401:
	addq	$1, -72(%rbp)
	leaq	.LC31(%rip), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L402
	movq	-96(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoul@PLT
	movq	%rax, -48(%rbp)
.L402:
	leaq	.LC2(%rip), %rcx
	movq	-144(%rbp), %rax
	movl	$1619, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addl	$1, -52(%rbp)
.L397:
	movq	-104(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -52(%rbp)
	jl	.L403
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-992(%rax), %rbx
	leaq	-1280(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-1280(%rbp), %rax
	movq	-1272(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1264(%rbp), %rax
	movq	-1256(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1248(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L404
	movq	-1224(%rbp), %rax
	leaq	.LC161(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L392
.L404:
	movq	libctx(%rip), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	fips_provider_version_gt@PLT
	testl	%eax, %eax
	je	.L405
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_get_mac_size@PLT
	movq	%rax, -40(%rbp)
.L405:
	movq	-104(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	32(%rax), %rsi
	leaq	-1008(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_init@PLT
	testl	%eax, %eax
	jne	.L406
	movq	-1224(%rbp), %rax
	leaq	.LC162(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L392
.L406:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_get_mac_size@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L407
	cmpq	$0, -120(%rbp)
	jne	.L407
	movl	$1, %ecx
	jmp	.L408
.L407:
	movl	$0, %ecx
.L408:
	leaq	.LC163(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1634, %esi
	movq	%rax, %rdi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L409
	movq	-1224(%rbp), %rax
	leaq	.LC164(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L392
.L409:
	cmpq	$0, -40(%rbp)
	je	.L410
	cmpq	$0, -48(%rbp)
	jne	.L411
	movq	-120(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC165(%rip), %rcx
	leaq	.LC166(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1640, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L411
	movq	-1224(%rbp), %rax
	leaq	.LC167(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L392
.L411:
	cmpq	$0, -48(%rbp)
	je	.L410
	movq	-120(%rbp), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC165(%rip), %rcx
	leaq	.LC168(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1645, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L410
	movq	-1224(%rbp), %rax
	leaq	.LC167(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L392
.L410:
	movq	-104(%rbp), %rax
	movl	144(%rax), %eax
	testl	%eax, %eax
	js	.L412
	movq	-64(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -64(%rbp)
	leaq	-1280(%rbp), %rax
	leaq	-168(%rbp), %rdx
	leaq	.LC31(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-1280(%rbp), %rax
	movq	-1272(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1264(%rbp), %rax
	movq	-1256(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1248(%rbp), %rax
	movq	%rax, 32(%rbx)
.L412:
	movq	-104(%rbp), %rax
	movl	148(%rax), %eax
	testl	%eax, %eax
	js	.L413
	movq	-64(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -64(%rbp)
	leaq	-1280(%rbp), %rax
	leaq	-164(%rbp), %rdx
	leaq	.LC169(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-1280(%rbp), %rax
	movq	-1272(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1264(%rbp), %rax
	movq	-1256(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1248(%rbp), %rax
	movq	%rax, 32(%rbx)
.L413:
	leaq	-1136(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	je	.L436
	movq	-64(%rbp), %rbx
	leaq	-1280(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-1280(%rbp), %rax
	movq	-1272(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1264(%rbp), %rax
	movq	-1256(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1248(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-1136(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_CTX_get_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC170(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1658, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L415
	movq	-1224(%rbp), %rax
	leaq	.LC143(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L392
.L415:
	movq	-104(%rbp), %rax
	movl	144(%rax), %eax
	testl	%eax, %eax
	js	.L416
	movq	-104(%rbp), %rax
	movl	144(%rax), %edi
	movl	-168(%rbp), %esi
	leaq	.LC171(%rip), %rcx
	leaq	.LC172(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1663, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L416
	movq	-1224(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L392
.L416:
	movq	-104(%rbp), %rax
	movl	148(%rax), %eax
	testl	%eax, %eax
	js	.L436
	movq	-104(%rbp), %rax
	movl	148(%rax), %edi
	movl	-164(%rbp), %esi
	leaq	.LC173(%rip), %rcx
	leaq	.LC174(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1668, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L436
	movq	-1224(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L392
.L436:
	nop
.L414:
.L431:
	movq	-104(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	jne	.L417
	movq	-1224(%rbp), %rax
	leaq	.LC175(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L392
.L417:
	movq	-104(%rbp), %rax
	movl	128(%rax), %eax
	movl	%eax, -124(%rbp)
	cmpl	$0, -124(%rbp)
	je	.L418
	movq	-104(%rbp), %rax
	movq	88(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$1680, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC176(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1680, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L419
	movq	-1224(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L392
.L419:
	movq	-104(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_finalXOF@PLT
	testl	%eax, %eax
	je	.L420
	movq	-104(%rbp), %rax
	movq	88(%rax), %r8
	movq	-104(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-32(%rbp), %rdi
	leaq	.LC149(%rip), %rsi
	movq	-1224(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	memory_err_compare
	testl	%eax, %eax
	jne	.L421
.L420:
	movq	-1224(%rbp), %rax
	leaq	.LC177(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L392
.L418:
	leaq	-152(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	jne	.L422
	movq	-1224(%rbp), %rax
	leaq	.LC178(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L392
.L422:
	movq	-152(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$1696, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC148(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1696, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L423
	movq	-1224(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L392
.L423:
	movq	-152(%rbp), %rcx
	leaq	-152(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	je	.L424
	movq	-152(%rbp), %r8
	movq	-104(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-32(%rbp), %rdi
	leaq	.LC149(%rip), %rsi
	movq	-1224(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	memory_err_compare
	testl	%eax, %eax
	jne	.L421
.L424:
	movq	-1224(%rbp), %rax
	leaq	.LC149(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L392
.L421:
	movl	-84(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -84(%rbp)
	testl	%eax, %eax
	je	.L425
	movq	libctx(%rip), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	fips_provider_version_gt@PLT
	testl	%eax, %eax
	je	.L425
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -1216(%rbp)
	movaps	%xmm0, -1200(%rbp)
	movaps	%xmm0, -1184(%rbp)
	movaps	%xmm0, -1168(%rbp)
	movaps	%xmm0, -1152(%rbp)
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L426
	movq	-104(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	48(%rax), %rdx
	leaq	-1280(%rbp), %rax
	leaq	.LC83(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-1280(%rbp), %rax
	movq	-1272(%rbp), %rdx
	movq	%rax, -1216(%rbp)
	movq	%rdx, -1208(%rbp)
	movq	-1264(%rbp), %rax
	movq	-1256(%rbp), %rdx
	movq	%rax, -1200(%rbp)
	movq	%rdx, -1192(%rbp)
	movq	-1248(%rbp), %rax
	movq	%rax, -1184(%rbp)
	leaq	-1280(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-1280(%rbp), %rax
	movq	-1272(%rbp), %rdx
	movq	%rax, -1176(%rbp)
	movq	%rdx, -1168(%rbp)
	movq	-1264(%rbp), %rax
	movq	-1256(%rbp), %rdx
	movq	%rax, -1160(%rbp)
	movq	%rdx, -1152(%rbp)
	movq	-1248(%rbp), %rax
	movq	%rax, -1144(%rbp)
.L426:
	call	ERR_set_mark@PLT
	leaq	-1216(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_MAC_init@PLT
	movl	%eax, -128(%rbp)
	movq	-104(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	je	.L427
	cmpl	$0, -128(%rbp)
	je	.L428
	call	ERR_clear_last_mark@PLT
	movq	-1224(%rbp), %rax
	leaq	.LC179(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L392
.L427:
	cmpl	$0, -128(%rbp)
	je	.L430
	call	ERR_clear_last_mark@PLT
	leaq	.LC2(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1731, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -32(%rbp)
	jmp	.L431
.L430:
	call	ERR_clear_last_mark@PLT
	movq	-1224(%rbp), %rax
	leaq	.LC180(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L392
.L428:
	call	ERR_pop_to_mark@PLT
.L425:
	movq	-1224(%rbp), %rax
	movq	$0, 6568(%rax)
	cmpl	$0, -124(%rbp)
	jne	.L437
	movq	-152(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-152(%rbp), %r9
	movq	-104(%rbp), %rax
	movq	72(%rax), %r8
	movq	-104(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-104(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	32(%rax), %rbx
	movq	-104(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	(%rax), %rsi
	movq	libctx(%rip), %rax
	leaq	-1008(%rbp), %r11
	leaq	-160(%rbp), %r10
	pushq	%r10
	pushq	%r9
	pushq	-32(%rbp)
	pushq	%r8
	pushq	%rdi
	pushq	%rcx
	movq	%rbx, %r9
	movq	%r11, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_Q_mac@PLT
	addq	$48, %rsp
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC181(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1747, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L432
	movq	-104(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-104(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-160(%rbp), %r9
	movq	-32(%rbp), %r8
	leaq	.LC44(%rip), %rcx
	leaq	.LC0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$1752, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L437
.L432:
	movq	-1224(%rbp), %rax
	leaq	.LC182(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L392
.L437:
	nop
.L392:
	jmp	.L433
.L434:
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$976, %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$1760, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L433:
	movq	-72(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	cmpq	%rax, -80(%rbp)
	jb	.L434
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1763, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE689:
	.size	mac_test_run_mac, .-mac_test_run_mac
	.type	mac_test_run, @function
mac_test_run:
.LFB690:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L439
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	mac_test_run_mac
	jmp	.L440
.L439:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	mac_test_run_pkey
.L440:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE690:
	.size	mac_test_run, .-mac_test_run
	.section	.rodata
.LC183:
	.string	"MAC"
	.section	.data.rel.ro.local
	.align 32
	.type	mac_test_method, @object
	.size	mac_test_method, 40
mac_test_method:
	.quad	.LC183
	.quad	mac_test_init
	.quad	mac_test_cleanup
	.quad	mac_test_parse
	.quad	mac_test_run
	.section	.rodata
	.align 8
.LC184:
	.string	"skipping, key '%s' is disabled"
	.align 8
.LC185:
	.string	"kdata = OPENSSL_zalloc(sizeof(*kdata))"
	.align 8
.LC186:
	.string	"kdata->ctx = EVP_PKEY_CTX_new_from_pkey(libctx, pkey, propquery)"
.LC187:
	.string	"KEYOP_INIT_ERROR"
	.text
	.type	pkey_test_init, @function
pkey_test_init:
.LFB691:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L442
	movq	public_keys(%rip), %rdx
	movq	-48(%rbp), %rcx
	leaq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_key
	movl	%eax, -4(%rbp)
.L442:
	cmpl	$0, -4(%rbp)
	jne	.L443
	movq	private_keys(%rip), %rdx
	movq	-48(%rbp), %rcx
	leaq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_key
	movl	%eax, -4(%rbp)
.L443:
	cmpl	$0, -4(%rbp)
	je	.L444
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L445
.L444:
	movq	-48(%rbp), %rax
	leaq	.LC184(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1826, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-40(%rbp), %rax
	movl	$1, 6552(%rax)
	movl	$1, %eax
	jmp	.L450
.L445:
	leaq	.LC2(%rip), %rax
	movl	$1831, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1831, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L447
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
	jmp	.L450
.L447:
	movq	-16(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	propquery(%rip), %rdx
	movq	-24(%rbp), %rcx
	movq	libctx(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC186(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1836, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L448
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$1838, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L450
.L448:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jg	.L449
	movq	-40(%rbp), %rax
	leaq	.LC187(%rip), %rdx
	movq	%rdx, 6568(%rax)
.L449:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 6600(%rax)
	movl	$1, %eax
.L450:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE691:
	.size	pkey_test_init, .-pkey_test_init
	.type	pkey_test_cleanup, @function
pkey_test_cleanup:
.LFB692:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$1851, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$1852, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE692:
	.size	pkey_test_cleanup, .-pkey_test_cleanup
	.type	pkey_test_ctrl, @function
pkey_test_ctrl:
.LFB693:
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
	movl	$0, -4(%rbp)
	leaq	.LC2(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$1862, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC134(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1862, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L453
	movl	$0, %eax
	jmp	.L454
.L453:
	movq	-24(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L455
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$0, (%rax)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl_str@PLT
	movl	%eax, -4(%rbp)
.L455:
	cmpl	$-2, -4(%rbp)
	jne	.L456
	movq	-40(%rbp), %rax
	leaq	.LC135(%rip), %rdx
	movq	%rdx, 6568(%rax)
	movl	$1, -4(%rbp)
	jmp	.L457
.L456:
	cmpq	$0, -16(%rbp)
	je	.L457
	cmpl	$0, -4(%rbp)
	jg	.L457
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	is_digest_disabled
	testl	%eax, %eax
	jne	.L458
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	is_cipher_disabled
	testl	%eax, %eax
	je	.L459
.L458:
	movq	-16(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1874, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-40(%rbp), %rax
	movl	$1, 6552(%rax)
	movl	$1, -4(%rbp)
	jmp	.L457
.L459:
	movq	-40(%rbp), %rax
	leaq	.LC136(%rip), %rdx
	movq	%rdx, 6568(%rax)
	movl	$1, -4(%rbp)
.L457:
	leaq	.LC2(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1882, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpl	$0, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
.L454:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE693:
	.size	pkey_test_ctrl, .-pkey_test_ctrl
	.type	pkey_test_parse, @function
pkey_test_parse:
.LFB694:
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
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC16(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L461
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L462
.L461:
	leaq	.LC17(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L463
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L462
.L463:
	leaq	.LC132(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L464
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	pkey_test_ctrl
	jmp	.L462
.L464:
	movl	$0, %eax
.L462:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE694:
	.size	pkey_test_parse, .-pkey_test_parse
	.section	.rodata
.LC188:
	.string	"KEYOP_LENGTH_ERROR"
.LC189:
	.string	"KEYOP_ERROR"
.LC190:
	.string	"KEYOP_MISMATCH"
	.align 8
.LC191:
	.string	"copy = EVP_PKEY_CTX_dup(expected->ctx)"
	.text
	.type	pkey_test_run, @function
pkey_test_run:
.LFB695:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %r9
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jle	.L466
	movq	-32(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$1908, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC148(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1908, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L467
.L466:
	movq	-40(%rbp), %rax
	leaq	.LC188(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L468
.L467:
	movq	-24(%rbp), %rax
	movq	8(%rax), %r9
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jg	.L469
	movq	-40(%rbp), %rax
	leaq	.LC189(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L468
.L469:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rdi
	leaq	.LC190(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	memory_err_compare
	testl	%eax, %eax
	je	.L476
	movq	-40(%rbp), %rax
	movq	$0, 6568(%rax)
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1923, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_dup@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC191(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1927, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L471
	movq	-40(%rbp), %rax
	leaq	.LC143(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L468
.L471:
	movq	-24(%rbp), %rax
	movq	8(%rax), %r9
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jle	.L472
	movq	-32(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$1933, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC148(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1933, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L473
.L472:
	movq	-40(%rbp), %rax
	leaq	.LC188(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L468
.L473:
	movq	-24(%rbp), %rax
	movq	8(%rax), %r9
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jg	.L474
	movq	-40(%rbp), %rax
	leaq	.LC189(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L468
.L474:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rdi
	leaq	.LC190(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	memory_err_compare
	testl	%eax, %eax
	jmp	.L468
.L476:
	nop
.L468:
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1948, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE695:
	.size	pkey_test_run, .-pkey_test_run
	.type	sign_test_init, @function
sign_test_init:
.LFB696:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	EVP_PKEY_sign@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	EVP_PKEY_sign_init@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	pkey_test_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	sign_test_init, .-sign_test_init
	.section	.rodata
.LC192:
	.string	"Sign"
	.section	.data.rel.ro.local
	.align 32
	.type	psign_test_method, @object
	.size	psign_test_method, 40
psign_test_method:
	.quad	.LC192
	.quad	sign_test_init
	.quad	pkey_test_cleanup
	.quad	pkey_test_parse
	.quad	pkey_test_run
	.text
	.type	verify_recover_test_init, @function
verify_recover_test_init:
.LFB697:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	EVP_PKEY_verify_recover@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	EVP_PKEY_verify_recover_init@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	pkey_test_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	verify_recover_test_init, .-verify_recover_test_init
	.section	.rodata
.LC193:
	.string	"VerifyRecover"
	.section	.data.rel.ro.local
	.align 32
	.type	pverify_recover_test_method, @object
	.size	pverify_recover_test_method, 40
pverify_recover_test_method:
	.quad	.LC193
	.quad	verify_recover_test_init
	.quad	pkey_test_cleanup
	.quad	pkey_test_parse
	.quad	pkey_test_run
	.text
	.type	decrypt_test_init, @function
decrypt_test_init:
.LFB698:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	EVP_PKEY_decrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	EVP_PKEY_decrypt_init@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	pkey_test_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	decrypt_test_init, .-decrypt_test_init
	.section	.rodata
.LC194:
	.string	"Decrypt"
	.section	.data.rel.ro.local
	.align 32
	.type	pdecrypt_test_method, @object
	.size	pdecrypt_test_method, 40
pdecrypt_test_method:
	.quad	.LC194
	.quad	decrypt_test_init
	.quad	pkey_test_cleanup
	.quad	pkey_test_parse
	.quad	pkey_test_run
	.text
	.type	verify_test_init, @function
verify_test_init:
.LFB699:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	EVP_PKEY_verify_init@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	pkey_test_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	verify_test_init, .-verify_test_init
	.section	.rodata
.LC195:
	.string	"VERIFY_ERROR"
	.text
	.type	verify_test_run, @function
verify_test_run:
.LFB700:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_verify@PLT
	testl	%eax, %eax
	jg	.L486
	movq	-24(%rbp), %rax
	leaq	.LC195(%rip), %rdx
	movq	%rdx, 6568(%rax)
.L486:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	verify_test_run, .-verify_test_run
	.section	.rodata
.LC196:
	.string	"Verify"
	.section	.data.rel.ro.local
	.align 32
	.type	pverify_test_method, @object
	.size	pverify_test_method, 40
pverify_test_method:
	.quad	.LC196
	.quad	verify_test_init
	.quad	pkey_test_cleanup
	.quad	pkey_test_parse
	.quad	verify_test_run
	.text
	.type	pderive_test_init, @function
pderive_test_init:
.LFB701:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	EVP_PKEY_derive_init@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	pkey_test_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	pderive_test_init, .-pderive_test_init
	.section	.rodata
.LC197:
	.string	"PeerKeyValidate"
.LC198:
	.string	"PeerKey"
.LC199:
	.string	"DERIVE_SET_PEER_ERROR"
.LC200:
	.string	"SharedSecret"
.LC201:
	.string	"KDFType"
.LC202:
	.string	"kdf-type"
.LC203:
	.string	"KDFDigest"
.LC204:
	.string	"kdf-digest"
.LC205:
	.string	"CEKAlg"
.LC206:
	.string	"cekalg"
.LC207:
	.string	"KDFOutlen"
.LC208:
	.string	"kdf-outlen"
	.text
	.type	pderive_test_parse, @function
pderive_test_parse:
.LFB702:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-136(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	leaq	.LC197(%rip), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L491
	movl	$1, -4(%rbp)
.L491:
	cmpl	$0, -4(%rbp)
	jne	.L492
	leaq	.LC198(%rip), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L493
.L492:
	movq	public_keys(%rip), %rdx
	movq	-152(%rbp), %rcx
	leaq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_key
	testl	%eax, %eax
	jne	.L494
	movl	$-1, %eax
	jmp	.L497
.L494:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive_set_peer_ex@PLT
	testl	%eax, %eax
	jg	.L496
	movq	-136(%rbp), %rax
	leaq	.LC199(%rip), %rdx
	movq	%rdx, 6568(%rax)
	movl	$1, %eax
	jmp	.L497
.L496:
	movq	-136(%rbp), %rax
	movq	$0, 6568(%rax)
	movl	$1, %eax
	jmp	.L497
.L493:
	leaq	.LC200(%rip), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L498
	movq	-16(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L497
.L498:
	leaq	.LC132(%rip), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L499
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-152(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	pkey_test_ctrl
	jmp	.L497
.L499:
	leaq	.LC201(%rip), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L500
	leaq	-208(%rbp), %rax
	movq	-152(%rbp), %rdx
	leaq	.LC202(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	jne	.L501
	movl	$-1, %eax
	jmp	.L497
.L501:
	movl	$1, %eax
	jmp	.L497
.L500:
	leaq	.LC203(%rip), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L503
	leaq	-208(%rbp), %rax
	movq	-152(%rbp), %rdx
	leaq	.LC204(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	jne	.L504
	movl	$-1, %eax
	jmp	.L497
.L504:
	movl	$1, %eax
	jmp	.L497
.L503:
	leaq	.LC205(%rip), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L506
	leaq	-208(%rbp), %rax
	movq	-152(%rbp), %rdx
	leaq	.LC206(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	jne	.L507
	movl	$-1, %eax
	jmp	.L497
.L507:
	movl	$1, %eax
	jmp	.L497
.L506:
	leaq	.LC207(%rip), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L509
	leaq	-32(%rbp), %rcx
	movq	-152(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoul@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L510
	movl	$-1, %eax
	jmp	.L497
.L510:
	leaq	-208(%rbp), %rax
	leaq	-40(%rbp), %rdx
	leaq	.LC208(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	jne	.L512
	movl	$-1, %eax
	jmp	.L497
.L512:
	movl	$1, %eax
	jmp	.L497
.L509:
	movl	$0, %eax
.L497:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	pderive_test_parse, .-pderive_test_parse
	.section	.rodata
	.align 8
.LC209:
	.string	"dctx = EVP_PKEY_CTX_dup(expected->ctx)"
.LC210:
	.string	"DERIVE_ERROR"
.LC211:
	.string	"0"
.LC212:
	.string	"SHARED_SECRET_MISMATCH"
	.text
	.type	pderive_test_run, @function
pderive_test_run:
.LFB703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_dup@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC209(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2101, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L514
	movq	-40(%rbp), %rax
	leaq	.LC210(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L515
.L514:
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	testl	%eax, %eax
	jle	.L516
	movq	-32(%rbp), %rsi
	leaq	.LC211(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$2107, %esi
	movq	%rax, %rdi
	call	test_size_t_ne@PLT
	testl	%eax, %eax
	jne	.L517
.L516:
	movq	-40(%rbp), %rax
	leaq	.LC210(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L515
.L517:
	movq	-32(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2111, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC148(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2111, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L518
	movq	-40(%rbp), %rax
	leaq	.LC210(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L515
.L518:
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	testl	%eax, %eax
	jg	.L519
	movq	-40(%rbp), %rax
	leaq	.LC210(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L515
.L519:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rdi
	leaq	.LC212(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	memory_err_compare
	testl	%eax, %eax
	je	.L522
	movq	-40(%rbp), %rax
	movq	$0, 6568(%rax)
	jmp	.L515
.L522:
	nop
.L515:
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$2126, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	pderive_test_run, .-pderive_test_run
	.section	.rodata
.LC213:
	.string	"Derive"
	.section	.data.rel.ro.local
	.align 32
	.type	pderive_test_method, @object
	.size	pderive_test_method, 40
pderive_test_method:
	.quad	.LC213
	.quad	pderive_test_init
	.quad	pkey_test_cleanup
	.quad	pderive_test_parse
	.quad	pderive_test_run
	.section	.rodata
.LC214:
	.string	"*p"
.LC215:
	.string	"Invalid empty integer value"
.LC216:
	.string	"Integer overflow in string %s"
.LC217:
	.string	"isdigit((unsigned char)*p)"
	.align 8
.LC218:
	.string	"Invalid character in string %s"
	.text
	.type	parse_uint64, @function
parse_uint64:
.LFB704:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %eax
	leaq	.LC214(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$2173, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L524
	leaq	.LC215(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2174, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	$-1, %eax
	jmp	.L525
.L524:
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L526
.L529:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movabsq	$1844674407370955161, %rdx
	cmpq	%rax, %rdx
	jnb	.L527
	movq	-24(%rbp), %rax
	leaq	.LC216(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2179, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$-1, %eax
	jmp	.L525
.L527:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	shrl	$11, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC217(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$2183, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L528
	movq	-24(%rbp), %rax
	leaq	.LC218(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2184, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$-1, %eax
	jmp	.L525
.L528:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cltq
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$1, -8(%rbp)
.L526:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L529
	movl	$1, %eax
.L525:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	parse_uint64, .-parse_uint64
	.section	.rodata
.LC219:
	.string	"N"
.LC220:
	.string	"p"
.LC221:
	.string	"r"
.LC222:
	.string	"maxmem"
	.text
	.type	scrypt_test_parse, @function
scrypt_test_parse:
.LFB705:
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
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC219(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L531
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_uint64
	jmp	.L532
.L531:
	leaq	.LC220(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L533
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_uint64
	jmp	.L532
.L533:
	leaq	.LC221(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L534
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_uint64
	jmp	.L532
.L534:
	leaq	.LC222(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L535
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_uint64
	jmp	.L532
.L535:
	movl	$0, %eax
.L532:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	scrypt_test_parse, .-scrypt_test_parse
	.section	.rodata
.LC223:
	.string	"iter"
.LC224:
	.string	"MD"
	.text
	.type	pbkdf2_test_parse, @function
pbkdf2_test_parse:
.LFB706:
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
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC223(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L537
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movq	-8(%rbp), %rdx
	movl	%eax, 44(%rdx)
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	jg	.L538
	movl	$-1, %eax
	jmp	.L539
.L538:
	movl	$1, %eax
	jmp	.L539
.L537:
	leaq	.LC224(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L540
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L541
	movl	$-1, %eax
	jmp	.L539
.L541:
	movl	$1, %eax
	jmp	.L539
.L540:
	movl	$0, %eax
.L539:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	pbkdf2_test_parse, .-pbkdf2_test_parse
	.section	.rodata
.LC225:
	.string	"id"
	.text
	.type	pkcs12_test_parse, @function
pkcs12_test_parse:
.LFB707:
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
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC225(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L543
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movq	-8(%rbp), %rdx
	movl	%eax, 40(%rdx)
	movq	-8(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jg	.L544
	movl	$-1, %eax
	jmp	.L545
.L544:
	movl	$1, %eax
	jmp	.L545
.L543:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	pbkdf2_test_parse
.L545:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	pkcs12_test_parse, .-pkcs12_test_parse
	.section	.rodata
.LC226:
	.string	"scrypt"
.LC227:
	.string	"pbkdf2"
.LC228:
	.string	"pkcs12"
.LC229:
	.string	"Unknown pbe algorithm %s"
	.align 8
.LC230:
	.string	"pdat = OPENSSL_zalloc(sizeof(*pdat))"
	.text
	.type	pbe_test_init, @function
pbe_test_init:
.LFB708:
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
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_kdf_disabled
	testl	%eax, %eax
	je	.L547
	movq	-32(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2250, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-24(%rbp), %rax
	movl	$1, 6552(%rax)
	movl	$1, %eax
	jmp	.L548
.L547:
	leaq	.LC226(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L549
	movl	$1, -4(%rbp)
	jmp	.L550
.L549:
	leaq	.LC227(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L551
	movl	$2, -4(%rbp)
	jmp	.L550
.L551:
	leaq	.LC228(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L552
	movl	$3, -4(%rbp)
	jmp	.L550
.L552:
	movq	-32(%rbp), %rax
	leaq	.LC229(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2261, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L548
.L550:
	leaq	.LC2(%rip), %rax
	movl	$2264, %edx
	movq	%rax, %rsi
	movl	$104, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC230(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2264, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L553
	movl	$0, %eax
	jmp	.L548
.L553:
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 6600(%rax)
	movl	$1, %eax
.L548:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	pbe_test_init, .-pbe_test_init
	.type	pbe_test_cleanup, @function
pbe_test_cleanup:
.LFB709:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2275, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2276, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2277, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	pbe_test_cleanup, .-pbe_test_cleanup
	.section	.rodata
.LC231:
	.string	"Password"
	.text
	.type	pbe_test_parse, @function
pbe_test_parse:
.LFB710:
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
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC231(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L556
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	56(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L557
.L556:
	leaq	.LC129(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L558
	movq	-8(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	72(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L557
.L558:
	leaq	.LC50(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L559
	movq	-8(%rbp), %rax
	leaq	96(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	88(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L557
.L559:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L560
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	pbkdf2_test_parse
	jmp	.L557
.L560:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L561
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	pkcs12_test_parse
	jmp	.L557
.L561:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L562
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	scrypt_test_parse
	jmp	.L557
.L562:
	movl	$0, %eax
.L557:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	pbe_test_parse, .-pbe_test_parse
	.section	.rodata
	.align 8
.LC232:
	.string	"key = OPENSSL_malloc(expected->key_len)"
.LC233:
	.string	"PBKDF2_ERROR"
.LC234:
	.string	"SCRYPT_ERROR"
.LC235:
	.string	"PKCS12_ERROR"
.LC236:
	.string	"KEY_MISMATCH"
	.text
	.type	pbe_test_run, @function
pbe_test_run:
.LFB711:
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
	movq	-56(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	libctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2311, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC232(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2311, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L564
	movq	-56(%rbp), %rax
	leaq	.LC143(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L565
.L564:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L566
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	movl	%eax, %r8d
	movq	-32(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-32(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movl	%eax, %r10d
	movq	-32(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movl	%eax, %edi
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	pushq	-48(%rbp)
	pushq	%r8
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movl	%r10d, %ecx
	movl	%edi, %esi
	movq	%rax, %rdi
	call	PKCS5_PBKDF2_HMAC@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L567
	movq	-56(%rbp), %rax
	leaq	.LC233(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L565
.L566:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L568
	movq	-32(%rbp), %rax
	movq	96(%rax), %r9
	movq	-32(%rbp), %rax
	movq	32(%rax), %r8
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	16(%rax), %r11
	movq	-32(%rbp), %rax
	movq	8(%rax), %r10
	movq	-32(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	pushq	%r9
	pushq	-48(%rbp)
	pushq	%r8
	pushq	%rdi
	movq	%r11, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	EVP_PBE_scrypt@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L567
	movq	-56(%rbp), %rax
	leaq	.LC234(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L565
.L568:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L567
	movq	propquery(%rip), %rbx
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rcx
	movq	libctx(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L569
	movq	-56(%rbp), %rax
	leaq	.LC235(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L565
.L569:
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	movl	%eax, %r8d
	movq	-32(%rbp), %rax
	movl	44(%rax), %esi
	movq	-32(%rbp), %rax
	movl	40(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movl	%eax, %r10d
	movq	-32(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movl	%eax, %edi
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	subq	$8, %rsp
	pushq	-24(%rbp)
	pushq	-48(%rbp)
	pushq	%r8
	movl	%esi, %r9d
	movl	%ecx, %r8d
	movl	%r10d, %ecx
	movl	%edi, %esi
	movq	%rax, %rdi
	call	PKCS12_key_gen_uni@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L567
	movq	-56(%rbp), %rax
	leaq	.LC235(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L565
.L567:
	movq	-32(%rbp), %rax
	movq	96(%rax), %r8
	movq	-32(%rbp), %rax
	movq	96(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-48(%rbp), %rdi
	leaq	.LC236(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	memory_err_compare
	testl	%eax, %eax
	je	.L572
	movq	-56(%rbp), %rax
	movq	$0, 6568(%rax)
	jmp	.L565
.L572:
	nop
.L565:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$2355, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movl	$1, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	pbe_test_run, .-pbe_test_run
	.section	.rodata
.LC237:
	.string	"PBE"
	.section	.data.rel.ro.local
	.align 32
	.type	pbe_test_method, @object
	.size	pbe_test_method, 40
pbe_test_method:
	.quad	.LC237
	.quad	pbe_test_init
	.quad	pbe_test_cleanup
	.quad	pbe_test_parse
	.quad	pbe_test_run
	.section	.rodata
	.align 8
.LC238:
	.string	"edata = OPENSSL_zalloc(sizeof(*edata))"
.LC239:
	.string	"canonical"
.LC240:
	.string	"valid"
.LC241:
	.string	"invalid"
.LC242:
	.string	"DECODE_ERROR"
	.align 8
.LC243:
	.string	"t->expected_err = OPENSSL_strdup(\"DECODE_ERROR\")"
	.align 8
.LC244:
	.string	"Bad encoding: %s. Should be one of {canonical, valid, invalid}"
	.text
	.type	encode_test_init, @function
encode_test_init:
.LFB712:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC2(%rip), %rax
	movl	$2393, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC238(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2393, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L574
	movl	$0, %eax
	jmp	.L575
.L574:
	leaq	.LC239(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L576
	movq	-8(%rbp), %rax
	movl	$0, 32(%rax)
	jmp	.L577
.L576:
	leaq	.LC240(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L578
	movq	-8(%rbp), %rax
	movl	$1, 32(%rax)
	jmp	.L577
.L578:
	leaq	.LC241(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L579
	movq	-8(%rbp), %rax
	movl	$2, 32(%rax)
	leaq	.LC2(%rip), %rcx
	leaq	.LC242(%rip), %rax
	movl	$2401, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 6584(%rdx)
	movq	-24(%rbp), %rax
	movq	6584(%rax), %rax
	leaq	.LC243(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2401, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L577
	jmp	.L580
.L579:
	movq	-32(%rbp), %rax
	leaq	.LC244(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2404, %esi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L580
.L577:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 6600(%rax)
	movl	$1, %eax
	jmp	.L575
.L580:
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$2412, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L575:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	encode_test_init, .-encode_test_init
	.type	encode_test_cleanup, @function
encode_test_cleanup:
.LFB713:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2420, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2421, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE713:
	.size	encode_test_cleanup, .-encode_test_cleanup
	.type	encode_test_parse, @function
encode_test_parse:
.LFB714:
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
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC16(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L583
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L584
.L583:
	leaq	.LC17(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L585
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L584
.L585:
	movl	$0, %eax
.L584:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE714:
	.size	encode_test_parse, .-encode_test_parse
	.section	.rodata
	.align 8
.LC245:
	.string	"decode_ctx = EVP_ENCODE_CTX_new()"
	.align 8
.LC246:
	.string	"encode_ctx = EVP_ENCODE_CTX_new()"
	.align 8
.LC247:
	.string	"encode_out = OPENSSL_malloc(EVP_ENCODE_LENGTH(expected->input_len))"
	.align 8
.LC248:
	.string	"EVP_EncodeUpdate(encode_ctx, encode_out, &chunk_len, expected->input, expected->input_len)"
.LC249:
	.string	"BAD_ENCODING"
	.align 8
.LC250:
	.string	"decode_out = OPENSSL_malloc(EVP_DECODE_LENGTH(expected->output_len))"
.LC251:
	.string	"BAD_DECODING"
	.text
	.type	encode_test_run, @function
encode_test_run:
.LFB715:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	call	EVP_ENCODE_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC245(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2444, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L587
	movq	-56(%rbp), %rax
	leaq	.LC143(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L588
.L587:
	movq	-32(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jne	.L589
	call	EVP_ENCODE_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC246(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2451, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L598
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	addq	$2, %rax
	movabsq	$-6148914691236517205, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	%rax
	leaq	(%rax,%rax), %rcx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movabsq	$-6148914691236517205, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$5, %rax
	addq	%rcx, %rax
	addq	$41, %rax
	addq	%rax, %rax
	leaq	.LC2(%rip), %rcx
	movl	$2453, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC247(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2452, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L598
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_EncodeInit@PLT
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %edi
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncodeUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC248(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$2457, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L599
	movl	-48(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncodeFinal@PLT
	movl	-48(%rbp), %eax
	addl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %r8
	movq	-32(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rdi
	leaq	.LC249(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	memory_err_compare
	testl	%eax, %eax
	je	.L600
.L589:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	addq	$3, %rax
	shrq	$2, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	$80, %rax
	leaq	.LC2(%rip), %rcx
	movl	$2473, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC250(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2472, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L601
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_DecodeInit@PLT
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rcx
	leaq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecodeUpdate@PLT
	testl	%eax, %eax
	jns	.L594
	movq	-56(%rbp), %rax
	leaq	.LC242(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L588
.L594:
	movl	-48(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DecodeFinal@PLT
	cmpl	$1, %eax
	je	.L595
	movq	-56(%rbp), %rax
	leaq	.LC242(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L588
.L595:
	movl	-48(%rbp), %eax
	addl	%eax, -44(%rbp)
	movq	-32(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$2, %eax
	je	.L596
	movl	-44(%rbp), %eax
	movslq	%eax, %r8
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rdi
	leaq	.LC251(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	memory_err_compare
	testl	%eax, %eax
	jne	.L596
	movq	-56(%rbp), %rax
	leaq	.LC251(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L588
.L596:
	movq	-56(%rbp), %rax
	movq	$0, 6568(%rax)
	jmp	.L588
.L598:
	nop
	jmp	.L588
.L599:
	nop
	jmp	.L588
.L600:
	nop
	jmp	.L588
.L601:
	nop
.L588:
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$2500, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$2501, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_ENCODE_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_ENCODE_CTX_free@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE715:
	.size	encode_test_run, .-encode_test_run
	.section	.rodata
.LC252:
	.string	"Encoding"
	.section	.data.rel.ro.local
	.align 32
	.type	encode_test_method, @object
	.size	encode_test_method, 40
encode_test_method:
	.quad	.LC252
	.quad	encode_test_init
	.quad	encode_test_cleanup
	.quad	encode_test_parse
	.quad	encode_test_run
	.section	.rodata
	.align 8
.LC253:
	.string	"rdata = OPENSSL_zalloc(sizeof(*rdata))"
.LC254:
	.string	"-fips"
.LC255:
	.string	"TEST-RAND"
.LC256:
	.string	"strength"
	.text
	.type	rand_test_init, @function
rand_test_init:
.LFB716:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movl	$256, -100(%rbp)
	leaq	.LC2(%rip), %rax
	movl	$2559, %edx
	movq	%rax, %rsi
	movl	$2448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC253(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2559, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L603
	movl	$0, %eax
	jmp	.L611
.L603:
	movq	libctx(%rip), %rax
	leaq	.LC254(%rip), %rdx
	leaq	.LC255(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_fetch@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L612
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_RAND_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L613
	leaq	-176(%rbp), %rax
	leaq	-100(%rbp), %rdx
	leaq	.LC256(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
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
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_CTX_set_params@PLT
	testl	%eax, %eax
	je	.L614
	movq	propquery(%rip), %rdx
	movq	libctx(%rip), %rax
	movq	-128(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_fetch@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L615
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_free@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L616
	movq	-8(%rbp), %rax
	movl	$-1, 16(%rax)
	movq	-120(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 6600(%rax)
	movl	$1, %eax
	jmp	.L611
.L612:
	nop
	jmp	.L606
.L613:
	nop
	jmp	.L606
.L614:
	nop
	jmp	.L606
.L615:
	nop
	jmp	.L606
.L616:
	nop
.L606:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$2588, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L611:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE716:
	.size	rand_test_init, .-rand_test_init
	.type	rand_test_cleanup, @function
rand_test_cleanup:
.LFB717:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2597, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2598, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, -4(%rbp)
	jmp	.L618
.L619:
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$48, %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2601, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$56, %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2602, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$64, %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2603, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$72, %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2604, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$80, %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2605, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$88, %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2606, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$96, %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2607, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$104, %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2608, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$112, %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2609, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$120, %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2610, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addl	$1, -4(%rbp)
.L618:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jle	.L619
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE717:
	.size	rand_test_cleanup, .-rand_test_cleanup
	.section	.rodata
.LC257:
	.string	"Entropy."
.LC258:
	.string	"ReseedEntropy."
.LC259:
	.string	"Nonce."
.LC260:
	.string	"PersonalisationString."
.LC261:
	.string	"ReseedAdditionalInput."
.LC262:
	.string	"AdditionalInputA."
.LC263:
	.string	"AdditionalInputB."
.LC264:
	.string	"EntropyPredictionResistanceA."
.LC265:
	.string	"EntropyPredictionResistanceB."
.LC266:
	.string	"Output."
	.align 8
.LC267:
	.string	"rdata->cipher = OPENSSL_strdup(value)"
	.align 8
.LC268:
	.string	"rdata->digest = OPENSSL_strdup(value)"
.LC269:
	.string	"DerivationFunction"
.LC270:
	.string	"GenerateBits"
.LC271:
	.string	"PredictionResistance"
	.text
	.type	rand_test_parse, @function
rand_test_parse:
.LFB718:
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
	movq	-40(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L621
	addq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -20(%rbp)
	cmpl	$14, -20(%rbp)
	jle	.L622
	movl	$0, %eax
	jmp	.L623
.L622:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jle	.L624
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 16(%rax)
.L624:
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	leaq	.LC257(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L625
	movq	-32(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L623
.L625:
	leaq	.LC258(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$14, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L626
	movq	-32(%rbp), %rax
	leaq	144(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L623
.L626:
	leaq	.LC259(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L627
	movq	-32(%rbp), %rax
	leaq	88(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L623
.L627:
	leaq	.LC260(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$22, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L628
	movq	-32(%rbp), %rax
	leaq	96(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L623
.L628:
	leaq	.LC261(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$22, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L629
	movq	-32(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L623
.L629:
	leaq	.LC262(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$17, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L630
	movq	-32(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L623
.L630:
	leaq	.LC263(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$17, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L631
	movq	-32(%rbp), %rax
	leaq	112(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L623
.L631:
	leaq	.LC264(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$29, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L632
	movq	-32(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	56(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L623
.L632:
	leaq	.LC265(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$29, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L633
	movq	-32(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L623
.L633:
	leaq	.LC266(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L634
	movq	-32(%rbp), %rax
	leaq	136(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	72(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L623
.L621:
	leaq	.LC122(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L635
	leaq	.LC2(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$2655, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC267(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2655, %esi
	call	test_ptr@PLT
	jmp	.L623
.L635:
	leaq	.LC46(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L636
	leaq	.LC2(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$2657, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC268(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2657, %esi
	call	test_ptr@PLT
	jmp	.L623
.L636:
	leaq	.LC269(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L637
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 24(%rax)
	movl	$1, %eax
	jmp	.L623
.L637:
	leaq	.LC270(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L638
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L639
	movl	-20(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	je	.L640
.L639:
	movl	$0, %eax
	jmp	.L623
.L640:
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 28(%rax)
	movl	$1, %eax
	jmp	.L623
.L638:
	leaq	.LC271(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L634
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 20(%rax)
	movl	$1, %eax
	jmp	.L623
.L634:
	movl	$0, %eax
.L623:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE718:
	.size	rand_test_parse, .-rand_test_parse
	.section	.rodata
.LC272:
	.string	"use_derivation_function"
.LC273:
	.string	"mac"
	.align 8
.LC274:
	.string	"EVP_RAND_CTX_set_params(expected->ctx, params)"
.LC275:
	.string	"test_entropy"
.LC276:
	.string	"test_nonce"
	.align 8
.LC277:
	.string	"EVP_RAND_instantiate(expected->parent, strength, 0, NULL, 0, params)"
	.align 8
.LC278:
	.string	"EVP_RAND_instantiate (expected->ctx, strength, expected->prediction_resistance, z, item->pers_len, NULL)"
	.align 8
.LC279:
	.string	"EVP_RAND_CTX_set_params(expected->parent, params)"
	.align 8
.LC280:
	.string	"EVP_RAND_reseed (expected->ctx, expected->prediction_resistance, NULL, 0, item->reseed_addin, item->reseed_addin_len)"
	.align 8
.LC281:
	.string	"EVP_RAND_generate (expected->ctx, got, got_len, strength, expected->prediction_resistance, item->addinA, item->addinA_len)"
	.align 8
.LC282:
	.string	"EVP_RAND_generate (expected->ctx, got, got_len, strength, expected->prediction_resistance, item->addinB, item->addinB_len)"
.LC283:
	.string	"item->output"
	.align 8
.LC284:
	.string	"EVP_RAND_uninstantiate(expected->ctx)"
	.align 8
.LC285:
	.string	"EVP_RAND_uninstantiate(expected->parent)"
	.align 8
.LC286:
	.string	"EVP_RAND_verify_zeroization(expected->ctx)"
.LC287:
	.string	"EVP_RAND_STATE_UNINITIALISED"
	.align 8
.LC288:
	.string	"EVP_RAND_get_state(expected->ctx)"
.LC289:
	.string	"Error in test case %d of %d\n"
	.text
	.type	rand_test_run, @function
rand_test_run:
.LFB719:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$344, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	28(%rax), %eax
	shrl	$3, %eax
	movl	%eax, %eax
	movq	%rax, -56(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$-1, -28(%rbp)
	movl	$0, -32(%rbp)
	leaq	.LC2(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$2687, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC148(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2687, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L642
	movl	$0, %eax
	jmp	.L668
.L642:
	movq	-48(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-352(%rbp), %rax
	leaq	.LC272(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
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
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L644
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-352(%rbp), %rax
	leaq	.LC152(%rip), %rsi
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
.L644:
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L645
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-352(%rbp), %rax
	leaq	.LC153(%rip), %rsi
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
.L645:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-352(%rbp), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC273(%rip), %rsi
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
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	-288(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC274(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$2699, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L669
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_RAND_get_strength@PLT
	movl	%eax, -68(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L648
.L666:
	movq	-48(%rbp), %rax
	leaq	48(%rax), %rcx
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L649
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L650
.L649:
	leaq	.LC116(%rip), %rax
	movq	%rax, -40(%rbp)
.L650:
	movq	-80(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-352(%rbp), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC275(%rip), %rsi
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
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L651
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L652
.L651:
	leaq	.LC116(%rip), %rax
	movq	%rax, -40(%rbp)
.L652:
	movq	-80(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-352(%rbp), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC276(%rip), %rsi
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
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-288(%rbp), %rdx
	movl	-68(%rbp), %esi
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_RAND_instantiate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC277(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$2714, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L670
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L654
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L655
.L654:
	leaq	.LC116(%rip), %rax
	movq	%rax, -40(%rbp)
.L655:
	movq	-80(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-48(%rbp), %rax
	movl	20(%rax), %edx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-68(%rbp), %esi
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_RAND_instantiate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC278(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$2719, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L671
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L657
	movq	-80(%rbp), %rax
	movq	144(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-352(%rbp), %rax
	leaq	.LC275(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -272(%rbp)
	movq	%rdx, -264(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -256(%rbp)
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, -248(%rbp)
	movq	%rdx, -240(%rbp)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -232(%rbp)
	movq	%rdx, -224(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-288(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC279(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$2730, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L672
	movq	-80(%rbp), %rax
	movq	152(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-48(%rbp), %rax
	movl	20(%rax), %esi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_RAND_reseed@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC280(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$2733, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L673
.L657:
	movq	-80(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L659
	movq	-80(%rbp), %rax
	movq	120(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	56(%rax), %rdx
	leaq	-352(%rbp), %rax
	leaq	.LC275(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -272(%rbp)
	movq	%rdx, -264(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -256(%rbp)
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, -248(%rbp)
	movq	%rdx, -240(%rbp)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -232(%rbp)
	movq	%rdx, -224(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-288(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC279(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$2744, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L674
.L659:
	movq	-80(%rbp), %rax
	movq	104(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	40(%rax), %r9
	movq	-48(%rbp), %rax
	movl	20(%rax), %r8d
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rsi
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	EVP_RAND_generate@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC281(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$2747, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L675
	movq	-80(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L661
	movq	-80(%rbp), %rax
	movq	128(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	64(%rax), %rdx
	leaq	-352(%rbp), %rax
	leaq	.LC275(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -272(%rbp)
	movq	%rdx, -264(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -256(%rbp)
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, -248(%rbp)
	movq	%rdx, -240(%rbp)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -232(%rbp)
	movq	%rdx, -224(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-288(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC279(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$2758, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L676
.L661:
	movq	-80(%rbp), %rax
	movq	112(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	48(%rax), %r9
	movq	-48(%rbp), %rax
	movl	20(%rax), %r8d
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rsi
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	EVP_RAND_generate@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC282(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$2761, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L677
	movq	-80(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-56(%rbp), %r9
	movq	-64(%rbp), %r8
	leaq	.LC283(%rip), %rcx
	leaq	.LC0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$2766, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L678
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_RAND_uninstantiate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC284(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$2768, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L679
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_RAND_uninstantiate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC285(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$2769, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L679
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_RAND_verify_zeroization@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC286(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$2770, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L679
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_RAND_get_state@PLT
	movl	%eax, %esi
	leaq	.LC287(%rip), %rcx
	leaq	.LC288(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2771, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L679
	addl	$1, -28(%rbp)
.L648:
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jle	.L666
	movq	-296(%rbp), %rax
	movq	$0, 6568(%rax)
	movl	$1, -32(%rbp)
	jmp	.L647
.L669:
	nop
	jmp	.L647
.L670:
	nop
	jmp	.L647
.L671:
	nop
	jmp	.L647
.L672:
	nop
	jmp	.L647
.L673:
	nop
	jmp	.L647
.L674:
	nop
	jmp	.L647
.L675:
	nop
	jmp	.L647
.L676:
	nop
	jmp	.L647
.L677:
	nop
	jmp	.L647
.L678:
	nop
	jmp	.L647
.L679:
	nop
.L647:
	cmpl	$0, -32(%rbp)
	jne	.L667
	cmpl	$0, -28(%rbp)
	js	.L667
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	leal	1(%rax), %ecx
	movl	-28(%rbp), %eax
	leaq	.LC289(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$2780, %esi
	movl	$0, %eax
	call	test_info@PLT
.L667:
	leaq	.LC2(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$2781, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-32(%rbp), %eax
.L668:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE719:
	.size	rand_test_run, .-rand_test_run
	.section	.rodata
.LC290:
	.string	"RAND"
	.section	.data.rel.ro.local
	.align 32
	.type	rand_test_method, @object
	.size	rand_test_method, 40
rand_test_method:
	.quad	.LC290
	.quad	rand_test_init
	.quad	rand_test_cleanup
	.quad	rand_test_parse
	.quad	rand_test_run
	.text
	.type	kdf_test_init, @function
kdf_test_init:
.LFB720:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	is_kdf_disabled
	testl	%eax, %eax
	je	.L681
	movq	-48(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2817, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-40(%rbp), %rax
	movl	$1, 6552(%rax)
	movl	$1, %eax
	jmp	.L682
.L681:
	leaq	.LC2(%rip), %rax
	movl	$2822, %edx
	movq	%rax, %rsi
	movl	$832, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2822, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L683
	movl	$0, %eax
	jmp	.L682
.L683:
	movq	-24(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 824(%rax)
	movq	-24(%rbp), %rax
	movq	824(%rax), %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	propquery(%rip), %rdx
	movq	libctx(%rip), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_fetch@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L684
	leaq	.LC2(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$2829, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L682
.L684:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L685
	leaq	.LC2(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$2835, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L682
.L685:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 6600(%rax)
	movl	$1, %eax
.L682:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE720:
	.size	kdf_test_init, .-kdf_test_init
	.type	kdf_test_cleanup, @function
kdf_test_cleanup:
.LFB721:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -8(%rbp)
	jmp	.L687
.L688:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2848, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addq	$40, -8(%rbp)
.L687:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L688
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2849, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE721:
	.size	kdf_test_cleanup, .-kdf_test_cleanup
	.section	.rodata
.LC291:
	.string	"name = OPENSSL_strdup(value)"
	.align 8
.LC292:
	.string	"skipping, setting 'r' is unsupported"
.LC293:
	.string	"lanes"
	.align 8
.LC294:
	.string	"skipping, setting 'lanes' is unsupported"
	.align 8
.LC295:
	.string	"skipping, setting 'iter' is unsupported"
.LC296:
	.string	"memcost"
	.align 8
.LC297:
	.string	"skipping, setting 'memcost' is unsupported"
.LC298:
	.string	"secret"
	.align 8
.LC299:
	.string	"skipping, setting 'secret' is unsupported"
.LC300:
	.string	"pass"
	.align 8
.LC301:
	.string	"skipping, setting 'pass' is unsupported"
.LC302:
	.string	"ad"
	.align 8
.LC303:
	.string	"skipping, setting 'ad' is unsupported"
.LC304:
	.string	"KDF_PARAM_ERROR"
	.text
	.type	kdf_test_ctrl, @function
kdf_test_ctrl:
.LFB722:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_kdf@PLT
	movq	%rax, %rdi
	call	EVP_KDF_settable_ctx_params@PLT
	movq	%rax, -40(%rbp)
	leaq	.LC2(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$2861, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC291(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2861, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L690
	movl	$0, %eax
	jmp	.L691
.L690:
	movq	-48(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L692
	leaq	.LC116(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L693
.L692:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
.L693:
	leaq	.LC221(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L694
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	jne	.L694
	leaq	.LC292(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2871, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-72(%rbp), %rax
	movl	$1, 6552(%rax)
	jmp	.L695
.L694:
	leaq	.LC293(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L696
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	jne	.L696
	leaq	.LC294(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2878, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-72(%rbp), %rax
	movl	$1, 6552(%rax)
	jmp	.L695
.L696:
	leaq	.LC223(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L697
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	jne	.L697
	leaq	.LC295(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2885, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-72(%rbp), %rax
	movl	$1, 6552(%rax)
	jmp	.L695
.L697:
	leaq	.LC296(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L698
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	jne	.L698
	leaq	.LC297(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2892, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-72(%rbp), %rax
	movl	$1, 6552(%rax)
	jmp	.L695
.L698:
	leaq	.LC298(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L699
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	jne	.L699
	leaq	.LC299(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2899, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-72(%rbp), %rax
	movl	$1, 6552(%rax)
	jmp	.L695
.L699:
	leaq	.LC300(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L700
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	jne	.L700
	leaq	.LC301(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2906, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-72(%rbp), %rax
	movl	$1, 6552(%rax)
	jmp	.L695
.L700:
	leaq	.LC302(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L701
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	jne	.L701
	leaq	.LC303(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2913, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-72(%rbp), %rax
	movl	$1, 6552(%rax)
	jmp	.L695
.L701:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdi
	movq	-32(%rbp), %rax
	movq	824(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	OSSL_PARAM_allocate_from_text@PLT
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rax
	movq	824(%rax), %rax
	leaq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 824(%rax)
	movq	-32(%rbp), %rax
	movq	824(%rax), %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 32(%rbx)
	cmpl	$0, -52(%rbp)
	jne	.L702
	movq	-72(%rbp), %rax
	leaq	.LC304(%rip), %rdx
	movq	%rdx, 6568(%rax)
	leaq	.LC2(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$2923, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L691
.L702:
	leaq	.LC153(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L703
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_digest_disabled
	testl	%eax, %eax
	je	.L707
	movq	-24(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2928, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-72(%rbp), %rax
	movl	$1, 6552(%rax)
	jmp	.L707
.L703:
	leaq	.LC152(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L705
	leaq	.LC206(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L706
.L705:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_cipher_disabled
	testl	%eax, %eax
	je	.L706
	movq	-24(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2937, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-72(%rbp), %rax
	movl	$1, 6552(%rax)
	jmp	.L695
.L706:
	leaq	.LC273(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L708
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_mac_disabled
	testl	%eax, %eax
	je	.L708
	movq	-24(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2943, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-72(%rbp), %rax
	movl	$1, 6552(%rax)
	jmp	.L695
.L707:
	nop
	jmp	.L695
.L708:
	nop
.L695:
	leaq	.LC2(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$2947, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
.L691:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE722:
	.size	kdf_test_ctrl, .-kdf_test_ctrl
	.type	kdf_test_parse, @function
kdf_test_parse:
.LFB723:
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
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC17(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L710
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L711
.L710:
	leaq	.LC132(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L712
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	kdf_test_ctrl
	jmp	.L711
.L712:
	movl	$0, %eax
.L711:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE723:
	.size	kdf_test_parse, .-kdf_test_parse
	.section	.rodata
.LC305:
	.string	"KDF_CTRL_ERROR"
	.align 8
.LC306:
	.string	"got = OPENSSL_malloc(got_len == 0 ? 1 : got_len)"
.LC307:
	.string	"KDF_DERIVE_ERROR"
.LC308:
	.string	"KDF_MISMATCH"
	.text
	.type	kdf_test_run, @function
kdf_test_run:
.LFB724:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	jne	.L714
	movq	-40(%rbp), %rax
	leaq	.LC305(%rip), %rdx
	movq	%rdx, 6568(%rax)
	movl	$1, %eax
	jmp	.L715
.L714:
	cmpq	$0, -24(%rbp)
	je	.L716
	movq	-24(%rbp), %rax
	jmp	.L717
.L716:
	movl	$1, %eax
.L717:
	leaq	.LC2(%rip), %rcx
	movl	$2974, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC306(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$2974, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L718
	movq	-40(%rbp), %rax
	leaq	.LC143(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L719
.L718:
	movq	libctx(%rip), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	fips_provider_version_gt@PLT
	testl	%eax, %eax
	je	.L720
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_dup@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L720
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
.L720:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	testl	%eax, %eax
	jg	.L721
	movq	-40(%rbp), %rax
	leaq	.LC307(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L719
.L721:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %r8
	movq	-16(%rbp), %rdi
	leaq	.LC308(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	memory_err_compare
	testl	%eax, %eax
	je	.L723
	movq	-40(%rbp), %rax
	movq	$0, 6568(%rax)
	jmp	.L719
.L723:
	nop
.L719:
	leaq	.LC2(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$2996, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
.L715:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE724:
	.size	kdf_test_run, .-kdf_test_run
	.section	.rodata
.LC309:
	.string	"KDF"
	.section	.data.rel.ro.local
	.align 32
	.type	kdf_test_method, @object
	.size	kdf_test_method, 40
kdf_test_method:
	.quad	.LC309
	.quad	kdf_test_init
	.quad	kdf_test_cleanup
	.quad	kdf_test_parse
	.quad	kdf_test_run
	.text
	.type	pkey_kdf_test_init, @function
pkey_kdf_test_init:
.LFB725:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_kdf_disabled
	testl	%eax, %eax
	je	.L725
	movq	-32(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$3029, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-24(%rbp), %rax
	movl	$1, 6552(%rax)
	movl	$1, %eax
	jmp	.L726
.L725:
	leaq	.LC2(%rip), %rax
	movl	$3034, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$3034, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L727
	movl	$0, %eax
	jmp	.L726
.L727:
	movq	propquery(%rip), %rdx
	movq	libctx(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L731
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_derive_init@PLT
	testl	%eax, %eax
	jle	.L731
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 6600(%rax)
	movl	$1, %eax
	jmp	.L726
.L731:
	nop
.L730:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$3046, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L726:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE725:
	.size	pkey_kdf_test_init, .-pkey_kdf_test_init
	.type	pkey_kdf_test_cleanup, @function
pkey_kdf_test_cleanup:
.LFB726:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$3054, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE726:
	.size	pkey_kdf_test_cleanup, .-pkey_kdf_test_cleanup
	.type	pkey_kdf_test_parse, @function
pkey_kdf_test_parse:
.LFB727:
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
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC17(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L734
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L735
.L734:
	leaq	.LC132(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L736
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	pkey_test_ctrl
	jmp	.L735
.L736:
	movl	$0, %eax
.L735:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE727:
	.size	pkey_kdf_test_parse, .-pkey_kdf_test_parse
	.type	pkey_kdf_test_run, @function
pkey_kdf_test_run:
.LFB728:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	libctx(%rip), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	fips_provider_version_eq@PLT
	testl	%eax, %eax
	je	.L738
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L739
.L738:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	-24(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	testl	%eax, %eax
	jg	.L740
	movq	-40(%rbp), %rax
	leaq	.LC143(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L741
.L740:
	movq	-24(%rbp), %rax
	cmpq	$-1, %rax
	je	.L742
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L743
.L742:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L739
.L743:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rax, %rax
	movq	%rax, -24(%rbp)
.L739:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L744
	movq	-24(%rbp), %rax
	jmp	.L745
.L744:
	movl	$1, %eax
.L745:
	leaq	.LC2(%rip), %rcx
	movl	$3097, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC306(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$3097, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L746
	movq	-40(%rbp), %rax
	leaq	.LC143(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L741
.L746:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	testl	%eax, %eax
	jg	.L747
	movq	-40(%rbp), %rax
	leaq	.LC307(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L741
.L747:
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	16(%rax), %r8
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	.LC44(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	pushq	-8(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$3105, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L748
	movq	-40(%rbp), %rax
	leaq	.LC308(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L741
.L748:
	movq	-40(%rbp), %rax
	movq	$0, 6568(%rax)
.L741:
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$3112, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	pkey_kdf_test_run, .-pkey_kdf_test_run
	.section	.rodata
.LC310:
	.string	"PKEYKDF"
	.section	.data.rel.ro.local
	.align 32
	.type	pkey_kdf_test_method, @object
	.size	pkey_kdf_test_method, 40
pkey_kdf_test_method:
	.quad	.LC310
	.quad	pkey_kdf_test_init
	.quad	pkey_kdf_test_cleanup
	.quad	pkey_kdf_test_parse
	.quad	pkey_kdf_test_run
	.section	.rodata
.LC311:
	.string	"priv = OPENSSL_strdup(pair)"
.LC312:
	.string	"pub = strchr(priv, ':')"
.LC313:
	.string	"PARSING_ERROR"
	.align 8
.LC314:
	.string	"find_key(&pk, priv, private_keys)"
.LC315:
	.string	"Can't find private key: %s"
.LC316:
	.string	"MISSING_PRIVATE_KEY"
	.align 8
.LC317:
	.string	"find_key(&pubk, pub, public_keys)"
.LC318:
	.string	"Can't find public key: %s"
.LC319:
	.string	"MISSING_PUBLIC_KEY"
	.align 8
.LC320:
	.string	"data = OPENSSL_malloc(sizeof(*data))"
	.text
	.type	keypair_test_init, @function
keypair_test_init:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC2(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$3141, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC311(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$3141, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L751
	movq	-16(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC312(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$3142, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L752
.L751:
	movq	-56(%rbp), %rax
	leaq	.LC313(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L753
.L752:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
	movq	private_keys(%rip), %rdx
	movq	-16(%rbp), %rcx
	leaq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_key
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC314(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$3148, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L754
	movq	-16(%rbp), %rax
	leaq	.LC315(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$3149, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-56(%rbp), %rax
	leaq	.LC316(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L753
.L754:
	movq	public_keys(%rip), %rdx
	movq	-24(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_key
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC317(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$3153, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L755
	movq	-24(%rbp), %rax
	leaq	.LC318(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$3154, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-56(%rbp), %rax
	leaq	.LC319(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L753
.L755:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L756
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L756
	movq	-56(%rbp), %rax
	movl	$1, 6552(%rax)
	movl	$1, -4(%rbp)
	jmp	.L753
.L756:
	leaq	.LC2(%rip), %rax
	movl	$3166, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC320(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$3166, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L759
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 6600(%rax)
	movl	$1, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	$0, 6568(%rax)
	jmp	.L753
.L759:
	nop
.L753:
	leaq	.LC2(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$3175, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	keypair_test_init, .-keypair_test_init
	.type	keypair_test_cleanup, @function
keypair_test_cleanup:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	6600(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$3181, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 6600(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	keypair_test_cleanup, .-keypair_test_cleanup
	.type	void_test_parse, @function
void_test_parse:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	void_test_parse, .-void_test_parse
	.section	.rodata
.LC321:
	.string	"KEYPAIR_TYPE_MISMATCH"
.LC322:
	.string	"KEYPAIR_MISMATCH"
.LC323:
	.string	"UNSUPPORTED_KEY_COMPARISON"
	.align 8
.LC324:
	.string	"Unexpected error in key comparison"
	.text
	.type	keypair_test_run, @function
keypair_test_run:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L764
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L765
.L764:
	movq	-24(%rbp), %rax
	leaq	.LC321(%rip), %rdx
	movq	%rdx, 6568(%rax)
	movl	$1, -4(%rbp)
	jmp	.L766
.L765:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	.L767
	cmpl	$0, -4(%rbp)
	jne	.L768
	movq	-24(%rbp), %rax
	leaq	.LC322(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L769
.L768:
	cmpl	$-1, -4(%rbp)
	jne	.L770
	movq	-24(%rbp), %rax
	leaq	.LC321(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L769
.L770:
	cmpl	$-2, -4(%rbp)
	jne	.L771
	movq	-24(%rbp), %rax
	leaq	.LC323(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L769
.L771:
	leaq	.LC324(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$3217, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
	jmp	.L766
.L769:
	movl	$1, -4(%rbp)
	jmp	.L766
.L767:
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, 6568(%rax)
.L766:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	keypair_test_run, .-keypair_test_run
	.section	.rodata
.LC325:
	.string	"PrivPubKeyPair"
	.section	.data.rel.ro.local
	.align 32
	.type	keypair_test_method, @object
	.size	keypair_test_method, 40
keypair_test_method:
	.quad	.LC325
	.quad	keypair_test_init
	.quad	keypair_test_cleanup
	.quad	void_test_parse
	.quad	keypair_test_run
	.section	.rodata
	.align 8
.LC326:
	.string	"genctx = EVP_PKEY_CTX_new_from_name(libctx, alg, propquery)"
.LC327:
	.string	"KEYGEN_INIT_ERROR"
	.text
	.type	keygen_test_init, @function
keygen_test_init:
.LFB733:
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
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L774
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_ln2nid@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L774
	movl	$0, %eax
	jmp	.L775
.L774:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	is_pkey_disabled
	testl	%eax, %eax
	je	.L776
	movq	-40(%rbp), %rax
	movl	$1, 6552(%rax)
	movl	$1, %eax
	jmp	.L775
.L776:
	movq	propquery(%rip), %rdx
	movq	libctx(%rip), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC326(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$3265, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L781
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	testl	%eax, %eax
	jg	.L779
	movq	-40(%rbp), %rax
	leaq	.LC327(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L778
.L779:
	leaq	.LC2(%rip), %rax
	movl	$3273, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC320(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$3273, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L782
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 6600(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 6568(%rax)
	movl	$1, %eax
	jmp	.L775
.L781:
	nop
	jmp	.L778
.L782:
	nop
.L778:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	$0, %eax
.L775:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	keygen_test_init, .-keygen_test_init
	.type	keygen_test_cleanup, @function
keygen_test_cleanup:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$3291, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$3292, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 6600(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	keygen_test_cleanup, .-keygen_test_cleanup
	.section	.rodata
.LC328:
	.string	"KeyName"
	.align 8
.LC329:
	.string	"keygen->keyname = OPENSSL_strdup(value)"
	.text
	.type	keygen_test_parse, @function
keygen_test_parse:
.LFB735:
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
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC328(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L785
	leaq	.LC2(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$3302, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC329(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$3302, %esi
	call	test_ptr@PLT
	jmp	.L786
.L785:
	leaq	.LC132(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L787
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	pkey_test_ctrl
	jmp	.L786
.L787:
	movl	$0, %eax
.L786:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	keygen_test_parse, .-keygen_test_parse
	.section	.rodata
.LC330:
	.string	"KEYGEN_GENERATE_ERROR"
	.align 8
.LC331:
	.string	"Warning: legacy key generated %s"
.LC332:
	.string	"Duplicate key %s"
	.align 8
.LC333:
	.string	"key = OPENSSL_malloc(sizeof(*key))"
	.text
	.type	keygen_test_run, @function
keygen_test_run:
.LFB736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -32(%rbp)
	movl	$1, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	testl	%eax, %eax
	jg	.L789
	movq	-40(%rbp), %rax
	leaq	.LC330(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L790
.L789:
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L791
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC331(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$3320, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L790
.L791:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L792
	movl	$0, -4(%rbp)
	movq	private_keys(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	find_key
	testl	%eax, %eax
	je	.L793
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC332(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$3328, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L790
.L793:
	leaq	.LC2(%rip), %rax
	movl	$3332, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC333(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$3332, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L797
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	private_keys(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, private_keys(%rip)
	movl	$1, -4(%rbp)
	jmp	.L795
.L792:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L795:
	movq	-40(%rbp), %rax
	movq	$0, 6568(%rax)
	jmp	.L790
.L797:
	nop
.L790:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	keygen_test_run, .-keygen_test_run
	.section	.rodata
.LC334:
	.string	"KeyGen"
	.section	.data.rel.ro.local
	.align 32
	.type	keygen_test_method, @object
	.size	keygen_test_method, 40
keygen_test_method:
	.quad	.LC334
	.quad	keygen_test_init
	.quad	keygen_test_cleanup
	.quad	keygen_test_parse
	.quad	keygen_test_run
	.section	.rodata
.LC335:
	.string	"mdat->ctx = EVP_MD_CTX_new()"
	.text
	.type	digestsigver_test_init, @function
digestsigver_test_init:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movq	$0, -8(%rbp)
	leaq	.LC10(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L799
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_digest_disabled
	testl	%eax, %eax
	je	.L800
	movq	-24(%rbp), %rax
	movl	$1, 6552(%rax)
	movl	$1, %eax
	jmp	.L801
.L800:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L799
	movl	$0, %eax
	jmp	.L801
.L799:
	leaq	.LC2(%rip), %rax
	movl	$3391, %edx
	movq	%rax, %rsi
	movl	$80, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$3391, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L802
	movl	$0, %eax
	jmp	.L801
.L802:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	call	EVP_MD_CTX_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC335(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$3394, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L803
	leaq	.LC2(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$3395, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L801
.L803:
	movq	-16(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movl	-40(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 6600(%rax)
	movl	$1, %eax
.L801:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	digestsigver_test_init, .-digestsigver_test_init
	.type	digestsign_test_init, @function
digestsign_test_init:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	digestsigver_test_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	digestsign_test_init, .-digestsign_test_init
	.type	digestsigver_test_cleanup, @function
digestsigver_test_cleanup:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	evp_test_buffer_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_TEST_BUFFER_pop_free
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$3415, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$3416, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$3417, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 6600(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	digestsigver_test_cleanup, .-digestsigver_test_cleanup
	.section	.rodata
.LC336:
	.string	"DIGESTVERIFYINIT_ERROR"
.LC337:
	.string	"NonceType"
.LC338:
	.string	"deterministic"
.LC339:
	.string	"nonce-type"
.LC340:
	.string	"EVP_PKEY_CTX_set_params_ERROR"
.LC341:
	.string	"EVP_PKEY_CTX_get_params_ERROR"
.LC342:
	.string	"nonce_type_not_modified_ERROR"
.LC343:
	.string	"nonce_type_value_ERROR"
	.text
	.type	digestsigver_test_parse, @function
digestsigver_test_parse:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-136(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC50(%rip), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L808
	movq	$0, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L809
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, -16(%rbp)
	jmp	.L810
.L809:
	movq	$0, -16(%rbp)
.L810:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L811
	movq	public_keys(%rip), %rdx
	movq	-152(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_key
	movl	%eax, -4(%rbp)
.L811:
	cmpl	$0, -4(%rbp)
	jne	.L812
	movq	private_keys(%rip), %rdx
	movq	-152(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_key
	movl	%eax, -4(%rbp)
.L812:
	cmpl	$0, -4(%rbp)
	je	.L813
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L814
.L813:
	movq	-136(%rbp), %rax
	movl	$1, 6552(%rax)
	movl	$1, %eax
	jmp	.L819
.L814:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L816
	movq	-32(%rbp), %rdi
	movq	libctx(%rip), %rcx
	movq	-24(%rbp), %rax
	leaq	24(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	subq	$8, %rsp
	pushq	$0
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EVP_DigestVerifyInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L817
	movq	-136(%rbp), %rax
	leaq	.LC336(%rip), %rdx
	movq	%rdx, 6568(%rax)
.L817:
	movl	$1, %eax
	jmp	.L819
.L816:
	movq	-32(%rbp), %rdi
	movq	libctx(%rip), %rcx
	movq	-24(%rbp), %rax
	leaq	24(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	subq	$8, %rsp
	pushq	$0
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EVP_DigestSignInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L818
	movq	-136(%rbp), %rax
	leaq	.LC144(%rip), %rdx
	movq	%rdx, 6568(%rax)
.L818:
	movl	$1, %eax
	jmp	.L819
.L808:
	leaq	.LC16(%rip), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L820
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L821
	movq	-24(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L819
.L821:
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_test_buffer_append
	jmp	.L819
.L820:
	leaq	.LC17(%rip), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L822
	movq	-24(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	56(%rax), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	jmp	.L819
.L822:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L823
	leaq	.LC18(%rip), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L824
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_test_buffer_set_count
	jmp	.L819
.L824:
	leaq	.LC19(%rip), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L823
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_test_buffer_ncopy
	jmp	.L819
.L823:
	leaq	.LC132(%rip), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L825
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L826
	movl	$-1, %eax
	jmp	.L819
.L826:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-152(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	pkey_test_ctrl
	jmp	.L819
.L825:
	leaq	.LC337(%rip), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L827
	leaq	.LC338(%rip), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L828
	movl	$1, -36(%rbp)
	leaq	-208(%rbp), %rax
	leaq	-36(%rbp), %rdx
	leaq	.LC339(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	jne	.L829
	movq	-136(%rbp), %rax
	leaq	.LC340(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L828
.L829:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_params@PLT
	testl	%eax, %eax
	jne	.L831
	movq	-136(%rbp), %rax
	leaq	.LC341(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L828
.L831:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	jne	.L832
	movq	-136(%rbp), %rax
	leaq	.LC342(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L828
.L832:
	movl	-36(%rbp), %eax
	cmpl	$1, %eax
	je	.L828
	movq	-136(%rbp), %rax
	leaq	.LC343(%rip), %rdx
	movq	%rdx, 6568(%rax)
.L828:
	movl	$1, %eax
	jmp	.L819
.L827:
	movl	$0, %eax
.L819:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	digestsigver_test_parse, .-digestsigver_test_parse
	.type	digestsign_update_fn, @function
digestsign_update_fn:
.LFB741:
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
	call	EVP_DigestSignUpdate@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	digestsign_update_fn, .-digestsign_update_fn
	.section	.rodata
.LC344:
	.string	"MALLOC_FAILURE"
.LC345:
	.string	"DIGESTSIGNFINAL_ERROR"
.LC346:
	.string	"SIGNATURE_MISMATCH"
	.text
	.type	digestsign_test_run, @function
digestsign_test_run:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	leaq	digestsign_update_fn(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_test_buffer_do
	testl	%eax, %eax
	jne	.L836
	movq	-40(%rbp), %rax
	leaq	.LC34(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L837
.L836:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-24(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	jne	.L838
	movq	-40(%rbp), %rax
	leaq	.LC147(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L837
.L838:
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$3515, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC148(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$3515, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L839
	movq	-40(%rbp), %rax
	leaq	.LC344(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L837
.L839:
	movq	-24(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	jne	.L840
	movq	-40(%rbp), %rax
	leaq	.LC345(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L837
.L840:
	movq	-24(%rbp), %r8
	movq	-16(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rdi
	leaq	.LC346(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	memory_err_compare
	testl	%eax, %eax
	je	.L843
	movq	-40(%rbp), %rax
	movq	$0, 6568(%rax)
	jmp	.L837
.L843:
	nop
.L837:
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$3531, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	digestsign_test_run, .-digestsign_test_run
	.section	.rodata
.LC347:
	.string	"DigestSign"
	.section	.data.rel.ro.local
	.align 32
	.type	digestsign_test_method, @object
	.size	digestsign_test_method, 40
digestsign_test_method:
	.quad	.LC347
	.quad	digestsign_test_init
	.quad	digestsigver_test_cleanup
	.quad	digestsigver_test_parse
	.quad	digestsign_test_run
	.text
	.type	digestverify_test_init, @function
digestverify_test_init:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	digestsigver_test_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	digestverify_test_init, .-digestverify_test_init
	.type	digestverify_update_fn, @function
digestverify_update_fn:
.LFB744:
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
	call	EVP_DigestVerifyUpdate@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	digestverify_update_fn, .-digestverify_update_fn
	.type	digestverify_test_run, @function
digestverify_test_run:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	digestverify_update_fn(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_test_buffer_do
	testl	%eax, %eax
	jne	.L849
	movq	-24(%rbp), %rax
	leaq	.LC34(%rip), %rdx
	movq	%rdx, 6568(%rax)
	movl	$1, %eax
	jmp	.L850
.L849:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyFinal@PLT
	testl	%eax, %eax
	jg	.L851
	movq	-24(%rbp), %rax
	leaq	.LC195(%rip), %rdx
	movq	%rdx, 6568(%rax)
.L851:
	movl	$1, %eax
.L850:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	digestverify_test_run, .-digestverify_test_run
	.section	.rodata
.LC348:
	.string	"DigestVerify"
	.section	.data.rel.ro.local
	.align 32
	.type	digestverify_test_method, @object
	.size	digestverify_test_method, 40
digestverify_test_method:
	.quad	.LC348
	.quad	digestverify_test_init
	.quad	digestsigver_test_cleanup
	.quad	digestsigver_test_parse
	.quad	digestverify_test_run
	.text
	.type	oneshot_digestsign_test_init, @function
oneshot_digestsign_test_init:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	digestsigver_test_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	oneshot_digestsign_test_init, .-oneshot_digestsign_test_init
	.section	.rodata
.LC349:
	.string	"DIGESTSIGN_LENGTH_ERROR"
.LC350:
	.string	"DIGESTSIGN_ERROR"
	.text
	.type	oneshot_digestsign_test_run, @function
oneshot_digestsign_test_run:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-24(%rbp), %rdx
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	testl	%eax, %eax
	jne	.L855
	movq	-40(%rbp), %rax
	leaq	.LC349(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L856
.L855:
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$3593, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC148(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$3593, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L857
	movq	-40(%rbp), %rax
	leaq	.LC344(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L856
.L857:
	movq	-24(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	testl	%eax, %eax
	jne	.L858
	movq	-40(%rbp), %rax
	leaq	.LC350(%rip), %rdx
	movq	%rdx, 6568(%rax)
	jmp	.L856
.L858:
	movq	-24(%rbp), %r8
	movq	-16(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rdi
	leaq	.LC346(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	memory_err_compare
	testl	%eax, %eax
	je	.L861
	movq	-40(%rbp), %rax
	movq	$0, 6568(%rax)
	jmp	.L856
.L861:
	nop
.L856:
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$3610, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	oneshot_digestsign_test_run, .-oneshot_digestsign_test_run
	.section	.rodata
.LC351:
	.string	"OneShotDigestSign"
	.section	.data.rel.ro.local
	.align 32
	.type	oneshot_digestsign_test_method, @object
	.size	oneshot_digestsign_test_method, 40
oneshot_digestsign_test_method:
	.quad	.LC351
	.quad	oneshot_digestsign_test_init
	.quad	digestsigver_test_cleanup
	.quad	digestsigver_test_parse
	.quad	oneshot_digestsign_test_run
	.text
	.type	oneshot_digestverify_test_init, @function
oneshot_digestverify_test_init:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	digestsigver_test_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	oneshot_digestverify_test_init, .-oneshot_digestverify_test_init
	.type	oneshot_digestverify_test_run, @function
oneshot_digestverify_test_run:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	6600(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_DigestVerify@PLT
	testl	%eax, %eax
	jg	.L865
	movq	-24(%rbp), %rax
	leaq	.LC195(%rip), %rdx
	movq	%rdx, 6568(%rax)
.L865:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	oneshot_digestverify_test_run, .-oneshot_digestverify_test_run
	.section	.rodata
.LC352:
	.string	"OneShotDigestVerify"
	.section	.data.rel.ro.local
	.align 32
	.type	oneshot_digestverify_test_method, @object
	.size	oneshot_digestverify_test_method, 40
oneshot_digestverify_test_method:
	.quad	.LC352
	.quad	oneshot_digestverify_test_init
	.quad	digestsigver_test_cleanup
	.quad	digestsigver_test_parse
	.quad	oneshot_digestverify_test_run
	.section	.data.rel.local,"aw"
	.align 32
	.type	evp_test_list, @object
	.size	evp_test_list, 160
evp_test_list:
	.quad	rand_test_method
	.quad	cipher_test_method
	.quad	digest_test_method
	.quad	digestsign_test_method
	.quad	digestverify_test_method
	.quad	encode_test_method
	.quad	kdf_test_method
	.quad	pkey_kdf_test_method
	.quad	keypair_test_method
	.quad	keygen_test_method
	.quad	mac_test_method
	.quad	oneshot_digestsign_test_method
	.quad	oneshot_digestverify_test_method
	.quad	pbe_test_method
	.quad	pdecrypt_test_method
	.quad	pderive_test_method
	.quad	psign_test_method
	.quad	pverify_recover_test_method
	.quad	pverify_test_method
	.quad	0
	.text
	.type	find_test, @function
find_test:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	evp_test_list(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L868
.L871:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L869
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L870
.L869:
	addq	$8, -8(%rbp)
.L868:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L871
	movl	$0, %eax
.L870:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	find_test, .-find_test
	.type	clear_test, @function
clear_test:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	test_clearstanza@PLT
	call	ERR_clear_error@PLT
	movq	-8(%rbp), %rax
	movq	6600(%rax), %rax
	testq	%rax, %rax
	je	.L873
	movq	-8(%rbp), %rax
	movq	6560(%rax), %rax
	testq	%rax, %rax
	je	.L874
	movq	-8(%rbp), %rax
	movq	6560(%rax), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L874:
	movq	-8(%rbp), %rax
	movq	6600(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$3691, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 6600(%rax)
.L873:
	movq	-8(%rbp), %rax
	movq	6584(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$3694, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 6584(%rax)
	movq	-8(%rbp), %rax
	movq	6592(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$3696, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 6592(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 6568(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 6552(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 6560(%rax)
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_set_max_threads@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	clear_test, .-clear_test
	.section	.rodata
	.align 8
.LC353:
	.string	"%s:%d: Source of above error (%s); unexpected error %s"
	.align 8
.LC354:
	.string	"%s:%d: Source of above error; unexpected error %s"
	.align 8
.LC355:
	.string	"%s:%d: Succeeded but was expecting %s"
.LC356:
	.string	"%s:%d: Expected %s got %s"
	.align 8
.LC357:
	.string	"%s:%d: Test is missing function or reason code"
	.align 8
.LC358:
	.string	"%s:%d: Expected error \"%s\" not set"
	.align 8
.LC359:
	.string	"%s:%d: Expected error \"%s\", no strings available. Assuming ok."
	.align 8
.LC360:
	.string	"%s:%d: Expected error \"%s\", got \"%s\""
	.text
	.type	check_test_error, @function
check_test_error:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	6568(%rax), %rax
	testq	%rax, %rax
	jne	.L876
	movq	-24(%rbp), %rax
	movq	6584(%rax), %rax
	testq	%rax, %rax
	jne	.L876
	movl	$1, %eax
	jmp	.L877
.L876:
	movq	-24(%rbp), %rax
	movq	6568(%rax), %rax
	testq	%rax, %rax
	je	.L878
	movq	-24(%rbp), %rax
	movq	6584(%rax), %rax
	testq	%rax, %rax
	jne	.L878
	movq	-24(%rbp), %rax
	movq	6576(%rax), %rax
	testq	%rax, %rax
	je	.L879
	movq	-24(%rbp), %rax
	movq	6568(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	6576(%rax), %r8
	movq	-24(%rbp), %rax
	movl	20(%rax), %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC353(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movl	%esi, %r8d
	movq	%rax, %rcx
	movl	$3719, %esi
	movl	$0, %eax
	call	test_info@PLT
	addq	$16, %rsp
	jmp	.L880
.L879:
	movq	-24(%rbp), %rax
	movq	6568(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC354(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$3722, %esi
	movl	$0, %eax
	call	test_info@PLT
.L880:
	movl	$0, %eax
	jmp	.L877
.L878:
	movq	-24(%rbp), %rax
	movq	6568(%rax), %rax
	testq	%rax, %rax
	jne	.L881
	movq	-24(%rbp), %rax
	movq	6584(%rax), %rax
	testq	%rax, %rax
	je	.L881
	movq	-24(%rbp), %rax
	movq	6584(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC355(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$3728, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L877
.L881:
	movq	-24(%rbp), %rax
	movq	6584(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	6568(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L882
	movq	-24(%rbp), %rax
	movq	6568(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	6584(%rax), %r8
	movq	-24(%rbp), %rax
	movl	20(%rax), %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC356(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movl	%esi, %r8d
	movq	%rax, %rcx
	movl	$3734, %esi
	movl	$0, %eax
	call	test_info@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L877
.L882:
	movq	-24(%rbp), %rax
	movq	6592(%rax), %rax
	testq	%rax, %rax
	jne	.L883
	movl	$1, %eax
	jmp	.L877
.L883:
	movq	-24(%rbp), %rax
	movq	6592(%rax), %rax
	testq	%rax, %rax
	jne	.L884
	movq	-24(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC357(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$3743, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L877
.L884:
	call	ERR_peek_error@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L885
	movq	-24(%rbp), %rax
	movq	6592(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC358(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$3750, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L877
.L885:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L886
	movq	-24(%rbp), %rax
	movq	6592(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC359(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$3757, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, %eax
	jmp	.L877
.L886:
	movq	-24(%rbp), %rax
	movq	6592(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L887
	movl	$1, %eax
	jmp	.L877
.L887:
	movq	-24(%rbp), %rax
	movq	6592(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC360(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	subq	$8, %rsp
	pushq	-16(%rbp)
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$3766, %esi
	movl	$0, %eax
	call	test_info@PLT
	addq	$16, %rsp
	movl	$0, %eax
.L877:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	check_test_error, .-check_test_error
	.section	.rodata
.LC361:
	.string	"%s:%d %s error"
	.text
	.type	run_test, @function
run_test:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	6560(%rax), %rax
	testq	%rax, %rax
	jne	.L889
	movl	$1, %eax
	jmp	.L890
.L889:
	movq	-8(%rbp), %rax
	movl	28(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-8(%rbp), %rax
	movl	6552(%rax), %eax
	testl	%eax, %eax
	je	.L891
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 32(%rax)
	jmp	.L892
.L891:
	movq	-8(%rbp), %rax
	movq	6568(%rax), %rax
	testq	%rax, %rax
	jne	.L893
	movq	-8(%rbp), %rax
	movq	6560(%rax), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	cmpl	$1, %eax
	je	.L893
	movq	-8(%rbp), %rax
	movq	6560(%rax), %rax
	movq	(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC361(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$3783, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L890
.L893:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	check_test_error
	testl	%eax, %eax
	jne	.L892
	call	test_openssl_errors@PLT
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 24(%rax)
.L892:
	movl	$1, %eax
.L890:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	run_test, .-run_test
	.type	find_key, @function
find_key:
.LFB754:
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
	jmp	.L895
.L899:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L896
	cmpq	$0, -8(%rbp)
	je	.L897
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L897:
	movl	$1, %eax
	jmp	.L898
.L896:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.L895:
	cmpq	$0, -24(%rbp)
	jne	.L899
	movl	$0, %eax
.L898:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	find_key, .-find_key
	.type	free_key_list, @function
free_key_list:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	jmp	.L901
.L902:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$3815, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$3816, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.L901:
	cmpq	$0, -24(%rbp)
	jne	.L902
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	free_key_list, .-free_key_list
	.type	key_unsupported, @function
key_unsupported:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	call	ERR_peek_last_error@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_LIB
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cltq
	movq	%rax, -24(%rbp)
	cmpl	$6, -12(%rbp)
	jne	.L904
	cmpq	$156, -24(%rbp)
	je	.L905
.L904:
	cmpl	$6, -12(%rbp)
	jne	.L906
	cmpq	$114, -24(%rbp)
	je	.L905
.L906:
	cmpq	$524556, -24(%rbp)
	jne	.L907
.L905:
	call	ERR_clear_error@PLT
	movl	$1, %eax
	jmp	.L908
.L907:
	cmpl	$16, -12(%rbp)
	jne	.L909
	cmpq	$129, -24(%rbp)
	je	.L910
	cmpq	$141, -24(%rbp)
	jne	.L909
.L910:
	call	ERR_clear_error@PLT
	movl	$1, %eax
	jmp	.L908
.L909:
	movl	$0, %eax
.L908:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	key_unsupported, .-key_unsupported
	.type	take_value, @function
take_value:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	take_value, .-take_value
	.type	prov_available, @function
prov_available:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L914
.L928:
	nop
	addq	$1, -24(%rbp)
.L915:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L928
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L929
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L919
.L930:
	nop
	addq	$1, -8(%rbp)
.L919:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L920
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L930
.L920:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L922
	movl	$0, -12(%rbp)
	jmp	.L923
.L922:
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
.L923:
	movq	libctx(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_available@PLT
	testl	%eax, %eax
	je	.L914
	movl	$1, %eax
	jmp	.L924
.L914:
	cmpl	$0, -12(%rbp)
	jne	.L915
	jmp	.L918
.L929:
	nop
.L918:
	movl	$0, %eax
.L924:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	prov_available, .-prov_available
	.section	.rodata
.LC362:
	.string	"PrivateKey"
.LC363:
	.string	"Can't read private key %s"
.LC364:
	.string	"PublicKey"
.LC365:
	.string	"Can't read public key %s"
.LC366:
	.string	"PrivateKeyRaw"
.LC367:
	.string	"PublicKeyRaw"
.LC368:
	.string	"Failed to parse %s value"
.LC369:
	.string	"Unrecognised algorithm NID"
.LC370:
	.string	"Failed to create binary key"
.LC371:
	.string	"Can't read %s data"
.LC372:
	.string	"Availablein"
	.align 8
.LC373:
	.string	"skipping, '%s' provider not available: %s:%d"
.LC374:
	.string	"FIPSversion"
.LC375:
	.string	"fips"
	.align 8
.LC376:
	.string	"Line %d: error matching FIPS versions\n"
	.align 8
.LC377:
	.string	"skipping, FIPS provider incompatible version: %s:%d"
.LC378:
	.string	"Line %d: missing blank line\n"
.LC379:
	.string	"t->meth = find_test(pp->key)"
.LC380:
	.string	"unknown %s: %s\n"
.LC381:
	.string	"Securitycheck"
	.align 8
.LC382:
	.string	"skipping, Securitycheck is disabled: %s:%d"
	.align 8
.LC383:
	.string	"Line %d: 'Availablein' should be the first option"
.LC384:
	.string	"Result"
	.align 8
.LC385:
	.string	"Line %d: multiple result lines"
.LC386:
	.string	"Function"
.LC387:
	.string	"Reason"
	.align 8
.LC388:
	.string	"Line %d: multiple reason lines"
.LC389:
	.string	"Threads"
	.align 8
.LC390:
	.string	"skipping, '%s' threads not available: %s:%d"
.LC391:
	.string	"Line %d: unknown keyword %s"
	.align 8
.LC392:
	.string	"Line %d: error processing keyword %s = %s\n"
	.text
	.type	parse, @function
parse:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movl	$0, -32(%rbp)
.L932:
.L936:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	je	.L933
	movl	$-1, %eax
	jmp	.L934
.L933:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	clear_test
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	test_readstanza@PLT
	testl	%eax, %eax
	jne	.L935
	movl	$0, %eax
	jmp	.L934
.L935:
	movq	-104(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	je	.L936
	movq	-104(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
.L937:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC362(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L938
	movq	libctx(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	2440(%rax), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L939
	call	key_unsupported
	testl	%eax, %eax
	jne	.L939
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC363(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$3943, %esi
	movl	$0, %eax
	call	test_info@PLT
	call	test_openssl_errors@PLT
	movl	$0, %eax
	jmp	.L934
.L939:
	leaq	private_keys(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L940
.L938:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC364(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L941
	movq	libctx(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	2440(%rax), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_PUBKEY_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L942
	call	key_unsupported
	testl	%eax, %eax
	jne	.L942
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC365(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$3952, %esi
	movl	$0, %eax
	call	test_info@PLT
	call	test_openssl_errors@PLT
	movl	$0, %eax
	jmp	.L934
.L942:
	leaq	public_keys(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L940
.L941:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC366(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L943
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC367(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L944
.L943:
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC366(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L945
	leaq	private_keys(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L946
.L945:
	leaq	public_keys(%rip), %rax
	movq	%rax, -8(%rbp)
.L946:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L947
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L947
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movb	$0, (%rax)
.L947:
	cmpq	$0, -48(%rbp)
	jne	.L948
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC368(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$3977, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L934
.L948:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jne	.L950
	leaq	.LC369(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$3983, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L934
.L950:
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_bin
	testl	%eax, %eax
	jne	.L951
	leaq	.LC370(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$3987, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L934
.L951:
	leaq	private_keys(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L952
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	libctx(%rip), %rax
	movq	-40(%rbp), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_new_raw_private_key_ex@PLT
	movq	%rax, -16(%rbp)
	jmp	.L953
.L952:
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	libctx(%rip), %rax
	movq	-40(%rbp), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_new_raw_public_key_ex@PLT
	movq	%rax, -16(%rbp)
.L953:
	cmpq	$0, -16(%rbp)
	jne	.L954
	call	key_unsupported
	testl	%eax, %eax
	jne	.L954
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC371(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$3997, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-80(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$3998, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	test_openssl_errors@PLT
	movl	$0, %eax
	jmp	.L934
.L954:
	movq	-80(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$4002, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L940
.L944:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC372(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L955
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	prov_available
	testl	%eax, %eax
	jne	.L956
	movq	-104(%rbp), %rax
	movl	20(%rax), %esi
	movq	-104(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC373(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%esi, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$4005, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-104(%rbp), %rax
	movl	$1, 6552(%rax)
	movl	$0, %eax
	jmp	.L934
.L956:
	addl	$1, -32(%rbp)
	addq	$16, -24(%rbp)
	jmp	.L937
.L955:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC374(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L940
	leaq	.LC375(%rip), %rax
	movq	%rax, %rdi
	call	prov_available
	testl	%eax, %eax
	je	.L957
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	libctx(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fips_provider_version_match@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jns	.L958
	movq	-104(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC376(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$4017, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L934
.L958:
	cmpl	$0, -52(%rbp)
	jne	.L957
	movq	-104(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC377(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$4020, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-104(%rbp), %rax
	movl	$1, 6552(%rax)
	movl	$0, %eax
	jmp	.L934
.L957:
	addl	$1, -32(%rbp)
	addq	$16, -24(%rbp)
	jmp	.L937
.L940:
	cmpq	$0, -8(%rbp)
	je	.L959
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	find_key
	testl	%eax, %eax
	je	.L960
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC332(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$4034, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L934
.L960:
	leaq	.LC2(%rip), %rax
	movl	$4037, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC333(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$4037, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L961
	movl	$0, %eax
	jmp	.L934
.L961:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	take_value
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-104(%rbp), %rax
	movl	36(%rax), %eax
	subl	-32(%rbp), %eax
	cmpl	$1, %eax
	je	.L936
	movq	-104(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC378(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$4046, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L936
.L959:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	find_test
	movq	-104(%rbp), %rdx
	movq	%rax, 6560(%rdx)
	movq	-104(%rbp), %rax
	movq	6560(%rax), %rax
	leaq	.LC379(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$4051, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L963
	movl	$0, %eax
	jmp	.L934
.L963:
	movq	-104(%rbp), %rax
	movq	6560(%rax), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L964
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC380(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$4054, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L934
.L964:
	movq	-104(%rbp), %rax
	movl	6552(%rax), %eax
	cmpl	$1, %eax
	jne	.L965
	movl	$0, %eax
	jmp	.L934
.L965:
	addq	$16, -24(%rbp)
	movl	$1, -28(%rbp)
	jmp	.L966
.L977:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC381(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L967
	movq	-104(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC382(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$4069, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-104(%rbp), %rax
	movl	$1, 6552(%rax)
	movl	$0, %eax
	jmp	.L934
.L967:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC372(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L968
	movq	-104(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC383(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$4075, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L934
.L968:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC384(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L969
	movq	-104(%rbp), %rax
	movq	6584(%rax), %rax
	testq	%rax, %rax
	je	.L970
	movq	-104(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC385(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$4080, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L934
.L970:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	take_value
	movq	-104(%rbp), %rdx
	movq	%rax, 6584(%rdx)
	jmp	.L971
.L969:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC386(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L971
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC387(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L972
	movq	-104(%rbp), %rax
	movq	6592(%rax), %rax
	testq	%rax, %rax
	je	.L973
	movq	-104(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC388(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$4088, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L934
.L973:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	take_value
	movq	-104(%rbp), %rdx
	movq	%rax, 6592(%rdx)
	jmp	.L971
.L972:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC389(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L974
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movslq	%eax, %rdx
	movq	libctx(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_set_max_threads@PLT
	testl	%eax, %eax
	jne	.L971
	movq	-104(%rbp), %rax
	movl	20(%rax), %esi
	movq	-104(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC390(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%esi, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$4094, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-104(%rbp), %rax
	movl	$1, 6552(%rax)
	jmp	.L971
.L974:
	movq	-104(%rbp), %rax
	movq	6560(%rax), %rax
	movq	24(%rax), %r8
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L975
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-104(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC391(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$4103, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L934
.L975:
	cmpl	$0, -60(%rbp)
	jns	.L976
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-104(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC392(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rsi, %r9
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$4107, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L934
.L976:
	movq	-104(%rbp), %rax
	movl	6552(%rax), %eax
	testl	%eax, %eax
	je	.L971
	movl	$0, %eax
	jmp	.L934
.L971:
	addq	$16, -24(%rbp)
	addl	$1, -28(%rbp)
.L966:
	movq	-104(%rbp), %rax
	movl	36(%rax), %eax
	subl	-32(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L977
	movl	$1, %eax
.L934:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	parse, .-parse
	.section	.rodata
	.align 8
.LC393:
	.string	"t = OPENSSL_zalloc(sizeof(*t))"
	.text
	.type	run_file_tests, @function
run_file_tests:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	test_get_argument@PLT
	movq	%rax, -8(%rbp)
	leaq	.LC2(%rip), %rax
	movl	$4125, %edx
	movq	%rax, %rsi
	movl	$6608, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC393(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$4125, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L979
	movl	$0, %eax
	jmp	.L980
.L979:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_start_file@PLT
	testl	%eax, %eax
	jne	.L982
	leaq	.LC2(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$4128, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L980
.L986:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	parse
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	6552(%rax), %eax
	testl	%eax, %eax
	je	.L983
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	leal	1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 32(%rax)
	jmp	.L982
.L983:
	cmpl	$0, -20(%rbp)
	je	.L984
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	run_test
	testl	%eax, %eax
	jne	.L982
.L984:
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	leal	1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 24(%rax)
	jmp	.L985
.L982:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	je	.L986
.L985:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	test_end_file@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	clear_test
	movq	public_keys(%rip), %rax
	movq	%rax, %rdi
	call	free_key_list
	movq	$0, public_keys(%rip)
	movq	private_keys(%rip), %rax
	movq	%rax, %rdi
	call	free_key_list
	movq	$0, private_keys(%rip)
	movq	-16(%rbp), %rax
	movq	2440(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -20(%rbp)
	leaq	.LC2(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$4152, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpl	$0, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
.L980:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	run_file_tests, .-run_file_tests
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB761:
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
.LFE761:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC394:
	.string	"default"
.LC395:
	.string	"run_file_tests"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L990
.L999:
	cmpl	$505, -20(%rbp)
	jg	.L991
	cmpl	$500, -20(%rbp)
	jge	.L990
	cmpl	$4, -20(%rbp)
	je	.L993
	cmpl	$4, -20(%rbp)
	jg	.L991
	cmpl	$3, -20(%rbp)
	je	.L994
	cmpl	$3, -20(%rbp)
	jg	.L991
	cmpl	$1, -20(%rbp)
	je	.L995
	cmpl	$2, -20(%rbp)
	je	.L996
	jmp	.L991
.L995:
	call	opt_arg@PLT
	movq	%rax, -8(%rbp)
	jmp	.L990
.L996:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	evp_test_process_mode
	movl	%eax, process_mode_in_place(%rip)
	movl	process_mode_in_place(%rip), %eax
	cmpl	$-1, %eax
	jne	.L990
	movl	$0, %eax
	jmp	.L998
.L994:
	call	opt_arg@PLT
	movq	%rax, -16(%rbp)
	jmp	.L990
.L993:
	call	opt_arg@PLT
	movq	%rax, propquery(%rip)
	jmp	.L990
.L991:
	movl	$0, %eax
	jmp	.L998
.L990:
	call	opt_next@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L999
	cmpq	$0, -8(%rbp)
	jne	.L1000
	cmpq	$0, -16(%rbp)
	jne	.L1000
	leaq	.LC394(%rip), %rax
	movq	%rax, -16(%rbp)
.L1000:
	movq	-16(%rbp), %rcx
	leaq	libprov(%rip), %rdx
	movq	-8(%rbp), %rax
	leaq	prov_null(%rip), %rsi
	leaq	libctx(%rip), %rdi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	test_get_libctx@PLT
	testl	%eax, %eax
	jne	.L1001
	movl	$0, %eax
	jmp	.L998
.L1001:
	call	test_get_argument_count@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L1002
	movl	$0, %eax
	jmp	.L998
.L1002:
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	leaq	run_file_tests(%rip), %rsi
	leaq	.LC395(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L998:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	libprov(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	prov_null(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	libctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
.LC396:
	.string	"MD2"
	.text
	.type	is_digest_disabled, @function
is_digest_disabled:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC396(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L1005
	movl	$1, %eax
	jmp	.L1006
.L1005:
	movl	$0, %eax
.L1006:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	is_digest_disabled, .-is_digest_disabled
	.type	is_pkey_disabled, @function
is_pkey_disabled:
.LFB765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	is_pkey_disabled, .-is_pkey_disabled
	.type	is_mac_disabled, @function
is_mac_disabled:
.LFB766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	is_mac_disabled, .-is_mac_disabled
	.type	is_kdf_disabled, @function
is_kdf_disabled:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	is_kdf_disabled, .-is_kdf_disabled
	.section	.rodata
.LC397:
	.string	"RC5"
	.text
	.type	is_cipher_disabled, @function
is_cipher_disabled:
.LFB768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC397(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strncasecmp@PLT
	testl	%eax, %eax
	jne	.L1014
	movl	$1, %eax
	jmp	.L1015
.L1014:
	movl	$0, %eax
.L1015:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	is_cipher_disabled, .-is_cipher_disabled
	.local	aux_err.2
	.comm	aux_err.2,64,32
	.section	.rodata
	.align 8
	.type	epilogue.1, @object
	.size	epilogue.1, 13
epilogue.1:
	.string	" by EVP_PKEY"
	.align 8
.LC398:
	.string	"Usage: %s [options] [file...]\n"
.LC399:
	.string	"Valid options are:\n"
.LC400:
	.string	"help"
.LC401:
	.string	"Display this summary"
.LC402:
	.string	"list"
	.align 8
.LC403:
	.string	"Display the list of tests available"
.LC404:
	.string	"test"
	.align 8
.LC405:
	.string	"Run a single test by id or name"
	.align 8
.LC406:
	.string	"Run a single iteration of a test"
.LC407:
	.string	"indent"
	.align 8
.LC408:
	.string	"Number of tabs added to output"
.LC409:
	.string	"seed"
	.align 8
.LC410:
	.string	"Seed value to randomize tests with"
.LC411:
	.string	"config"
	.align 8
.LC412:
	.string	"The configuration file to use for the libctx"
.LC413:
	.string	"process"
	.align 8
.LC414:
	.string	"Mode for data processing by cipher tests [in_place/both], both by default"
.LC415:
	.string	"provider"
	.align 8
.LC416:
	.string	"The provider to load (when no configuration file, the default value is 'default')"
.LC417:
	.string	"propquery"
	.align 8
.LC418:
	.string	"Property query used when fetching algorithms"
.LC419:
	.string	"file\tFile to run tests on.\n"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	test_options.0, @object
	.size	test_options.0, 336
test_options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC398
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC399
	.quad	.LC400
	.long	500
	.long	45
	.quad	.LC401
	.quad	.LC402
	.long	501
	.long	45
	.quad	.LC403
	.quad	.LC404
	.long	502
	.long	115
	.quad	.LC405
	.quad	.LC223
	.long	503
	.long	110
	.quad	.LC406
	.quad	.LC407
	.long	504
	.long	112
	.quad	.LC408
	.quad	.LC409
	.long	505
	.long	110
	.quad	.LC410
	.quad	.LC411
	.long	1
	.long	60
	.quad	.LC412
	.quad	.LC413
	.long	2
	.long	115
	.quad	.LC414
	.quad	.LC415
	.long	3
	.long	115
	.quad	.LC416
	.quad	.LC417
	.long	4
	.long	115
	.quad	.LC418
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC419
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

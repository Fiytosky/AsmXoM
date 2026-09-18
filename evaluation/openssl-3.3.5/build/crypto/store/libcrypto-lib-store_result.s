	.file	"store_result.c"
	.text
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB365:
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
.LFE365:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_X509_sk_type, @function
ossl_check_X509_sk_type:
.LFB366:
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
.LFE366:
	.size	ossl_check_X509_sk_type, .-ossl_check_X509_sk_type
	.type	sk_OSSL_STORE_INFO_new_null, @function
sk_OSSL_STORE_INFO_new_null:
.LFB535:
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
.LFE535:
	.size	sk_OSSL_STORE_INFO_new_null, .-sk_OSSL_STORE_INFO_new_null
	.type	sk_OSSL_STORE_INFO_push, @function
sk_OSSL_STORE_INFO_push:
.LFB542:
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
.LFE542:
	.size	sk_OSSL_STORE_INFO_push, .-sk_OSSL_STORE_INFO_push
	.type	sk_OSSL_STORE_INFO_shift, @function
sk_OSSL_STORE_INFO_shift:
.LFB545:
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
	call	OPENSSL_sk_shift@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	sk_OSSL_STORE_INFO_shift, .-sk_OSSL_STORE_INFO_shift
	.type	sk_OSSL_STORE_INFO_pop_free, @function
sk_OSSL_STORE_INFO_pop_free:
.LFB546:
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
.LFE546:
	.size	sk_OSSL_STORE_INFO_pop_free, .-sk_OSSL_STORE_INFO_pop_free
	.type	lh_OSSL_STORE_LOADER_hfn_thunk, @function
lh_OSSL_STORE_LOADER_hfn_thunk:
.LFB557:
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
.LFE557:
	.size	lh_OSSL_STORE_LOADER_hfn_thunk, .-lh_OSSL_STORE_LOADER_hfn_thunk
	.type	lh_OSSL_STORE_LOADER_cfn_thunk, @function
lh_OSSL_STORE_LOADER_cfn_thunk:
.LFB558:
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
.LFE558:
	.size	lh_OSSL_STORE_LOADER_cfn_thunk, .-lh_OSSL_STORE_LOADER_cfn_thunk
	.section	.rodata
.LC0:
	.string	"type"
.LC1:
	.string	"data-type"
.LC2:
	.string	"data"
.LC3:
	.string	"data-structure"
.LC4:
	.string	"reference"
.LC5:
	.string	"desc"
	.align 8
.LC6:
	.string	"../crypto/store/store_result.c"
	.text
	.globl	ossl_store_handle_load_result
	.type	ossl_store_handle_load_result, @function
ossl_store_handle_load_result:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_get0_provider@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_libctx@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	-128(%rbp), %rax
	movl	$72, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -128(%rbp)
	leaq	.LC0(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L17
	leaq	-128(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L17
	movl	$0, %eax
	jmp	.L31
.L17:
	leaq	.LC1(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L19
	leaq	-128(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string_ptr@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L31
.L19:
	leaq	.LC2(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L20
	leaq	-128(%rbp), %rax
	leaq	40(%rax), %rdx
	leaq	-128(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string_ptr@PLT
	testl	%eax, %eax
	jne	.L20
	leaq	-128(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string_ptr@PLT
	testl	%eax, %eax
	jne	.L20
	movl	$0, %eax
	jmp	.L31
.L20:
	leaq	.LC3(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L21
	leaq	-128(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string_ptr@PLT
	testl	%eax, %eax
	jne	.L21
	movl	$0, %eax
	jmp	.L31
.L21:
	leaq	.LC4(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L22
	leaq	-128(%rbp), %rax
	leaq	56(%rax), %rdx
	leaq	-128(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string_ptr@PLT
	testl	%eax, %eax
	jne	.L22
	movl	$0, %eax
	jmp	.L31
.L22:
	leaq	.LC5(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L23
	leaq	-128(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string_ptr@PLT
	testl	%eax, %eax
	jne	.L23
	movl	$0, %eax
	jmp	.L31
.L23:
	call	ERR_set_mark@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L24
	movq	-16(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	try_name
	testl	%eax, %eax
	je	.L32
.L24:
	call	ERR_pop_to_mark@PLT
	call	ERR_set_mark@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L26
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	try_key
	testl	%eax, %eax
	je	.L33
.L26:
	call	ERR_pop_to_mark@PLT
	call	ERR_set_mark@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L27
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	try_cert
	testl	%eax, %eax
	je	.L34
.L27:
	call	ERR_pop_to_mark@PLT
	call	ERR_set_mark@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L28
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	try_crl
	testl	%eax, %eax
	je	.L35
.L28:
	call	ERR_pop_to_mark@PLT
	call	ERR_set_mark@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L29
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	try_pkcs12
	testl	%eax, %eax
	je	.L36
.L29:
	call	ERR_pop_to_mark@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L30
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$151, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524556, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L30:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	jmp	.L31
.L32:
	nop
	jmp	.L25
.L33:
	nop
	jmp	.L25
.L34:
	nop
	jmp	.L25
.L35:
	nop
	jmp	.L25
.L36:
	nop
.L25:
	call	ERR_clear_last_mark@PLT
	movl	$0, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	ossl_store_handle_load_result, .-ossl_store_handle_load_result
	.type	try_name, @function
try_name:
.LFB574:
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
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L38
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L39
	movl	$0, %eax
	jmp	.L40
.L39:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC6(%rip), %rcx
	movl	$166, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L41
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC6(%rip), %rcx
	movl	$168, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L41
.L42:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_new_NAME@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L43
.L41:
	leaq	.LC6(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$170, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC6(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$171, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L40
.L43:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_set0_NAME_description@PLT
.L38:
	movl	$1, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	try_name, .-try_name
	.type	try_key_ref, @function
try_key_ref:
.LFB575:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$2, -28(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_fetch@PLT
	movq	%rax, -16(%rbp)
	call	ERR_set_mark@PLT
	jmp	.L47
.L52:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_provider@PLT
	cmpq	%rax, -88(%rbp)
	jne	.L48
	movl	$0, -28(%rbp)
	movq	-72(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_load@PLT
	movq	%rax, -24(%rbp)
	jmp	.L49
.L48:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -56(%rbp)
	movl	$135, -48(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L50
	movq	-72(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-64(%rbp), %rcx
	movq	evp_keymgmt_util_try_import@GOTPCREL(%rip), %rdi
	movq	-40(%rbp), %r9
	movq	%rcx, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	*%r9
.L50:
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
.L49:
	cmpq	$0, -24(%rbp)
	jne	.L47
	cmpl	$0, -28(%rbp)
	jle	.L47
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	movq	-72(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_fetch_from_prov@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L47
	call	ERR_pop_to_mark@PLT
	call	ERR_set_mark@PLT
.L47:
	cmpq	$0, -16(%rbp)
	je	.L51
	cmpq	$0, -24(%rbp)
	jne	.L51
	movl	-28(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -28(%rbp)
	testl	%eax, %eax
	jg	.L52
.L51:
	cmpq	$0, -24(%rbp)
	je	.L53
	call	ERR_pop_to_mark@PLT
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_util_make_pkey@PLT
	movq	%rax, -8(%rbp)
	jmp	.L54
.L53:
	call	ERR_clear_last_mark@PLT
.L54:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	movq	-8(%rbp), %rax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	try_key_ref, .-try_key_ref
	.type	try_key_value, @function
try_key_value:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	-64(%rbp), %rax
	movl	40(%rax), %eax
	cmpl	$4, %eax
	je	.L56
	cmpl	$4, %eax
	jg	.L57
	cmpl	$3, %eax
	je	.L58
	cmpl	$3, %eax
	jg	.L57
	testl	%eax, %eax
	je	.L64
	cmpl	$2, %eax
	jne	.L57
	movl	$132, -4(%rbp)
	jmp	.L61
.L58:
	movl	$134, -4(%rbp)
	jmp	.L61
.L56:
	movl	$135, -4(%rbp)
	jmp	.L61
.L57:
	movl	$0, %eax
	jmp	.L63
.L64:
	nop
.L61:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-88(%rbp), %rdi
	movl	-4(%rbp), %esi
	leaq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	-96(%rbp)
	movq	%rdi, %r9
	movl	%esi, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_new_for_pkey@PLT
	addq	$16, %rsp
	movq	%rax, -16(%rbp)
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_set_passphrase_cb@PLT
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_from_data@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	movq	-24(%rbp), %rax
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	try_key_value, .-try_key_value
	.type	try_key_value_legacy, @function
try_key_value_legacy:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1168, %rsp
	movq	%rdi, -1128(%rbp)
	movq	%rsi, -1136(%rbp)
	movq	%rdx, -1144(%rbp)
	movq	%rcx, -1152(%rbp)
	movq	%r8, -1160(%rbp)
	movq	%r9, -1168(%rbp)
	movq	$0, -8(%rbp)
	movq	-1128(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-1128(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-1144(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L66
	movq	-1144(%rbp), %rax
	movl	40(%rax), %eax
	cmpl	$3, %eax
	jne	.L67
.L66:
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	16(%rbp), %rsi
	movq	-1168(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_PUBKEY_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L67
	movq	-1136(%rbp), %rax
	movq	OSSL_STORE_INFO_new_PUBKEY@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
.L67:
	cmpq	$0, -8(%rbp)
	jne	.L68
	movq	-1144(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L69
	movq	-1144(%rbp), %rax
	movl	40(%rax), %eax
	cmpl	$4, %eax
	jne	.L68
.L69:
	movq	$0, -56(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_X509_SIG@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L70
	movq	$0, -64(%rbp)
	movq	-1160(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-1120(%rbp), %rax
	movq	-1152(%rbp), %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L71
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$341, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L72
.L71:
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	leaq	-80(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_SIG_get0@PLT
	movq	-80(%rbp), %rax
	movl	(%rax), %edi
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movl	%eax, %r10d
	movq	-72(%rbp), %rax
	leaq	-56(%rbp), %r8
	leaq	-1120(%rbp), %rsi
	pushq	$0
	leaq	-84(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rdx, %rcx
	movl	%r10d, %edx
	movq	%rax, %rdi
	call	PKCS12_pbe_crypt@PLT
	addq	$16, %rsp
	movl	-84(%rbp), %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
.L72:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_SIG_free@PLT
.L70:
	cmpq	$0, -16(%rbp)
	je	.L73
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_PKCS8_PRIV_KEY_INFO@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L73
	movq	16(%rbp), %rdx
	movq	-1168(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKCS82PKEY_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
.L73:
	cmpq	$0, -8(%rbp)
	je	.L74
	movq	-1136(%rbp), %rax
	movq	OSSL_STORE_INFO_new_PKEY@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
.L74:
	movq	-56(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movl	$380, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L68:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	try_key_value_legacy, .-try_key_value_legacy
	.type	try_key, @function
try_key:
.LFB578:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L77
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L78
.L77:
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L79
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L79
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	try_key_ref
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L82
	movl	$0, %eax
	jmp	.L87
.L79:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L82
	movq	ossl_pw_passphrase_callback_dec@GOTPCREL(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	addq	$72, %rax
	movq	%rax, -24(%rbp)
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	try_key_value
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L82
	movq	-72(%rbp), %r8
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-80(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	try_key_value_legacy
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
.L82:
	cmpq	$0, -8(%rbp)
	je	.L83
	movq	-40(%rbp), %rax
	movl	$2, (%rax)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L84
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	evp_keymgmt_util_has@PLT
	testl	%eax, %eax
	je	.L85
	movq	OSSL_STORE_INFO_new_PKEY@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L84
.L85:
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	evp_keymgmt_util_has@PLT
	testl	%eax, %eax
	je	.L86
	movq	OSSL_STORE_INFO_new_PUBKEY@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L84
.L86:
	movq	OSSL_STORE_INFO_new_PARAMS@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
.L84:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
.L83:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L78
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L78:
	movl	$1, %eax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	try_key, .-try_key
	.section	.rodata
.LC7:
	.string	"TRUSTED CERTIFICATE"
	.text
	.type	try_cert, @function
try_cert:
.LFB579:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L89
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L90
.L89:
	movl	$1, -4(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_new_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L91
	movl	$0, %eax
	jmp	.L92
.L91:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L93
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L93
	movl	$0, -4(%rbp)
.L93:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rcx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_X509_AUX@PLT
	testq	%rax, %rax
	jne	.L94
	cmpl	$0, -4(%rbp)
	je	.L95
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rcx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_X509@PLT
	testq	%rax, %rax
	jne	.L94
.L95:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	$0, -16(%rbp)
.L94:
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L90
	movq	-24(%rbp), %rax
	movl	$3, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_new_CERT@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L90
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
.L90:
	movl	$1, %eax
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	try_cert, .-try_cert
	.type	try_crl, @function
try_crl:
.LFB580:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L98
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L99
.L98:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_X509_CRL@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L100
	movq	-24(%rbp), %rax
	movl	$4, (%rax)
.L100:
	cmpq	$0, -8(%rbp)
	je	.L101
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_crl_set0_libctx@PLT
	testl	%eax, %eax
	jne	.L101
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	movq	$0, -8(%rbp)
.L101:
	cmpq	$0, -8(%rbp)
	je	.L102
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_new_CRL@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
.L102:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L99
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
.L99:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	try_crl, .-try_crl
	.section	.rodata
.LC8:
	.string	""
.LC9:
	.string	"info"
.LC10:
	.string	"empty password"
.LC11:
	.string	"maybe wrong password"
	.text
	.type	try_pkcs12, @function
try_pkcs12:
.LFB581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1264, %rsp
	movq	%rdi, -1224(%rbp)
	movq	%rsi, -1232(%rbp)
	movq	%rdx, -1240(%rbp)
	movq	%rcx, -1248(%rbp)
	movq	%r8, -1256(%rbp)
	movl	$1, -4(%rbp)
	movq	-1224(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L105
	movq	-1224(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdx
	movq	-1224(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_PKCS12@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L106
	movq	$0, -16(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	-1224(%rbp), %rax
	movl	$-1, (%rax)
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_mac_present@PLT
	testl	%eax, %eax
	je	.L107
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PKCS12_verify_mac@PLT
	testl	%eax, %eax
	je	.L108
.L107:
	movq	$0, -16(%rbp)
	jmp	.L109
.L108:
	leaq	.LC8(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS12_verify_mac@PLT
	testl	%eax, %eax
	je	.L110
	leaq	.LC8(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L109
.L110:
	leaq	.LC9(%rip), %rax
	movq	%rax, -1216(%rbp)
	movl	$4, -1208(%rbp)
	leaq	prompt_info.1(%rip), %rax
	movq	%rax, -1200(%rbp)
	movq	$25, -1192(%rbp)
	movq	$-1, -1184(%rbp)
	movq	$0, -1176(%rbp)
	movl	$0, -1168(%rbp)
	movq	$0, -1160(%rbp)
	movq	$0, -1152(%rbp)
	movq	$0, -1144(%rbp)
	movq	-1240(%rbp), %rax
	leaq	72(%rax), %rsi
	leaq	-1216(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	leaq	-1136(%rbp), %rax
	movq	%rsi, %r9
	movl	$0, %r8d
	movl	$1024, %esi
	movq	%rax, %rdi
	call	ossl_pw_get_passphrase@PLT
	testl	%eax, %eax
	jne	.L111
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$573, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L116
.L111:
	leaq	-1136(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS12_verify_mac@PLT
	testl	%eax, %eax
	jne	.L109
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$584, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	jne	.L114
	leaq	.LC10(%rip), %rax
	jmp	.L115
.L114:
	leaq	.LC11(%rip), %rax
.L115:
	movq	%rax, %rdx
	movl	$113, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L116
.L109:
	leaq	-96(%rbp), %rdi
	leaq	-88(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PKCS12_parse@PLT
	testl	%eax, %eax
	je	.L127
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$1, -4(%rbp)
	call	sk_OSSL_STORE_INFO_new_null
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L117
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	.L118
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_new_PKEY@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L119
	movq	$0, -80(%rbp)
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	jne	.L119
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_STORE_INFO_push
	testl	%eax, %eax
	je	.L119
	movq	$0, -32(%rbp)
	jmp	.L118
.L119:
	movl	$0, -4(%rbp)
.L118:
	cmpl	$0, -4(%rbp)
	je	.L122
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	je	.L122
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_new_CERT@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L121
	movq	$0, -88(%rbp)
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	jne	.L121
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_STORE_INFO_push
	testl	%eax, %eax
	je	.L121
	movq	$0, -40(%rbp)
	jmp	.L120
.L121:
	movl	$0, -4(%rbp)
.L120:
	jmp	.L122
.L124:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_new_CERT@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L123
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_shift@PLT
	testq	%rax, %rax
	je	.L123
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_STORE_INFO_push
	testl	%eax, %eax
	je	.L123
	movq	$0, -48(%rbp)
	jmp	.L122
.L123:
	movl	$0, -4(%rbp)
.L122:
	cmpl	$0, -4(%rbp)
	je	.L117
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L124
.L117:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_free@PLT
	cmpl	$0, -4(%rbp)
	jne	.L125
	movq	OSSL_STORE_INFO_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_STORE_INFO_pop_free
	movq	$0, -24(%rbp)
.L125:
	movq	-1240(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 64(%rax)
	jmp	.L116
.L127:
	nop
.L116:
	leaq	-1136(%rbp), %rax
	movl	$1025, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_free@PLT
.L106:
	movq	-1240(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	sk_OSSL_STORE_INFO_shift
	movq	-1232(%rbp), %rdx
	movq	%rax, (%rdx)
.L105:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	try_pkcs12, .-try_pkcs12
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 30
__func__.3:
	.string	"ossl_store_handle_load_result"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 21
__func__.2:
	.string	"try_key_value_legacy"
	.data
	.align 16
	.type	prompt_info.1, @object
	.size	prompt_info.1, 26
prompt_info.1:
	.string	"PKCS12 import pass phrase"
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 11
__func__.0:
	.string	"try_pkcs12"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

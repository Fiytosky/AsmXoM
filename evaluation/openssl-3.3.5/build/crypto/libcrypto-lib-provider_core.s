	.file	"provider_core.c"
	.text
	.type	OSSL_FUNC_provider_teardown, @function
OSSL_FUNC_provider_teardown:
.LFB69:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	OSSL_FUNC_provider_teardown, .-OSSL_FUNC_provider_teardown
	.type	OSSL_FUNC_provider_gettable_params, @function
OSSL_FUNC_provider_gettable_params:
.LFB70:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	OSSL_FUNC_provider_gettable_params, .-OSSL_FUNC_provider_gettable_params
	.type	OSSL_FUNC_provider_get_params, @function
OSSL_FUNC_provider_get_params:
.LFB71:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	OSSL_FUNC_provider_get_params, .-OSSL_FUNC_provider_get_params
	.type	OSSL_FUNC_provider_query_operation, @function
OSSL_FUNC_provider_query_operation:
.LFB72:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	OSSL_FUNC_provider_query_operation, .-OSSL_FUNC_provider_query_operation
	.type	OSSL_FUNC_provider_unquery_operation, @function
OSSL_FUNC_provider_unquery_operation:
.LFB73:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	OSSL_FUNC_provider_unquery_operation, .-OSSL_FUNC_provider_unquery_operation
	.type	OSSL_FUNC_provider_get_reason_strings, @function
OSSL_FUNC_provider_get_reason_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	OSSL_FUNC_provider_get_reason_strings, .-OSSL_FUNC_provider_get_reason_strings
	.type	OSSL_FUNC_provider_get_capabilities, @function
OSSL_FUNC_provider_get_capabilities:
.LFB75:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	OSSL_FUNC_provider_get_capabilities, .-OSSL_FUNC_provider_get_capabilities
	.type	OSSL_FUNC_provider_self_test, @function
OSSL_FUNC_provider_self_test:
.LFB76:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	OSSL_FUNC_provider_self_test, .-OSSL_FUNC_provider_self_test
	.type	ERR_GET_LIB, @function
ERR_GET_LIB:
.LFB345:
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
	je	.L18
	movl	$2, %eax
	jmp	.L19
.L18:
	movq	-8(%rbp), %rax
	shrq	$23, %rax
	movzbl	%al, %eax
.L19:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE345:
	.size	ERR_GET_LIB, .-ERR_GET_LIB
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB347:
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
	je	.L21
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L22
.L21:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L22:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE347:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB386:
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
.LFE386:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB387:
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
.LFE387:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	CRYPTO_UP_REF, @function
CRYPTO_UP_REF:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %edx
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	leal	1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	CRYPTO_UP_REF, .-CRYPTO_UP_REF
	.type	CRYPTO_DOWN_REF, @function
CRYPTO_DOWN_REF:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %edx
	negl	%edx
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	leal	-1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L30
.L30:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	CRYPTO_DOWN_REF, .-CRYPTO_DOWN_REF
	.type	CRYPTO_NEW_REF, @function
CRYPTO_NEW_REF:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	xchgl	(%rax), %edx
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	CRYPTO_NEW_REF, .-CRYPTO_NEW_REF
	.type	CRYPTO_FREE_REF, @function
CRYPTO_FREE_REF:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	CRYPTO_FREE_REF, .-CRYPTO_FREE_REF
	.type	sk_INFOPAIR_num, @function
sk_INFOPAIR_num:
.LFB570:
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
.LFE570:
	.size	sk_INFOPAIR_num, .-sk_INFOPAIR_num
	.type	sk_INFOPAIR_value, @function
sk_INFOPAIR_value:
.LFB571:
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
.LFE571:
	.size	sk_INFOPAIR_value, .-sk_INFOPAIR_value
	.type	sk_INFOPAIR_new_null, @function
sk_INFOPAIR_new_null:
.LFB573:
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
.LFE573:
	.size	sk_INFOPAIR_new_null, .-sk_INFOPAIR_new_null
	.type	sk_INFOPAIR_push, @function
sk_INFOPAIR_push:
.LFB580:
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
.LFE580:
	.size	sk_INFOPAIR_push, .-sk_INFOPAIR_push
	.type	sk_INFOPAIR_pop_free, @function
sk_INFOPAIR_pop_free:
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
.LFE584:
	.size	sk_INFOPAIR_pop_free, .-sk_INFOPAIR_pop_free
	.type	sk_INFOPAIR_deep_copy, @function
sk_INFOPAIR_deep_copy:
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
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_deep_copy@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	sk_INFOPAIR_deep_copy, .-sk_INFOPAIR_deep_copy
	.type	sk_OSSL_PROVIDER_CHILD_CB_num, @function
sk_OSSL_PROVIDER_CHILD_CB_num:
.LFB595:
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
.LFE595:
	.size	sk_OSSL_PROVIDER_CHILD_CB_num, .-sk_OSSL_PROVIDER_CHILD_CB_num
	.type	sk_OSSL_PROVIDER_CHILD_CB_value, @function
sk_OSSL_PROVIDER_CHILD_CB_value:
.LFB596:
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
.LFE596:
	.size	sk_OSSL_PROVIDER_CHILD_CB_value, .-sk_OSSL_PROVIDER_CHILD_CB_value
	.type	sk_OSSL_PROVIDER_CHILD_CB_new_null, @function
sk_OSSL_PROVIDER_CHILD_CB_new_null:
.LFB598:
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
.LFE598:
	.size	sk_OSSL_PROVIDER_CHILD_CB_new_null, .-sk_OSSL_PROVIDER_CHILD_CB_new_null
	.type	sk_OSSL_PROVIDER_CHILD_CB_delete, @function
sk_OSSL_PROVIDER_CHILD_CB_delete:
.LFB603:
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
	call	OPENSSL_sk_delete@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	sk_OSSL_PROVIDER_CHILD_CB_delete, .-sk_OSSL_PROVIDER_CHILD_CB_delete
	.type	sk_OSSL_PROVIDER_CHILD_CB_push, @function
sk_OSSL_PROVIDER_CHILD_CB_push:
.LFB605:
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
.LFE605:
	.size	sk_OSSL_PROVIDER_CHILD_CB_push, .-sk_OSSL_PROVIDER_CHILD_CB_push
	.type	sk_OSSL_PROVIDER_CHILD_CB_pop_free, @function
sk_OSSL_PROVIDER_CHILD_CB_pop_free:
.LFB609:
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
.LFE609:
	.size	sk_OSSL_PROVIDER_CHILD_CB_pop_free, .-sk_OSSL_PROVIDER_CHILD_CB_pop_free
	.type	sk_OSSL_PROVIDER_num, @function
sk_OSSL_PROVIDER_num:
.LFB620:
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
.LFE620:
	.size	sk_OSSL_PROVIDER_num, .-sk_OSSL_PROVIDER_num
	.type	sk_OSSL_PROVIDER_value, @function
sk_OSSL_PROVIDER_value:
.LFB621:
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
.LFE621:
	.size	sk_OSSL_PROVIDER_value, .-sk_OSSL_PROVIDER_value
	.type	sk_OSSL_PROVIDER_new, @function
sk_OSSL_PROVIDER_new:
.LFB622:
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
	call	OPENSSL_sk_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	sk_OSSL_PROVIDER_new, .-sk_OSSL_PROVIDER_new
	.type	sk_OSSL_PROVIDER_free, @function
sk_OSSL_PROVIDER_free:
.LFB626:
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
	call	OPENSSL_sk_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	sk_OSSL_PROVIDER_free, .-sk_OSSL_PROVIDER_free
	.type	sk_OSSL_PROVIDER_delete, @function
sk_OSSL_PROVIDER_delete:
.LFB628:
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
	call	OPENSSL_sk_delete@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	sk_OSSL_PROVIDER_delete, .-sk_OSSL_PROVIDER_delete
	.type	sk_OSSL_PROVIDER_delete_ptr, @function
sk_OSSL_PROVIDER_delete_ptr:
.LFB629:
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
	call	OPENSSL_sk_delete_ptr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	sk_OSSL_PROVIDER_delete_ptr, .-sk_OSSL_PROVIDER_delete_ptr
	.type	sk_OSSL_PROVIDER_push, @function
sk_OSSL_PROVIDER_push:
.LFB630:
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
.LFE630:
	.size	sk_OSSL_PROVIDER_push, .-sk_OSSL_PROVIDER_push
	.type	sk_OSSL_PROVIDER_pop_free, @function
sk_OSSL_PROVIDER_pop_free:
.LFB634:
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
.LFE634:
	.size	sk_OSSL_PROVIDER_pop_free, .-sk_OSSL_PROVIDER_pop_free
	.type	sk_OSSL_PROVIDER_find, @function
sk_OSSL_PROVIDER_find:
.LFB637:
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
	call	OPENSSL_sk_find@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	sk_OSSL_PROVIDER_find, .-sk_OSSL_PROVIDER_find
	.type	sk_OSSL_PROVIDER_sort, @function
sk_OSSL_PROVIDER_sort:
.LFB640:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	sk_OSSL_PROVIDER_sort, .-sk_OSSL_PROVIDER_sort
	.type	sk_OSSL_PROVIDER_dup, @function
sk_OSSL_PROVIDER_dup:
.LFB642:
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
	call	OPENSSL_sk_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	sk_OSSL_PROVIDER_dup, .-sk_OSSL_PROVIDER_dup
	.type	ossl_provider_cmp, @function
ossl_provider_cmp:
.LFB645:
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
	movq	(%rax), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	ossl_provider_cmp, .-ossl_provider_cmp
	.type	provider_deactivate_free, @function
provider_deactivate_free:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L79
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_provider_deactivate@PLT
.L79:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	provider_deactivate_free, .-provider_deactivate_free
	.section	.rodata
.LC0:
	.string	"../crypto/provider_core.c"
	.text
	.type	ossl_provider_child_cb_free, @function
ossl_provider_child_cb_free:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$244, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	ossl_provider_child_cb_free, .-ossl_provider_child_cb_free
	.type	infopair_free, @function
infopair_free:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$250, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$251, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$252, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	infopair_free, .-infopair_free
	.type	infopair_copy, @function
infopair_copy:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$257, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L83
	movl	$0, %eax
	jmp	.L84
.L83:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$262, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L88
.L85:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L87
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$267, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L89
.L87:
	movq	-8(%rbp), %rax
	jmp	.L84
.L88:
	nop
	jmp	.L86
.L89:
	nop
.L86:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$273, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$274, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	infopair_copy, .-infopair_copy
	.globl	ossl_provider_info_clear
	.type	ossl_provider_info_clear, @function
ossl_provider_info_clear:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$280, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$281, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	infopair_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_INFOPAIR_pop_free
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	ossl_provider_info_clear, .-ossl_provider_info_clear
	.globl	ossl_provider_store_free
	.type	ossl_provider_store_free, @function
ossl_provider_store_free:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L96
	movq	-16(%rbp), %rax
	movzbl	72(%rax), %edx
	orl	$2, %edx
	movb	%dl, 72(%rax)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$293, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	provider_deactivate_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_pop_free
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	ossl_provider_child_cb_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_CHILD_CB_pop_free
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	$0, -8(%rbp)
	jmp	.L94
.L95:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	call	ossl_provider_info_clear@PLT
	addq	$1, -8(%rbp)
.L94:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L95
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$303, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$304, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L91
.L96:
	nop
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	ossl_provider_store_free, .-ossl_provider_store_free
	.globl	ossl_provider_store_new
	.type	ossl_provider_store_new, @function
ossl_provider_store_new:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$309, %edx
	movq	%rax, %rsi
	movl	$80, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L98
	leaq	ossl_provider_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_new
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L98
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L98
	call	sk_OSSL_PROVIDER_CHILD_CB_new_null
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L98
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L99
.L98:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_store_free@PLT
	movl	$0, %eax
	jmp	.L100
.L99:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movzbl	72(%rax), %edx
	orl	$1, %edx
	movb	%dl, 72(%rax)
	movq	-8(%rbp), %rax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	ossl_provider_store_new, .-ossl_provider_store_new
	.type	get_provider_store, @function
get_provider_store:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L102
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$333, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L102:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	get_provider_store, .-get_provider_store
	.globl	ossl_provider_disable_fallback_loading
	.type	ossl_provider_disable_fallback_loading, @function
ossl_provider_disable_fallback_loading:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_provider_store
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L105
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L106
	movl	$0, %eax
	jmp	.L107
.L106:
	movq	-8(%rbp), %rax
	movzbl	72(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 72(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$1, %eax
	jmp	.L107
.L105:
	movl	$0, %eax
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	ossl_provider_disable_fallback_loading, .-ossl_provider_disable_fallback_loading
	.globl	ossl_provider_info_add_to_store
	.type	ossl_provider_info_add_to_store, @function
ossl_provider_info_add_to_store:
.LFB655:
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
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	get_provider_store
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L109
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$360, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L110
.L109:
	cmpq	$0, -32(%rbp)
	jne	.L111
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$365, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L110
.L111:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L112
	movl	$0, %eax
	jmp	.L110
.L112:
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L113
	leaq	.LC0(%rip), %rax
	movl	$372, %edx
	movq	%rax, %rsi
	movl	$400, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L118
	movq	-32(%rbp), %rax
	movq	$10, 64(%rax)
	jmp	.L116
.L113:
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L116
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	addq	$10, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$381, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L119
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 64(%rax)
.L116:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, (%rdx)
	movq	%rbx, 8(%rdx)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, 16(%rdx)
	movq	%rbx, 24(%rdx)
	movq	32(%rax), %rax
	movq	%rax, 32(%rdx)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 56(%rax)
	movl	$1, -20(%rbp)
	jmp	.L115
.L118:
	nop
	jmp	.L115
.L119:
	nop
.L115:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-20(%rbp), %eax
.L110:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	ossl_provider_info_add_to_store, .-ossl_provider_info_add_to_store
	.globl	ossl_provider_find
	.type	ossl_provider_find, @function
ossl_provider_find:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movl	%edx, -276(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	get_provider_store
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L121
	leaq	-256(%rbp), %rdx
	movl	$0, %eax
	movl	$28, %ecx
	movq	%rdx, %rdi
	rep stosq
	cmpl	$0, -276(%rbp)
	jne	.L122
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_is_default@PLT
	testl	%eax, %eax
	je	.L122
	movl	$0, %esi
	movl	$64, %edi
	call	OPENSSL_init_crypto@PLT
.L122:
	movq	-272(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L123
	movl	$0, %eax
	jmp	.L124
.L123:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_sort
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_find
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	je	.L125
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_value
	movq	%rax, -8(%rbp)
.L125:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	cmpq	$0, -8(%rbp)
	je	.L121
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_up_ref@PLT
	testl	%eax, %eax
	jne	.L121
	movq	$0, -8(%rbp)
.L121:
	movq	-8(%rbp), %rax
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	ossl_provider_find, .-ossl_provider_find
	.type	provider_new, @function
provider_new:
.LFB657:
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
	movq	$0, -8(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$443, %edx
	movq	%rax, %rsi
	movl	$224, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L128
	movl	$0, %eax
	jmp	.L129
.L128:
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	jne	.L130
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$446, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L129
.L130:
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L131
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$451, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L129
.L131:
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 184(%rdx)
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	je	.L132
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L132
	leaq	infopair_free(%rip), %rdx
	leaq	infopair_copy(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_INFOPAIR_deep_copy
	movq	-8(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L133
.L132:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$461, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L129
.L133:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$464, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L134
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	movl	$0, %eax
	jmp	.L129
.L134:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-8(%rbp), %rax
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	provider_new, .-provider_new
	.globl	ossl_provider_up_ref
	.type	ossl_provider_up_ref, @function
ossl_provider_up_ref:
.LFB658:
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
	leaq	16(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jg	.L136
	movl	$0, %eax
	jmp	.L139
.L136:
	movq	-24(%rbp), %rax
	movzbl	200(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L138
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_provider_up_ref_parent@PLT
	testl	%eax, %eax
	jne	.L138
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	movl	$0, %eax
	jmp	.L139
.L138:
	movl	-4(%rbp), %eax
.L139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	ossl_provider_up_ref, .-ossl_provider_up_ref
	.type	provider_up_ref_intern, @function
provider_up_ref_intern:
.LFB659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L141
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_provider_activate@PLT
	jmp	.L142
.L141:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_up_ref@PLT
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	provider_up_ref_intern, .-provider_up_ref_intern
	.type	provider_free_intern, @function
provider_free_intern:
.LFB660:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L144
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_provider_deactivate@PLT
	jmp	.L145
.L144:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	movl	$1, %eax
.L145:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	provider_free_intern, .-provider_free_intern
	.globl	ossl_provider_new
	.type	ossl_provider_new, @function
ossl_provider_new:
.LFB661:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movl	%r8d, -132(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	get_provider_store
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L147
	movl	$0, %eax
	jmp	.L169
.L147:
	leaq	-96(%rbp), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	cmpq	$0, -120(%rbp)
	jne	.L149
	movq	ossl_predefined_providers@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L150
.L153:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L151
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -96(%rbp)
	movq	%rbx, -88(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.L152
.L151:
	addq	$40, -24(%rbp)
.L150:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L153
.L152:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L154
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L155
	movl	$0, %eax
	jmp	.L169
.L155:
	movq	$0, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L156
.L159:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L157
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -96(%rbp)
	movq	%rbx, -88(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.L158
.L157:
	addq	$40, -24(%rbp)
	addq	$1, -32(%rbp)
.L156:
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L159
.L158:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	jmp	.L154
.L149:
	movq	-120(%rbp), %rax
	movq	%rax, -80(%rbp)
.L154:
	cmpq	$0, -128(%rbp)
	je	.L160
	call	sk_INFOPAIR_new_null
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	jne	.L161
	movl	$0, %eax
	jmp	.L169
.L161:
	movl	$0, -36(%rbp)
	jmp	.L162
.L165:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L170
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rsi
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	leaq	-96(%rbp), %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_provider_info_add_parameter@PLT
	testl	%eax, %eax
	jg	.L164
	movq	-72(%rbp), %rax
	leaq	infopair_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_INFOPAIR_pop_free
	movl	$0, %eax
	jmp	.L169
.L170:
	nop
.L164:
	addl	$1, -36(%rbp)
.L162:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L165
.L160:
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	provider_new
	movq	%rax, -56(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L166
	movq	-72(%rbp), %rax
	leaq	infopair_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_INFOPAIR_pop_free
.L166:
	cmpq	$0, -56(%rbp)
	jne	.L167
	movl	$0, %eax
	jmp	.L169
.L167:
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_provider_set_module_path@PLT
	testl	%eax, %eax
	jne	.L168
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	movl	$0, %eax
	jmp	.L169
.L168:
	movq	-56(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, 80(%rax)
	call	ERR_get_next_error_library@PLT
	movq	-56(%rbp), %rdx
	movl	%eax, 96(%rdx)
	movq	-56(%rbp), %rax
.L169:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	ossl_provider_new, .-ossl_provider_new
	.type	create_provider_children, @function
create_provider_children:
.LFB662:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$1, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_CHILD_CB_num
	movl	%eax, -20(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L172
.L173:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	-8(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_CHILD_CB_value
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	andl	%eax, -4(%rbp)
	addl	$1, -8(%rbp)
.L172:
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L173
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	create_provider_children, .-create_provider_children
	.globl	ossl_provider_add_to_store
	.type	ossl_provider_add_to_store, @function
ossl_provider_add_to_store:
.LFB663:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movl	%edx, -276(%rbp)
	leaq	-256(%rbp), %rdx
	movl	$0, %eax
	movl	$28, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	$0, -8(%rbp)
	cmpq	$0, -272(%rbp)
	je	.L176
	movq	-272(%rbp), %rax
	movq	$0, (%rax)
.L176:
	movq	-264(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	get_provider_store
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L177
	movl	$0, %eax
	jmp	.L190
.L177:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L179
	movl	$0, %eax
	jmp	.L190
.L179:
	movq	-264(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_find
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.L180
	movq	-264(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L181
.L180:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_value
	movq	%rax, -8(%rbp)
.L181:
	cmpl	$-1, -20(%rbp)
	jne	.L182
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-264(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_push
	testl	%eax, %eax
	je	.L191
	movq	-264(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 88(%rax)
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	create_provider_children
	testl	%eax, %eax
	jne	.L185
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-264(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_delete_ptr
	jmp	.L184
.L185:
	cmpl	$0, -276(%rbp)
	jne	.L182
	movq	-16(%rbp), %rax
	movzbl	72(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 72(%rax)
.L182:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	cmpq	$0, -272(%rbp)
	je	.L186
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_up_ref@PLT
	testl	%eax, %eax
	jne	.L187
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$665, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	$0, -8(%rbp)
	movl	$0, %eax
	jmp	.L190
.L187:
	movq	-272(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L186:
	cmpl	$0, -20(%rbp)
	js	.L188
	movq	-264(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_provider_deactivate@PLT
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	jmp	.L189
.L188:
	movq	-264(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ossl_decoder_cache_flush@PLT
.L189:
	movl	$1, %eax
	jmp	.L190
.L191:
	nop
.L184:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$0, %eax
.L190:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	ossl_provider_add_to_store, .-ossl_provider_add_to_store
	.globl	ossl_provider_free
	.type	ossl_provider_free, @function
ossl_provider_free:
.LFB664:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L198
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jne	.L194
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L195
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_teardown@PLT
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L196
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ERR_unload_strings@PLT
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$725, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 104(%rax)
.L196:
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$730, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 176(%rax)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$-2, %edx
	movb	%dl, (%rax)
.L195:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_init_thread_deregister@PLT
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	DSO_free@PLT
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$745, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$746, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	leaq	infopair_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_INFOPAIR_pop_free
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$752, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L198
.L194:
	movq	-24(%rbp), %rax
	movzbl	200(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L198
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_provider_free_parent@PLT
.L198:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	ossl_provider_free, .-ossl_provider_free
	.globl	ossl_provider_set_module_path
	.type	ossl_provider_set_module_path, @function
ossl_provider_set_module_path:
.LFB665:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$765, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	cmpq	$0, -16(%rbp)
	jne	.L200
	movl	$1, %eax
	jmp	.L201
.L200:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$769, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L202
	movl	$1, %eax
	jmp	.L201
.L202:
	movl	$0, %eax
.L201:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	ossl_provider_set_module_path, .-ossl_provider_set_module_path
	.type	infopair_add, @function
infopair_add:
.LFB666:
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
	movq	$0, -8(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$779, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L212
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$780, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L212
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$781, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L212
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L207
	call	sk_INFOPAIR_new_null
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L208
.L207:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_INFOPAIR_push
	testl	%eax, %eax
	jg	.L209
.L208:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$787, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L206
.L209:
	movl	$1, %eax
	jmp	.L210
.L212:
	nop
.L206:
	cmpq	$0, -8(%rbp)
	je	.L211
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$795, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$796, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$797, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L211:
	movl	$0, %eax
.L210:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	infopair_add, .-infopair_add
	.globl	ossl_provider_add_parameter
	.type	ossl_provider_add_parameter, @function
ossl_provider_add_parameter:
.LFB667:
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
	movq	-8(%rbp), %rax
	leaq	72(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	infopair_add
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE667:
	.size	ossl_provider_add_parameter, .-ossl_provider_add_parameter
	.globl	ossl_provider_info_add_parameter
	.type	ossl_provider_info_add_parameter, @function
ossl_provider_info_add_parameter:
.LFB668:
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
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	infopair_add
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	ossl_provider_info_add_parameter, .-ossl_provider_info_add_parameter
	.section	.data.rel.local,"aw"
	.align 8
	.type	core_dispatch, @object
	.size	core_dispatch, 8
core_dispatch:
	.quad	core_dispatch_
	.text
	.globl	OSSL_PROVIDER_set_default_search_path
	.type	OSSL_PROVIDER_set_default_search_path, @function
OSSL_PROVIDER_set_default_search_path:
.LFB669:
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
	cmpq	$0, -32(%rbp)
	je	.L218
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$836, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L218
	movl	$0, %eax
	jmp	.L219
.L218:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_provider_store
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L220
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	je	.L220
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$842, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$1, %eax
	jmp	.L219
.L220:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$847, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L219:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE669:
	.size	OSSL_PROVIDER_set_default_search_path, .-OSSL_PROVIDER_set_default_search_path
	.globl	OSSL_PROVIDER_get0_default_search_path
	.type	OSSL_PROVIDER_get0_default_search_path, @function
OSSL_PROVIDER_get0_default_search_path:
.LFB670:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_provider_store
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L222
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	je	.L222
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L222:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	OSSL_PROVIDER_get0_default_search_path, .-OSSL_PROVIDER_get0_default_search_path
	.section	.rodata
.LC1:
	.string	"OPENSSL_MODULES"
	.align 8
.LC2:
	.string	"/root/AsmXoM/evaluation/openssl-3.3.5/build/lib64/ossl-modules"
.LC3:
	.string	"name=%s"
.LC4:
	.string	"OSSL_provider_init"
	.align 8
.LC5:
	.string	"name=%s, provider has no provider init function"
	.text
	.type	provider_init, @function
provider_init:
.LFB671:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$1, %eax
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L225
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$881, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L226
.L225:
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L227
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L228
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	call	DSO_new@PLT
	movq	-120(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L263
	movq	-120(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	get_provider_store
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L264
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	je	.L264
	movq	-80(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L232
	movq	-80(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$911, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	cmpq	$0, -56(%rbp)
	je	.L265
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L234
.L232:
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L234:
	cmpq	$0, -48(%rbp)
	jne	.L235
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	ossl_safe_getenv@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L235
	leaq	.LC2(%rip), %rax
	movq	%rax, -48(%rbp)
.L235:
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	DSO_ctrl@PLT
	movq	-120(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L236
	movq	-120(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DSO_convert_filename@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.L236:
	cmpq	$0, -32(%rbp)
	je	.L237
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DSO_merge@PLT
	movq	%rax, -40(%rbp)
.L237:
	cmpq	$0, -40(%rbp)
	je	.L238
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rsi
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	DSO_load@PLT
	testq	%rax, %rax
	jne	.L239
.L238:
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	DSO_free@PLT
	movq	-120(%rbp), %rax
	movq	$0, 56(%rax)
.L239:
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$942, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$943, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$944, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L228:
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L240
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$949, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	movl	$524325, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L226
.L240:
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DSO_bind_func@PLT
	movq	-120(%rbp), %rdx
	movq	%rax, 64(%rdx)
.L227:
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L241
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$961, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	movl	$524556, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L226
.L241:
	movq	-120(%rbp), %rax
	movq	64(%rax), %r8
	movq	core_dispatch(%rip), %rsi
	leaq	-104(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L242
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$969, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	movl	$786693, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L226
.L242:
	movq	-104(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 208(%rax)
	movq	-96(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 216(%rax)
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	je	.L243
	jmp	.L244
.L254:
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1031, %eax
	je	.L245
	cmpl	$1031, %eax
	jg	.L246
	cmpl	$1030, %eax
	je	.L247
	cmpl	$1030, %eax
	jg	.L246
	cmpl	$1029, %eax
	je	.L248
	cmpl	$1029, %eax
	jg	.L246
	cmpl	$1028, %eax
	je	.L249
	cmpl	$1028, %eax
	jg	.L246
	cmpl	$1027, %eax
	je	.L250
	cmpl	$1027, %eax
	jg	.L246
	cmpl	$1026, %eax
	je	.L251
	cmpl	$1026, %eax
	jg	.L246
	cmpl	$1024, %eax
	je	.L252
	cmpl	$1025, %eax
	je	.L253
	jmp	.L246
.L252:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_provider_teardown
	movq	-120(%rbp), %rdx
	movq	%rax, 112(%rdx)
	jmp	.L246
.L253:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_provider_gettable_params
	movq	-120(%rbp), %rdx
	movq	%rax, 120(%rdx)
	jmp	.L246
.L251:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_provider_get_params
	movq	-120(%rbp), %rdx
	movq	%rax, 128(%rdx)
	jmp	.L246
.L245:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_provider_self_test
	movq	-120(%rbp), %rdx
	movq	%rax, 144(%rdx)
	jmp	.L246
.L247:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_provider_get_capabilities
	movq	-120(%rbp), %rdx
	movq	%rax, 136(%rdx)
	jmp	.L246
.L250:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_provider_query_operation
	movq	-120(%rbp), %rdx
	movq	%rax, 152(%rdx)
	jmp	.L246
.L249:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_provider_unquery_operation
	movq	-120(%rbp), %rdx
	movq	%rax, 160(%rdx)
	jmp	.L246
.L248:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_provider_get_reason_strings
	movq	%rax, -8(%rbp)
	nop
.L246:
	movq	-96(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -96(%rbp)
.L244:
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L254
.L243:
	cmpq	$0, -8(%rbp)
	je	.L255
	movq	-120(%rbp), %rax
	movq	208(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	movq	$0, -64(%rbp)
	jmp	.L256
.L258:
	movq	-64(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%rax, %rdi
	call	ERR_GET_LIB
	testl	%eax, %eax
	jne	.L266
	addq	$1, -64(%rbp)
.L256:
	movq	-64(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L258
	addq	$1, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	salq	$4, %rax
	leaq	.LC0(%rip), %rcx
	movl	$1042, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 104(%rax)
	movq	-120(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L267
	movq	-120(%rbp), %rax
	movl	96(%rax), %eax
	cltq
	salq	$23, %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	104(%rax), %rax
	andl	$2139095040, %edx
	movq	%rdx, (%rax)
	movq	-120(%rbp), %rax
	movq	104(%rax), %rax
	movq	-120(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	$1, -72(%rbp)
	jmp	.L260
.L261:
	movq	-72(%rbp), %rax
	salq	$4, %rax
	leaq	-16(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	movq	-120(%rbp), %rax
	movq	104(%rax), %rax
	movq	-72(%rbp), %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movslq	%ecx, %rax
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	salq	$4, %rax
	leaq	-16(%rax), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-120(%rbp), %rax
	movq	104(%rax), %rax
	movq	-72(%rbp), %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	8(%rcx), %rax
	movq	%rax, 8(%rdx)
	addq	$1, -72(%rbp)
.L260:
	movq	-72(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	jnb	.L261
	movq	-120(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-120(%rbp), %rax
	movl	96(%rax), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ERR_load_strings@PLT
.L255:
	movq	-120(%rbp), %rax
	movzbl	(%rax), %edx
	orl	$1, %edx
	movb	%dl, (%rax)
	movl	$1, -12(%rbp)
	jmp	.L226
.L263:
	nop
	jmp	.L226
.L264:
	nop
	jmp	.L226
.L265:
	nop
	jmp	.L226
.L266:
	nop
	jmp	.L226
.L267:
	nop
.L226:
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	provider_init, .-provider_init
	.type	provider_deactivate, @function
provider_deactivate:
.LFB672:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movl	$0, -4(%rbp)
	movl	$1, -8(%rbp)
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L269
	movl	$-1, %eax
	jmp	.L282
.L269:
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	get_provider_store
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L271
	movl	$0, -8(%rbp)
.L271:
	cmpl	$0, -8(%rbp)
	je	.L272
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L272
	movl	$-1, %eax
	jmp	.L282
.L272:
	cmpl	$0, -8(%rbp)
	je	.L273
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L273
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$-1, %eax
	jmp	.L282
.L273:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	32(%rax), %rdi
	leaq	-44(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$-1, %esi
	call	CRYPTO_atomic_add@PLT
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	jle	.L274
	movq	-56(%rbp), %rax
	movzbl	200(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L274
	cmpl	$0, -60(%rbp)
	je	.L274
	movl	$1, -4(%rbp)
.L274:
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	jg	.L275
	movq	-56(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$-3, %edx
	movb	%dl, (%rax)
	jmp	.L276
.L275:
	movl	$0, -64(%rbp)
.L276:
	cmpl	$0, -64(%rbp)
	je	.L277
	cmpq	$0, -24(%rbp)
	je	.L277
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_CHILD_CB_num
	movl	%eax, -28(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L278
.L279:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_CHILD_CB_value
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	addl	$1, -12(%rbp)
.L278:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L279
.L277:
	cmpl	$0, -8(%rbp)
	je	.L280
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	jg	.L280
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ossl_decoder_cache_flush@PLT
.L280:
	cmpl	$0, -4(%rbp)
	je	.L281
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_provider_free_parent@PLT
.L281:
	movl	-44(%rbp), %eax
.L282:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	provider_deactivate, .-provider_deactivate
	.type	provider_activate, @function
provider_activate:
.LFB673:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	$-1, -20(%rbp)
	movl	$1, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L284
	movl	$0, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	provider_init
	testl	%eax, %eax
	jne	.L284
	movl	$-1, %eax
	jmp	.L294
.L284:
	movq	-40(%rbp), %rax
	movzbl	200(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L286
	cmpl	$0, -48(%rbp)
	je	.L286
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_provider_up_ref_parent@PLT
	testl	%eax, %eax
	jne	.L286
	movl	$-1, %eax
	jmp	.L294
.L286:
	cmpl	$0, -44(%rbp)
	je	.L287
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L287
	movq	-40(%rbp), %rax
	movzbl	200(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L288
	cmpl	$0, -48(%rbp)
	je	.L288
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_provider_free_parent@PLT
.L288:
	movl	$-1, %eax
	jmp	.L294
.L287:
	cmpl	$0, -44(%rbp)
	je	.L289
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L289
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-40(%rbp), %rax
	movzbl	200(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L290
	cmpl	$0, -48(%rbp)
	je	.L290
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_provider_free_parent@PLT
.L290:
	movl	$-1, %eax
	jmp	.L294
.L289:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	32(%rax), %rdi
	leaq	-20(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	call	CRYPTO_atomic_add@PLT
	testl	%eax, %eax
	je	.L291
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	orl	$2, %edx
	movb	%dl, (%rax)
	movl	-20(%rbp), %eax
	cmpl	$1, %eax
	jne	.L291
	cmpq	$0, -16(%rbp)
	je	.L291
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	create_provider_children
	movl	%eax, -4(%rbp)
.L291:
	cmpl	$0, -44(%rbp)
	je	.L292
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-20(%rbp), %eax
	cmpl	$1, %eax
	jne	.L292
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ossl_decoder_cache_flush@PLT
.L292:
	cmpl	$0, -4(%rbp)
	jne	.L293
	movl	$-1, %eax
	jmp	.L294
.L293:
	movl	-20(%rbp), %eax
.L294:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	provider_activate, .-provider_activate
	.type	provider_flush_store_cache, @function
provider_flush_store_cache:
.LFB674:
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
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	get_provider_store
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L296
	movl	$0, %eax
	jmp	.L297
.L296:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L298
	movl	$0, %eax
	jmp	.L297
.L298:
	movq	-24(%rbp), %rax
	movzbl	72(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	cmpl	$0, -28(%rbp)
	jne	.L299
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	evp_method_store_cache_flush@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ossl_encoder_store_cache_flush@PLT
	addl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ossl_decoder_store_cache_flush@PLT
	addl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ossl_store_loader_store_cache_flush@PLT
	addl	%ebx, %eax
	movl	%eax, -32(%rbp)
	cmpl	$4, -32(%rbp)
	sete	%al
	movzbl	%al, %eax
	jmp	.L297
.L299:
	movl	$1, %eax
.L297:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	provider_flush_store_cache, .-provider_flush_store_cache
	.type	provider_remove_store_methods, @function
provider_remove_store_methods:
.LFB675:
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
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	get_provider_store
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L301
	movl	$0, %eax
	jmp	.L302
.L301:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L303
	movl	$0, %eax
	jmp	.L302
.L303:
	movq	-24(%rbp), %rax
	movzbl	72(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	cmpl	$0, -28(%rbp)
	jne	.L304
	movq	-40(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L305
	movl	$0, %eax
	jmp	.L302
.L305:
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1277, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 176(%rax)
	movq	-40(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	evp_method_store_remove_all_provided@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_encoder_store_remove_all_provided@PLT
	addl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_decoder_store_remove_all_provided@PLT
	addl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_store_loader_store_remove_all_provided@PLT
	addl	%ebx, %eax
	movl	%eax, -32(%rbp)
	cmpl	$4, -32(%rbp)
	sete	%al
	movzbl	%al, %eax
	jmp	.L302
.L304:
	movl	$1, %eax
.L302:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	provider_remove_store_methods, .-provider_remove_store_methods
	.globl	ossl_provider_activate
	.type	ossl_provider_activate, @function
ossl_provider_activate:
.LFB676:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L307
	movl	$0, %eax
	jmp	.L308
.L307:
	cmpl	$0, -32(%rbp)
	je	.L309
	movq	-24(%rbp), %rax
	movzbl	200(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L309
	movl	$1, %eax
	jmp	.L308
.L309:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	provider_activate
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L310
	cmpl	$1, -4(%rbp)
	jne	.L311
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	provider_flush_store_cache
	jmp	.L308
.L311:
	movl	$1, %eax
	jmp	.L308
.L310:
	movl	$0, %eax
.L308:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE676:
	.size	ossl_provider_activate, .-ossl_provider_activate
	.globl	ossl_provider_deactivate
	.type	ossl_provider_deactivate, @function
ossl_provider_deactivate:
.LFB677:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L314
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	provider_deactivate
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L315
.L314:
	movl	$0, %eax
	jmp	.L316
.L315:
	cmpl	$0, -4(%rbp)
	jne	.L317
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	provider_remove_store_methods
	jmp	.L316
.L317:
	movl	$1, %eax
.L316:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	ossl_provider_deactivate, .-ossl_provider_deactivate
	.globl	ossl_provider_ctx
	.type	ossl_provider_ctx, @function
ossl_provider_ctx:
.LFB678:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L320
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	jmp	.L322
.L320:
	movl	$0, %eax
.L322:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	ossl_provider_ctx, .-ossl_provider_ctx
	.type	provider_activate_fallbacks, @function
provider_activate_fallbacks:
.LFB679:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L324
	movl	$0, %eax
	jmp	.L325
.L324:
	movq	-40(%rbp), %rax
	movzbl	72(%rax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	cmpl	$0, -20(%rbp)
	jne	.L326
	movl	$1, %eax
	jmp	.L325
.L326:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L327
	movl	$0, %eax
	jmp	.L325
.L327:
	movq	-40(%rbp), %rax
	movzbl	72(%rax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L328
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$1, %eax
	jmp	.L325
.L328:
	movq	ossl_predefined_providers@GOTPCREL(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L329
.L336:
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L337
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	provider_new
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L338
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 80(%rax)
	call	ERR_get_next_error_library@PLT
	movq	-32(%rbp), %rdx
	movl	%eax, 96(%rdx)
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	provider_activate
	testl	%eax, %eax
	jns	.L334
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	jmp	.L333
.L334:
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 88(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_push
	testl	%eax, %eax
	jne	.L335
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	jmp	.L333
.L335:
	addl	$1, -4(%rbp)
	jmp	.L331
.L337:
	nop
.L331:
	addq	$40, -16(%rbp)
.L329:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L336
	cmpl	$0, -4(%rbp)
	jle	.L339
	movq	-40(%rbp), %rax
	movzbl	72(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 72(%rax)
	movl	$1, -8(%rbp)
	jmp	.L333
.L338:
	nop
	jmp	.L333
.L339:
	nop
.L333:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-8(%rbp), %eax
.L325:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE679:
	.size	provider_activate_fallbacks, .-provider_activate_fallbacks
	.globl	ossl_provider_doall_activated
	.type	ossl_provider_doall_activated, @function
ossl_provider_doall_activated:
.LFB680:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -60(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_provider_store
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_is_default@PLT
	testl	%eax, %eax
	je	.L341
	movl	$0, %esi
	movl	$64, %edi
	call	OPENSSL_init_crypto@PLT
.L341:
	cmpq	$0, -24(%rbp)
	jne	.L342
	movl	$1, %eax
	jmp	.L364
.L342:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	provider_activate_fallbacks
	testl	%eax, %eax
	jne	.L344
	movl	$0, %eax
	jmp	.L364
.L344:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L345
	movl	$0, %eax
	jmp	.L364
.L345:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_dup
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L346
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$0, %eax
	jmp	.L364
.L346:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_num
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.L347
.L353:
	movl	-8(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_value
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	je	.L365
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L350
	movq	-48(%rbp), %rax
	leaq	16(%rax), %rdx
	leaq	-60(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jg	.L351
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	jmp	.L349
.L351:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	leaq	32(%rax), %rdi
	leaq	-60(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	call	CRYPTO_atomic_add@PLT
	testl	%eax, %eax
	jne	.L352
	movq	-48(%rbp), %rax
	leaq	16(%rax), %rdx
	leaq	-60(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	jmp	.L349
.L350:
	movl	-8(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_delete
	subl	$1, -12(%rbp)
.L352:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	subl	$1, -8(%rbp)
.L347:
	cmpl	$0, -8(%rbp)
	jns	.L353
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$0, -8(%rbp)
	jmp	.L354
.L357:
	movl	-8(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_value
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L355
	movl	$-1, -8(%rbp)
	jmp	.L356
.L355:
	addl	$1, -8(%rbp)
.L354:
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L357
	movl	$-1, -8(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L356
.L365:
	nop
.L349:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L356:
	addl	$1, -8(%rbp)
	jmp	.L358
.L363:
	movl	-8(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_value
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	32(%rax), %rdi
	leaq	-60(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$-1, %esi
	call	CRYPTO_atomic_add@PLT
	testl	%eax, %eax
	jne	.L359
	movl	$0, -4(%rbp)
	jmp	.L360
.L359:
	movl	-60(%rbp), %eax
	testl	%eax, %eax
	jg	.L361
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	32(%rax), %rdi
	leaq	-60(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	call	CRYPTO_atomic_add@PLT
	testl	%eax, %eax
	je	.L362
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	provider_deactivate
	jmp	.L361
.L362:
	movl	$0, -4(%rbp)
.L361:
	movq	-56(%rbp), %rax
	leaq	16(%rax), %rdx
	leaq	-60(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	testl	%eax, %eax
	jne	.L360
	movl	$0, -4(%rbp)
	nop
.L360:
	addl	$1, -8(%rbp)
.L358:
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L363
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_free
	movl	-4(%rbp), %eax
.L364:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	ossl_provider_doall_activated, .-ossl_provider_doall_activated
	.globl	OSSL_PROVIDER_available
	.type	OSSL_PROVIDER_available, @function
OSSL_PROVIDER_available:
.LFB681:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	get_provider_store
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L367
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	provider_activate_fallbacks
	testl	%eax, %eax
	jne	.L368
.L367:
	movl	$0, %eax
	jmp	.L369
.L368:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_provider_find@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L370
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L371
	movl	$0, %eax
	jmp	.L369
.L371:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
.L370:
	movl	-4(%rbp), %eax
.L369:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	OSSL_PROVIDER_available, .-OSSL_PROVIDER_available
	.globl	ossl_provider_name
	.type	ossl_provider_name, @function
ossl_provider_name:
.LFB682:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	ossl_provider_name, .-ossl_provider_name
	.globl	ossl_provider_dso
	.type	ossl_provider_dso, @function
ossl_provider_dso:
.LFB683:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	ossl_provider_dso, .-ossl_provider_dso
	.globl	ossl_provider_module_name
	.type	ossl_provider_module_name, @function
ossl_provider_module_name:
.LFB684:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	DSO_get_filename@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	ossl_provider_module_name, .-ossl_provider_module_name
	.globl	ossl_provider_module_path
	.type	ossl_provider_module_path, @function
ossl_provider_module_path:
.LFB685:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	DSO_get_filename@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	ossl_provider_module_path, .-ossl_provider_module_path
	.globl	ossl_provider_prov_ctx
	.type	ossl_provider_prov_ctx, @function
ossl_provider_prov_ctx:
.LFB686:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L381
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	jmp	.L382
.L381:
	movl	$0, %eax
.L382:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	ossl_provider_prov_ctx, .-ossl_provider_prov_ctx
	.globl	ossl_provider_get0_dispatch
	.type	ossl_provider_get0_dispatch, @function
ossl_provider_get0_dispatch:
.LFB687:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L384
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	jmp	.L385
.L384:
	movl	$0, %eax
.L385:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	ossl_provider_get0_dispatch, .-ossl_provider_get0_dispatch
	.globl	ossl_provider_libctx
	.type	ossl_provider_libctx, @function
ossl_provider_libctx:
.LFB688:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L387
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	jmp	.L389
.L387:
	movl	$0, %eax
.L389:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE688:
	.size	ossl_provider_libctx, .-ossl_provider_libctx
	.globl	ossl_provider_teardown
	.type	ossl_provider_teardown, @function
ossl_provider_teardown:
.LFB689:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L392
	movq	-8(%rbp), %rax
	movzbl	200(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L392
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L392:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE689:
	.size	ossl_provider_teardown, .-ossl_provider_teardown
	.globl	ossl_provider_gettable_params
	.type	ossl_provider_gettable_params, @function
ossl_provider_gettable_params:
.LFB690:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L394
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L396
.L394:
	movl	$0, %eax
.L396:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE690:
	.size	ossl_provider_gettable_params, .-ossl_provider_gettable_params
	.globl	ossl_provider_get_params
	.type	ossl_provider_get_params, @function
ossl_provider_get_params:
.LFB691:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L398
	movq	-8(%rbp), %rax
	movq	128(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L400
.L398:
	movl	$0, %eax
.L400:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE691:
	.size	ossl_provider_get_params, .-ossl_provider_get_params
	.globl	ossl_provider_self_test
	.type	ossl_provider_self_test, @function
ossl_provider_self_test:
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
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L402
	movl	$1, %eax
	jmp	.L403
.L402:
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L404
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	provider_remove_store_methods
.L404:
	movl	-4(%rbp), %eax
.L403:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE692:
	.size	ossl_provider_self_test, .-ossl_provider_self_test
	.globl	ossl_provider_get_capabilities
	.type	ossl_provider_get_capabilities, @function
ossl_provider_get_capabilities:
.LFB693:
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
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L406
	movq	-8(%rbp), %rax
	movq	136(%rax), %r8
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	*%r8
	jmp	.L408
.L406:
	movl	$1, %eax
.L408:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE693:
	.size	ossl_provider_get_capabilities, .-ossl_provider_get_capabilities
	.globl	ossl_provider_query_operation
	.type	ossl_provider_query_operation, @function
ossl_provider_query_operation:
.LFB694:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	jne	.L410
	movl	$0, %eax
	jmp	.L411
.L410:
	movq	-24(%rbp), %rax
	movq	152(%rax), %r8
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
.L411:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE694:
	.size	ossl_provider_query_operation, .-ossl_provider_query_operation
	.globl	ossl_provider_unquery_operation
	.type	ossl_provider_unquery_operation, @function
ossl_provider_unquery_operation:
.LFB695:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L414
	movq	-8(%rbp), %rax
	movq	160(%rax), %r8
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
.L414:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE695:
	.size	ossl_provider_unquery_operation, .-ossl_provider_unquery_operation
	.globl	ossl_provider_set_operation_bit
	.type	ossl_provider_set_operation_bit, @function
ossl_provider_set_operation_bit:
.LFB696:
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
	shrq	$3, %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	andl	$7, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movb	%al, -9(%rbp)
	movq	-40(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L416
	movl	$0, %eax
	jmp	.L417
.L416:
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L418
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$1691, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L419
	movq	-40(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$0, %eax
	jmp	.L417
.L419:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 168(%rax)
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%rax, %rdx
	addq	$1, %rdx
	movq	-40(%rbp), %rax
	movq	168(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 176(%rax)
.L418:
	movq	-40(%rbp), %rax
	movq	168(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movq	-40(%rbp), %rdx
	movq	168(%rdx), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	orb	-9(%rbp), %al
	movb	%al, (%rdx)
	movq	-40(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$1, %eax
.L417:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	ossl_provider_set_operation_bit, .-ossl_provider_set_operation_bit
	.globl	ossl_provider_test_operation_bit
	.type	ossl_provider_test_operation_bit, @function
ossl_provider_test_operation_bit:
.LFB697:
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
	movq	-32(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	andl	$7, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movb	%al, -9(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L421
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1715, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L422
.L421:
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L423
	movl	$0, %eax
	jmp	.L422
.L423:
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L424
	movq	-24(%rbp), %rax
	movq	168(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	andb	-9(%rbp), %al
	testb	%al, %al
	setne	%al
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
.L424:
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$1, %eax
.L422:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	ossl_provider_test_operation_bit, .-ossl_provider_test_operation_bit
	.globl	ossl_provider_get_parent
	.type	ossl_provider_get_parent, @function
ossl_provider_get_parent:
.LFB698:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	ossl_provider_get_parent, .-ossl_provider_get_parent
	.globl	ossl_provider_is_child
	.type	ossl_provider_is_child, @function
ossl_provider_is_child:
.LFB699:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	200(%rax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	ossl_provider_is_child, .-ossl_provider_is_child
	.globl	ossl_provider_set_child
	.type	ossl_provider_set_child, @function
ossl_provider_set_child:
.LFB700:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 192(%rax)
	movq	-8(%rbp), %rax
	movzbl	200(%rax), %edx
	orl	$1, %edx
	movb	%dl, 200(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	ossl_provider_set_child, .-ossl_provider_set_child
	.globl	ossl_provider_default_props_update
	.type	ossl_provider_default_props_update, @function
ossl_provider_default_props_update:
.LFB701:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	get_provider_store
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L432
	movl	$0, %eax
	jmp	.L433
.L432:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L434
	movl	$0, %eax
	jmp	.L433
.L434:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_CHILD_CB_num
	movl	%eax, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L435
.L436:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_CHILD_CB_value
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	addl	$1, -4(%rbp)
.L435:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L436
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$1, %eax
.L433:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	ossl_provider_default_props_update, .-ossl_provider_default_props_update
	.type	ossl_provider_register_child_cb, @function
ossl_provider_register_child_cb:
.LFB702:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_provider_store
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L438
	movl	$0, %eax
	jmp	.L439
.L438:
	leaq	.LC0(%rip), %rax
	movl	$1798, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L440
	movl	$0, %eax
	jmp	.L439
.L440:
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-48(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-48(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L441
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$1808, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L439
.L441:
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	evp_get_global_properties_str@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L442
	movq	-120(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1815, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L442:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_num
	movl	%eax, -52(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L443
.L447:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-8(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_value
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	je	.L453
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	cmpl	$0, -68(%rbp)
	je	.L446
	movq	-120(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	je	.L454
.L446:
	addl	$1, -8(%rbp)
.L443:
	movl	-8(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L447
	jmp	.L445
.L453:
	nop
	jmp	.L445
.L454:
	nop
.L445:
	movl	-8(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jne	.L448
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_CHILD_CB_push
	movl	%eax, -4(%rbp)
.L448:
	movl	-8(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jne	.L451
	cmpl	$0, -4(%rbp)
	jg	.L450
	jmp	.L451
.L452:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-8(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_value
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	subl	$1, -8(%rbp)
.L451:
	cmpl	$0, -8(%rbp)
	jns	.L452
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$1849, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, -4(%rbp)
.L450:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-4(%rbp), %eax
.L439:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	ossl_provider_register_child_cb, .-ossl_provider_register_child_cb
	.type	ossl_provider_deregister_child_cb, @function
ossl_provider_deregister_child_cb:
.LFB703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_provider_store
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L463
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	je	.L464
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_CHILD_CB_num
	movl	%eax, -36(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L459
.L462:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_CHILD_CB_value
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L460
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_CHILD_CB_delete
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$1880, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L461
.L460:
	addl	$1, -4(%rbp)
.L459:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L462
.L461:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	jmp	.L455
.L463:
	nop
	jmp	.L455
.L464:
	nop
.L455:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	ossl_provider_deregister_child_cb, .-ossl_provider_deregister_child_cb
	.section	.rodata
.LC6:
	.string	"openssl-version"
.LC7:
	.string	"provider-name"
.LC8:
	.string	"module-filename"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	param_types, @object
	.size	param_types, 160
param_types:
	.quad	.LC6
	.long	6
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
	.long	6
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC8
	.long	6
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	core_gettable_params, @function
core_gettable_params:
.LFB704:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	param_types(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	core_gettable_params, .-core_gettable_params
	.section	.rodata
.LC9:
	.string	"3.3.5"
	.text
	.type	core_get_params, @function
core_get_params:
.LFB705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC6(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L468
	leaq	.LC9(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_ptr@PLT
.L468:
	leaq	.LC7(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L469
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_ptr@PLT
.L469:
	leaq	.LC8(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L470
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_module_path@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_ptr@PLT
.L470:
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L471
	movl	$1, %eax
	jmp	.L472
.L471:
	movl	$0, -4(%rbp)
	jmp	.L473
.L475:
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_INFOPAIR_value
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L474
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_ptr@PLT
.L474:
	addl	$1, -4(%rbp)
.L473:
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	sk_INFOPAIR_num
	cmpl	%eax, -4(%rbp)
	jl	.L475
	movl	$1, %eax
.L472:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	core_get_params, .-core_get_params
	.type	core_get_libctx, @function
core_get_libctx:
.LFB706:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	core_get_libctx, .-core_get_libctx
	.type	core_thread_start, @function
core_thread_start:
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
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_init_thread_start@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	core_thread_start, .-core_thread_start
	.type	core_new_error, @function
core_new_error:
.LFB708:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ERR_new@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	core_new_error, .-core_new_error
	.type	core_set_error_debug, @function
core_set_error_debug:
.LFB709:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	core_set_error_debug, .-core_set_error_debug
	.type	core_vset_error, @function
core_vset_error:
.LFB710:
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
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	%rax, %rdi
	call	ERR_GET_LIB
	testl	%eax, %eax
	je	.L483
	movl	-44(%rbp), %eax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movl	%eax, %ebx
	movl	-44(%rbp), %eax
	movq	%rax, %rdi
	call	ERR_GET_LIB
	movl	%eax, %edi
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	%ebx, %esi
	call	ERR_vset_error@PLT
	jmp	.L485
.L483:
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	%eax, %edi
	call	ERR_vset_error@PLT
.L485:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	core_vset_error, .-core_vset_error
	.type	core_set_error_mark, @function
core_set_error_mark:
.LFB711:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ERR_set_mark@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	core_set_error_mark, .-core_set_error_mark
	.type	core_clear_last_error_mark, @function
core_clear_last_error_mark:
.LFB712:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ERR_clear_last_mark@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	core_clear_last_error_mark, .-core_clear_last_error_mark
	.type	core_pop_error_to_mark, @function
core_pop_error_to_mark:
.LFB713:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ERR_pop_to_mark@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE713:
	.size	core_pop_error_to_mark, .-core_pop_error_to_mark
	.type	core_self_test_get_callback, @function
core_self_test_get_callback:
.LFB714:
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
	call	OSSL_SELF_TEST_get_callback@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE714:
	.size	core_self_test_get_callback, .-core_self_test_get_callback
	.type	rand_get_entropy, @function
rand_get_entropy:
.LFB715:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	core_get_libctx
	movq	%rax, %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	ossl_rand_get_entropy@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE715:
	.size	rand_get_entropy, .-rand_get_entropy
	.type	rand_get_user_entropy, @function
rand_get_user_entropy:
.LFB716:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	core_get_libctx
	movq	%rax, %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	ossl_rand_get_user_entropy@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE716:
	.size	rand_get_user_entropy, .-rand_get_user_entropy
	.type	rand_cleanup_entropy, @function
rand_cleanup_entropy:
.LFB717:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	core_get_libctx
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_rand_cleanup_entropy@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE717:
	.size	rand_cleanup_entropy, .-rand_cleanup_entropy
	.type	rand_cleanup_user_entropy, @function
rand_cleanup_user_entropy:
.LFB718:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	core_get_libctx
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_rand_cleanup_user_entropy@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE718:
	.size	rand_cleanup_user_entropy, .-rand_cleanup_user_entropy
	.type	rand_get_nonce, @function
rand_get_nonce:
.LFB719:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	core_get_libctx
	movq	%rax, %rdi
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%r8, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	ossl_rand_get_nonce@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE719:
	.size	rand_get_nonce, .-rand_get_nonce
	.type	rand_get_user_nonce, @function
rand_get_user_nonce:
.LFB720:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	core_get_libctx
	movq	%rax, %rdi
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%r8, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	ossl_rand_get_user_nonce@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE720:
	.size	rand_get_user_nonce, .-rand_get_user_nonce
	.type	rand_cleanup_nonce, @function
rand_cleanup_nonce:
.LFB721:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	core_get_libctx
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_rand_cleanup_nonce@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE721:
	.size	rand_cleanup_nonce, .-rand_cleanup_nonce
	.type	rand_cleanup_user_nonce, @function
rand_cleanup_user_nonce:
.LFB722:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	core_get_libctx
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_rand_cleanup_user_nonce@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE722:
	.size	rand_cleanup_user_nonce, .-rand_cleanup_user_nonce
	.type	core_provider_get0_name, @function
core_provider_get0_name:
.LFB723:
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
	call	OSSL_PROVIDER_get0_name@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE723:
	.size	core_provider_get0_name, .-core_provider_get0_name
	.type	core_provider_get0_provider_ctx, @function
core_provider_get0_provider_ctx:
.LFB724:
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
	call	OSSL_PROVIDER_get0_provider_ctx@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE724:
	.size	core_provider_get0_provider_ctx, .-core_provider_get0_provider_ctx
	.type	core_provider_get0_dispatch, @function
core_provider_get0_dispatch:
.LFB725:
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
	call	OSSL_PROVIDER_get0_dispatch@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE725:
	.size	core_provider_get0_dispatch, .-core_provider_get0_dispatch
	.type	core_provider_up_ref_intern, @function
core_provider_up_ref_intern:
.LFB726:
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
	call	provider_up_ref_intern
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE726:
	.size	core_provider_up_ref_intern, .-core_provider_up_ref_intern
	.type	core_provider_free_intern, @function
core_provider_free_intern:
.LFB727:
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
	call	provider_free_intern
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE727:
	.size	core_provider_free_intern, .-core_provider_free_intern
	.type	core_obj_add_sigid, @function
core_obj_add_sigid:
.LFB728:
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
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, -12(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L516
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L516
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L516
	movl	$0, %eax
	jmp	.L517
.L516:
	cmpl	$0, -8(%rbp)
	jne	.L518
	movl	$0, %eax
	jmp	.L517
.L518:
	movl	-8(%rbp), %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	OBJ_find_sigid_algs@PLT
	testl	%eax, %eax
	je	.L519
	movl	$1, %eax
	jmp	.L517
.L519:
	cmpl	$0, -12(%rbp)
	jne	.L520
	movl	$0, %eax
	jmp	.L517
.L520:
	movl	-12(%rbp), %edx
	movl	-4(%rbp), %ecx
	movl	-8(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	OBJ_add_sigid@PLT
.L517:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	core_obj_add_sigid, .-core_obj_add_sigid
	.type	core_obj_create, @function
core_obj_create:
.LFB729:
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
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	testl	%eax, %eax
	jne	.L522
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OBJ_create@PLT
	testl	%eax, %eax
	je	.L523
.L522:
	movl	$1, %eax
	jmp	.L525
.L523:
	movl	$0, %eax
.L525:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	core_obj_create, .-core_obj_create
	.section	.data.rel.ro,"aw"
	.align 32
	.type	core_dispatch_, @object
	.size	core_dispatch_, 832
core_dispatch_:
	.long	1
	.zero	4
	.quad	core_gettable_params
	.long	2
	.zero	4
	.quad	core_get_params
	.long	4
	.zero	4
	.quad	core_get_libctx
	.long	3
	.zero	4
	.quad	core_thread_start
	.long	5
	.zero	4
	.quad	core_new_error
	.long	6
	.zero	4
	.quad	core_set_error_debug
	.long	7
	.zero	4
	.quad	core_vset_error
	.long	8
	.zero	4
	.quad	core_set_error_mark
	.long	9
	.zero	4
	.quad	core_clear_last_error_mark
	.long	10
	.zero	4
	.quad	core_pop_error_to_mark
	.long	40
	.zero	4
	.quad	ossl_core_bio_new_file
	.long	41
	.zero	4
	.quad	ossl_core_bio_new_mem_buf
	.long	42
	.zero	4
	.quad	ossl_core_bio_read_ex
	.long	43
	.zero	4
	.quad	ossl_core_bio_write_ex
	.long	49
	.zero	4
	.quad	ossl_core_bio_gets
	.long	48
	.zero	4
	.quad	ossl_core_bio_puts
	.long	50
	.zero	4
	.quad	ossl_core_bio_ctrl
	.long	44
	.zero	4
	.quad	ossl_core_bio_up_ref
	.long	45
	.zero	4
	.quad	ossl_core_bio_free
	.long	46
	.zero	4
	.quad	ossl_core_bio_vprintf
	.long	47
	.zero	4
	.quad	BIO_vsnprintf
	.long	100
	.zero	4
	.quad	core_self_test_get_callback
	.long	101
	.zero	4
	.quad	rand_get_entropy
	.long	98
	.zero	4
	.quad	rand_get_user_entropy
	.long	102
	.zero	4
	.quad	rand_cleanup_entropy
	.long	96
	.zero	4
	.quad	rand_cleanup_user_entropy
	.long	103
	.zero	4
	.quad	rand_get_nonce
	.long	99
	.zero	4
	.quad	rand_get_user_nonce
	.long	104
	.zero	4
	.quad	rand_cleanup_nonce
	.long	97
	.zero	4
	.quad	rand_cleanup_user_nonce
	.long	20
	.zero	4
	.quad	CRYPTO_malloc
	.long	21
	.zero	4
	.quad	CRYPTO_zalloc
	.long	22
	.zero	4
	.quad	CRYPTO_free
	.long	23
	.zero	4
	.quad	CRYPTO_clear_free
	.long	24
	.zero	4
	.quad	CRYPTO_realloc
	.long	25
	.zero	4
	.quad	CRYPTO_clear_realloc
	.long	26
	.zero	4
	.quad	CRYPTO_secure_malloc
	.long	27
	.zero	4
	.quad	CRYPTO_secure_zalloc
	.long	28
	.zero	4
	.quad	CRYPTO_secure_free
	.long	29
	.zero	4
	.quad	CRYPTO_secure_clear_free
	.long	30
	.zero	4
	.quad	CRYPTO_secure_allocated
	.long	31
	.zero	4
	.quad	OPENSSL_cleanse
	.long	105
	.zero	4
	.quad	ossl_provider_register_child_cb
	.long	106
	.zero	4
	.quad	ossl_provider_deregister_child_cb
	.long	107
	.zero	4
	.quad	core_provider_get0_name
	.long	108
	.zero	4
	.quad	core_provider_get0_provider_ctx
	.long	109
	.zero	4
	.quad	core_provider_get0_dispatch
	.long	110
	.zero	4
	.quad	core_provider_up_ref_intern
	.long	111
	.zero	4
	.quad	core_provider_free_intern
	.long	11
	.zero	4
	.quad	core_obj_add_sigid
	.long	12
	.zero	4
	.quad	core_obj_create
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 19
__func__.6:
	.string	"get_provider_store"
	.align 32
	.type	__func__.5, @object
	.size	__func__.5, 32
__func__.5:
	.string	"ossl_provider_info_add_to_store"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 13
__func__.4:
	.string	"provider_new"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 27
__func__.3:
	.string	"ossl_provider_add_to_store"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 13
__func__.2:
	.string	"infopair_add"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 14
__func__.1:
	.string	"provider_init"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 33
__func__.0:
	.string	"ossl_provider_test_operation_bit"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

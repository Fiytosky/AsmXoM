	.file	"evp_rand.c"
	.text
	.type	OSSL_FUNC_rand_newctx, @function
OSSL_FUNC_rand_newctx:
.LFB134:
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
.LFE134:
	.size	OSSL_FUNC_rand_newctx, .-OSSL_FUNC_rand_newctx
	.type	OSSL_FUNC_rand_freectx, @function
OSSL_FUNC_rand_freectx:
.LFB135:
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
.LFE135:
	.size	OSSL_FUNC_rand_freectx, .-OSSL_FUNC_rand_freectx
	.type	OSSL_FUNC_rand_instantiate, @function
OSSL_FUNC_rand_instantiate:
.LFB136:
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
.LFE136:
	.size	OSSL_FUNC_rand_instantiate, .-OSSL_FUNC_rand_instantiate
	.type	OSSL_FUNC_rand_uninstantiate, @function
OSSL_FUNC_rand_uninstantiate:
.LFB137:
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
.LFE137:
	.size	OSSL_FUNC_rand_uninstantiate, .-OSSL_FUNC_rand_uninstantiate
	.type	OSSL_FUNC_rand_generate, @function
OSSL_FUNC_rand_generate:
.LFB138:
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
.LFE138:
	.size	OSSL_FUNC_rand_generate, .-OSSL_FUNC_rand_generate
	.type	OSSL_FUNC_rand_reseed, @function
OSSL_FUNC_rand_reseed:
.LFB139:
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
.LFE139:
	.size	OSSL_FUNC_rand_reseed, .-OSSL_FUNC_rand_reseed
	.type	OSSL_FUNC_rand_nonce, @function
OSSL_FUNC_rand_nonce:
.LFB140:
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
.LFE140:
	.size	OSSL_FUNC_rand_nonce, .-OSSL_FUNC_rand_nonce
	.type	OSSL_FUNC_rand_enable_locking, @function
OSSL_FUNC_rand_enable_locking:
.LFB141:
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
.LFE141:
	.size	OSSL_FUNC_rand_enable_locking, .-OSSL_FUNC_rand_enable_locking
	.type	OSSL_FUNC_rand_lock, @function
OSSL_FUNC_rand_lock:
.LFB142:
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
.LFE142:
	.size	OSSL_FUNC_rand_lock, .-OSSL_FUNC_rand_lock
	.type	OSSL_FUNC_rand_unlock, @function
OSSL_FUNC_rand_unlock:
.LFB143:
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
.LFE143:
	.size	OSSL_FUNC_rand_unlock, .-OSSL_FUNC_rand_unlock
	.type	OSSL_FUNC_rand_gettable_params, @function
OSSL_FUNC_rand_gettable_params:
.LFB144:
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
.LFE144:
	.size	OSSL_FUNC_rand_gettable_params, .-OSSL_FUNC_rand_gettable_params
	.type	OSSL_FUNC_rand_gettable_ctx_params, @function
OSSL_FUNC_rand_gettable_ctx_params:
.LFB145:
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
.LFE145:
	.size	OSSL_FUNC_rand_gettable_ctx_params, .-OSSL_FUNC_rand_gettable_ctx_params
	.type	OSSL_FUNC_rand_settable_ctx_params, @function
OSSL_FUNC_rand_settable_ctx_params:
.LFB146:
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
.LFE146:
	.size	OSSL_FUNC_rand_settable_ctx_params, .-OSSL_FUNC_rand_settable_ctx_params
	.type	OSSL_FUNC_rand_get_params, @function
OSSL_FUNC_rand_get_params:
.LFB147:
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
.LFE147:
	.size	OSSL_FUNC_rand_get_params, .-OSSL_FUNC_rand_get_params
	.type	OSSL_FUNC_rand_get_ctx_params, @function
OSSL_FUNC_rand_get_ctx_params:
.LFB148:
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
.LFE148:
	.size	OSSL_FUNC_rand_get_ctx_params, .-OSSL_FUNC_rand_get_ctx_params
	.type	OSSL_FUNC_rand_set_ctx_params, @function
OSSL_FUNC_rand_set_ctx_params:
.LFB149:
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
.LFE149:
	.size	OSSL_FUNC_rand_set_ctx_params, .-OSSL_FUNC_rand_set_ctx_params
	.type	OSSL_FUNC_rand_verify_zeroization, @function
OSSL_FUNC_rand_verify_zeroization:
.LFB151:
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
.LFE151:
	.size	OSSL_FUNC_rand_verify_zeroization, .-OSSL_FUNC_rand_verify_zeroization
	.type	OSSL_FUNC_rand_get_seed, @function
OSSL_FUNC_rand_get_seed:
.LFB152:
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
.LFE152:
	.size	OSSL_FUNC_rand_get_seed, .-OSSL_FUNC_rand_get_seed
	.type	OSSL_FUNC_rand_clear_seed, @function
OSSL_FUNC_rand_clear_seed:
.LFB153:
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
.LFE153:
	.size	OSSL_FUNC_rand_clear_seed, .-OSSL_FUNC_rand_clear_seed
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
.LFB402:
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
.LFE402:
	.size	CRYPTO_UP_REF, .-CRYPTO_UP_REF
	.type	CRYPTO_DOWN_REF, @function
CRYPTO_DOWN_REF:
.LFB403:
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
	jne	.L46
.L46:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	CRYPTO_DOWN_REF, .-CRYPTO_DOWN_REF
	.type	CRYPTO_NEW_REF, @function
CRYPTO_NEW_REF:
.LFB405:
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
.LFE405:
	.size	CRYPTO_NEW_REF, .-CRYPTO_NEW_REF
	.type	CRYPTO_FREE_REF, @function
CRYPTO_FREE_REF:
.LFB406:
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
.LFE406:
	.size	CRYPTO_FREE_REF, .-CRYPTO_FREE_REF
	.type	evp_rand_up_ref, @function
evp_rand_up_ref:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L52
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	jmp	.L54
.L52:
	movl	$1, %eax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	evp_rand_up_ref, .-evp_rand_up_ref
	.section	.rodata
.LC0:
	.string	"../crypto/evp/evp_rand.c"
	.text
	.type	evp_rand_free, @function
evp_rand_free:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L60
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	jg	.L61
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$73, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$76, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L55
.L60:
	nop
	jmp	.L55
.L61:
	nop
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	evp_rand_free, .-evp_rand_free
	.type	evp_rand_new, @function
evp_rand_new:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$81, %edx
	movq	%rax, %rsi
	movl	$200, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L63
	movl	$0, %eax
	jmp	.L64
.L63:
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	jne	.L65
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$87, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L64
.L65:
	movq	-8(%rbp), %rax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	evp_rand_new, .-evp_rand_new
	.globl	EVP_RAND_enable_locking
	.type	EVP_RAND_enable_locking, @function
EVP_RAND_enable_locking:
.LFB485:
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
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	104(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L68
.L67:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$98, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$213, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	EVP_RAND_enable_locking, .-EVP_RAND_enable_locking
	.type	evp_rand_lock, @function
evp_rand_lock:
.LFB486:
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
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L70
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	112(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L71
.L70:
	movl	$1, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	evp_rand_lock, .-evp_rand_lock
	.type	evp_rand_unlock, @function
evp_rand_unlock:
.LFB487:
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
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L74
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	120(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L74:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	evp_rand_unlock, .-evp_rand_unlock
	.type	evp_rand_from_algorithm, @function
evp_rand_from_algorithm:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	call	evp_rand_new
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L76
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$129, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L77
.L76:
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_algorithm_get1_first_name@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L78
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_free
	movl	$0, %eax
	jmp	.L77
.L78:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 40(%rax)
	jmp	.L79
.L119:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$19, %eax
	je	.L80
	cmpl	$19, %eax
	jg	.L81
	cmpl	$18, %eax
	je	.L82
	cmpl	$18, %eax
	jg	.L81
	cmpl	$17, %eax
	je	.L83
	cmpl	$17, %eax
	jg	.L81
	cmpl	$16, %eax
	je	.L84
	cmpl	$16, %eax
	jg	.L81
	cmpl	$15, %eax
	je	.L85
	cmpl	$15, %eax
	jg	.L81
	cmpl	$14, %eax
	je	.L86
	cmpl	$14, %eax
	jg	.L81
	cmpl	$13, %eax
	je	.L87
	cmpl	$13, %eax
	jg	.L81
	cmpl	$12, %eax
	je	.L88
	cmpl	$12, %eax
	jg	.L81
	cmpl	$11, %eax
	je	.L89
	cmpl	$11, %eax
	jg	.L81
	cmpl	$10, %eax
	je	.L90
	cmpl	$10, %eax
	jg	.L81
	cmpl	$9, %eax
	je	.L91
	cmpl	$9, %eax
	jg	.L81
	cmpl	$8, %eax
	je	.L92
	cmpl	$8, %eax
	jg	.L81
	cmpl	$7, %eax
	je	.L93
	cmpl	$7, %eax
	jg	.L81
	cmpl	$6, %eax
	je	.L94
	cmpl	$6, %eax
	jg	.L81
	cmpl	$5, %eax
	je	.L95
	cmpl	$5, %eax
	jg	.L81
	cmpl	$4, %eax
	je	.L96
	cmpl	$4, %eax
	jg	.L81
	cmpl	$3, %eax
	je	.L97
	cmpl	$3, %eax
	jg	.L81
	cmpl	$1, %eax
	je	.L98
	cmpl	$2, %eax
	je	.L99
	jmp	.L81
.L98:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L124
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_newctx
	movq	-32(%rbp), %rdx
	movq	%rax, 48(%rdx)
	addl	$1, -16(%rbp)
	jmp	.L81
.L99:
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L125
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_freectx
	movq	-32(%rbp), %rdx
	movq	%rax, 56(%rdx)
	addl	$1, -16(%rbp)
	jmp	.L81
.L97:
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L126
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_instantiate
	movq	-32(%rbp), %rdx
	movq	%rax, 64(%rdx)
	addl	$1, -12(%rbp)
	jmp	.L81
.L96:
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L127
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_uninstantiate
	movq	-32(%rbp), %rdx
	movq	%rax, 72(%rdx)
	addl	$1, -12(%rbp)
	jmp	.L81
.L95:
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L128
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_generate
	movq	-32(%rbp), %rdx
	movq	%rax, 80(%rdx)
	addl	$1, -12(%rbp)
	jmp	.L81
.L94:
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L129
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_reseed
	movq	-32(%rbp), %rdx
	movq	%rax, 88(%rdx)
	jmp	.L81
.L93:
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L130
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_nonce
	movq	-32(%rbp), %rdx
	movq	%rax, 96(%rdx)
	jmp	.L81
.L92:
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L131
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_enable_locking
	movq	-32(%rbp), %rdx
	movq	%rax, 104(%rdx)
	addl	$1, -24(%rbp)
	jmp	.L81
.L91:
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L132
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_lock
	movq	-32(%rbp), %rdx
	movq	%rax, 112(%rdx)
	addl	$1, -20(%rbp)
	jmp	.L81
.L90:
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L133
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_unlock
	movq	-32(%rbp), %rdx
	movq	%rax, 120(%rdx)
	addl	$1, -20(%rbp)
	jmp	.L81
.L89:
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	jne	.L134
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_gettable_params
	movq	-32(%rbp), %rdx
	movq	%rax, 128(%rdx)
	jmp	.L81
.L88:
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	jne	.L135
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_gettable_ctx_params
	movq	-32(%rbp), %rdx
	movq	%rax, 136(%rdx)
	jmp	.L81
.L87:
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L136
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_settable_ctx_params
	movq	-32(%rbp), %rdx
	movq	%rax, 144(%rdx)
	jmp	.L81
.L86:
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	jne	.L137
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_get_params
	movq	-32(%rbp), %rdx
	movq	%rax, 152(%rdx)
	jmp	.L81
.L85:
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	jne	.L138
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_get_ctx_params
	movq	-32(%rbp), %rdx
	movq	%rax, 160(%rdx)
	addl	$1, -16(%rbp)
	jmp	.L81
.L84:
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	jne	.L139
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_set_ctx_params
	movq	-32(%rbp), %rdx
	movq	%rax, 168(%rdx)
	jmp	.L81
.L83:
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	jne	.L140
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_verify_zeroization
	movq	-32(%rbp), %rdx
	movq	%rax, 176(%rdx)
	jmp	.L81
.L82:
	movq	-32(%rbp), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	jne	.L141
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_get_seed
	movq	-32(%rbp), %rdx
	movq	%rax, 184(%rdx)
	jmp	.L81
.L80:
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	jne	.L142
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_clear_seed
	movq	-32(%rbp), %rdx
	movq	%rax, 192(%rdx)
	jmp	.L81
.L124:
	nop
	jmp	.L81
.L125:
	nop
	jmp	.L81
.L126:
	nop
	jmp	.L81
.L127:
	nop
	jmp	.L81
.L128:
	nop
	jmp	.L81
.L129:
	nop
	jmp	.L81
.L130:
	nop
	jmp	.L81
.L131:
	nop
	jmp	.L81
.L132:
	nop
	jmp	.L81
.L133:
	nop
	jmp	.L81
.L134:
	nop
	jmp	.L81
.L135:
	nop
	jmp	.L81
.L136:
	nop
	jmp	.L81
.L137:
	nop
	jmp	.L81
.L138:
	nop
	jmp	.L81
.L139:
	nop
	jmp	.L81
.L140:
	nop
	jmp	.L81
.L141:
	nop
	jmp	.L81
.L142:
	nop
.L81:
	addq	$16, -8(%rbp)
.L79:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L119
	cmpl	$3, -12(%rbp)
	jne	.L120
	cmpl	$3, -16(%rbp)
	jne	.L120
	cmpl	$0, -24(%rbp)
	je	.L121
	cmpl	$1, -24(%rbp)
	jne	.L120
.L121:
	cmpl	$0, -20(%rbp)
	je	.L122
	cmpl	$2, -20(%rbp)
	je	.L122
.L120:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_free
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$271, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$193, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L77
.L122:
	cmpq	$0, -56(%rbp)
	je	.L123
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_up_ref@PLT
	testl	%eax, %eax
	jne	.L123
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_free
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$277, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L77
.L123:
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	evp_rand_from_algorithm, .-evp_rand_from_algorithm
	.globl	EVP_RAND_fetch
	.type	EVP_RAND_fetch, @function
EVP_RAND_fetch:
.LFB489:
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
	leaq	evp_rand_up_ref(%rip), %r8
	leaq	evp_rand_from_algorithm(%rip), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	evp_rand_free(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$5, %esi
	movq	%rax, %rdi
	call	evp_generic_fetch@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	EVP_RAND_fetch, .-EVP_RAND_fetch
	.globl	EVP_RAND_up_ref
	.type	EVP_RAND_up_ref, @function
EVP_RAND_up_ref:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_up_ref
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	EVP_RAND_up_ref, .-EVP_RAND_up_ref
	.globl	EVP_RAND_free
	.type	EVP_RAND_free, @function
EVP_RAND_free:
.LFB491:
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
	call	evp_rand_free
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	EVP_RAND_free, .-EVP_RAND_free
	.globl	evp_rand_get_number
	.type	evp_rand_get_number, @function
evp_rand_get_number:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	evp_rand_get_number, .-evp_rand_get_number
	.globl	EVP_RAND_get0_name
	.type	EVP_RAND_get0_name, @function
EVP_RAND_get0_name:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	EVP_RAND_get0_name, .-EVP_RAND_get0_name
	.globl	EVP_RAND_get0_description
	.type	EVP_RAND_get0_description, @function
EVP_RAND_get0_description:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	EVP_RAND_get0_description, .-EVP_RAND_get0_description
	.globl	EVP_RAND_is_a
	.type	EVP_RAND_is_a, @function
EVP_RAND_is_a:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L155
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	evp_is_a@PLT
	testl	%eax, %eax
	je	.L155
	movl	$1, %eax
	jmp	.L157
.L155:
	movl	$0, %eax
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	EVP_RAND_is_a, .-EVP_RAND_is_a
	.globl	EVP_RAND_get0_provider
	.type	EVP_RAND_get0_provider, @function
EVP_RAND_get0_provider:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	EVP_RAND_get0_provider, .-EVP_RAND_get0_provider
	.globl	EVP_RAND_get_params
	.type	EVP_RAND_get_params, @function
EVP_RAND_get_params:
.LFB497:
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
	movq	152(%rax), %rax
	testq	%rax, %rax
	je	.L161
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L162
.L161:
	movl	$1, %eax
.L162:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	EVP_RAND_get_params, .-EVP_RAND_get_params
	.globl	EVP_RAND_CTX_up_ref
	.type	EVP_RAND_CTX_up_ref, @function
EVP_RAND_CTX_up_ref:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	leaq	24(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	EVP_RAND_CTX_up_ref, .-EVP_RAND_CTX_up_ref
	.globl	EVP_RAND_CTX_new
	.type	EVP_RAND_CTX_new, @function
EVP_RAND_CTX_new:
.LFB499:
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
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L166
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$349, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$218, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L167
.L166:
	leaq	.LC0(%rip), %rax
	movl	$353, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L168
	movl	$0, %eax
	jmp	.L167
.L168:
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	jne	.L169
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$357, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L167
.L169:
	cmpq	$0, -64(%rbp)
	je	.L170
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_up_ref@PLT
	testl	%eax, %eax
	jne	.L171
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$362, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$364, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L167
.L171:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
.L170:
	movq	-56(%rbp), %rax
	movq	48(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_provider_ctx@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	*%rbx
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L172
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_up_ref@PLT
	testl	%eax, %eax
	jne	.L173
.L172:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$373, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$376, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_free@PLT
	movl	$0, %eax
	jmp	.L167
.L173:
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
.L167:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	EVP_RAND_CTX_new, .-EVP_RAND_CTX_new
	.globl	EVP_RAND_CTX_free
	.type	EVP_RAND_CTX_free, @function
EVP_RAND_CTX_free:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L179
	movq	-24(%rbp), %rax
	leaq	24(%rax), %rdx
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	jg	.L180
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_RAND_free@PLT
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$401, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_free.localalias
	jmp	.L174
.L179:
	nop
	jmp	.L174
.L180:
	nop
.L174:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	EVP_RAND_CTX_free, .-EVP_RAND_CTX_free
	.set	EVP_RAND_CTX_free.localalias,EVP_RAND_CTX_free
	.globl	EVP_RAND_CTX_get0_rand
	.type	EVP_RAND_CTX_get0_rand, @function
EVP_RAND_CTX_get0_rand:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	EVP_RAND_CTX_get0_rand, .-EVP_RAND_CTX_get0_rand
	.type	evp_rand_get_ctx_params_locked, @function
evp_rand_get_ctx_params_locked:
.LFB502:
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
	movq	(%rax), %rax
	movq	160(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	evp_rand_get_ctx_params_locked, .-evp_rand_get_ctx_params_locked
	.globl	EVP_RAND_CTX_get_params
	.type	EVP_RAND_CTX_get_params, @function
EVP_RAND_CTX_get_params:
.LFB503:
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
	call	evp_rand_lock
	testl	%eax, %eax
	jne	.L186
	movl	$0, %eax
	jmp	.L187
.L186:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_rand_get_ctx_params_locked
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_unlock
	movl	-4(%rbp), %eax
.L187:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	EVP_RAND_CTX_get_params, .-EVP_RAND_CTX_get_params
	.type	evp_rand_set_ctx_params_locked, @function
evp_rand_set_ctx_params_locked:
.LFB504:
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
	movq	(%rax), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	je	.L189
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	168(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L190
.L189:
	movl	$1, %eax
.L190:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	evp_rand_set_ctx_params_locked, .-evp_rand_set_ctx_params_locked
	.globl	EVP_RAND_CTX_set_params
	.type	EVP_RAND_CTX_set_params, @function
EVP_RAND_CTX_set_params:
.LFB505:
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
	call	evp_rand_lock
	testl	%eax, %eax
	jne	.L192
	movl	$0, %eax
	jmp	.L193
.L192:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_rand_set_ctx_params_locked
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_unlock
	movl	-4(%rbp), %eax
.L193:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	EVP_RAND_CTX_set_params, .-EVP_RAND_CTX_set_params
	.globl	EVP_RAND_gettable_params
	.type	EVP_RAND_gettable_params, @function
EVP_RAND_gettable_params:
.LFB506:
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
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	jne	.L195
	movl	$0, %eax
	jmp	.L196
.L195:
	movq	-24(%rbp), %rax
	movq	128(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_get0_provider@PLT
	movq	%rax, %rdi
	call	ossl_provider_ctx@PLT
	movq	%rax, %rdi
	call	*%rbx
.L196:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	EVP_RAND_gettable_params, .-EVP_RAND_gettable_params
	.globl	EVP_RAND_gettable_ctx_params
	.type	EVP_RAND_gettable_ctx_params, @function
EVP_RAND_gettable_ctx_params:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	jne	.L198
	movl	$0, %eax
	jmp	.L199
.L198:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_get0_provider@PLT
	movq	%rax, %rdi
	call	ossl_provider_ctx@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
.L199:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	EVP_RAND_gettable_ctx_params, .-EVP_RAND_gettable_ctx_params
	.globl	EVP_RAND_settable_ctx_params
	.type	EVP_RAND_settable_ctx_params, @function
EVP_RAND_settable_ctx_params:
.LFB508:
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
	jne	.L201
	movl	$0, %eax
	jmp	.L202
.L201:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_get0_provider@PLT
	movq	%rax, %rdi
	call	ossl_provider_ctx@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
.L202:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	EVP_RAND_settable_ctx_params, .-EVP_RAND_settable_ctx_params
	.globl	EVP_RAND_CTX_gettable_params
	.type	EVP_RAND_CTX_gettable_params, @function
EVP_RAND_CTX_gettable_params:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	jne	.L204
	movl	$0, %eax
	jmp	.L205
.L204:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_RAND_get0_provider@PLT
	movq	%rax, %rdi
	call	ossl_provider_ctx@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	136(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L205:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	EVP_RAND_CTX_gettable_params, .-EVP_RAND_CTX_gettable_params
	.globl	EVP_RAND_CTX_settable_params
	.type	EVP_RAND_CTX_settable_params, @function
EVP_RAND_CTX_settable_params:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L207
	movl	$0, %eax
	jmp	.L208
.L207:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_RAND_get0_provider@PLT
	movq	%rax, %rdi
	call	ossl_provider_ctx@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	144(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L208:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	EVP_RAND_CTX_settable_params, .-EVP_RAND_CTX_settable_params
	.globl	EVP_RAND_do_all_provided
	.type	EVP_RAND_do_all_provided, @function
EVP_RAND_do_all_provided:
.LFB511:
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
	leaq	evp_rand_up_ref(%rip), %r8
	leaq	evp_rand_from_algorithm(%rip), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	evp_rand_free(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$5, %esi
	movq	%rax, %rdi
	call	evp_generic_do_all@PLT
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	EVP_RAND_do_all_provided, .-EVP_RAND_do_all_provided
	.globl	EVP_RAND_names_do_all
	.type	EVP_RAND_names_do_all, @function
EVP_RAND_names_do_all:
.LFB512:
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
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L211
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	call	evp_names_do_all@PLT
	jmp	.L212
.L211:
	movl	$1, %eax
.L212:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	EVP_RAND_names_do_all, .-EVP_RAND_names_do_all
	.type	evp_rand_instantiate_locked, @function
evp_rand_instantiate_locked:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %r10
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	evp_rand_instantiate_locked, .-evp_rand_instantiate_locked
	.globl	EVP_RAND_instantiate
	.type	EVP_RAND_instantiate, @function
EVP_RAND_instantiate:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_lock
	testl	%eax, %eax
	jne	.L216
	movl	$0, %eax
	jmp	.L217
.L216:
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	evp_rand_instantiate_locked
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_unlock
	movl	-4(%rbp), %eax
.L217:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	EVP_RAND_instantiate, .-EVP_RAND_instantiate
	.type	evp_rand_uninstantiate_locked, @function
evp_rand_uninstantiate_locked:
.LFB515:
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
	movq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	evp_rand_uninstantiate_locked, .-evp_rand_uninstantiate_locked
	.globl	EVP_RAND_uninstantiate
	.type	EVP_RAND_uninstantiate, @function
EVP_RAND_uninstantiate:
.LFB516:
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
	call	evp_rand_lock
	testl	%eax, %eax
	jne	.L221
	movl	$0, %eax
	jmp	.L222
.L221:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_uninstantiate_locked
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_unlock
	movl	-4(%rbp), %eax
.L222:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	EVP_RAND_uninstantiate, .-EVP_RAND_uninstantiate
	.section	.rodata
.LC1:
	.string	"max_request"
	.text
	.type	evp_rand_generate_locked, @function
evp_rand_generate_locked:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movl	%ecx, -124(%rbp)
	movl	%r8d, -128(%rbp)
	movq	%r9, -136(%rbp)
	movq	$0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	leaq	-192(%rbp), %rax
	leaq	-16(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-96(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_rand_get_ctx_params_locked
	testl	%eax, %eax
	je	.L224
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L227
.L224:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$565, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$215, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L230
.L229:
	movq	-16(%rbp), %rax
	movq	-120(%rbp), %rdx
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	80(%rax), %r10
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	-136(%rbp), %r8
	movl	-128(%rbp), %edi
	movl	-124(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movq	-112(%rbp), %rsi
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L228
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$572, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$214, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L230
.L228:
	movl	$0, -128(%rbp)
	movq	-8(%rbp), %rax
	subq	%rax, -120(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -112(%rbp)
.L227:
	cmpq	$0, -120(%rbp)
	jne	.L229
	movl	$1, %eax
.L230:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	evp_rand_generate_locked, .-evp_rand_generate_locked
	.globl	EVP_RAND_generate
	.type	EVP_RAND_generate, @function
EVP_RAND_generate:
.LFB518:
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
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_lock
	testl	%eax, %eax
	jne	.L232
	movl	$0, %eax
	jmp	.L233
.L232:
	movq	-56(%rbp), %r8
	movl	-48(%rbp), %edi
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	evp_rand_generate_locked
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_unlock
	movl	-4(%rbp), %eax
.L233:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	EVP_RAND_generate, .-EVP_RAND_generate
	.type	evp_rand_reseed_locked, @function
evp_rand_reseed_locked:
.LFB519:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L235
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %r10
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	jmp	.L236
.L235:
	movl	$1, %eax
.L236:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	evp_rand_reseed_locked, .-evp_rand_reseed_locked
	.globl	EVP_RAND_reseed
	.type	EVP_RAND_reseed, @function
EVP_RAND_reseed:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_lock
	testl	%eax, %eax
	jne	.L238
	movl	$0, %eax
	jmp	.L239
.L238:
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	evp_rand_reseed_locked
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_unlock
	movl	-4(%rbp), %eax
.L239:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	EVP_RAND_reseed, .-EVP_RAND_reseed
	.section	.rodata
.LC2:
	.string	"strength"
	.text
	.type	evp_rand_strength_locked, @function
evp_rand_strength_locked:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -104(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movaps	%xmm0, -16(%rbp)
	movl	$0, -84(%rbp)
	leaq	-160(%rbp), %rax
	leaq	-84(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_rand_get_ctx_params_locked
	testl	%eax, %eax
	jne	.L241
	movl	$0, %eax
	jmp	.L243
.L241:
	movl	-84(%rbp), %eax
.L243:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	evp_rand_strength_locked, .-evp_rand_strength_locked
	.globl	EVP_RAND_get_strength
	.type	EVP_RAND_get_strength, @function
EVP_RAND_get_strength:
.LFB522:
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
	call	evp_rand_lock
	testl	%eax, %eax
	jne	.L245
	movl	$0, %eax
	jmp	.L246
.L245:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_strength_locked
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_unlock
	movl	-4(%rbp), %eax
.L246:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	EVP_RAND_get_strength, .-EVP_RAND_get_strength
	.type	evp_rand_nonce_locked, @function
evp_rand_nonce_locked:
.LFB523:
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
	movq	%rax, %rdi
	call	evp_rand_strength_locked
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L248
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	96(%rax), %r9
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	jmp	.L249
.L248:
	movl	-4(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	evp_rand_generate_locked
	addq	$16, %rsp
.L249:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	evp_rand_nonce_locked, .-evp_rand_nonce_locked
	.globl	EVP_RAND_nonce
	.type	EVP_RAND_nonce, @function
EVP_RAND_nonce:
.LFB524:
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
	cmpq	$0, -24(%rbp)
	je	.L251
	cmpq	$0, -32(%rbp)
	je	.L251
	cmpq	$0, -40(%rbp)
	jne	.L252
.L251:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$659, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L253
.L252:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_lock
	testl	%eax, %eax
	jne	.L254
	movl	$0, %eax
	jmp	.L253
.L254:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_rand_nonce_locked
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_unlock
	movl	-4(%rbp), %eax
.L253:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	EVP_RAND_nonce, .-EVP_RAND_nonce
	.section	.rodata
.LC3:
	.string	"state"
	.text
	.globl	EVP_RAND_get_state
	.type	EVP_RAND_get_state, @function
EVP_RAND_get_state:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -104(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movaps	%xmm0, -16(%rbp)
	leaq	-160(%rbp), %rax
	leaq	-84(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_CTX_get_params@PLT
	testl	%eax, %eax
	jne	.L256
	movl	$2, -84(%rbp)
.L256:
	movl	-84(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	EVP_RAND_get_state, .-EVP_RAND_get_state
	.type	evp_rand_verify_zeroization_locked, @function
evp_rand_verify_zeroization_locked:
.LFB526:
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
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L259
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	176(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L260
.L259:
	movl	$0, %eax
.L260:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	evp_rand_verify_zeroization_locked, .-evp_rand_verify_zeroization_locked
	.globl	EVP_RAND_verify_zeroization
	.type	EVP_RAND_verify_zeroization, @function
EVP_RAND_verify_zeroization:
.LFB527:
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
	call	evp_rand_lock
	testl	%eax, %eax
	jne	.L262
	movl	$0, %eax
	jmp	.L263
.L262:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_verify_zeroization_locked
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_unlock
	movl	-4(%rbp), %eax
.L263:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	EVP_RAND_verify_zeroization, .-EVP_RAND_verify_zeroization
	.globl	evp_rand_can_seed
	.type	evp_rand_can_seed, @function
evp_rand_can_seed:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	evp_rand_can_seed, .-evp_rand_can_seed
	.type	evp_rand_get_seed_locked, @function
evp_rand_get_seed_locked:
.LFB529:
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
	movl	%r9d, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	je	.L267
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	184(%rax), %r10
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %r8d
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	pushq	24(%rbp)
	pushq	16(%rbp)
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	jmp	.L268
.L267:
	movl	$0, %eax
.L268:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	evp_rand_get_seed_locked, .-evp_rand_get_seed_locked
	.globl	evp_rand_get_seed
	.type	evp_rand_get_seed, @function
evp_rand_get_seed:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	%r9d, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_lock
	testl	%eax, %eax
	jne	.L270
	movl	$0, %eax
	jmp	.L271
.L270:
	movl	-40(%rbp), %r8d
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	pushq	24(%rbp)
	pushq	16(%rbp)
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	evp_rand_get_seed_locked
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_unlock
	movl	-4(%rbp), %eax
	cltq
.L271:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	evp_rand_get_seed, .-evp_rand_get_seed
	.type	evp_rand_clear_seed_locked, @function
evp_rand_clear_seed_locked:
.LFB531:
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
	movq	(%rax), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L274
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	192(%rax), %r8
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
.L274:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	evp_rand_clear_seed_locked, .-evp_rand_clear_seed_locked
	.globl	evp_rand_clear_seed
	.type	evp_rand_clear_seed, @function
evp_rand_clear_seed:
.LFB532:
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
	call	evp_rand_lock
	testl	%eax, %eax
	je	.L278
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_rand_clear_seed_locked
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	evp_rand_unlock
	jmp	.L275
.L278:
	nop
.L275:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	evp_rand_clear_seed, .-evp_rand_clear_seed
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 24
__func__.4:
	.string	"EVP_RAND_enable_locking"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 24
__func__.3:
	.string	"evp_rand_from_algorithm"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 17
__func__.2:
	.string	"EVP_RAND_CTX_new"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 25
__func__.1:
	.string	"evp_rand_generate_locked"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"EVP_RAND_nonce"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

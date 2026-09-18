	.file	"rsa_lib.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB499:
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
.LFE499:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB500:
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
.LFE500:
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
	jne	.L8
.L8:
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
	.type	sk_RSA_PRIME_INFO_num, @function
sk_RSA_PRIME_INFO_num:
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
	.size	sk_RSA_PRIME_INFO_num, .-sk_RSA_PRIME_INFO_num
	.type	sk_RSA_PRIME_INFO_value, @function
sk_RSA_PRIME_INFO_value:
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
	.size	sk_RSA_PRIME_INFO_value, .-sk_RSA_PRIME_INFO_value
	.type	sk_RSA_PRIME_INFO_new_reserve, @function
sk_RSA_PRIME_INFO_new_reserve:
.LFB574:
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
	call	OPENSSL_sk_new_reserve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	sk_RSA_PRIME_INFO_new_reserve, .-sk_RSA_PRIME_INFO_new_reserve
	.type	sk_RSA_PRIME_INFO_push, @function
sk_RSA_PRIME_INFO_push:
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
	.size	sk_RSA_PRIME_INFO_push, .-sk_RSA_PRIME_INFO_push
	.type	sk_RSA_PRIME_INFO_pop_free, @function
sk_RSA_PRIME_INFO_pop_free:
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
	.size	sk_RSA_PRIME_INFO_pop_free, .-sk_RSA_PRIME_INFO_pop_free
	.globl	RSA_new
	.type	RSA_new, @function
RSA_new:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %esi
	movl	$0, %edi
	call	rsa_new_intern
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	RSA_new, .-RSA_new
	.globl	RSA_get_method
	.type	RSA_get_method, @function
RSA_get_method:
.LFB596:
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
.LFE596:
	.size	RSA_get_method, .-RSA_get_method
	.globl	RSA_set_method
	.type	RSA_set_method, @function
RSA_set_method:
.LFB597:
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
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L27:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L28:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	RSA_set_method, .-RSA_set_method
	.globl	RSA_new_method
	.type	RSA_new_method, @function
RSA_new_method:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	rsa_new_intern
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	RSA_new_method, .-RSA_new_method
	.globl	ossl_rsa_new_with_ctx
	.type	ossl_rsa_new_with_ctx, @function
ossl_rsa_new_with_ctx:
.LFB599:
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
	call	rsa_new_intern
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	ossl_rsa_new_with_ctx, .-ossl_rsa_new_with_ctx
	.section	.rodata
.LC0:
	.string	"../crypto/rsa/rsa_lib.c"
	.text
	.type	rsa_new_intern, @function
rsa_new_intern:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$77, %edx
	movq	%rax, %rsi
	movl	$224, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L35
	movl	$0, %eax
	jmp	.L36
.L35:
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 208(%rdx)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$84, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$85, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L36
.L37:
	movq	-8(%rbp), %rax
	addq	$160, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	jne	.L38
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$91, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L36
.L38:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	call	RSA_get_default_method@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	72(%rax), %eax
	andb	$-5, %ah
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 164(%rax)
	cmpq	$0, -24(%rbp)
	je	.L39
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_init@PLT
	testl	%eax, %eax
	jne	.L40
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$101, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524326, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L41
.L40:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 32(%rax)
	jmp	.L42
.L39:
	call	ENGINE_get_default_RSA@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
.L42:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L43
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_get_RSA@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L43
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524326, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L41
.L43:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	72(%rax), %eax
	andb	$-5, %ah
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 164(%rax)
	movq	-8(%rbp), %rax
	leaq	144(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$9, %edi
	call	CRYPTO_new_ex_data@PLT
	testl	%eax, %eax
	je	.L46
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L45
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L45
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$125, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786693, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L41
.L45:
	movq	-8(%rbp), %rax
	jmp	.L36
.L46:
	nop
.L41:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movl	$0, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	rsa_new_intern, .-rsa_new_intern
	.globl	RSA_free
	.type	RSA_free, @function
RSA_free:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L53
	movq	-24(%rbp), %rax
	leaq	160(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jg	.L54
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L51
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L51
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L51:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movq	-24(%rbp), %rax
	leaq	144(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$9, %edi
	call	CRYPTO_free_ex_data@PLT
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-24(%rbp), %rax
	addq	$160, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	call	RSA_PSS_PARAMS_free@PLT
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	ossl_rsa_multip_info_free@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_pop_free
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, %rdi
	call	BN_BLINDING_free@PLT
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, %rdi
	call	BN_BLINDING_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$181, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L47
.L53:
	nop
	jmp	.L47
.L54:
	nop
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	RSA_free, .-RSA_free
	.globl	RSA_up_ref
	.type	RSA_up_ref, @function
RSA_up_ref:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	160(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jg	.L56
	movl	$0, %eax
	jmp	.L58
.L56:
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	setg	%al
	movzbl	%al, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	RSA_up_ref, .-RSA_up_ref
	.globl	ossl_rsa_get0_libctx
	.type	ossl_rsa_get0_libctx, @function
ossl_rsa_get0_libctx:
.LFB603:
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
.LFE603:
	.size	ossl_rsa_get0_libctx, .-ossl_rsa_get0_libctx
	.globl	ossl_rsa_set0_libctx
	.type	ossl_rsa_set0_libctx, @function
ossl_rsa_set0_libctx:
.LFB604:
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
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	ossl_rsa_set0_libctx, .-ossl_rsa_set0_libctx
	.globl	RSA_set_ex_data
	.type	RSA_set_ex_data, @function
RSA_set_ex_data:
.LFB605:
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
	leaq	144(%rax), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	CRYPTO_set_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	RSA_set_ex_data, .-RSA_set_ex_data
	.globl	RSA_get_ex_data
	.type	RSA_get_ex_data, @function
RSA_get_ex_data:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	leaq	144(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	CRYPTO_get_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	RSA_get_ex_data, .-RSA_get_ex_data
	.section	.rodata
	.align 4
	.type	scale, @object
	.size	scale, 4
scale:
	.long	262144
	.align 4
	.type	cbrt_scale, @object
	.size	cbrt_scale, 4
cbrt_scale:
	.long	4096
	.align 4
	.type	log_2, @object
	.size	log_2, 4
log_2:
	.long	181704
	.align 4
	.type	log_e, @object
	.size	log_e, 4
log_e:
	.long	378193
	.align 4
	.type	c1_923, @object
	.size	c1_923, 4
c1_923:
	.long	504102
	.align 4
	.type	c4_690, @object
	.size	c4_690, 4
c4_690:
	.long	1229455
	.text
	.type	mul2, @function
mul2:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	imulq	-16(%rbp), %rax
	movl	$262144, %edx
	movl	%edx, %ecx
	movl	$0, %edx
	divq	%rcx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	mul2, .-mul2
	.type	icbrt64, @function
icbrt64:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	$0, -8(%rbp)
	movl	$63, -12(%rbp)
	jmp	.L69
.L71:
	salq	-8(%rbp)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	imulq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %eax
	movq	-40(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	cmpq	-24(%rbp), %rax
	jb	.L70
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	subq	%rax, -40(%rbp)
	addq	$1, -8(%rbp)
.L70:
	subl	$3, -12(%rbp)
.L69:
	cmpl	$0, -12(%rbp)
	jns	.L71
	movl	$4096, %eax
	movl	%eax, %eax
	imulq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	icbrt64, .-icbrt64
	.type	ilog_e, @function
ilog_e:
.LFB609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L74
.L75:
	shrq	-24(%rbp)
	movl	$262144, %eax
	addl	%eax, -8(%rbp)
.L74:
	movl	$262144, %eax
	addl	%eax, %eax
	movl	%eax, %eax
	cmpq	%rax, -24(%rbp)
	jnb	.L75
	movl	$262144, %eax
	shrl	%eax
	movl	%eax, -4(%rbp)
	jmp	.L76
.L78:
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul2
	movq	%rax, -24(%rbp)
	movl	$262144, %eax
	addl	%eax, %eax
	movl	%eax, %eax
	cmpq	%rax, -24(%rbp)
	jb	.L77
	shrq	-24(%rbp)
	movl	-4(%rbp), %eax
	addl	%eax, -8(%rbp)
.L77:
	shrl	-4(%rbp)
.L76:
	cmpl	$0, -4(%rbp)
	jne	.L78
	movl	-8(%rbp), %eax
	movl	$262144, %edx
	movl	%edx, %edx
	imulq	%rdx, %rax
	movl	$378193, %edx
	movl	%edx, %ecx
	movl	$0, %edx
	divq	%rcx
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	ilog_e, .-ilog_e
	.globl	ossl_ifc_ffc_compute_security_bits
	.type	ossl_ifc_ffc_compute_security_bits, @function
ossl_ifc_ffc_compute_security_bits:
.LFB610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -44(%rbp)
	cmpl	$15360, -44(%rbp)
	je	.L81
	cmpl	$15360, -44(%rbp)
	jg	.L82
	cmpl	$8192, -44(%rbp)
	je	.L83
	cmpl	$8192, -44(%rbp)
	jg	.L82
	cmpl	$7680, -44(%rbp)
	je	.L84
	cmpl	$7680, -44(%rbp)
	jg	.L82
	cmpl	$6144, -44(%rbp)
	je	.L85
	cmpl	$6144, -44(%rbp)
	jg	.L82
	cmpl	$4096, -44(%rbp)
	je	.L86
	cmpl	$4096, -44(%rbp)
	jg	.L82
	cmpl	$2048, -44(%rbp)
	je	.L87
	cmpl	$3072, -44(%rbp)
	je	.L88
	jmp	.L82
.L87:
	movl	$112, %eax
	jmp	.L89
.L88:
	movl	$128, %eax
	jmp	.L89
.L86:
	movl	$152, %eax
	jmp	.L89
.L85:
	movl	$176, %eax
	jmp	.L89
.L84:
	movl	$192, %eax
	jmp	.L89
.L83:
	movl	$200, %eax
	jmp	.L89
.L81:
	movl	$256, %eax
	jmp	.L89
.L82:
	cmpl	$687736, -44(%rbp)
	jle	.L90
	movl	$1200, %eax
	jmp	.L89
.L90:
	cmpl	$7, -44(%rbp)
	jg	.L91
	movl	$0, %eax
	jmp	.L89
.L91:
	cmpl	$7680, -44(%rbp)
	jg	.L92
	movw	$192, -12(%rbp)
	jmp	.L93
.L92:
	cmpl	$15360, -44(%rbp)
	jg	.L94
	movw	$256, -12(%rbp)
	jmp	.L93
.L94:
	movw	$1200, -12(%rbp)
.L93:
	movl	-44(%rbp), %eax
	cltq
	movl	$181704, %edx
	movl	%edx, %edx
	imulq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ilog_e
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %ebx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul2
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	mul2
	movq	%rax, %rdi
	call	icbrt64
	movl	$504102, %edx
	movl	%edx, %edx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	mul2
	movl	$1229455, %edx
	movl	%edx, %edx
	subq	%rdx, %rax
	movl	$181704, %edx
	movl	%edx, %ecx
	movl	$0, %edx
	divq	%rcx
	movw	%ax, -10(%rbp)
	movzwl	-10(%rbp), %eax
	addl	$4, %eax
	andl	$-8, %eax
	movw	%ax, -10(%rbp)
	movzwl	-10(%rbp), %eax
	cmpw	%ax, -12(%rbp)
	jnb	.L95
	movzwl	-12(%rbp), %eax
	movw	%ax, -10(%rbp)
.L95:
	movzwl	-10(%rbp), %eax
.L89:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	ossl_ifc_ffc_compute_security_bits, .-ossl_ifc_ffc_compute_security_bits
	.globl	RSA_security_bits
	.type	RSA_security_bits, @function
RSA_security_bits:
.LFB611:
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
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	jne	.L97
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_num
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jle	.L98
	movl	-24(%rbp), %eax
	leal	1(%rax), %ebx
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	ossl_rsa_multip_cap@PLT
	cmpl	%eax, %ebx
	jl	.L97
.L98:
	movl	$0, %eax
	jmp	.L99
.L97:
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	ossl_ifc_ffc_compute_security_bits@PLT
	movzwl	%ax, %eax
.L99:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	RSA_security_bits, .-RSA_security_bits
	.globl	RSA_set0_key
	.type	RSA_set0_key, @function
RSA_set0_key:
.LFB612:
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
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L101
	cmpq	$0, -16(%rbp)
	je	.L102
.L101:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L103
	cmpq	$0, -24(%rbp)
	jne	.L103
.L102:
	movl	$0, %eax
	jmp	.L104
.L103:
	cmpq	$0, -16(%rbp)
	je	.L105
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 40(%rax)
.L105:
	cmpq	$0, -24(%rbp)
	je	.L106
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 48(%rax)
.L106:
	cmpq	$0, -32(%rbp)
	je	.L107
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
.L107:
	movq	-8(%rbp), %rax
	movl	216(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 216(%rax)
	movl	$1, %eax
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	RSA_set0_key, .-RSA_set0_key
	.globl	RSA_set0_factors
	.type	RSA_set0_factors, @function
RSA_set0_factors:
.LFB613:
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
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L109
	cmpq	$0, -16(%rbp)
	je	.L110
.L109:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L111
	cmpq	$0, -24(%rbp)
	jne	.L111
.L110:
	movl	$0, %eax
	jmp	.L112
.L111:
	cmpq	$0, -16(%rbp)
	je	.L113
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
.L113:
	cmpq	$0, -24(%rbp)
	je	.L114
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
.L114:
	movq	-8(%rbp), %rax
	movl	216(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 216(%rax)
	movl	$1, %eax
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	RSA_set0_factors, .-RSA_set0_factors
	.globl	RSA_set0_crt_params
	.type	RSA_set0_crt_params, @function
RSA_set0_crt_params:
.LFB614:
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
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L116
	cmpq	$0, -16(%rbp)
	je	.L117
.L116:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L118
	cmpq	$0, -24(%rbp)
	je	.L117
.L118:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L119
	cmpq	$0, -32(%rbp)
	jne	.L119
.L117:
	movl	$0, %eax
	jmp	.L120
.L119:
	cmpq	$0, -16(%rbp)
	je	.L121
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
.L121:
	cmpq	$0, -24(%rbp)
	je	.L122
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 88(%rax)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
.L122:
	cmpq	$0, -32(%rbp)
	je	.L123
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 96(%rax)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
.L123:
	movq	-8(%rbp), %rax
	movl	216(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 216(%rax)
	movl	$1, %eax
.L120:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	RSA_set0_crt_params, .-RSA_set0_crt_params
	.globl	RSA_set0_multi_prime_params
	.type	RSA_set0_multi_prime_params, @function
RSA_set0_multi_prime_params:
.LFB615:
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
	movl	%r8d, -68(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L125
	cmpq	$0, -56(%rbp)
	je	.L125
	cmpq	$0, -64(%rbp)
	je	.L125
	cmpl	$0, -68(%rbp)
	jne	.L126
.L125:
	movl	$0, %eax
	jmp	.L127
.L126:
	movl	-68(%rbp), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	sk_RSA_PRIME_INFO_new_reserve
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L128
	movl	$0, %eax
	jmp	.L127
.L128:
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L129
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -8(%rbp)
.L129:
	movl	$0, -12(%rbp)
	jmp	.L130
.L134:
	call	ossl_rsa_multip_info_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L137
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L133
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L133
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L133
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_push
	addl	$1, -12(%rbp)
	jmp	.L130
.L133:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_multip_info_free@PLT
	jmp	.L132
.L130:
	movl	-12(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L134
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 136(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_multip_calc_product@PLT
	testl	%eax, %eax
	jne	.L135
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 136(%rax)
	jmp	.L132
.L135:
	cmpq	$0, -8(%rbp)
	je	.L136
	movq	ossl_rsa_multip_info_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_pop_free
.L136:
	movq	-40(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-40(%rbp), %rax
	movl	216(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 216(%rax)
	movl	$1, %eax
	jmp	.L127
.L137:
	nop
.L132:
	movq	ossl_rsa_multip_info_free_ex@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_pop_free
	movl	$0, %eax
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	RSA_set0_multi_prime_params, .-RSA_set0_multi_prime_params
	.globl	RSA_get0_key
	.type	RSA_get0_key, @function
RSA_get0_key:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L139
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L139:
	cmpq	$0, -24(%rbp)
	je	.L140
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L140:
	cmpq	$0, -32(%rbp)
	je	.L142
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L142:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	RSA_get0_key, .-RSA_get0_key
	.globl	RSA_get0_factors
	.type	RSA_get0_factors, @function
RSA_get0_factors:
.LFB617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L144
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L144:
	cmpq	$0, -24(%rbp)
	je	.L146
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L146:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	RSA_get0_factors, .-RSA_get0_factors
	.globl	RSA_get_multi_prime_extra_count
	.type	RSA_get_multi_prime_extra_count, @function
RSA_get_multi_prime_extra_count:
.LFB618:
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
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_num
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L148
	movl	$0, -4(%rbp)
.L148:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	RSA_get_multi_prime_extra_count, .-RSA_get_multi_prime_extra_count
	.globl	RSA_get0_multi_prime_factors
	.type	RSA_get0_multi_prime_factors, @function
RSA_get0_multi_prime_factors:
.LFB619:
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
	call	RSA_get_multi_prime_extra_count@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L151
	movl	$0, %eax
	jmp	.L152
.L151:
	movl	$0, -4(%rbp)
	jmp	.L153
.L154:
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_value
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -4(%rbp)
.L153:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L154
	movl	$1, %eax
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	RSA_get0_multi_prime_factors, .-RSA_get0_multi_prime_factors
	.globl	RSA_get0_crt_params
	.type	RSA_get0_crt_params, @function
RSA_get0_crt_params:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L156
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L156:
	cmpq	$0, -24(%rbp)
	je	.L157
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L157:
	cmpq	$0, -32(%rbp)
	je	.L159
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L159:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	RSA_get0_crt_params, .-RSA_get0_crt_params
	.globl	RSA_get0_multi_prime_crt_params
	.type	RSA_get0_multi_prime_crt_params, @function
RSA_get0_multi_prime_crt_params:
.LFB621:
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
	call	RSA_get_multi_prime_extra_count@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L161
	movl	$0, %eax
	jmp	.L162
.L161:
	cmpq	$0, -32(%rbp)
	jne	.L163
	cmpq	$0, -40(%rbp)
	je	.L164
.L163:
	movl	$0, -4(%rbp)
	jmp	.L165
.L168:
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_value
	movq	%rax, -16(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L166
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rdx)
.L166:
	cmpq	$0, -40(%rbp)
	je	.L167
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, (%rdx)
.L167:
	addl	$1, -4(%rbp)
.L165:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L168
.L164:
	movl	$1, %eax
.L162:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	RSA_get0_multi_prime_crt_params, .-RSA_get0_multi_prime_crt_params
	.globl	RSA_get0_n
	.type	RSA_get0_n, @function
RSA_get0_n:
.LFB622:
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
.LFE622:
	.size	RSA_get0_n, .-RSA_get0_n
	.globl	RSA_get0_e
	.type	RSA_get0_e, @function
RSA_get0_e:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	RSA_get0_e, .-RSA_get0_e
	.globl	RSA_get0_d
	.type	RSA_get0_d, @function
RSA_get0_d:
.LFB624:
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
.LFE624:
	.size	RSA_get0_d, .-RSA_get0_d
	.globl	RSA_get0_p
	.type	RSA_get0_p, @function
RSA_get0_p:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	RSA_get0_p, .-RSA_get0_p
	.globl	RSA_get0_q
	.type	RSA_get0_q, @function
RSA_get0_q:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	RSA_get0_q, .-RSA_get0_q
	.globl	RSA_get0_dmp1
	.type	RSA_get0_dmp1, @function
RSA_get0_dmp1:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	RSA_get0_dmp1, .-RSA_get0_dmp1
	.globl	RSA_get0_dmq1
	.type	RSA_get0_dmq1, @function
RSA_get0_dmq1:
.LFB628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	RSA_get0_dmq1, .-RSA_get0_dmq1
	.globl	RSA_get0_iqmp
	.type	RSA_get0_iqmp, @function
RSA_get0_iqmp:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	RSA_get0_iqmp, .-RSA_get0_iqmp
	.globl	RSA_get0_pss_params
	.type	RSA_get0_pss_params, @function
RSA_get0_pss_params:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	RSA_get0_pss_params, .-RSA_get0_pss_params
	.globl	ossl_rsa_set0_pss_params
	.type	ossl_rsa_set0_pss_params, @function
ossl_rsa_set0_pss_params:
.LFB631:
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
	movq	%rax, %rdi
	call	RSA_PSS_PARAMS_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 128(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	ossl_rsa_set0_pss_params, .-ossl_rsa_set0_pss_params
	.globl	ossl_rsa_get0_pss_params_30
	.type	ossl_rsa_get0_pss_params_30, @function
ossl_rsa_get0_pss_params_30:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$104, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	ossl_rsa_get0_pss_params_30, .-ossl_rsa_get0_pss_params_30
	.globl	RSA_clear_flags
	.type	RSA_clear_flags, @function
RSA_clear_flags:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	164(%rax), %eax
	movl	-12(%rbp), %edx
	notl	%edx
	andl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 164(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	RSA_clear_flags, .-RSA_clear_flags
	.globl	RSA_test_flags
	.type	RSA_test_flags, @function
RSA_test_flags:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	164(%rax), %eax
	andl	-12(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	RSA_test_flags, .-RSA_test_flags
	.globl	RSA_set_flags
	.type	RSA_set_flags, @function
RSA_set_flags:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	164(%rax), %eax
	orl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 164(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	RSA_set_flags, .-RSA_set_flags
	.globl	RSA_get_version
	.type	RSA_get_version, @function
RSA_get_version:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	RSA_get_version, .-RSA_get_version
	.globl	RSA_get0_engine
	.type	RSA_get0_engine, @function
RSA_get0_engine:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	RSA_get0_engine, .-RSA_get0_engine
	.globl	RSA_pkey_ctx_ctrl
	.type	RSA_pkey_ctx_ctrl, @function
RSA_pkey_ctx_ctrl:
.LFB638:
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
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L200
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L200
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %eax
	cmpl	$6, %eax
	je	.L200
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %eax
	cmpl	$912, %eax
	je	.L200
	movl	$-1, %eax
	jmp	.L201
.L200:
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rdi, %r9
	movl	%esi, %r8d
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
.L201:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	RSA_pkey_ctx_ctrl, .-RSA_pkey_ctx_ctrl
	.type	sk_BIGNUM_num, @function
sk_BIGNUM_num:
.LFB639:
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
.LFE639:
	.size	sk_BIGNUM_num, .-sk_BIGNUM_num
	.type	sk_BIGNUM_value, @function
sk_BIGNUM_value:
.LFB640:
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
.LFE640:
	.size	sk_BIGNUM_value, .-sk_BIGNUM_value
	.type	sk_BIGNUM_delete, @function
sk_BIGNUM_delete:
.LFB647:
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
.LFE647:
	.size	sk_BIGNUM_delete, .-sk_BIGNUM_delete
	.type	sk_BIGNUM_pop, @function
sk_BIGNUM_pop:
.LFB651:
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
	call	OPENSSL_sk_pop@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	sk_BIGNUM_pop, .-sk_BIGNUM_pop
	.globl	ossl_rsa_set0_all_params
	.type	ossl_rsa_set0_all_params, @function
ossl_rsa_set0_all_params:
.LFB664:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L211
	cmpq	$0, -104(%rbp)
	je	.L211
	cmpq	$0, -112(%rbp)
	jne	.L212
.L211:
	movl	$0, %eax
	jmp	.L213
.L212:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	movl	%eax, -36(%rbp)
	cmpl	$1, -36(%rbp)
	jg	.L214
	movl	$0, %eax
	jmp	.L213
.L214:
	movq	-96(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_value
	movq	%rax, %rbx
	movq	-96(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_value
	movq	%rax, %rcx
	movq	-88(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	RSA_set0_factors@PLT
	testl	%eax, %eax
	jne	.L215
	movl	$0, %eax
	jmp	.L213
.L215:
	movq	-96(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_delete
	movq	-96(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_delete
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	cmpl	%eax, -36(%rbp)
	jne	.L216
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	addl	$1, %eax
	cmpl	%eax, -36(%rbp)
	jne	.L216
	movq	-112(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_value
	movq	%rax, %r12
	movq	-104(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_value
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_value
	movq	%rax, %rsi
	movq	-88(%rbp), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	RSA_set0_crt_params@PLT
	testl	%eax, %eax
	jne	.L217
	movl	$0, %eax
	jmp	.L213
.L217:
	movq	-104(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_delete
	movq	-104(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_delete
	movq	-112(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_delete
.L216:
	movq	-88(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpl	$2, -36(%rbp)
	jle	.L218
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	sk_RSA_PRIME_INFO_new_reserve
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L219
	movl	$0, %eax
	jmp	.L213
.L219:
	movl	$2, -20(%rbp)
	jmp	.L220
.L226:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_pop
	movq	%rax, -56(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_pop
	movq	%rax, -64(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_pop
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L221
	cmpq	$0, -64(%rbp)
	je	.L221
	cmpq	$0, -72(%rbp)
	je	.L221
	movl	$1, %eax
	jmp	.L222
.L221:
	movl	$0, %eax
.L222:
	cltq
	testq	%rax, %rax
	je	.L228
	leaq	.LC0(%rip), %rax
	movl	$820, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L229
	movq	-80(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-80(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-80(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_push
	addl	$1, -20(%rbp)
.L220:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L226
	movq	-88(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 136(%rax)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_multip_calc_product@PLT
	testl	%eax, %eax
	jne	.L218
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 136(%rax)
	jmp	.L224
.L218:
	cmpq	$0, -32(%rbp)
	je	.L227
	movq	ossl_rsa_multip_info_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_pop_free
.L227:
	cmpl	$2, -36(%rbp)
	setg	%al
	movzbl	%al, %edx
	movq	-88(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-88(%rbp), %rax
	movl	216(%rax), %eax
	leal	1(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 216(%rax)
	movl	$1, %eax
	jmp	.L213
.L228:
	nop
	jmp	.L224
.L229:
	nop
.L224:
	movq	ossl_rsa_multip_info_free_ex@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_pop_free
	movl	$0, %eax
.L213:
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	ossl_rsa_set0_all_params, .-ossl_rsa_set0_all_params
	.type	sk_BIGNUM_const_push, @function
sk_BIGNUM_const_push:
.LFB675:
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
.LFE675:
	.size	sk_BIGNUM_const_push, .-sk_BIGNUM_const_push
	.globl	ossl_rsa_get0_all_params
	.type	ossl_rsa_get0_all_params, @function
ossl_rsa_get0_all_params:
.LFB690:
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
	cmpq	$0, -24(%rbp)
	jne	.L233
	movl	$0, %eax
	jmp	.L234
.L233:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_p@PLT
	testq	%rax, %rax
	jne	.L235
	movl	$1, %eax
	jmp	.L234
.L235:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_p@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_const_push
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_q@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_const_push
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_dmp1@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_const_push
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_dmq1@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_const_push
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_iqmp@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_const_push
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get_multi_prime_extra_count@PLT
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L236
.L237:
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_value
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_const_push
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_const_push
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_const_push
	addl	$1, -4(%rbp)
.L236:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L237
	movl	$1, %eax
.L234:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE690:
	.size	ossl_rsa_get0_all_params, .-ossl_rsa_get0_all_params
	.section	.rodata
.LC1:
	.string	"RSA"
.LC2:
	.string	"RSA-PSS"
	.text
	.type	int_set_rsa_md_name, @function
int_set_rsa_md_name:
.LFB691:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movl	%esi, -156(%rbp)
	movl	%edx, -160(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -184(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -152(%rbp)
	je	.L239
	cmpq	$0, -176(%rbp)
	je	.L239
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	andl	-160(%rbp), %eax
	testl	%eax, %eax
	jne	.L240
.L239:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$916, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L247
.L240:
	cmpl	$-1, -156(%rbp)
	jne	.L242
	leaq	.LC1(%rip), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	jne	.L248
	leaq	.LC2(%rip), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	jne	.L248
	movl	$-1, %eax
	jmp	.L247
.L242:
	movl	-156(%rbp), %eax
	movl	%eax, %edi
	call	evp_pkey_type2name@PLT
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	jne	.L249
	movl	$-1, %eax
	jmp	.L247
.L248:
	nop
	jmp	.L244
.L249:
	nop
.L244:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-240(%rbp), %rax
	movq	-176(%rbp), %rdx
	movq	-168(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-208(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L246
	cmpq	$0, 16(%rbp)
	je	.L246
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-240(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	-184(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-208(%rbp), %rax
	movq	%rax, 32(%rbx)
.L246:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-208(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-144(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_set_params_strict@PLT
.L247:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE691:
	.size	int_set_rsa_md_name, .-int_set_rsa_md_name
	.type	int_get_rsa_md_name, @function
int_get_rsa_md_name:
.LFB692:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movl	%edx, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -152(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L251
	cmpq	$0, -144(%rbp)
	je	.L251
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	andl	-128(%rbp), %eax
	testl	%eax, %eax
	jne	.L252
.L251:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$956, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L258
.L252:
	cmpl	$-1, -124(%rbp)
	jne	.L254
	leaq	.LC1(%rip), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	jne	.L259
	leaq	.LC2(%rip), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	jne	.L259
	movl	$-1, %eax
	jmp	.L258
.L254:
	movl	-124(%rbp), %eax
	movl	%eax, %edi
	call	evp_pkey_type2name@PLT
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	jne	.L260
	movl	$-1, %eax
	jmp	.L258
.L259:
	nop
	jmp	.L256
.L260:
	nop
.L256:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-208(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-176(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-176(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-112(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_get_params_strict@PLT
.L258:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE692:
	.size	int_get_rsa_md_name, .-int_get_rsa_md_name
	.globl	EVP_PKEY_CTX_set_rsa_padding
	.type	EVP_PKEY_CTX_set_rsa_padding, @function
EVP_PKEY_CTX_set_rsa_padding:
.LFB693:
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
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$4097, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	RSA_pkey_ctx_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE693:
	.size	EVP_PKEY_CTX_set_rsa_padding, .-EVP_PKEY_CTX_set_rsa_padding
	.globl	EVP_PKEY_CTX_get_rsa_padding
	.type	EVP_PKEY_CTX_get_rsa_padding, @function
EVP_PKEY_CTX_get_rsa_padding:
.LFB694:
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
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$4102, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	RSA_pkey_ctx_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE694:
	.size	EVP_PKEY_CTX_get_rsa_padding, .-EVP_PKEY_CTX_get_rsa_padding
	.globl	EVP_PKEY_CTX_set_rsa_pss_keygen_md
	.type	EVP_PKEY_CTX_set_rsa_pss_keygen_md, @function
EVP_PKEY_CTX_set_rsa_pss_keygen_md:
.LFB695:
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
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$4, %edx
	movl	$912, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE695:
	.size	EVP_PKEY_CTX_set_rsa_pss_keygen_md, .-EVP_PKEY_CTX_set_rsa_pss_keygen_md
	.section	.rodata
.LC3:
	.string	"properties"
.LC4:
	.string	"digest"
	.text
	.globl	EVP_PKEY_CTX_set_rsa_pss_keygen_md_name
	.type	EVP_PKEY_CTX_set_rsa_pss_keygen_md_name, @function
EVP_PKEY_CTX_set_rsa_pss_keygen_md_name:
.LFB696:
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
	leaq	.LC3(%rip), %rsi
	movq	-16(%rbp), %rcx
	leaq	.LC4(%rip), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-24(%rbp)
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$912, %esi
	movq	%rax, %rdi
	call	int_set_rsa_md_name
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	EVP_PKEY_CTX_set_rsa_pss_keygen_md_name, .-EVP_PKEY_CTX_set_rsa_pss_keygen_md_name
	.globl	EVP_PKEY_CTX_set_rsa_oaep_md
	.type	EVP_PKEY_CTX_set_rsa_oaep_md, @function
EVP_PKEY_CTX_set_rsa_oaep_md:
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
	leaq	.LC1(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	jne	.L270
	movl	$-1, %eax
	jmp	.L271
.L270:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$4105, %ecx
	movl	$1536, %edx
	movl	$6, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
.L271:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	EVP_PKEY_CTX_set_rsa_oaep_md, .-EVP_PKEY_CTX_set_rsa_oaep_md
	.section	.rodata
.LC5:
	.string	"digest-props"
	.text
	.globl	EVP_PKEY_CTX_set_rsa_oaep_md_name
	.type	EVP_PKEY_CTX_set_rsa_oaep_md_name, @function
EVP_PKEY_CTX_set_rsa_oaep_md_name:
.LFB698:
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
	leaq	.LC5(%rip), %rsi
	movq	-16(%rbp), %rcx
	leaq	.LC4(%rip), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-24(%rbp)
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1536, %edx
	movl	$6, %esi
	movq	%rax, %rdi
	call	int_set_rsa_md_name
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	EVP_PKEY_CTX_set_rsa_oaep_md_name, .-EVP_PKEY_CTX_set_rsa_oaep_md_name
	.globl	EVP_PKEY_CTX_get_rsa_oaep_md_name
	.type	EVP_PKEY_CTX_get_rsa_oaep_md_name, @function
EVP_PKEY_CTX_get_rsa_oaep_md_name:
.LFB699:
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
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rcx
	leaq	.LC4(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1536, %edx
	movl	$6, %esi
	movq	%rax, %rdi
	call	int_get_rsa_md_name
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	EVP_PKEY_CTX_get_rsa_oaep_md_name, .-EVP_PKEY_CTX_get_rsa_oaep_md_name
	.globl	EVP_PKEY_CTX_get_rsa_oaep_md
	.type	EVP_PKEY_CTX_get_rsa_oaep_md, @function
EVP_PKEY_CTX_get_rsa_oaep_md:
.LFB700:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	jne	.L277
	movl	$-1, %eax
	jmp	.L278
.L277:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$4107, %ecx
	movl	$1536, %edx
	movl	$6, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
.L278:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	EVP_PKEY_CTX_get_rsa_oaep_md, .-EVP_PKEY_CTX_get_rsa_oaep_md
	.globl	EVP_PKEY_CTX_set_rsa_mgf1_md
	.type	EVP_PKEY_CTX_set_rsa_mgf1_md, @function
EVP_PKEY_CTX_set_rsa_mgf1_md:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$4101, %edx
	movl	$2032, %esi
	movq	%rax, %rdi
	call	RSA_pkey_ctx_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	EVP_PKEY_CTX_set_rsa_mgf1_md, .-EVP_PKEY_CTX_set_rsa_mgf1_md
	.section	.rodata
.LC6:
	.string	"mgf1-properties"
.LC7:
	.string	"mgf1-digest"
	.text
	.globl	EVP_PKEY_CTX_set_rsa_mgf1_md_name
	.type	EVP_PKEY_CTX_set_rsa_mgf1_md_name, @function
EVP_PKEY_CTX_set_rsa_mgf1_md_name:
.LFB702:
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
	leaq	.LC6(%rip), %rsi
	movq	-16(%rbp), %rcx
	leaq	.LC7(%rip), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-24(%rbp)
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$2032, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	int_set_rsa_md_name
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	EVP_PKEY_CTX_set_rsa_mgf1_md_name, .-EVP_PKEY_CTX_set_rsa_mgf1_md_name
	.globl	EVP_PKEY_CTX_get_rsa_mgf1_md_name
	.type	EVP_PKEY_CTX_get_rsa_mgf1_md_name, @function
EVP_PKEY_CTX_get_rsa_mgf1_md_name:
.LFB703:
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
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rcx
	leaq	.LC7(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$2032, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	int_get_rsa_md_name
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	EVP_PKEY_CTX_get_rsa_mgf1_md_name, .-EVP_PKEY_CTX_get_rsa_mgf1_md_name
	.globl	EVP_PKEY_CTX_set_rsa_pss_keygen_mgf1_md
	.type	EVP_PKEY_CTX_set_rsa_pss_keygen_mgf1_md, @function
EVP_PKEY_CTX_set_rsa_pss_keygen_mgf1_md:
.LFB704:
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
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$4101, %ecx
	movl	$4, %edx
	movl	$912, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	EVP_PKEY_CTX_set_rsa_pss_keygen_mgf1_md, .-EVP_PKEY_CTX_set_rsa_pss_keygen_mgf1_md
	.globl	EVP_PKEY_CTX_set_rsa_pss_keygen_mgf1_md_name
	.type	EVP_PKEY_CTX_set_rsa_pss_keygen_mgf1_md_name, @function
EVP_PKEY_CTX_set_rsa_pss_keygen_mgf1_md_name:
.LFB705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	leaq	.LC7(%rip), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$912, %esi
	movq	%rax, %rdi
	call	int_set_rsa_md_name
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	EVP_PKEY_CTX_set_rsa_pss_keygen_mgf1_md_name, .-EVP_PKEY_CTX_set_rsa_pss_keygen_mgf1_md_name
	.globl	EVP_PKEY_CTX_get_rsa_mgf1_md
	.type	EVP_PKEY_CTX_get_rsa_mgf1_md, @function
EVP_PKEY_CTX_get_rsa_mgf1_md:
.LFB706:
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
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$4104, %edx
	movl	$2032, %esi
	movq	%rax, %rdi
	call	RSA_pkey_ctx_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	EVP_PKEY_CTX_get_rsa_mgf1_md, .-EVP_PKEY_CTX_get_rsa_mgf1_md
	.section	.rodata
.LC8:
	.string	""
.LC9:
	.string	"oaep-label"
	.text
	.globl	EVP_PKEY_CTX_set0_rsa_oaep_label
	.type	EVP_PKEY_CTX_set0_rsa_oaep_label, @function
EVP_PKEY_CTX_set0_rsa_oaep_label:
.LFB707:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movl	%edx, -148(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L292
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$512, %eax
	je	.L293
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1024, %eax
	je	.L293
.L292:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1132, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L298
.L293:
	leaq	.LC1(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	jne	.L295
	movl	$-1, %eax
	jmp	.L298
.L295:
	cmpq	$0, -144(%rbp)
	jne	.L296
	cmpl	$0, -148(%rbp)
	jne	.L296
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
.L296:
	movl	-148(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-208(%rbp), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-176(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-176(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-128(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_set_params_strict@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jg	.L297
	movl	-44(%rbp), %eax
	jmp	.L298
.L297:
	leaq	.LC0(%rip), %rcx
	movq	-144(%rbp), %rax
	movl	$1155, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
.L298:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	EVP_PKEY_CTX_set0_rsa_oaep_label, .-EVP_PKEY_CTX_set0_rsa_oaep_label
	.globl	EVP_PKEY_CTX_get0_rsa_oaep_label
	.type	EVP_PKEY_CTX_get0_rsa_oaep_label, @function
EVP_PKEY_CTX_get0_rsa_oaep_label:
.LFB708:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L300
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$512, %eax
	je	.L301
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1024, %eax
	je	.L301
.L300:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1165, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L306
.L301:
	leaq	.LC1(%rip), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	jne	.L303
	movl	$-1, %eax
	jmp	.L306
.L303:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-176(%rbp), %rax
	movq	-128(%rbp), %rdx
	leaq	.LC9(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_ptr@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-112(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_params@PLT
	testl	%eax, %eax
	jne	.L304
	movl	$-1, %eax
	jmp	.L306
.L304:
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$2147483647, -32(%rbp)
	jbe	.L305
	movl	$-1, %eax
	jmp	.L306
.L305:
	movq	-32(%rbp), %rax
.L306:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	EVP_PKEY_CTX_get0_rsa_oaep_label, .-EVP_PKEY_CTX_get0_rsa_oaep_label
	.globl	EVP_PKEY_CTX_set_rsa_pss_saltlen
	.type	EVP_PKEY_CTX_set_rsa_pss_saltlen, @function
EVP_PKEY_CTX_set_rsa_pss_saltlen:
.LFB709:
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
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$4098, %edx
	movl	$496, %esi
	movq	%rax, %rdi
	call	RSA_pkey_ctx_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	EVP_PKEY_CTX_set_rsa_pss_saltlen, .-EVP_PKEY_CTX_set_rsa_pss_saltlen
	.globl	EVP_PKEY_CTX_get_rsa_pss_saltlen
	.type	EVP_PKEY_CTX_get_rsa_pss_saltlen, @function
EVP_PKEY_CTX_get_rsa_pss_saltlen:
.LFB710:
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
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$4103, %edx
	movl	$496, %esi
	movq	%rax, %rdi
	call	RSA_pkey_ctx_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	EVP_PKEY_CTX_get_rsa_pss_saltlen, .-EVP_PKEY_CTX_get_rsa_pss_saltlen
	.section	.rodata
.LC10:
	.string	"saltlen"
	.text
	.globl	EVP_PKEY_CTX_set_rsa_pss_keygen_saltlen
	.type	EVP_PKEY_CTX_set_rsa_pss_keygen_saltlen, @function
EVP_PKEY_CTX_set_rsa_pss_keygen_saltlen:
.LFB711:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L312
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L313
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L313
.L312:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1232, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L316
.L313:
	leaq	.LC2(%rip), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	jne	.L315
	movl	$-1, %eax
	jmp	.L316
.L315:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-176(%rbp), %rax
	leaq	-124(%rbp), %rdx
	leaq	.LC10(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-112(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_set_params_strict@PLT
.L316:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	EVP_PKEY_CTX_set_rsa_pss_keygen_saltlen, .-EVP_PKEY_CTX_set_rsa_pss_keygen_saltlen
	.section	.rodata
.LC11:
	.string	"bits"
	.text
	.globl	EVP_PKEY_CTX_set_rsa_keygen_bits
	.type	EVP_PKEY_CTX_set_rsa_keygen_bits, @function
EVP_PKEY_CTX_set_rsa_keygen_bits:
.LFB712:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movl	%esi, -140(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-140(%rbp), %eax
	cltq
	movq	%rax, -120(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L318
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L319
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L319
.L318:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1253, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L322
.L319:
	leaq	.LC1(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	jne	.L321
	leaq	.LC2(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	jne	.L321
	movl	$-1, %eax
	jmp	.L322
.L321:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-192(%rbp), %rax
	leaq	-120(%rbp), %rdx
	leaq	.LC11(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-112(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_set_params_strict@PLT
.L322:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	EVP_PKEY_CTX_set_rsa_keygen_bits, .-EVP_PKEY_CTX_set_rsa_keygen_bits
	.globl	EVP_PKEY_CTX_set_rsa_keygen_pubexp
	.type	EVP_PKEY_CTX_set_rsa_keygen_pubexp, @function
EVP_PKEY_CTX_set_rsa_keygen_pubexp:
.LFB713:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$4100, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	RSA_pkey_ctx_ctrl@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L324
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L324
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 168(%rax)
.L324:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE713:
	.size	EVP_PKEY_CTX_set_rsa_keygen_pubexp, .-EVP_PKEY_CTX_set_rsa_keygen_pubexp
	.globl	EVP_PKEY_CTX_set1_rsa_keygen_pubexp
	.type	EVP_PKEY_CTX_set1_rsa_keygen_pubexp, @function
EVP_PKEY_CTX_set1_rsa_keygen_pubexp:
.LFB714:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L327
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L327
	movl	$0, %eax
	jmp	.L328
.L327:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$4100, %ecx
	movl	$4, %edx
	movl	$6, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L329
	cmpl	$0, -4(%rbp)
	jg	.L329
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L329:
	movl	-4(%rbp), %eax
.L328:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE714:
	.size	EVP_PKEY_CTX_set1_rsa_keygen_pubexp, .-EVP_PKEY_CTX_set1_rsa_keygen_pubexp
	.section	.rodata
.LC12:
	.string	"primes"
	.text
	.globl	EVP_PKEY_CTX_set_rsa_keygen_primes
	.type	EVP_PKEY_CTX_set_rsa_keygen_primes, @function
EVP_PKEY_CTX_set_rsa_keygen_primes:
.LFB715:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movl	%esi, -140(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-140(%rbp), %eax
	cltq
	movq	%rax, -120(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L331
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L332
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L332
.L331:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1313, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L335
.L332:
	leaq	.LC1(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	jne	.L334
	leaq	.LC2(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_is_a@PLT
	testl	%eax, %eax
	jne	.L334
	movl	$-1, %eax
	jmp	.L335
.L334:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-192(%rbp), %rax
	leaq	-120(%rbp), %rdx
	leaq	.LC12(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-112(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_set_params_strict@PLT
.L335:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE715:
	.size	EVP_PKEY_CTX_set_rsa_keygen_primes, .-EVP_PKEY_CTX_set_rsa_keygen_primes
	.section	.rodata
	.align 8
	.type	__func__.7, @object
	.size	__func__.7, 15
__func__.7:
	.string	"rsa_new_intern"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 20
__func__.6:
	.string	"int_set_rsa_md_name"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 20
__func__.5:
	.string	"int_get_rsa_md_name"
	.align 32
	.type	__func__.4, @object
	.size	__func__.4, 33
__func__.4:
	.string	"EVP_PKEY_CTX_set0_rsa_oaep_label"
	.align 32
	.type	__func__.3, @object
	.size	__func__.3, 33
__func__.3:
	.string	"EVP_PKEY_CTX_get0_rsa_oaep_label"
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 40
__func__.2:
	.string	"EVP_PKEY_CTX_set_rsa_pss_keygen_saltlen"
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 33
__func__.1:
	.string	"EVP_PKEY_CTX_set_rsa_keygen_bits"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 35
__func__.0:
	.string	"EVP_PKEY_CTX_set_rsa_keygen_primes"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

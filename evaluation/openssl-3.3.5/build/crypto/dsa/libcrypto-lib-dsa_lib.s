	.file	"dsa_lib.c"
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
	.globl	DSA_set_ex_data
	.type	DSA_set_ex_data, @function
DSA_set_ex_data:
.LFB520:
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
.LFE520:
	.size	DSA_set_ex_data, .-DSA_set_ex_data
	.globl	DSA_get_ex_data
	.type	DSA_get_ex_data, @function
DSA_get_ex_data:
.LFB521:
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
.LFE521:
	.size	DSA_get_ex_data, .-DSA_get_ex_data
	.globl	DSA_dup_DH
	.type	DSA_dup_DH, @function
DSA_dup_DH:
.LFB522:
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
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L27
	call	DH_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L28
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dh_get0_params@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_params_copy@PLT
	testl	%eax, %eax
	je	.L29
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L30
	movq	-56(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L24
	movq	-56(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L31
.L24:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_set0_key@PLT
	testl	%eax, %eax
	jne	.L25
	jmp	.L19
.L22:
	movq	-56(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L32
.L25:
	movq	-24(%rbp), %rax
	jmp	.L26
.L27:
	nop
	jmp	.L19
.L28:
	nop
	jmp	.L19
.L29:
	nop
	jmp	.L19
.L30:
	nop
	jmp	.L19
.L31:
	nop
	jmp	.L19
.L32:
	nop
.L19:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movl	$0, %eax
.L26:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	DSA_dup_DH, .-DSA_dup_DH
	.globl	DSA_clear_flags
	.type	DSA_clear_flags, @function
DSA_clear_flags:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	movl	-12(%rbp), %edx
	notl	%edx
	andl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 120(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	DSA_clear_flags, .-DSA_clear_flags
	.globl	DSA_test_flags
	.type	DSA_test_flags, @function
DSA_test_flags:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	andl	-12(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	DSA_test_flags, .-DSA_test_flags
	.globl	DSA_set_flags
	.type	DSA_set_flags, @function
DSA_set_flags:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	orl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 120(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	DSA_set_flags, .-DSA_set_flags
	.globl	DSA_get0_engine
	.type	DSA_get0_engine, @function
DSA_get0_engine:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	DSA_get0_engine, .-DSA_get0_engine
	.globl	DSA_set_method
	.type	DSA_set_method, @function
DSA_set_method:
.LFB527:
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
	movq	160(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L40
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L40:
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movq	-24(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 160(%rax)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L41
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L41:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	DSA_set_method, .-DSA_set_method
	.globl	DSA_get_method
	.type	DSA_get_method, @function
DSA_get_method:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	DSA_get_method, .-DSA_get_method
	.section	.rodata
.LC0:
	.string	"../crypto/dsa/dsa_lib.c"
	.text
	.type	dsa_new_intern, @function
dsa_new_intern:
.LFB529:
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
	movl	$135, %edx
	movq	%rax, %rsi
	movl	$200, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 176(%rdx)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	jne	.L48
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$142, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$143, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L47
.L48:
	movq	-8(%rbp), %rax
	addq	$136, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	jne	.L49
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$149, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L47
.L49:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 184(%rax)
	call	DSA_get_default_method@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 160(%rdx)
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movl	64(%rax), %eax
	andb	$-5, %ah
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 120(%rax)
	cmpq	$0, -24(%rbp)
	je	.L50
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_init@PLT
	testl	%eax, %eax
	jne	.L51
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$159, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524326, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L52
.L51:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 168(%rax)
	jmp	.L53
.L50:
	call	ENGINE_get_default_DSA@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 168(%rdx)
.L53:
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	je	.L54
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_get_DSA@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 160(%rdx)
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	jne	.L54
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$168, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524326, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L52
.L54:
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movl	64(%rax), %eax
	andb	$-5, %ah
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 120(%rax)
	movq	-8(%rbp), %rax
	leaq	144(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_crypto_new_ex_data_ex@PLT
	testl	%eax, %eax
	je	.L57
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	ossl_ffc_params_init@PLT
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L56
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L56
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$185, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786693, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L52
.L56:
	movq	-8(%rbp), %rax
	jmp	.L47
.L57:
	nop
.L52:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	movl	$0, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	dsa_new_intern, .-dsa_new_intern
	.globl	DSA_new_method
	.type	DSA_new_method, @function
DSA_new_method:
.LFB530:
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
	call	dsa_new_intern
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	DSA_new_method, .-DSA_new_method
	.globl	ossl_dsa_new
	.type	ossl_dsa_new, @function
ossl_dsa_new:
.LFB531:
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
	call	dsa_new_intern
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	ossl_dsa_new, .-ossl_dsa_new
	.globl	DSA_new
	.type	DSA_new, @function
DSA_new:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %esi
	movl	$0, %edi
	call	dsa_new_intern
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	DSA_new, .-DSA_new
	.globl	DSA_free
	.type	DSA_free, @function
DSA_free:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L70
	movq	-24(%rbp), %rax
	leaq	136(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jg	.L71
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L68:
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movq	-24(%rbp), %rax
	leaq	144(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$7, %edi
	call	CRYPTO_free_ex_data@PLT
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-24(%rbp), %rax
	addq	$136, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	ossl_ffc_params_cleanup@PLT
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$242, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L64
.L70:
	nop
	jmp	.L64
.L71:
	nop
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	DSA_free, .-DSA_free
	.globl	DSA_up_ref
	.type	DSA_up_ref, @function
DSA_up_ref:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	136(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jg	.L73
	movl	$0, %eax
	jmp	.L75
.L73:
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	setg	%al
	movzbl	%al, %eax
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	DSA_up_ref, .-DSA_up_ref
	.globl	ossl_dsa_set0_libctx
	.type	ossl_dsa_set0_libctx, @function
ossl_dsa_set0_libctx:
.LFB535:
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
	movq	%rdx, 184(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	ossl_dsa_set0_libctx, .-ossl_dsa_set0_libctx
	.globl	DSA_get0_pqg
	.type	DSA_get0_pqg, @function
DSA_get0_pqg:
.LFB536:
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
	leaq	8(%rax), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	call	ossl_ffc_params_get0_pqg@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	DSA_get0_pqg, .-DSA_get0_pqg
	.globl	DSA_set0_pqg
	.type	DSA_set0_pqg, @function
DSA_set0_pqg:
.LFB537:
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
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L79
	cmpq	$0, -16(%rbp)
	je	.L80
.L79:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L81
	cmpq	$0, -24(%rbp)
	je	.L80
.L81:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L82
	cmpq	$0, -32(%rbp)
	jne	.L82
.L80:
	movl	$0, %eax
	jmp	.L83
.L82:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	call	ossl_ffc_params_set0_pqg@PLT
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 192(%rax)
	movl	$1, %eax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	DSA_set0_pqg, .-DSA_set0_pqg
	.globl	DSA_get0_p
	.type	DSA_get0_p, @function
DSA_get0_p:
.LFB538:
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
.LFE538:
	.size	DSA_get0_p, .-DSA_get0_p
	.globl	DSA_get0_q
	.type	DSA_get0_q, @function
DSA_get0_q:
.LFB539:
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
.LFE539:
	.size	DSA_get0_q, .-DSA_get0_q
	.globl	DSA_get0_g
	.type	DSA_get0_g, @function
DSA_get0_g:
.LFB540:
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
.LFE540:
	.size	DSA_get0_g, .-DSA_get0_g
	.globl	DSA_get0_pub_key
	.type	DSA_get0_pub_key, @function
DSA_get0_pub_key:
.LFB541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	DSA_get0_pub_key, .-DSA_get0_pub_key
	.globl	DSA_get0_priv_key
	.type	DSA_get0_priv_key, @function
DSA_get0_priv_key:
.LFB542:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	DSA_get0_priv_key, .-DSA_get0_priv_key
	.globl	DSA_get0_key
	.type	DSA_get0_key, @function
DSA_get0_key:
.LFB543:
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
	je	.L95
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L95:
	cmpq	$0, -24(%rbp)
	je	.L97
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L97:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	DSA_get0_key, .-DSA_get0_key
	.globl	DSA_set0_key
	.type	DSA_set0_key, @function
DSA_set0_key:
.LFB544:
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
	cmpq	$0, -16(%rbp)
	je	.L99
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 104(%rax)
.L99:
	cmpq	$0, -24(%rbp)
	je	.L100
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 112(%rax)
.L100:
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 192(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	DSA_set0_key, .-DSA_set0_key
	.globl	DSA_security_bits
	.type	DSA_security_bits, @function
DSA_security_bits:
.LFB545:
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
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L103
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L103
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%ebx, %esi
	movl	%eax, %edi
	call	BN_security_bits@PLT
	jmp	.L104
.L103:
	movl	$-1, %eax
.L104:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	DSA_security_bits, .-DSA_security_bits
	.globl	DSA_bits
	.type	DSA_bits, @function
DSA_bits:
.LFB546:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L106
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	jmp	.L107
.L106:
	movl	$-1, %eax
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	DSA_bits, .-DSA_bits
	.globl	ossl_dsa_get0_params
	.type	ossl_dsa_get0_params, @function
ossl_dsa_get0_params:
.LFB547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	ossl_dsa_get0_params, .-ossl_dsa_get0_params
	.globl	ossl_dsa_ffc_params_fromdata
	.type	ossl_dsa_ffc_params_fromdata, @function
ossl_dsa_ffc_params_fromdata:
.LFB548:
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
	call	ossl_dsa_get0_params@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_params_fromdata@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L111
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 192(%rax)
.L111:
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	ossl_dsa_ffc_params_fromdata, .-ossl_dsa_ffc_params_fromdata
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"dsa_new_intern"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

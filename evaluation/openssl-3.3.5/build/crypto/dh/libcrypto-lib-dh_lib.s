	.file	"dh_lib.c"
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
	.globl	DH_set_method
	.type	DH_set_method, @function
DH_set_method:
.LFB570:
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
	movq	184(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L14
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L14:
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movq	-24(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 184(%rax)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L15
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L15:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	DH_set_method, .-DH_set_method
	.globl	ossl_dh_get_method
	.type	ossl_dh_get_method, @function
ossl_dh_get_method:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	ossl_dh_get_method, .-ossl_dh_get_method
	.globl	DH_new
	.type	DH_new, @function
DH_new:
.LFB572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %esi
	movl	$0, %edi
	call	dh_new_intern
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	DH_new, .-DH_new
	.globl	DH_new_method
	.type	DH_new_method, @function
DH_new_method:
.LFB573:
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
	call	dh_new_intern
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	DH_new_method, .-DH_new_method
	.globl	ossl_dh_new_ex
	.type	ossl_dh_new_ex, @function
ossl_dh_new_ex:
.LFB574:
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
	call	dh_new_intern
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	ossl_dh_new_ex, .-ossl_dh_new_ex
	.section	.rodata
.LC0:
	.string	"../crypto/dh/dh_lib.c"
	.text
	.type	dh_new_intern, @function
dh_new_intern:
.LFB575:
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
	movl	$76, %edx
	movq	%rax, %rsi
	movl	$208, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 192(%rdx)
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	jne	.L28
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$83, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$84, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L27
.L28:
	movq	-8(%rbp), %rax
	addq	$144, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	jne	.L29
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$90, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L27
.L29:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 176(%rax)
	call	DH_get_default_method@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 184(%rdx)
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movl	48(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 128(%rax)
	cmpq	$0, -24(%rbp)
	je	.L30
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_init@PLT
	testl	%eax, %eax
	jne	.L31
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$100, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524326, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L32
.L31:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 168(%rax)
	jmp	.L33
.L30:
	call	ENGINE_get_default_DH@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 168(%rdx)
.L33:
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_get_DH@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 184(%rdx)
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$109, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524326, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L32
.L34:
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movl	48(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 128(%rax)
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$6, %edi
	call	CRYPTO_new_ex_data@PLT
	testl	%eax, %eax
	je	.L37
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	ossl_ffc_params_init@PLT
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L36
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$125, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786693, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L32
.L36:
	movq	-8(%rbp), %rax
	jmp	.L27
.L37:
	nop
.L32:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movl	$0, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	dh_new_intern, .-dh_new_intern
	.globl	DH_free
	.type	DH_free, @function
DH_free:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L44
	movq	-24(%rbp), %rax
	leaq	144(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jg	.L45
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L42:
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movq	-24(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$6, %edi
	call	CRYPTO_free_ex_data@PLT
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-24(%rbp), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	ossl_ffc_params_cleanup@PLT
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$164, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L38
.L44:
	nop
	jmp	.L38
.L45:
	nop
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	DH_free, .-DH_free
	.globl	DH_up_ref
	.type	DH_up_ref, @function
DH_up_ref:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	144(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jg	.L47
	movl	$0, %eax
	jmp	.L49
.L47:
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	setg	%al
	movzbl	%al, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	DH_up_ref, .-DH_up_ref
	.globl	ossl_dh_set0_libctx
	.type	ossl_dh_set0_libctx, @function
ossl_dh_set0_libctx:
.LFB578:
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
	movq	%rdx, 176(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	ossl_dh_set0_libctx, .-ossl_dh_set0_libctx
	.globl	DH_set_ex_data
	.type	DH_set_ex_data, @function
DH_set_ex_data:
.LFB579:
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
	leaq	152(%rax), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	CRYPTO_set_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	DH_set_ex_data, .-DH_set_ex_data
	.globl	DH_get_ex_data
	.type	DH_get_ex_data, @function
DH_get_ex_data:
.LFB580:
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
	leaq	152(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	CRYPTO_get_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	DH_get_ex_data, .-DH_get_ex_data
	.globl	DH_bits
	.type	DH_bits, @function
DH_bits:
.LFB581:
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
	je	.L56
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	jmp	.L57
.L56:
	movl	$-1, %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	DH_bits, .-DH_bits
	.globl	DH_size
	.type	DH_size, @function
DH_size:
.LFB582:
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
	je	.L59
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	jmp	.L60
.L59:
	movl	$-1, %eax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	DH_size, .-DH_size
	.globl	DH_security_bits
	.type	DH_security_bits, @function
DH_security_bits:
.LFB583:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L62
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -4(%rbp)
	jmp	.L63
.L62:
	movq	-24(%rbp), %rax
	movl	104(%rax), %eax
	testl	%eax, %eax
	je	.L64
	movq	-24(%rbp), %rax
	movl	104(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L63
.L64:
	movl	$-1, -4(%rbp)
.L63:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	BN_security_bits@PLT
	jmp	.L66
.L65:
	movl	$-1, %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	DH_security_bits, .-DH_security_bits
	.globl	DH_get0_pqg
	.type	DH_get0_pqg, @function
DH_get0_pqg:
.LFB584:
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
.LFE584:
	.size	DH_get0_pqg, .-DH_get0_pqg
	.globl	DH_set0_pqg
	.type	DH_set0_pqg, @function
DH_set0_pqg:
.LFB585:
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
	jne	.L69
	cmpq	$0, -16(%rbp)
	je	.L70
.L69:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L71
	cmpq	$0, -32(%rbp)
	jne	.L71
.L70:
	movl	$0, %eax
	jmp	.L72
.L71:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	call	ossl_ffc_params_set0_pqg@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dh_cache_named_group@PLT
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 200(%rax)
	movl	$1, %eax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	DH_set0_pqg, .-DH_set0_pqg
	.globl	DH_get_length
	.type	DH_get_length, @function
DH_get_length:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	104(%rax), %eax
	cltq
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	DH_get_length, .-DH_get_length
	.globl	DH_set_length
	.type	DH_set_length, @function
DH_set_length:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 104(%rax)
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 200(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	DH_set_length, .-DH_set_length
	.globl	DH_get0_key
	.type	DH_get0_key, @function
DH_get0_key:
.LFB588:
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
	je	.L78
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L78:
	cmpq	$0, -24(%rbp)
	je	.L80
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L80:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	DH_get0_key, .-DH_get0_key
	.globl	DH_set0_key
	.type	DH_set0_key, @function
DH_set0_key:
.LFB589:
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
	je	.L82
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 112(%rax)
.L82:
	cmpq	$0, -24(%rbp)
	je	.L83
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 120(%rax)
.L83:
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 200(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	DH_set0_key, .-DH_set0_key
	.globl	DH_get0_p
	.type	DH_get0_p, @function
DH_get0_p:
.LFB590:
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
.LFE590:
	.size	DH_get0_p, .-DH_get0_p
	.globl	DH_get0_q
	.type	DH_get0_q, @function
DH_get0_q:
.LFB591:
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
.LFE591:
	.size	DH_get0_q, .-DH_get0_q
	.globl	DH_get0_g
	.type	DH_get0_g, @function
DH_get0_g:
.LFB592:
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
.LFE592:
	.size	DH_get0_g, .-DH_get0_g
	.globl	DH_get0_priv_key
	.type	DH_get0_priv_key, @function
DH_get0_priv_key:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	DH_get0_priv_key, .-DH_get0_priv_key
	.globl	DH_get0_pub_key
	.type	DH_get0_pub_key, @function
DH_get0_pub_key:
.LFB594:
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
.LFE594:
	.size	DH_get0_pub_key, .-DH_get0_pub_key
	.globl	DH_clear_flags
	.type	DH_clear_flags, @function
DH_clear_flags:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	128(%rax), %eax
	movl	-12(%rbp), %edx
	notl	%edx
	andl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 128(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	DH_clear_flags, .-DH_clear_flags
	.globl	DH_test_flags
	.type	DH_test_flags, @function
DH_test_flags:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	128(%rax), %eax
	andl	-12(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	DH_test_flags, .-DH_test_flags
	.globl	DH_set_flags
	.type	DH_set_flags, @function
DH_set_flags:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	128(%rax), %eax
	orl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 128(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	DH_set_flags, .-DH_set_flags
	.globl	DH_get0_engine
	.type	DH_get0_engine, @function
DH_get0_engine:
.LFB598:
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
.LFE598:
	.size	DH_get0_engine, .-DH_get0_engine
	.globl	ossl_dh_get0_params
	.type	ossl_dh_get0_params, @function
ossl_dh_get0_params:
.LFB599:
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
.LFE599:
	.size	ossl_dh_get0_params, .-ossl_dh_get0_params
	.globl	ossl_dh_get0_nid
	.type	ossl_dh_get0_nid, @function
ossl_dh_get0_nid:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	60(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	ossl_dh_get0_nid, .-ossl_dh_get0_nid
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 14
__func__.0:
	.string	"dh_new_intern"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

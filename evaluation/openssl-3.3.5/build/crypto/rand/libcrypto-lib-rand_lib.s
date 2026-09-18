	.file	"rand_lib.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
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
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
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
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	ossl_check_const_CONF_VALUE_sk_type, @function
ossl_check_const_CONF_VALUE_sk_type:
.LFB403:
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
.LFE403:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.local	funct_ref
	.comm	funct_ref,8,8
	.local	rand_engine_lock
	.comm	rand_engine_lock,8,8
	.local	rand_meth_lock
	.comm	rand_meth_lock,8,8
	.local	default_RAND_meth
	.comm	default_RAND_meth,8,8
	.local	rand_init
	.comm	rand_init,4,4
	.local	rand_inited
	.comm	rand_inited,4,4
	.local	do_rand_init_ossl_ret_
	.comm	do_rand_init_ossl_ret_,4,4
	.type	do_rand_init_ossl_, @function
do_rand_init_ossl_:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	do_rand_init
	movl	%eax, do_rand_init_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	do_rand_init_ossl_, .-do_rand_init_ossl_
	.type	do_rand_init, @function
do_rand_init:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	CRYPTO_THREAD_lock_new@PLT
	movq	%rax, rand_engine_lock(%rip)
	movq	rand_engine_lock(%rip), %rax
	testq	%rax, %rax
	jne	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	call	CRYPTO_THREAD_lock_new@PLT
	movq	%rax, rand_meth_lock(%rip)
	movq	rand_meth_lock(%rip), %rax
	testq	%rax, %rax
	je	.L14
	call	ossl_rand_pool_init@PLT
	testl	%eax, %eax
	je	.L15
	movl	$1, rand_inited(%rip)
	movl	$1, %eax
	jmp	.L10
.L14:
	nop
	jmp	.L12
.L15:
	nop
.L12:
	movq	rand_meth_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	$0, rand_meth_lock(%rip)
	movq	rand_engine_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	$0, rand_engine_lock(%rip)
	movl	$0, %eax
.L10:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	do_rand_init, .-do_rand_init
	.globl	ossl_rand_cleanup_int
	.type	ossl_rand_cleanup_int, @function
ossl_rand_cleanup_int:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	default_RAND_meth(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	rand_inited(%rip), %eax
	testl	%eax, %eax
	je	.L20
	cmpq	$0, -8(%rbp)
	je	.L19
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L19
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	call	*%rax
.L19:
	movl	$0, %edi
	call	RAND_set_rand_method@PLT
	call	ossl_rand_pool_cleanup@PLT
	movq	rand_engine_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	$0, rand_engine_lock(%rip)
	movq	rand_meth_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	$0, rand_meth_lock(%rip)
	call	ossl_release_default_drbg_ctx@PLT
	movl	$0, rand_inited(%rip)
	jmp	.L16
.L20:
	nop
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	ossl_rand_cleanup_int, .-ossl_rand_cleanup_int
	.globl	RAND_keep_random_devices_open
	.type	RAND_keep_random_devices_open, @function
RAND_keep_random_devices_open:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	leaq	do_rand_init_ossl_(%rip), %rdx
	leaq	rand_init(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L23
	movl	do_rand_init_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	je	.L23
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ossl_rand_pool_keep_random_devices_open@PLT
.L23:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	RAND_keep_random_devices_open, .-RAND_keep_random_devices_open
	.globl	RAND_poll
	.type	RAND_poll, @function
RAND_poll:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	call	RAND_get_rand_method@PLT
	movq	%rax, -48(%rbp)
	call	RAND_OpenSSL@PLT
	cmpq	%rax, -48(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L25
	movl	$0, %eax
	jmp	.L26
.L25:
	cmpl	$0, -36(%rbp)
	jne	.L27
	movl	$12288, %ecx
	movl	$32, %edx
	movl	$1, %esi
	movl	$256, %edi
	call	ossl_rand_pool_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L28
	movl	$0, %eax
	jmp	.L26
.L28:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pool_acquire_entropy@PLT
	testq	%rax, %rax
	je	.L35
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-48(%rbp), %rax
	movq	24(%rax), %r12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_pool_entropy@PLT
	testq	%rax, %rax
	js	.L32
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L33
.L32:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L33:
	movsd	.LC0(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_pool_length@PLT
	movl	%eax, %r13d
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_pool_buffer@PLT
	movq	%rbx, %xmm0
	movl	%r13d, %esi
	movq	%rax, %rdi
	call	*%r12
	testl	%eax, %eax
	je	.L36
	movl	$1, -36(%rbp)
	jmp	.L30
.L35:
	nop
	jmp	.L30
.L36:
	nop
.L30:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_pool_free@PLT
	movl	-36(%rbp), %eax
	jmp	.L26
.L27:
	leaq	salt.9(%rip), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	RAND_seed@PLT
	movl	$1, %eax
.L26:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	RAND_poll, .-RAND_poll
	.type	rand_set_rand_method_internal, @function
rand_set_rand_method_internal:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	do_rand_init_ossl_(%rip), %rdx
	leaq	rand_init(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L38
	movl	do_rand_init_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L39
.L38:
	movl	$0, %eax
	jmp	.L40
.L39:
	movq	rand_meth_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L41
	movl	$0, %eax
	jmp	.L40
.L41:
	movq	funct_ref(%rip), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movq	-16(%rbp), %rax
	movq	%rax, funct_ref(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, default_RAND_meth(%rip)
	movq	rand_meth_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$1, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	rand_set_rand_method_internal, .-rand_set_rand_method_internal
	.globl	RAND_set_rand_method
	.type	RAND_set_rand_method, @function
RAND_set_rand_method:
.LFB521:
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
	call	rand_set_rand_method_internal
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	RAND_set_rand_method, .-RAND_set_rand_method
	.globl	RAND_get_rand_method
	.type	RAND_get_rand_method, @function
RAND_get_rand_method:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	leaq	do_rand_init_ossl_(%rip), %rdx
	leaq	rand_init(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L45
	movl	do_rand_init_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L46
.L45:
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	rand_meth_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L48
	movl	$0, %eax
	jmp	.L47
.L48:
	movq	default_RAND_meth(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	rand_meth_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	cmpq	$0, -8(%rbp)
	je	.L49
	movq	-8(%rbp), %rax
	jmp	.L47
.L49:
	movq	rand_meth_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L50
	movl	$0, %eax
	jmp	.L47
.L50:
	movq	default_RAND_meth(%rip), %rax
	testq	%rax, %rax
	jne	.L51
	call	ENGINE_get_default_RAND@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L52
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_RAND@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L52
	movq	-16(%rbp), %rax
	movq	%rax, funct_ref(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, default_RAND_meth(%rip)
	jmp	.L51
.L52:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movq	ossl_rand_meth@GOTPCREL(%rip), %rax
	movq	%rax, default_RAND_meth(%rip)
.L51:
	movq	default_RAND_meth(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	rand_meth_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-8(%rbp), %rax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	RAND_get_rand_method, .-RAND_get_rand_method
	.globl	RAND_set_rand_engine
	.type	RAND_set_rand_engine, @function
RAND_set_rand_engine:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	leaq	do_rand_init_ossl_(%rip), %rdx
	leaq	rand_init(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L54
	movl	do_rand_init_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L55
.L54:
	movl	$0, %eax
	jmp	.L56
.L55:
	cmpq	$0, -24(%rbp)
	je	.L57
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_init@PLT
	testl	%eax, %eax
	jne	.L58
	movl	$0, %eax
	jmp	.L56
.L58:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_RAND@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L57
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movl	$0, %eax
	jmp	.L56
.L57:
	movq	rand_engine_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L59
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movl	$0, %eax
	jmp	.L56
.L59:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rand_set_rand_method_internal
	movq	rand_engine_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$1, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	RAND_set_rand_engine, .-RAND_set_rand_engine
	.globl	RAND_seed
	.type	RAND_seed, @function
RAND_seed:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	call	RAND_get_rand_method@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L61
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L61
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L60
.L61:
	movl	$0, %edi
	call	RAND_get0_primary@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L60
	cmpl	$0, -28(%rbp)
	jle	.L60
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_RAND_reseed@PLT
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	RAND_seed, .-RAND_seed
	.globl	RAND_add
	.type	RAND_add, @function
RAND_add:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	call	RAND_get_rand_method@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L64
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L64
	movq	-8(%rbp), %rax
	movq	24(%rax), %r8
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%r8
	jmp	.L63
.L64:
	movl	$0, %edi
	call	RAND_get0_primary@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L63
	cmpl	$0, -28(%rbp)
	jle	.L63
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_RAND_reseed@PLT
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	RAND_add, .-RAND_add
	.section	.rodata
.LC1:
	.string	"../crypto/rand/rand_lib.c"
	.text
	.globl	RAND_pseudo_bytes
	.type	RAND_pseudo_bytes, @function
RAND_pseudo_bytes:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	call	RAND_get_rand_method@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L67
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-8(%rbp), %rax
	movq	32(%rax), %rcx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L68
.L67:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$300, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	RAND_pseudo_bytes, .-RAND_pseudo_bytes
	.globl	RAND_status
	.type	RAND_status, @function
RAND_status:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	RAND_get_rand_method@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L70
	call	RAND_OpenSSL@PLT
	cmpq	%rax, -8(%rbp)
	je	.L70
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	call	*%rax
	jmp	.L73
.L71:
	movl	$0, %eax
	jmp	.L73
.L70:
	movl	$0, %edi
	call	RAND_get0_primary@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L74
	movl	$0, %eax
	jmp	.L73
.L74:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_get_state@PLT
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	RAND_status, .-RAND_status
	.globl	RAND_priv_bytes_ex
	.type	RAND_priv_bytes_ex, @function
RAND_priv_bytes_ex:
.LFB528:
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
	movl	%ecx, -44(%rbp)
	call	RAND_get_rand_method@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L76
	call	RAND_OpenSSL@PLT
	cmpq	%rax, -8(%rbp)
	je	.L76
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L77
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L78
.L77:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$344, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L78
.L76:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RAND_get0_private@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L79
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EVP_RAND_generate@PLT
	addq	$16, %rsp
	jmp	.L78
.L79:
	movl	$0, %eax
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	RAND_priv_bytes_ex, .-RAND_priv_bytes_ex
	.globl	RAND_priv_bytes
	.type	RAND_priv_bytes, @function
RAND_priv_bytes:
.LFB529:
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
	jns	.L81
	movl	$0, %eax
	jmp	.L82
.L81:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	RAND_priv_bytes_ex@PLT
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	RAND_priv_bytes, .-RAND_priv_bytes
	.globl	RAND_bytes_ex
	.type	RAND_bytes_ex, @function
RAND_bytes_ex:
.LFB530:
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
	movl	%ecx, -44(%rbp)
	call	RAND_get_rand_method@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L84
	call	RAND_OpenSSL@PLT
	cmpq	%rax, -8(%rbp)
	je	.L84
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L86
.L85:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$373, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L86
.L84:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RAND_get0_public@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L87
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EVP_RAND_generate@PLT
	addq	$16, %rsp
	jmp	.L86
.L87:
	movl	$0, %eax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	RAND_bytes_ex, .-RAND_bytes_ex
	.globl	RAND_bytes
	.type	RAND_bytes, @function
RAND_bytes:
.LFB531:
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
	jns	.L89
	movl	$0, %eax
	jmp	.L90
.L89:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	RAND_bytes_ex@PLT
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	RAND_bytes, .-RAND_bytes
	.globl	ossl_rand_ctx_new
	.type	ossl_rand_ctx_new, @function
ossl_rand_ctx_new:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$455, %edx
	movq	%rax, %rsi
	movl	$80, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L92
	movl	$0, %eax
	jmp	.L93
.L92:
	movl	$0, %esi
	movl	$262144, %edi
	call	OPENSSL_init_crypto@PLT
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L100
	movq	-8(%rbp), %rax
	addq	$28, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_init_local@PLT
	testl	%eax, %eax
	je	.L101
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_init_local@PLT
	testl	%eax, %eax
	je	.L102
	movq	-8(%rbp), %rax
	jmp	.L93
.L102:
	nop
.L98:
	movq	-8(%rbp), %rax
	addq	$28, %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_cleanup_local@PLT
	jmp	.L95
.L100:
	nop
	jmp	.L95
.L101:
	nop
.L95:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$484, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	ossl_rand_ctx_new, .-ossl_rand_ctx_new
	.globl	ossl_rand_ctx_free
	.type	ossl_rand_ctx_free, @function
ossl_rand_ctx_free:
.LFB533:
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
	cmpq	$0, -8(%rbp)
	je	.L106
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-8(%rbp), %rax
	addq	$28, %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_cleanup_local@PLT
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_cleanup_local@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$500, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$501, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$502, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$503, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$504, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$505, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$507, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L103
.L106:
	nop
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	ossl_rand_ctx_free, .-ossl_rand_ctx_free
	.type	rand_get_global, @function
rand_get_global:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	rand_get_global, .-rand_get_global
	.type	rand_delete_thread_state, @function
rand_delete_thread_state:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	rand_get_global
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L112
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_set_local@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_free@PLT
	movq	-16(%rbp), %rax
	addq	$28, %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	addq	$28, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_set_local@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_free@PLT
	jmp	.L109
.L112:
	nop
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	rand_delete_thread_state, .-rand_delete_thread_state
	.section	.rodata
.LC2:
	.string	"-fips"
.LC3:
	.string	"SEED-SRC"
	.text
	.type	rand_new_seed, @function
rand_new_seed:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	rand_get_global
	movq	%rax, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L114
	movl	$0, %eax
	jmp	.L115
.L114:
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L116
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L117
.L116:
	cmpq	$0, -16(%rbp)
	je	.L118
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L119
.L118:
	leaq	.LC2(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L120
.L119:
	movq	-16(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_parse_query@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L121
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$559, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$137, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L115
.L121:
	leaq	.LC2(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_parse_query@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L122
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$565, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L115
.L122:
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_property_merge@PLT
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	cmpq	$0, -40(%rbp)
	jne	.L123
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$572, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L115
.L123:
	movq	-40(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_property_list_to_string@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L124
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$578, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L125
.L124:
	leaq	.LC1(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$581, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L126
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$583, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786688, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L125
.L126:
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_list_to_string@PLT
	testq	%rax, %rax
	jne	.L127
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$588, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L125
.L127:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movq	$0, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
.L120:
	leaq	.LC3(%rip), %rax
	movq	%rax, -24(%rbp)
.L117:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_fetch@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L128
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$601, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$144, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L125
.L128:
	movq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_RAND_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_free@PLT
	cmpq	$0, -8(%rbp)
	jne	.L129
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$607, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L125
.L129:
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_RAND_instantiate@PLT
	testl	%eax, %eax
	jne	.L130
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$611, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L125
.L130:
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$614, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	jmp	.L115
.L125:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$619, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	rand_new_seed, .-rand_new_seed
	.globl	ossl_rand_get0_seed_noncreating
	.type	ossl_rand_get0_seed_noncreating, @function
ossl_rand_get0_seed_noncreating:
.LFB537:
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
	call	rand_get_global
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L132
	movl	$0, %eax
	jmp	.L133
.L132:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L134
	movl	$0, %eax
	jmp	.L133
.L134:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-16(%rbp), %rax
.L133:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	ossl_rand_get0_seed_noncreating, .-ossl_rand_get0_seed_noncreating
	.section	.rodata
.LC4:
	.string	"CTR-DRBG"
.LC5:
	.string	"cipher"
.LC6:
	.string	"AES-256-CTR"
.LC7:
	.string	"digest"
.LC8:
	.string	"properties"
.LC9:
	.string	"mac"
.LC10:
	.string	"HMAC"
.LC11:
	.string	"use_derivation_function"
.LC12:
	.string	"reseed_requests"
.LC13:
	.string	"reseed_time_interval"
	.text
	.type	rand_new_drbg, @function
rand_new_drbg:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$472, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -408(%rbp)
	movq	%rsi, -416(%rbp)
	movl	%edx, -420(%rbp)
	movq	%rcx, -432(%rbp)
	movl	%r8d, -424(%rbp)
	movq	-408(%rbp), %rax
	movq	%rax, %rdi
	call	rand_get_global
	movq	%rax, -48(%rbp)
	leaq	-400(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L136
	movl	$0, %eax
	jmp	.L150
.L136:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L138
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L139
.L138:
	leaq	.LC4(%rip), %rax
	movq	%rax, -32(%rbp)
.L139:
	movq	-48(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-408(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_fetch@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L140
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$655, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$144, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L150
.L140:
	movq	-416(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_CTX_new@PLT
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_free@PLT
	cmpq	$0, -64(%rbp)
	jne	.L141
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$661, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L150
.L141:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_settable_params@PLT
	movq	%rax, -72(%rbp)
	leaq	.LC5(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	je	.L142
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L143
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L144
.L143:
	leaq	.LC6(%rip), %rax
	movq	%rax, -40(%rbp)
.L144:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-480(%rbp), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC5(%rip), %rsi
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
.L142:
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L145
	leaq	.LC7(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	je	.L145
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-480(%rbp), %rax
	leaq	.LC7(%rip), %rsi
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
.L145:
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L146
	movq	-48(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-480(%rbp), %rax
	leaq	.LC8(%rip), %rsi
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
.L146:
	leaq	.LC9(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	je	.L147
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-480(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC9(%rip), %rsi
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
.L147:
	leaq	.LC11(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	je	.L148
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-480(%rbp), %rax
	leaq	-424(%rbp), %rdx
	leaq	.LC11(%rip), %rcx
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
.L148:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-480(%rbp), %rax
	leaq	-420(%rbp), %rdx
	leaq	.LC12(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
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
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-480(%rbp), %rax
	leaq	-432(%rbp), %rdx
	leaq	.LC13(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_time_t@PLT
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
	movq	-24(%rbp), %rbx
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
	movq	-64(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_RAND_instantiate@PLT
	testl	%eax, %eax
	jne	.L149
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$688, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_free@PLT
	movl	$0, %eax
	jmp	.L150
.L149:
	movq	-64(%rbp), %rax
.L150:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	rand_new_drbg, .-rand_new_drbg
	.globl	RAND_get0_primary
	.type	RAND_get0_primary, @function
RAND_get0_primary:
.LFB539:
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
	call	rand_get_global
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L152
	movl	$0, %eax
	jmp	.L153
.L152:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L154
	movl	$0, %eax
	jmp	.L153
.L154:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	cmpq	$0, -8(%rbp)
	je	.L155
	movq	-8(%rbp), %rax
	jmp	.L153
.L155:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L156
	movl	$0, %eax
	jmp	.L153
.L156:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L157
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-8(%rbp), %rax
	jmp	.L153
.L157:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L158
	call	ERR_set_mark@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	rand_new_seed
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	call	ERR_pop_to_mark@PLT
.L158:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movl	$3600, %ecx
	movl	$256, %edx
	movq	%rax, %rdi
	call	rand_new_drbg
	movq	-16(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L159
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_enable_locking@PLT
	testl	%eax, %eax
	jne	.L159
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$742, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$212, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L159:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-8(%rbp), %rax
.L153:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	RAND_get0_primary, .-RAND_get0_primary
	.globl	RAND_get0_public
	.type	RAND_get0_public, @function
RAND_get0_public:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	rand_get_global
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L161
	movl	$0, %eax
	jmp	.L162
.L161:
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L163
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	RAND_get0_primary@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L164
	movl	$0, %eax
	jmp	.L162
.L164:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_concrete@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L165
	movl	$0, %eax
	jmp	.L162
.L165:
	movq	-16(%rbp), %rax
	addq	$28, %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	testq	%rax, %rax
	jne	.L166
	leaq	rand_delete_thread_state(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_init_thread_start@PLT
	testl	%eax, %eax
	jne	.L166
	movl	$0, %eax
	jmp	.L162
.L166:
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movl	$420, %ecx
	movl	$65536, %edx
	movq	%rax, %rdi
	call	rand_new_drbg
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_THREAD_set_local@PLT
.L163:
	movq	-8(%rbp), %rax
.L162:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	RAND_get0_public, .-RAND_get0_public
	.globl	RAND_get0_private
	.type	RAND_get0_private, @function
RAND_get0_private:
.LFB541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	rand_get_global
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L168
	movl	$0, %eax
	jmp	.L169
.L168:
	movq	-16(%rbp), %rax
	addq	$28, %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L170
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	RAND_get0_primary@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L171
	movl	$0, %eax
	jmp	.L169
.L171:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_concrete@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L172
	movl	$0, %eax
	jmp	.L169
.L172:
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	testq	%rax, %rax
	jne	.L173
	leaq	rand_delete_thread_state(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_init_thread_start@PLT
	testl	%eax, %eax
	jne	.L173
	movl	$0, %eax
	jmp	.L169
.L173:
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movl	$420, %ecx
	movl	$65536, %edx
	movq	%rax, %rdi
	call	rand_new_drbg
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	leaq	28(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_THREAD_set_local@PLT
.L170:
	movq	-8(%rbp), %rax
.L169:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	RAND_get0_private, .-RAND_get0_private
	.globl	RAND_set0_public
	.type	RAND_set0_public, @function
RAND_set0_public:
.LFB542:
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
	movq	%rax, %rdi
	call	rand_get_global
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L175
	movl	$0, %eax
	jmp	.L176
.L175:
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_THREAD_set_local@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L177
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_free@PLT
.L177:
	movl	-20(%rbp), %eax
.L176:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	RAND_set0_public, .-RAND_set0_public
	.globl	RAND_set0_private
	.type	RAND_set0_private, @function
RAND_set0_private:
.LFB543:
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
	movq	%rax, %rdi
	call	rand_get_global
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L179
	movl	$0, %eax
	jmp	.L180
.L179:
	movq	-8(%rbp), %rax
	addq	$28, %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	28(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_THREAD_set_local@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L181
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_free@PLT
.L181:
	movl	-20(%rbp), %eax
.L180:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	RAND_set0_private, .-RAND_set0_private
	.type	random_set_string, @function
random_set_string:
.LFB544:
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
	je	.L183
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$869, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L183
	movl	$0, %eax
	jmp	.L184
.L183:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$873, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	random_set_string, .-random_set_string
	.section	.rodata
.LC14:
	.string	"random"
.LC15:
	.string	"seed"
.LC16:
	.string	"seed_properties"
.LC17:
	.string	"name=%s, value=%s"
	.text
	.type	random_conf_init, @function
random_conf_init:
.LFB545:
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
	call	NCONF_get0_libctx@PLT
	movq	%rax, %rdi
	call	rand_get_global
	movq	%rax, -16(%rbp)
	movl	$1, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	CONF_imodule_get_value@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_section@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L186
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$894, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$119, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L187
.L186:
	cmpq	$0, -16(%rbp)
	jne	.L188
	movl	$0, %eax
	jmp	.L187
.L188:
	movl	$0, -4(%rbp)
	jmp	.L189
.L197:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L190
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	random_set_string
	testl	%eax, %eax
	jne	.L191
	movl	$0, %eax
	jmp	.L187
.L190:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L192
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	$40, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	random_set_string
	testl	%eax, %eax
	jne	.L191
	movl	$0, %eax
	jmp	.L187
.L192:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L193
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	$48, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	random_set_string
	testl	%eax, %eax
	jne	.L191
	movl	$0, %eax
	jmp	.L187
.L193:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L194
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	$56, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	random_set_string
	testl	%eax, %eax
	jne	.L191
	movl	$0, %eax
	jmp	.L187
.L194:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC15(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L195
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	$64, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	random_set_string
	testl	%eax, %eax
	jne	.L191
	movl	$0, %eax
	jmp	.L187
.L195:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC16(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L196
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	$72, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	random_set_string
	testl	%eax, %eax
	jne	.L191
	movl	$0, %eax
	jmp	.L187
.L196:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$922, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC17(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$120, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -8(%rbp)
.L191:
	addl	$1, -4(%rbp)
.L189:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L197
	movl	-8(%rbp), %eax
.L187:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	random_conf_init, .-random_conf_init
	.type	random_conf_deinit, @function
random_conf_deinit:
.LFB546:
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
.LFE546:
	.size	random_conf_deinit, .-random_conf_deinit
	.globl	ossl_random_add_conf_module
	.type	ossl_random_add_conf_module, @function
ossl_random_add_conf_module:
.LFB547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	random_conf_deinit(%rip), %rdx
	leaq	random_conf_init(%rip), %rcx
	leaq	.LC14(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CONF_module_add@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	ossl_random_add_conf_module, .-ossl_random_add_conf_module
	.globl	RAND_set_DRBG_type
	.type	RAND_set_DRBG_type, @function
RAND_set_DRBG_type:
.LFB548:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	rand_get_global
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L201
	movl	$0, %eax
	jmp	.L202
.L201:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L203
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$951, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L202
.L203:
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	random_set_string
	testl	%eax, %eax
	je	.L204
	movq	-8(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	random_set_string
	testl	%eax, %eax
	je	.L204
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	random_set_string
	testl	%eax, %eax
	je	.L204
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	random_set_string
	testl	%eax, %eax
	je	.L204
	movl	$1, %eax
	jmp	.L202
.L204:
	movl	$0, %eax
.L202:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	RAND_set_DRBG_type, .-RAND_set_DRBG_type
	.globl	RAND_set_seed_source_type
	.type	RAND_set_seed_source_type, @function
RAND_set_seed_source_type:
.LFB549:
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
	call	rand_get_global
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L207
	movl	$0, %eax
	jmp	.L208
.L207:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L209
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$968, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L208
.L209:
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	random_set_string
	testl	%eax, %eax
	je	.L210
	movq	-8(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	random_set_string
	testl	%eax, %eax
	je	.L210
	movl	$1, %eax
	jmp	.L208
.L210:
	movl	$0, %eax
.L208:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	RAND_set_seed_source_type, .-RAND_set_seed_source_type
	.section	.rodata
	.align 8
	.type	salt.9, @object
	.size	salt.9, 8
salt.9:
	.string	"polling"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 18
__func__.8:
	.string	"RAND_pseudo_bytes"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 19
__func__.7:
	.string	"RAND_priv_bytes_ex"
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 14
__func__.6:
	.string	"RAND_bytes_ex"
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 14
__func__.5:
	.string	"rand_new_seed"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 14
__func__.4:
	.string	"rand_new_drbg"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 18
__func__.3:
	.string	"RAND_get0_primary"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 17
__func__.2:
	.string	"random_conf_init"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 19
__func__.1:
	.string	"RAND_set_DRBG_type"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 26
__func__.0:
	.string	"RAND_set_seed_source_type"
	.align 8
.LC0:
	.long	0
	.long	1075838976
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

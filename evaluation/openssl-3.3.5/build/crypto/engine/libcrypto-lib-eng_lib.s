	.file	"eng_lib.c"
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
	jne	.L6
.L6:
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
	.type	sk_ENGINE_CLEANUP_ITEM_new_null, @function
sk_ENGINE_CLEANUP_ITEM_new_null:
.LFB523:
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
.LFE523:
	.size	sk_ENGINE_CLEANUP_ITEM_new_null, .-sk_ENGINE_CLEANUP_ITEM_new_null
	.type	sk_ENGINE_CLEANUP_ITEM_push, @function
sk_ENGINE_CLEANUP_ITEM_push:
.LFB530:
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
.LFE530:
	.size	sk_ENGINE_CLEANUP_ITEM_push, .-sk_ENGINE_CLEANUP_ITEM_push
	.type	sk_ENGINE_CLEANUP_ITEM_pop_free, @function
sk_ENGINE_CLEANUP_ITEM_pop_free:
.LFB534:
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
.LFE534:
	.size	sk_ENGINE_CLEANUP_ITEM_pop_free, .-sk_ENGINE_CLEANUP_ITEM_pop_free
	.type	sk_ENGINE_CLEANUP_ITEM_insert, @function
sk_ENGINE_CLEANUP_ITEM_insert:
.LFB535:
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
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_insert@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	sk_ENGINE_CLEANUP_ITEM_insert, .-sk_ENGINE_CLEANUP_ITEM_insert
	.type	lh_ENGINE_PILE_hfn_thunk, @function
lh_ENGINE_PILE_hfn_thunk:
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
.LFE570:
	.size	lh_ENGINE_PILE_hfn_thunk, .-lh_ENGINE_PILE_hfn_thunk
	.type	lh_ENGINE_PILE_cfn_thunk, @function
lh_ENGINE_PILE_cfn_thunk:
.LFB571:
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
.LFE571:
	.size	lh_ENGINE_PILE_cfn_thunk, .-lh_ENGINE_PILE_cfn_thunk
	.globl	global_engine_lock
	.bss
	.align 8
	.type	global_engine_lock, @object
	.size	global_engine_lock, 8
global_engine_lock:
	.zero	8
	.globl	engine_lock_init
	.align 4
	.type	engine_lock_init, @object
	.size	engine_lock_init, 4
engine_lock_init:
	.zero	4
	.globl	do_engine_lock_init_ossl_ret_
	.align 4
	.type	do_engine_lock_init_ossl_ret_, @object
	.size	do_engine_lock_init_ossl_ret_, 4
do_engine_lock_init_ossl_ret_:
	.zero	4
	.text
	.globl	do_engine_lock_init_ossl_
	.type	do_engine_lock_init_ossl_, @function
do_engine_lock_init_ossl_:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	do_engine_lock_init
	movq	do_engine_lock_init_ossl_ret_@GOTPCREL(%rip), %rdx
	movl	%eax, (%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	do_engine_lock_init_ossl_, .-do_engine_lock_init_ossl_
	.type	do_engine_lock_init, @function
do_engine_lock_init:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	CRYPTO_THREAD_lock_new@PLT
	movq	global_engine_lock@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	do_engine_lock_init, .-do_engine_lock_init
	.section	.rodata
.LC0:
	.string	"../crypto/engine/eng_lib.c"
	.text
	.globl	ENGINE_new
	.type	ENGINE_new, @function
ENGINE_new:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	do_engine_lock_init_ossl_@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	engine_lock_init@GOTPCREL(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L26
	movq	do_engine_lock_init_ossl_ret_@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L27
.L26:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$33, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L28
.L27:
	leaq	.LC0(%rip), %rax
	movl	$36, %edx
	movq	%rax, %rsi
	movl	$224, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L29
	movl	$0, %eax
	jmp	.L28
.L29:
	movq	-8(%rbp), %rax
	addq	$156, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	jne	.L30
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$39, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L28
.L30:
	movq	-8(%rbp), %rax
	leaq	168(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	CRYPTO_new_ex_data@PLT
	testl	%eax, %eax
	jne	.L31
	movq	-8(%rbp), %rax
	addq	$156, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$45, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L28
.L31:
	movq	-8(%rbp), %rax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	ENGINE_new, .-ENGINE_new
	.globl	engine_set_all_null
	.type	engine_set_all_null, @function
engine_set_all_null:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 144(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 152(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 216(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	engine_set_all_null, .-engine_set_all_null
	.globl	engine_free_util
	.type	engine_free_util, @function
engine_free_util:
.LFB591:
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
	jne	.L34
	movl	$1, %eax
	jmp	.L38
.L34:
	movq	-24(%rbp), %rax
	leaq	156(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jle	.L36
	movl	$1, %eax
	jmp	.L38
.L36:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	engine_pkey_meths_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	engine_pkey_asn1_meths_free@PLT
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L37:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	engine_remove_dynamic_id@PLT
	movq	-24(%rbp), %rax
	leaq	168(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	CRYPTO_free_ex_data@PLT
	movq	-24(%rbp), %rax
	addq	$156, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$100, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	engine_free_util, .-engine_free_util
	.globl	ENGINE_free
	.type	ENGINE_free, @function
ENGINE_free:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	engine_free_util@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	ENGINE_free, .-ENGINE_free
	.local	cleanup_stack
	.comm	cleanup_stack,8,8
	.type	int_cleanup_check, @function
int_cleanup_check:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	cleanup_stack(%rip), %rax
	testq	%rax, %rax
	je	.L42
	movl	$1, %eax
	jmp	.L43
.L42:
	cmpl	$0, -4(%rbp)
	jne	.L44
	movl	$0, %eax
	jmp	.L43
.L44:
	call	sk_ENGINE_CLEANUP_ITEM_new_null
	movq	%rax, cleanup_stack(%rip)
	movq	cleanup_stack(%rip), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	int_cleanup_check, .-int_cleanup_check
	.type	int_cleanup_item, @function
int_cleanup_item:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$132, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	int_cleanup_item, .-int_cleanup_item
	.globl	engine_cleanup_add_first
	.type	engine_cleanup_add_first, @function
engine_cleanup_add_first:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$1, %edi
	call	int_cleanup_check
	testl	%eax, %eax
	jne	.L49
	movl	$0, %eax
	jmp	.L50
.L49:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	int_cleanup_item
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L51
	movq	cleanup_stack(%rip), %rax
	movq	-8(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_ENGINE_CLEANUP_ITEM_insert
	testl	%eax, %eax
	je	.L52
	movl	$1, %eax
	jmp	.L50
.L52:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$148, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L51:
	movl	$0, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	engine_cleanup_add_first, .-engine_cleanup_add_first
	.globl	engine_cleanup_add_last
	.type	engine_cleanup_add_last, @function
engine_cleanup_add_last:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$1, %edi
	call	int_cleanup_check
	testl	%eax, %eax
	jne	.L54
	movl	$0, %eax
	jmp	.L55
.L54:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	int_cleanup_item
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L56
	movq	cleanup_stack(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_ENGINE_CLEANUP_ITEM_push
	testl	%eax, %eax
	jle	.L57
	movl	$1, %eax
	jmp	.L55
.L57:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$163, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L56:
	movl	$0, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	engine_cleanup_add_last, .-engine_cleanup_add_last
	.type	engine_cleanup_cb_free, @function
engine_cleanup_cb_free:
.LFB597:
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
	call	*%rax
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$172, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	engine_cleanup_cb_free, .-engine_cleanup_cb_free
	.globl	engine_cleanup_int
	.type	engine_cleanup_int, @function
engine_cleanup_int:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	int_cleanup_check
	testl	%eax, %eax
	je	.L60
	movq	cleanup_stack(%rip), %rax
	leaq	engine_cleanup_cb_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_ENGINE_CLEANUP_ITEM_pop_free
	movq	$0, cleanup_stack(%rip)
.L60:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	engine_cleanup_int, .-engine_cleanup_int
	.globl	ENGINE_set_ex_data
	.type	ENGINE_set_ex_data, @function
ENGINE_set_ex_data:
.LFB599:
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
	leaq	168(%rax), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	CRYPTO_set_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	ENGINE_set_ex_data, .-ENGINE_set_ex_data
	.globl	ENGINE_get_ex_data
	.type	ENGINE_get_ex_data, @function
ENGINE_get_ex_data:
.LFB600:
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
	leaq	168(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	CRYPTO_get_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	ENGINE_get_ex_data, .-ENGINE_get_ex_data
	.globl	ENGINE_set_id
	.type	ENGINE_set_id, @function
ENGINE_set_id:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L66
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$206, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L67
.L66:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	ENGINE_set_id, .-ENGINE_set_id
	.globl	ENGINE_set_name
	.type	ENGINE_set_name, @function
ENGINE_set_name:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L69
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$216, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L70
.L69:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	ENGINE_set_name, .-ENGINE_set_name
	.globl	ENGINE_set_destroy_function
	.type	ENGINE_set_destroy_function, @function
ENGINE_set_destroy_function:
.LFB603:
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
	movq	%rdx, 88(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	ENGINE_set_destroy_function, .-ENGINE_set_destroy_function
	.globl	ENGINE_set_init_function
	.type	ENGINE_set_init_function, @function
ENGINE_set_init_function:
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
	movq	%rdx, 96(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	ENGINE_set_init_function, .-ENGINE_set_init_function
	.globl	ENGINE_set_finish_function
	.type	ENGINE_set_finish_function, @function
ENGINE_set_finish_function:
.LFB605:
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
	movq	%rdx, 104(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	ENGINE_set_finish_function, .-ENGINE_set_finish_function
	.globl	ENGINE_set_ctrl_function
	.type	ENGINE_set_ctrl_function, @function
ENGINE_set_ctrl_function:
.LFB606:
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
	movq	%rdx, 112(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	ENGINE_set_ctrl_function, .-ENGINE_set_ctrl_function
	.globl	ENGINE_set_flags
	.type	ENGINE_set_flags, @function
ENGINE_set_flags:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 152(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	ENGINE_set_flags, .-ENGINE_set_flags
	.globl	ENGINE_set_cmd_defns
	.type	ENGINE_set_cmd_defns, @function
ENGINE_set_cmd_defns:
.LFB608:
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
	movq	%rdx, 144(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	ENGINE_set_cmd_defns, .-ENGINE_set_cmd_defns
	.globl	ENGINE_get_id
	.type	ENGINE_get_id, @function
ENGINE_get_id:
.LFB609:
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
.LFE609:
	.size	ENGINE_get_id, .-ENGINE_get_id
	.globl	ENGINE_get_name
	.type	ENGINE_get_name, @function
ENGINE_get_name:
.LFB610:
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
.LFE610:
	.size	ENGINE_get_name, .-ENGINE_get_name
	.globl	ENGINE_get_destroy_function
	.type	ENGINE_get_destroy_function, @function
ENGINE_get_destroy_function:
.LFB611:
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
.LFE611:
	.size	ENGINE_get_destroy_function, .-ENGINE_get_destroy_function
	.globl	ENGINE_get_init_function
	.type	ENGINE_get_init_function, @function
ENGINE_get_init_function:
.LFB612:
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
.LFE612:
	.size	ENGINE_get_init_function, .-ENGINE_get_init_function
	.globl	ENGINE_get_finish_function
	.type	ENGINE_get_finish_function, @function
ENGINE_get_finish_function:
.LFB613:
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
.LFE613:
	.size	ENGINE_get_finish_function, .-ENGINE_get_finish_function
	.globl	ENGINE_get_ctrl_function
	.type	ENGINE_get_ctrl_function, @function
ENGINE_get_ctrl_function:
.LFB614:
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
.LFE614:
	.size	ENGINE_get_ctrl_function, .-ENGINE_get_ctrl_function
	.globl	ENGINE_get_flags
	.type	ENGINE_get_flags, @function
ENGINE_get_flags:
.LFB615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	152(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	ENGINE_get_flags, .-ENGINE_get_flags
	.globl	ENGINE_get_cmd_defns
	.type	ENGINE_get_cmd_defns, @function
ENGINE_get_cmd_defns:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	ENGINE_get_cmd_defns, .-ENGINE_get_cmd_defns
	.local	internal_static_hack
	.comm	internal_static_hack,4,4
	.globl	ENGINE_get_static_state
	.type	ENGINE_get_static_state, @function
ENGINE_get_static_state:
.LFB617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	internal_static_hack(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	ENGINE_get_static_state, .-ENGINE_get_static_state
	.section	.rodata
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 11
__func__.2:
	.string	"ENGINE_new"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 14
__func__.1:
	.string	"ENGINE_set_id"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"ENGINE_set_name"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

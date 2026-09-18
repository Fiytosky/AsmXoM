	.file	"eng_init.c"
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
	.globl	engine_unlocked_init
	.type	engine_unlocked_init, @function
engine_unlocked_init:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	160(%rax), %eax
	testl	%eax, %eax
	jne	.L12
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L12
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
.L12:
	cmpl	$0, -4(%rbp)
	je	.L13
	movq	-24(%rbp), %rax
	leaq	156(%rax), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jne	.L14
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-24(%rbp), %rax
	movl	160(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 160(%rax)
.L13:
	movl	-4(%rbp), %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	engine_unlocked_init, .-engine_unlocked_init
	.section	.rodata
.LC0:
	.string	"../crypto/engine/eng_init.c"
	.text
	.globl	engine_unlocked_finish
	.type	engine_unlocked_finish, @function
engine_unlocked_finish:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	160(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 160(%rax)
	movq	-24(%rbp), %rax
	movl	160(%rax), %eax
	testl	%eax, %eax
	jne	.L17
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L17
	cmpl	$0, -28(%rbp)
	je	.L18
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L18:
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L19
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	cmpl	$0, -4(%rbp)
	jne	.L17
	movl	$0, %eax
	jmp	.L20
.L17:
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	engine_free_util@PLT
	testl	%eax, %eax
	jne	.L21
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$79, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L20
.L21:
	movl	-4(%rbp), %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	engine_unlocked_finish, .-engine_unlocked_finish
	.globl	ENGINE_init
	.type	ENGINE_init, @function
ENGINE_init:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L23
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$90, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	do_engine_lock_init_ossl_@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	engine_lock_init@GOTPCREL(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L25
	movq	do_engine_lock_init_ossl_ret_@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L26
.L25:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$95, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L24
.L26:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L27
	movl	$0, %eax
	jmp	.L24
.L27:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	engine_unlocked_init@PLT
	movl	%eax, -4(%rbp)
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-4(%rbp), %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	ENGINE_init, .-ENGINE_init
	.globl	ENGINE_finish
	.type	ENGINE_finish, @function
ENGINE_finish:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$1, -4(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L29
	movl	$1, %eax
	jmp	.L30
.L29:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L31
	movl	$0, %eax
	jmp	.L30
.L31:
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	engine_unlocked_finish@PLT
	movl	%eax, -4(%rbp)
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	cmpl	$0, -4(%rbp)
	jne	.L32
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$117, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L30
.L32:
	movl	-4(%rbp), %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	ENGINE_finish, .-ENGINE_finish
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 23
__func__.2:
	.string	"engine_unlocked_finish"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 12
__func__.1:
	.string	"ENGINE_init"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 14
__func__.0:
	.string	"ENGINE_finish"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

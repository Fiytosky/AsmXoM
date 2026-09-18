	.file	"eng_list.c"
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
	.local	engine_list_head
	.comm	engine_list_head,8,8
	.local	engine_list_tail
	.comm	engine_list_tail,8,8
	.local	engine_dyn_list_head
	.comm	engine_dyn_list_head,8,8
	.local	engine_dyn_list_tail
	.comm	engine_dyn_list_tail,8,8
	.type	engine_list_cleanup, @function
engine_list_cleanup:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	engine_list_head(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L15
.L16:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_remove@PLT
	movq	engine_list_head(%rip), %rax
	movq	%rax, -8(%rbp)
.L15:
	cmpq	$0, -8(%rbp)
	jne	.L16
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	engine_list_cleanup, .-engine_list_cleanup
	.section	.rodata
.LC0:
	.string	"../crypto/engine/eng_list.c"
	.text
	.type	engine_list_add, @function
engine_list_add:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L19
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L32
.L19:
	movq	engine_list_head(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L21
.L23:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -16(%rbp)
.L21:
	cmpq	$0, -16(%rbp)
	je	.L22
	cmpl	$0, -4(%rbp)
	je	.L23
.L22:
	cmpl	$0, -4(%rbp)
	je	.L24
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$73, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L32
.L24:
	movq	-40(%rbp), %rax
	leaq	156(%rax), %rdx
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jne	.L25
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$81, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L32
.L25:
	movq	engine_list_head(%rip), %rax
	testq	%rax, %rax
	jne	.L26
	movq	engine_list_tail(%rip), %rax
	testq	%rax, %rax
	je	.L27
	movq	-40(%rbp), %rax
	leaq	156(%rax), %rdx
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$89, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L32
.L27:
	leaq	engine_list_cleanup(%rip), %rax
	movq	%rax, %rdi
	call	engine_cleanup_add_last@PLT
	testl	%eax, %eax
	jne	.L28
	movq	-40(%rbp), %rax
	leaq	156(%rax), %rdx
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L32
.L28:
	movq	-40(%rbp), %rax
	movq	%rax, engine_list_head(%rip)
	movq	-40(%rbp), %rax
	movq	$0, 184(%rax)
	jmp	.L29
.L26:
	movq	engine_list_tail(%rip), %rax
	testq	%rax, %rax
	je	.L30
	movq	engine_list_tail(%rip), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L31
.L30:
	movq	-40(%rbp), %rax
	leaq	156(%rax), %rdx
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$106, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L32
.L31:
	movq	engine_list_tail(%rip), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 192(%rax)
	movq	engine_list_tail(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 184(%rax)
.L29:
	movq	-40(%rbp), %rax
	movq	%rax, engine_list_tail(%rip)
	movq	-40(%rbp), %rax
	movq	$0, 192(%rax)
	movl	$1, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	engine_list_add, .-engine_list_add
	.type	engine_list_remove, @function
engine_list_remove:
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
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$124, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L34:
	movq	engine_list_head(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L36
.L38:
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -8(%rbp)
.L36:
	cmpq	$0, -8(%rbp)
	je	.L37
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.L38
.L37:
	cmpq	$0, -8(%rbp)
	jne	.L39
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$132, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L39:
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L40
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	184(%rdx), %rdx
	movq	%rdx, 184(%rax)
.L40:
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	je	.L41
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	192(%rdx), %rdx
	movq	%rdx, 192(%rax)
.L41:
	movq	engine_list_head(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jne	.L42
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, engine_list_head(%rip)
.L42:
	movq	engine_list_tail(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jne	.L43
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, engine_list_tail(%rip)
.L43:
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	engine_free_util@PLT
	movl	$1, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	engine_list_remove, .-engine_list_remove
	.globl	engine_add_dynamic_id
	.type	engine_add_dynamic_id, @function
engine_add_dynamic_id:
.LFB590:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	jne	.L47
	cmpq	$0, -32(%rbp)
	jne	.L47
	movl	$0, %eax
	jmp	.L46
.L47:
	cmpl	$0, -36(%rbp)
	je	.L48
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L48
	movl	$0, %eax
	jmp	.L46
.L48:
	cmpq	$0, -32(%rbp)
	je	.L49
	movq	engine_dyn_list_head(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L50
.L53:
	movq	-16(%rbp), %rax
	movq	216(%rax), %rax
	cmpq	%rax, -32(%rbp)
	je	.L61
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -16(%rbp)
.L50:
	cmpq	$0, -16(%rbp)
	jne	.L53
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	jne	.L62
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 216(%rax)
.L49:
	movq	engine_dyn_list_head(%rip), %rax
	testq	%rax, %rax
	jne	.L55
	movq	engine_dyn_list_tail(%rip), %rax
	testq	%rax, %rax
	jne	.L63
	movq	-24(%rbp), %rax
	movq	%rax, engine_dyn_list_head(%rip)
	movq	-24(%rbp), %rax
	movq	$0, 200(%rax)
	jmp	.L57
.L55:
	movq	engine_dyn_list_tail(%rip), %rax
	testq	%rax, %rax
	je	.L64
	movq	engine_dyn_list_tail(%rip), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	jne	.L64
	movq	engine_dyn_list_tail(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 208(%rax)
	movq	engine_dyn_list_tail(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 200(%rax)
.L57:
	movq	-24(%rbp), %rax
	movq	%rax, engine_dyn_list_tail(%rip)
	movq	-24(%rbp), %rax
	movq	$0, 208(%rax)
	movl	$1, -4(%rbp)
	jmp	.L52
.L61:
	nop
	jmp	.L52
.L62:
	nop
	jmp	.L52
.L63:
	nop
	jmp	.L52
.L64:
	nop
.L52:
	cmpl	$0, -36(%rbp)
	je	.L60
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L60:
	movl	-4(%rbp), %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	engine_add_dynamic_id, .-engine_add_dynamic_id
	.globl	engine_remove_dynamic_id
	.type	engine_remove_dynamic_id, @function
engine_remove_dynamic_id:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L74
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	je	.L74
	cmpl	$0, -12(%rbp)
	je	.L69
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	je	.L75
.L69:
	movq	-8(%rbp), %rax
	movq	$0, 216(%rax)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.L70
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	200(%rdx), %rdx
	movq	%rdx, 200(%rax)
.L70:
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	movq	%rdx, 208(%rax)
.L71:
	movq	engine_dyn_list_head(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L72
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, engine_dyn_list_head(%rip)
.L72:
	movq	engine_dyn_list_tail(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L73
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, engine_dyn_list_tail(%rip)
.L73:
	cmpl	$0, -12(%rbp)
	je	.L65
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	jmp	.L65
.L74:
	nop
	jmp	.L65
.L75:
	nop
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	engine_remove_dynamic_id, .-engine_remove_dynamic_id
	.globl	ENGINE_get_first
	.type	ENGINE_get_first, @function
ENGINE_get_first:
.LFB592:
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
	je	.L77
	movq	do_engine_lock_init_ossl_ret_@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L78
.L77:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$235, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L79
.L78:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L80
	movl	$0, %eax
	jmp	.L79
.L80:
	movq	engine_list_head(%rip), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L81
	movq	-8(%rbp), %rax
	leaq	156(%rax), %rdx
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jne	.L81
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$247, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L79
.L81:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-8(%rbp), %rax
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	ENGINE_get_first, .-ENGINE_get_first
	.globl	ENGINE_get_last
	.type	ENGINE_get_last, @function
ENGINE_get_last:
.LFB593:
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
	je	.L84
	movq	do_engine_lock_init_ossl_ret_@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L85
.L84:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$262, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L86
.L85:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L87
	movl	$0, %eax
	jmp	.L86
.L87:
	movq	engine_list_tail(%rip), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L88
	movq	-8(%rbp), %rax
	leaq	156(%rax), %rdx
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jne	.L88
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$274, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L86
.L88:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-8(%rbp), %rax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	ENGINE_get_last, .-ENGINE_get_last
	.globl	ENGINE_get_next
	.type	ENGINE_get_next, @function
ENGINE_get_next:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L91
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$288, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L92
.L91:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L93
	movl	$0, %eax
	jmp	.L92
.L93:
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L94
	movq	-8(%rbp), %rax
	leaq	156(%rax), %rdx
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jne	.L94
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$300, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L92
.L94:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	movq	-8(%rbp), %rax
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	ENGINE_get_next, .-ENGINE_get_next
	.globl	ENGINE_get_prev
	.type	ENGINE_get_prev, @function
ENGINE_get_prev:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L97
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$315, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L98
.L97:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L99
	movl	$0, %eax
	jmp	.L98
.L99:
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L100
	movq	-8(%rbp), %rax
	leaq	156(%rax), %rdx
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jne	.L100
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$327, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L98
.L100:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	movq	-8(%rbp), %rax
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	ENGINE_get_prev, .-ENGINE_get_prev
	.globl	ENGINE_add
	.type	ENGINE_add, @function
ENGINE_add:
.LFB596:
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
	jne	.L103
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$343, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L104
.L103:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L105
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L106
.L105:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$347, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L104
.L106:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L107
	movl	$0, %eax
	jmp	.L104
.L107:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	engine_list_add
	testl	%eax, %eax
	jne	.L108
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$353, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
.L108:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-4(%rbp), %eax
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	ENGINE_add, .-ENGINE_add
	.globl	ENGINE_remove
	.type	ENGINE_remove, @function
ENGINE_remove:
.LFB597:
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
	jne	.L110
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$365, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L111
.L110:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L112
	movl	$0, %eax
	jmp	.L111
.L112:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	engine_list_remove
	testl	%eax, %eax
	jne	.L113
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$371, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
.L113:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-4(%rbp), %eax
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	ENGINE_remove, .-ENGINE_remove
	.type	engine_cpy, @function
engine_cpy:
.LFB598:
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
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 96(%rax)
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 104(%rax)
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 112(%rax)
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 128(%rax)
	movq	-16(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 144(%rax)
	movq	-16(%rbp), %rax
	movl	152(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 152(%rax)
	movq	-16(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 216(%rax)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	engine_add_dynamic_id@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	engine_cpy, .-engine_cpy
	.section	.rodata
.LC1:
	.string	"dynamic"
.LC2:
	.string	"OPENSSL_ENGINES"
	.align 8
.LC3:
	.string	"/root/AsmXoM/evaluation/openssl-3.3.5/build/lib64/engines-3"
.LC4:
	.string	"ID"
.LC5:
	.string	"2"
.LC6:
	.string	"DIR_LOAD"
.LC7:
	.string	"DIR_ADD"
.LC8:
	.string	"1"
.LC9:
	.string	"LIST_ADD"
.LC10:
	.string	"LOAD"
.LC11:
	.string	"id=%s"
	.text
	.globl	ENGINE_by_id
	.type	ENGINE_by_id, @function
ENGINE_by_id:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L116
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$413, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L117
.L116:
	call	ENGINE_load_builtin_engines@PLT
	movq	do_engine_lock_init_ossl_@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	engine_lock_init@GOTPCREL(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L118
	movq	do_engine_lock_init_ossl_ret_@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L119
.L118:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$420, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L117
.L119:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L120
	movl	$0, %eax
	jmp	.L117
.L120:
	movq	engine_list_head(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L121
.L123:
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -8(%rbp)
.L121:
	cmpq	$0, -8(%rbp)
	je	.L122
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L123
.L122:
	cmpq	$0, -8(%rbp)
	je	.L124
	movq	-8(%rbp), %rax
	movl	152(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L125
	call	ENGINE_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L126
	movq	$0, -8(%rbp)
	jmp	.L124
.L126:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	engine_cpy
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L124
.L125:
	movq	-8(%rbp), %rax
	leaq	156(%rax), %rdx
	leaq	-28(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jne	.L124
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$448, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L117
.L124:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	cmpq	$0, -8(%rbp)
	je	.L128
	movq	-8(%rbp), %rax
	jmp	.L117
.L128:
	leaq	.LC1(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L133
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	ossl_safe_getenv@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L130
	leaq	.LC3(%rip), %rax
	movq	%rax, -16(%rbp)
.L130:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	ENGINE_by_id.localalias
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L134
	movq	-40(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ENGINE_ctrl_cmd_string@PLT
	testl	%eax, %eax
	je	.L134
	leaq	.LC5(%rip), %rdx
	leaq	.LC6(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ENGINE_ctrl_cmd_string@PLT
	testl	%eax, %eax
	je	.L134
	movq	-16(%rbp), %rdx
	leaq	.LC7(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ENGINE_ctrl_cmd_string@PLT
	testl	%eax, %eax
	je	.L134
	leaq	.LC8(%rip), %rdx
	leaq	.LC9(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ENGINE_ctrl_cmd_string@PLT
	testl	%eax, %eax
	je	.L134
	leaq	.LC10(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ENGINE_ctrl_cmd_string@PLT
	testl	%eax, %eax
	je	.L134
	movq	-8(%rbp), %rax
	jmp	.L117
.L133:
	nop
	jmp	.L129
.L134:
	nop
.L129:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$475, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	movl	$116, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	ENGINE_by_id, .-ENGINE_by_id
	.set	ENGINE_by_id.localalias,ENGINE_by_id
	.globl	ENGINE_up_ref
	.type	ENGINE_up_ref, @function
ENGINE_up_ref:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L136
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$484, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L138
.L136:
	movq	-24(%rbp), %rax
	leaq	156(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	movl	$1, %eax
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	ENGINE_up_ref, .-ENGINE_up_ref
	.section	.rodata
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 16
__func__.9:
	.string	"engine_list_add"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 19
__func__.8:
	.string	"engine_list_remove"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 17
__func__.7:
	.string	"ENGINE_get_first"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 16
__func__.6:
	.string	"ENGINE_get_last"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 16
__func__.5:
	.string	"ENGINE_get_next"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 16
__func__.4:
	.string	"ENGINE_get_prev"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 11
__func__.3:
	.string	"ENGINE_add"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 14
__func__.2:
	.string	"ENGINE_remove"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 13
__func__.1:
	.string	"ENGINE_by_id"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 14
__func__.0:
	.string	"ENGINE_up_ref"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

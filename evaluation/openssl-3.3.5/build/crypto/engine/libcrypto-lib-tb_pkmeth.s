	.file	"tb_pkmeth.c"
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
	.local	pkey_meth_table
	.comm	pkey_meth_table,8,8
	.globl	ENGINE_unregister_pkey_meths
	.type	ENGINE_unregister_pkey_meths, @function
ENGINE_unregister_pkey_meths:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	pkey_meth_table(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	engine_table_unregister@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	ENGINE_unregister_pkey_meths, .-ENGINE_unregister_pkey_meths
	.type	engine_unregister_all_pkey_meths, @function
engine_unregister_all_pkey_meths:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	pkey_meth_table(%rip), %rax
	movq	%rax, %rdi
	call	engine_table_cleanup@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	engine_unregister_all_pkey_meths, .-engine_unregister_all_pkey_meths
	.globl	ENGINE_register_pkey_meths
	.type	ENGINE_register_pkey_meths, @function
ENGINE_register_pkey_meths:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L12
	movq	-24(%rbp), %rax
	movq	72(%rax), %r8
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L12
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	leaq	engine_unregister_all_pkey_meths(%rip), %rsi
	leaq	pkey_meth_table(%rip), %rdi
	movl	$0, %r9d
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	engine_table_register@PLT
	jmp	.L15
.L12:
	movl	$1, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	ENGINE_register_pkey_meths, .-ENGINE_register_pkey_meths
	.globl	ENGINE_register_all_pkey_meths
	.type	ENGINE_register_all_pkey_meths, @function
ENGINE_register_all_pkey_meths:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	ENGINE_get_first@PLT
	movq	%rax, -8(%rbp)
	jmp	.L17
.L18:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_register_pkey_meths@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_next@PLT
	movq	%rax, -8(%rbp)
.L17:
	cmpq	$0, -8(%rbp)
	jne	.L18
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	ENGINE_register_all_pkey_meths, .-ENGINE_register_all_pkey_meths
	.globl	ENGINE_set_default_pkey_meths
	.type	ENGINE_set_default_pkey_meths, @function
ENGINE_set_default_pkey_meths:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L20
	movq	-24(%rbp), %rax
	movq	72(%rax), %r8
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L20
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	leaq	engine_unregister_all_pkey_meths(%rip), %rsi
	leaq	pkey_meth_table(%rip), %rdi
	movl	$1, %r9d
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	engine_table_register@PLT
	jmp	.L23
.L20:
	movl	$1, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	ENGINE_set_default_pkey_meths, .-ENGINE_set_default_pkey_meths
	.section	.rodata
.LC0:
	.string	"../crypto/engine/tb_pkmeth.c"
	.text
	.globl	ENGINE_get_pkey_meth_engine
	.type	ENGINE_get_pkey_meth_engine, @function
ENGINE_get_pkey_meth_engine:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	leaq	.LC0(%rip), %rdx
	movl	-4(%rbp), %eax
	leaq	pkey_meth_table(%rip), %rdi
	movl	$70, %ecx
	movl	%eax, %esi
	call	ossl_engine_table_select@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	ENGINE_get_pkey_meth_engine, .-ENGINE_get_pkey_meth_engine
	.globl	ENGINE_get_pkey_meth
	.type	ENGINE_get_pkey_meth, @function
ENGINE_get_pkey_meth:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_pkey_meths@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L27
	movl	-28(%rbp), %edx
	leaq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %r8
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L28
.L27:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$79, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L30
.L28:
	movq	-16(%rbp), %rax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	ENGINE_get_pkey_meth, .-ENGINE_get_pkey_meth
	.globl	ENGINE_get_pkey_meths
	.type	ENGINE_get_pkey_meths, @function
ENGINE_get_pkey_meths:
.LFB594:
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
.LFE594:
	.size	ENGINE_get_pkey_meths, .-ENGINE_get_pkey_meths
	.globl	ENGINE_set_pkey_meths
	.type	ENGINE_set_pkey_meths, @function
ENGINE_set_pkey_meths:
.LFB595:
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
	movq	%rdx, 72(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	ENGINE_set_pkey_meths, .-ENGINE_set_pkey_meths
	.globl	engine_pkey_meths_free
	.type	engine_pkey_meths_free, @function
engine_pkey_meths_free:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L40
	movq	-40(%rbp), %rax
	movq	72(%rax), %r8
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L37
.L39:
	movq	-40(%rbp), %rax
	movq	72(%rax), %r8
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	leaq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L38
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_meth_free@PLT
.L38:
	addl	$1, -4(%rbp)
.L37:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L39
.L40:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	engine_pkey_meths_free, .-engine_pkey_meths_free
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"ENGINE_get_pkey_meth"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

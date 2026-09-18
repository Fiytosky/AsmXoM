	.file	"tb_rsa.c"
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
	.local	rsa_table
	.comm	rsa_table,8,8
	.section	.rodata
	.align 4
	.type	dummy_nid, @object
	.size	dummy_nid, 4
dummy_nid:
	.long	1
	.text
	.globl	ENGINE_unregister_RSA
	.type	ENGINE_unregister_RSA, @function
ENGINE_unregister_RSA:
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
	leaq	rsa_table(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	engine_table_unregister@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	ENGINE_unregister_RSA, .-ENGINE_unregister_RSA
	.type	engine_unregister_all_RSA, @function
engine_unregister_all_RSA:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	rsa_table(%rip), %rax
	movq	%rax, %rdi
	call	engine_table_cleanup@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	engine_unregister_all_RSA, .-engine_unregister_all_RSA
	.globl	ENGINE_register_RSA
	.type	ENGINE_register_RSA, @function
ENGINE_register_RSA:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L12
	leaq	dummy_nid(%rip), %rdx
	movq	-8(%rbp), %rax
	leaq	engine_unregister_all_RSA(%rip), %rsi
	leaq	rsa_table(%rip), %rdi
	movl	$0, %r9d
	movl	$1, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	engine_table_register@PLT
	jmp	.L13
.L12:
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	ENGINE_register_RSA, .-ENGINE_register_RSA
	.globl	ENGINE_register_all_RSA
	.type	ENGINE_register_all_RSA, @function
ENGINE_register_all_RSA:
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
	jmp	.L15
.L16:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_register_RSA@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_next@PLT
	movq	%rax, -8(%rbp)
.L15:
	cmpq	$0, -8(%rbp)
	jne	.L16
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	ENGINE_register_all_RSA, .-ENGINE_register_all_RSA
	.globl	ENGINE_set_default_RSA
	.type	ENGINE_set_default_RSA, @function
ENGINE_set_default_RSA:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L18
	leaq	dummy_nid(%rip), %rdx
	movq	-8(%rbp), %rax
	leaq	engine_unregister_all_RSA(%rip), %rsi
	leaq	rsa_table(%rip), %rdi
	movl	$1, %r9d
	movl	$1, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	engine_table_register@PLT
	jmp	.L19
.L18:
	movl	$1, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	ENGINE_set_default_RSA, .-ENGINE_set_default_RSA
	.section	.rodata
.LC0:
	.string	"../crypto/engine/tb_rsa.c"
	.text
	.globl	ENGINE_get_default_RSA
	.type	ENGINE_get_default_RSA, @function
ENGINE_get_default_RSA:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %esi
	leaq	.LC0(%rip), %rdx
	leaq	rsa_table(%rip), %rax
	movl	$62, %ecx
	movq	%rax, %rdi
	call	ossl_engine_table_select@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	ENGINE_get_default_RSA, .-ENGINE_get_default_RSA
	.globl	ENGINE_get_RSA
	.type	ENGINE_get_RSA, @function
ENGINE_get_RSA:
.LFB593:
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
.LFE593:
	.size	ENGINE_get_RSA, .-ENGINE_get_RSA
	.globl	ENGINE_set_RSA
	.type	ENGINE_set_RSA, @function
ENGINE_set_RSA:
.LFB594:
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
	movq	%rdx, 16(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	ENGINE_set_RSA, .-ENGINE_set_RSA
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

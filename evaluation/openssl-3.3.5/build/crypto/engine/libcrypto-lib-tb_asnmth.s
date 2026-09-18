	.file	"tb_asnmth.c"
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
	.type	sk_ENGINE_num, @function
sk_ENGINE_num:
.LFB545:
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
.LFE545:
	.size	sk_ENGINE_num, .-sk_ENGINE_num
	.type	sk_ENGINE_value, @function
sk_ENGINE_value:
.LFB546:
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
.LFE546:
	.size	sk_ENGINE_value, .-sk_ENGINE_value
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
	.local	pkey_asn1_meth_table
	.comm	pkey_asn1_meth_table,8,8
	.globl	ENGINE_unregister_pkey_asn1_meths
	.type	ENGINE_unregister_pkey_asn1_meths, @function
ENGINE_unregister_pkey_asn1_meths:
.LFB612:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	pkey_asn1_meth_table(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	engine_table_unregister@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	ENGINE_unregister_pkey_asn1_meths, .-ENGINE_unregister_pkey_asn1_meths
	.type	engine_unregister_all_pkey_asn1_meths, @function
engine_unregister_all_pkey_asn1_meths:
.LFB613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	pkey_asn1_meth_table(%rip), %rax
	movq	%rax, %rdi
	call	engine_table_cleanup@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	engine_unregister_all_pkey_asn1_meths, .-engine_unregister_all_pkey_asn1_meths
	.globl	ENGINE_register_pkey_asn1_meths
	.type	ENGINE_register_pkey_asn1_meths, @function
ENGINE_register_pkey_asn1_meths:
.LFB614:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-24(%rbp), %rax
	movq	80(%rax), %r8
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L18
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	leaq	engine_unregister_all_pkey_asn1_meths(%rip), %rsi
	leaq	pkey_asn1_meth_table(%rip), %rdi
	movl	$0, %r9d
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	engine_table_register@PLT
	jmp	.L21
.L18:
	movl	$1, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	ENGINE_register_pkey_asn1_meths, .-ENGINE_register_pkey_asn1_meths
	.globl	ENGINE_register_all_pkey_asn1_meths
	.type	ENGINE_register_all_pkey_asn1_meths, @function
ENGINE_register_all_pkey_asn1_meths:
.LFB615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	ENGINE_get_first@PLT
	movq	%rax, -8(%rbp)
	jmp	.L23
.L24:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_register_pkey_asn1_meths@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_next@PLT
	movq	%rax, -8(%rbp)
.L23:
	cmpq	$0, -8(%rbp)
	jne	.L24
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	ENGINE_register_all_pkey_asn1_meths, .-ENGINE_register_all_pkey_asn1_meths
	.globl	ENGINE_set_default_pkey_asn1_meths
	.type	ENGINE_set_default_pkey_asn1_meths, @function
ENGINE_set_default_pkey_asn1_meths:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-24(%rbp), %rax
	movq	80(%rax), %r8
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L26
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	leaq	engine_unregister_all_pkey_asn1_meths(%rip), %rsi
	leaq	pkey_asn1_meth_table(%rip), %rdi
	movl	$1, %r9d
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	engine_table_register@PLT
	jmp	.L29
.L26:
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	ENGINE_set_default_pkey_asn1_meths, .-ENGINE_set_default_pkey_asn1_meths
	.section	.rodata
.LC0:
	.string	"../crypto/engine/tb_asnmth.c"
	.text
	.globl	ENGINE_get_pkey_asn1_meth_engine
	.type	ENGINE_get_pkey_asn1_meth_engine, @function
ENGINE_get_pkey_asn1_meth_engine:
.LFB617:
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
	leaq	pkey_asn1_meth_table(%rip), %rdi
	movl	$80, %ecx
	movl	%eax, %esi
	call	ossl_engine_table_select@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	ENGINE_get_pkey_asn1_meth_engine, .-ENGINE_get_pkey_asn1_meth_engine
	.globl	ENGINE_get_pkey_asn1_meth
	.type	ENGINE_get_pkey_asn1_meth, @function
ENGINE_get_pkey_asn1_meth:
.LFB618:
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
	call	ENGINE_get_pkey_asn1_meths@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L33
	movl	-28(%rbp), %edx
	leaq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %r8
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L34
.L33:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$92, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L36
.L34:
	movq	-16(%rbp), %rax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	ENGINE_get_pkey_asn1_meth, .-ENGINE_get_pkey_asn1_meth
	.globl	ENGINE_get_pkey_asn1_meths
	.type	ENGINE_get_pkey_asn1_meths, @function
ENGINE_get_pkey_asn1_meths:
.LFB619:
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
.LFE619:
	.size	ENGINE_get_pkey_asn1_meths, .-ENGINE_get_pkey_asn1_meths
	.globl	ENGINE_set_pkey_asn1_meths
	.type	ENGINE_set_pkey_asn1_meths, @function
ENGINE_set_pkey_asn1_meths:
.LFB620:
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
	movq	%rdx, 80(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	ENGINE_set_pkey_asn1_meths, .-ENGINE_set_pkey_asn1_meths
	.globl	engine_pkey_asn1_meths_free
	.type	engine_pkey_asn1_meths_free, @function
engine_pkey_asn1_meths_free:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L46
	movq	-40(%rbp), %rax
	movq	80(%rax), %r8
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L43
.L45:
	movq	-40(%rbp), %rax
	movq	80(%rax), %r8
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
	je	.L44
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_asn1_free@PLT
.L44:
	addl	$1, -4(%rbp)
.L43:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L45
.L46:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	engine_pkey_asn1_meths_free, .-engine_pkey_asn1_meths_free
	.globl	ENGINE_get_pkey_asn1_meth_str
	.type	ENGINE_get_pkey_asn1_meth_str, @function
ENGINE_get_pkey_asn1_meth_str:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L48
	movl	$0, %eax
	jmp	.L54
.L48:
	cmpl	$-1, -52(%rbp)
	jne	.L50
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -52(%rbp)
.L50:
	movq	-40(%rbp), %rax
	movq	80(%rax), %r8
	leaq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L51
.L53:
	movq	-40(%rbp), %rax
	movq	80(%rax), %r8
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	leaq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	*%r8
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L52
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpl	%eax, -52(%rbp)
	jne	.L52
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strncasecmp@PLT
	testl	%eax, %eax
	jne	.L52
	movq	-24(%rbp), %rax
	jmp	.L54
.L52:
	addl	$1, -4(%rbp)
.L51:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L53
	movl	$0, %eax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	ENGINE_get_pkey_asn1_meth_str, .-ENGINE_get_pkey_asn1_meth_str
	.type	look_str_cb, @function
look_str_cb:
.LFB623:
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
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L61
	movl	$0, -4(%rbp)
	jmp	.L58
.L60:
	movl	-4(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_ENGINE_value
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %r8
	movl	-36(%rbp), %edx
	leaq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	*%r8
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L59
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, %edx
	jne	.L59
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strncasecmp@PLT
	testl	%eax, %eax
	jne	.L59
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L55
.L59:
	addl	$1, -4(%rbp)
.L58:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	sk_ENGINE_num
	cmpl	%eax, -4(%rbp)
	jl	.L60
	jmp	.L55
.L61:
	nop
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	look_str_cb, .-look_str_cb
	.globl	ENGINE_pkey_asn1_find_str
	.type	ENGINE_pkey_asn1_find_str, @function
ENGINE_pkey_asn1_find_str:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -8(%rbp)
	movq	do_engine_lock_init_ossl_@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	engine_lock_init@GOTPCREL(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L63
	movq	do_engine_lock_init_ossl_ret_@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L64
.L63:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$200, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L69
.L64:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L66
	movl	$0, %eax
	jmp	.L69
.L66:
	movq	pkey_asn1_meth_table(%rip), %rax
	leaq	-32(%rbp), %rdx
	leaq	look_str_cb(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	engine_table_doall@PLT
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L67
	movq	-32(%rbp), %rax
	leaq	156(%rax), %rdx
	leaq	-36(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jne	.L67
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$213, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L69
.L67:
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-24(%rbp), %rax
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	ENGINE_pkey_asn1_find_str, .-ENGINE_pkey_asn1_find_str
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 26
__func__.1:
	.string	"ENGINE_get_pkey_asn1_meth"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 26
__func__.0:
	.string	"ENGINE_pkey_asn1_find_str"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

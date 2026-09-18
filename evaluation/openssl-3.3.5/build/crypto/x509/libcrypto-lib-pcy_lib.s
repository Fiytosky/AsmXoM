	.file	"pcy_lib.c"
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
	.type	ossl_check_const_X509_POLICY_NODE_sk_type, @function
ossl_check_const_X509_POLICY_NODE_sk_type:
.LFB576:
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
.LFE576:
	.size	ossl_check_const_X509_POLICY_NODE_sk_type, .-ossl_check_const_X509_POLICY_NODE_sk_type
	.globl	X509_policy_tree_level_count
	.type	X509_policy_tree_level_count, @function
X509_policy_tree_level_count:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
.L9:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	X509_policy_tree_level_count, .-X509_policy_tree_level_count
	.globl	X509_policy_tree_get0_level
	.type	X509_policy_tree_get0_level, @function
X509_policy_tree_get0_level:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L11
	cmpl	$0, -12(%rbp)
	js	.L11
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L12
.L11:
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
.L13:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	X509_policy_tree_get0_level, .-X509_policy_tree_get0_level
	.globl	X509_policy_tree_get0_policies
	.type	X509_policy_tree_get0_policies, @function
X509_policy_tree_get0_policies:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
.L16:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	X509_policy_tree_get0_policies, .-X509_policy_tree_get0_policies
	.globl	X509_policy_tree_get0_user_policies
	.type	X509_policy_tree_get0_user_policies, @function
X509_policy_tree_get0_user_policies:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L20
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	jmp	.L19
.L20:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
.L19:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	X509_policy_tree_get0_user_policies, .-X509_policy_tree_get0_user_policies
	.globl	X509_policy_level_node_count
	.type	X509_policy_level_node_count, @function
X509_policy_level_node_count:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L22
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L24
	movl	$1, -4(%rbp)
	jmp	.L25
.L24:
	movl	$0, -4(%rbp)
.L25:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_POLICY_NODE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	addl	%eax, -4(%rbp)
.L26:
	movl	-4(%rbp), %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	X509_policy_level_node_count, .-X509_policy_level_node_count
	.globl	X509_policy_level_get0_node
	.type	X509_policy_level_get0_node, @function
X509_policy_level_get0_node:
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
	cmpq	$0, -8(%rbp)
	jne	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L30
	cmpl	$0, -12(%rbp)
	jne	.L31
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L29
.L31:
	subl	$1, -12(%rbp)
.L30:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_POLICY_NODE_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	nop
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	X509_policy_level_get0_node, .-X509_policy_level_get0_node
	.globl	X509_policy_node_get0_policy
	.type	X509_policy_node_get0_policy, @function
X509_policy_node_get0_policy:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L33
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
.L34:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	X509_policy_node_get0_policy, .-X509_policy_node_get0_policy
	.globl	X509_policy_node_get0_qualifiers
	.type	X509_policy_node_get0_qualifiers, @function
X509_policy_node_get0_qualifiers:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L36
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
.L37:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	X509_policy_node_get0_qualifiers, .-X509_policy_node_get0_qualifiers
	.globl	X509_policy_node_get0_parent
	.type	X509_policy_node_get0_parent, @function
X509_policy_node_get0_parent:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L39
	movl	$0, %eax
	jmp	.L40
.L39:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L40:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	X509_policy_node_get0_parent, .-X509_policy_node_get0_parent
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"pcy_node.c"
	.text
	.type	ossl_check_const_ASN1_OBJECT_sk_type, @function
ossl_check_const_ASN1_OBJECT_sk_type:
.LFB55:
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
.LFE55:
	.size	ossl_check_const_ASN1_OBJECT_sk_type, .-ossl_check_const_ASN1_OBJECT_sk_type
	.type	ossl_check_X509_POLICY_NODE_type, @function
ossl_check_X509_POLICY_NODE_type:
.LFB515:
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
.LFE515:
	.size	ossl_check_X509_POLICY_NODE_type, .-ossl_check_X509_POLICY_NODE_type
	.type	ossl_check_const_X509_POLICY_NODE_sk_type, @function
ossl_check_const_X509_POLICY_NODE_sk_type:
.LFB516:
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
.LFE516:
	.size	ossl_check_const_X509_POLICY_NODE_sk_type, .-ossl_check_const_X509_POLICY_NODE_sk_type
	.type	ossl_check_X509_POLICY_NODE_sk_type, @function
ossl_check_X509_POLICY_NODE_sk_type:
.LFB517:
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
.LFE517:
	.size	ossl_check_X509_POLICY_NODE_sk_type, .-ossl_check_X509_POLICY_NODE_sk_type
	.type	ossl_check_X509_POLICY_NODE_compfunc_type, @function
ossl_check_X509_POLICY_NODE_compfunc_type:
.LFB518:
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
.LFE518:
	.size	ossl_check_X509_POLICY_NODE_compfunc_type, .-ossl_check_X509_POLICY_NODE_compfunc_type
	.type	sk_X509_POLICY_DATA_new_null, @function
sk_X509_POLICY_DATA_new_null:
.LFB576:
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
.LFE576:
	.size	sk_X509_POLICY_DATA_new_null, .-sk_X509_POLICY_DATA_new_null
	.type	sk_X509_POLICY_DATA_push, @function
sk_X509_POLICY_DATA_push:
.LFB583:
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
.LFE583:
	.size	sk_X509_POLICY_DATA_push, .-sk_X509_POLICY_DATA_push
	.type	node_cmp, @function
node_cmp:
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
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	node_cmp, .-node_cmp
	.globl	ossl_policy_node_cmp_new
	.type	ossl_policy_node_cmp_new, @function
ossl_policy_node_cmp_new:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	node_cmp(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_POLICY_NODE_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	ossl_policy_node_cmp_new, .-ossl_policy_node_cmp_new
	.globl	ossl_policy_tree_find_sk
	.type	ossl_policy_tree_find_sk, @function
ossl_policy_tree_find_sk:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_POLICY_NODE_type
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_POLICY_NODE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_find@PLT
	movl	%eax, -20(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_POLICY_NODE_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	ossl_policy_tree_find_sk, .-ossl_policy_tree_find_sk
	.globl	ossl_policy_level_find_node
	.type	ossl_policy_level_find_node, @function
ossl_policy_level_find_node:
.LFB601:
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
	movl	$0, -4(%rbp)
	jmp	.L22
.L25:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_POLICY_NODE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L23
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	testl	%eax, %eax
	jne	.L23
	movq	-16(%rbp), %rax
	jmp	.L24
.L23:
	addl	$1, -4(%rbp)
.L22:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_POLICY_NODE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L25
	movl	$0, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	ossl_policy_level_find_node, .-ossl_policy_level_find_node
	.section	.rodata
.LC0:
	.string	"../crypto/x509/pcy_node.c"
	.text
	.globl	ossl_policy_level_add_node
	.type	ossl_policy_level_add_node, @function
ossl_policy_level_add_node:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	leaq	.LC0(%rip), %rax
	movl	$71, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L29
	movl	$0, %eax
	jmp	.L28
.L29:
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	cmpq	$0, -40(%rbp)
	je	.L30
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$746, %eax
	jne	.L31
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L42
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L30
.L31:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L34
	call	ossl_policy_node_cmp_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L34:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L35
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$86, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L35:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_POLICY_NODE_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_POLICY_NODE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L30
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$90, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L30:
	cmpl	$0, -68(%rbp)
	je	.L36
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	call	sk_X509_POLICY_DATA_new_null
	movq	-64(%rbp), %rdx
	movq	%rax, 32(%rdx)
.L37:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L38
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$100, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L39
.L38:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_X509_POLICY_DATA_push
	testl	%eax, %eax
	jne	.L36
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L39
.L36:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -56(%rbp)
	je	.L40
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 16(%rax)
.L40:
	movq	-24(%rbp), %rax
	jmp	.L28
.L39:
	cmpq	$0, -40(%rbp)
	je	.L43
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jne	.L41
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
	jmp	.L33
.L41:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_POLICY_NODE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_pop@PLT
	jmp	.L33
.L42:
	nop
	jmp	.L33
.L43:
	nop
.L33:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_policy_node_free@PLT
	movl	$0, %eax
.L28:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	ossl_policy_level_add_node, .-ossl_policy_level_add_node
	.globl	ossl_policy_node_free
	.type	ossl_policy_node_free, @function
ossl_policy_node_free:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$130, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	ossl_policy_node_free, .-ossl_policy_node_free
	.globl	ossl_policy_node_match
	.type	ossl_policy_node_match, @function
ossl_policy_node_match:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L46
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L47
.L46:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	testl	%eax, %eax
	jne	.L48
	movl	$1, %eax
	jmp	.L49
.L48:
	movl	$0, %eax
	jmp	.L49
.L47:
	movl	$0, -4(%rbp)
	jmp	.L50
.L52:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	testl	%eax, %eax
	jne	.L51
	movl	$1, %eax
	jmp	.L49
.L51:
	addl	$1, -4(%rbp)
.L50:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L52
	movl	$0, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	ossl_policy_node_match, .-ossl_policy_node_match
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 27
__func__.0:
	.string	"ossl_policy_level_add_node"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

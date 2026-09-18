	.file	"pcy_tree.c"
	.text
	.type	ossl_check_const_ASN1_OBJECT_sk_type, @function
ossl_check_const_ASN1_OBJECT_sk_type:
.LFB58:
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
.LFE58:
	.size	ossl_check_const_ASN1_OBJECT_sk_type, .-ossl_check_const_ASN1_OBJECT_sk_type
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
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB409:
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
.LFE409:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_X509_POLICY_NODE_type, @function
ossl_check_X509_POLICY_NODE_type:
.LFB575:
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
.LFE575:
	.size	ossl_check_X509_POLICY_NODE_type, .-ossl_check_X509_POLICY_NODE_type
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
	.type	ossl_check_X509_POLICY_NODE_sk_type, @function
ossl_check_X509_POLICY_NODE_sk_type:
.LFB577:
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
.LFE577:
	.size	ossl_check_X509_POLICY_NODE_sk_type, .-ossl_check_X509_POLICY_NODE_sk_type
	.type	ossl_check_X509_POLICY_NODE_freefunc_type, @function
ossl_check_X509_POLICY_NODE_freefunc_type:
.LFB580:
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
.LFE580:
	.size	ossl_check_X509_POLICY_NODE_freefunc_type, .-ossl_check_X509_POLICY_NODE_freefunc_type
	.type	sk_X509_POLICY_DATA_num, @function
sk_X509_POLICY_DATA_num:
.LFB617:
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
.LFE617:
	.size	sk_X509_POLICY_DATA_num, .-sk_X509_POLICY_DATA_num
	.type	sk_X509_POLICY_DATA_value, @function
sk_X509_POLICY_DATA_value:
.LFB618:
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
.LFE618:
	.size	sk_X509_POLICY_DATA_value, .-sk_X509_POLICY_DATA_value
	.type	sk_X509_POLICY_DATA_pop_free, @function
sk_X509_POLICY_DATA_pop_free:
.LFB631:
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
.LFE631:
	.size	sk_X509_POLICY_DATA_pop_free, .-sk_X509_POLICY_DATA_pop_free
	.section	.rodata
.LC0:
	.string	"  Not Mapped\n"
.LC1:
	.string	"  Expected: "
.LC2:
	.string	", "
.LC3:
	.string	"\n"
	.text
	.type	expected_print, @function
expected_print:
.LFB642:
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
	movl	%ecx, -60(%rbp)
	movq	-48(%rbp), %rax
	movl	24(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L23
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L24
.L23:
	leaq	.LC0(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L25
.L24:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$0, -4(%rbp)
	jmp	.L26
.L28:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L27
	leaq	.LC2(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L27:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	addl	$1, -4(%rbp)
.L26:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L28
	leaq	.LC3(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	nop
.L25:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	expected_print, .-expected_print
	.section	.rodata
.LC4:
	.string	"Level print after %s\n"
.LC5:
	.string	"Printing Up to Level %ld\n"
.LC6:
	.string	"Level %ld, flags = %x\n"
.LC7:
	.string	"  Flags: %x\n"
	.text
	.type	tree_print, @function
tree_print:
.LFB643:
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
	movq	%rcx, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L30
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	jmp	.L31
.L30:
	addq	$32, -64(%rbp)
.L31:
	movq	-48(%rbp), %rdx
	leaq	.LC4(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-64(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$5, %rax
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L32
.L36:
	movq	-8(%rbp), %rax
	movl	24(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	sarq	$5, %rax
	movq	%rax, %rdi
	leaq	.LC6(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -12(%rbp)
	jmp	.L33
.L34:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_POLICY_NODE_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_POLICY_NODE_print@PLT
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	expected_print
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	leaq	.LC7(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -12(%rbp)
.L33:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_POLICY_NODE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -12(%rbp)
	jl	.L34
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L35
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_POLICY_NODE_print@PLT
.L35:
	addq	$32, -8(%rbp)
.L32:
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L36
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	tree_print, .-tree_print
	.section	.rodata
.LC8:
	.string	"../crypto/x509/pcy_tree.c"
	.text
	.type	tree_init, @function
tree_init:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	%edx, -132(%rbp)
	movq	$0, -40(%rbp)
	movl	$1, -12(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	subl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-132(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L38
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.L39
.L38:
	movl	$0, -16(%rbp)
.L39:
	movl	-132(%rbp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L40
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.L41
.L40:
	movl	$0, -20(%rbp)
.L41:
	movl	-132(%rbp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L42
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.L43
.L42:
	movl	$0, -24(%rbp)
.L43:
	movq	-120(%rbp), %rax
	movq	$0, (%rax)
	cmpl	$0, -44(%rbp)
	jne	.L44
	movl	$2, %eax
	jmp	.L45
.L44:
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.L46
.L48:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	X509_check_purpose@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_policy_cache_set@PLT
	testq	%rax, %rax
	jne	.L47
	movl	$0, %eax
	jmp	.L45
.L47:
	subl	$1, -28(%rbp)
.L46:
	cmpl	$0, -28(%rbp)
	jns	.L48
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.L49
.L55:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_extension_flags@PLT
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L50
	movl	$-1, %eax
	jmp	.L45
.L50:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_policy_cache_set@PLT
	movq	%rax, -72(%rbp)
	movl	-12(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L51
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L51
	movl	$2, -12(%rbp)
.L51:
	cmpl	$0, -16(%rbp)
	jle	.L52
	movl	-60(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L53
	subl	$1, -16(%rbp)
.L53:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	js	.L52
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	jge	.L52
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, -16(%rbp)
.L52:
	subl	$1, -28(%rbp)
.L49:
	cmpl	$0, -28(%rbp)
	js	.L54
	cmpl	$0, -16(%rbp)
	jg	.L55
	movl	-12(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L55
.L54:
	cmpl	$0, -16(%rbp)
	jne	.L56
	orl	$4, -12(%rbp)
.L56:
	movl	-12(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L57
	movl	-12(%rbp), %eax
	jmp	.L45
.L57:
	leaq	.LC8(%rip), %rax
	movl	$174, %edx
	movq	%rax, %rsi
	movl	$64, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L58
	movl	$0, %eax
	jmp	.L45
.L58:
	movq	-80(%rbp), %rax
	movq	$1000, 8(%rax)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$5, %rax
	leaq	.LC8(%rip), %rcx
	movl	$187, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L59
	leaq	.LC8(%rip), %rcx
	movq	-80(%rbp), %rax
	movl	$188, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L45
.L59:
	movl	-44(%rbp), %eax
	leal	1(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$746, %edi
	call	OBJ_nid2obj@PLT
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_policy_data_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L73
	movq	-80(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_policy_level_add_node@PLT
	testq	%rax, %rax
	jne	.L62
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_policy_data_free@PLT
	jmp	.L61
.L62:
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.L63
.L72:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_extension_flags@PLT
	movl	%eax, -92(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_policy_cache_set@PLT
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	addq	$32, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L64
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	orb	$2, %ah
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 24(%rax)
.L64:
	cmpl	$0, -20(%rbp)
	jne	.L65
	movl	-92(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L66
	cmpl	$0, -28(%rbp)
	jne	.L67
.L66:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	orb	$2, %ah
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 24(%rax)
	jmp	.L67
.L65:
	movl	-92(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L68
	subl	$1, -20(%rbp)
.L68:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	js	.L67
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	jge	.L67
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, -20(%rbp)
.L67:
	cmpl	$0, -24(%rbp)
	jne	.L69
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	orb	$4, %ah
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 24(%rax)
	jmp	.L70
.L69:
	movl	-92(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L71
	subl	$1, -24(%rbp)
.L71:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	js	.L70
	movq	-72(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	jge	.L70
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movl	%eax, -24(%rbp)
.L70:
	subl	$1, -28(%rbp)
.L63:
	cmpl	$0, -28(%rbp)
	jns	.L72
	movq	-120(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	jmp	.L45
.L73:
	nop
.L61:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_policy_tree_free@PLT
	movl	$0, %eax
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	tree_init, .-tree_init
	.type	tree_link_matching_nodes, @function
tree_link_matching_nodes:
.LFB645:
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
	movq	-40(%rbp), %rax
	subq	$32, %rax
	movq	%rax, -16(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L75
.L79:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_POLICY_NODE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_policy_node_match@PLT
	testl	%eax, %eax
	je	.L76
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_policy_level_add_node@PLT
	testq	%rax, %rax
	jne	.L77
	movl	$0, %eax
	jmp	.L78
.L77:
	movl	$1, -8(%rbp)
.L76:
	addl	$1, -4(%rbp)
.L75:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_POLICY_NODE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L79
	cmpl	$0, -8(%rbp)
	jne	.L80
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L80
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_policy_level_add_node@PLT
	testq	%rax, %rax
	jne	.L80
	movl	$0, %eax
	jmp	.L78
.L80:
	movl	$1, %eax
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	tree_link_matching_nodes, .-tree_link_matching_nodes
	.type	tree_link_nodes, @function
tree_link_nodes:
.LFB646:
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
	jmp	.L82
.L85:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_X509_POLICY_DATA_value
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tree_link_matching_nodes
	testl	%eax, %eax
	jne	.L83
	movl	$0, %eax
	jmp	.L84
.L83:
	addl	$1, -4(%rbp)
.L82:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_X509_POLICY_DATA_num
	cmpl	%eax, -4(%rbp)
	jl	.L85
	movl	$1, %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	tree_link_nodes, .-tree_link_nodes
	.type	tree_add_unmatched, @function
tree_add_unmatched:
.LFB647:
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
	cmpq	$0, -40(%rbp)
	jne	.L87
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.L87:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$16, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_policy_data_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L88
	movl	$0, %eax
	jmp	.L89
.L88:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	ossl_policy_level_add_node@PLT
	testq	%rax, %rax
	jne	.L90
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_policy_data_free@PLT
	movl	$0, %eax
	jmp	.L89
.L90:
	movl	$1, %eax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	tree_add_unmatched, .-tree_add_unmatched
	.type	tree_link_unmatched, @function
tree_link_unmatched:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-56(%rbp), %rax
	subq	$32, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L92
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L93
.L92:
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L94
	movl	$1, %eax
	jmp	.L95
.L94:
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	tree_add_unmatched
	testl	%eax, %eax
	jne	.L97
	movl	$0, %eax
	jmp	.L95
.L93:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movl	16(%rax), %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, %ebx
	jne	.L98
	movl	$1, %eax
	jmp	.L95
.L98:
	movl	$0, -20(%rbp)
	jmp	.L99
.L102:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_policy_level_find_node@PLT
	testq	%rax, %rax
	jne	.L103
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	tree_add_unmatched
	testl	%eax, %eax
	jne	.L101
	movl	$0, %eax
	jmp	.L95
.L103:
	nop
.L101:
	addl	$1, -20(%rbp)
.L99:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L102
.L97:
	movl	$1, %eax
.L95:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	tree_link_unmatched, .-tree_link_unmatched
	.type	tree_link_any, @function
tree_link_any:
.LFB649:
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
	movq	-40(%rbp), %rax
	subq	$32, %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L105
.L108:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_POLICY_NODE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	tree_link_unmatched
	testl	%eax, %eax
	jne	.L106
	movl	$0, %eax
	jmp	.L107
.L106:
	addl	$1, -4(%rbp)
.L105:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_POLICY_NODE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L108
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L109
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_policy_level_add_node@PLT
	testq	%rax, %rax
	jne	.L109
	movl	$0, %eax
	jmp	.L107
.L109:
	movl	$1, %eax
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	tree_link_any, .-tree_link_any
	.type	tree_prune, @function
tree_prune:
.LFB650:
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
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movl	24(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L124
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_POLICY_NODE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L112
.L114:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_POLICY_NODE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L113
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
	leaq	.LC8(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$415, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_POLICY_NODE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_delete@PLT
.L113:
	subl	$1, -4(%rbp)
.L112:
	cmpl	$0, -4(%rbp)
	jns	.L114
.L124:
	subq	$32, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_POLICY_NODE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L115
.L117:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_POLICY_NODE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L116
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
	leaq	.LC8(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$428, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_POLICY_NODE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_delete@PLT
.L116:
	subl	$1, -4(%rbp)
.L115:
	cmpl	$0, -4(%rbp)
	jns	.L117
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L118
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L118
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L119
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L119:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC8(%rip), %rcx
	movl	$435, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	movq	$0, 16(%rax)
.L118:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jne	.L124
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L125
	movl	$2, %eax
	jmp	.L122
.L125:
	nop
	movl	$1, %eax
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	tree_prune, .-tree_prune
	.type	tree_add_auth_node, @function
tree_add_auth_node:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L127
	call	ossl_policy_node_cmp_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L127
	movl	$0, %eax
	jmp	.L128
.L127:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_POLICY_NODE_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_POLICY_NODE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_find@PLT
	testl	%eax, %eax
	js	.L129
	movl	$1, %eax
	jmp	.L128
.L129:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_POLICY_NODE_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_POLICY_NODE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
.L128:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	tree_add_auth_node, .-tree_add_auth_node
	.type	tree_calculate_authority_set, @function
tree_calculate_authority_set:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	salq	$5, %rax
	subq	$32, %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L131
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$40, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	tree_add_auth_node
	testl	%eax, %eax
	jne	.L132
	movl	$0, %eax
	jmp	.L133
.L132:
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L134
.L131:
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -16(%rbp)
.L134:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L135
.L142:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L144
	addq	$32, -8(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L138
.L141:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_POLICY_NODE_sk_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L139
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tree_add_auth_node
	testl	%eax, %eax
	jne	.L139
	movq	-16(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L140
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_POLICY_NODE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
.L140:
	movl	$0, %eax
	jmp	.L133
.L139:
	addl	$1, -24(%rbp)
.L138:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_POLICY_NODE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -24(%rbp)
	jl	.L141
	addl	$1, -20(%rbp)
.L135:
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L142
	jmp	.L137
.L144:
	nop
.L137:
	movq	-16(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L143
	movl	$2, %eax
	jmp	.L133
.L143:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L133:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	tree_calculate_authority_set, .-tree_calculate_authority_set
	.type	tree_calculate_user_set, @function
tree_calculate_user_set:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L146
	movl	$1, %eax
	jmp	.L147
.L146:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	salq	$5, %rax
	subq	$32, %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L148
.L150:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$746, %eax
	jne	.L149
	movq	-72(%rbp), %rax
	movl	56(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 56(%rax)
	movl	$1, %eax
	jmp	.L147
.L149:
	addl	$1, -20(%rbp)
.L148:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L150
	movl	$0, -20(%rbp)
	jmp	.L151
.L157:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_policy_tree_find_sk@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L152
	cmpq	$0, -40(%rbp)
	je	.L158
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$16, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_policy_data_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L155
	movl	$0, %eax
	jmp	.L147
.L155:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-56(%rbp), %rax
	movl	$12, (%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_policy_level_add_node@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L152
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_policy_data_free@PLT
	movl	$0, %eax
	jmp	.L147
.L152:
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L156
	call	OPENSSL_sk_new_null@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L156
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	exnode_free
	movl	$0, %eax
	jmp	.L147
.L156:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_POLICY_NODE_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_POLICY_NODE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L154
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	exnode_free
	movl	$0, %eax
	jmp	.L147
.L158:
	nop
.L154:
	addl	$1, -20(%rbp)
.L151:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L157
	movl	$1, %eax
.L147:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	tree_calculate_user_set, .-tree_calculate_user_set
	.type	tree_evaluate, @function
tree_evaluate:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	addq	$32, %rax
	movq	%rax, -16(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L160
.L165:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_policy_cache_set@PLT
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tree_link_nodes
	testl	%eax, %eax
	jne	.L161
	movl	$0, %eax
	jmp	.L162
.L161:
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L163
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tree_link_any
	testl	%eax, %eax
	jne	.L163
	movl	$0, %eax
	jmp	.L162
.L163:
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tree_prune
	movl	%eax, -36(%rbp)
	cmpl	$1, -36(%rbp)
	je	.L164
	movl	-36(%rbp), %eax
	jmp	.L162
.L164:
	addl	$1, -4(%rbp)
	addq	$32, -16(%rbp)
.L160:
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L165
	movl	$1, %eax
.L162:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	tree_evaluate, .-tree_evaluate
	.type	exnode_free, @function
exnode_free:
.LFB655:
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
	testq	%rax, %rax
	je	.L168
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L168
	leaq	.LC8(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$623, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L168:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	exnode_free, .-exnode_free
	.globl	X509_policy_tree_free
	.type	X509_policy_tree_free, @function
X509_policy_tree_free:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L174
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_POLICY_NODE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	leaq	exnode_free(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_POLICY_NODE_freefunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_POLICY_NODE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, -28(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L172
.L173:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	ossl_policy_node_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_POLICY_NODE_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_POLICY_NODE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_policy_node_free@PLT
	addl	$1, -28(%rbp)
	addq	$32, -24(%rbp)
.L172:
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L173
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	ossl_policy_data_free@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_X509_POLICY_DATA_pop_free
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC8(%rip), %rcx
	movl	$644, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC8(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$645, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L169
.L174:
	nop
.L169:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	X509_policy_tree_free, .-X509_policy_tree_free
	.globl	X509_policy_check
	.type	X509_policy_check, @function
X509_policy_check:
.LFB657:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-64(%rbp), %rax
	movl	$0, (%rax)
	movl	-84(%rbp), %edx
	movq	-72(%rbp), %rcx
	leaq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tree_init
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L176
	movl	-4(%rbp), %eax
	jmp	.L188
.L176:
	movl	-4(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L178
	movl	-4(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L179
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_policy_tree_free@PLT
	movl	$1, %eax
	jmp	.L188
.L178:
	movq	-64(%rbp), %rax
	movl	$1, (%rax)
	movl	-4(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L179
	movl	$-2, %eax
	jmp	.L188
.L179:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	tree_evaluate
	movl	%eax, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpl	$0, -8(%rbp)
	jle	.L189
	cmpl	$2, -8(%rbp)
	jne	.L182
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_policy_tree_free@PLT
	movl	-4(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L183
	movl	$-2, %eax
	jmp	.L188
.L183:
	movl	$1, %eax
	jmp	.L188
.L182:
	movq	-40(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tree_calculate_authority_set
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L190
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_POLICY_NODE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_sort@PLT
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tree_calculate_user_set
	movl	%eax, -8(%rbp)
	cmpl	$2, -20(%rbp)
	jne	.L185
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_POLICY_NODE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
.L185:
	cmpl	$0, -8(%rbp)
	je	.L191
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L187
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_policy_tree_get0_user_policies@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_POLICY_NODE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L187
	movl	$-2, %eax
	jmp	.L188
.L187:
	movl	$1, %eax
	jmp	.L188
.L189:
	nop
	jmp	.L181
.L190:
	nop
	jmp	.L181
.L191:
	nop
.L181:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_policy_tree_free@PLT
	movl	$0, %eax
.L188:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	X509_policy_check, .-X509_policy_check
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

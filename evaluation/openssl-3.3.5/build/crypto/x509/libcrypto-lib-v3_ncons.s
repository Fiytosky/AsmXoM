	.file	"v3_ncons.c"
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
.LFB434:
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
.LFE434:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.type	ossl_check_const_GENERAL_NAME_sk_type, @function
ossl_check_const_GENERAL_NAME_sk_type:
.LFB553:
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
.LFE553:
	.size	ossl_check_const_GENERAL_NAME_sk_type, .-ossl_check_const_GENERAL_NAME_sk_type
	.type	ossl_check_GENERAL_SUBTREE_type, @function
ossl_check_GENERAL_SUBTREE_type:
.LFB594:
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
.LFE594:
	.size	ossl_check_GENERAL_SUBTREE_type, .-ossl_check_GENERAL_SUBTREE_type
	.type	ossl_check_const_GENERAL_SUBTREE_sk_type, @function
ossl_check_const_GENERAL_SUBTREE_sk_type:
.LFB595:
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
.LFE595:
	.size	ossl_check_const_GENERAL_SUBTREE_sk_type, .-ossl_check_const_GENERAL_SUBTREE_sk_type
	.type	ossl_check_GENERAL_SUBTREE_sk_type, @function
ossl_check_GENERAL_SUBTREE_sk_type:
.LFB596:
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
.LFE596:
	.size	ossl_check_GENERAL_SUBTREE_sk_type, .-ossl_check_GENERAL_SUBTREE_sk_type
	.type	safe_add_int, @function
safe_add_int:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, %ecx
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	jno	.L16
	movl	$1, %ecx
.L16:
	movl	%eax, -4(%rbp)
	movl	%ecx, %eax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L18
	movl	-4(%rbp), %eax
	jmp	.L22
.L18:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$0, -20(%rbp)
	jns	.L20
	movl	$-2147483648, %eax
	jmp	.L22
.L20:
	movl	$2147483647, %eax
.L22:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	safe_add_int, .-safe_add_int
	.globl	ossl_v3_name_constraints
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_v3_name_constraints, @object
	.size	ossl_v3_name_constraints, 104
ossl_v3_name_constraints:
	.long	666
	.long	0
	.quad	NAME_CONSTRAINTS_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	v2i_NAME_CONSTRAINTS
	.quad	i2r_NAME_CONSTRAINTS
	.quad	0
	.quad	0
	.section	.rodata
.LC0:
	.string	"base"
.LC1:
	.string	"minimum"
.LC2:
	.string	"maximum"
	.section	.data.rel.ro
	.align 32
	.type	GENERAL_SUBTREE_seq_tt, @object
	.size	GENERAL_SUBTREE_seq_tt, 120
GENERAL_SUBTREE_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	GENERAL_NAME_it
	.quad	137
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	ASN1_INTEGER_it
	.quad	137
	.quad	1
	.quad	16
	.quad	.LC2
	.quad	ASN1_INTEGER_it
	.text
	.globl	GENERAL_SUBTREE_it
	.type	GENERAL_SUBTREE_it, @function
GENERAL_SUBTREE_it:
.LFB662:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.2(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	GENERAL_SUBTREE_it, .-GENERAL_SUBTREE_it
	.section	.rodata
.LC3:
	.string	"permittedSubtrees"
.LC4:
	.string	"excludedSubtrees"
	.section	.data.rel.ro
	.align 32
	.type	NAME_CONSTRAINTS_seq_tt, @object
	.size	NAME_CONSTRAINTS_seq_tt, 80
NAME_CONSTRAINTS_seq_tt:
	.quad	141
	.quad	0
	.quad	0
	.quad	.LC3
	.quad	GENERAL_SUBTREE_it
	.quad	141
	.quad	1
	.quad	8
	.quad	.LC4
	.quad	GENERAL_SUBTREE_it
	.text
	.globl	NAME_CONSTRAINTS_it
	.type	NAME_CONSTRAINTS_it, @function
NAME_CONSTRAINTS_it:
.LFB663:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	NAME_CONSTRAINTS_it, .-NAME_CONSTRAINTS_it
	.globl	GENERAL_SUBTREE_new
	.type	GENERAL_SUBTREE_new, @function
GENERAL_SUBTREE_new:
.LFB664:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	GENERAL_SUBTREE_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	GENERAL_SUBTREE_new, .-GENERAL_SUBTREE_new
	.globl	GENERAL_SUBTREE_free
	.type	GENERAL_SUBTREE_free, @function
GENERAL_SUBTREE_free:
.LFB665:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	GENERAL_SUBTREE_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	GENERAL_SUBTREE_free, .-GENERAL_SUBTREE_free
	.globl	NAME_CONSTRAINTS_new
	.type	NAME_CONSTRAINTS_new, @function
NAME_CONSTRAINTS_new:
.LFB666:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	NAME_CONSTRAINTS_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	NAME_CONSTRAINTS_new, .-NAME_CONSTRAINTS_new
	.globl	NAME_CONSTRAINTS_free
	.type	NAME_CONSTRAINTS_free, @function
NAME_CONSTRAINTS_free:
.LFB667:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	NAME_CONSTRAINTS_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE667:
	.size	NAME_CONSTRAINTS_free, .-NAME_CONSTRAINTS_free
	.type	ia5memrchr, @function
ia5memrchr:
.LFB668:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L34
.L36:
	subl	$1, -4(%rbp)
.L34:
	cmpl	$0, -4(%rbp)
	jle	.L35
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -28(%rbp)
	jne	.L36
.L35:
	cmpl	$0, -4(%rbp)
	jne	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
.L38:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	ia5memrchr, .-ia5memrchr
	.type	ia5ncasecmp, @function
ia5ncasecmp:
.LFB669:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	jmp	.L40
.L47:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L41
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -2(%rbp)
	cmpb	$64, -1(%rbp)
	jbe	.L42
	cmpb	$90, -1(%rbp)
	ja	.L42
	addb	$32, -1(%rbp)
.L42:
	cmpb	$64, -2(%rbp)
	jbe	.L43
	cmpb	$90, -2(%rbp)
	ja	.L43
	addb	$32, -2(%rbp)
.L43:
	movzbl	-1(%rbp), %eax
	cmpb	-2(%rbp), %al
	je	.L48
	movzbl	-1(%rbp), %eax
	cmpb	-2(%rbp), %al
	jnb	.L45
	movl	$-1, %eax
	jmp	.L46
.L45:
	movl	$1, %eax
	jmp	.L46
.L48:
	nop
.L41:
	subq	$1, -40(%rbp)
	addq	$1, -24(%rbp)
	addq	$1, -32(%rbp)
.L40:
	cmpq	$0, -40(%rbp)
	jne	.L47
	movl	$0, %eax
.L46:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE669:
	.size	ia5ncasecmp, .-ia5ncasecmp
	.section	.rodata
.LC5:
	.string	"../crypto/x509/v3_ncons.c"
.LC6:
	.string	"permitted"
.LC7:
	.string	"excluded"
	.text
	.type	v2i_NAME_CONSTRAINTS, @function
v2i_NAME_CONSTRAINTS:
.LFB670:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	call	NAME_CONSTRAINTS_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$139, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L50:
	movl	$0, -20(%rbp)
	jmp	.L52
.L61:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC6(%rip), %rcx
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L53
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L53
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$10, %rax
	movq	%rax, -72(%rbp)
	jmp	.L54
.L53:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC7(%rip), %rcx
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L55
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L55
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$9, %rax
	movq	%rax, -72(%rbp)
	jmp	.L54
.L55:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$151, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L54:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	call	GENERAL_SUBTREE_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L56
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$157, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L56:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	-80(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movl	$1, %r8d
	movq	%rax, %rdi
	call	v2i_GENERAL_NAME_ex@PLT
	testq	%rax, %rax
	jne	.L57
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$161, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524322, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L57:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L58
	call	OPENSSL_sk_new_null@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
.L58:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L59
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_SUBTREE_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_SUBTREE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L60
.L59:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$167, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L60:
	movq	$0, -40(%rbp)
	addl	$1, -20(%rbp)
.L52:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L61
	movq	-48(%rbp), %rax
	jmp	.L63
.L51:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	NAME_CONSTRAINTS_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	GENERAL_SUBTREE_free@PLT
	movl	$0, %eax
.L63:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	v2i_NAME_CONSTRAINTS, .-v2i_NAME_CONSTRAINTS
	.section	.rodata
.LC8:
	.string	"Permitted"
.LC9:
	.string	"\n"
.LC10:
	.string	"Excluded"
	.text
	.type	i2r_NAME_CONSTRAINTS, @function
i2r_NAME_CONSTRAINTS:
.LFB671:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC8(%rip), %rdi
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	do_i2r_name_constraints
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L65
	leaq	.LC9(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L65:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	leaq	.LC10(%rip), %rdi
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	do_i2r_name_constraints
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	i2r_NAME_CONSTRAINTS, .-i2r_NAME_CONSTRAINTS
	.section	.rodata
.LC11:
	.string	""
.LC12:
	.string	"%*s%s:\n"
.LC13:
	.string	"%*s"
	.text
	.type	do_i2r_name_constraints, @function
do_i2r_name_constraints:
.LFB672:
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
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_SUBTREE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jle	.L68
	movq	-56(%rbp), %rdi
	leaq	.LC11(%rip), %rcx
	movl	-44(%rbp), %edx
	leaq	.LC12(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L68:
	movl	$0, -4(%rbp)
	jmp	.L69
.L73:
	cmpl	$0, -4(%rbp)
	jle	.L70
	leaq	.LC9(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L70:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_SUBTREE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movl	-44(%rbp), %eax
	leal	2(%rax), %edx
	leaq	.LC11(%rip), %rcx
	leaq	.LC13(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$7, %eax
	jne	.L71
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_nc_ipadd
	jmp	.L72
.L71:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GENERAL_NAME_print@PLT
.L72:
	addl	$1, -4(%rbp)
.L69:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_SUBTREE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L73
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	do_i2r_name_constraints, .-do_i2r_name_constraints
	.section	.rodata
.LC14:
	.string	"IP:%s/%s"
	.text
	.type	print_nc_ipadd, @function
print_nc_ipadd:
.LFB673:
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
	movl	(%rax), %eax
	cmpl	$15, %eax
	jg	.L76
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	$4, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, -4(%rbp)
	jmp	.L77
.L76:
	movl	$16, -4(%rbp)
.L77:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	subl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ipaddr_to_asc@PLT
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	ossl_ipaddr_to_asc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L78
	cmpq	$0, -24(%rbp)
	je	.L78
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	.LC14(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L78
	movl	$1, %eax
	jmp	.L79
.L78:
	movl	$0, %eax
.L79:
	movl	%eax, -28(%rbp)
	leaq	.LC5(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$226, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC5(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$227, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	print_nc_ipadd, .-print_nc_ipadd
	.type	add_lengths, @function
add_lengths:
.LFB674:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L82
	movl	$0, -28(%rbp)
.L82:
	cmpl	$0, -32(%rbp)
	jns	.L83
	movl	$0, -32(%rbp)
.L83:
	leaq	-4(%rbp), %rdx
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_add_int
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx)
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	add_lengths, .-add_lengths
	.globl	NAME_CONSTRAINTS_check
	.type	NAME_CONSTRAINTS_check, @function
NAME_CONSTRAINTS_check:
.LFB675:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_entry_count@PLT
	movl	%eax, %ecx
	leaq	-60(%rbp), %rax
	movl	%ebx, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	add_lengths
	testl	%eax, %eax
	je	.L86
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_SUBTREE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %ebx
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_SUBTREE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %ecx
	leaq	-64(%rbp), %rax
	movl	%ebx, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	add_lengths
	testl	%eax, %eax
	je	.L86
	movl	-60(%rbp), %eax
	testl	%eax, %eax
	jle	.L87
	movl	-60(%rbp), %ecx
	movl	$1048576, %eax
	cltd
	idivl	%ecx
	movl	%eax, %edx
	movl	-64(%rbp), %eax
	cmpl	%eax, %edx
	jge	.L87
.L86:
	movl	$1, %eax
	jmp	.L100
.L87:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_entry_count@PLT
	testl	%eax, %eax
	jle	.L89
	movl	$4, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	nc_match
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L90
	movl	-36(%rbp), %eax
	jmp	.L100
.L90:
	movl	$1, -80(%rbp)
	movl	$-1, -20(%rbp)
.L96:
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	X509_NAME_get_index_by_NID@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	je	.L101
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_NAME_get_entry@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_get_data@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$22, %eax
	je	.L94
	movl	$53, %eax
	jmp	.L100
.L94:
	movq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	nc_match
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L96
	movl	-36(%rbp), %eax
	jmp	.L100
.L101:
	nop
.L89:
	movl	$0, -20(%rbp)
	jmp	.L97
.L99:
	movq	-88(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-96(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	nc_match
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L98
	movl	-36(%rbp), %eax
	jmp	.L100
.L98:
	addl	$1, -20(%rbp)
.L97:
	movq	-88(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L99
	movl	$0, %eax
.L100:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	NAME_CONSTRAINTS_check, .-NAME_CONSTRAINTS_check
	.type	cn2dnsid, @function
cn2dnsid:
.LFB676:
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
	movl	$0, -12(%rbp)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_to_UTF8@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L105
	movl	$17, %eax
	jmp	.L121
.L107:
	subl	$1, -4(%rbp)
.L105:
	cmpl	$0, -4(%rbp)
	jle	.L106
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L107
.L106:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	testq	%rax, %rax
	je	.L108
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rcx
	movl	$363, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$53, %eax
	jmp	.L121
.L108:
	movl	$0, -8(%rbp)
	jmp	.L109
.L119:
	movq	-24(%rbp), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -13(%rbp)
	cmpb	$96, -13(%rbp)
	jbe	.L110
	cmpb	$122, -13(%rbp)
	jbe	.L122
.L110:
	cmpb	$64, -13(%rbp)
	jbe	.L112
	cmpb	$90, -13(%rbp)
	jbe	.L122
.L112:
	cmpb	$47, -13(%rbp)
	jbe	.L113
	cmpb	$57, -13(%rbp)
	jbe	.L122
.L113:
	cmpb	$95, -13(%rbp)
	je	.L122
	cmpl	$0, -8(%rbp)
	jle	.L116
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -8(%rbp)
	jge	.L116
	cmpb	$45, -13(%rbp)
	je	.L123
	cmpb	$46, -13(%rbp)
	jne	.L116
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L116
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L116
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L116
	movl	$1, -12(%rbp)
	jmp	.L115
.L116:
	movl	$0, -12(%rbp)
	jmp	.L118
.L122:
	nop
	jmp	.L115
.L123:
	nop
.L115:
	addl	$1, -8(%rbp)
.L109:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L119
.L118:
	cmpl	$0, -12(%rbp)
	je	.L120
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
	jmp	.L121
.L120:
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rcx
	movl	$411, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE676:
	.size	cn2dnsid, .-cn2dnsid
	.globl	NAME_CONSTRAINTS_check_CN
	.type	NAME_CONSTRAINTS_check_CN, @function
NAME_CONSTRAINTS_check_CN:
.LFB677:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -48(%rbp)
	movl	$22, -60(%rbp)
	movl	$2, -80(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$-1, -4(%rbp)
.L132:
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	$13, %esi
	movq	%rax, %rdi
	call	X509_NAME_get_index_by_NID@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L125
	movl	$0, %eax
	jmp	.L133
.L125:
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_NAME_get_entry@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_get_data@PLT
	movq	%rax, -32(%rbp)
	leaq	-96(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cn2dnsid
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L127
	movl	-36(%rbp), %eax
	jmp	.L133
.L127:
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	je	.L134
	movq	-96(%rbp), %rax
	movl	%eax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	nc_match
	movl	%eax, -36(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC5(%rip), %rcx
	movl	$453, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpl	$0, -36(%rbp)
	je	.L132
	movl	-36(%rbp), %eax
	jmp	.L133
.L134:
	nop
	jmp	.L132
.L133:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	NAME_CONSTRAINTS_check_CN, .-NAME_CONSTRAINTS_check_CN
	.type	nc_minmax_valid, @function
nc_minmax_valid:
.LFB678:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -16(%rbp)
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L136
	movl	$0, -4(%rbp)
.L136:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L137
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_to_BN@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L138
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L139
.L138:
	movl	$0, -4(%rbp)
.L139:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L137:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	nc_minmax_valid, .-nc_minmax_valid
	.type	nc_match, @function
nc_match:
.LFB679:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L142
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$1208, %eax
	jne	.L142
	movl	$1, -12(%rbp)
.L142:
	movl	$0, -4(%rbp)
	jmp	.L143
.L152:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_SUBTREE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L161
	cmpl	$0, -12(%rbp)
	jne	.L145
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	testl	%eax, %eax
	jne	.L161
.L145:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	nc_minmax_valid
	testl	%eax, %eax
	jne	.L147
	movl	$49, %eax
	jmp	.L148
.L147:
	cmpl	$2, -8(%rbp)
	je	.L162
	cmpl	$0, -8(%rbp)
	jne	.L150
	movl	$1, -8(%rbp)
.L150:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rcx
	movl	-12(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	nc_match_single
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L151
	movl	$2, -8(%rbp)
	jmp	.L146
.L151:
	cmpl	$47, -28(%rbp)
	je	.L146
	movl	-28(%rbp), %eax
	jmp	.L148
.L161:
	nop
	jmp	.L146
.L162:
	nop
.L146:
	addl	$1, -4(%rbp)
.L143:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_SUBTREE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L152
	cmpl	$1, -8(%rbp)
	jne	.L153
	movl	$47, %eax
	jmp	.L148
.L153:
	movl	$0, -4(%rbp)
	jmp	.L154
.L160:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_SUBTREE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L163
	cmpl	$0, -12(%rbp)
	jne	.L156
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	testl	%eax, %eax
	jne	.L163
.L156:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	nc_minmax_valid
	testl	%eax, %eax
	jne	.L158
	movl	$49, %eax
	jmp	.L148
.L158:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rcx
	movl	-12(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	nc_match_single
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L159
	movl	$48, %eax
	jmp	.L148
.L159:
	cmpl	$47, -28(%rbp)
	je	.L157
	movl	-28(%rbp), %eax
	jmp	.L148
.L163:
	nop
.L157:
	addl	$1, -4(%rbp)
.L154:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_SUBTREE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L160
	movl	$0, %eax
.L148:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE679:
	.size	nc_match, .-nc_match
	.type	nc_match_single, @function
nc_match_single:
.LFB680:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$7, %eax
	je	.L165
	cmpl	$7, %eax
	jg	.L166
	cmpl	$6, %eax
	je	.L167
	cmpl	$6, %eax
	jg	.L166
	cmpl	$4, %eax
	je	.L168
	cmpl	$4, %eax
	jg	.L166
	cmpl	$2, %eax
	je	.L169
	cmpl	$2, %eax
	jg	.L166
	testl	%eax, %eax
	je	.L170
	cmpl	$1, %eax
	je	.L171
	jmp	.L166
.L170:
	cmpl	$1, -4(%rbp)
	jne	.L172
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	nc_email_eai
	jmp	.L173
.L172:
	movl	$51, %eax
	jmp	.L173
.L168:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	nc_dn
	jmp	.L173
.L169:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	nc_dns
	jmp	.L173
.L171:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	nc_email
	jmp	.L173
.L167:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	nc_uri
	jmp	.L173
.L165:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	nc_ip
	jmp	.L173
.L166:
	movl	$51, %eax
.L173:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	nc_match_single, .-nc_match_single
	.type	nc_dn, @function
nc_dn:
.LFB681:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L175
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_X509_NAME@PLT
	testl	%eax, %eax
	jns	.L175
	movl	$17, %eax
	jmp	.L176
.L175:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L177
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_X509_NAME@PLT
	testl	%eax, %eax
	jns	.L177
	movl	$17, %eax
	jmp	.L176
.L177:
	movq	-16(%rbp), %rax
	movl	32(%rax), %edx
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	%eax, %edx
	jle	.L178
	movl	$47, %eax
	jmp	.L176
.L178:
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L179
	movl	$47, %eax
	jmp	.L176
.L179:
	movl	$0, %eax
.L176:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	nc_dn, .-nc_dn
	.type	nc_dns, @function
nc_dns:
.LFB682:
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
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L181
	movl	$0, %eax
	jmp	.L182
.L181:
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L183
	movl	$47, %eax
	jmp	.L182
.L183:
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L184
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movslq	%edx, %rax
	addq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L184
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L184
	movl	$47, %eax
	jmp	.L182
.L184:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ia5ncasecmp
	testl	%eax, %eax
	je	.L185
	movl	$47, %eax
	jmp	.L182
.L185:
	movl	$0, %eax
.L182:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	nc_dns, .-nc_dns
	.type	nc_email_eai, @function
nc_email_eai:
.LFB683:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$344, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -344(%rbp)
	movq	%rsi, -352(%rbp)
	movq	$0, -32(%rbp)
	movq	$256, -40(%rbp)
	movl	$0, -20(%rbp)
	movq	-352(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L187
	movq	-352(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-352(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	testq	%rax, %rax
	je	.L187
	movl	$53, %eax
	jmp	.L198
.L187:
	movq	-352(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rsi
	movq	-352(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC5(%rip), %rdx
	movl	$661, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L189
	movl	$17, %eax
	jmp	.L198
.L189:
	movq	-344(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$12, %eax
	je	.L190
	movl	$53, -20(%rbp)
	jmp	.L191
.L190:
	movq	-344(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	ia5memrchr
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L192
	movl	$53, -20(%rbp)
	jmp	.L191
.L192:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L193
	movb	$46, -336(%rbp)
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	leaq	-336(%rbp), %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_a2ulabel@PLT
	testl	%eax, %eax
	jg	.L194
	movl	$1, -20(%rbp)
	jmp	.L191
.L194:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rbx, %rax
	jnb	.L195
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	subq	%rax, %rbx
	movq	%rbx, %rdx
	addq	%rdx, -56(%rbp)
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx
	leaq	-336(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ia5ncasecmp
	testl	%eax, %eax
	je	.L199
.L195:
	movl	$47, -20(%rbp)
	jmp	.L191
.L193:
	movq	-40(%rbp), %rdx
	leaq	-336(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_a2ulabel@PLT
	testl	%eax, %eax
	jg	.L196
	movl	$1, -20(%rbp)
	jmp	.L191
.L196:
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	movq	%rax, -72(%rbp)
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, -72(%rbp)
	jne	.L197
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rcx
	leaq	-336(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ia5ncasecmp
	testl	%eax, %eax
	je	.L200
.L197:
	movl	$47, -20(%rbp)
	jmp	.L191
.L199:
	nop
	jmp	.L191
.L200:
	nop
.L191:
	leaq	.LC5(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$711, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
.L198:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	nc_email_eai, .-nc_email_eai
	.type	nc_email, @function
nc_email:
.LFB684:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	ia5memrchr
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	ia5memrchr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L202
	movl	$53, %eax
	jmp	.L203
.L202:
	cmpq	$0, -24(%rbp)
	jne	.L204
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L204
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L204
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L205
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movslq	%edx, %rax
	addq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ia5ncasecmp
	testl	%eax, %eax
	jne	.L205
	movl	$0, %eax
	jmp	.L203
.L205:
	movl	$47, %eax
	jmp	.L203
.L204:
	cmpq	$0, -24(%rbp)
	je	.L206
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.L207
	movq	-24(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	subq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L208
	movl	$47, %eax
	jmp	.L203
.L208:
	movq	-24(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	testq	%rax, %rax
	jne	.L209
	movq	-32(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	testq	%rax, %rax
	je	.L210
.L209:
	movl	$53, %eax
	jmp	.L203
.L210:
	movq	-32(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L207
	movl	$47, %eax
	jmp	.L203
.L207:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
.L206:
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L211
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ia5ncasecmp
	testl	%eax, %eax
	je	.L212
.L211:
	movl	$47, %eax
	jmp	.L203
.L212:
	movl	$0, %eax
.L203:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	nc_email, .-nc_email
	.type	nc_uri, @function
nc_uri:
.LFB685:
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
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L214
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	cmpq	$2, %rax
	jle	.L214
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L214
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L215
.L214:
	movl	$53, %eax
	jmp	.L216
.L215:
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L217
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	movq	%rax, -8(%rbp)
.L217:
	cmpq	$0, -8(%rbp)
	jne	.L218
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	subq	%rax, %rdx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -12(%rbp)
	jmp	.L219
.L218:
	movq	-8(%rbp), %rax
	subq	-32(%rbp), %rax
	movl	%eax, -12(%rbp)
.L219:
	cmpl	$0, -12(%rbp)
	jne	.L220
	movl	$53, %eax
	jmp	.L216
.L220:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L221
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L221
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L222
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ia5ncasecmp
	testl	%eax, %eax
	jne	.L222
	movl	$0, %eax
	jmp	.L216
.L222:
	movl	$47, %eax
	jmp	.L216
.L221:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L223
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ia5ncasecmp
	testl	%eax, %eax
	je	.L224
.L223:
	movl	$47, %eax
	jmp	.L216
.L224:
	movl	$0, %eax
.L216:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	nc_uri, .-nc_uri
	.type	nc_ip, @function
nc_ip:
.LFB686:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	cmpl	$4, -20(%rbp)
	je	.L226
	cmpl	$16, -20(%rbp)
	je	.L226
	movl	$53, %eax
	jmp	.L227
.L226:
	cmpl	$8, -36(%rbp)
	je	.L228
	cmpl	$32, -36(%rbp)
	je	.L228
	movl	$53, %eax
	jmp	.L227
.L228:
	movl	-20(%rbp), %eax
	addl	%eax, %eax
	cmpl	%eax, -36(%rbp)
	je	.L229
	movl	$47, %eax
	jmp	.L227
.L229:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L230
.L232:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	andl	%ecx, %eax
	testb	%al, %al
	je	.L231
	movl	$47, %eax
	jmp	.L227
.L231:
	addl	$1, -4(%rbp)
.L230:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L232
	movl	$0, %eax
.L227:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	nc_ip, .-nc_ip
	.section	.rodata
.LC15:
	.string	"GENERAL_SUBTREE"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	1
	.zero	7
	.quad	16
	.quad	GENERAL_SUBTREE_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC15
	.section	.rodata
.LC16:
	.string	"NAME_CONSTRAINTS"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	NAME_CONSTRAINTS_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC16
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"v2i_NAME_CONSTRAINTS"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

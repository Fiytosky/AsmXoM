	.file	"bn_sqrt.c"
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
	.section	.rodata
.LC0:
	.string	"../crypto/bn/bn_sqrt.c"
	.text
	.globl	BN_mod_sqrt
	.type	BN_mod_sqrt, @function
BN_mod_sqrt:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	movl	$0, -28(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	je	.L6
	movq	-120(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_abs_is_word@PLT
	testl	%eax, %eax
	je	.L7
.L6:
	movq	-120(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_abs_is_word@PLT
	testl	%eax, %eax
	je	.L8
	cmpq	$0, -8(%rbp)
	jne	.L9
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
.L9:
	cmpq	$0, -8(%rbp)
	je	.L86
	movq	-112(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	jne	.L12
	movq	-8(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.L13
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L13:
	movl	$0, %eax
	jmp	.L14
.L12:
	movq	-8(%rbp), %rax
	jmp	.L14
.L8:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$43, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L14
.L7:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L15
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	je	.L16
.L15:
	cmpq	$0, -8(%rbp)
	jne	.L17
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
.L17:
	cmpq	$0, -8(%rbp)
	je	.L87
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	jne	.L19
	movq	-8(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.L20
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L20:
	movl	$0, %eax
	jmp	.L14
.L19:
	movq	-8(%rbp), %rax
	jmp	.L14
.L16:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movl	$1, -28(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L88
	cmpq	$0, -8(%rbp)
	jne	.L22
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
.L22:
	cmpq	$0, -8(%rbp)
	je	.L89
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	je	.L90
	movl	$1, -16(%rbp)
	jmp	.L25
.L26:
	addl	$1, -16(%rbp)
.L25:
	movl	-16(%rbp), %edx
	movq	-120(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	je	.L26
	cmpl	$1, -16(%rbp)
	jne	.L27
	movq	-120(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_rshift@PLT
	testl	%eax, %eax
	je	.L91
	movq	-56(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	je	.L92
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	je	.L93
	movl	$0, -12(%rbp)
	jmp	.L31
.L27:
	cmpl	$2, -16(%rbp)
	jne	.L32
	movq	-120(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_mod_lshift1_quick@PLT
	testl	%eax, %eax
	je	.L94
	movq	-120(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_rshift@PLT
	testl	%eax, %eax
	je	.L95
	movq	-56(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	je	.L96
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sqr@PLT
	testl	%eax, %eax
	je	.L97
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L98
	movq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	je	.L99
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L100
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L101
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L102
	movl	$0, -12(%rbp)
	jmp	.L31
.L32:
	movq	-120(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L103
	movq	-56(%rbp), %rax
	movl	$0, 16(%rax)
	movl	$2, -20(%rbp)
.L52:
	cmpl	$21, -20(%rbp)
	jg	.L43
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	jne	.L44
	jmp	.L11
.L43:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %esi
	movq	-128(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_ex@PLT
	testl	%eax, %eax
	je	.L104
	movq	-120(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	js	.L46
	movq	-120(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L47
	movq	BN_add@GOTPCREL(%rip), %rax
	movq	%rax, %r8
	jmp	.L48
.L47:
	movq	BN_sub@GOTPCREL(%rip), %rax
	movq	%rax, %r8
.L48:
	movq	-120(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L105
.L46:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L44
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L106
.L44:
	movq	-128(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_kronecker@PLT
	movl	%eax, -84(%rbp)
	cmpl	$-1, -84(%rbp)
	jl	.L107
	cmpl	$0, -84(%rbp)
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$203, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L11
.L50:
	cmpl	$1, -84(%rbp)
	jne	.L51
	addl	$1, -20(%rbp)
	cmpl	$81, -20(%rbp)
	jle	.L52
.L51:
	cmpl	$-1, -84(%rbp)
	je	.L53
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$215, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L11
.L53:
	movl	-16(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_rshift@PLT
	testl	%eax, %eax
	je	.L108
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	je	.L109
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	je	.L56
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$230, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L11
.L56:
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_rshift1@PLT
	testl	%eax, %eax
	je	.L110
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L58
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	je	.L111
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L60
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$0, -12(%rbp)
	jmp	.L11
.L60:
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	jne	.L61
	jmp	.L11
.L58:
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	je	.L112
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L61
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$0, -12(%rbp)
	jmp	.L11
.L61:
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sqr@PLT
	testl	%eax, %eax
	je	.L113
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L114
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L115
.L65:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	je	.L66
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L116
	movl	$0, -12(%rbp)
	jmp	.L31
.L66:
	movl	$1, -20(%rbp)
	jmp	.L68
.L73:
	cmpl	$1, -20(%rbp)
	jne	.L69
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sqr@PLT
	testl	%eax, %eax
	jne	.L70
	jmp	.L11
.L69:
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L117
.L70:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	jne	.L118
	addl	$1, -20(%rbp)
.L68:
	movl	-20(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L73
	jmp	.L72
.L118:
	nop
.L72:
	movl	-20(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L74
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$322, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L11
.L74:
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L119
	movl	-16(%rbp), %eax
	subl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.L76
.L78:
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sqr@PLT
	testl	%eax, %eax
	je	.L120
	subl	$1, -24(%rbp)
.L76:
	cmpl	$0, -24(%rbp)
	jg	.L78
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L121
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L122
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L123
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.L65
.L31:
	cmpl	$0, -12(%rbp)
	jne	.L124
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sqr@PLT
	testl	%eax, %eax
	jne	.L82
	movl	$1, -12(%rbp)
.L82:
	cmpl	$0, -12(%rbp)
	jne	.L124
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L124
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$353, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$1, -12(%rbp)
	jmp	.L11
.L86:
	nop
	jmp	.L11
.L87:
	nop
	jmp	.L11
.L88:
	nop
	jmp	.L11
.L89:
	nop
	jmp	.L11
.L90:
	nop
	jmp	.L11
.L91:
	nop
	jmp	.L11
.L92:
	nop
	jmp	.L11
.L93:
	nop
	jmp	.L11
.L94:
	nop
	jmp	.L11
.L95:
	nop
	jmp	.L11
.L96:
	nop
	jmp	.L11
.L97:
	nop
	jmp	.L11
.L98:
	nop
	jmp	.L11
.L99:
	nop
	jmp	.L11
.L100:
	nop
	jmp	.L11
.L101:
	nop
	jmp	.L11
.L102:
	nop
	jmp	.L11
.L103:
	nop
	jmp	.L11
.L104:
	nop
	jmp	.L11
.L105:
	nop
	jmp	.L11
.L106:
	nop
	jmp	.L11
.L107:
	nop
	jmp	.L11
.L108:
	nop
	jmp	.L11
.L109:
	nop
	jmp	.L11
.L110:
	nop
	jmp	.L11
.L111:
	nop
	jmp	.L11
.L112:
	nop
	jmp	.L11
.L113:
	nop
	jmp	.L11
.L114:
	nop
	jmp	.L11
.L115:
	nop
	jmp	.L11
.L116:
	nop
	jmp	.L11
.L117:
	nop
	jmp	.L11
.L119:
	nop
	jmp	.L11
.L120:
	nop
	jmp	.L11
.L121:
	nop
	jmp	.L11
.L122:
	nop
	jmp	.L11
.L123:
	nop
	jmp	.L11
.L124:
	nop
.L11:
	cmpl	$0, -12(%rbp)
	je	.L83
	movq	-8(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.L84
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
.L84:
	movq	$0, -8(%rbp)
.L83:
	cmpl	$0, -28(%rbp)
	je	.L85
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
.L85:
	movq	-8(%rbp), %rax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	BN_mod_sqrt, .-BN_mod_sqrt
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 12
__func__.0:
	.string	"BN_mod_sqrt"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

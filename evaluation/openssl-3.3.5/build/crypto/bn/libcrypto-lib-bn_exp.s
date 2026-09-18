	.file	"bn_exp.c"
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
	.type	constant_time_msb, @function
constant_time_msb:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$31, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	constant_time_msb, .-constant_time_msb
	.type	constant_time_is_zero, @function
constant_time_is_zero:
.LFB176:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	notl	%eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, %edi
	call	constant_time_msb
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	constant_time_is_zero, .-constant_time_is_zero
	.type	constant_time_eq, @function
constant_time_eq:
.LFB181:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	movl	%eax, %edi
	call	constant_time_is_zero
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE181:
	.size	constant_time_eq, .-constant_time_eq
	.type	constant_time_eq_int, @function
constant_time_eq_int:
.LFB185:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_eq
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE185:
	.size	constant_time_eq_int, .-constant_time_eq_int
	.section	.rodata
.LC0:
	.string	"../crypto/bn/bn_exp.c"
	.text
	.globl	BN_exp
	.type	BN_exp, @function
BN_exp:
.LFB206:
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
	movl	$0, -8(%rbp)
	movq	-56(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	jne	.L14
	movq	-48(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	je	.L15
.L14:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$57, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L17
	movq	-40(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.L18
.L17:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	jmp	.L19
.L18:
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
.L19:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L31
	cmpq	$0, -24(%rbp)
	je	.L31
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L32
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -28(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	je	.L24
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L25
	jmp	.L22
.L24:
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L33
.L25:
	movl	$1, -4(%rbp)
	jmp	.L26
.L29:
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sqr@PLT
	testl	%eax, %eax
	je	.L34
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	je	.L28
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L35
.L28:
	addl	$1, -4(%rbp)
.L26:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L29
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L30
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L36
.L30:
	movl	$1, -8(%rbp)
	jmp	.L22
.L31:
	nop
	jmp	.L22
.L32:
	nop
	jmp	.L22
.L33:
	nop
	jmp	.L22
.L34:
	nop
	jmp	.L22
.L35:
	nop
	jmp	.L22
.L36:
	nop
.L22:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-8(%rbp), %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE206:
	.size	BN_exp, .-BN_exp
	.globl	BN_mod_exp
	.type	BN_mod_exp, @function
BN_mod_exp:
.LFB207:
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
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	je	.L38
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L39
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L39
	movq	-40(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	jne	.L39
	movq	-32(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	jne	.L39
	movq	-48(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	jne	.L39
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont_word@PLT
	movl	%eax, -4(%rbp)
	jmp	.L41
.L39:
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont@PLT
	movl	%eax, -4(%rbp)
	jmp	.L41
.L38:
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_recp@PLT
	movl	%eax, -4(%rbp)
.L41:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE207:
	.size	BN_mod_exp, .-BN_mod_exp
	.globl	BN_mod_exp_recp
	.type	BN_mod_exp_recp, @function
BN_mod_exp_recp:
.LFB208:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$432, %rsp
	movq	%rdi, -392(%rbp)
	movq	%rsi, -400(%rbp)
	movq	%rdx, -408(%rbp)
	movq	%rcx, -416(%rbp)
	movq	%r8, -424(%rbp)
	movl	$0, -8(%rbp)
	movl	$1, -24(%rbp)
	movq	-408(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	jne	.L44
	movq	-400(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	jne	.L44
	movq	-416(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	je	.L45
.L44:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$183, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L87
.L45:
	movq	-408(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.L47
	movq	-416(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_abs_is_word@PLT
	testl	%eax, %eax
	je	.L48
	movl	$1, -8(%rbp)
	movq	-392(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	jmp	.L49
.L48:
	movq	-392(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	movl	%eax, -8(%rbp)
.L49:
	movl	-8(%rbp), %eax
	jmp	.L87
.L47:
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	BN_RECP_CTX_init@PLT
	movq	-424(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-424(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-424(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	testq	%rax, %rax
	je	.L88
	movq	-416(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L52
	movq	-416(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L89
	movq	-40(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-424(%rbp), %rdx
	movq	-40(%rbp), %rcx
	leaq	-384(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_RECP_CTX_set@PLT
	testl	%eax, %eax
	jg	.L54
	jmp	.L51
.L52:
	movq	-424(%rbp), %rdx
	movq	-416(%rbp), %rcx
	leaq	-384(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_RECP_CTX_set@PLT
	testl	%eax, %eax
	jle	.L90
.L54:
	movq	-320(%rbp), %rax
	movq	-424(%rbp), %rcx
	movq	-416(%rbp), %rdx
	movq	-400(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	je	.L91
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L56
	movq	-392(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$1, -8(%rbp)
	jmp	.L51
.L56:
	cmpl	$671, -32(%rbp)
	jg	.L57
	cmpl	$239, -32(%rbp)
	jg	.L58
	cmpl	$79, -32(%rbp)
	jg	.L59
	cmpl	$23, -32(%rbp)
	jle	.L60
	movl	$3, -20(%rbp)
	jmp	.L61
.L60:
	movl	$1, -20(%rbp)
	jmp	.L61
.L59:
	movl	$4, -20(%rbp)
	jmp	.L61
.L58:
	movl	$5, -20(%rbp)
	jmp	.L61
.L57:
	movl	$6, -20(%rbp)
.L61:
	cmpl	$1, -20(%rbp)
	jle	.L62
	movq	-320(%rbp), %rdx
	movq	-320(%rbp), %rsi
	movq	-424(%rbp), %rdi
	leaq	-384(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_reciprocal@PLT
	testl	%eax, %eax
	je	.L92
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -44(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L64
.L67:
	movq	-424(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -320(%rbp,%rdx,8)
	movl	-4(%rbp), %eax
	cltq
	movq	-320(%rbp,%rax,8), %rax
	testq	%rax, %rax
	je	.L93
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cltq
	movq	-320(%rbp,%rax,8), %rsi
	movl	-4(%rbp), %eax
	cltq
	movq	-320(%rbp,%rax,8), %rax
	movq	-424(%rbp), %rdi
	leaq	-384(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_reciprocal@PLT
	testl	%eax, %eax
	je	.L93
	addl	$1, -4(%rbp)
.L64:
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L67
.L62:
	movl	$1, -24(%rbp)
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	$0, -16(%rbp)
	movq	-392(%rbp), %rax
	cmpq	-408(%rbp), %rax
	jne	.L68
	movq	-424(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L94
	movq	-408(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L94
	movq	-56(%rbp), %rax
	movq	%rax, -408(%rbp)
.L68:
	movq	-392(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L95
.L71:
	movl	-12(%rbp), %edx
	movq	-408(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	jne	.L72
	cmpl	$0, -24(%rbp)
	jne	.L73
	movq	-424(%rbp), %rdi
	leaq	-384(%rbp), %rcx
	movq	-392(%rbp), %rdx
	movq	-392(%rbp), %rsi
	movq	-392(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_reciprocal@PLT
	testl	%eax, %eax
	je	.L96
.L73:
	cmpl	$0, -12(%rbp)
	je	.L97
	subl	$1, -12(%rbp)
	jmp	.L76
.L72:
	movl	$1, -28(%rbp)
	movl	$0, -16(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L77
.L81:
	movl	-12(%rbp), %eax
	subl	-4(%rbp), %eax
	testl	%eax, %eax
	js	.L98
	movl	-12(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-408(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	je	.L80
	movl	-4(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, -28(%rbp)
	orl	$1, -28(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
.L80:
	addl	$1, -4(%rbp)
.L77:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L81
	jmp	.L79
.L98:
	nop
.L79:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.L82
	movl	$0, -4(%rbp)
	jmp	.L83
.L85:
	movq	-424(%rbp), %rdi
	leaq	-384(%rbp), %rcx
	movq	-392(%rbp), %rdx
	movq	-392(%rbp), %rsi
	movq	-392(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_reciprocal@PLT
	testl	%eax, %eax
	je	.L99
	addl	$1, -4(%rbp)
.L83:
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L85
.L82:
	movl	-28(%rbp), %eax
	sarl	%eax
	cltq
	movq	-320(%rbp,%rax,8), %rdx
	movq	-424(%rbp), %rdi
	leaq	-384(%rbp), %rcx
	movq	-392(%rbp), %rsi
	movq	-392(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_reciprocal@PLT
	testl	%eax, %eax
	je	.L100
	movl	-16(%rbp), %eax
	addl	$1, %eax
	subl	%eax, -12(%rbp)
	movl	$0, -24(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L101
.L76:
	jmp	.L71
.L97:
	nop
	jmp	.L75
.L101:
	nop
.L75:
	movl	$1, -8(%rbp)
	jmp	.L51
.L88:
	nop
	jmp	.L51
.L89:
	nop
	jmp	.L51
.L90:
	nop
	jmp	.L51
.L91:
	nop
	jmp	.L51
.L92:
	nop
	jmp	.L51
.L93:
	nop
	jmp	.L51
.L94:
	nop
	jmp	.L51
.L95:
	nop
	jmp	.L51
.L96:
	nop
	jmp	.L51
.L99:
	nop
	jmp	.L51
.L100:
	nop
.L51:
	movq	-424(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	BN_RECP_CTX_free@PLT
	movl	-8(%rbp), %eax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE208:
	.size	BN_mod_exp_recp, .-BN_mod_exp_recp
	.globl	BN_mod_exp_mont
	.type	BN_mod_exp_mont, @function
BN_mod_exp_mont:
.LFB209:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$384, %rsp
	movq	%rdi, -344(%rbp)
	movq	%rsi, -352(%rbp)
	movq	%rdx, -360(%rbp)
	movq	%rcx, -368(%rbp)
	movq	%r8, -376(%rbp)
	movq	%r9, -384(%rbp)
	movl	$0, -8(%rbp)
	movl	$1, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	jne	.L103
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$328, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L154
.L103:
	movq	-368(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1048575, %eax
	jg	.L105
	movq	-360(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	jne	.L106
	movq	-352(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	jne	.L106
	movq	-368(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	je	.L105
.L106:
	movq	-384(%rbp), %r8
	movq	-376(%rbp), %rdi
	movq	-368(%rbp), %rcx
	movq	-360(%rbp), %rdx
	movq	-352(%rbp), %rsi
	movq	-344(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont_consttime@PLT
	jmp	.L154
.L105:
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.L107
	movq	-368(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_abs_is_word@PLT
	testl	%eax, %eax
	je	.L108
	movl	$1, -8(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	jmp	.L109
.L108:
	movq	-344(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	movl	%eax, -8(%rbp)
.L109:
	movl	-8(%rbp), %eax
	jmp	.L154
.L107:
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	testq	%rax, %rax
	je	.L155
	cmpq	$0, -384(%rbp)
	je	.L112
	movq	-384(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L113
.L112:
	call	BN_MONT_CTX_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L156
	movq	-376(%rbp), %rdx
	movq	-368(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	je	.L157
.L113:
	movq	-352(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L115
	movq	-368(%rbp), %rdx
	movq	-352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	js	.L116
.L115:
	movq	-336(%rbp), %rax
	movq	-376(%rbp), %rcx
	movq	-368(%rbp), %rdx
	movq	-352(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	je	.L158
	movq	-336(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L118
.L116:
	movq	-352(%rbp), %rax
	movq	%rax, -32(%rbp)
.L118:
	movq	-336(%rbp), %rax
	movq	-376(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	call	bn_to_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L159
	cmpl	$671, -48(%rbp)
	jg	.L120
	cmpl	$239, -48(%rbp)
	jg	.L121
	cmpl	$79, -48(%rbp)
	jg	.L122
	cmpl	$23, -48(%rbp)
	jle	.L123
	movl	$3, -20(%rbp)
	jmp	.L124
.L123:
	movl	$1, -20(%rbp)
	jmp	.L124
.L122:
	movl	$4, -20(%rbp)
	jmp	.L124
.L121:
	movl	$5, -20(%rbp)
	jmp	.L124
.L120:
	movl	$6, -20(%rbp)
.L124:
	cmpl	$1, -20(%rbp)
	jle	.L125
	movq	-336(%rbp), %rdx
	movq	-336(%rbp), %rsi
	movq	-376(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L160
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -68(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L127
.L130:
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -336(%rbp,%rdx,8)
	movl	-4(%rbp), %eax
	cltq
	movq	-336(%rbp,%rax,8), %rax
	testq	%rax, %rax
	je	.L161
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cltq
	movq	-336(%rbp,%rax,8), %rsi
	movl	-4(%rbp), %eax
	cltq
	movq	-336(%rbp,%rax,8), %rax
	movq	-376(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L161
	addl	$1, -4(%rbp)
.L127:
	movl	-4(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L130
.L125:
	movl	$1, -24(%rbp)
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	$0, -16(%rbp)
	movq	-368(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-368(%rbp), %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jns	.L131
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L162
	movq	-368(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	negq	%rdx
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L133
.L134:
	movq	-368(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	notq	%rdx
	movq	%rdx, (%rax)
	addl	$1, -4(%rbp)
.L133:
	movl	-4(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L134
	movq	-64(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-64(%rbp), %rax
	movl	20(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, 20(%rax)
	jmp	.L151
.L131:
	call	BN_value_one@PLT
	movq	%rax, %rsi
	movq	-376(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	bn_to_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L163
.L151:
	movl	-12(%rbp), %edx
	movq	-360(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	jne	.L136
	cmpl	$0, -24(%rbp)
	jne	.L137
	movq	-376(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L164
.L137:
	cmpl	$0, -12(%rbp)
	je	.L165
	subl	$1, -12(%rbp)
	jmp	.L140
.L136:
	movl	$1, -44(%rbp)
	movl	$0, -16(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L141
.L145:
	movl	-12(%rbp), %eax
	subl	-4(%rbp), %eax
	testl	%eax, %eax
	js	.L166
	movl	-12(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-360(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	je	.L144
	movl	-4(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, -44(%rbp)
	orl	$1, -44(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
.L144:
	addl	$1, -4(%rbp)
.L141:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L145
	jmp	.L143
.L166:
	nop
.L143:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.L146
	movl	$0, -4(%rbp)
	jmp	.L147
.L149:
	movq	-376(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L167
	addl	$1, -4(%rbp)
.L147:
	movl	-4(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L149
.L146:
	movl	-44(%rbp), %eax
	sarl	%eax
	cltq
	movq	-336(%rbp,%rax,8), %rdx
	movq	-376(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L168
	movl	-16(%rbp), %eax
	addl	$1, %eax
	subl	%eax, -12(%rbp)
	movl	$0, -24(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L169
.L140:
	jmp	.L151
.L165:
	nop
	jmp	.L139
.L169:
	nop
.L139:
	movq	-376(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	BN_from_montgomery@PLT
	testl	%eax, %eax
	je	.L170
	movl	$1, -8(%rbp)
	jmp	.L111
.L155:
	nop
	jmp	.L111
.L156:
	nop
	jmp	.L111
.L157:
	nop
	jmp	.L111
.L158:
	nop
	jmp	.L111
.L159:
	nop
	jmp	.L111
.L160:
	nop
	jmp	.L111
.L161:
	nop
	jmp	.L111
.L162:
	nop
	jmp	.L111
.L163:
	nop
	jmp	.L111
.L164:
	nop
	jmp	.L111
.L167:
	nop
	jmp	.L111
.L168:
	nop
	jmp	.L111
.L170:
	nop
.L111:
	cmpq	$0, -384(%rbp)
	jne	.L153
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
.L153:
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-8(%rbp), %eax
.L154:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE209:
	.size	BN_mod_exp_mont, .-BN_mod_exp_mont
	.type	bn_get_bits, @function
bn_get_bits:
.LFB210:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -8(%rbp)
	movl	-28(%rbp), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, -12(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%eax, %edx
	andl	$63, %edx
	subl	%eax, %edx
	movl	%edx, -28(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L172
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jge	.L172
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L172
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, -8(%rbp)
	addl	$1, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jge	.L172
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	$64, %eax
	subl	-28(%rbp), %eax
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	orq	%rax, -8(%rbp)
.L172:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE210:
	.size	bn_get_bits, .-bn_get_bits
	.type	MOD_EXP_CTIME_COPY_TO_PREBUF, @function
MOD_EXP_CTIME_COPY_TO_PREBUF:
.LFB211:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -48(%rbp)
	movl	%r8d, -60(%rbp)
	movl	-60(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jle	.L175
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -44(%rbp)
.L175:
	movl	$0, -4(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L176
.L177:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	%eax, -8(%rbp)
.L176:
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L177
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE211:
	.size	MOD_EXP_CTIME_COPY_TO_PREBUF, .-MOD_EXP_CTIME_COPY_TO_PREBUF
	.type	MOD_EXP_CTIME_COPY_FROM_PREBUF, @function
MOD_EXP_CTIME_COPY_FROM_PREBUF:
.LFB212:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movq	%rdx, -120(%rbp)
	movl	%ecx, -112(%rbp)
	movl	%r8d, -124(%rbp)
	movl	-124(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-108(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L180
	movl	$0, %eax
	jmp	.L181
.L180:
	cmpl	$3, -124(%rbp)
	jg	.L182
	movl	$0, -20(%rbp)
	jmp	.L183
.L186:
	movq	$0, -40(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L184
.L185:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rbx
	movl	-112(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_eq_int
	movl	%eax, %eax
	andl	$1, %eax
	negq	%rax
	andq	%rbx, %rax
	orq	%rax, -40(%rbp)
	addl	$1, -24(%rbp)
.L184:
	movl	-24(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L185
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, (%rdx)
	addl	$1, -20(%rbp)
	movl	-52(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rax, -32(%rbp)
.L183:
	movl	-20(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L186
	jmp	.L187
.L182:
	movl	-124(%rbp), %eax
	subl	$2, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -56(%rbp)
	movl	-124(%rbp), %eax
	subl	$2, %eax
	movl	-112(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-56(%rbp), %eax
	subl	$1, %eax
	andl	%eax, -112(%rbp)
	movl	-20(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	constant_time_eq_int
	movl	%eax, %eax
	andl	$1, %eax
	negq	%rax
	movq	%rax, -64(%rbp)
	movl	-20(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	constant_time_eq_int
	movl	%eax, %eax
	andl	$1, %eax
	negq	%rax
	movq	%rax, -72(%rbp)
	movl	-20(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	constant_time_eq_int
	movl	%eax, %eax
	andl	$1, %eax
	negq	%rax
	movq	%rax, -80(%rbp)
	movl	-20(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	constant_time_eq_int
	movl	%eax, %eax
	andl	$1, %eax
	negq	%rax
	movq	%rax, -88(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L188
.L191:
	movq	$0, -48(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L189
.L190:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	andq	-64(%rbp), %rax
	movq	%rax, %rdx
	movl	-24(%rbp), %ecx
	movl	-56(%rbp), %eax
	addl	%ecx, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	andq	-72(%rbp), %rax
	orq	%rax, %rdx
	movl	-56(%rbp), %eax
	leal	(%rax,%rax), %ecx
	movl	-24(%rbp), %eax
	addl	%ecx, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	andq	-80(%rbp), %rax
	movq	%rdx, %rcx
	orq	%rax, %rcx
	movl	-56(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	andq	-88(%rbp), %rax
	movq	%rcx, %rbx
	orq	%rax, %rbx
	movl	-112(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_eq_int
	movl	%eax, %eax
	andl	$1, %eax
	negq	%rax
	andq	%rbx, %rax
	orq	%rax, -48(%rbp)
	addl	$1, -24(%rbp)
.L189:
	movl	-24(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L190
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	addl	$1, -20(%rbp)
	movl	-52(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rax, -32(%rbp)
.L188:
	movl	-20(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L191
.L187:
	movq	-104(%rbp), %rax
	movl	-108(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-104(%rbp), %rax
	movl	20(%rax), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 20(%rax)
	movl	$1, %eax
.L181:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE212:
	.size	MOD_EXP_CTIME_COPY_FROM_PREBUF, .-MOD_EXP_CTIME_COPY_FROM_PREBUF
	.globl	bn_mod_exp_mont_fixed_top
	.type	bn_mod_exp_mont_fixed_top, @function
bn_mod_exp_mont_fixed_top:
.LFB213:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	%r8, -200(%rbp)
	movq	%r9, -208(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -48(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	jne	.L193
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$627, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L269
.L193:
	movq	-192(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -56(%rbp)
	cmpl	$1048575, -56(%rbp)
	jle	.L195
	movq	-208(%rbp), %r8
	movq	-200(%rbp), %rdi
	movq	-192(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont@PLT
	jmp	.L269
.L195:
	movq	-184(%rbp), %rax
	movl	8(%rax), %eax
	sall	$6, %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L196
	movq	-192(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_abs_is_word@PLT
	testl	%eax, %eax
	je	.L197
	movl	$1, -12(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	jmp	.L198
.L197:
	movq	-168(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	movl	%eax, -12(%rbp)
.L198:
	movl	-12(%rbp), %eax
	jmp	.L269
.L196:
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	cmpq	$0, -208(%rbp)
	je	.L199
	movq	-208(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L200
.L199:
	call	BN_MONT_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L270
	movq	-200(%rbp), %rdx
	movq	-192(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	je	.L271
.L200:
	movq	-176(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L203
	movq	-192(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	js	.L204
.L203:
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L272
	movq	-200(%rbp), %rcx
	movq	-192(%rbp), %rdx
	movq	-176(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	je	.L272
	movq	-64(%rbp), %rax
	movq	%rax, -176(%rbp)
.L204:
	movq	-176(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$16, %eax
	jne	.L207
	movq	-184(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$16, %eax
	jne	.L207
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$1024, %eax
	jne	.L207
	call	rsaz_avx2_eligible@PLT
	testl	%eax, %eax
	je	.L207
	movq	-168(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L273
	movq	-24(%rbp), %rax
	movq	80(%rax), %r8
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-192(%rbp), %rax
	movq	(%rax), %rcx
	movq	-184(%rbp), %rax
	movq	(%rax), %rdx
	movq	-176(%rbp), %rax
	movq	(%rax), %rsi
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	RSAZ_1024_mod_exp_avx2@PLT
	movq	-168(%rbp), %rax
	movl	$16, 8(%rax)
	movq	-168(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movl	$1, -12(%rbp)
	jmp	.L202
.L207:
	movq	-176(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$8, %eax
	jne	.L209
	movq	-184(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$8, %eax
	jne	.L209
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$512, %eax
	jne	.L209
	movq	-168(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L274
	movq	-24(%rbp), %rax
	movq	8(%rax), %r8
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-192(%rbp), %rax
	movq	(%rax), %rcx
	movq	-184(%rbp), %rax
	movq	(%rax), %rdx
	movq	-176(%rbp), %rax
	movq	(%rax), %rsi
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	RSAZ_512_mod_exp@PLT
	movq	-168(%rbp), %rax
	movl	$8, 8(%rax)
	movq	-168(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movl	$1, -12(%rbp)
	jmp	.L202
.L209:
	cmpl	$937, -8(%rbp)
	jg	.L211
	cmpl	$306, -8(%rbp)
	jg	.L212
	cmpl	$89, -8(%rbp)
	jg	.L213
	cmpl	$22, -8(%rbp)
	jle	.L214
	movl	$3, -16(%rbp)
	jmp	.L215
.L214:
	movl	$1, -16(%rbp)
	jmp	.L215
.L213:
	movl	$4, -16(%rbp)
	jmp	.L215
.L212:
	movl	$5, -16(%rbp)
	jmp	.L215
.L211:
	movl	$6, -16(%rbp)
.L215:
	cmpl	$4, -16(%rbp)
	jle	.L216
	cmpl	$512, -56(%rbp)
	jg	.L216
	movl	$5, -16(%rbp)
	movl	-56(%rbp), %eax
	leal	0(,%rax,8), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
.L216:
	movl	-16(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -68(%rbp)
	movl	-56(%rbp), %eax
	imull	-68(%rbp), %eax
	movl	%eax, %ecx
	movl	-56(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-68(%rbp), %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	addl	%ecx, %eax
	leal	0(,%rax,8), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	cmpl	$3071, -36(%rbp)
	jg	.L217
	movl	-36(%rbp), %eax
	addl	$64, %eax
	cltq
	leaq	8(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -32(%rbp)
	jmp	.L218
.L217:
	movl	-36(%rbp), %eax
	addl	$64, %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$741, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L275
.L218:
	movq	-32(%rbp), %rax
	andl	$63, %eax
	movl	$64, %edx
	subq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	cmpl	$3071, -36(%rbp)
	jg	.L219
	movq	$0, -32(%rbp)
.L219:
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movl	-68(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -160(%rbp)
	movl	$0, -152(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	$0, -144(%rbp)
	movl	-144(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	$2, -140(%rbp)
	movl	-140(%rbp), %eax
	movl	%eax, -108(%rbp)
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jns	.L220
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-128(%rbp), %rax
	negq	%rdx
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L221
.L222:
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-128(%rbp), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	notq	%rdx
	movq	%rdx, (%rax)
	addl	$1, -4(%rbp)
.L221:
	movl	-4(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L222
	movl	-56(%rbp), %eax
	movl	%eax, -120(%rbp)
	jmp	.L223
.L220:
	call	BN_value_one@PLT
	movq	%rax, %rsi
	movq	-200(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	bn_to_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L276
.L223:
	movq	-200(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-176(%rbp), %rsi
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	bn_to_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L277
	cmpl	$512, -56(%rbp)
	jg	.L278
	cmpl	$5, -16(%rbp)
	jne	.L279
	cmpl	$1, -56(%rbp)
	jle	.L279
	movq	-24(%rbp), %rax
	addq	$80, %rax
	movq	%rax, -80(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L227
.L228:
	movq	-160(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -4(%rbp)
.L227:
	movl	-4(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L228
	movl	-120(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L229
.L230:
	movq	-128(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -4(%rbp)
.L229:
	movl	-4(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L230
	movq	-160(%rbp), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L231
.L232:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-88(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -4(%rbp)
.L231:
	movl	-4(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L232
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movq	-128(%rbp), %rax
	movq	-48(%rbp), %rdx
	movl	$0, %ecx
	movq	%rax, %rdi
	call	bn_scatter5@PLT
	movl	-152(%rbp), %eax
	movslq	%eax, %rsi
	movq	-160(%rbp), %rax
	movq	-48(%rbp), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	call	bn_scatter5@PLT
	movq	-160(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	-56(%rbp), %r8d
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont@PLT
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movq	-128(%rbp), %rax
	movq	-48(%rbp), %rdx
	movl	$2, %ecx
	movq	%rax, %rdi
	call	bn_scatter5@PLT
	movl	$4, -4(%rbp)
	jmp	.L233
.L234:
	movq	-128(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	-56(%rbp), %r8d
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movq	-128(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	bn_scatter5@PLT
	sall	-4(%rbp)
.L233:
	cmpl	$31, -4(%rbp)
	jle	.L234
	movl	$3, -4(%rbp)
	jmp	.L235
.L238:
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edi
	movq	-160(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	-56(%rbp), %r9d
	movq	-80(%rbp), %r8
	movq	-88(%rbp), %rcx
	movq	-48(%rbp), %rdx
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	bn_mul_mont_gather5@PLT
	addq	$16, %rsp
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movq	-128(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	bn_scatter5@PLT
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -52(%rbp)
	jmp	.L236
.L237:
	movq	-128(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	-56(%rbp), %r8d
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont@PLT
	movl	-52(%rbp), %eax
	movslq	%eax, %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movq	-128(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	bn_scatter5@PLT
	sall	-52(%rbp)
.L236:
	cmpl	$31, -52(%rbp)
	jle	.L237
	addl	$2, -4(%rbp)
.L235:
	cmpl	$7, -4(%rbp)
	jle	.L238
	jmp	.L239
.L240:
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edi
	movq	-160(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	-56(%rbp), %r9d
	movq	-80(%rbp), %r8
	movq	-88(%rbp), %rcx
	movq	-48(%rbp), %rdx
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	bn_mul_mont_gather5@PLT
	addq	$16, %rsp
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movq	-128(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	bn_scatter5@PLT
	movq	-128(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	-56(%rbp), %r8d
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont@PLT
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	movslq	%eax, %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movq	-128(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	bn_scatter5@PLT
	addl	$2, -4(%rbp)
.L239:
	cmpl	$15, -4(%rbp)
	jle	.L240
	jmp	.L241
.L242:
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edi
	movq	-160(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	-56(%rbp), %r9d
	movq	-80(%rbp), %r8
	movq	-88(%rbp), %rcx
	movq	-48(%rbp), %rdx
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	bn_mul_mont_gather5@PLT
	addq	$16, %rsp
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movq	-128(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	bn_scatter5@PLT
	addl	$2, -4(%rbp)
.L241:
	cmpl	$31, -4(%rbp)
	jle	.L242
	movl	-8(%rbp), %eax
	leal	-1(%rax), %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	leal	1(%rdx), %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	subl	%eax, -8(%rbp)
	movl	-8(%rbp), %edx
	movq	-184(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_get_bits
	movl	%eax, %edx
	movl	-96(%rbp), %eax
	andl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	movslq	%eax, %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movq	-128(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	bn_gather5@PLT
	movl	-56(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	je	.L247
	jmp	.L244
.L245:
	movq	-128(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	-56(%rbp), %r8d
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont@PLT
	movq	-128(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	-56(%rbp), %r8d
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont@PLT
	movq	-128(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	-56(%rbp), %r8d
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont@PLT
	movq	-128(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	-56(%rbp), %r8d
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont@PLT
	movq	-128(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	-56(%rbp), %r8d
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont@PLT
	subl	$5, -8(%rbp)
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_get_bits5@PLT
	movl	%eax, %edi
	movq	-128(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	-56(%rbp), %r9d
	movq	-80(%rbp), %r8
	movq	-88(%rbp), %rcx
	movq	-48(%rbp), %rdx
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	bn_mul_mont_gather5@PLT
	addq	$16, %rsp
.L244:
	cmpl	$0, -8(%rbp)
	jg	.L245
	jmp	.L246
.L248:
	subl	$5, -8(%rbp)
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_get_bits5@PLT
	movl	%eax, %edi
	movq	-128(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	-56(%rbp), %r9d
	movq	-80(%rbp), %r8
	movq	-88(%rbp), %rcx
	movq	-48(%rbp), %rdx
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	bn_power5@PLT
	addq	$16, %rsp
.L247:
	cmpl	$0, -8(%rbp)
	jg	.L248
.L246:
	movl	-56(%rbp), %eax
	movl	%eax, -120(%rbp)
	jmp	.L249
.L278:
	nop
	jmp	.L226
.L279:
	nop
.L226:
	movl	-16(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	-56(%rbp), %esi
	leaq	-128(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	MOD_EXP_CTIME_COPY_TO_PREBUF
	testl	%eax, %eax
	je	.L280
	movl	-16(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	-56(%rbp), %esi
	leaq	-160(%rbp), %rax
	movl	%ecx, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	MOD_EXP_CTIME_COPY_TO_PREBUF
	testl	%eax, %eax
	je	.L281
	cmpl	$1, -16(%rbp)
	jle	.L252
	movq	-200(%rbp), %rdi
	movq	-24(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L282
	movl	-16(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	-56(%rbp), %esi
	leaq	-128(%rbp), %rax
	movl	%ecx, %r8d
	movl	$2, %ecx
	movq	%rax, %rdi
	call	MOD_EXP_CTIME_COPY_TO_PREBUF
	testl	%eax, %eax
	je	.L283
	movl	$3, -4(%rbp)
	jmp	.L255
.L258:
	movq	-200(%rbp), %rdi
	movq	-24(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L284
	movl	-16(%rbp), %edi
	movl	-4(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	-56(%rbp), %esi
	leaq	-128(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	MOD_EXP_CTIME_COPY_TO_PREBUF
	testl	%eax, %eax
	je	.L285
	addl	$1, -4(%rbp)
.L255:
	movl	-4(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L258
.L252:
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	-16(%rbp)
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	subl	%eax, -8(%rbp)
	movl	-8(%rbp), %edx
	movq	-184(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_get_bits
	movl	%eax, %edx
	movl	-96(%rbp), %eax
	andl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-16(%rbp), %edi
	movl	-100(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	-56(%rbp), %esi
	leaq	-128(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	MOD_EXP_CTIME_COPY_FROM_PREBUF
	testl	%eax, %eax
	je	.L286
	movl	-16(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.L260
.L265:
	movl	$0, -4(%rbp)
	jmp	.L261
.L263:
	movq	-200(%rbp), %rdi
	movq	-24(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L287
	addl	$1, -4(%rbp)
.L261:
	movl	-4(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L263
	movl	-16(%rbp), %eax
	subl	%eax, -8(%rbp)
	movl	-8(%rbp), %edx
	movq	-184(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_get_bits
	movl	%eax, %edx
	movl	-96(%rbp), %eax
	andl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-16(%rbp), %edi
	movl	-100(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	-56(%rbp), %esi
	leaq	-160(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	MOD_EXP_CTIME_COPY_FROM_PREBUF
	testl	%eax, %eax
	je	.L288
	movq	-200(%rbp), %rdi
	movq	-24(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L289
.L260:
	cmpl	$0, -8(%rbp)
	jg	.L265
.L249:
	movq	-200(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	bn_from_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L290
	movl	$1, -12(%rbp)
	jmp	.L202
.L270:
	nop
	jmp	.L202
.L271:
	nop
	jmp	.L202
.L272:
	nop
	jmp	.L202
.L273:
	nop
	jmp	.L202
.L274:
	nop
	jmp	.L202
.L275:
	nop
	jmp	.L202
.L276:
	nop
	jmp	.L202
.L277:
	nop
	jmp	.L202
.L280:
	nop
	jmp	.L202
.L281:
	nop
	jmp	.L202
.L282:
	nop
	jmp	.L202
.L283:
	nop
	jmp	.L202
.L284:
	nop
	jmp	.L202
.L285:
	nop
	jmp	.L202
.L286:
	nop
	jmp	.L202
.L287:
	nop
	jmp	.L202
.L288:
	nop
	jmp	.L202
.L289:
	nop
	jmp	.L202
.L290:
	nop
.L202:
	cmpq	$0, -208(%rbp)
	jne	.L267
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
.L267:
	cmpq	$0, -48(%rbp)
	je	.L268
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1153, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L268:
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-12(%rbp), %eax
.L269:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE213:
	.size	bn_mod_exp_mont_fixed_top, .-bn_mod_exp_mont_fixed_top
	.globl	BN_mod_exp_mont_consttime
	.type	BN_mod_exp_mont_consttime, @function
BN_mod_exp_mont_consttime:
.LFB214:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mod_exp_mont_fixed_top@PLT
	testl	%eax, %eax
	jne	.L292
	movl	$0, %eax
	jmp	.L293
.L292:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movl	$1, %eax
.L293:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE214:
	.size	BN_mod_exp_mont_consttime, .-BN_mod_exp_mont_consttime
	.globl	BN_mod_exp_mont_word
	.type	BN_mod_exp_mont_word, @function
BN_mod_exp_mont_word:
.LFB215:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -16(%rbp)
	movq	-104(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	jne	.L295
	movq	-112(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	je	.L296
.L295:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1201, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L297
.L296:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	jne	.L298
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1209, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L297
.L298:
	movq	-112(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L299
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	movq	-96(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, -96(%rbp)
.L299:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L300
	movq	-112(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_abs_is_word@PLT
	testl	%eax, %eax
	je	.L301
	movl	$1, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	jmp	.L302
.L301:
	movq	-88(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	movl	%eax, -16(%rbp)
.L302:
	movl	-16(%rbp), %eax
	jmp	.L297
.L300:
	cmpq	$0, -96(%rbp)
	jne	.L303
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$1, -16(%rbp)
	movl	-16(%rbp), %eax
	jmp	.L297
.L303:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L333
	cmpq	$0, -128(%rbp)
	je	.L306
	movq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L307
.L306:
	call	BN_MONT_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L334
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	je	.L335
.L307:
	movl	$1, -20(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-60(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -12(%rbp)
	jmp	.L309
.L324:
	movq	-32(%rbp), %rax
	imulq	%rax, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %edx
	divq	-32(%rbp)
	cmpq	%rax, -32(%rbp)
	je	.L310
	cmpl	$0, -20(%rbp)
	je	.L311
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L336
	movq	-120(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_to_montgomery@PLT
	testl	%eax, %eax
	je	.L336
	movl	$0, -20(%rbp)
	jmp	.L314
.L311:
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_mul_word@PLT
	testl	%eax, %eax
	je	.L337
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L337
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
.L314:
	movq	$1, -40(%rbp)
.L310:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L316
	movq	-120(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_montgomery@PLT
	testl	%eax, %eax
	je	.L338
.L316:
	movl	-12(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	je	.L317
	movq	-32(%rbp), %rax
	imulq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %edx
	divq	-96(%rbp)
	cmpq	%rax, -32(%rbp)
	je	.L318
	cmpl	$0, -20(%rbp)
	je	.L319
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L339
	movq	-120(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_to_montgomery@PLT
	testl	%eax, %eax
	je	.L339
	movl	$0, -20(%rbp)
	jmp	.L322
.L319:
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_mul_word@PLT
	testl	%eax, %eax
	je	.L340
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L340
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
.L322:
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
.L318:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
.L317:
	subl	$1, -12(%rbp)
.L309:
	cmpl	$0, -12(%rbp)
	jns	.L324
	cmpq	$1, -32(%rbp)
	je	.L325
	cmpl	$0, -20(%rbp)
	je	.L326
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L341
	movq	-120(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_to_montgomery@PLT
	testl	%eax, %eax
	je	.L341
	movl	$0, -20(%rbp)
	jmp	.L325
.L326:
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_mul_word@PLT
	testl	%eax, %eax
	je	.L342
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L342
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
.L325:
	cmpl	$0, -20(%rbp)
	je	.L330
	movq	-88(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	jne	.L331
	jmp	.L305
.L330:
	movq	-120(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_from_montgomery@PLT
	testl	%eax, %eax
	je	.L343
.L331:
	movl	$1, -16(%rbp)
	jmp	.L305
.L333:
	nop
	jmp	.L305
.L334:
	nop
	jmp	.L305
.L335:
	nop
	jmp	.L305
.L336:
	nop
	jmp	.L305
.L337:
	nop
	jmp	.L305
.L338:
	nop
	jmp	.L305
.L339:
	nop
	jmp	.L305
.L340:
	nop
	jmp	.L305
.L341:
	nop
	jmp	.L305
.L342:
	nop
	jmp	.L305
.L343:
	nop
.L305:
	cmpq	$0, -128(%rbp)
	jne	.L332
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
.L332:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-16(%rbp), %eax
.L297:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE215:
	.size	BN_mod_exp_mont_word, .-BN_mod_exp_mont_word
	.globl	BN_mod_exp_simple
	.type	BN_mod_exp_simple, @function
BN_mod_exp_simple:
.LFB216:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$368, %rsp
	movq	%rdi, -328(%rbp)
	movq	%rsi, -336(%rbp)
	movq	%rdx, -344(%rbp)
	movq	%rcx, -352(%rbp)
	movq	%r8, -360(%rbp)
	movl	$0, -8(%rbp)
	movl	$1, -24(%rbp)
	movq	-344(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	jne	.L345
	movq	-336(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	jne	.L345
	movq	-352(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	je	.L346
.L345:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1333, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L386
.L346:
	movq	-328(%rbp), %rax
	cmpq	-352(%rbp), %rax
	jne	.L348
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1338, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L386
.L348:
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.L349
	movq	-352(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_abs_is_word@PLT
	testl	%eax, %eax
	je	.L350
	movl	$1, -8(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	jmp	.L351
.L350:
	movq	-328(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	movl	%eax, -8(%rbp)
.L351:
	movl	-8(%rbp), %eax
	jmp	.L386
.L349:
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	testq	%rax, %rax
	je	.L387
	movq	-320(%rbp), %rax
	movq	-360(%rbp), %rcx
	movq	-352(%rbp), %rdx
	movq	-336(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	je	.L388
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L355
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$1, -8(%rbp)
	jmp	.L353
.L355:
	cmpl	$671, -32(%rbp)
	jg	.L356
	cmpl	$239, -32(%rbp)
	jg	.L357
	cmpl	$79, -32(%rbp)
	jg	.L358
	cmpl	$23, -32(%rbp)
	jle	.L359
	movl	$3, -20(%rbp)
	jmp	.L360
.L359:
	movl	$1, -20(%rbp)
	jmp	.L360
.L358:
	movl	$4, -20(%rbp)
	jmp	.L360
.L357:
	movl	$5, -20(%rbp)
	jmp	.L360
.L356:
	movl	$6, -20(%rbp)
.L360:
	cmpl	$1, -20(%rbp)
	jle	.L361
	movq	-320(%rbp), %rdx
	movq	-320(%rbp), %rsi
	movq	-360(%rbp), %rdi
	movq	-352(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L389
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -44(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L363
.L366:
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -320(%rbp,%rdx,8)
	movl	-4(%rbp), %eax
	cltq
	movq	-320(%rbp,%rax,8), %rax
	testq	%rax, %rax
	je	.L390
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cltq
	movq	-320(%rbp,%rax,8), %rsi
	movl	-4(%rbp), %eax
	cltq
	movq	-320(%rbp,%rax,8), %rax
	movq	-360(%rbp), %rdi
	movq	-352(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L390
	addl	$1, -4(%rbp)
.L363:
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L366
.L361:
	movl	$1, -24(%rbp)
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	$0, -16(%rbp)
	movq	-328(%rbp), %rax
	cmpq	-344(%rbp), %rax
	jne	.L367
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L391
	movq	-344(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L391
	movq	-56(%rbp), %rax
	movq	%rax, -344(%rbp)
.L367:
	movq	-328(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L392
.L370:
	movl	-12(%rbp), %edx
	movq	-344(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	jne	.L371
	cmpl	$0, -24(%rbp)
	jne	.L372
	movq	-360(%rbp), %rdi
	movq	-352(%rbp), %rcx
	movq	-328(%rbp), %rdx
	movq	-328(%rbp), %rsi
	movq	-328(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L393
.L372:
	cmpl	$0, -12(%rbp)
	je	.L394
	subl	$1, -12(%rbp)
	jmp	.L375
.L371:
	movl	$1, -28(%rbp)
	movl	$0, -16(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L376
.L380:
	movl	-12(%rbp), %eax
	subl	-4(%rbp), %eax
	testl	%eax, %eax
	js	.L395
	movl	-12(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-344(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	je	.L379
	movl	-4(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, -28(%rbp)
	orl	$1, -28(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
.L379:
	addl	$1, -4(%rbp)
.L376:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L380
	jmp	.L378
.L395:
	nop
.L378:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.L381
	movl	$0, -4(%rbp)
	jmp	.L382
.L384:
	movq	-360(%rbp), %rdi
	movq	-352(%rbp), %rcx
	movq	-328(%rbp), %rdx
	movq	-328(%rbp), %rsi
	movq	-328(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L396
	addl	$1, -4(%rbp)
.L382:
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L384
.L381:
	movl	-28(%rbp), %eax
	sarl	%eax
	cltq
	movq	-320(%rbp,%rax,8), %rdx
	movq	-360(%rbp), %rdi
	movq	-352(%rbp), %rcx
	movq	-328(%rbp), %rsi
	movq	-328(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L397
	movl	-16(%rbp), %eax
	addl	$1, %eax
	subl	%eax, -12(%rbp)
	movl	$0, -24(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L398
.L375:
	jmp	.L370
.L394:
	nop
	jmp	.L374
.L398:
	nop
.L374:
	movl	$1, -8(%rbp)
	jmp	.L353
.L387:
	nop
	jmp	.L353
.L388:
	nop
	jmp	.L353
.L389:
	nop
	jmp	.L353
.L390:
	nop
	jmp	.L353
.L391:
	nop
	jmp	.L353
.L392:
	nop
	jmp	.L353
.L393:
	nop
	jmp	.L353
.L396:
	nop
	jmp	.L353
.L397:
	nop
.L353:
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-8(%rbp), %eax
.L386:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE216:
	.size	BN_mod_exp_simple, .-BN_mod_exp_simple
	.globl	BN_mod_exp_mont_consttime_x2
	.type	BN_mod_exp_mont_consttime_x2, @function
BN_mod_exp_mont_consttime_x2:
.LFB217:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	call	ossl_rsaz_avx512ifma_eligible@PLT
	testl	%eax, %eax
	je	.L400
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$16, %eax
	jne	.L401
	movq	-88(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$16, %eax
	jne	.L401
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$1024, %eax
	jne	.L401
	movq	16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$16, %eax
	jne	.L401
	movq	24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$16, %eax
	jne	.L401
	movq	32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$1024, %eax
	je	.L402
.L401:
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$24, %eax
	jne	.L403
	movq	-88(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$24, %eax
	jne	.L403
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$1536, %eax
	jne	.L403
	movq	16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$24, %eax
	jne	.L403
	movq	24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$24, %eax
	jne	.L403
	movq	32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$1536, %eax
	je	.L402
.L403:
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$32, %eax
	jne	.L400
	movq	-88(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$32, %eax
	jne	.L400
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$2048, %eax
	jne	.L400
	movq	16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$32, %eax
	jne	.L400
	movq	24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$32, %eax
	jne	.L400
	movq	32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$2048, %eax
	jne	.L400
.L402:
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -60(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L416
	movl	-60(%rbp), %edx
	movq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L417
	cmpq	$0, -104(%rbp)
	je	.L407
	movq	-104(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L408
.L407:
	call	BN_MONT_CTX_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L418
	movq	48(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	je	.L419
.L408:
	cmpq	$0, 40(%rbp)
	je	.L410
	movq	40(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.L411
.L410:
	call	BN_MONT_CTX_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L420
	movq	48(%rbp), %rdx
	movq	32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	je	.L421
.L411:
	movq	-56(%rbp), %rax
	movq	80(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	8(%rax), %r11
	movq	32(%rbp), %rax
	movq	(%rax), %r10
	movq	24(%rbp), %rax
	movq	(%rax), %r9
	movq	16(%rbp), %rax
	movq	(%rax), %r8
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	80(%rax), %r14
	movq	-48(%rbp), %rax
	movq	8(%rax), %r13
	movq	-96(%rbp), %rax
	movq	(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	subq	$8, %rsp
	movl	-64(%rbp), %r12d
	pushq	%r12
	pushq	%rbx
	pushq	%r11
	pushq	%r10
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	movq	%r14, %r9
	movq	%r13, %r8
	movq	%rax, %rdi
	call	ossl_rsaz_mod_exp_avx512_x2@PLT
	addq	$64, %rsp
	movl	%eax, -36(%rbp)
	movq	-72(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-72(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movq	-112(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-112(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	jmp	.L405
.L400:
	movq	-104(%rbp), %r8
	movq	48(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont_consttime@PLT
	movl	%eax, -36(%rbp)
	movq	40(%rbp), %r8
	movq	48(%rbp), %rdi
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont_consttime@PLT
	andl	%eax, -36(%rbp)
	jmp	.L405
.L416:
	nop
	jmp	.L405
.L417:
	nop
	jmp	.L405
.L418:
	nop
	jmp	.L405
.L419:
	nop
	jmp	.L405
.L420:
	nop
	jmp	.L405
.L421:
	nop
.L405:
	cmpq	$0, 40(%rbp)
	jne	.L413
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
.L413:
	cmpq	$0, -104(%rbp)
	jne	.L414
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
.L414:
	movl	-36(%rbp), %eax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE217:
	.size	BN_mod_exp_mont_consttime_x2, .-BN_mod_exp_mont_consttime_x2
	.section	.rodata
	.type	__func__.5, @object
	.size	__func__.5, 7
__func__.5:
	.string	"BN_exp"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 16
__func__.4:
	.string	"BN_mod_exp_recp"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 16
__func__.3:
	.string	"BN_mod_exp_mont"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 26
__func__.2:
	.string	"bn_mod_exp_mont_fixed_top"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 21
__func__.1:
	.string	"BN_mod_exp_mont_word"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"BN_mod_exp_simple"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

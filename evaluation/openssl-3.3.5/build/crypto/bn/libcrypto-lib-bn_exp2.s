	.file	"bn_exp2.c"
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
	.string	"../crypto/bn/bn_exp2.c"
	.text
	.globl	BN_mod_exp2_mont
	.type	BN_mod_exp2_mont, @function
BN_mod_exp2_mont:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$656, %rsp
	movq	%rdi, -616(%rbp)
	movq	%rsi, -624(%rbp)
	movq	%rdx, -632(%rbp)
	movq	%rcx, -640(%rbp)
	movq	%r8, -648(%rbp)
	movq	%r9, -656(%rbp)
	movl	$0, -12(%rbp)
	movl	$1, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	jne	.L6
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$36, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L70
.L6:
	movq	-632(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -60(%rbp)
	movq	-648(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -64(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L8
	cmpl	$0, -64(%rbp)
	jne	.L8
	movq	-616(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	jmp	.L70
.L8:
	movl	-64(%rbp), %edx
	movl	-60(%rbp), %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, -68(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -80(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -88(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -352(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rax
	testq	%rax, %rax
	je	.L71
	cmpq	$0, 24(%rbp)
	je	.L11
	movq	24(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.L12
.L11:
	call	BN_MONT_CTX_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L72
	movq	16(%rbp), %rdx
	movq	-656(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	je	.L73
.L12:
	cmpl	$671, -60(%rbp)
	jg	.L14
	cmpl	$239, -60(%rbp)
	jg	.L15
	cmpl	$79, -60(%rbp)
	jg	.L16
	cmpl	$23, -60(%rbp)
	jle	.L17
	movl	$3, -24(%rbp)
	jmp	.L18
.L17:
	movl	$1, -24(%rbp)
	jmp	.L18
.L16:
	movl	$4, -24(%rbp)
	jmp	.L18
.L15:
	movl	$5, -24(%rbp)
	jmp	.L18
.L14:
	movl	$6, -24(%rbp)
.L18:
	cmpl	$671, -64(%rbp)
	jg	.L19
	cmpl	$239, -64(%rbp)
	jg	.L20
	cmpl	$79, -64(%rbp)
	jg	.L21
	cmpl	$23, -64(%rbp)
	jle	.L22
	movl	$3, -28(%rbp)
	jmp	.L23
.L22:
	movl	$1, -28(%rbp)
	jmp	.L23
.L21:
	movl	$4, -28(%rbp)
	jmp	.L23
.L20:
	movl	$5, -28(%rbp)
	jmp	.L23
.L19:
	movl	$6, -28(%rbp)
.L23:
	movq	-624(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L24
	movq	-656(%rbp), %rdx
	movq	-624(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	js	.L25
.L24:
	movq	-352(%rbp), %rax
	movq	16(%rbp), %rsi
	movq	-656(%rbp), %rcx
	movq	-624(%rbp), %rdx
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L74
	movq	-352(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L27
.L25:
	movq	-624(%rbp), %rax
	movq	%rax, -48(%rbp)
.L27:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L28
	movq	-616(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$1, -12(%rbp)
	jmp	.L10
.L28:
	movq	-352(%rbp), %rax
	movq	16(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_to_montgomery@PLT
	testl	%eax, %eax
	je	.L75
	cmpl	$1, -24(%rbp)
	jle	.L30
	movq	-352(%rbp), %rdx
	movq	-352(%rbp), %rsi
	movq	16(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_montgomery@PLT
	testl	%eax, %eax
	je	.L76
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -92(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L32
.L35:
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -352(%rbp,%rdx,8)
	movl	-4(%rbp), %eax
	cltq
	movq	-352(%rbp,%rax,8), %rax
	testq	%rax, %rax
	je	.L77
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cltq
	movq	-352(%rbp,%rax,8), %rsi
	movl	-4(%rbp), %eax
	cltq
	movq	-352(%rbp,%rax,8), %rax
	movq	16(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_montgomery@PLT
	testl	%eax, %eax
	je	.L77
	addl	$1, -4(%rbp)
.L32:
	movl	-4(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L35
.L30:
	movq	-640(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L36
	movq	-656(%rbp), %rdx
	movq	-640(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	js	.L37
.L36:
	movq	-608(%rbp), %rax
	movq	16(%rbp), %rsi
	movq	-656(%rbp), %rcx
	movq	-640(%rbp), %rdx
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L78
	movq	-608(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L39
.L37:
	movq	-640(%rbp), %rax
	movq	%rax, -48(%rbp)
.L39:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L40
	movq	-616(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$1, -12(%rbp)
	jmp	.L10
.L40:
	movq	-608(%rbp), %rax
	movq	16(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_to_montgomery@PLT
	testl	%eax, %eax
	je	.L79
	cmpl	$1, -28(%rbp)
	jle	.L42
	movq	-608(%rbp), %rdx
	movq	-608(%rbp), %rsi
	movq	16(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_montgomery@PLT
	testl	%eax, %eax
	je	.L80
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -92(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L44
.L47:
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -608(%rbp,%rdx,8)
	movl	-4(%rbp), %eax
	cltq
	movq	-608(%rbp,%rax,8), %rax
	testq	%rax, %rax
	je	.L81
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cltq
	movq	-608(%rbp,%rax,8), %rsi
	movl	-4(%rbp), %eax
	cltq
	movq	-608(%rbp,%rax,8), %rax
	movq	16(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_montgomery@PLT
	testl	%eax, %eax
	je	.L81
	addl	$1, -4(%rbp)
.L44:
	movl	-4(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L47
.L42:
	movl	$1, -40(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	call	BN_value_one@PLT
	movq	%rax, %rsi
	movq	16(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_to_montgomery@PLT
	testl	%eax, %eax
	je	.L82
	movl	-68(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.L49
.L67:
	cmpl	$0, -40(%rbp)
	jne	.L50
	movq	16(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_montgomery@PLT
	testl	%eax, %eax
	je	.L83
.L50:
	cmpl	$0, -32(%rbp)
	jne	.L51
	movl	-8(%rbp), %edx
	movq	-632(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	je	.L51
	movl	-8(%rbp), %eax
	subl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L52
.L53:
	addl	$1, -4(%rbp)
.L52:
	movl	-4(%rbp), %edx
	movq	-632(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	je	.L53
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	$1, -32(%rbp)
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L54
.L56:
	sall	-32(%rbp)
	movl	-4(%rbp), %edx
	movq	-632(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	je	.L55
	addl	$1, -32(%rbp)
.L55:
	subl	$1, -4(%rbp)
.L54:
	movl	-4(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.L56
.L51:
	cmpl	$0, -36(%rbp)
	jne	.L57
	movl	-8(%rbp), %edx
	movq	-648(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	je	.L57
	movl	-8(%rbp), %eax
	subl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L58
.L59:
	addl	$1, -4(%rbp)
.L58:
	movl	-4(%rbp), %edx
	movq	-648(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	je	.L59
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$1, -36(%rbp)
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L60
.L62:
	sall	-36(%rbp)
	movl	-4(%rbp), %edx
	movq	-648(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	je	.L61
	addl	$1, -36(%rbp)
.L61:
	subl	$1, -4(%rbp)
.L60:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.L62
.L57:
	cmpl	$0, -32(%rbp)
	je	.L63
	movl	-8(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jne	.L63
	movl	-32(%rbp), %eax
	sarl	%eax
	cltq
	movq	-352(%rbp,%rax,8), %rdx
	movq	16(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_montgomery@PLT
	testl	%eax, %eax
	je	.L84
	movl	$0, -32(%rbp)
	movl	$0, -40(%rbp)
.L63:
	cmpl	$0, -36(%rbp)
	je	.L65
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.L65
	movl	-36(%rbp), %eax
	sarl	%eax
	cltq
	movq	-608(%rbp,%rax,8), %rdx
	movq	16(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_montgomery@PLT
	testl	%eax, %eax
	je	.L85
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
.L65:
	subl	$1, -8(%rbp)
.L49:
	cmpl	$0, -8(%rbp)
	jns	.L67
	movq	16(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-616(%rbp), %rax
	movq	%rax, %rdi
	call	BN_from_montgomery@PLT
	testl	%eax, %eax
	je	.L86
	movl	$1, -12(%rbp)
	jmp	.L10
.L71:
	nop
	jmp	.L10
.L72:
	nop
	jmp	.L10
.L73:
	nop
	jmp	.L10
.L74:
	nop
	jmp	.L10
.L75:
	nop
	jmp	.L10
.L76:
	nop
	jmp	.L10
.L77:
	nop
	jmp	.L10
.L78:
	nop
	jmp	.L10
.L79:
	nop
	jmp	.L10
.L80:
	nop
	jmp	.L10
.L81:
	nop
	jmp	.L10
.L82:
	nop
	jmp	.L10
.L83:
	nop
	jmp	.L10
.L84:
	nop
	jmp	.L10
.L85:
	nop
	jmp	.L10
.L86:
	nop
.L10:
	cmpq	$0, 24(%rbp)
	jne	.L69
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
.L69:
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-12(%rbp), %eax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	BN_mod_exp2_mont, .-BN_mod_exp2_mont
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 17
__func__.0:
	.string	"BN_mod_exp2_mont"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

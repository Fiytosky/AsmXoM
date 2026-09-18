	.file	"bn_gcd.c"
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
	.type	bn_mod_inverse_no_branch, @function
bn_mod_inverse_no_branch:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%r8, -184(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -8(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -72(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L30
	cmpq	$0, -152(%rbp)
	jne	.L8
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	jmp	.L9
.L8:
	movq	-152(%rbp), %rax
	movq	%rax, -48(%rbp)
.L9:
	cmpq	$0, -48(%rbp)
	je	.L31
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L32
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	-160(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L33
	movq	-168(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L34
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L14
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	js	.L15
.L14:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	bn_init@PLT
	movq	-16(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_with_flags@PLT
	movq	-176(%rbp), %rcx
	movq	-8(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	je	.L35
.L15:
	movl	$-1, -60(%rbp)
	jmp	.L17
.L21:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	bn_init@PLT
	movq	-8(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_with_flags@PLT
	movq	-176(%rbp), %rdi
	movq	-16(%rbp), %rcx
	leaq	-144(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L36
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-176(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L37
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L38
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	negl	-60(%rbp)
.L17:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L21
	cmpl	$0, -60(%rbp)
	jns	.L22
	movq	-32(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L39
.L22:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	je	.L23
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L24
	movq	-168(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jns	.L24
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L27
	jmp	.L7
.L24:
	movq	-176(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	jne	.L27
	jmp	.L7
.L23:
	movq	-184(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L7
.L27:
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-184(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L7
.L30:
	nop
	jmp	.L7
.L31:
	nop
	jmp	.L7
.L32:
	nop
	jmp	.L7
.L33:
	nop
	jmp	.L7
.L34:
	nop
	jmp	.L7
.L35:
	nop
	jmp	.L7
.L36:
	nop
	jmp	.L7
.L37:
	nop
	jmp	.L7
.L38:
	nop
	jmp	.L7
.L39:
	nop
.L7:
	cmpq	$0, -56(%rbp)
	jne	.L28
	cmpq	$0, -152(%rbp)
	jne	.L28
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L28:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-56(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	bn_mod_inverse_no_branch, .-bn_mod_inverse_no_branch
	.globl	int_bn_mod_inverse
	.type	int_bn_mod_inverse, @function
int_bn_mod_inverse:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-136(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_abs_is_word@PLT
	testl	%eax, %eax
	jne	.L41
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L42
.L41:
	movq	-152(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, %eax
	jmp	.L43
.L42:
	movq	-152(%rbp), %rax
	movl	$0, (%rax)
	movq	-128(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	jne	.L44
	movq	-136(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	je	.L45
.L44:
	movq	-152(%rbp), %rdi
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mod_inverse_no_branch
	jmp	.L43
.L45:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L98
	cmpq	$0, -120(%rbp)
	jne	.L48
	call	BN_new@PLT
	movq	%rax, -64(%rbp)
	jmp	.L49
.L48:
	movq	-120(%rbp), %rax
	movq	%rax, -64(%rbp)
.L49:
	cmpq	$0, -64(%rbp)
	je	.L99
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L100
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	-128(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L101
	movq	-136(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L102
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L54
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	js	.L55
.L54:
	movq	-144(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	je	.L103
.L55:
	movl	$-1, -76(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	je	.L71
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$2048, %eax
	jg	.L71
	jmp	.L57
.L69:
	movl	$0, -80(%rbp)
	jmp	.L58
.L60:
	addl	$1, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	je	.L59
	movq	-136(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_uadd@PLT
	testl	%eax, %eax
	je	.L104
.L59:
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_rshift1@PLT
	testl	%eax, %eax
	je	.L105
.L58:
	movl	-80(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	je	.L60
	cmpl	$0, -80(%rbp)
	jle	.L61
	movl	-80(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_rshift@PLT
	testl	%eax, %eax
	je	.L106
.L61:
	movl	$0, -80(%rbp)
	jmp	.L62
.L64:
	addl	$1, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	je	.L63
	movq	-136(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_uadd@PLT
	testl	%eax, %eax
	je	.L107
.L63:
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_rshift1@PLT
	testl	%eax, %eax
	je	.L108
.L62:
	movl	-80(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	je	.L64
	cmpl	$0, -80(%rbp)
	jle	.L65
	movl	-80(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_rshift@PLT
	testl	%eax, %eax
	je	.L109
.L65:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	js	.L66
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_uadd@PLT
	testl	%eax, %eax
	je	.L110
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_usub@PLT
	testl	%eax, %eax
	jne	.L57
	jmp	.L47
.L66:
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_uadd@PLT
	testl	%eax, %eax
	je	.L111
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_usub@PLT
	testl	%eax, %eax
	je	.L112
.L57:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L69
	jmp	.L70
.L90:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	%eax, %ebx
	jne	.L72
	movq	-88(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L113
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	jne	.L74
	jmp	.L47
.L72:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$1, %eax
	cmpl	%eax, %ebx
	jne	.L75
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_lshift1@PLT
	testl	%eax, %eax
	je	.L114
	movq	-96(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jns	.L77
	movq	-88(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L115
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	jne	.L74
	jmp	.L47
.L77:
	movq	-96(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L116
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L117
	movq	-88(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jns	.L81
	movq	-88(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	jne	.L74
	jmp	.L47
.L81:
	movq	-88(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L118
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	jne	.L74
	jmp	.L47
.L75:
	movq	-144(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L119
.L74:
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	je	.L83
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	jne	.L84
	jmp	.L47
.L83:
	movq	-88(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_is_word@PLT
	testl	%eax, %eax
	je	.L85
	movq	-40(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_lshift1@PLT
	testl	%eax, %eax
	jne	.L86
	jmp	.L47
.L85:
	movq	-88(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_is_word@PLT
	testl	%eax, %eax
	je	.L87
	movq	-40(%rbp), %rcx
	movq	-104(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_lshift@PLT
	testl	%eax, %eax
	jne	.L86
	jmp	.L47
.L87:
	movq	-88(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L88
	movq	-40(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L120
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_mul_word@PLT
	testl	%eax, %eax
	jne	.L86
	jmp	.L47
.L88:
	movq	-144(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L121
.L86:
	movq	-48(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L122
.L84:
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	negl	-76(%rbp)
.L71:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L90
.L70:
	cmpl	$0, -76(%rbp)
	jns	.L91
	movq	-48(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L123
.L91:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	je	.L92
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L93
	movq	-136(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jns	.L93
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L96
	jmp	.L47
.L93:
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	jne	.L96
	jmp	.L47
.L92:
	movq	-152(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L47
.L96:
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.L47
.L98:
	nop
	jmp	.L47
.L99:
	nop
	jmp	.L47
.L100:
	nop
	jmp	.L47
.L101:
	nop
	jmp	.L47
.L102:
	nop
	jmp	.L47
.L103:
	nop
	jmp	.L47
.L104:
	nop
	jmp	.L47
.L105:
	nop
	jmp	.L47
.L106:
	nop
	jmp	.L47
.L107:
	nop
	jmp	.L47
.L108:
	nop
	jmp	.L47
.L109:
	nop
	jmp	.L47
.L110:
	nop
	jmp	.L47
.L111:
	nop
	jmp	.L47
.L112:
	nop
	jmp	.L47
.L113:
	nop
	jmp	.L47
.L114:
	nop
	jmp	.L47
.L115:
	nop
	jmp	.L47
.L116:
	nop
	jmp	.L47
.L117:
	nop
	jmp	.L47
.L118:
	nop
	jmp	.L47
.L119:
	nop
	jmp	.L47
.L120:
	nop
	jmp	.L47
.L121:
	nop
	jmp	.L47
.L122:
	nop
	jmp	.L47
.L123:
	nop
.L47:
	cmpq	$0, -72(%rbp)
	jne	.L97
	cmpq	$0, -120(%rbp)
	jne	.L97
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L97:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-72(%rbp), %rax
.L43:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	int_bn_mod_inverse, .-int_bn_mod_inverse
	.section	.rodata
.LC0:
	.string	"../crypto/bn/bn_gcd.c"
	.text
	.globl	BN_mod_inverse
	.type	BN_mod_inverse, @function
BN_mod_inverse:
.LFB163:
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
	movq	$0, -8(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L125
	movl	$0, %edi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L125
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$525, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L128
.L125:
	leaq	-20(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	int_bn_mod_inverse@PLT
	movq	%rax, -16(%rbp)
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L127
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$532, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L127:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-16(%rbp), %rax
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	BN_mod_inverse, .-BN_mod_inverse
	.globl	BN_are_coprime
	.type	BN_are_coprime, @function
BN_are_coprime:
.LFB164:
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
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L133
	call	ERR_set_mark@PLT
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_inverse@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	call	ERR_pop_to_mark@PLT
	jmp	.L131
.L133:
	nop
.L131:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	BN_are_coprime, .-BN_are_coprime
	.globl	BN_gcd
	.type	BN_gcd, @function
BN_gcd:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movl	$1, -20(%rbp)
	movl	$1, -24(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L135
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, 16(%rax)
	movl	-32(%rbp), %eax
	jmp	.L136
.L135:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L137
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, 16(%rax)
	movl	-32(%rbp), %eax
	jmp	.L136
.L137:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L156
	movq	-104(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_lshift1@PLT
	testl	%eax, %eax
	je	.L156
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_lshift1@PLT
	testl	%eax, %eax
	je	.L156
	movl	$0, -12(%rbp)
	jmp	.L141
.L145:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	orq	%rdx, %rax
	notq	%rax
	movq	%rax, -8(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L142
.L143:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	andl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	addl	%eax, -28(%rbp)
	shrq	-8(%rbp)
	addl	$1, -16(%rbp)
.L142:
	cmpl	$63, -16(%rbp)
	jle	.L143
	addl	$1, -12(%rbp)
.L141:
	movq	-88(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jge	.L144
	movq	-56(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L145
.L144:
	movl	-28(%rbp), %edx
	movq	-88(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_rshift@PLT
	testl	%eax, %eax
	je	.L157
	movl	-28(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_rshift@PLT
	testl	%eax, %eax
	je	.L157
	movq	-88(%rbp), %rax
	movl	8(%rax), %edx
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L158
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L158
	movl	-60(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L158
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	notq	%rax
	andl	$1, %eax
	movq	%rax, %rdi
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	call	BN_consttime_swap@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -68(%rbp)
	movl	-64(%rbp), %edx
	movl	-68(%rbp), %eax
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	%eax, -72(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L150
.L153:
	movl	-24(%rbp), %eax
	negl	%eax
	shrl	$31, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	andl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	shrl	$31, %eax
	notl	%eax
	andl	%edx, %eax
	andl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	negl	%eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	negl	%eax
	andl	%eax, %edx
	movl	-44(%rbp), %eax
	subl	$1, %eax
	andl	-24(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-88(%rbp), %rax
	movl	16(%rax), %eax
	xorl	-44(%rbp), %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, 16(%rax)
	movl	-44(%rbp), %eax
	cltq
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_consttime_swap@PLT
	addl	$1, -24(%rbp)
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L159
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	shrl	$31, %eax
	notl	%eax
	movl	%eax, %eax
	andq	%rdx, %rax
	andl	$1, %eax
	movq	%rax, %rdi
	movl	-60(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	call	BN_consttime_swap@PLT
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_rshift1@PLT
	testl	%eax, %eax
	je	.L160
	addl	$1, -12(%rbp)
.L150:
	movl	-12(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jl	.L153
	movq	-88(%rbp), %rax
	movl	$0, 16(%rax)
	movl	-28(%rbp), %edx
	movq	-88(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_lshift@PLT
	testl	%eax, %eax
	je	.L161
	movq	-88(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_rshift1@PLT
	testl	%eax, %eax
	je	.L161
	movl	$1, -32(%rbp)
	jmp	.L140
.L156:
	nop
	jmp	.L140
.L157:
	nop
	jmp	.L140
.L158:
	nop
	jmp	.L140
.L159:
	nop
	jmp	.L140
.L160:
	nop
	jmp	.L140
.L161:
	nop
.L140:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-32(%rbp), %eax
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BN_gcd, .-BN_gcd
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"BN_mod_inverse"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

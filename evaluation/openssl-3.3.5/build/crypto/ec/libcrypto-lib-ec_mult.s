	.file	"ec_mult.c"
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
.LFB160:
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
.LFE160:
	.size	CRYPTO_UP_REF, .-CRYPTO_UP_REF
	.type	CRYPTO_DOWN_REF, @function
CRYPTO_DOWN_REF:
.LFB161:
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
	negl	%edx
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	leal	-1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L8
.L8:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	CRYPTO_DOWN_REF, .-CRYPTO_DOWN_REF
	.type	CRYPTO_NEW_REF, @function
CRYPTO_NEW_REF:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	xchgl	(%rax), %edx
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	CRYPTO_NEW_REF, .-CRYPTO_NEW_REF
	.type	CRYPTO_FREE_REF, @function
CRYPTO_FREE_REF:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	CRYPTO_FREE_REF, .-CRYPTO_FREE_REF
	.type	ec_point_ladder_pre, @function
ec_point_ladder_pre:
.LFB408:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	416(%rax), %rax
	testq	%rax, %rax
	je	.L14
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	416(%rax), %r9
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	jmp	.L15
.L14:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	je	.L16
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_dbl@PLT
	testl	%eax, %eax
	jne	.L17
.L16:
	movl	$0, %eax
	jmp	.L15
.L17:
	movl	$1, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ec_point_ladder_pre, .-ec_point_ladder_pre
	.type	ec_point_ladder_step, @function
ec_point_ladder_step:
.LFB409:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	424(%rax), %rax
	testq	%rax, %rax
	je	.L19
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	424(%rax), %r9
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	jmp	.L20
.L19:
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_add@PLT
	testl	%eax, %eax
	je	.L21
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_dbl@PLT
	testl	%eax, %eax
	jne	.L22
.L21:
	movl	$0, %eax
	jmp	.L20
.L22:
	movl	$1, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	ec_point_ladder_step, .-ec_point_ladder_step
	.type	ec_point_ladder_post, @function
ec_point_ladder_post:
.LFB410:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	432(%rax), %rax
	testq	%rax, %rax
	je	.L24
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	432(%rax), %r9
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	jmp	.L25
.L24:
	movl	$1, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	ec_point_ladder_post, .-ec_point_ladder_post
	.section	.rodata
.LC0:
	.string	"../crypto/ec/ec_mult.c"
	.text
	.type	ec_pre_comp_new, @function
ec_pre_comp_new:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	leaq	.LC0(%rip), %rax
	movl	$57, %edx
	movq	%rax, %rsi
	movl	$56, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L29
	movq	-8(%rbp), %rax
	jmp	.L28
.L29:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$8, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$4, 24(%rax)
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	jne	.L30
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$66, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L28
.L30:
	movq	-8(%rbp), %rax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	ec_pre_comp_new, .-ec_pre_comp_new
	.globl	EC_ec_pre_comp_dup
	.type	EC_ec_pre_comp_dup, @function
EC_ec_pre_comp_dup:
.LFB412:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L32
	movq	-24(%rbp), %rax
	leaq	48(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
.L32:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	EC_ec_pre_comp_dup, .-EC_ec_pre_comp_dup
	.globl	EC_ec_pre_comp_free
	.type	EC_ec_pre_comp_free, @function
EC_ec_pre_comp_free:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L42
	movq	-24(%rbp), %rax
	leaq	48(%rax), %rdx
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	jg	.L43
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L39
.L40:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	addq	$8, -8(%rbp)
.L39:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L40
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$98, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L38:
	movq	-24(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$101, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L34
.L42:
	nop
	jmp	.L34
.L43:
	nop
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	EC_ec_pre_comp_free, .-EC_ec_pre_comp_free
	.globl	ossl_ec_scalar_mul_ladder
	.type	ossl_ec_scalar_mul_ladder, @function
ossl_ec_scalar_mul_ladder:
.LFB414:
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
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L45
	movq	-112(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L45
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_set_to_infinity@PLT
	jmp	.L46
.L45:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L47
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$156, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L46
.L47:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L48
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$160, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$164, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L46
.L48:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L49
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L50
.L49:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$168, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L50:
	cmpq	$0, -112(%rbp)
	jne	.L52
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	jne	.L53
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$174, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L52:
	movq	-112(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	jne	.L53
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$179, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L53:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-96(%rbp), %rax
	movq	32(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L54
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$192, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L54:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-120(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	jne	.L55
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$197, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L55:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	bn_get_top@PLT
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	leal	2(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L56
	movl	-64(%rbp), %eax
	leal	2(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L57
.L56:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$211, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L57:
	movq	-104(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L58
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$216, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L58:
	movq	-40(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	%eax, -60(%rbp)
	jl	.L59
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L60
.L59:
	movq	-120(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	jne	.L60
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$228, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L60:
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	jne	.L61
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$234, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L61:
	movq	-48(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	jne	.L62
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$239, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L62:
	movl	-60(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	movl	%eax, -68(%rbp)
	movl	-64(%rbp), %eax
	leal	2(%rax), %ecx
	movl	-68(%rbp), %eax
	cltq
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_consttime_swap@PLT
	movq	-88(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	bn_get_top@PLT
	movl	%eax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	-64(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L63
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	-64(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L63
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	-64(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L63
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	-64(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L63
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movl	-64(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L63
	movq	-96(%rbp), %rax
	movq	32(%rax), %rax
	movl	-64(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L63
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	-64(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L63
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	-64(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L63
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	-64(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L64
.L63:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$259, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L64:
	movq	-32(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L65
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.L66
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	208(%rax), %r8
	movq	-120(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L65
.L66:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$266, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L65:
	movq	-120(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ec_point_ladder_pre
	testl	%eax, %eax
	jne	.L67
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$272, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$153, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L67:
	movl	$1, -8(%rbp)
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L68
.L70:
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	xorl	-8(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	16(%rax), %rsi
	movl	-68(%rbp), %eax
	cltq
	movl	-64(%rbp), %ecx
	movq	%rax, %rdi
	call	BN_consttime_swap@PLT
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	24(%rax), %rsi
	movl	-68(%rbp), %eax
	cltq
	movl	-64(%rbp), %ecx
	movq	%rax, %rdi
	call	BN_consttime_swap@PLT
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	32(%rax), %rsi
	movl	-68(%rbp), %eax
	cltq
	movl	-64(%rbp), %ecx
	movq	%rax, %rdi
	call	BN_consttime_swap@PLT
	movq	-96(%rbp), %rax
	movl	40(%rax), %edx
	movq	-16(%rbp), %rax
	movl	40(%rax), %eax
	xorl	%edx, %eax
	andl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	movq	-96(%rbp), %rax
	movl	40(%rax), %eax
	xorl	-72(%rbp), %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-16(%rbp), %rax
	movl	40(%rax), %eax
	xorl	-72(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-120(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ec_point_ladder_step
	testl	%eax, %eax
	jne	.L69
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$352, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$162, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L69:
	movl	-68(%rbp), %eax
	xorl	%eax, -8(%rbp)
	subl	$1, -4(%rbp)
.L68:
	cmpl	$0, -4(%rbp)
	jns	.L70
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	16(%rax), %rsi
	movl	-8(%rbp), %eax
	cltq
	movl	-64(%rbp), %ecx
	movq	%rax, %rdi
	call	BN_consttime_swap@PLT
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	24(%rax), %rsi
	movl	-8(%rbp), %eax
	cltq
	movl	-64(%rbp), %ecx
	movq	%rax, %rdi
	call	BN_consttime_swap@PLT
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	32(%rax), %rsi
	movl	-8(%rbp), %eax
	cltq
	movl	-64(%rbp), %ecx
	movq	%rax, %rdi
	call	BN_consttime_swap@PLT
	movq	-96(%rbp), %rax
	movl	40(%rax), %edx
	movq	-16(%rbp), %rax
	movl	40(%rax), %eax
	xorl	%edx, %eax
	andl	-8(%rbp), %eax
	movl	%eax, -72(%rbp)
	movq	-96(%rbp), %rax
	movl	40(%rax), %eax
	xorl	-72(%rbp), %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-16(%rbp), %rax
	movl	40(%rax), %eax
	xorl	-72(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-120(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ec_point_ladder_post
	testl	%eax, %eax
	jne	.L71
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$367, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$136, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L71:
	movl	$1, -20(%rbp)
.L51:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_clear_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-20(%rbp), %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	ossl_ec_scalar_mul_ladder, .-ossl_ec_scalar_mul_ladder
	.globl	ossl_ec_wNAF_mul
	.type	ossl_ec_wNAF_mul, @function
ossl_ec_wNAF_mul:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$280, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%r8, -280(%rbp)
	movq	%r9, -288(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -88(%rbp)
	movl	$1, -92(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -168(%rbp)
	movl	$0, -172(%rbp)
	movl	$0, -176(%rbp)
	movq	-248(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L73
	movq	-248(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L73
	movq	-248(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -264(%rbp)
	je	.L74
	cmpq	$0, -264(%rbp)
	je	.L74
	cmpq	$0, -272(%rbp)
	jne	.L74
	movq	16(%rbp), %rcx
	movq	-264(%rbp), %rdx
	movq	-256(%rbp), %rsi
	movq	-248(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_ec_scalar_mul_ladder@PLT
	jmp	.L75
.L74:
	cmpq	$0, -264(%rbp)
	jne	.L73
	cmpq	$1, -272(%rbp)
	jne	.L73
	movq	-288(%rbp), %rax
	movq	(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L73
	movq	-280(%rbp), %rax
	movq	(%rax), %rcx
	movq	-288(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rdi
	movq	-256(%rbp), %rsi
	movq	-248(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_ec_scalar_mul_ladder@PLT
	jmp	.L75
.L73:
	cmpq	$0, -264(%rbp)
	je	.L76
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L77
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$465, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L78
.L77:
	movq	-248(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	je	.L79
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L79
	movq	-168(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	testl	%eax, %eax
	jne	.L79
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cltq
	movl	$0, %edx
	divq	-48(%rbp)
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-56(%rbp), %rax
	jnb	.L80
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
.L80:
	movq	-168(%rbp), %rax
	movq	24(%rax), %rax
	subl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-168(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	imulq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L76
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$493, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L78
.L79:
	movq	$0, -168(%rbp)
	movq	$1, -56(%rbp)
	movl	$1, -172(%rbp)
.L76:
	movq	-272(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$507, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rax
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$508, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -120(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$510, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rax
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$511, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -160(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L82
	movq	-112(%rbp), %rax
	movq	$0, (%rax)
.L82:
	cmpq	$0, -104(%rbp)
	je	.L155
	cmpq	$0, -120(%rbp)
	je	.L155
	cmpq	$0, -112(%rbp)
	je	.L155
	cmpq	$0, -160(%rbp)
	je	.L155
	movq	$0, -136(%rbp)
	movq	$0, -72(%rbp)
	jmp	.L85
.L98:
	movq	-72(%rbp), %rax
	cmpq	-272(%rbp), %rax
	jnb	.L86
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cltq
	movq	%rax, -184(%rbp)
	jmp	.L87
.L86:
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cltq
	movq	%rax, -184(%rbp)
.L87:
	cmpq	$1999, -184(%rbp)
	ja	.L88
	cmpq	$799, -184(%rbp)
	ja	.L89
	cmpq	$299, -184(%rbp)
	ja	.L90
	cmpq	$69, -184(%rbp)
	ja	.L91
	cmpq	$19, -184(%rbp)
	jbe	.L92
	movl	$2, %eax
	jmp	.L93
.L92:
	movl	$1, %eax
	jmp	.L93
.L91:
	movl	$3, %eax
	jmp	.L93
.L90:
	movl	$4, %eax
	jmp	.L93
.L89:
	movl	$5, %eax
	jmp	.L93
.L88:
	movl	$6, %eax
.L93:
	movq	-72(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-104(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	subl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	addq	%rax, -136(%rbp)
	movq	-72(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-104(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	%eax, %edi
	movq	-72(%rbp), %rax
	cmpq	-272(%rbp), %rax
	jnb	.L94
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-288(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	jmp	.L95
.L94:
	movq	-264(%rbp), %rax
.L95:
	movq	-72(%rbp), %rcx
	leaq	0(,%rcx,8), %rsi
	movq	-112(%rbp), %rcx
	leaq	(%rsi,%rcx), %rbx
	movl	%edi, %esi
	movq	%rax, %rdi
	call	bn_compute_wNAF@PLT
	movq	%rax, (%rbx)
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L156
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -128(%rbp)
	jnb	.L97
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
.L97:
	addq	$1, -72(%rbp)
.L85:
	movl	-172(%rbp), %eax
	movslq	%eax, %rdx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -72(%rbp)
	jb	.L98
	cmpq	$0, -56(%rbp)
	je	.L99
	cmpq	$0, -168(%rbp)
	jne	.L100
	cmpl	$1, -172(%rbp)
	je	.L99
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$546, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L78
.L100:
	movq	$0, -224(%rbp)
	movq	$0, -240(%rbp)
	cmpl	$0, -172(%rbp)
	je	.L101
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$555, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L78
.L101:
	movq	-272(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movq	-168(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, (%rdx)
	movq	-272(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	leaq	-240(%rbp), %rdx
	movq	-264(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bn_compute_wNAF@PLT
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	je	.L157
	movq	-240(%rbp), %rax
	cmpq	%rax, -128(%rbp)
	jb	.L104
	movq	$1, -56(%rbp)
	movq	-272(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-272(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rax, %rdx
	movq	-224(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-272(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	movq	-272(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-240(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-272(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-160(%rbp), %rax
	addq	%rax, %rdx
	movq	-168(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
	jmp	.L99
.L104:
	movq	-56(%rbp), %rax
	imulq	-48(%rbp), %rax
	movq	-240(%rbp), %rdx
	cmpq	%rax, %rdx
	jnb	.L106
	movq	-240(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movl	$0, %edx
	divq	-48(%rbp)
	movq	%rax, -56(%rbp)
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-56(%rbp), %rax
	jnb	.L107
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$598, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC0(%rip), %rcx
	movq	-224(%rbp), %rax
	movl	$599, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L78
.L107:
	movq	-272(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
.L106:
	movq	-224(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-168(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.L108
.L115:
	movq	-40(%rbp), %rax
	subq	$1, %rax
	cmpq	%rax, -72(%rbp)
	jnb	.L109
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-240(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L110
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$613, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC0(%rip), %rcx
	movq	-224(%rbp), %rax
	movl	$614, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L78
.L110:
	movq	-240(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)
	jmp	.L111
.L109:
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-240(%rbp), %rax
	movq	%rax, (%rdx)
.L111:
	movq	-72(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-112(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	leaq	.LC0(%rip), %rcx
	movl	$626, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, (%rbx)
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L112
	leaq	.LC0(%rip), %rcx
	movq	-224(%rbp), %rax
	movl	$628, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L78
.L112:
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-112(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-192(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -128(%rbp)
	jnb	.L113
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
.L113:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L114
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$636, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC0(%rip), %rcx
	movq	-224(%rbp), %rax
	movl	$637, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L78
.L114:
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-160(%rbp), %rax
	addq	%rax, %rdx
	movq	-200(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-64(%rbp), %rax
	salq	$3, %rax
	addq	%rax, -200(%rbp)
	movq	-48(%rbp), %rax
	addq	%rax, -192(%rbp)
	addq	$1, -72(%rbp)
.L108:
	movq	-72(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L115
	leaq	.LC0(%rip), %rcx
	movq	-224(%rbp), %rax
	movl	$644, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L99:
	movq	-136(%rbp), %rax
	addq	$1, %rax
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$654, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	je	.L158
	movq	-136(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	$0, -72(%rbp)
	jmp	.L117
.L121:
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-160(%rbp), %rax
	addq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -80(%rbp)
	jmp	.L118
.L120:
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	-152(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L159
	addq	$8, -152(%rbp)
	addq	$1, -80(%rbp)
.L118:
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	subl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	cmpq	%rax, -80(%rbp)
	jb	.L120
	addq	$1, -72(%rbp)
.L117:
	movl	-172(%rbp), %eax
	movslq	%eax, %rdx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -72(%rbp)
	jb	.L121
	movq	-136(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -152(%rbp)
	je	.L122
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$671, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L78
.L122:
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L160
	movq	$0, -72(%rbp)
	jmp	.L124
.L132:
	movq	-72(%rbp), %rax
	cmpq	-272(%rbp), %rax
	jnb	.L125
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-160(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	jne	.L126
	jmp	.L78
.L125:
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	je	.L161
.L126:
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	$1, %rax
	jbe	.L127
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_dbl@PLT
	testl	%eax, %eax
	je	.L162
	movq	$1, -80(%rbp)
	jmp	.L129
.L131:
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-160(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rsi
	movq	16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-248(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_add@PLT
	testl	%eax, %eax
	je	.L163
	addq	$1, -80(%rbp)
.L129:
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	subl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	cmpq	%rax, -80(%rbp)
	jb	.L131
.L127:
	addq	$1, -72(%rbp)
.L124:
	movl	-172(%rbp), %eax
	movslq	%eax, %rdx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -72(%rbp)
	jb	.L132
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	je	.L164
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	216(%rax), %r8
	movq	16(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rsi
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L164
	movl	$1, -92(%rbp)
	movq	-128(%rbp), %rax
	subl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.L135
.L146:
	cmpl	$0, -92(%rbp)
	jne	.L136
	movq	16(%rbp), %rcx
	movq	-256(%rbp), %rdx
	movq	-256(%rbp), %rsi
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_dbl@PLT
	testl	%eax, %eax
	je	.L165
.L136:
	movq	$0, -72(%rbp)
	jmp	.L137
.L145:
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	cmpq	%rax, %rdx
	jnb	.L138
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -204(%rbp)
	cmpl	$0, -204(%rbp)
	je	.L138
	movl	-204(%rbp), %eax
	shrl	$31, %eax
	movzbl	%al, %eax
	movl	%eax, -228(%rbp)
	cmpl	$0, -228(%rbp)
	je	.L139
	negl	-204(%rbp)
.L139:
	movl	-228(%rbp), %eax
	cmpl	-88(%rbp), %eax
	je	.L140
	cmpl	$0, -92(%rbp)
	jne	.L141
	movq	16(%rbp), %rdx
	movq	-256(%rbp), %rcx
	movq	-248(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_invert@PLT
	testl	%eax, %eax
	je	.L166
.L141:
	cmpl	$0, -88(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -88(%rbp)
.L140:
	cmpl	$0, -92(%rbp)
	je	.L142
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-204(%rbp), %edx
	sarl	%edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	je	.L167
	movq	16(%rbp), %rdx
	movq	-256(%rbp), %rcx
	movq	-248(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_point_blind_coordinates@PLT
	testl	%eax, %eax
	jne	.L144
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$751, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$163, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L78
.L144:
	movl	$0, -92(%rbp)
	jmp	.L138
.L142:
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-204(%rbp), %edx
	sarl	%edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	16(%rbp), %rdi
	movq	-256(%rbp), %rdx
	movq	-256(%rbp), %rsi
	movq	-248(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_add@PLT
	testl	%eax, %eax
	je	.L168
.L138:
	addq	$1, -72(%rbp)
.L137:
	movq	-72(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L145
	subl	$1, -84(%rbp)
.L135:
	cmpl	$0, -84(%rbp)
	jns	.L146
	cmpl	$0, -92(%rbp)
	je	.L147
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_set_to_infinity@PLT
	testl	%eax, %eax
	jne	.L148
	jmp	.L78
.L147:
	cmpl	$0, -88(%rbp)
	je	.L148
	movq	16(%rbp), %rdx
	movq	-256(%rbp), %rcx
	movq	-248(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_invert@PLT
	testl	%eax, %eax
	je	.L169
.L148:
	movl	$1, -176(%rbp)
	jmp	.L78
.L155:
	nop
	jmp	.L78
.L156:
	nop
	jmp	.L78
.L157:
	nop
	jmp	.L78
.L158:
	nop
	jmp	.L78
.L159:
	nop
	jmp	.L78
.L160:
	nop
	jmp	.L78
.L161:
	nop
	jmp	.L78
.L162:
	nop
	jmp	.L78
.L163:
	nop
	jmp	.L78
.L164:
	nop
	jmp	.L78
.L165:
	nop
	jmp	.L78
.L166:
	nop
	jmp	.L78
.L167:
	nop
	jmp	.L78
.L168:
	nop
	jmp	.L78
.L169:
	nop
.L78:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-104(%rbp), %rax
	movl	$779, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-120(%rbp), %rax
	movl	$780, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -112(%rbp)
	je	.L149
	movq	-112(%rbp), %rax
	movq	%rax, -216(%rbp)
	jmp	.L150
.L151:
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$785, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addq	$8, -216(%rbp)
.L150:
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L151
	leaq	.LC0(%rip), %rcx
	movq	-112(%rbp), %rax
	movl	$787, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L149:
	cmpq	$0, -144(%rbp)
	je	.L152
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	jmp	.L153
.L154:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EC_POINT_clear_free@PLT
	addq	$8, -152(%rbp)
.L153:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L154
	leaq	.LC0(%rip), %rcx
	movq	-144(%rbp), %rax
	movl	$793, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L152:
	leaq	.LC0(%rip), %rcx
	movq	-160(%rbp), %rax
	movl	$795, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-176(%rbp), %eax
.L75:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	ossl_ec_wNAF_mul, .-ossl_ec_wNAF_mul
	.globl	ossl_ec_wNAF_precompute_mult
	.type	ossl_ec_wNAF_precompute_mult, @function
ossl_ec_wNAF_precompute_mult:
.LFB416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EC_pre_comp_free@PLT
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	ec_pre_comp_new
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L171
	movl	$0, %eax
	jmp	.L172
.L171:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L173
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$840, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L174
.L173:
	cmpq	$0, -192(%rbp)
	jne	.L175
	call	BN_CTX_new@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -192(%rbp)
.L175:
	cmpq	$0, -192(%rbp)
	je	.L217
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movl	$1, -80(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L218
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L178
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$858, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L174
.L178:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cltq
	movq	%rax, -136(%rbp)
	movq	$8, -144(%rbp)
	movq	$4, -56(%rbp)
	cmpq	$1999, -136(%rbp)
	ja	.L179
	cmpq	$799, -136(%rbp)
	ja	.L180
	cmpq	$299, -136(%rbp)
	ja	.L181
	cmpq	$69, -136(%rbp)
	ja	.L182
	cmpq	$19, -136(%rbp)
	jbe	.L183
	movl	$2, %eax
	jmp	.L184
.L183:
	movl	$1, %eax
	jmp	.L184
.L182:
	movl	$3, %eax
	jmp	.L184
.L181:
	movl	$4, %eax
	jmp	.L184
.L180:
	movl	$5, %eax
	jmp	.L184
.L179:
	movl	$6, %eax
.L184:
	cmpq	%rax, -56(%rbp)
	jnb	.L185
	cmpq	$1999, -136(%rbp)
	ja	.L186
	cmpq	$799, -136(%rbp)
	ja	.L187
	cmpq	$299, -136(%rbp)
	ja	.L188
	cmpq	$69, -136(%rbp)
	ja	.L189
	cmpq	$19, -136(%rbp)
	jbe	.L190
	movq	$2, -56(%rbp)
	jmp	.L185
.L190:
	movq	$1, -56(%rbp)
	jmp	.L185
.L189:
	movq	$3, -56(%rbp)
	jmp	.L185
.L188:
	movq	$4, -56(%rbp)
	jmp	.L185
.L187:
	movq	$5, -56(%rbp)
	jmp	.L185
.L186:
	movq	$6, -56(%rbp)
.L185:
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movl	$0, %edx
	divq	-144(%rbp)
	movq	%rax, -152(%rbp)
	movq	-56(%rbp), %rax
	subl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	imulq	-152(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	addq	$1, %rax
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$884, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L219
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-168(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	movq	$0, -48(%rbp)
	jmp	.L192
.L194:
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	testq	%rax, %rax
	jne	.L193
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$892, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L174
.L193:
	addq	$1, -48(%rbp)
.L192:
	movq	-48(%rbp), %rax
	cmpq	-168(%rbp), %rax
	jb	.L194
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L195
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L196
.L195:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$899, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L174
.L196:
	movq	-120(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	je	.L220
	movq	$0, -48(%rbp)
	jmp	.L198
.L210:
	movq	-192(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_dbl@PLT
	testl	%eax, %eax
	je	.L221
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	je	.L222
	movq	$1, -96(%rbp)
	jmp	.L201
.L203:
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	movq	-192(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_add@PLT
	testl	%eax, %eax
	je	.L223
	addq	$1, -96(%rbp)
	addq	$8, -40(%rbp)
.L201:
	movq	-96(%rbp), %rax
	cmpq	-160(%rbp), %rax
	jb	.L203
	movq	-152(%rbp), %rax
	subq	$1, %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L204
	cmpq	$2, -144(%rbp)
	ja	.L205
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$931, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L174
.L205:
	movq	-192(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_dbl@PLT
	testl	%eax, %eax
	je	.L224
	movq	$2, -104(%rbp)
	jmp	.L207
.L209:
	movq	-192(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_dbl@PLT
	testl	%eax, %eax
	je	.L225
	addq	$1, -104(%rbp)
.L207:
	movq	-104(%rbp), %rax
	cmpq	-144(%rbp), %rax
	jb	.L209
.L204:
	addq	$1, -48(%rbp)
.L198:
	movq	-48(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jb	.L210
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	je	.L226
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	216(%rax), %r8
	movq	-192(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-168(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L226
	movq	-72(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	$0, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-184(%rbp), %rax
	movl	$6, 152(%rax)
	movq	-184(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 160(%rax)
	movq	$0, -72(%rbp)
	movl	$1, -76(%rbp)
	jmp	.L174
.L217:
	nop
	jmp	.L174
.L218:
	nop
	jmp	.L174
.L219:
	nop
	jmp	.L174
.L220:
	nop
	jmp	.L174
.L221:
	nop
	jmp	.L174
.L222:
	nop
	jmp	.L174
.L223:
	nop
	jmp	.L174
.L224:
	nop
	jmp	.L174
.L225:
	nop
	jmp	.L174
.L226:
	nop
.L174:
	cmpl	$0, -80(%rbp)
	je	.L213
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
.L213:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_ec_pre_comp_free@PLT
	cmpq	$0, -64(%rbp)
	je	.L214
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)
	jmp	.L215
.L216:
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	addq	$8, -112(%rbp)
.L215:
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L216
	leaq	.LC0(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$971, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L214:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movl	-76(%rbp), %eax
.L172:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	ossl_ec_wNAF_precompute_mult, .-ossl_ec_wNAF_precompute_mult
	.globl	ossl_ec_wNAF_have_precompute_mult
	.type	ossl_ec_wNAF_have_precompute_mult, @function
ossl_ec_wNAF_have_precompute_mult:
.LFB417:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	152(%rax), %eax
	cmpl	$6, %eax
	jne	.L228
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L228
	movl	$1, %eax
	jmp	.L230
.L228:
	movl	$0, %eax
.L230:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	ossl_ec_wNAF_have_precompute_mult, .-ossl_ec_wNAF_have_precompute_mult
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 26
__func__.2:
	.string	"ossl_ec_scalar_mul_ladder"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"ossl_ec_wNAF_mul"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 29
__func__.0:
	.string	"ossl_ec_wNAF_precompute_mult"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

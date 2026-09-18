	.file	"ecp_mont.c"
	.text
	.globl	EC_GFp_mont_method
	.type	EC_GFp_mont_method, @function
EC_GFp_mont_method:
.LFB367:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ret.7(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	EC_GFp_mont_method, .-EC_GFp_mont_method
	.globl	ossl_ec_GFp_mont_group_init
	.type	ossl_ec_GFp_mont_group_init, @function
ossl_ec_GFp_mont_group_init:
.LFB368:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_GFp_simple_group_init@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 128(%rax)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	ossl_ec_GFp_mont_group_init, .-ossl_ec_GFp_mont_group_init
	.globl	ossl_ec_GFp_mont_group_finish
	.type	ossl_ec_GFp_mont_group_finish, @function
ossl_ec_GFp_mont_group_finish:
.LFB369:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_GFp_simple_group_finish@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	ossl_ec_GFp_mont_group_finish, .-ossl_ec_GFp_mont_group_finish
	.globl	ossl_ec_GFp_mont_group_clear_finish
	.type	ossl_ec_GFp_mont_group_clear_finish, @function
ossl_ec_GFp_mont_group_clear_finish:
.LFB370:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_GFp_simple_group_clear_finish@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	ossl_ec_GFp_mont_group_clear_finish, .-ossl_ec_GFp_mont_group_clear_finish
	.globl	ossl_ec_GFp_mont_group_copy
	.type	ossl_ec_GFp_mont_group_copy, @function
ossl_ec_GFp_mont_group_copy:
.LFB371:
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
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_GFp_simple_group_copy@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L10
	call	BN_MONT_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 120(%rdx)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L11
	movl	$0, %eax
	jmp	.L9
.L11:
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_copy@PLT
	testq	%rax, %rax
	je	.L14
.L10:
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L13
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 128(%rdx)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L15
.L13:
	movl	$1, %eax
	jmp	.L9
.L14:
	nop
	jmp	.L12
.L15:
	nop
.L12:
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 120(%rax)
	movl	$0, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	ossl_ec_GFp_mont_group_copy, .-ossl_ec_GFp_mont_group_copy
	.section	.rodata
.LC0:
	.string	"../crypto/ec/ecp_mont.c"
	.text
	.globl	ossl_ec_GFp_mont_group_set_curve
	.type	ossl_ec_GFp_mont_group_set_curve, @function
ossl_ec_GFp_mont_group_set_curve:
.LFB372:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 128(%rax)
	cmpq	$0, -72(%rbp)
	jne	.L17
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	call	BN_MONT_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L24
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	jne	.L21
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$166, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L20
.L21:
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L25
	call	BN_value_one@PLT
	movq	%rax, %rsi
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_to_montgomery@PLT
	testl	%eax, %eax
	je	.L26
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 120(%rax)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 128(%rax)
	movq	$0, -24(%rbp)
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_ec_GFp_simple_group_set_curve@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L27
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 128(%rax)
	jmp	.L20
.L24:
	nop
	jmp	.L20
.L25:
	nop
	jmp	.L20
.L26:
	nop
	jmp	.L20
.L27:
	nop
.L20:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movl	-28(%rbp), %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE372:
	.size	ossl_ec_GFp_mont_group_set_curve, .-ossl_ec_GFp_mont_group_set_curve
	.globl	ossl_ec_GFp_mont_field_mul
	.type	ossl_ec_GFp_mont_field_mul, @function
ossl_ec_GFp_mont_field_mul:
.LFB373:
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
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L29
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$200, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	-8(%rbp), %rax
	movq	120(%rax), %rcx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_montgomery@PLT
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE373:
	.size	ossl_ec_GFp_mont_field_mul, .-ossl_ec_GFp_mont_field_mul
	.globl	ossl_ec_GFp_mont_field_sqr
	.type	ossl_ec_GFp_mont_field_sqr, @function
ossl_ec_GFp_mont_field_sqr:
.LFB374:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L32
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$211, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	-8(%rbp), %rax
	movq	120(%rax), %rcx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_montgomery@PLT
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE374:
	.size	ossl_ec_GFp_mont_field_sqr, .-ossl_ec_GFp_mont_field_sqr
	.globl	ossl_ec_GFp_mont_field_inv
	.type	ossl_ec_GFp_mont_field_inv, @function
ossl_ec_GFp_mont_field_inv:
.LFB375:
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
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L35
	movl	$0, %eax
	jmp	.L36
.L35:
	cmpq	$0, -64(%rbp)
	jne	.L37
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_secure_new_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L37
	movl	$0, %eax
	jmp	.L36
.L37:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L44
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L45
	movq	-40(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L46
	movq	-40(%rbp), %rax
	movq	120(%rax), %r8
	movq	-40(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont@PLT
	testl	%eax, %eax
	je	.L47
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L43
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$255, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$165, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L39
.L43:
	movl	$1, -12(%rbp)
	jmp	.L39
.L44:
	nop
	jmp	.L39
.L45:
	nop
	jmp	.L39
.L46:
	nop
	jmp	.L39
.L47:
	nop
.L39:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-12(%rbp), %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE375:
	.size	ossl_ec_GFp_mont_field_inv, .-ossl_ec_GFp_mont_field_inv
	.globl	ossl_ec_GFp_mont_field_encode
	.type	ossl_ec_GFp_mont_field_encode, @function
ossl_ec_GFp_mont_field_encode:
.LFB376:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L49
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$271, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L50
.L49:
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_to_montgomery@PLT
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE376:
	.size	ossl_ec_GFp_mont_field_encode, .-ossl_ec_GFp_mont_field_encode
	.globl	ossl_ec_GFp_mont_field_decode
	.type	ossl_ec_GFp_mont_field_decode, @function
ossl_ec_GFp_mont_field_decode:
.LFB377:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L52
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$282, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L53
.L52:
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_from_montgomery@PLT
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE377:
	.size	ossl_ec_GFp_mont_field_decode, .-ossl_ec_GFp_mont_field_decode
	.globl	ossl_ec_GFp_mont_field_set_to_one
	.type	ossl_ec_GFp_mont_field_set_to_one, @function
ossl_ec_GFp_mont_field_set_to_one:
.LFB378:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	jne	.L55
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$293, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L56
.L55:
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L57
	movl	$0, %eax
	jmp	.L56
.L57:
	movl	$1, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE378:
	.size	ossl_ec_GFp_mont_field_set_to_one, .-ossl_ec_GFp_mont_field_set_to_one
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ret.7, @object
	.size	ret.7, 440
ret.7:
	.long	1
	.long	406
	.quad	ossl_ec_GFp_mont_group_init
	.quad	ossl_ec_GFp_mont_group_finish
	.quad	ossl_ec_GFp_mont_group_clear_finish
	.quad	ossl_ec_GFp_mont_group_copy
	.quad	ossl_ec_GFp_mont_group_set_curve
	.quad	ossl_ec_GFp_simple_group_get_curve
	.quad	ossl_ec_GFp_simple_group_get_degree
	.quad	ossl_ec_group_simple_order_bits
	.quad	ossl_ec_GFp_simple_group_check_discriminant
	.quad	ossl_ec_GFp_simple_point_init
	.quad	ossl_ec_GFp_simple_point_finish
	.quad	ossl_ec_GFp_simple_point_clear_finish
	.quad	ossl_ec_GFp_simple_point_copy
	.quad	ossl_ec_GFp_simple_point_set_to_infinity
	.quad	ossl_ec_GFp_simple_point_set_affine_coordinates
	.quad	ossl_ec_GFp_simple_point_get_affine_coordinates
	.quad	0
	.quad	0
	.quad	0
	.quad	ossl_ec_GFp_simple_add
	.quad	ossl_ec_GFp_simple_dbl
	.quad	ossl_ec_GFp_simple_invert
	.quad	ossl_ec_GFp_simple_is_at_infinity
	.quad	ossl_ec_GFp_simple_is_on_curve
	.quad	ossl_ec_GFp_simple_cmp
	.quad	ossl_ec_GFp_simple_make_affine
	.quad	ossl_ec_GFp_simple_points_make_affine
	.quad	0
	.quad	0
	.quad	0
	.quad	ossl_ec_GFp_mont_field_mul
	.quad	ossl_ec_GFp_mont_field_sqr
	.quad	0
	.quad	ossl_ec_GFp_mont_field_inv
	.quad	ossl_ec_GFp_mont_field_encode
	.quad	ossl_ec_GFp_mont_field_decode
	.quad	ossl_ec_GFp_mont_field_set_to_one
	.quad	ossl_ec_key_simple_priv2oct
	.quad	ossl_ec_key_simple_oct2priv
	.quad	0
	.quad	ossl_ec_key_simple_generate_key
	.quad	ossl_ec_key_simple_check_key
	.quad	ossl_ec_key_simple_generate_public_key
	.quad	0
	.quad	0
	.quad	ossl_ecdh_simple_compute_key
	.quad	ossl_ecdsa_simple_sign_setup
	.quad	ossl_ecdsa_simple_sign_sig
	.quad	ossl_ecdsa_simple_verify_sig
	.quad	0
	.quad	ossl_ec_GFp_simple_blind_coordinates
	.quad	ossl_ec_GFp_simple_ladder_pre
	.quad	ossl_ec_GFp_simple_ladder_step
	.quad	ossl_ec_GFp_simple_ladder_post
	.section	.rodata
	.align 32
	.type	__func__.6, @object
	.size	__func__.6, 33
__func__.6:
	.string	"ossl_ec_GFp_mont_group_set_curve"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 27
__func__.5:
	.string	"ossl_ec_GFp_mont_field_mul"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 27
__func__.4:
	.string	"ossl_ec_GFp_mont_field_sqr"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 27
__func__.3:
	.string	"ossl_ec_GFp_mont_field_inv"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 30
__func__.2:
	.string	"ossl_ec_GFp_mont_field_encode"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 30
__func__.1:
	.string	"ossl_ec_GFp_mont_field_decode"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 34
__func__.0:
	.string	"ossl_ec_GFp_mont_field_set_to_one"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"ecp_smpl.c"
	.text
	.globl	EC_GFp_simple_method
	.type	EC_GFp_simple_method, @function
EC_GFp_simple_method:
.LFB367:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ret.8(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	EC_GFp_simple_method, .-EC_GFp_simple_method
	.globl	ossl_ec_GFp_simple_group_init
	.type	ossl_ec_GFp_simple_group_init, @function
ossl_ec_GFp_simple_group_init:
.LFB368:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	BN_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 64(%rdx)
	call	BN_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 96(%rdx)
	call	BN_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 104(%rdx)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L4
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L4
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L5
.L4:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	$0, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	movl	$0, 112(%rax)
	movl	$1, %eax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	ossl_ec_GFp_simple_group_init, .-ossl_ec_GFp_simple_group_init
	.globl	ossl_ec_GFp_simple_group_finish
	.type	ossl_ec_GFp_simple_group_finish, @function
ossl_ec_GFp_simple_group_finish:
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
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	ossl_ec_GFp_simple_group_finish, .-ossl_ec_GFp_simple_group_finish
	.globl	ossl_ec_GFp_simple_group_clear_finish
	.type	ossl_ec_GFp_simple_group_clear_finish, @function
ossl_ec_GFp_simple_group_clear_finish:
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
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	ossl_ec_GFp_simple_group_clear_finish, .-ossl_ec_GFp_simple_group_clear_finish
	.globl	ossl_ec_GFp_simple_group_copy
	.type	ossl_ec_GFp_simple_group_copy, @function
ossl_ec_GFp_simple_group_copy:
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
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L12
	movl	$0, %eax
	jmp	.L11
.L12:
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L13
	movl	$0, %eax
	jmp	.L11
.L13:
	movq	-16(%rbp), %rax
	movl	112(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 112(%rax)
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	ossl_ec_GFp_simple_group_copy, .-ossl_ec_GFp_simple_group_copy
	.section	.rodata
.LC0:
	.string	"../crypto/ec/ecp_smpl.c"
	.text
	.globl	ossl_ec_GFp_simple_group_set_curve
	.type	ossl_ec_GFp_simple_group_set_curve, @function
ossl_ec_GFp_simple_group_set_curve:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$2, %eax
	jle	.L15
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	jne	.L16
.L15:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$151, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L17
.L16:
	cmpq	$0, -72(%rbp)
	jne	.L18
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L18
	movl	$0, %eax
	jmp	.L17
.L18:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L28
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L29
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	je	.L30
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L23
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %r8
	movq	-40(%rbp), %rax
	movq	96(%rax), %rsi
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L24
	jmp	.L20
.L23:
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L31
.L24:
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	je	.L32
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %r8
	movq	-40(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	104(%rax), %rsi
	movq	-72(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L33
.L26:
	movq	-24(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	je	.L34
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 112(%rax)
	movl	$1, -4(%rbp)
	jmp	.L20
.L28:
	nop
	jmp	.L20
.L29:
	nop
	jmp	.L20
.L30:
	nop
	jmp	.L20
.L31:
	nop
	jmp	.L20
.L32:
	nop
	jmp	.L20
.L33:
	nop
	jmp	.L20
.L34:
	nop
.L20:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE372:
	.size	ossl_ec_GFp_simple_group_set_curve, .-ossl_ec_GFp_simple_group_set_curve
	.globl	ossl_ec_GFp_simple_group_get_curve
	.type	ossl_ec_GFp_simple_group_get_curve, @function
ossl_ec_GFp_simple_group_get_curve:
.LFB373:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L36
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L36
	movl	$0, %eax
	jmp	.L37
.L36:
	cmpq	$0, -40(%rbp)
	jne	.L38
	cmpq	$0, -48(%rbp)
	je	.L39
.L38:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L40
	cmpq	$0, -56(%rbp)
	jne	.L41
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L41
	movl	$0, %eax
	jmp	.L37
.L41:
	cmpq	$0, -40(%rbp)
	je	.L42
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %r8
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L45
.L42:
	cmpq	$0, -48(%rbp)
	je	.L39
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %r8
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L39
	jmp	.L43
.L40:
	cmpq	$0, -40(%rbp)
	je	.L44
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L46
.L44:
	cmpq	$0, -48(%rbp)
	je	.L39
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L47
.L39:
	movl	$1, -4(%rbp)
	jmp	.L43
.L45:
	nop
	jmp	.L43
.L46:
	nop
	jmp	.L43
.L47:
	nop
.L43:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE373:
	.size	ossl_ec_GFp_simple_group_get_curve, .-ossl_ec_GFp_simple_group_get_curve
	.globl	ossl_ec_GFp_simple_group_get_degree
	.type	ossl_ec_GFp_simple_group_get_degree, @function
ossl_ec_GFp_simple_group_get_degree:
.LFB374:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE374:
	.size	ossl_ec_GFp_simple_group_get_degree, .-ossl_ec_GFp_simple_group_get_degree
	.globl	ossl_ec_GFp_simple_group_check_discriminant
	.type	ossl_ec_GFp_simple_group_check_discriminant, @function
ossl_ec_GFp_simple_group_check_discriminant:
.LFB375:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L51
	movq	-72(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L51
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$261, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L52
.L51:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L67
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L54
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %r8
	movq	-72(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-80(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L68
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %r8
	movq	-72(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-80(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L56
	jmp	.L52
.L54:
	movq	-72(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L69
	movq	-72(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L70
.L56:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L58
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L59
	jmp	.L52
.L58:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L59
	movq	-80(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sqr@PLT
	testl	%eax, %eax
	je	.L71
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L72
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_lshift@PLT
	testl	%eax, %eax
	je	.L73
	movq	-80(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sqr@PLT
	testl	%eax, %eax
	je	.L74
	movq	-56(%rbp), %rax
	movl	$27, %esi
	movq	%rax, %rdi
	call	BN_mul_word@PLT
	testl	%eax, %eax
	je	.L75
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_add@PLT
	testl	%eax, %eax
	je	.L76
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L77
.L59:
	movl	$1, -4(%rbp)
	jmp	.L52
.L67:
	nop
	jmp	.L52
.L68:
	nop
	jmp	.L52
.L69:
	nop
	jmp	.L52
.L70:
	nop
	jmp	.L52
.L71:
	nop
	jmp	.L52
.L72:
	nop
	jmp	.L52
.L73:
	nop
	jmp	.L52
.L74:
	nop
	jmp	.L52
.L75:
	nop
	jmp	.L52
.L76:
	nop
	jmp	.L52
.L77:
	nop
.L52:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE375:
	.size	ossl_ec_GFp_simple_group_check_discriminant, .-ossl_ec_GFp_simple_group_check_discriminant
	.globl	ossl_ec_GFp_simple_point_init
	.type	ossl_ec_GFp_simple_point_init, @function
ossl_ec_GFp_simple_point_init:
.LFB376:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	BN_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	call	BN_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	call	BN_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L79
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L79
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L80
.L79:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	$0, %eax
	jmp	.L81
.L80:
	movl	$1, %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE376:
	.size	ossl_ec_GFp_simple_point_init, .-ossl_ec_GFp_simple_point_init
	.globl	ossl_ec_GFp_simple_point_finish
	.type	ossl_ec_GFp_simple_point_finish, @function
ossl_ec_GFp_simple_point_finish:
.LFB377:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE377:
	.size	ossl_ec_GFp_simple_point_finish, .-ossl_ec_GFp_simple_point_finish
	.globl	ossl_ec_GFp_simple_point_clear_finish
	.type	ossl_ec_GFp_simple_point_clear_finish, @function
ossl_ec_GFp_simple_point_clear_finish:
.LFB378:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movl	$0, 40(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE378:
	.size	ossl_ec_GFp_simple_point_clear_finish, .-ossl_ec_GFp_simple_point_clear_finish
	.globl	ossl_ec_GFp_simple_point_copy
	.type	ossl_ec_GFp_simple_point_copy, @function
ossl_ec_GFp_simple_point_copy:
.LFB379:
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
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L85
	movl	$0, %eax
	jmp	.L86
.L85:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L87
	movl	$0, %eax
	jmp	.L86
.L87:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L88
	movl	$0, %eax
	jmp	.L86
.L88:
	movq	-16(%rbp), %rax
	movl	40(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	$1, %eax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE379:
	.size	ossl_ec_GFp_simple_point_copy, .-ossl_ec_GFp_simple_point_copy
	.globl	ossl_ec_GFp_simple_point_set_to_infinity
	.type	ossl_ec_GFp_simple_point_set_to_infinity, @function
ossl_ec_GFp_simple_point_set_to_infinity:
.LFB380:
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
	movl	$0, 40(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE380:
	.size	ossl_ec_GFp_simple_point_set_to_infinity, .-ossl_ec_GFp_simple_point_set_to_infinity
	.globl	ossl_ec_GFp_simple_set_Jprojective_coordinates_GFp
	.type	ossl_ec_GFp_simple_set_Jprojective_coordinates_GFp, @function
ossl_ec_GFp_simple_set_Jprojective_coordinates_GFp:
.LFB381:
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
	movq	%r9, -64(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L92
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L92
	movl	$0, %eax
	jmp	.L93
.L92:
	cmpq	$0, -40(%rbp)
	je	.L94
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	je	.L104
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L94
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %r8
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L105
.L94:
	cmpq	$0, -48(%rbp)
	je	.L97
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	je	.L106
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L97
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %r8
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L107
.L97:
	cmpq	$0, -56(%rbp)
	je	.L99
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	je	.L108
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	movl	%eax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L101
	cmpl	$0, -16(%rbp)
	je	.L102
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	296(%rax), %rax
	testq	%rax, %rax
	je	.L102
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	296(%rax), %r8
	movq	-32(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L101
	jmp	.L96
.L102:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %r8
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L109
.L101:
	movq	-32(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 40(%rax)
.L99:
	movl	$1, -12(%rbp)
	jmp	.L96
.L104:
	nop
	jmp	.L96
.L105:
	nop
	jmp	.L96
.L106:
	nop
	jmp	.L96
.L107:
	nop
	jmp	.L96
.L108:
	nop
	jmp	.L96
.L109:
	nop
.L96:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-12(%rbp), %eax
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE381:
	.size	ossl_ec_GFp_simple_set_Jprojective_coordinates_GFp, .-ossl_ec_GFp_simple_set_Jprojective_coordinates_GFp
	.globl	ossl_ec_GFp_simple_get_Jprojective_coordinates_GFp
	.type	ossl_ec_GFp_simple_get_Jprojective_coordinates_GFp, @function
ossl_ec_GFp_simple_get_Jprojective_coordinates_GFp:
.LFB382:
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
	movq	%r9, -64(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L111
	cmpq	$0, -64(%rbp)
	jne	.L112
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L112
	movl	$0, %eax
	jmp	.L113
.L112:
	cmpq	$0, -40(%rbp)
	je	.L114
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %r8
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L120
.L114:
	cmpq	$0, -48(%rbp)
	je	.L116
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %r8
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L121
.L116:
	cmpq	$0, -56(%rbp)
	je	.L117
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %r8
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L117
	jmp	.L115
.L111:
	cmpq	$0, -40(%rbp)
	je	.L118
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L122
.L118:
	cmpq	$0, -48(%rbp)
	je	.L119
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L123
.L119:
	cmpq	$0, -56(%rbp)
	je	.L117
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L124
.L117:
	movl	$1, -12(%rbp)
	jmp	.L115
.L120:
	nop
	jmp	.L115
.L121:
	nop
	jmp	.L115
.L122:
	nop
	jmp	.L115
.L123:
	nop
	jmp	.L115
.L124:
	nop
.L115:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-12(%rbp), %eax
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE382:
	.size	ossl_ec_GFp_simple_get_Jprojective_coordinates_GFp, .-ossl_ec_GFp_simple_get_Jprojective_coordinates_GFp
	.globl	ossl_ec_GFp_simple_point_set_affine_coordinates
	.type	ossl_ec_GFp_simple_point_set_affine_coordinates, @function
ossl_ec_GFp_simple_point_set_affine_coordinates:
.LFB383:
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
	cmpq	$0, -24(%rbp)
	je	.L126
	cmpq	$0, -32(%rbp)
	jne	.L127
.L126:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$493, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L128
.L127:
	call	BN_value_one@PLT
	movq	%rax, %rdi
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_Jprojective_coordinates_GFp@PLT
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE383:
	.size	ossl_ec_GFp_simple_point_set_affine_coordinates, .-ossl_ec_GFp_simple_point_set_affine_coordinates
	.globl	ossl_ec_GFp_simple_point_get_affine_coordinates
	.type	ossl_ec_GFp_simple_point_get_affine_coordinates, @function
ossl_ec_GFp_simple_point_get_affine_coordinates:
.LFB384:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -20(%rbp)
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L130
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L131
.L130:
	cmpq	$0, -104(%rbp)
	jne	.L132
	movq	-72(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L132
	movl	$0, %eax
	jmp	.L131
.L132:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L149
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L135
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %r8
	movq	-80(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-104(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L150
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L137
.L135:
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
.L137:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	je	.L138
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L139
	cmpq	$0, -88(%rbp)
	je	.L140
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %r8
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L151
.L140:
	cmpq	$0, -96(%rbp)
	je	.L141
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %r8
	movq	-80(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L141
	jmp	.L134
.L139:
	cmpq	$0, -88(%rbp)
	je	.L142
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L152
.L142:
	cmpq	$0, -96(%rbp)
	je	.L141
	movq	-80(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L141
	jmp	.L134
.L138:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	272(%rax), %r8
	movq	-104(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L143
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$562, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L134
.L143:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	jne	.L144
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-104(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L145
	jmp	.L134
.L144:
	movq	-72(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-104(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sqr@PLT
	testl	%eax, %eax
	je	.L153
.L145:
	cmpq	$0, -88(%rbp)
	je	.L146
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-104(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L154
.L146:
	cmpq	$0, -96(%rbp)
	je	.L141
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	jne	.L147
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-104(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L148
	jmp	.L134
.L147:
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-104(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L155
.L148:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-80(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-104(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-96(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L156
.L141:
	movl	$1, -20(%rbp)
	jmp	.L134
.L149:
	nop
	jmp	.L134
.L150:
	nop
	jmp	.L134
.L151:
	nop
	jmp	.L134
.L152:
	nop
	jmp	.L134
.L153:
	nop
	jmp	.L134
.L154:
	nop
	jmp	.L134
.L155:
	nop
	jmp	.L134
.L156:
	nop
.L134:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-20(%rbp), %eax
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE384:
	.size	ossl_ec_GFp_simple_point_get_affine_coordinates, .-ossl_ec_GFp_simple_point_get_affine_coordinates
	.globl	ossl_ec_GFp_simple_add
	.type	ossl_ec_GFp_simple_add, @function
ossl_ec_GFp_simple_add:
.LFB385:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-120(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jne	.L158
	movq	-136(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_dbl@PLT
	jmp	.L159
.L158:
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L160
	movq	-128(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	jmp	.L159
.L160:
	movq	-128(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L161
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	jmp	.L159
.L161:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.L162
	movq	-104(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.L162
	movl	$0, %eax
	jmp	.L159
.L162:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -72(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -88(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L201
	movq	-128(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L165
	movq	-120(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L202
	movq	-120(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L167
	jmp	.L164
.L165:
	movq	-128(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-136(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L203
	movq	-120(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-136(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L204
	movq	-128(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-136(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L205
	movq	-120(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-136(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L206
.L167:
	movq	-120(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L171
	movq	-128(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L207
	movq	-128(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L173
	jmp	.L164
.L171:
	movq	-120(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-136(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L208
	movq	-128(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-136(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-72(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L209
	movq	-120(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-136(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L210
	movq	-128(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-136(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-80(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L211
.L173:
	movq	-40(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sub_quick@PLT
	testl	%eax, %eax
	je	.L212
	movq	-40(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sub_quick@PLT
	testl	%eax, %eax
	je	.L213
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L179
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L180
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-136(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_dbl@PLT
	movl	%eax, -12(%rbp)
	movq	$0, -136(%rbp)
	jmp	.L164
.L180:
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	-112(%rbp), %rax
	movl	$0, 40(%rax)
	movl	$1, -12(%rbp)
	jmp	.L164
.L179:
	movq	-40(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L214
	movq	-40(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L215
	movq	-120(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L183
	movq	-128(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L183
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L185
	jmp	.L164
.L183:
	movq	-120(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L186
	movq	-128(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L187
	jmp	.L164
.L186:
	movq	-128(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L188
	movq	-120(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L187
	jmp	.L164
.L188:
	movq	-128(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-120(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-136(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L216
.L187:
	movq	-112(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-136(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L217
.L185:
	movq	-112(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-136(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L218
	movq	-136(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L219
	movq	-136(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L220
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_mod_sub_quick@PLT
	testl	%eax, %eax
	je	.L221
	movq	-112(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_mod_lshift1_quick@PLT
	testl	%eax, %eax
	je	.L222
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sub_quick@PLT
	testl	%eax, %eax
	je	.L223
	movq	-136(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L224
	movq	-136(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L225
	movq	-136(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L226
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sub_quick@PLT
	testl	%eax, %eax
	je	.L227
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	je	.L199
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L228
.L199:
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_rshift1@PLT
	testl	%eax, %eax
	je	.L229
	movl	$1, -12(%rbp)
	jmp	.L164
.L201:
	nop
	jmp	.L164
.L202:
	nop
	jmp	.L164
.L203:
	nop
	jmp	.L164
.L204:
	nop
	jmp	.L164
.L205:
	nop
	jmp	.L164
.L206:
	nop
	jmp	.L164
.L207:
	nop
	jmp	.L164
.L208:
	nop
	jmp	.L164
.L209:
	nop
	jmp	.L164
.L210:
	nop
	jmp	.L164
.L211:
	nop
	jmp	.L164
.L212:
	nop
	jmp	.L164
.L213:
	nop
	jmp	.L164
.L214:
	nop
	jmp	.L164
.L215:
	nop
	jmp	.L164
.L216:
	nop
	jmp	.L164
.L217:
	nop
	jmp	.L164
.L218:
	nop
	jmp	.L164
.L219:
	nop
	jmp	.L164
.L220:
	nop
	jmp	.L164
.L221:
	nop
	jmp	.L164
.L222:
	nop
	jmp	.L164
.L223:
	nop
	jmp	.L164
.L224:
	nop
	jmp	.L164
.L225:
	nop
	jmp	.L164
.L226:
	nop
	jmp	.L164
.L227:
	nop
	jmp	.L164
.L228:
	nop
	jmp	.L164
.L229:
	nop
.L164:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-12(%rbp), %eax
.L159:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE385:
	.size	ossl_ec_GFp_simple_add, .-ossl_ec_GFp_simple_add
	.globl	ossl_ec_GFp_simple_dbl
	.type	ossl_ec_GFp_simple_dbl, @function
ossl_ec_GFp_simple_dbl:
.LFB386:
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
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L231
	movq	-96(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	-96(%rbp), %rax
	movl	$0, 40(%rax)
	movl	$1, %eax
	jmp	.L232
.L231:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.L233
	movq	-88(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.L233
	movl	$0, %eax
	jmp	.L232
.L233:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L267
	movq	-104(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L236
	movq	-104(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-112(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L268
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_mod_lshift1_quick@PLT
	testl	%eax, %eax
	je	.L269
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L270
	movq	-88(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	jne	.L240
	jmp	.L235
.L236:
	movq	-88(%rbp), %rax
	movl	112(%rax), %eax
	testl	%eax, %eax
	je	.L241
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-112(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L271
	movq	-104(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L272
	movq	-104(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sub_quick@PLT
	testl	%eax, %eax
	je	.L273
	movq	-112(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L274
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_mod_lshift1_quick@PLT
	testl	%eax, %eax
	je	.L275
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	jne	.L240
	jmp	.L235
.L241:
	movq	-104(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-112(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L276
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_mod_lshift1_quick@PLT
	testl	%eax, %eax
	je	.L277
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L278
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-112(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L279
	movq	-112(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L280
	movq	-88(%rbp), %rax
	movq	96(%rax), %rcx
	movq	-112(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L281
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L282
.L240:
	movq	-104(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L253
	movq	-104(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L254
	jmp	.L235
.L253:
	movq	-104(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-112(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L283
.L254:
	movq	-96(%rbp), %rax
	movq	32(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_mod_lshift1_quick@PLT
	testl	%eax, %eax
	je	.L284
	movq	-96(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-104(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-112(%rbp), %rcx
	movq	-72(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L285
	movq	-104(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-112(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L286
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	BN_mod_lshift_quick@PLT
	testl	%eax, %eax
	je	.L287
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_mod_lshift1_quick@PLT
	testl	%eax, %eax
	je	.L288
	movq	-96(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-112(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L289
	movq	-96(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	BN_mod_sub_quick@PLT
	testl	%eax, %eax
	je	.L290
	movq	-112(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L291
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rdi
	call	BN_mod_lshift_quick@PLT
	testl	%eax, %eax
	je	.L292
	movq	-96(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sub_quick@PLT
	testl	%eax, %eax
	je	.L293
	movq	-112(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L294
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_mod_sub_quick@PLT
	testl	%eax, %eax
	je	.L295
	movl	$1, -12(%rbp)
	jmp	.L235
.L267:
	nop
	jmp	.L235
.L268:
	nop
	jmp	.L235
.L269:
	nop
	jmp	.L235
.L270:
	nop
	jmp	.L235
.L271:
	nop
	jmp	.L235
.L272:
	nop
	jmp	.L235
.L273:
	nop
	jmp	.L235
.L274:
	nop
	jmp	.L235
.L275:
	nop
	jmp	.L235
.L276:
	nop
	jmp	.L235
.L277:
	nop
	jmp	.L235
.L278:
	nop
	jmp	.L235
.L279:
	nop
	jmp	.L235
.L280:
	nop
	jmp	.L235
.L281:
	nop
	jmp	.L235
.L282:
	nop
	jmp	.L235
.L283:
	nop
	jmp	.L235
.L284:
	nop
	jmp	.L235
.L285:
	nop
	jmp	.L235
.L286:
	nop
	jmp	.L235
.L287:
	nop
	jmp	.L235
.L288:
	nop
	jmp	.L235
.L289:
	nop
	jmp	.L235
.L290:
	nop
	jmp	.L235
.L291:
	nop
	jmp	.L235
.L292:
	nop
	jmp	.L235
.L293:
	nop
	jmp	.L235
.L294:
	nop
	jmp	.L235
.L295:
	nop
.L235:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-12(%rbp), %eax
.L232:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE386:
	.size	ossl_ec_GFp_simple_dbl, .-ossl_ec_GFp_simple_dbl
	.globl	ossl_ec_GFp_simple_invert
	.type	ossl_ec_GFp_simple_invert, @function
ossl_ec_GFp_simple_invert:
.LFB387:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	jne	.L297
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L298
.L297:
	movl	$1, %eax
	jmp	.L299
.L298:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_usub@PLT
.L299:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE387:
	.size	ossl_ec_GFp_simple_invert, .-ossl_ec_GFp_simple_invert
	.globl	ossl_ec_GFp_simple_is_at_infinity
	.type	ossl_ec_GFp_simple_is_at_infinity, @function
ossl_ec_GFp_simple_is_at_infinity:
.LFB388:
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
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE388:
	.size	ossl_ec_GFp_simple_is_at_infinity, .-ossl_ec_GFp_simple_is_at_infinity
	.globl	ossl_ec_GFp_simple_is_on_curve
	.type	ossl_ec_GFp_simple_is_on_curve, @function
ossl_ec_GFp_simple_is_on_curve:
.LFB389:
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
	movq	$0, -8(%rbp)
	movl	$-1, -12(%rbp)
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L303
	movl	$1, %eax
	jmp	.L304
.L303:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L305
	movq	-88(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L305
	movl	$-1, %eax
	jmp	.L304
.L305:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L325
	movq	-96(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-104(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L326
	movq	-96(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L309
	movq	-96(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-104(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L327
	movq	-104(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L328
	movq	-104(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L329
	movq	-88(%rbp), %rax
	movl	112(%rax), %eax
	testl	%eax, %eax
	je	.L313
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_mod_lshift1_quick@PLT
	testl	%eax, %eax
	je	.L330
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L331
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sub_quick@PLT
	testl	%eax, %eax
	je	.L332
	movq	-96(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-104(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L317
	jmp	.L307
.L313:
	movq	-88(%rbp), %rax
	movq	96(%rax), %rcx
	movq	-104(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L333
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L334
	movq	-96(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-104(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L335
.L317:
	movq	-88(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-104(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L336
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	jne	.L321
	jmp	.L307
.L309:
	movq	-88(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L337
	movq	-96(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-104(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L338
	movq	-88(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L339
.L321:
	movq	-96(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-104(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L340
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	jmp	.L307
.L325:
	nop
	jmp	.L307
.L326:
	nop
	jmp	.L307
.L327:
	nop
	jmp	.L307
.L328:
	nop
	jmp	.L307
.L329:
	nop
	jmp	.L307
.L330:
	nop
	jmp	.L307
.L331:
	nop
	jmp	.L307
.L332:
	nop
	jmp	.L307
.L333:
	nop
	jmp	.L307
.L334:
	nop
	jmp	.L307
.L335:
	nop
	jmp	.L307
.L336:
	nop
	jmp	.L307
.L337:
	nop
	jmp	.L307
.L338:
	nop
	jmp	.L307
.L339:
	nop
	jmp	.L307
.L340:
	nop
.L307:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-12(%rbp), %eax
.L304:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE389:
	.size	ossl_ec_GFp_simple_is_on_curve, .-ossl_ec_GFp_simple_is_on_curve
	.globl	ossl_ec_GFp_simple_cmp
	.type	ossl_ec_GFp_simple_cmp, @function
ossl_ec_GFp_simple_cmp:
.LFB390:
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
	movq	$0, -8(%rbp)
	movl	$-1, -28(%rbp)
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L342
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L343
.L342:
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L344
	movl	$1, %eax
	jmp	.L343
.L344:
	movq	-96(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L345
	movq	-104(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L345
	movq	-104(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L346
	movq	-104(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L347
.L346:
	movl	$1, %eax
	jmp	.L343
.L347:
	movl	$0, %eax
	jmp	.L343
.L345:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.L349
	movq	-88(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.L349
	movl	$-1, %eax
	jmp	.L343
.L349:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -72(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L368
	movq	-104(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L352
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-112(%rbp), %rcx
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-48(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L369
	movq	-96(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-112(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L370
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L355
.L352:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
.L355:
	movq	-96(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L356
	movq	-96(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-112(%rbp), %rcx
	movq	-72(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-48(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L371
	movq	-104(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-112(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L372
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L359
.L356:
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.L359:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L360
	movl	$1, -28(%rbp)
	jmp	.L351
.L360:
	movq	-104(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L361
	movq	-104(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-112(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L373
	movq	-96(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-112(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L363
	jmp	.L351
.L361:
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
.L363:
	movq	-96(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L364
	movq	-96(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-112(%rbp), %rdi
	movq	-72(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L374
	movq	-104(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-112(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L366
	jmp	.L351
.L364:
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
.L366:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L367
	movl	$1, -28(%rbp)
	jmp	.L351
.L367:
	movl	$0, -28(%rbp)
	jmp	.L351
.L368:
	nop
	jmp	.L351
.L369:
	nop
	jmp	.L351
.L370:
	nop
	jmp	.L351
.L371:
	nop
	jmp	.L351
.L372:
	nop
	jmp	.L351
.L373:
	nop
	jmp	.L351
.L374:
	nop
.L351:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-28(%rbp), %eax
.L343:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE390:
	.size	ossl_ec_GFp_simple_cmp, .-ossl_ec_GFp_simple_cmp
	.globl	ossl_ec_GFp_simple_make_affine
	.type	ossl_ec_GFp_simple_make_affine, @function
ossl_ec_GFp_simple_make_affine:
.LFB391:
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
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-48(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L376
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L377
.L376:
	movl	$1, %eax
	jmp	.L378
.L377:
	cmpq	$0, -56(%rbp)
	jne	.L379
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L379
	movl	$0, %eax
	jmp	.L378
.L379:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L385
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L386
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L387
	movq	-48(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L384
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1194, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L381
.L384:
	movl	$1, -12(%rbp)
	jmp	.L381
.L385:
	nop
	jmp	.L381
.L386:
	nop
	jmp	.L381
.L387:
	nop
.L381:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-12(%rbp), %eax
.L378:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE391:
	.size	ossl_ec_GFp_simple_make_affine, .-ossl_ec_GFp_simple_make_affine
	.globl	ossl_ec_GFp_simple_points_make_affine
	.type	ossl_ec_GFp_simple_points_make_affine, @function
ossl_ec_GFp_simple_points_make_affine:
.LFB392:
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
	movq	%rcx, -112(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -44(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L389
	movl	$1, %eax
	jmp	.L390
.L389:
	cmpq	$0, -112(%rbp)
	jne	.L391
	movq	-88(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.L391
	movl	$0, %eax
	jmp	.L390
.L391:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L428
	movq	-96(%rbp), %rax
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$1230, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L429
	movq	$0, -40(%rbp)
	jmp	.L395
.L397:
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	call	BN_new@PLT
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L430
	addq	$1, -40(%rbp)
.L395:
	movq	-40(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jb	.L397
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L398
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L399
	jmp	.L393
.L398:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	296(%rax), %rax
	testq	%rax, %rax
	je	.L400
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	296(%rax), %r8
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	-112(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L399
	jmp	.L393
.L400:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L431
.L399:
	movq	$1, -40(%rbp)
	jmp	.L401
.L404:
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L402
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	32(%rax), %rcx
	movq	-40(%rbp), %rax
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rsi
	movq	-32(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rsi
	movq	-112(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L403
	jmp	.L393
.L402:
	movq	-40(%rbp), %rax
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L432
.L403:
	addq	$1, -40(%rbp)
.L401:
	movq	-40(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jb	.L404
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	272(%rax), %r8
	movq	-96(%rbp), %rax
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-112(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L405
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1275, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L393
.L405:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L406
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %r8
	movq	-112(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L433
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %r8
	movq	-112(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L434
.L406:
	movq	-96(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.L408
.L412:
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L409
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-40(%rbp), %rax
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-112(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L435
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	32(%rax), %rcx
	movq	-112(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L436
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L437
.L409:
	subq	$1, -40(%rbp)
.L408:
	cmpq	$0, -40(%rbp)
	jne	.L412
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L413
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L438
.L413:
	movq	$0, -40(%rbp)
	jmp	.L414
.L422:
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L415
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-72(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-112(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L439
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-112(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L440
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-72(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-112(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L441
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-112(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L442
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	296(%rax), %rax
	testq	%rax, %rax
	je	.L420
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	296(%rax), %r8
	movq	-72(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-112(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L421
	jmp	.L393
.L420:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L443
.L421:
	movq	-72(%rbp), %rax
	movl	$1, 40(%rax)
.L415:
	addq	$1, -40(%rbp)
.L414:
	movq	-40(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jb	.L422
	movl	$1, -44(%rbp)
	jmp	.L393
.L428:
	nop
	jmp	.L393
.L429:
	nop
	jmp	.L393
.L430:
	nop
	jmp	.L393
.L431:
	nop
	jmp	.L393
.L432:
	nop
	jmp	.L393
.L433:
	nop
	jmp	.L393
.L434:
	nop
	jmp	.L393
.L435:
	nop
	jmp	.L393
.L436:
	nop
	jmp	.L393
.L437:
	nop
	jmp	.L393
.L438:
	nop
	jmp	.L393
.L439:
	nop
	jmp	.L393
.L440:
	nop
	jmp	.L393
.L441:
	nop
	jmp	.L393
.L442:
	nop
	jmp	.L393
.L443:
	nop
.L393:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	cmpq	$0, -32(%rbp)
	je	.L423
	movq	$0, -40(%rbp)
	jmp	.L424
.L427:
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L444
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	addq	$1, -40(%rbp)
.L424:
	movq	-40(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jb	.L427
	jmp	.L426
.L444:
	nop
.L426:
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1360, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L423:
	movl	-44(%rbp), %eax
.L390:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE392:
	.size	ossl_ec_GFp_simple_points_make_affine, .-ossl_ec_GFp_simple_points_make_affine
	.globl	ossl_ec_GFp_simple_field_mul
	.type	ossl_ec_GFp_simple_field_mul, @function
ossl_ec_GFp_simple_field_mul:
.LFB393:
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
	movq	64(%rax), %rcx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE393:
	.size	ossl_ec_GFp_simple_field_mul, .-ossl_ec_GFp_simple_field_mul
	.globl	ossl_ec_GFp_simple_field_sqr
	.type	ossl_ec_GFp_simple_field_sqr, @function
ossl_ec_GFp_simple_field_sqr:
.LFB394:
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
	movq	64(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sqr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE394:
	.size	ossl_ec_GFp_simple_field_sqr, .-ossl_ec_GFp_simple_field_sqr
	.globl	ossl_ec_GFp_simple_field_inv
	.type	ossl_ec_GFp_simple_field_inv, @function
ossl_ec_GFp_simple_field_inv:
.LFB395:
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
	cmpq	$0, -64(%rbp)
	jne	.L450
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_secure_new_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L450
	movl	$0, %eax
	jmp	.L451
.L450:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L458
.L452:
	movq	-40(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_range_ex@PLT
	testl	%eax, %eax
	je	.L459
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L452
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L460
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_inverse@PLT
	testq	%rax, %rax
	jne	.L456
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1408, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$165, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L453
.L456:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L461
	movl	$1, -12(%rbp)
	jmp	.L453
.L458:
	nop
	jmp	.L453
.L459:
	nop
	jmp	.L453
.L460:
	nop
	jmp	.L453
.L461:
	nop
.L453:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-12(%rbp), %eax
.L451:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE395:
	.size	ossl_ec_GFp_simple_field_inv, .-ossl_ec_GFp_simple_field_inv
	.globl	ossl_ec_GFp_simple_blind_coordinates
	.type	ossl_ec_GFp_simple_blind_coordinates, @function
ossl_ec_GFp_simple_blind_coordinates:
.LFB396:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L463
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1441, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L464
.L463:
	call	ERR_set_mark@PLT
	movq	-40(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_range_ex@PLT
	movl	%eax, -4(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpl	$0, -4(%rbp)
	jne	.L465
	movl	$1, -4(%rbp)
	jmp	.L464
.L465:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L463
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L466
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %r8
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L470
.L466:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L470
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L470
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L470
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L470
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L470
	movq	-48(%rbp), %rax
	movl	$0, 40(%rax)
	movl	$1, -4(%rbp)
	jmp	.L464
.L470:
	nop
.L464:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE396:
	.size	ossl_ec_GFp_simple_blind_coordinates, .-ossl_ec_GFp_simple_blind_coordinates
	.globl	ossl_ec_GFp_simple_ladder_pre
	.type	ossl_ec_GFp_simple_ladder_pre, @function
ossl_ec_GFp_simple_ladder_pre:
.LFB397:
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
	movq	%r8, -88(%rbp)
	movq	$0, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-80(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L472
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-88(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L472
	movq	-56(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sub_quick@PLT
	testl	%eax, %eax
	je	.L472
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-88(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L472
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-56(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-88(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L472
	movq	-56(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rdi
	call	BN_mod_lshift_quick@PLT
	testl	%eax, %eax
	je	.L472
	movq	-56(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_mod_sub_quick@PLT
	testl	%eax, %eax
	je	.L472
	movq	-56(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L472
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-88(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L472
	movq	-56(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	104(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L472
	movq	-56(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	BN_mod_lshift_quick@PLT
	testl	%eax, %eax
	jne	.L473
.L472:
	movl	$0, %eax
	jmp	.L474
.L473:
	movq	-56(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_range_ex@PLT
	testl	%eax, %eax
	jne	.L475
	movl	$0, %eax
	jmp	.L474
.L475:
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L473
.L477:
	movq	-56(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_range_ex@PLT
	testl	%eax, %eax
	jne	.L476
	movl	$0, %eax
	jmp	.L474
.L476:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L477
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L478
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %r8
	movq	-64(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-88(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L479
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %r8
	movq	-72(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-88(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L478
.L479:
	movl	$0, %eax
	jmp	.L474
.L478:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-64(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-88(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L480
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-64(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-88(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L480
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-72(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-88(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L481
.L480:
	movl	$0, %eax
	jmp	.L474
.L481:
	movq	-64(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-72(%rbp), %rax
	movl	$0, 40(%rax)
	movl	$1, %eax
.L474:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE397:
	.size	ossl_ec_GFp_simple_ladder_pre, .-ossl_ec_GFp_simple_ladder_pre
	.globl	ossl_ec_GFp_simple_ladder_step
	.type	ossl_ec_GFp_simple_ladder_step, @function
ossl_ec_GFp_simple_ladder_step:
.LFB398:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L487
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-88(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-104(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-88(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-104(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-88(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-104(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-88(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-104(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-72(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-104(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-104(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-104(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	104(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	BN_mod_lshift_quick@PLT
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-104(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-64(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_mod_lshift1_quick@PLT
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sub_quick@PLT
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-88(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-104(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-96(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-104(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_mod_sub_quick@PLT
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-104(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-80(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-104(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-72(%rbp), %rax
	movq	96(%rax), %rcx
	movq	-104(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-104(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sub_quick@PLT
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sub_quick@PLT
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sub_quick@PLT
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-104(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-104(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-104(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_mod_sub_quick@PLT
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-104(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-104(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-104(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_mod_lshift1_quick@PLT
	testl	%eax, %eax
	je	.L487
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L487
	movl	$1, -4(%rbp)
	jmp	.L485
.L487:
	nop
.L485:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE398:
	.size	ossl_ec_GFp_simple_ladder_step, .-ossl_ec_GFp_simple_ladder_step
	.globl	ossl_ec_GFp_simple_ladder_post
	.type	ossl_ec_GFp_simple_ladder_post, @function
ossl_ec_GFp_simple_ladder_post:
.LFB399:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L489
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_set_to_infinity@PLT
	jmp	.L490
.L489:
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L491
	movq	-96(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	je	.L492
	movq	-104(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_invert@PLT
	testl	%eax, %eax
	jne	.L493
.L492:
	movl	$0, %eax
	jmp	.L490
.L493:
	movl	$1, %eax
	jmp	.L490
.L491:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L501
	movq	-72(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_mod_lshift1_quick@PLT
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-104(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-104(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-80(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-104(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_mod_lshift1_quick@PLT
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-104(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-80(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-104(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-104(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-72(%rbp), %rax
	movq	96(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-104(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-80(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-96(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-104(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-104(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-80(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-96(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-104(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-104(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sub_quick@PLT
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-104(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-88(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-104(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sub_quick@PLT
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-104(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-104(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L495
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %r8
	movq	-104(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L501
.L495:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	272(%rax), %r8
	movq	-104(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L496
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %r8
	movq	-104(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L501
.L496:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-80(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-104(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-80(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-104(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L501
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	296(%rax), %rax
	testq	%rax, %rax
	je	.L499
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	296(%rax), %r8
	movq	-80(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-104(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L500
	jmp	.L498
.L499:
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L502
.L500:
	movq	-80(%rbp), %rax
	movl	$1, 40(%rax)
	movl	$1, -4(%rbp)
	jmp	.L498
.L501:
	nop
	jmp	.L498
.L502:
	nop
.L498:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
.L490:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE399:
	.size	ossl_ec_GFp_simple_ladder_post, .-ossl_ec_GFp_simple_ladder_post
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ret.8, @object
	.size	ret.8, 440
ret.8:
	.long	1
	.long	406
	.quad	ossl_ec_GFp_simple_group_init
	.quad	ossl_ec_GFp_simple_group_finish
	.quad	ossl_ec_GFp_simple_group_clear_finish
	.quad	ossl_ec_GFp_simple_group_copy
	.quad	ossl_ec_GFp_simple_group_set_curve
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
	.quad	ossl_ec_GFp_simple_field_mul
	.quad	ossl_ec_GFp_simple_field_sqr
	.quad	0
	.quad	ossl_ec_GFp_simple_field_inv
	.quad	0
	.quad	0
	.quad	0
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
	.type	__func__.7, @object
	.size	__func__.7, 35
__func__.7:
	.string	"ossl_ec_GFp_simple_group_set_curve"
	.align 32
	.type	__func__.6, @object
	.size	__func__.6, 44
__func__.6:
	.string	"ossl_ec_GFp_simple_group_check_discriminant"
	.align 32
	.type	__func__.5, @object
	.size	__func__.5, 48
__func__.5:
	.string	"ossl_ec_GFp_simple_point_set_affine_coordinates"
	.align 32
	.type	__func__.4, @object
	.size	__func__.4, 48
__func__.4:
	.string	"ossl_ec_GFp_simple_point_get_affine_coordinates"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 31
__func__.3:
	.string	"ossl_ec_GFp_simple_make_affine"
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 38
__func__.2:
	.string	"ossl_ec_GFp_simple_points_make_affine"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 29
__func__.1:
	.string	"ossl_ec_GFp_simple_field_inv"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 37
__func__.0:
	.string	"ossl_ec_GFp_simple_blind_coordinates"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

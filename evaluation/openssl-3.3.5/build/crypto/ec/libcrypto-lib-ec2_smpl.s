	.file	"ec2_smpl.c"
	.text
	.globl	ossl_ec_GF2m_simple_group_init
	.type	ossl_ec_GF2m_simple_group_init, @function
ossl_ec_GF2m_simple_group_init:
.LFB367:
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
	je	.L2
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L2
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L3
.L2:
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
	jmp	.L4
.L3:
	movl	$1, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	ossl_ec_GF2m_simple_group_init, .-ossl_ec_GF2m_simple_group_init
	.globl	ossl_ec_GF2m_simple_group_finish
	.type	ossl_ec_GF2m_simple_group_finish, @function
ossl_ec_GF2m_simple_group_finish:
.LFB368:
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
.LFE368:
	.size	ossl_ec_GF2m_simple_group_finish, .-ossl_ec_GF2m_simple_group_finish
	.globl	ossl_ec_GF2m_simple_group_clear_finish
	.type	ossl_ec_GF2m_simple_group_clear_finish, @function
ossl_ec_GF2m_simple_group_clear_finish:
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
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movl	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 76(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 80(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 84(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 88(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 92(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	ossl_ec_GF2m_simple_group_clear_finish, .-ossl_ec_GF2m_simple_group_clear_finish
	.globl	ossl_ec_GF2m_simple_group_copy
	.type	ossl_ec_GF2m_simple_group_copy, @function
ossl_ec_GF2m_simple_group_copy:
.LFB370:
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
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L10
	movl	$0, %eax
	jmp	.L9
.L10:
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L11
	movl	$0, %eax
	jmp	.L9
.L11:
	movq	-16(%rbp), %rax
	movl	72(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 72(%rax)
	movq	-16(%rbp), %rax
	movl	76(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 76(%rax)
	movq	-16(%rbp), %rax
	movl	80(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 80(%rax)
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 84(%rax)
	movq	-16(%rbp), %rax
	movl	88(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 88(%rax)
	movq	-16(%rbp), %rax
	movl	92(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 92(%rax)
	movq	-8(%rbp), %rax
	movl	72(%rax), %eax
	addl	$63, %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L12
	movl	$0, %eax
	jmp	.L9
.L12:
	movq	-8(%rbp), %rax
	movl	72(%rax), %eax
	addl	$63, %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L13
	movl	$0, %eax
	jmp	.L9
.L13:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	bn_set_all_zero@PLT
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	bn_set_all_zero@PLT
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	ossl_ec_GF2m_simple_group_copy, .-ossl_ec_GF2m_simple_group_copy
	.section	.rodata
.LC0:
	.string	"../crypto/ec/ec2_smpl.c"
	.text
	.globl	ossl_ec_GF2m_simple_group_set_curve
	.type	ossl_ec_GF2m_simple_group_set_curve, @function
ossl_ec_GF2m_simple_group_set_curve:
.LFB371:
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
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L23
	movq	-24(%rbp), %rax
	leaq	72(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_poly2arr@PLT
	subl	$1, %eax
	movl	%eax, -8(%rbp)
	cmpl	$5, -8(%rbp)
	je	.L17
	cmpl	$3, -8(%rbp)
	je	.L17
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$112, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$131, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L17:
	movq	-24(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_mod_arr@PLT
	testl	%eax, %eax
	je	.L24
	movq	-24(%rbp), %rax
	movl	72(%rax), %eax
	addl	$63, %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L25
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	bn_set_all_zero@PLT
	movq	-24(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_mod_arr@PLT
	testl	%eax, %eax
	je	.L26
	movq	-24(%rbp), %rax
	movl	72(%rax), %eax
	addl	$63, %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L27
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	bn_set_all_zero@PLT
	movl	$1, -4(%rbp)
	jmp	.L16
.L23:
	nop
	jmp	.L16
.L24:
	nop
	jmp	.L16
.L25:
	nop
	jmp	.L16
.L26:
	nop
	jmp	.L16
.L27:
	nop
.L16:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	ossl_ec_GF2m_simple_group_set_curve, .-ossl_ec_GF2m_simple_group_set_curve
	.globl	ossl_ec_GF2m_simple_group_get_curve
	.type	ossl_ec_GF2m_simple_group_get_curve, @function
ossl_ec_GF2m_simple_group_get_curve:
.LFB372:
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
	cmpq	$0, -32(%rbp)
	je	.L29
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	cmpq	$0, -40(%rbp)
	je	.L31
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L34
.L31:
	cmpq	$0, -48(%rbp)
	je	.L33
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L35
.L33:
	movl	$1, -4(%rbp)
	jmp	.L32
.L34:
	nop
	jmp	.L32
.L35:
	nop
.L32:
	movl	-4(%rbp), %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE372:
	.size	ossl_ec_GF2m_simple_group_get_curve, .-ossl_ec_GF2m_simple_group_get_curve
	.globl	ossl_ec_GF2m_simple_group_get_degree
	.type	ossl_ec_GF2m_simple_group_get_degree, @function
ossl_ec_GF2m_simple_group_get_degree:
.LFB373:
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
	subl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE373:
	.size	ossl_ec_GF2m_simple_group_get_degree, .-ossl_ec_GF2m_simple_group_get_degree
	.globl	ossl_ec_GF2m_simple_group_check_discriminant
	.type	ossl_ec_GF2m_simple_group_check_discriminant, @function
ossl_ec_GF2m_simple_group_check_discriminant:
.LFB374:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L39
	call	BN_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L39
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$191, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L40
.L39:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L45
	movq	-40(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_mod_arr@PLT
	testl	%eax, %eax
	je	.L46
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L47
	movl	$1, -4(%rbp)
	jmp	.L40
.L45:
	nop
	jmp	.L40
.L46:
	nop
	jmp	.L40
.L47:
	nop
.L40:
	movq	-48(%rbp), %rax
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
.LFE374:
	.size	ossl_ec_GF2m_simple_group_check_discriminant, .-ossl_ec_GF2m_simple_group_check_discriminant
	.globl	ossl_ec_GF2m_simple_point_init
	.type	ossl_ec_GF2m_simple_point_init, @function
ossl_ec_GF2m_simple_point_init:
.LFB375:
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
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L50
.L49:
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
	jmp	.L51
.L50:
	movl	$1, %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE375:
	.size	ossl_ec_GF2m_simple_point_init, .-ossl_ec_GF2m_simple_point_init
	.globl	ossl_ec_GF2m_simple_point_finish
	.type	ossl_ec_GF2m_simple_point_finish, @function
ossl_ec_GF2m_simple_point_finish:
.LFB376:
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
.LFE376:
	.size	ossl_ec_GF2m_simple_point_finish, .-ossl_ec_GF2m_simple_point_finish
	.globl	ossl_ec_GF2m_simple_point_clear_finish
	.type	ossl_ec_GF2m_simple_point_clear_finish, @function
ossl_ec_GF2m_simple_point_clear_finish:
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
.LFE377:
	.size	ossl_ec_GF2m_simple_point_clear_finish, .-ossl_ec_GF2m_simple_point_clear_finish
	.globl	ossl_ec_GF2m_simple_point_copy
	.type	ossl_ec_GF2m_simple_point_copy, @function
ossl_ec_GF2m_simple_point_copy:
.LFB378:
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
	jne	.L55
	movl	$0, %eax
	jmp	.L56
.L55:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L57
	movl	$0, %eax
	jmp	.L56
.L57:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L58
	movl	$0, %eax
	jmp	.L56
.L58:
	movq	-16(%rbp), %rax
	movl	40(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	$1, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE378:
	.size	ossl_ec_GF2m_simple_point_copy, .-ossl_ec_GF2m_simple_point_copy
	.globl	ossl_ec_GF2m_simple_point_set_to_infinity
	.type	ossl_ec_GF2m_simple_point_set_to_infinity, @function
ossl_ec_GF2m_simple_point_set_to_infinity:
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
.LFE379:
	.size	ossl_ec_GF2m_simple_point_set_to_infinity, .-ossl_ec_GF2m_simple_point_set_to_infinity
	.globl	ossl_ec_GF2m_simple_point_set_affine_coordinates
	.type	ossl_ec_GF2m_simple_point_set_affine_coordinates, @function
ossl_ec_GF2m_simple_point_set_affine_coordinates:
.LFB380:
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
	cmpq	$0, -40(%rbp)
	je	.L62
	cmpq	$0, -48(%rbp)
	jne	.L63
.L62:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$296, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L64
.L63:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L69
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L70
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L71
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-32(%rbp), %rax
	movl	$1, 40(%rax)
	movl	$1, -4(%rbp)
	jmp	.L66
.L69:
	nop
	jmp	.L66
.L70:
	nop
	jmp	.L66
.L71:
	nop
.L66:
	movl	-4(%rbp), %eax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE380:
	.size	ossl_ec_GF2m_simple_point_set_affine_coordinates, .-ossl_ec_GF2m_simple_point_set_affine_coordinates
	.globl	ossl_ec_GF2m_simple_point_get_affine_coordinates
	.type	ossl_ec_GF2m_simple_point_get_affine_coordinates, @function
ossl_ec_GF2m_simple_point_get_affine_coordinates:
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
	movl	$0, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L73
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$328, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L74
.L73:
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L75
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$333, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L74
.L75:
	cmpq	$0, -40(%rbp)
	je	.L76
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L81
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
.L76:
	cmpq	$0, -48(%rbp)
	je	.L79
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L82
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
.L79:
	movl	$1, -4(%rbp)
	jmp	.L78
.L81:
	nop
	jmp	.L78
.L82:
	nop
.L78:
	movl	-4(%rbp), %eax
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE381:
	.size	ossl_ec_GF2m_simple_point_get_affine_coordinates, .-ossl_ec_GF2m_simple_point_get_affine_coordinates
	.globl	ossl_ec_GF2m_simple_add
	.type	ossl_ec_GF2m_simple_add, @function
ossl_ec_GF2m_simple_add:
.LFB382:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L84
	movq	-112(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	jne	.L85
	movl	$0, %eax
	jmp	.L86
.L85:
	movl	$1, %eax
	jmp	.L86
.L84:
	movq	-112(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L87
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	jne	.L88
	movl	$0, %eax
	jmp	.L86
.L88:
	movl	$1, %eax
	jmp	.L86
.L87:
	cmpq	$0, -120(%rbp)
	jne	.L89
	call	BN_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L89
	movl	$0, %eax
	jmp	.L86
.L89:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -72(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L118
	movq	-104(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L92
	movq	-104(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L119
	movq	-104(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L94
	jmp	.L91
.L92:
	movq	-120(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L120
.L94:
	movq	-112(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L95
	movq	-112(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L121
	movq	-112(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L97
	jmp	.L91
.L95:
	movq	-120(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L122
.L97:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	je	.L98
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L123
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L124
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	264(%rax), %r9
	movq	-120(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L125
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-120(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L126
	movq	-88(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-56(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L127
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L128
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	jne	.L105
	jmp	.L91
.L98:
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jne	.L106
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L107
.L106:
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_set_to_infinity@PLT
	testl	%eax, %eax
	je	.L129
	movl	$1, -4(%rbp)
	jmp	.L91
.L107:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	264(%rax), %r9
	movq	-120(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L130
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L131
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-120(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L132
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L133
	movq	-88(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-56(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L134
.L105:
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L135
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-120(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L136
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L137
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L138
	movq	-120(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L139
	movl	$1, -4(%rbp)
	jmp	.L91
.L118:
	nop
	jmp	.L91
.L119:
	nop
	jmp	.L91
.L120:
	nop
	jmp	.L91
.L121:
	nop
	jmp	.L91
.L122:
	nop
	jmp	.L91
.L123:
	nop
	jmp	.L91
.L124:
	nop
	jmp	.L91
.L125:
	nop
	jmp	.L91
.L126:
	nop
	jmp	.L91
.L127:
	nop
	jmp	.L91
.L128:
	nop
	jmp	.L91
.L129:
	nop
	jmp	.L91
.L130:
	nop
	jmp	.L91
.L131:
	nop
	jmp	.L91
.L132:
	nop
	jmp	.L91
.L133:
	nop
	jmp	.L91
.L134:
	nop
	jmp	.L91
.L135:
	nop
	jmp	.L91
.L136:
	nop
	jmp	.L91
.L137:
	nop
	jmp	.L91
.L138:
	nop
	jmp	.L91
.L139:
	nop
.L91:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE382:
	.size	ossl_ec_GF2m_simple_add, .-ossl_ec_GF2m_simple_add
	.globl	ossl_ec_GF2m_simple_dbl
	.type	ossl_ec_GF2m_simple_dbl, @function
ossl_ec_GF2m_simple_dbl:
.LFB383:
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
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_ec_GF2m_simple_add@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE383:
	.size	ossl_ec_GF2m_simple_dbl, .-ossl_ec_GF2m_simple_dbl
	.globl	ossl_ec_GF2m_simple_invert
	.type	ossl_ec_GF2m_simple_invert, @function
ossl_ec_GF2m_simple_invert:
.LFB384:
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
	jne	.L143
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L144
.L143:
	movl	$1, %eax
	jmp	.L145
.L144:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.L146
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	208(%rax), %r8
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L147
.L146:
	movl	$0, %eax
	jmp	.L145
.L147:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
.L145:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE384:
	.size	ossl_ec_GF2m_simple_invert, .-ossl_ec_GF2m_simple_invert
	.globl	ossl_ec_GF2m_simple_is_at_infinity
	.type	ossl_ec_GF2m_simple_is_at_infinity, @function
ossl_ec_GF2m_simple_is_at_infinity:
.LFB385:
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
.LFE385:
	.size	ossl_ec_GF2m_simple_is_at_infinity, .-ossl_ec_GF2m_simple_is_at_infinity
	.globl	ossl_ec_GF2m_simple_is_on_curve
	.type	ossl_ec_GF2m_simple_is_on_curve, @function
ossl_ec_GF2m_simple_is_on_curve:
.LFB386:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	$-1, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L151
	movl	$1, %eax
	jmp	.L152
.L151:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L153
	movl	$-1, %eax
	jmp	.L152
.L153:
	cmpq	$0, -72(%rbp)
	jne	.L154
	call	BN_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L154
	movl	$-1, %eax
	jmp	.L152
.L154:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L164
	movq	-56(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L165
	movq	-64(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L166
	movq	-64(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L167
	movq	-64(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L168
	movq	-56(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L169
	movq	-64(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-72(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L170
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L171
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	movl	%eax, -4(%rbp)
	jmp	.L156
.L164:
	nop
	jmp	.L156
.L165:
	nop
	jmp	.L156
.L166:
	nop
	jmp	.L156
.L167:
	nop
	jmp	.L156
.L168:
	nop
	jmp	.L156
.L169:
	nop
	jmp	.L156
.L170:
	nop
	jmp	.L156
.L171:
	nop
.L156:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE386:
	.size	ossl_ec_GF2m_simple_is_on_curve, .-ossl_ec_GF2m_simple_is_on_curve
	.globl	ossl_ec_GF2m_simple_cmp
	.type	ossl_ec_GF2m_simple_cmp, @function
ossl_ec_GF2m_simple_cmp:
.LFB387:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	$-1, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L173
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L174
.L173:
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L175
	movl	$1, %eax
	jmp	.L174
.L175:
	movq	-64(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L176
	movq	-72(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L176
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L177
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L178
.L177:
	movl	$1, %eax
	jmp	.L174
.L178:
	movl	$0, %eax
	jmp	.L174
.L176:
	cmpq	$0, -80(%rbp)
	jne	.L180
	call	BN_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L180
	movl	$-1, %eax
	jmp	.L174
.L180:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
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
	cmpq	$0, -48(%rbp)
	je	.L188
	movq	-80(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L189
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L190
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L185
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L186
.L185:
	movl	$1, %eax
	jmp	.L187
.L186:
	movl	$0, %eax
.L187:
	movl	%eax, -4(%rbp)
	jmp	.L182
.L188:
	nop
	jmp	.L182
.L189:
	nop
	jmp	.L182
.L190:
	nop
.L182:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L174:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE387:
	.size	ossl_ec_GF2m_simple_cmp, .-ossl_ec_GF2m_simple_cmp
	.globl	ossl_ec_GF2m_simple_make_affine
	.type	ossl_ec_GF2m_simple_make_affine, @function
ossl_ec_GF2m_simple_make_affine:
.LFB388:
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
	movq	-48(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L192
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L193
.L192:
	movl	$1, %eax
	jmp	.L194
.L193:
	cmpq	$0, -56(%rbp)
	jne	.L195
	call	BN_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L195
	movl	$0, %eax
	jmp	.L194
.L195:
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
	je	.L202
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L203
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L204
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L205
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L206
	movq	-48(%rbp), %rax
	movl	$1, 40(%rax)
	movl	$1, -4(%rbp)
	jmp	.L197
.L202:
	nop
	jmp	.L197
.L203:
	nop
	jmp	.L197
.L204:
	nop
	jmp	.L197
.L205:
	nop
	jmp	.L197
.L206:
	nop
.L197:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L194:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE388:
	.size	ossl_ec_GF2m_simple_make_affine, .-ossl_ec_GF2m_simple_make_affine
	.globl	ossl_ec_GF2m_simple_points_make_affine
	.type	ossl_ec_GF2m_simple_points_make_affine, @function
ossl_ec_GF2m_simple_points_make_affine:
.LFB389:
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
	movq	%rcx, -48(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L208
.L211:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	208(%rax), %r8
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L209
	movl	$0, %eax
	jmp	.L210
.L209:
	addq	$1, -8(%rbp)
.L208:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L211
	movl	$1, %eax
.L210:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE389:
	.size	ossl_ec_GF2m_simple_points_make_affine, .-ossl_ec_GF2m_simple_points_make_affine
	.globl	ossl_ec_GF2m_simple_field_mul
	.type	ossl_ec_GF2m_simple_field_mul, @function
ossl_ec_GF2m_simple_field_mul:
.LFB390:
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
	leaq	72(%rax), %rcx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_GF2m_mod_mul_arr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE390:
	.size	ossl_ec_GF2m_simple_field_mul, .-ossl_ec_GF2m_simple_field_mul
	.globl	ossl_ec_GF2m_simple_field_sqr
	.type	ossl_ec_GF2m_simple_field_sqr, @function
ossl_ec_GF2m_simple_field_sqr:
.LFB391:
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
	leaq	72(%rax), %rdi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	BN_GF2m_mod_sqr_arr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE391:
	.size	ossl_ec_GF2m_simple_field_sqr, .-ossl_ec_GF2m_simple_field_sqr
	.globl	ossl_ec_GF2m_simple_field_div
	.type	ossl_ec_GF2m_simple_field_div, @function
ossl_ec_GF2m_simple_field_div:
.LFB392:
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
	call	BN_GF2m_mod_div@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE392:
	.size	ossl_ec_GF2m_simple_field_div, .-ossl_ec_GF2m_simple_field_div
	.type	ec_GF2m_simple_ladder_pre, @function
ec_GF2m_simple_ladder_pre:
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
	movq	-32(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L219
	movl	$0, %eax
	jmp	.L220
.L219:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	leal	-1(%rax), %esi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_ex@PLT
	testl	%eax, %eax
	jne	.L221
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$734, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L220
.L221:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L219
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L222
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %r8
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L223
.L222:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L224
.L223:
	movl	$0, %eax
	jmp	.L220
.L224:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	leal	-1(%rax), %esi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_ex@PLT
	testl	%eax, %eax
	jne	.L225
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$749, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L220
.L225:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L224
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L226
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %r8
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L227
.L226:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L227
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L227
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L227
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L227
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L228
.L227:
	movl	$0, %eax
	jmp	.L220
.L228:
	movq	-24(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 40(%rax)
	movl	$1, %eax
.L220:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE393:
	.size	ec_GF2m_simple_ladder_pre, .-ec_GF2m_simple_ladder_pre
	.type	ec_GF2m_simple_ladder_step, @function
ec_GF2m_simple_ladder_step:
.LFB394:
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
	movq	248(%rax), %r9
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L230
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L230
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L230
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L230
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L230
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L230
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L230
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-32(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L230
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L230
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L230
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L230
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L230
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-8(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L230
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	jne	.L231
.L230:
	movl	$0, %eax
	jmp	.L232
.L231:
	movl	$1, %eax
.L232:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE394:
	.size	ec_GF2m_simple_ladder_step, .-ec_GF2m_simple_ladder_step
	.type	ec_GF2m_simple_ladder_post, @function
ec_GF2m_simple_ladder_post:
.LFB395:
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
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L234
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_set_to_infinity@PLT
	jmp	.L235
.L234:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L236
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	je	.L237
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_invert@PLT
	testl	%eax, %eax
	jne	.L238
.L237:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$818, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L235
.L238:
	movl	$1, %eax
	jmp	.L235
.L236:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L239
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$829, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L240
.L239:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-56(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L243
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-48(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L243
	movq	-48(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L243
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-56(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L243
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L243
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L243
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L243
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-64(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L243
	movq	-64(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L243
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L243
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L243
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-64(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L243
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	272(%rax), %r8
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L243
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L243
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L243
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L243
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L243
	movq	-64(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L243
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L243
	movq	-48(%rbp), %rax
	movl	$1, 40(%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movl	$1, -4(%rbp)
	jmp	.L240
.L243:
	nop
.L240:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
.L235:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE395:
	.size	ec_GF2m_simple_ladder_post, .-ec_GF2m_simple_ladder_post
	.type	ec_GF2m_simple_points_mul, @function
ec_GF2m_simple_points_mul:
.LFB396:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$1, -48(%rbp)
	ja	.L245
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L245
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L246
.L245:
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_ec_wNAF_mul@PLT
	addq	$16, %rsp
	jmp	.L247
.L246:
	cmpq	$0, -40(%rbp)
	je	.L248
	cmpq	$0, -48(%rbp)
	jne	.L248
	movq	16(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_ec_scalar_mul_ladder@PLT
	jmp	.L247
.L248:
	cmpq	$0, -40(%rbp)
	jne	.L249
	cmpq	$1, -48(%rbp)
	jne	.L249
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_ec_scalar_mul_ladder@PLT
	jmp	.L247
.L249:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L250
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$908, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L247
.L250:
	movq	16(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_ec_scalar_mul_ladder@PLT
	testl	%eax, %eax
	je	.L254
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_ec_scalar_mul_ladder@PLT
	testl	%eax, %eax
	je	.L254
	movq	16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_add@PLT
	testl	%eax, %eax
	je	.L254
	movl	$1, -4(%rbp)
	jmp	.L253
.L254:
	nop
.L253:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movl	-4(%rbp), %eax
.L247:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE396:
	.size	ec_GF2m_simple_points_mul, .-ec_GF2m_simple_points_mul
	.type	ec_GF2m_simple_field_inv, @function
ec_GF2m_simple_field_inv:
.LFB397:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GF2m_mod_inv@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L256
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$935, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$165, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L256:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE397:
	.size	ec_GF2m_simple_field_inv, .-ec_GF2m_simple_field_inv
	.globl	EC_GF2m_simple_method
	.type	EC_GF2m_simple_method, @function
EC_GF2m_simple_method:
.LFB398:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ret.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE398:
	.size	EC_GF2m_simple_method, .-EC_GF2m_simple_method
	.section	.rodata
	.align 32
	.type	__func__.8, @object
	.size	__func__.8, 36
__func__.8:
	.string	"ossl_ec_GF2m_simple_group_set_curve"
	.align 32
	.type	__func__.7, @object
	.size	__func__.7, 45
__func__.7:
	.string	"ossl_ec_GF2m_simple_group_check_discriminant"
	.align 32
	.type	__func__.6, @object
	.size	__func__.6, 49
__func__.6:
	.string	"ossl_ec_GF2m_simple_point_set_affine_coordinates"
	.align 32
	.type	__func__.5, @object
	.size	__func__.5, 49
__func__.5:
	.string	"ossl_ec_GF2m_simple_point_get_affine_coordinates"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 26
__func__.4:
	.string	"ec_GF2m_simple_ladder_pre"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 27
__func__.3:
	.string	"ec_GF2m_simple_ladder_post"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 26
__func__.2:
	.string	"ec_GF2m_simple_points_mul"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 25
__func__.1:
	.string	"ec_GF2m_simple_field_inv"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ret.0, @object
	.size	ret.0, 440
ret.0:
	.long	1
	.long	407
	.quad	ossl_ec_GF2m_simple_group_init
	.quad	ossl_ec_GF2m_simple_group_finish
	.quad	ossl_ec_GF2m_simple_group_clear_finish
	.quad	ossl_ec_GF2m_simple_group_copy
	.quad	ossl_ec_GF2m_simple_group_set_curve
	.quad	ossl_ec_GF2m_simple_group_get_curve
	.quad	ossl_ec_GF2m_simple_group_get_degree
	.quad	ossl_ec_group_simple_order_bits
	.quad	ossl_ec_GF2m_simple_group_check_discriminant
	.quad	ossl_ec_GF2m_simple_point_init
	.quad	ossl_ec_GF2m_simple_point_finish
	.quad	ossl_ec_GF2m_simple_point_clear_finish
	.quad	ossl_ec_GF2m_simple_point_copy
	.quad	ossl_ec_GF2m_simple_point_set_to_infinity
	.quad	ossl_ec_GF2m_simple_point_set_affine_coordinates
	.quad	ossl_ec_GF2m_simple_point_get_affine_coordinates
	.quad	0
	.quad	0
	.quad	0
	.quad	ossl_ec_GF2m_simple_add
	.quad	ossl_ec_GF2m_simple_dbl
	.quad	ossl_ec_GF2m_simple_invert
	.quad	ossl_ec_GF2m_simple_is_at_infinity
	.quad	ossl_ec_GF2m_simple_is_on_curve
	.quad	ossl_ec_GF2m_simple_cmp
	.quad	ossl_ec_GF2m_simple_make_affine
	.quad	ossl_ec_GF2m_simple_points_make_affine
	.quad	ec_GF2m_simple_points_mul
	.quad	0
	.quad	0
	.quad	ossl_ec_GF2m_simple_field_mul
	.quad	ossl_ec_GF2m_simple_field_sqr
	.quad	ossl_ec_GF2m_simple_field_div
	.quad	ec_GF2m_simple_field_inv
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
	.quad	0
	.quad	ec_GF2m_simple_ladder_pre
	.quad	ec_GF2m_simple_ladder_step
	.quad	ec_GF2m_simple_ladder_post
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

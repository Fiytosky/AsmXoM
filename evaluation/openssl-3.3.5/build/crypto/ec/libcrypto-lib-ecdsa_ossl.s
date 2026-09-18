	.file	"ecdsa_ossl.c"
	.text
	.section	.rodata
.LC0:
	.string	"../crypto/ec/ecdsa_ossl.c"
	.text
	.globl	ossl_ecdsa_sign_setup
	.type	ossl_ecdsa_sign_setup, @function
ossl_ecdsa_sign_setup:
.LFB367:
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
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	jne	.L2
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$43, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$170, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	376(%rax), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	ossl_ecdsa_sign_setup, .-ossl_ecdsa_sign_setup
	.globl	ossl_ecdsa_sign_sig
	.type	ossl_ecdsa_sign_sig, @function
ossl_ecdsa_sign_sig:
.LFB368:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	jne	.L5
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$55, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$170, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L6
.L5:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	384(%rax), %r9
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	ossl_ecdsa_sign_sig, .-ossl_ecdsa_sign_sig
	.globl	ossl_ecdsa_verify_sig
	.type	ossl_ecdsa_verify_sig, @function
ossl_ecdsa_verify_sig:
.LFB369:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	392(%rax), %rax
	testq	%rax, %rax
	jne	.L8
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$67, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$170, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	392(%rax), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	ossl_ecdsa_verify_sig, .-ossl_ecdsa_verify_sig
	.globl	ossl_ecdsa_sign
	.type	ossl_ecdsa_sign, @function
ossl_ecdsa_sign:
.LFB370:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L11
	cmpq	$0, -56(%rbp)
	je	.L12
	cmpq	$0, 16(%rbp)
	jne	.L11
.L12:
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	ECDSA_size@PLT
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L13
.L11:
	movq	24(%rbp), %rdi
	movq	16(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-24(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ECDSA_do_sign_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L14
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, %eax
	jmp	.L13
.L14:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L15
	leaq	-40(%rbp), %rax
	jmp	.L16
.L15:
	movl	$0, %eax
.L16:
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	i2d_ECDSA_SIG@PLT
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ECDSA_SIG_free@PLT
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	ossl_ecdsa_sign, .-ossl_ecdsa_sign
	.globl	ossl_ecdsa_deterministic_sign
	.type	ossl_ecdsa_deterministic_sign, @function
ossl_ecdsa_deterministic_sign:
.LFB371:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	%r9d, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	jne	.L18
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$106, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L24
.L18:
	cmpq	$0, 16(%rbp)
	jne	.L20
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$110, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$151, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L24
.L20:
	movq	-64(%rbp), %rax
	movl	$0, (%rax)
	movl	-44(%rbp), %r8d
	movq	-40(%rbp), %rdi
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	movl	-48(%rbp), %esi
	pushq	%rsi
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecdsa_sign_setup
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L21
	movl	$0, %eax
	jmp	.L24
.L21:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ECDSA_do_sign_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L25
	leaq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ECDSA_SIG@PLT
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ECDSA_SIG_free@PLT
	movl	$1, -4(%rbp)
	jmp	.L23
.L25:
	nop
.L23:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movl	-4(%rbp), %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	ossl_ecdsa_deterministic_sign, .-ossl_ecdsa_deterministic_sign
	.type	ecdsa_sign_setup, @function
ecdsa_sign_setup:
.LFB372:
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
	movl	%r9d, -124(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L27
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L28
.L27:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$148, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_private_key@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L30
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$152, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L29
.L30:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_can_sign@PLT
	testl	%eax, %eax
	jne	.L31
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$157, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L29
.L31:
	movq	-96(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L32
	movq	-88(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L32
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$163, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L29
.L32:
	call	BN_secure_new@PLT
	movq	%rax, -32(%rbp)
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L33
	cmpq	$0, -40(%rbp)
	je	.L33
	cmpq	$0, -48(%rbp)
	jne	.L34
.L33:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$172, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L35
.L34:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L36
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$176, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L35
.L36:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L37
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$181, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L35
.L37:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -76(%rbp)
	cmpl	$63, -76(%rbp)
	jle	.L50
	movl	-76(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_bit@PLT
	testl	%eax, %eax
	je	.L50
	movl	-76(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_bit@PLT
	testl	%eax, %eax
	je	.L50
	movl	-76(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_bit@PLT
	testl	%eax, %eax
	je	.L50
.L39:
	movl	$0, -24(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L40
	cmpl	$1, 16(%rbp)
	jne	.L41
	movl	-124(%rbp), %eax
	movslq	%eax, %rdi
	movq	24(%rbp), %r8
	movq	-120(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rax
	pushq	40(%rbp)
	pushq	32(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_gen_deterministic_nonce_rfc6979@PLT
	addq	$16, %rsp
	movl	%eax, -24(%rbp)
	jmp	.L42
.L41:
	movl	-124(%rbp), %eax
	movslq	%eax, %rdi
	movq	-8(%rbp), %r8
	movq	-120(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_bn_gen_dsa_nonce_fixed_top@PLT
	movl	%eax, -24(%rbp)
	jmp	.L42
.L40:
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_bn_priv_rand_range_fixed_top@PLT
	movl	%eax, -24(%rbp)
.L42:
	cmpl	$0, -24(%rbp)
	jne	.L43
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$216, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L35
.L43:
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_bn_is_word_fixed_top@PLT
	testl	%eax, %eax
	jne	.L39
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	jne	.L44
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$223, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L35
.L44:
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	jne	.L45
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$228, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L35
.L45:
	movq	-8(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	jne	.L46
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$233, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L35
.L46:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L39
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_group_do_inverse_ord@PLT
	testl	%eax, %eax
	jne	.L47
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$240, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L35
.L47:
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-112(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-104(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, -20(%rbp)
	jmp	.L35
.L50:
	nop
.L35:
	cmpl	$0, -20(%rbp)
	jne	.L48
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
.L48:
	movq	-8(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.L49
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
.L49:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movl	-20(%rbp), %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE372:
	.size	ecdsa_sign_setup, .-ecdsa_sign_setup
	.globl	ossl_ecdsa_simple_sign_setup
	.type	ossl_ecdsa_simple_sign_setup, @function
ossl_ecdsa_simple_sign_setup:
.LFB373:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ecdsa_sign_setup
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE373:
	.size	ossl_ecdsa_simple_sign_setup, .-ossl_ecdsa_simple_sign_setup
	.globl	ossl_ecdsa_simple_sign_sig
	.type	ossl_ecdsa_simple_sign_sig, @function
ossl_ecdsa_simple_sign_sig:
.LFB374:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -48(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_private_key@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L54
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$287, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L83
.L54:
	cmpq	$0, -56(%rbp)
	jne	.L56
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$291, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L83
.L56:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_can_sign@PLT
	testl	%eax, %eax
	jne	.L57
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$296, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L83
.L57:
	call	ECDSA_SIG_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L58
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$302, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524330, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L83
.L58:
	call	BN_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	call	BN_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L59
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L60
.L59:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$308, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L61
.L60:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-136(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L62
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L63
.L62:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$315, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L61
.L63:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L64
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$320, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L61
.L64:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -76(%rbp)
	movl	-108(%rbp), %eax
	sall	$3, %eax
	cmpl	%eax, -76(%rbp)
	jge	.L65
	movl	-76(%rbp), %eax
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -108(%rbp)
.L65:
	movq	-16(%rbp), %rdx
	movl	-108(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	jne	.L66
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$331, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L61
.L66:
	movl	-108(%rbp), %eax
	sall	$3, %eax
	cmpl	%eax, -76(%rbp)
	jge	.L81
	movl	-76(%rbp), %eax
	andl	$7, %eax
	movl	$8, %edx
	subl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_rshift@PLT
	testl	%eax, %eax
	jne	.L81
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$336, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L61
.L81:
	cmpq	$0, -120(%rbp)
	je	.L68
	cmpq	$0, -128(%rbp)
	jne	.L69
.L68:
	movq	-40(%rbp), %rcx
	movl	-108(%rbp), %r8d
	movq	-104(%rbp), %rdi
	leaq	-88(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-136(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ecdsa_sign_setup
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L70
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$343, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524330, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L61
.L70:
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L71
.L69:
	movq	-120(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L71
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$350, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L61
.L71:
	movq	-48(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	bn_to_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L72
	movq	-48(%rbp), %rax
	movq	144(%rax), %rcx
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont_fixed_top@PLT
	testl	%eax, %eax
	jne	.L73
.L72:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$364, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L61
.L73:
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	bn_mod_add_fixed_top@PLT
	testl	%eax, %eax
	jne	.L74
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$368, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L61
.L74:
	movq	-48(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	bn_to_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L75
	movq	-48(%rbp), %rax
	movq	144(%rax), %rcx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_montgomery@PLT
	testl	%eax, %eax
	jne	.L76
.L75:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$377, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L61
.L76:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L84
	cmpq	$0, -120(%rbp)
	je	.L78
	cmpq	$0, -128(%rbp)
	je	.L78
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$387, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$157, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L61
.L78:
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$8, %eax
	jle	.L81
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$392, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$176, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L61
.L84:
	nop
	movl	$1, -4(%rbp)
.L61:
	cmpl	$0, -4(%rbp)
	jne	.L82
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ECDSA_SIG_free@PLT
	movq	$0, -40(%rbp)
.L82:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-40(%rbp), %rax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE374:
	.size	ossl_ecdsa_simple_sign_sig, .-ossl_ecdsa_simple_sign_sig
	.globl	ossl_ecdsa_verify
	.type	ossl_ecdsa_verify, @function
ossl_ecdsa_verify:
.LFB375:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -40(%rbp)
	movq	%rcx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movq	%r9, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$-1, -8(%rbp)
	movl	$-1, -4(%rbp)
	call	ECDSA_SIG_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L86
	movl	-4(%rbp), %eax
	jmp	.L92
.L86:
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-24(%rbp), %rcx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_ECDSA_SIG@PLT
	testq	%rax, %rax
	je	.L93
	movq	-16(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ECDSA_SIG@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jne	.L94
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L94
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movl	-40(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ECDSA_do_verify@PLT
	movl	%eax, -4(%rbp)
	jmp	.L89
.L93:
	nop
	jmp	.L89
.L94:
	nop
.L89:
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$439, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ECDSA_SIG_free@PLT
	movl	-4(%rbp), %eax
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE375:
	.size	ossl_ecdsa_verify, .-ossl_ecdsa_verify
	.globl	ossl_ecdsa_simple_verify_sig
	.type	ossl_ecdsa_simple_verify_sig, @function
ossl_ecdsa_simple_verify_sig:
.LFB376:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movl	$-1, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L96
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L96
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L96
	cmpq	$0, -120(%rbp)
	jne	.L97
.L96:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$458, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L98
.L97:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_can_sign@PLT
	testl	%eax, %eax
	jne	.L99
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$463, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L98
.L99:
	movq	-128(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L100
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$469, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L98
.L100:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L101
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$478, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L101:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L103
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$484, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L103:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L104
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L104
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jns	.L104
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L104
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L104
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	js	.L105
.L104:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$491, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$156, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
	jmp	.L102
.L105:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_group_do_inverse_ord@PLT
	testl	%eax, %eax
	jne	.L106
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$497, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L106:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -84(%rbp)
	movl	-108(%rbp), %eax
	sall	$3, %eax
	cmpl	%eax, -84(%rbp)
	jge	.L107
	movl	-84(%rbp), %eax
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -108(%rbp)
.L107:
	movq	-64(%rbp), %rdx
	movl	-108(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	jne	.L108
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$508, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L108:
	movl	-108(%rbp), %eax
	sall	$3, %eax
	cmpl	%eax, -84(%rbp)
	jge	.L109
	movl	-84(%rbp), %eax
	andl	$7, %eax
	movl	$8, %edx
	subl	%eax, %edx
	movq	-64(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_rshift@PLT
	testl	%eax, %eax
	jne	.L109
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$513, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L109:
	movq	-40(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	jne	.L110
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$518, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L110:
	movq	-120(%rbp), %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	jne	.L111
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$523, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L111:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L112
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$528, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L112:
	movq	-40(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	jne	.L113
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$532, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L113:
	movq	-40(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	jne	.L114
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$537, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L114:
	movq	-40(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	jne	.L115
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$542, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L115:
	movq	-120(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.L102:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movl	-4(%rbp), %eax
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE376:
	.size	ossl_ecdsa_simple_verify_sig, .-ossl_ecdsa_simple_verify_sig
	.section	.rodata
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 22
__func__.6:
	.string	"ossl_ecdsa_sign_setup"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 20
__func__.5:
	.string	"ossl_ecdsa_sign_sig"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 22
__func__.4:
	.string	"ossl_ecdsa_verify_sig"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 30
__func__.3:
	.string	"ossl_ecdsa_deterministic_sign"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 17
__func__.2:
	.string	"ecdsa_sign_setup"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 27
__func__.1:
	.string	"ossl_ecdsa_simple_sign_sig"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 29
__func__.0:
	.string	"ossl_ecdsa_simple_verify_sig"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

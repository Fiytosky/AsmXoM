	.file	"ecp_nist.c"
	.text
	.globl	EC_GFp_nist_method
	.type	EC_GFp_nist_method, @function
EC_GFp_nist_method:
.LFB367:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ret.3(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	EC_GFp_nist_method, .-EC_GFp_nist_method
	.globl	ossl_ec_GFp_nist_group_copy
	.type	ossl_ec_GFp_nist_group_copy, @function
ossl_ec_GFp_nist_group_copy:
.LFB368:
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
	movq	136(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 136(%rax)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_GFp_simple_group_copy@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	ossl_ec_GFp_nist_group_copy, .-ossl_ec_GFp_nist_group_copy
	.section	.rodata
.LC0:
	.string	"../crypto/ec/ecp_nist.c"
	.text
	.globl	ossl_ec_GFp_nist_group_set_curve
	.type	ossl_ec_GFp_nist_group_set_curve, @function
ossl_ec_GFp_nist_group_set_curve:
.LFB369:
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
	cmpq	$0, -56(%rbp)
	jne	.L6
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	call	BN_get0_nist_prime_192@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jne	.L8
	movq	-24(%rbp), %rax
	movq	BN_nist_mod_192@GOTPCREL(%rip), %rdx
	movq	%rdx, 136(%rax)
	jmp	.L9
.L8:
	call	BN_get0_nist_prime_224@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jne	.L10
	movq	-24(%rbp), %rax
	movq	BN_nist_mod_224@GOTPCREL(%rip), %rdx
	movq	%rdx, 136(%rax)
	jmp	.L9
.L10:
	call	BN_get0_nist_prime_256@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jne	.L11
	movq	-24(%rbp), %rax
	movq	BN_nist_mod_256@GOTPCREL(%rip), %rdx
	movq	%rdx, 136(%rax)
	jmp	.L9
.L11:
	call	BN_get0_nist_prime_384@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jne	.L12
	movq	-24(%rbp), %rax
	movq	BN_nist_mod_384@GOTPCREL(%rip), %rdx
	movq	%rdx, 136(%rax)
	jmp	.L9
.L12:
	call	BN_get0_nist_prime_521@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jne	.L13
	movq	-24(%rbp), %rax
	movq	BN_nist_mod_521@GOTPCREL(%rip), %rdx
	movq	%rdx, 136(%rax)
	jmp	.L9
.L13:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$135, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L14
.L9:
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_ec_GFp_simple_group_set_curve@PLT
	movl	%eax, -4(%rbp)
.L14:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	ossl_ec_GFp_nist_group_set_curve, .-ossl_ec_GFp_nist_group_set_curve
	.globl	ossl_ec_GFp_nist_field_mul
	.type	ossl_ec_GFp_nist_field_mul, @function
ossl_ec_GFp_nist_field_mul:
.LFB370:
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
	cmpq	$0, -24(%rbp)
	je	.L16
	cmpq	$0, -32(%rbp)
	je	.L16
	cmpq	$0, -40(%rbp)
	je	.L16
	cmpq	$0, -48(%rbp)
	jne	.L17
.L16:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$135, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L18
.L17:
	cmpq	$0, -56(%rbp)
	jne	.L19
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L23
.L19:
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L24
	movq	-24(%rbp), %rax
	movq	136(%rax), %r8
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L25
	movl	$1, -4(%rbp)
	jmp	.L18
.L23:
	nop
	jmp	.L18
.L24:
	nop
	jmp	.L18
.L25:
	nop
.L18:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	ossl_ec_GFp_nist_field_mul, .-ossl_ec_GFp_nist_field_mul
	.globl	ossl_ec_GFp_nist_field_sqr
	.type	ossl_ec_GFp_nist_field_sqr, @function
ossl_ec_GFp_nist_field_sqr:
.LFB371:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L27
	cmpq	$0, -32(%rbp)
	je	.L27
	cmpq	$0, -40(%rbp)
	jne	.L28
.L27:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$160, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L29
.L28:
	cmpq	$0, -48(%rbp)
	jne	.L30
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L34
.L30:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sqr@PLT
	testl	%eax, %eax
	je	.L35
	movq	-24(%rbp), %rax
	movq	136(%rax), %r8
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L36
	movl	$1, -4(%rbp)
	jmp	.L29
.L34:
	nop
	jmp	.L29
.L35:
	nop
	jmp	.L29
.L36:
	nop
.L29:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	ossl_ec_GFp_nist_field_sqr, .-ossl_ec_GFp_nist_field_sqr
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ret.3, @object
	.size	ret.3, 440
ret.3:
	.long	1
	.long	406
	.quad	ossl_ec_GFp_simple_group_init
	.quad	ossl_ec_GFp_simple_group_finish
	.quad	ossl_ec_GFp_simple_group_clear_finish
	.quad	ossl_ec_GFp_nist_group_copy
	.quad	ossl_ec_GFp_nist_group_set_curve
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
	.quad	ossl_ec_GFp_nist_field_mul
	.quad	ossl_ec_GFp_nist_field_sqr
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
	.type	__func__.2, @object
	.size	__func__.2, 33
__func__.2:
	.string	"ossl_ec_GFp_nist_group_set_curve"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 27
__func__.1:
	.string	"ossl_ec_GFp_nist_field_mul"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 27
__func__.0:
	.string	"ossl_ec_GFp_nist_field_sqr"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

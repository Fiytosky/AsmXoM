	.file	"ec_cvt.c"
	.text
	.globl	EC_GROUP_new_curve_GFp
	.type	EC_GROUP_new_curve_GFp, @function
EC_GROUP_new_curve_GFp:
.LFB367:
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
	call	EC_GFp_mont_method@PLT
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_bn_get_libctx@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	ossl_ec_group_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_set_curve@PLT
	testl	%eax, %eax
	jne	.L4
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movl	$0, %eax
	jmp	.L3
.L4:
	movq	-16(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	EC_GROUP_new_curve_GFp, .-EC_GROUP_new_curve_GFp
	.globl	EC_GROUP_new_curve_GF2m
	.type	EC_GROUP_new_curve_GF2m, @function
EC_GROUP_new_curve_GF2m:
.LFB368:
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
	call	EC_GF2m_simple_method@PLT
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_bn_get_libctx@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	ossl_ec_group_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_set_curve@PLT
	testl	%eax, %eax
	jne	.L8
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movl	$0, %eax
	jmp	.L7
.L8:
	movq	-16(%rbp), %rax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	EC_GROUP_new_curve_GF2m, .-EC_GROUP_new_curve_GF2m
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"dsa_key.c"
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
	.globl	DSA_generate_key
	.type	DSA_generate_key, @function
DSA_generate_key:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L6
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	dsa_keygen
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	DSA_generate_key, .-DSA_generate_key
	.globl	ossl_dsa_generate_public_key
	.type	ossl_dsa_generate_public_key, @function
ossl_dsa_generate_public_key:
.LFB408:
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
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_with_flags@PLT
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	je	.L13
	movl	$1, -4(%rbp)
	jmp	.L12
.L13:
	nop
.L12:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movl	-4(%rbp), %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ossl_dsa_generate_public_key, .-ossl_dsa_generate_public_key
	.type	dsa_keygen, @function
dsa_keygen:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L27
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L17
	call	BN_secure_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L18
	jmp	.L16
.L17:
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -24(%rbp)
.L18:
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	184(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_ffc_params_simple_validate@PLT
	testl	%eax, %eax
	je	.L28
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rsi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movl	$80, %ecx
	movq	%rax, %rdi
	call	ossl_ffc_generate_private_key@PLT
	testl	%eax, %eax
	je	.L29
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L21
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L22
	jmp	.L16
.L21:
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -16(%rbp)
.L22:
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dsa_generate_public_key@PLT
	testl	%eax, %eax
	je	.L30
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 112(%rax)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 104(%rax)
	movl	$1, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	192(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 192(%rax)
	jmp	.L16
.L27:
	nop
	jmp	.L16
.L28:
	nop
	jmp	.L16
.L29:
	nop
	jmp	.L16
.L30:
	nop
.L16:
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	cmpq	%rax, -16(%rbp)
	je	.L24
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L24:
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	cmpq	%rax, -24(%rbp)
	je	.L25
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L25:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	dsa_keygen, .-dsa_keygen
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

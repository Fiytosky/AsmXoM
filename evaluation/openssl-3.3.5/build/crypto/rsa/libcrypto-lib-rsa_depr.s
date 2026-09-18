	.file	"rsa_depr.c"
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
	.globl	RSA_generate_key
	.type	RSA_generate_key, @function
RSA_generate_key:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	call	BN_GENCB_new@PLT
	movq	%rax, -16(%rbp)
	call	RSA_new@PLT
	movq	%rax, -24(%rbp)
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L13
	cmpq	$0, -24(%rbp)
	je	.L13
	cmpq	$0, -32(%rbp)
	je	.L13
	movl	$0, -4(%rbp)
	jmp	.L9
.L11:
	movl	-4(%rbp), %eax
	movq	-48(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L10
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_bit@PLT
	testl	%eax, %eax
	je	.L14
.L10:
	addl	$1, -4(%rbp)
.L9:
	cmpl	$63, -4(%rbp)
	jle	.L11
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GENCB_set_old@PLT
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_generate_key_ex@PLT
	testl	%eax, %eax
	je	.L15
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GENCB_free@PLT
	movq	-24(%rbp), %rax
	jmp	.L12
.L13:
	nop
	jmp	.L8
.L14:
	nop
	jmp	.L8
.L15:
	nop
.L8:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GENCB_free@PLT
	movl	$0, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	RSA_generate_key, .-RSA_generate_key
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"dsa_gen.c"
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
	.globl	ossl_dsa_generate_ffc_parameters
	.type	ossl_dsa_generate_ffc_parameters, @function
ossl_dsa_generate_ffc_parameters:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$1, -28(%rbp)
	jne	.L6
	movl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	leaq	-8(%rbp), %rdi
	subq	$8, %rsp
	pushq	-48(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_ffc_params_FIPS186_2_generate@PLT
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	jmp	.L7
.L6:
	movl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	leaq	-8(%rbp), %rdi
	subq	$8, %rsp
	pushq	-48(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_ffc_params_FIPS186_4_generate@PLT
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
.L7:
	cmpl	$0, -4(%rbp)
	jle	.L8
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 192(%rax)
.L8:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	ossl_dsa_generate_ffc_parameters, .-ossl_dsa_generate_ffc_parameters
	.globl	DSA_generate_parameters_ex
	.type	DSA_generate_parameters_ex, @function
DSA_generate_parameters_ex:
.LFB408:
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
	movl	%ecx, -16(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L11
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	80(%rax), %r10
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rdi
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	jmp	.L12
.L11:
	cmpq	$0, -24(%rbp)
	je	.L13
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	$-1, %ecx
	movq	%rax, %rsi
	call	ossl_ffc_params_set_validate_params@PLT
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L12
.L13:
	cmpl	$2047, -12(%rbp)
	jg	.L14
	cmpl	$20, -16(%rbp)
	jg	.L14
	movq	16(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$160, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_dsa_generate_ffc_parameters@PLT
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L12
.L14:
	movq	16(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_dsa_generate_ffc_parameters@PLT
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L12
.L16:
	cmpq	$0, -32(%rbp)
	je	.L17
	movq	-8(%rbp), %rax
	movl	56(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.L17:
	cmpq	$0, -40(%rbp)
	je	.L18
	movq	-8(%rbp), %rax
	movl	68(%rax), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L18:
	movl	$1, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	DSA_generate_parameters_ex, .-DSA_generate_parameters_ex
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

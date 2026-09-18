	.file	"bn_depr.c"
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
	.globl	BN_generate_prime
	.type	BN_generate_prime, @function
BN_generate_prime:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	16(%rbp), %rdx
	movq	-72(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GENCB_set_old@PLT
	cmpq	$0, -40(%rbp)
	jne	.L6
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L7
	jmp	.L8
.L6:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.L7:
	leaq	-32(%rbp), %r8
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_generate_prime_ex@PLT
	testl	%eax, %eax
	je	.L12
	movq	-8(%rbp), %rax
	jmp	.L11
.L12:
	nop
.L8:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	$0, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	BN_generate_prime, .-BN_generate_prime
	.globl	BN_is_prime
	.type	BN_is_prime, @function
BN_is_prime:
.LFB162:
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
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GENCB_set_old@PLT
	leaq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_bn_check_prime@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	BN_is_prime, .-BN_is_prime
	.globl	BN_is_prime_fasttest
	.type	BN_is_prime_fasttest, @function
BN_is_prime_fasttest:
.LFB163:
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
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GENCB_set_old@PLT
	leaq	-32(%rbp), %rdi
	movl	-48(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_bn_check_prime@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	BN_is_prime_fasttest, .-BN_is_prime_fasttest
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

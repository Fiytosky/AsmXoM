	.file	"ffc_key_generate.c"
	.text
	.globl	ossl_ffc_generate_private_key
	.type	ossl_ffc_generate_private_key, @function
ossl_ffc_generate_private_key:
.LFB320:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movl	$0, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -28(%rbp)
	movq	$0, -24(%rbp)
	cmpl	$0, -56(%rbp)
	je	.L19
	cmpl	$0, -52(%rbp)
	jne	.L4
	movq	-48(%rbp), %rax
	movl	88(%rax), %eax
	testl	%eax, %eax
	je	.L5
	movq	-48(%rbp), %rax
	movl	88(%rax), %eax
	movl	%eax, -52(%rbp)
	jmp	.L4
.L5:
	movl	-56(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -52(%rbp)
.L4:
	movl	-56(%rbp), %eax
	addl	%eax, %eax
	cmpl	%eax, -52(%rbp)
	jl	.L6
	movl	-52(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L7
.L6:
	movl	$0, %eax
	jmp	.L8
.L7:
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L20
	call	BN_value_one@PLT
	movq	%rax, %rcx
	movl	-52(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_lshift@PLT
	testl	%eax, %eax
	je	.L20
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jle	.L11
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L17
.L11:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.L17:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_range_ex@PLT
	testl	%eax, %eax
	je	.L21
	movq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	je	.L21
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	js	.L22
	jmp	.L17
.L22:
	nop
	movl	$1, -4(%rbp)
	jmp	.L3
.L19:
	nop
	jmp	.L3
.L20:
	nop
	jmp	.L3
.L21:
	nop
.L3:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	ossl_ffc_generate_private_key, .-ossl_ffc_generate_private_key
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

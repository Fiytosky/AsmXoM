	.file	"bn_kron.c"
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
	.globl	BN_kronecker
	.type	BN_kronecker, @function
BN_kronecker:
.LFB161:
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
	movl	$-2, -8(%rbp)
	movl	$0, -12(%rbp)
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
	cmpq	$0, -32(%rbp)
	je	.L40
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L41
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L42
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L10
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_abs_is_word@PLT
	movl	%eax, -8(%rbp)
	jmp	.L7
.L10:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	jne	.L11
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	jne	.L11
	movl	$0, -8(%rbp)
	jmp	.L7
.L11:
	movl	$0, -4(%rbp)
	jmp	.L12
.L13:
	addl	$1, -4(%rbp)
.L12:
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	je	.L13
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_rshift@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L43
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L15
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L16
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	andl	$7, %eax
	jmp	.L17
.L16:
	movl	$0, %eax
.L17:
	leaq	0(,%rax,4), %rdx
	leaq	tab.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -8(%rbp)
	jmp	.L18
.L15:
	movl	$1, -8(%rbp)
.L18:
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L37
	movq	-32(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L37
	negl	-8(%rbp)
.L37:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L20
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	jne	.L44
	movl	$0, -8(%rbp)
	jmp	.L44
.L20:
	movl	$0, -4(%rbp)
	jmp	.L23
.L24:
	addl	$1, -4(%rbp)
.L23:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	je	.L24
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_rshift@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L45
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L26
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L27
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	andl	$7, %eax
	jmp	.L28
.L27:
	movl	$0, %eax
.L28:
	leaq	0(,%rax,4), %rdx
	leaq	tab.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-8(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -8(%rbp)
.L26:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L29
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L30
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	notq	%rax
	jmp	.L31
.L30:
	movq	$-1, %rax
	jmp	.L31
.L29:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L32
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	jmp	.L31
.L32:
	movl	$0, %eax
.L31:
	movq	-32(%rbp), %rdx
	movl	8(%rdx), %edx
	testl	%edx, %edx
	je	.L33
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx), %rdx
	jmp	.L34
.L33:
	movl	$0, %edx
.L34:
	andq	%rdx, %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L35
	negl	-8(%rbp)
.L35:
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L46
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, 16(%rax)
	jmp	.L37
.L40:
	nop
	jmp	.L7
.L41:
	nop
	jmp	.L7
.L42:
	nop
	jmp	.L7
.L43:
	nop
	jmp	.L7
.L44:
	nop
	jmp	.L7
.L45:
	nop
	jmp	.L7
.L46:
	nop
.L7:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	cmpl	$0, -12(%rbp)
	je	.L38
	movl	$-2, %eax
	jmp	.L39
.L38:
	movl	-8(%rbp), %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	BN_kronecker, .-BN_kronecker
	.section	.rodata
	.align 32
	.type	tab.0, @object
	.size	tab.0, 32
tab.0:
	.long	0
	.long	1
	.long	0
	.long	-1
	.long	0
	.long	-1
	.long	0
	.long	1
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

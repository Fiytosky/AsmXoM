	.file	"bn_sqr.c"
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
	.globl	BN_sqr
	.type	BN_sqr, @function
BN_sqr:
.LFB161:
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
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_sqr_fixed_top@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	BN_sqr, .-BN_sqr
	.globl	bn_sqr_fixed_top
	.type	bn_sqr_fixed_top, @function
bn_sqr_fixed_top:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%rdx, -328(%rbp)
	movl	$0, -4(%rbp)
	movq	-320(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L8
	movq	-312(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-312(%rbp), %rax
	movl	$0, 16(%rax)
	movl	$1, %eax
	jmp	.L9
.L8:
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-320(%rbp), %rax
	cmpq	-312(%rbp), %rax
	jne	.L10
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	jmp	.L11
.L10:
	movq	-312(%rbp), %rax
	movq	%rax, -16(%rbp)
.L11:
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L24
	cmpq	$0, -32(%rbp)
	je	.L24
	movl	-20(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L25
	cmpl	$4, -20(%rbp)
	jne	.L16
	movq	-320(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bn_sqr_comba4@PLT
	jmp	.L17
.L16:
	cmpl	$8, -20(%rbp)
	jne	.L18
	movq	-320(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bn_sqr_comba8@PLT
	jmp	.L17
.L18:
	cmpl	$15, -20(%rbp)
	jg	.L19
	movq	-320(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	-304(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	%rax, %rdi
	call	bn_sqr_normal@PLT
	jmp	.L17
.L19:
	movl	-20(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	BN_num_bits_word@PLT
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -44(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jne	.L20
	movl	-44(%rbp), %eax
	leal	(%rax,%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L26
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	-320(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movq	%rax, %rdi
	call	bn_sqr_recursive@PLT
	jmp	.L17
.L20:
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L27
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	-320(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movq	%rax, %rdi
	call	bn_sqr_normal@PLT
.L17:
	movq	-16(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-16(%rbp), %rax
	movl	20(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-312(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L23
	movq	-16(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L28
.L23:
	movl	$1, -4(%rbp)
	jmp	.L14
.L24:
	nop
	jmp	.L14
.L25:
	nop
	jmp	.L14
.L26:
	nop
	jmp	.L14
.L27:
	nop
	jmp	.L14
.L28:
	nop
.L14:
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	bn_sqr_fixed_top, .-bn_sqr_fixed_top
	.globl	bn_sqr_normal
	.type	bn_sqr_normal, @function
bn_sqr_normal:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movl	-68(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -44(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-44(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$8, -40(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -24(%rbp)
	subl	$1, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jle	.L30
	addq	$8, -32(%rbp)
	movq	-32(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rcx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	bn_mul_words@PLT
	movq	%rax, (%rbx)
	addq	$16, -40(%rbp)
.L30:
	movl	-68(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -20(%rbp)
	jmp	.L31
.L32:
	subl	$1, -24(%rbp)
	addq	$8, -32(%rbp)
	movq	-32(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rcx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	bn_mul_add_words@PLT
	movq	%rax, (%rbx)
	addq	$16, -40(%rbp)
	subl	$1, -20(%rbp)
.L31:
	cmpl	$0, -20(%rbp)
	jg	.L32
	movl	-44(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	bn_add_words@PLT
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_sqr_words@PLT
	movl	-44(%rbp), %ecx
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	bn_add_words@PLT
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	bn_sqr_normal, .-bn_sqr_normal
	.globl	bn_sqr_recursive
	.type	bn_sqr_recursive, @function
bn_sqr_recursive:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -20(%rbp)
	cmpl	$4, -68(%rbp)
	jne	.L34
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bn_sqr_comba4@PLT
	jmp	.L33
.L34:
	cmpl	$8, -68(%rbp)
	jne	.L36
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bn_sqr_comba8@PLT
	jmp	.L33
.L36:
	cmpl	$15, -68(%rbp)
	jg	.L37
	movq	-80(%rbp), %rcx
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	bn_sqr_normal@PLT
	jmp	.L33
.L37:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-20(%rbp), %edx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_cmp_words@PLT
	movl	%eax, -24(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$0, -24(%rbp)
	jle	.L38
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-20(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	-80(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	bn_sub_words@PLT
	jmp	.L39
.L38:
	cmpl	$0, -24(%rbp)
	jns	.L40
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-20(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	bn_sub_words@PLT
	jmp	.L39
.L40:
	movl	$1, -4(%rbp)
.L39:
	movl	-68(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L41
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	call	bn_sqr_recursive.localalias
	jmp	.L42
.L41:
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L42:
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	bn_sqr_recursive.localalias
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rcx
	movl	%eax, %edx
	call	bn_sqr_recursive.localalias
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-68(%rbp), %edx
	movq	-56(%rbp), %rsi
	movq	-80(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	bn_add_words@PLT
	movl	%eax, -24(%rbp)
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-68(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	call	bn_sub_words@PLT
	subl	%eax, -24(%rbp)
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	leaq	(%rcx,%rax), %rdi
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	call	bn_add_words@PLT
	addl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L33
	movl	-20(%rbp), %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-24(%rbp), %eax
	cltq
	cmpq	%rax, -40(%rbp)
	jnb	.L33
.L43:
	addq	$8, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.L43
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	bn_sqr_recursive, .-bn_sqr_recursive
	.set	bn_sqr_recursive.localalias,bn_sqr_recursive
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

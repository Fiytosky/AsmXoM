	.file	"bsearch.c"
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
	.globl	ossl_bsearch
	.type	ossl_bsearch, @function
ossl_bsearch:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movl	%r9d, -68(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movl	$0, -4(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L8
.L12:
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	imull	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jns	.L9
	movl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L8
.L9:
	cmpl	$0, -16(%rbp)
	jle	.L18
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
.L8:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L12
	jmp	.L11
.L18:
	nop
.L11:
	cmpl	$0, -16(%rbp)
	je	.L13
	movl	-68(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L13
	movq	$0, -24(%rbp)
	jmp	.L14
.L13:
	cmpl	$0, -16(%rbp)
	jne	.L14
	movl	-68(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L14
	jmp	.L15
.L17:
	subl	$1, -12(%rbp)
.L15:
	cmpl	$0, -12(%rbp)
	jle	.L16
	movl	-12(%rbp), %eax
	subl	$1, %eax
	imull	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L17
.L16:
	movl	-12(%rbp), %eax
	imull	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
.L14:
	movq	-24(%rbp), %rax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	ossl_bsearch, .-ossl_bsearch
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

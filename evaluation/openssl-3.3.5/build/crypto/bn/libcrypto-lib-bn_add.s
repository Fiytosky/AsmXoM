	.file	"bn_add.c"
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
	.globl	BN_add
	.type	BN_add, @function
BN_add:
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
	movq	-32(%rbp), %rax
	movl	16(%rax), %edx
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, %edx
	jne	.L6
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_uadd@PLT
	movl	%eax, -4(%rbp)
	jmp	.L7
.L6:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.L8
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_usub@PLT
	movl	%eax, -4(%rbp)
	jmp	.L7
.L8:
	cmpl	$0, -12(%rbp)
	jns	.L9
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_usub@PLT
	movl	%eax, -4(%rbp)
	jmp	.L7
.L9:
	movl	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$1, -4(%rbp)
.L7:
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 16(%rax)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	BN_add, .-BN_add
	.globl	BN_sub
	.type	BN_sub, @function
BN_sub:
.LFB162:
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
	movq	-32(%rbp), %rax
	movl	16(%rax), %edx
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, %edx
	je	.L12
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_uadd@PLT
	movl	%eax, -4(%rbp)
	jmp	.L13
.L12:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.L14
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_usub@PLT
	movl	%eax, -4(%rbp)
	jmp	.L13
.L14:
	cmpl	$0, -12(%rbp)
	jns	.L15
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_usub@PLT
	movl	%eax, -4(%rbp)
	jmp	.L13
.L15:
	movl	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$1, -4(%rbp)
.L13:
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 16(%rax)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	BN_sub, .-BN_sub
	.globl	BN_uadd
	.type	BN_uadd, @function
BN_uadd:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-96(%rbp), %rax
	movl	8(%rax), %edx
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jge	.L18
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
.L18:
	movq	-96(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-44(%rbp), %eax
	leal	1(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	movq	-88(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-48(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bn_add_words@PLT
	movq	%rax, -32(%rbp)
	movl	-48(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rax, -24(%rbp)
	movl	-48(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rax, -16(%rbp)
	jmp	.L21
.L22:
	subl	$1, -4(%rbp)
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -72(%rbp)
	sete	%al
	movzbl	%al, %eax
	andq	%rax, -32(%rbp)
.L21:
	cmpl	$0, -4(%rbp)
	jne	.L22
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addl	%edx, %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-88(%rbp), %rax
	movl	$0, 16(%rax)
	movl	$1, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	BN_uadd, .-BN_uadd
	.section	.rodata
.LC0:
	.string	"../crypto/bn/bn_add.c"
	.text
	.globl	BN_usub
	.type	BN_usub, @function
BN_usub:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-88(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	-4(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L24
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$139, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L25
.L24:
	movl	-4(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L26
	movl	$0, %eax
	jmp	.L25
.L26:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-36(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bn_sub_words@PLT
	movq	%rax, -16(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rax, -32(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rax, -24(%rbp)
	jmp	.L27
.L28:
	subl	$1, -8(%rbp)
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -56(%rbp)
	sete	%al
	movzbl	%al, %eax
	andq	%rax, -16(%rbp)
.L27:
	cmpl	$0, -8(%rbp)
	jne	.L28
	jmp	.L29
.L31:
	subl	$1, -4(%rbp)
.L29:
	cmpl	$0, -4(%rbp)
	je	.L30
	subq	$8, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L31
.L30:
	movq	-72(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-72(%rbp), %rax
	movl	$0, 16(%rax)
	movl	$1, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	BN_usub, .-BN_usub
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 8
__func__.0:
	.string	"BN_usub"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

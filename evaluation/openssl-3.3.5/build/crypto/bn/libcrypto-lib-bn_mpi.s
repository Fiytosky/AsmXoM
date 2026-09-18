	.file	"bn_mpi.c"
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
	.globl	BN_bn2mpi
	.type	BN_bn2mpi, @function
BN_bn2mpi:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.L6
	movl	-12(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.L6:
	cmpq	$0, -48(%rbp)
	jne	.L7
	movl	-8(%rbp), %eax
	leal	4(%rax), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	jmp	.L8
.L7:
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	sarq	$24, %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	sarq	$16, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	sarq	$8, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	addq	$3, %rax
	movq	-24(%rbp), %rdx
	movb	%dl, (%rax)
	cmpl	$0, -4(%rbp)
	je	.L9
	movq	-48(%rbp), %rax
	addq	$4, %rax
	movb	$0, (%rax)
.L9:
	movl	-4(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L10
	movq	-48(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %edx
	movq	-48(%rbp), %rax
	addq	$4, %rax
	orl	$-128, %edx
	movb	%dl, (%rax)
.L10:
	movl	-8(%rbp), %eax
	leal	4(%rax), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	BN_bn2mpi, .-BN_bn2mpi
	.section	.rodata
.LC0:
	.string	"../crypto/bn/bn_mpi.c"
	.text
	.globl	BN_mpi2bn
	.type	BN_mpi2bn, @function
BN_mpi2bn:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpl	$3, -44(%rbp)
	jle	.L12
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jns	.L13
.L12:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$49, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L14
.L13:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	cltq
	orq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	je	.L15
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$55, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L14
.L15:
	cmpq	$0, -56(%rbp)
	jne	.L16
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	jmp	.L17
.L16:
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
.L17:
	cmpq	$0, -16(%rbp)
	jne	.L18
	movl	$0, %eax
	jmp	.L14
.L18:
	cmpq	$0, -24(%rbp)
	jne	.L19
	movq	-16(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-16(%rbp), %rax
	jmp	.L14
.L19:
	addq	$4, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jns	.L20
	movl	$1, -4(%rbp)
.L20:
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	jne	.L21
	cmpq	$0, -56(%rbp)
	jne	.L22
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L22:
	movl	$0, %eax
	jmp	.L14
.L21:
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 16(%rax)
	cmpl	$0, -4(%rbp)
	je	.L23
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	leal	-1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_clear_bit@PLT
.L23:
	movq	-16(%rbp), %rax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	BN_mpi2bn, .-BN_mpi2bn
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 10
__func__.0:
	.string	"BN_mpi2bn"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

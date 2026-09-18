	.file	"comp_lib.c"
	.text
	.section	.rodata
.LC0:
	.string	"../crypto/comp/comp_lib.c"
	.text
	.globl	COMP_CTX_new
	.type	COMP_CTX_new, @function
COMP_CTX_new:
.LFB116:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	leaq	.LC0(%rip), %rax
	movl	$25, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L3
.L4:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L5
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L5
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$29, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -8(%rbp)
.L5:
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE116:
	.size	COMP_CTX_new, .-COMP_CTX_new
	.globl	COMP_CTX_get_method
	.type	COMP_CTX_get_method, @function
COMP_CTX_get_method:
.LFB117:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.size	COMP_CTX_get_method, .-COMP_CTX_get_method
	.globl	COMP_get_type
	.type	COMP_get_type, @function
COMP_get_type:
.LFB118:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
.L10:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE118:
	.size	COMP_get_type, .-COMP_get_type
	.globl	COMP_get_name
	.type	COMP_get_name, @function
COMP_get_name:
.LFB119:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L13:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE119:
	.size	COMP_get_name, .-COMP_get_name
	.globl	COMP_CTX_free
	.type	COMP_CTX_free, @function
COMP_CTX_free:
.LFB120:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L18
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L17
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L17:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$61, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L14
.L18:
	nop
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE120:
	.size	COMP_CTX_free, .-COMP_CTX_free
	.globl	COMP_compress_block
	.type	COMP_compress_block, @function
COMP_compress_block:
.LFB121:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L20
	movl	$-1, %eax
	jmp	.L21
.L20:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %r9
	movl	-40(%rbp), %eax
	movslq	%eax, %rdi
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L22
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-40(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
.L22:
	movl	-4(%rbp), %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE121:
	.size	COMP_compress_block, .-COMP_compress_block
	.globl	COMP_expand_block
	.type	COMP_expand_block, @function
COMP_expand_block:
.LFB122:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L24
	movl	$-1, %eax
	jmp	.L25
.L24:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %r9
	movl	-40(%rbp), %eax
	movslq	%eax, %rdi
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L26
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-40(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
.L26:
	movl	-4(%rbp), %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE122:
	.size	COMP_expand_block, .-COMP_expand_block
	.globl	COMP_CTX_get_type
	.type	COMP_CTX_get_type, @function
COMP_CTX_get_type:
.LFB123:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	jmp	.L30
.L28:
	movl	$0, %eax
.L30:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE123:
	.size	COMP_CTX_get_type, .-COMP_CTX_get_type
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

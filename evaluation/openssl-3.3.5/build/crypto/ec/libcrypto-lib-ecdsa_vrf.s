	.file	"ecdsa_vrf.c"
	.text
	.section	.rodata
.LC0:
	.string	"../crypto/ec/ecdsa_vrf.c"
	.text
	.globl	ECDSA_do_verify
	.type	ECDSA_do_verify, @function
ECDSA_do_verify:
.LFB367:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L2
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	112(%rax), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	jmp	.L3
.L2:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$152, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	ECDSA_do_verify, .-ECDSA_do_verify
	.globl	ECDSA_verify
	.type	ECDSA_verify, @function
ECDSA_verify:
.LFB368:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L5
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	104(%rax), %r10
	movq	-40(%rbp), %r8
	movl	-28(%rbp), %edi
	movq	-24(%rbp), %rcx
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movq	%r8, %r9
	movl	%edi, %r8d
	movl	%eax, %edi
	call	*%r10
	jmp	.L6
.L5:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$152, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	ECDSA_verify, .-ECDSA_verify
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"ECDSA_do_verify"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 13
__func__.0:
	.string	"ECDSA_verify"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

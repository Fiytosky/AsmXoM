	.file	"bn_print.c"
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
	.section	.rodata
	.align 16
	.type	Hex, @object
	.size	Hex, 17
Hex:
	.string	"0123456789ABCDEF"
	.text
	.globl	BN_print_fp
	.type	BN_print_fp, @function
BN_print_fp:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_print@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	BN_print_fp, .-BN_print_fp
	.section	.rodata
.LC0:
	.string	"-"
.LC1:
	.string	"0"
	.text
	.globl	BN_print
	.type	BN_print, @function
BN_print:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L9
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$1, %eax
	jne	.L20
.L9:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L11
	leaq	.LC1(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$1, %eax
	jne	.L21
.L11:
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L12
.L18:
	movl	$60, -8(%rbp)
	jmp	.L13
.L17:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	andl	$15, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L14
	cmpl	$0, -20(%rbp)
	je	.L15
.L14:
	movl	-20(%rbp), %eax
	cltq
	leaq	Hex(%rip), %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$1, %eax
	jne	.L22
	movl	$1, -12(%rbp)
.L15:
	subl	$4, -8(%rbp)
.L13:
	cmpl	$0, -8(%rbp)
	jns	.L17
	subl	$1, -4(%rbp)
.L12:
	cmpl	$0, -4(%rbp)
	jns	.L18
	movl	$1, -16(%rbp)
	jmp	.L10
.L20:
	nop
	jmp	.L10
.L21:
	nop
	jmp	.L10
.L22:
	nop
.L10:
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	BN_print, .-BN_print
	.section	.rodata
.LC2:
	.string	"bn(%zu,%zu)"
	.text
	.globl	BN_options
	.type	BN_options, @function
BN_options:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	init.1(%rip), %eax
	testl	%eax, %eax
	jne	.L24
	movl	init.1(%rip), %eax
	addl	$1, %eax
	movl	%eax, init.1(%rip)
	leaq	.LC2(%rip), %rdx
	leaq	data.0(%rip), %rax
	movl	$64, %r8d
	movl	$64, %ecx
	movl	$16, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
.L24:
	leaq	data.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	BN_options, .-BN_options
	.local	init.1
	.comm	init.1,4,4
	.local	data.0
	.comm	data.0,16,16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

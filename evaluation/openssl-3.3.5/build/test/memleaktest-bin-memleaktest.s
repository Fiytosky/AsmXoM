	.file	"memleaktest.c"
	.text
	.section	.rodata
.LC0:
	.string	"../test/memleaktest.c"
.LC1:
	.string	"lost"
.LC2:
	.string	"freeit"
	.text
	.globl	main
	.type	main, @function
main:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1, -4(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$49, %edx
	movq	%rax, %rsi
	movl	$3, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$50, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L2
	movl	$1, %eax
	jmp	.L3
.L2:
	movq	-16(%rbp), %rax
	movw	$25185, (%rax)
	movb	$0, 2(%rax)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L4
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L4
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$56, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, -4(%rbp)
.L4:
	movq	$0, -16(%rbp)
	movl	-4(%rbp), %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"aborttest.c"
	.text
	.section	.rodata
.LC0:
	.string	"../test/aborttest.c"
.LC1:
	.string	"Voluntary abort"
	.text
	.globl	main
	.type	main, @function
main:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$14, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
	.cfi_endproc
.LFE30:
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

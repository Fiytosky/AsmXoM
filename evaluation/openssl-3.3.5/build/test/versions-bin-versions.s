	.file	"versions.c"
	.text
	.section	.rodata
.LC0:
	.string	"3.3.5"
.LC1:
	.string	"Build version: %s\n"
.LC2:
	.string	"Library version: %s\n"
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
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$7, %edi
	call	OpenSSL_version@PLT
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

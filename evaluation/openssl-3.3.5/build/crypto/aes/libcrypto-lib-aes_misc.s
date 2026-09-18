	.file	"aes_misc.c"
	.text
	.section	.rodata
.LC0:
	.string	"aes(partial)"
	.text
	.globl	AES_options
	.type	AES_options, @function
AES_options:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	AES_options, .-AES_options
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

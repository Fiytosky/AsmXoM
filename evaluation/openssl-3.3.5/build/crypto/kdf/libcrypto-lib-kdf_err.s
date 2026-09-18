	.file	"kdf_err.c"
	.text
	.globl	ERR_load_KDF_strings
	.type	ERR_load_KDF_strings, @function
ERR_load_KDF_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ERR_load_KDF_strings, .-ERR_load_KDF_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

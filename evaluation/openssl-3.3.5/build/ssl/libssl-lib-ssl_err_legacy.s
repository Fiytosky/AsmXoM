	.file	"ssl_err_legacy.c"
	.text
	.globl	ERR_load_SSL_strings
	.type	ERR_load_SSL_strings, @function
ERR_load_SSL_strings:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_err_load_SSL_strings@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	ERR_load_SSL_strings, .-ERR_load_SSL_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

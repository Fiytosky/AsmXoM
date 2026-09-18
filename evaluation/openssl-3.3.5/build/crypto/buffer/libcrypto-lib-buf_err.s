	.file	"buf_err.c"
	.text
	.section	.rodata
	.align 16
	.type	BUF_str_reasons, @object
	.size	BUF_str_reasons, 16
BUF_str_reasons:
	.zero	16
	.text
	.globl	ossl_err_load_BUF_strings
	.type	ossl_err_load_BUF_strings, @function
ossl_err_load_BUF_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	BUF_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_BUF_strings, .-ossl_err_load_BUF_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

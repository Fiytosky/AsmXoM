	.file	"encoder_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"encoder not found"
.LC1:
	.string	"incorrect property query"
.LC2:
	.string	"missing get params"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	OSSL_ENCODER_str_reasons, @object
	.size	OSSL_ENCODER_str_reasons, 64
OSSL_ENCODER_str_reasons:
	.quad	494927973
	.quad	.LC0
	.quad	494927972
	.quad	.LC1
	.quad	494927974
	.quad	.LC2
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_OSSL_ENCODER_strings
	.type	ossl_err_load_OSSL_ENCODER_strings, @function
ossl_err_load_OSSL_ENCODER_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$494927973, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	OSSL_ENCODER_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_OSSL_ENCODER_strings, .-ossl_err_load_OSSL_ENCODER_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

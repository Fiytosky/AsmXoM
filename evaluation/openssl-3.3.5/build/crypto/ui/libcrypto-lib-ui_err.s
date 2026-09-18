	.file	"ui_err.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"common ok and cancel characters"
.LC1:
	.string	"index too large"
.LC2:
	.string	"index too small"
.LC3:
	.string	"no result buffer"
.LC4:
	.string	"processing error"
.LC5:
	.string	"result too large"
.LC6:
	.string	"result too small"
.LC7:
	.string	"sys$assign error"
.LC8:
	.string	"sys$dassgn error"
.LC9:
	.string	"sys$qiow error"
.LC10:
	.string	"unknown control command"
.LC11:
	.string	"unknown ttyget errno value"
	.align 8
.LC12:
	.string	"user data duplication unsupported"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	UI_str_reasons, @object
	.size	UI_str_reasons, 224
UI_str_reasons:
	.quad	335544424
	.quad	.LC0
	.quad	335544422
	.quad	.LC1
	.quad	335544423
	.quad	.LC2
	.quad	335544425
	.quad	.LC3
	.quad	335544427
	.quad	.LC4
	.quad	335544420
	.quad	.LC5
	.quad	335544421
	.quad	.LC6
	.quad	335544429
	.quad	.LC7
	.quad	335544430
	.quad	.LC8
	.quad	335544431
	.quad	.LC9
	.quad	335544426
	.quad	.LC10
	.quad	335544428
	.quad	.LC11
	.quad	335544432
	.quad	.LC12
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_UI_strings
	.type	ossl_err_load_UI_strings, @function
ossl_err_load_UI_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$335544424, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	UI_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_UI_strings, .-ossl_err_load_UI_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

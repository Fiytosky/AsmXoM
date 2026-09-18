	.file	"property_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"name too long"
.LC1:
	.string	"not an ascii character"
.LC2:
	.string	"not an hexadecimal digit"
.LC3:
	.string	"not an identifier"
.LC4:
	.string	"not an octal digit"
.LC5:
	.string	"not a decimal digit"
.LC6:
	.string	"no matching string delimiter"
.LC7:
	.string	"no value"
.LC8:
	.string	"parse failed"
.LC9:
	.string	"string too long"
.LC10:
	.string	"trailing characters"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	PROP_str_reasons, @object
	.size	PROP_str_reasons, 192
PROP_str_reasons:
	.quad	461373540
	.quad	.LC0
	.quad	461373541
	.quad	.LC1
	.quad	461373542
	.quad	.LC2
	.quad	461373543
	.quad	.LC3
	.quad	461373544
	.quad	.LC4
	.quad	461373545
	.quad	.LC5
	.quad	461373546
	.quad	.LC6
	.quad	461373547
	.quad	.LC7
	.quad	461373548
	.quad	.LC8
	.quad	461373549
	.quad	.LC9
	.quad	461373550
	.quad	.LC10
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_PROP_strings
	.type	ossl_err_load_PROP_strings, @function
ossl_err_load_PROP_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$461373540, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	PROP_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_PROP_strings, .-ossl_err_load_PROP_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

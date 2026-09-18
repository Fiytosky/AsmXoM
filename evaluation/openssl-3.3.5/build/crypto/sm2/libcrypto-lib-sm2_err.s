	.file	"sm2_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"asn1 error"
.LC1:
	.string	"bad signature"
.LC2:
	.string	"buffer too small"
.LC3:
	.string	"dist id too large"
.LC4:
	.string	"id not set"
.LC5:
	.string	"id too large"
.LC6:
	.string	"invalid curve"
.LC7:
	.string	"invalid digest"
.LC8:
	.string	"invalid digest type"
.LC9:
	.string	"invalid encoding"
.LC10:
	.string	"invalid field"
.LC11:
	.string	"invalid private key"
.LC12:
	.string	"no parameters set"
.LC13:
	.string	"user id too large"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	SM2_str_reasons, @object
	.size	SM2_str_reasons, 240
SM2_str_reasons:
	.quad	444596324
	.quad	.LC0
	.quad	444596325
	.quad	.LC1
	.quad	444596331
	.quad	.LC2
	.quad	444596334
	.quad	.LC3
	.quad	444596336
	.quad	.LC4
	.quad	444596335
	.quad	.LC5
	.quad	444596332
	.quad	.LC6
	.quad	444596326
	.quad	.LC7
	.quad	444596327
	.quad	.LC8
	.quad	444596328
	.quad	.LC9
	.quad	444596329
	.quad	.LC10
	.quad	444596337
	.quad	.LC11
	.quad	444596333
	.quad	.LC12
	.quad	444596330
	.quad	.LC13
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_SM2_strings
	.type	ossl_err_load_SM2_strings, @function
ossl_err_load_SM2_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$444596324, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	SM2_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_SM2_strings, .-ossl_err_load_SM2_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"cpt_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"bad algorithm name"
.LC1:
	.string	"conflicting names"
.LC2:
	.string	"hex string too short"
.LC3:
	.string	"illegal hex digit"
.LC4:
	.string	"insufficient data space"
.LC5:
	.string	"insufficient param size"
	.align 8
.LC6:
	.string	"insufficient secure data space"
.LC7:
	.string	"integer overflow"
.LC8:
	.string	"invalid negative value"
.LC9:
	.string	"invalid null argument"
.LC10:
	.string	"invalid ossl param type"
.LC11:
	.string	"no params to merge"
.LC12:
	.string	"no space for terminating null"
.LC13:
	.string	"odd number of digits"
	.align 8
.LC14:
	.string	"param cannot be represented exactly"
.LC15:
	.string	"param not integer type"
.LC16:
	.string	"param of incompatible type"
	.align 8
.LC17:
	.string	"param unsigned integer negative value unsupported"
	.align 8
.LC18:
	.string	"param unsupported floating point format"
	.align 8
.LC19:
	.string	"param value too large for destination"
.LC20:
	.string	"provider already exists"
.LC21:
	.string	"provider section error"
.LC22:
	.string	"random section error"
.LC23:
	.string	"secure malloc failure"
.LC24:
	.string	"string too long"
.LC25:
	.string	"too many bytes"
.LC26:
	.string	"too many records"
.LC27:
	.string	"too small buffer"
	.align 8
.LC28:
	.string	"unknown name in random section"
.LC29:
	.string	"zero length number"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	CRYPTO_str_reasons, @object
	.size	CRYPTO_str_reasons, 496
CRYPTO_str_reasons:
	.quad	125829237
	.quad	.LC0
	.quad	125829238
	.quad	.LC1
	.quad	125829241
	.quad	.LC2
	.quad	125829222
	.quad	.LC3
	.quad	125829226
	.quad	.LC4
	.quad	125829227
	.quad	.LC5
	.quad	125829228
	.quad	.LC6
	.quad	125829247
	.quad	.LC7
	.quad	125829242
	.quad	.LC8
	.quad	125829229
	.quad	.LC9
	.quad	125829230
	.quad	.LC10
	.quad	125829251
	.quad	.LC11
	.quad	125829248
	.quad	.LC12
	.quad	125829223
	.quad	.LC13
	.quad	125829243
	.quad	.LC14
	.quad	125829244
	.quad	.LC15
	.quad	125829249
	.quad	.LC16
	.quad	125829245
	.quad	.LC17
	.quad	125829250
	.quad	.LC18
	.quad	125829246
	.quad	.LC19
	.quad	125829224
	.quad	.LC20
	.quad	125829225
	.quad	.LC21
	.quad	125829239
	.quad	.LC22
	.quad	125829231
	.quad	.LC23
	.quad	125829232
	.quad	.LC24
	.quad	125829233
	.quad	.LC25
	.quad	125829234
	.quad	.LC26
	.quad	125829236
	.quad	.LC27
	.quad	125829240
	.quad	.LC28
	.quad	125829235
	.quad	.LC29
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_CRYPTO_strings
	.type	ossl_err_load_CRYPTO_strings, @function
ossl_err_load_CRYPTO_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$125829237, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	CRYPTO_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_CRYPTO_strings, .-ossl_err_load_CRYPTO_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

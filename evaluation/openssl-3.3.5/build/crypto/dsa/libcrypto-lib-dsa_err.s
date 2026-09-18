	.file	"dsa_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"bad ffc parameters"
.LC1:
	.string	"bad q value"
.LC2:
	.string	"bn decode error"
.LC3:
	.string	"bn error"
.LC4:
	.string	"decode error"
.LC5:
	.string	"invalid digest type"
.LC6:
	.string	"invalid parameters"
.LC7:
	.string	"missing parameters"
.LC8:
	.string	"missing private key"
.LC9:
	.string	"modulus too large"
.LC10:
	.string	"no parameters set"
.LC11:
	.string	"parameter encoding error"
.LC12:
	.string	"p not prime"
.LC13:
	.string	"q not prime"
	.align 8
.LC14:
	.string	"seed_len is less than the length of q"
.LC15:
	.string	"too many retries"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	DSA_str_reasons, @object
	.size	DSA_str_reasons, 272
DSA_str_reasons:
	.quad	83886194
	.quad	.LC0
	.quad	83886182
	.quad	.LC1
	.quad	83886188
	.quad	.LC2
	.quad	83886189
	.quad	.LC3
	.quad	83886184
	.quad	.LC4
	.quad	83886186
	.quad	.LC5
	.quad	83886192
	.quad	.LC6
	.quad	83886181
	.quad	.LC7
	.quad	83886191
	.quad	.LC8
	.quad	83886183
	.quad	.LC9
	.quad	83886187
	.quad	.LC10
	.quad	83886185
	.quad	.LC11
	.quad	83886195
	.quad	.LC12
	.quad	83886193
	.quad	.LC13
	.quad	83886190
	.quad	.LC14
	.quad	83886196
	.quad	.LC15
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_DSA_strings
	.type	ossl_err_load_DSA_strings, @function
ossl_err_load_DSA_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$83886194, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	DSA_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_DSA_strings, .-ossl_err_load_DSA_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

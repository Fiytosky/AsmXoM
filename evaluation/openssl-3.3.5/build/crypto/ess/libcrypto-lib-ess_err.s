	.file	"ess_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"empty ess cert id list"
.LC1:
	.string	"ess cert digest error"
.LC2:
	.string	"ess cert id not found"
.LC3:
	.string	"ess cert id wrong order"
.LC4:
	.string	"ess digest alg unknown"
.LC5:
	.string	"ess signing certificate error"
.LC6:
	.string	"ess signing cert add error"
.LC7:
	.string	"ess signing cert v2 add error"
	.align 8
.LC8:
	.string	"missing signing certificate attribute"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ESS_str_reasons, @object
	.size	ESS_str_reasons, 160
ESS_str_reasons:
	.quad	452984939
	.quad	.LC0
	.quad	452984935
	.quad	.LC1
	.quad	452984936
	.quad	.LC2
	.quad	452984937
	.quad	.LC3
	.quad	452984938
	.quad	.LC4
	.quad	452984934
	.quad	.LC5
	.quad	452984932
	.quad	.LC6
	.quad	452984933
	.quad	.LC7
	.quad	452984940
	.quad	.LC8
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_ESS_strings
	.type	ossl_err_load_ESS_strings, @function
ossl_err_load_ESS_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$452984939, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	ESS_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_ESS_strings, .-ossl_err_load_ESS_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

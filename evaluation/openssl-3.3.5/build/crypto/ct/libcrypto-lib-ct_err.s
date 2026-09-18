	.file	"ct_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"base64 decode error"
.LC1:
	.string	"invalid log id length"
.LC2:
	.string	"log conf invalid"
.LC3:
	.string	"log conf invalid key"
.LC4:
	.string	"log conf missing description"
.LC5:
	.string	"log conf missing key"
.LC6:
	.string	"log key invalid"
.LC7:
	.string	"sct future timestamp"
.LC8:
	.string	"sct invalid"
.LC9:
	.string	"sct invalid signature"
.LC10:
	.string	"sct list invalid"
.LC11:
	.string	"sct log id mismatch"
.LC12:
	.string	"sct not set"
.LC13:
	.string	"sct unsupported version"
.LC14:
	.string	"unrecognized signature nid"
.LC15:
	.string	"unsupported entry type"
.LC16:
	.string	"unsupported version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	CT_str_reasons, @object
	.size	CT_str_reasons, 288
CT_str_reasons:
	.quad	419430508
	.quad	.LC0
	.quad	419430500
	.quad	.LC1
	.quad	419430509
	.quad	.LC2
	.quad	419430510
	.quad	.LC3
	.quad	419430511
	.quad	.LC4
	.quad	419430512
	.quad	.LC5
	.quad	419430513
	.quad	.LC6
	.quad	419430516
	.quad	.LC7
	.quad	419430504
	.quad	.LC8
	.quad	419430507
	.quad	.LC9
	.quad	419430505
	.quad	.LC10
	.quad	419430514
	.quad	.LC11
	.quad	419430506
	.quad	.LC12
	.quad	419430515
	.quad	.LC13
	.quad	419430501
	.quad	.LC14
	.quad	419430502
	.quad	.LC15
	.quad	419430503
	.quad	.LC16
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_CT_strings
	.type	ossl_err_load_CT_strings, @function
ossl_err_load_CT_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$419430508, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	CT_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_CT_strings, .-ossl_err_load_CT_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"obj_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"oid exists"
.LC1:
	.string	"unknown nid"
.LC2:
	.string	"unknown object name"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	OBJ_str_reasons, @object
	.size	OBJ_str_reasons, 64
OBJ_str_reasons:
	.quad	67108966
	.quad	.LC0
	.quad	67108965
	.quad	.LC1
	.quad	67108967
	.quad	.LC2
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_OBJ_strings
	.type	ossl_err_load_OBJ_strings, @function
ossl_err_load_OBJ_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$67108966, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	OBJ_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_OBJ_strings, .-ossl_err_load_OBJ_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

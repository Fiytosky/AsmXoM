	.file	"async_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"failed to set pool"
.LC1:
	.string	"failed to swap context"
.LC2:
	.string	"init failed"
.LC3:
	.string	"invalid pool size"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ASYNC_str_reasons, @object
	.size	ASYNC_str_reasons, 80
ASYNC_str_reasons:
	.quad	427819109
	.quad	.LC0
	.quad	427819110
	.quad	.LC1
	.quad	427819113
	.quad	.LC2
	.quad	427819111
	.quad	.LC3
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_ASYNC_strings
	.type	ossl_err_load_ASYNC_strings, @function
ossl_err_load_ASYNC_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$427819109, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	ASYNC_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_ASYNC_strings, .-ossl_err_load_ASYNC_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

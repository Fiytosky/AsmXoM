	.file	"comp_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"brotli decode error"
.LC1:
	.string	"brotli encode error"
.LC2:
	.string	"brotli not supported"
.LC3:
	.string	"zlib deflate error"
.LC4:
	.string	"zlib inflate error"
.LC5:
	.string	"zlib not supported"
.LC6:
	.string	"zstd compress error"
.LC7:
	.string	"zstd decode error"
.LC8:
	.string	"zstd decompress error"
.LC9:
	.string	"zstd not supported"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	COMP_str_reasons, @object
	.size	COMP_str_reasons, 176
COMP_str_reasons:
	.quad	343933030
	.quad	.LC0
	.quad	343933031
	.quad	.LC1
	.quad	343933032
	.quad	.LC2
	.quad	343933027
	.quad	.LC3
	.quad	343933028
	.quad	.LC4
	.quad	343933029
	.quad	.LC5
	.quad	343933033
	.quad	.LC6
	.quad	343933034
	.quad	.LC7
	.quad	343933035
	.quad	.LC8
	.quad	343933036
	.quad	.LC9
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_COMP_strings
	.type	ossl_err_load_COMP_strings, @function
ossl_err_load_COMP_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$343933030, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	COMP_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_COMP_strings, .-ossl_err_load_COMP_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

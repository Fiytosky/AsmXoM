	.file	"dso_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"control command failed"
.LC1:
	.string	"dso already loaded"
.LC2:
	.string	"empty file structure"
.LC3:
	.string	"failure"
.LC4:
	.string	"filename too big"
	.align 8
.LC5:
	.string	"cleanup method function failed"
.LC6:
	.string	"incorrect file syntax"
	.align 8
.LC7:
	.string	"could not load the shared library"
.LC8:
	.string	"name translation failed"
.LC9:
	.string	"no filename"
	.align 8
.LC10:
	.string	"a null shared library handle was used"
.LC11:
	.string	"set filename failed"
	.align 8
.LC12:
	.string	"the meth_data stack is corrupt"
	.align 8
.LC13:
	.string	"could not bind to the requested symbol name"
	.align 8
.LC14:
	.string	"could not unload the shared library"
.LC15:
	.string	"functionality not supported"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	DSO_str_reasons, @object
	.size	DSO_str_reasons, 272
DSO_str_reasons:
	.quad	310378596
	.quad	.LC0
	.quad	310378606
	.quad	.LC1
	.quad	310378609
	.quad	.LC2
	.quad	310378610
	.quad	.LC3
	.quad	310378597
	.quad	.LC4
	.quad	310378598
	.quad	.LC5
	.quad	310378611
	.quad	.LC6
	.quad	310378599
	.quad	.LC7
	.quad	310378605
	.quad	.LC8
	.quad	310378607
	.quad	.LC9
	.quad	310378600
	.quad	.LC10
	.quad	310378608
	.quad	.LC11
	.quad	310378601
	.quad	.LC12
	.quad	310378602
	.quad	.LC13
	.quad	310378603
	.quad	.LC14
	.quad	310378604
	.quad	.LC15
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_DSO_strings
	.type	ossl_err_load_DSO_strings, @function
ossl_err_load_DSO_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$310378596, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	DSO_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_DSO_strings, .-ossl_err_load_DSO_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

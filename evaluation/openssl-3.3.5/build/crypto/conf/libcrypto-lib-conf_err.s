	.file	"conf_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"error loading dso"
.LC1:
	.string	"invalid pragma"
.LC2:
	.string	"list cannot be null"
	.align 8
.LC3:
	.string	"mandatory braces in variable expansion"
.LC4:
	.string	"missing close square bracket"
.LC5:
	.string	"missing equal sign"
.LC6:
	.string	"missing init function"
.LC7:
	.string	"module initialization error"
.LC8:
	.string	"no close brace"
.LC9:
	.string	"no conf"
	.align 8
.LC10:
	.string	"no conf or environment variable"
.LC11:
	.string	"no section"
.LC12:
	.string	"no such file"
.LC13:
	.string	"no value"
.LC14:
	.string	"number too large"
	.align 8
.LC15:
	.string	"openssl conf references missing section"
.LC16:
	.string	"recursive directory include"
.LC17:
	.string	"recursive section reference"
.LC18:
	.string	"relative path"
.LC19:
	.string	"ssl command section empty"
.LC20:
	.string	"ssl command section not found"
.LC21:
	.string	"ssl section empty"
.LC22:
	.string	"ssl section not found"
.LC23:
	.string	"unable to create new section"
.LC24:
	.string	"unknown module name"
.LC25:
	.string	"variable expansion too long"
.LC26:
	.string	"variable has no value"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	CONF_str_reasons, @object
	.size	CONF_str_reasons, 448
CONF_str_reasons:
	.quad	117440622
	.quad	.LC0
	.quad	117440634
	.quad	.LC1
	.quad	117440627
	.quad	.LC2
	.quad	117440635
	.quad	.LC3
	.quad	117440612
	.quad	.LC4
	.quad	117440613
	.quad	.LC5
	.quad	117440624
	.quad	.LC6
	.quad	117440621
	.quad	.LC7
	.quad	117440614
	.quad	.LC8
	.quad	117440617
	.quad	.LC9
	.quad	117440618
	.quad	.LC10
	.quad	117440619
	.quad	.LC11
	.quad	117440626
	.quad	.LC12
	.quad	117440620
	.quad	.LC13
	.quad	117440633
	.quad	.LC14
	.quad	117440636
	.quad	.LC15
	.quad	117440623
	.quad	.LC16
	.quad	117440638
	.quad	.LC17
	.quad	117440637
	.quad	.LC18
	.quad	117440629
	.quad	.LC19
	.quad	117440630
	.quad	.LC20
	.quad	117440631
	.quad	.LC21
	.quad	117440632
	.quad	.LC22
	.quad	117440615
	.quad	.LC23
	.quad	117440625
	.quad	.LC24
	.quad	117440628
	.quad	.LC25
	.quad	117440616
	.quad	.LC26
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_CONF_strings
	.type	ossl_err_load_CONF_strings, @function
ossl_err_load_CONF_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$117440622, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	CONF_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_CONF_strings, .-ossl_err_load_CONF_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

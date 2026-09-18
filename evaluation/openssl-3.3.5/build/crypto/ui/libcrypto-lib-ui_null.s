	.file	"ui_null.c"
	.text
	.section	.rodata
.LC0:
	.string	"OpenSSL NULL UI"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ui_null, @object
	.size	ui_null, 88
ui_null:
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.text
	.globl	UI_null
	.type	UI_null, @function
UI_null:
.LFB455:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ui_null(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE455:
	.size	UI_null, .-UI_null
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

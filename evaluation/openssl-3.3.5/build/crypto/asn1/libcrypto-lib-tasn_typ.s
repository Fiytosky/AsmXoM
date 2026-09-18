	.file	"tasn_typ.c"
	.text
	.globl	ASN1_OCTET_STRING_it
	.type	ASN1_OCTET_STRING_it, @function
ASN1_OCTET_STRING_it:
.LFB84:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.26(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	ASN1_OCTET_STRING_it, .-ASN1_OCTET_STRING_it
	.globl	d2i_ASN1_OCTET_STRING
	.type	d2i_ASN1_OCTET_STRING, @function
d2i_ASN1_OCTET_STRING:
.LFB85:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	call	ASN1_OCTET_STRING_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	d2i_ASN1_OCTET_STRING, .-d2i_ASN1_OCTET_STRING
	.globl	i2d_ASN1_OCTET_STRING
	.type	i2d_ASN1_OCTET_STRING, @function
i2d_ASN1_OCTET_STRING:
.LFB86:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_OCTET_STRING_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	i2d_ASN1_OCTET_STRING, .-i2d_ASN1_OCTET_STRING
	.globl	ASN1_OCTET_STRING_new
	.type	ASN1_OCTET_STRING_new, @function
ASN1_OCTET_STRING_new:
.LFB87:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$4, %edi
	call	ASN1_STRING_type_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	ASN1_OCTET_STRING_new, .-ASN1_OCTET_STRING_new
	.globl	ASN1_OCTET_STRING_free
	.type	ASN1_OCTET_STRING_free, @function
ASN1_OCTET_STRING_free:
.LFB88:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	ASN1_OCTET_STRING_free, .-ASN1_OCTET_STRING_free
	.globl	ASN1_INTEGER_it
	.type	ASN1_INTEGER_it, @function
ASN1_INTEGER_it:
.LFB89:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.25(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	ASN1_INTEGER_it, .-ASN1_INTEGER_it
	.globl	d2i_ASN1_INTEGER
	.type	d2i_ASN1_INTEGER, @function
d2i_ASN1_INTEGER:
.LFB90:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	call	ASN1_INTEGER_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	d2i_ASN1_INTEGER, .-d2i_ASN1_INTEGER
	.globl	i2d_ASN1_INTEGER
	.type	i2d_ASN1_INTEGER, @function
i2d_ASN1_INTEGER:
.LFB91:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_INTEGER_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	i2d_ASN1_INTEGER, .-i2d_ASN1_INTEGER
	.globl	ASN1_INTEGER_new
	.type	ASN1_INTEGER_new, @function
ASN1_INTEGER_new:
.LFB92:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$2, %edi
	call	ASN1_STRING_type_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	ASN1_INTEGER_new, .-ASN1_INTEGER_new
	.globl	ASN1_INTEGER_free
	.type	ASN1_INTEGER_free, @function
ASN1_INTEGER_free:
.LFB93:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	ASN1_INTEGER_free, .-ASN1_INTEGER_free
	.globl	ASN1_ENUMERATED_it
	.type	ASN1_ENUMERATED_it, @function
ASN1_ENUMERATED_it:
.LFB94:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.24(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	ASN1_ENUMERATED_it, .-ASN1_ENUMERATED_it
	.globl	d2i_ASN1_ENUMERATED
	.type	d2i_ASN1_ENUMERATED, @function
d2i_ASN1_ENUMERATED:
.LFB95:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	call	ASN1_ENUMERATED_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	d2i_ASN1_ENUMERATED, .-d2i_ASN1_ENUMERATED
	.globl	i2d_ASN1_ENUMERATED
	.type	i2d_ASN1_ENUMERATED, @function
i2d_ASN1_ENUMERATED:
.LFB96:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_ENUMERATED_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	i2d_ASN1_ENUMERATED, .-i2d_ASN1_ENUMERATED
	.globl	ASN1_ENUMERATED_new
	.type	ASN1_ENUMERATED_new, @function
ASN1_ENUMERATED_new:
.LFB97:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$10, %edi
	call	ASN1_STRING_type_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	ASN1_ENUMERATED_new, .-ASN1_ENUMERATED_new
	.globl	ASN1_ENUMERATED_free
	.type	ASN1_ENUMERATED_free, @function
ASN1_ENUMERATED_free:
.LFB98:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	ASN1_ENUMERATED_free, .-ASN1_ENUMERATED_free
	.globl	ASN1_BIT_STRING_it
	.type	ASN1_BIT_STRING_it, @function
ASN1_BIT_STRING_it:
.LFB99:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.23(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	ASN1_BIT_STRING_it, .-ASN1_BIT_STRING_it
	.globl	d2i_ASN1_BIT_STRING
	.type	d2i_ASN1_BIT_STRING, @function
d2i_ASN1_BIT_STRING:
.LFB100:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	call	ASN1_BIT_STRING_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	d2i_ASN1_BIT_STRING, .-d2i_ASN1_BIT_STRING
	.globl	i2d_ASN1_BIT_STRING
	.type	i2d_ASN1_BIT_STRING, @function
i2d_ASN1_BIT_STRING:
.LFB101:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_BIT_STRING_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	i2d_ASN1_BIT_STRING, .-i2d_ASN1_BIT_STRING
	.globl	ASN1_BIT_STRING_new
	.type	ASN1_BIT_STRING_new, @function
ASN1_BIT_STRING_new:
.LFB102:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$3, %edi
	call	ASN1_STRING_type_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	ASN1_BIT_STRING_new, .-ASN1_BIT_STRING_new
	.globl	ASN1_BIT_STRING_free
	.type	ASN1_BIT_STRING_free, @function
ASN1_BIT_STRING_free:
.LFB103:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	ASN1_BIT_STRING_free, .-ASN1_BIT_STRING_free
	.globl	ASN1_UTF8STRING_it
	.type	ASN1_UTF8STRING_it, @function
ASN1_UTF8STRING_it:
.LFB104:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.22(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE104:
	.size	ASN1_UTF8STRING_it, .-ASN1_UTF8STRING_it
	.globl	d2i_ASN1_UTF8STRING
	.type	d2i_ASN1_UTF8STRING, @function
d2i_ASN1_UTF8STRING:
.LFB105:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	call	ASN1_UTF8STRING_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	d2i_ASN1_UTF8STRING, .-d2i_ASN1_UTF8STRING
	.globl	i2d_ASN1_UTF8STRING
	.type	i2d_ASN1_UTF8STRING, @function
i2d_ASN1_UTF8STRING:
.LFB106:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_UTF8STRING_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE106:
	.size	i2d_ASN1_UTF8STRING, .-i2d_ASN1_UTF8STRING
	.globl	ASN1_UTF8STRING_new
	.type	ASN1_UTF8STRING_new, @function
ASN1_UTF8STRING_new:
.LFB107:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$12, %edi
	call	ASN1_STRING_type_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE107:
	.size	ASN1_UTF8STRING_new, .-ASN1_UTF8STRING_new
	.globl	ASN1_UTF8STRING_free
	.type	ASN1_UTF8STRING_free, @function
ASN1_UTF8STRING_free:
.LFB108:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	ASN1_UTF8STRING_free, .-ASN1_UTF8STRING_free
	.globl	ASN1_PRINTABLESTRING_it
	.type	ASN1_PRINTABLESTRING_it, @function
ASN1_PRINTABLESTRING_it:
.LFB109:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.21(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.size	ASN1_PRINTABLESTRING_it, .-ASN1_PRINTABLESTRING_it
	.globl	d2i_ASN1_PRINTABLESTRING
	.type	d2i_ASN1_PRINTABLESTRING, @function
d2i_ASN1_PRINTABLESTRING:
.LFB110:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	call	ASN1_PRINTABLESTRING_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.size	d2i_ASN1_PRINTABLESTRING, .-d2i_ASN1_PRINTABLESTRING
	.globl	i2d_ASN1_PRINTABLESTRING
	.type	i2d_ASN1_PRINTABLESTRING, @function
i2d_ASN1_PRINTABLESTRING:
.LFB111:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_PRINTABLESTRING_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	i2d_ASN1_PRINTABLESTRING, .-i2d_ASN1_PRINTABLESTRING
	.globl	ASN1_PRINTABLESTRING_new
	.type	ASN1_PRINTABLESTRING_new, @function
ASN1_PRINTABLESTRING_new:
.LFB112:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$19, %edi
	call	ASN1_STRING_type_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.size	ASN1_PRINTABLESTRING_new, .-ASN1_PRINTABLESTRING_new
	.globl	ASN1_PRINTABLESTRING_free
	.type	ASN1_PRINTABLESTRING_free, @function
ASN1_PRINTABLESTRING_free:
.LFB113:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.size	ASN1_PRINTABLESTRING_free, .-ASN1_PRINTABLESTRING_free
	.globl	ASN1_T61STRING_it
	.type	ASN1_T61STRING_it, @function
ASN1_T61STRING_it:
.LFB114:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.20(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE114:
	.size	ASN1_T61STRING_it, .-ASN1_T61STRING_it
	.globl	d2i_ASN1_T61STRING
	.type	d2i_ASN1_T61STRING, @function
d2i_ASN1_T61STRING:
.LFB115:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	call	ASN1_T61STRING_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.size	d2i_ASN1_T61STRING, .-d2i_ASN1_T61STRING
	.globl	i2d_ASN1_T61STRING
	.type	i2d_ASN1_T61STRING, @function
i2d_ASN1_T61STRING:
.LFB116:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_T61STRING_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE116:
	.size	i2d_ASN1_T61STRING, .-i2d_ASN1_T61STRING
	.globl	ASN1_T61STRING_new
	.type	ASN1_T61STRING_new, @function
ASN1_T61STRING_new:
.LFB117:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$20, %edi
	call	ASN1_STRING_type_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.size	ASN1_T61STRING_new, .-ASN1_T61STRING_new
	.globl	ASN1_T61STRING_free
	.type	ASN1_T61STRING_free, @function
ASN1_T61STRING_free:
.LFB118:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE118:
	.size	ASN1_T61STRING_free, .-ASN1_T61STRING_free
	.globl	ASN1_IA5STRING_it
	.type	ASN1_IA5STRING_it, @function
ASN1_IA5STRING_it:
.LFB119:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.19(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE119:
	.size	ASN1_IA5STRING_it, .-ASN1_IA5STRING_it
	.globl	d2i_ASN1_IA5STRING
	.type	d2i_ASN1_IA5STRING, @function
d2i_ASN1_IA5STRING:
.LFB120:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	call	ASN1_IA5STRING_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE120:
	.size	d2i_ASN1_IA5STRING, .-d2i_ASN1_IA5STRING
	.globl	i2d_ASN1_IA5STRING
	.type	i2d_ASN1_IA5STRING, @function
i2d_ASN1_IA5STRING:
.LFB121:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_IA5STRING_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE121:
	.size	i2d_ASN1_IA5STRING, .-i2d_ASN1_IA5STRING
	.globl	ASN1_IA5STRING_new
	.type	ASN1_IA5STRING_new, @function
ASN1_IA5STRING_new:
.LFB122:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$22, %edi
	call	ASN1_STRING_type_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE122:
	.size	ASN1_IA5STRING_new, .-ASN1_IA5STRING_new
	.globl	ASN1_IA5STRING_free
	.type	ASN1_IA5STRING_free, @function
ASN1_IA5STRING_free:
.LFB123:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE123:
	.size	ASN1_IA5STRING_free, .-ASN1_IA5STRING_free
	.globl	ASN1_GENERALSTRING_it
	.type	ASN1_GENERALSTRING_it, @function
ASN1_GENERALSTRING_it:
.LFB124:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.18(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE124:
	.size	ASN1_GENERALSTRING_it, .-ASN1_GENERALSTRING_it
	.globl	d2i_ASN1_GENERALSTRING
	.type	d2i_ASN1_GENERALSTRING, @function
d2i_ASN1_GENERALSTRING:
.LFB125:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	call	ASN1_GENERALSTRING_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE125:
	.size	d2i_ASN1_GENERALSTRING, .-d2i_ASN1_GENERALSTRING
	.globl	i2d_ASN1_GENERALSTRING
	.type	i2d_ASN1_GENERALSTRING, @function
i2d_ASN1_GENERALSTRING:
.LFB126:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_GENERALSTRING_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE126:
	.size	i2d_ASN1_GENERALSTRING, .-i2d_ASN1_GENERALSTRING
	.globl	ASN1_GENERALSTRING_new
	.type	ASN1_GENERALSTRING_new, @function
ASN1_GENERALSTRING_new:
.LFB127:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$27, %edi
	call	ASN1_STRING_type_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE127:
	.size	ASN1_GENERALSTRING_new, .-ASN1_GENERALSTRING_new
	.globl	ASN1_GENERALSTRING_free
	.type	ASN1_GENERALSTRING_free, @function
ASN1_GENERALSTRING_free:
.LFB128:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE128:
	.size	ASN1_GENERALSTRING_free, .-ASN1_GENERALSTRING_free
	.globl	ASN1_UTCTIME_it
	.type	ASN1_UTCTIME_it, @function
ASN1_UTCTIME_it:
.LFB129:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.17(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE129:
	.size	ASN1_UTCTIME_it, .-ASN1_UTCTIME_it
	.globl	d2i_ASN1_UTCTIME
	.type	d2i_ASN1_UTCTIME, @function
d2i_ASN1_UTCTIME:
.LFB130:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	call	ASN1_UTCTIME_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE130:
	.size	d2i_ASN1_UTCTIME, .-d2i_ASN1_UTCTIME
	.globl	i2d_ASN1_UTCTIME
	.type	i2d_ASN1_UTCTIME, @function
i2d_ASN1_UTCTIME:
.LFB131:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_UTCTIME_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE131:
	.size	i2d_ASN1_UTCTIME, .-i2d_ASN1_UTCTIME
	.globl	ASN1_UTCTIME_new
	.type	ASN1_UTCTIME_new, @function
ASN1_UTCTIME_new:
.LFB132:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$23, %edi
	call	ASN1_STRING_type_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE132:
	.size	ASN1_UTCTIME_new, .-ASN1_UTCTIME_new
	.globl	ASN1_UTCTIME_free
	.type	ASN1_UTCTIME_free, @function
ASN1_UTCTIME_free:
.LFB133:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE133:
	.size	ASN1_UTCTIME_free, .-ASN1_UTCTIME_free
	.globl	ASN1_GENERALIZEDTIME_it
	.type	ASN1_GENERALIZEDTIME_it, @function
ASN1_GENERALIZEDTIME_it:
.LFB134:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.16(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE134:
	.size	ASN1_GENERALIZEDTIME_it, .-ASN1_GENERALIZEDTIME_it
	.globl	d2i_ASN1_GENERALIZEDTIME
	.type	d2i_ASN1_GENERALIZEDTIME, @function
d2i_ASN1_GENERALIZEDTIME:
.LFB135:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	call	ASN1_GENERALIZEDTIME_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE135:
	.size	d2i_ASN1_GENERALIZEDTIME, .-d2i_ASN1_GENERALIZEDTIME
	.globl	i2d_ASN1_GENERALIZEDTIME
	.type	i2d_ASN1_GENERALIZEDTIME, @function
i2d_ASN1_GENERALIZEDTIME:
.LFB136:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_GENERALIZEDTIME_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE136:
	.size	i2d_ASN1_GENERALIZEDTIME, .-i2d_ASN1_GENERALIZEDTIME
	.globl	ASN1_GENERALIZEDTIME_new
	.type	ASN1_GENERALIZEDTIME_new, @function
ASN1_GENERALIZEDTIME_new:
.LFB137:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$24, %edi
	call	ASN1_STRING_type_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE137:
	.size	ASN1_GENERALIZEDTIME_new, .-ASN1_GENERALIZEDTIME_new
	.globl	ASN1_GENERALIZEDTIME_free
	.type	ASN1_GENERALIZEDTIME_free, @function
ASN1_GENERALIZEDTIME_free:
.LFB138:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE138:
	.size	ASN1_GENERALIZEDTIME_free, .-ASN1_GENERALIZEDTIME_free
	.globl	ASN1_VISIBLESTRING_it
	.type	ASN1_VISIBLESTRING_it, @function
ASN1_VISIBLESTRING_it:
.LFB139:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.15(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE139:
	.size	ASN1_VISIBLESTRING_it, .-ASN1_VISIBLESTRING_it
	.globl	d2i_ASN1_VISIBLESTRING
	.type	d2i_ASN1_VISIBLESTRING, @function
d2i_ASN1_VISIBLESTRING:
.LFB140:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	call	ASN1_VISIBLESTRING_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE140:
	.size	d2i_ASN1_VISIBLESTRING, .-d2i_ASN1_VISIBLESTRING
	.globl	i2d_ASN1_VISIBLESTRING
	.type	i2d_ASN1_VISIBLESTRING, @function
i2d_ASN1_VISIBLESTRING:
.LFB141:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_VISIBLESTRING_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE141:
	.size	i2d_ASN1_VISIBLESTRING, .-i2d_ASN1_VISIBLESTRING
	.globl	ASN1_VISIBLESTRING_new
	.type	ASN1_VISIBLESTRING_new, @function
ASN1_VISIBLESTRING_new:
.LFB142:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$26, %edi
	call	ASN1_STRING_type_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE142:
	.size	ASN1_VISIBLESTRING_new, .-ASN1_VISIBLESTRING_new
	.globl	ASN1_VISIBLESTRING_free
	.type	ASN1_VISIBLESTRING_free, @function
ASN1_VISIBLESTRING_free:
.LFB143:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE143:
	.size	ASN1_VISIBLESTRING_free, .-ASN1_VISIBLESTRING_free
	.globl	ASN1_UNIVERSALSTRING_it
	.type	ASN1_UNIVERSALSTRING_it, @function
ASN1_UNIVERSALSTRING_it:
.LFB144:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.14(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE144:
	.size	ASN1_UNIVERSALSTRING_it, .-ASN1_UNIVERSALSTRING_it
	.globl	d2i_ASN1_UNIVERSALSTRING
	.type	d2i_ASN1_UNIVERSALSTRING, @function
d2i_ASN1_UNIVERSALSTRING:
.LFB145:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	call	ASN1_UNIVERSALSTRING_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE145:
	.size	d2i_ASN1_UNIVERSALSTRING, .-d2i_ASN1_UNIVERSALSTRING
	.globl	i2d_ASN1_UNIVERSALSTRING
	.type	i2d_ASN1_UNIVERSALSTRING, @function
i2d_ASN1_UNIVERSALSTRING:
.LFB146:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_UNIVERSALSTRING_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE146:
	.size	i2d_ASN1_UNIVERSALSTRING, .-i2d_ASN1_UNIVERSALSTRING
	.globl	ASN1_UNIVERSALSTRING_new
	.type	ASN1_UNIVERSALSTRING_new, @function
ASN1_UNIVERSALSTRING_new:
.LFB147:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$28, %edi
	call	ASN1_STRING_type_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE147:
	.size	ASN1_UNIVERSALSTRING_new, .-ASN1_UNIVERSALSTRING_new
	.globl	ASN1_UNIVERSALSTRING_free
	.type	ASN1_UNIVERSALSTRING_free, @function
ASN1_UNIVERSALSTRING_free:
.LFB148:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE148:
	.size	ASN1_UNIVERSALSTRING_free, .-ASN1_UNIVERSALSTRING_free
	.globl	ASN1_BMPSTRING_it
	.type	ASN1_BMPSTRING_it, @function
ASN1_BMPSTRING_it:
.LFB149:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.13(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE149:
	.size	ASN1_BMPSTRING_it, .-ASN1_BMPSTRING_it
	.globl	d2i_ASN1_BMPSTRING
	.type	d2i_ASN1_BMPSTRING, @function
d2i_ASN1_BMPSTRING:
.LFB150:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	call	ASN1_BMPSTRING_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE150:
	.size	d2i_ASN1_BMPSTRING, .-d2i_ASN1_BMPSTRING
	.globl	i2d_ASN1_BMPSTRING
	.type	i2d_ASN1_BMPSTRING, @function
i2d_ASN1_BMPSTRING:
.LFB151:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_BMPSTRING_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE151:
	.size	i2d_ASN1_BMPSTRING, .-i2d_ASN1_BMPSTRING
	.globl	ASN1_BMPSTRING_new
	.type	ASN1_BMPSTRING_new, @function
ASN1_BMPSTRING_new:
.LFB152:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$30, %edi
	call	ASN1_STRING_type_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE152:
	.size	ASN1_BMPSTRING_new, .-ASN1_BMPSTRING_new
	.globl	ASN1_BMPSTRING_free
	.type	ASN1_BMPSTRING_free, @function
ASN1_BMPSTRING_free:
.LFB153:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE153:
	.size	ASN1_BMPSTRING_free, .-ASN1_BMPSTRING_free
	.globl	ASN1_NULL_it
	.type	ASN1_NULL_it, @function
ASN1_NULL_it:
.LFB154:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.12(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE154:
	.size	ASN1_NULL_it, .-ASN1_NULL_it
	.globl	d2i_ASN1_NULL
	.type	d2i_ASN1_NULL, @function
d2i_ASN1_NULL:
.LFB155:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	call	ASN1_NULL_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE155:
	.size	d2i_ASN1_NULL, .-d2i_ASN1_NULL
	.globl	i2d_ASN1_NULL
	.type	i2d_ASN1_NULL, @function
i2d_ASN1_NULL:
.LFB156:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_NULL_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE156:
	.size	i2d_ASN1_NULL, .-i2d_ASN1_NULL
	.globl	ASN1_NULL_new
	.type	ASN1_NULL_new, @function
ASN1_NULL_new:
.LFB157:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ASN1_NULL_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE157:
	.size	ASN1_NULL_new, .-ASN1_NULL_new
	.globl	ASN1_NULL_free
	.type	ASN1_NULL_free, @function
ASN1_NULL_free:
.LFB158:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ASN1_NULL_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE158:
	.size	ASN1_NULL_free, .-ASN1_NULL_free
	.globl	ASN1_OBJECT_it
	.type	ASN1_OBJECT_it, @function
ASN1_OBJECT_it:
.LFB159:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.11(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE159:
	.size	ASN1_OBJECT_it, .-ASN1_OBJECT_it
	.globl	ASN1_ANY_it
	.type	ASN1_ANY_it, @function
ASN1_ANY_it:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.10(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	ASN1_ANY_it, .-ASN1_ANY_it
	.globl	ASN1_SEQUENCE_it
	.type	ASN1_SEQUENCE_it, @function
ASN1_SEQUENCE_it:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.9(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	ASN1_SEQUENCE_it, .-ASN1_SEQUENCE_it
	.globl	d2i_ASN1_TYPE
	.type	d2i_ASN1_TYPE, @function
d2i_ASN1_TYPE:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	call	ASN1_ANY_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	d2i_ASN1_TYPE, .-d2i_ASN1_TYPE
	.globl	i2d_ASN1_TYPE
	.type	i2d_ASN1_TYPE, @function
i2d_ASN1_TYPE:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_ANY_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	i2d_ASN1_TYPE, .-i2d_ASN1_TYPE
	.globl	ASN1_TYPE_new
	.type	ASN1_TYPE_new, @function
ASN1_TYPE_new:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ASN1_ANY_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	ASN1_TYPE_new, .-ASN1_TYPE_new
	.globl	ASN1_TYPE_free
	.type	ASN1_TYPE_free, @function
ASN1_TYPE_free:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ASN1_ANY_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	ASN1_TYPE_free, .-ASN1_TYPE_free
	.globl	ASN1_PRINTABLE_it
	.type	ASN1_PRINTABLE_it, @function
ASN1_PRINTABLE_it:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.8(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	ASN1_PRINTABLE_it, .-ASN1_PRINTABLE_it
	.globl	d2i_ASN1_PRINTABLE
	.type	d2i_ASN1_PRINTABLE, @function
d2i_ASN1_PRINTABLE:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	call	ASN1_PRINTABLE_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	d2i_ASN1_PRINTABLE, .-d2i_ASN1_PRINTABLE
	.globl	i2d_ASN1_PRINTABLE
	.type	i2d_ASN1_PRINTABLE, @function
i2d_ASN1_PRINTABLE:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_PRINTABLE_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	i2d_ASN1_PRINTABLE, .-i2d_ASN1_PRINTABLE
	.globl	ASN1_PRINTABLE_new
	.type	ASN1_PRINTABLE_new, @function
ASN1_PRINTABLE_new:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ASN1_PRINTABLE_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	ASN1_PRINTABLE_new, .-ASN1_PRINTABLE_new
	.globl	ASN1_PRINTABLE_free
	.type	ASN1_PRINTABLE_free, @function
ASN1_PRINTABLE_free:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ASN1_PRINTABLE_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	ASN1_PRINTABLE_free, .-ASN1_PRINTABLE_free
	.globl	DISPLAYTEXT_it
	.type	DISPLAYTEXT_it, @function
DISPLAYTEXT_it:
.LFB171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.7(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	DISPLAYTEXT_it, .-DISPLAYTEXT_it
	.globl	d2i_DISPLAYTEXT
	.type	d2i_DISPLAYTEXT, @function
d2i_DISPLAYTEXT:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	call	DISPLAYTEXT_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	d2i_DISPLAYTEXT, .-d2i_DISPLAYTEXT
	.globl	i2d_DISPLAYTEXT
	.type	i2d_DISPLAYTEXT, @function
i2d_DISPLAYTEXT:
.LFB173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	DISPLAYTEXT_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	i2d_DISPLAYTEXT, .-i2d_DISPLAYTEXT
	.globl	DISPLAYTEXT_new
	.type	DISPLAYTEXT_new, @function
DISPLAYTEXT_new:
.LFB174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	DISPLAYTEXT_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	DISPLAYTEXT_new, .-DISPLAYTEXT_new
	.globl	DISPLAYTEXT_free
	.type	DISPLAYTEXT_free, @function
DISPLAYTEXT_free:
.LFB175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	DISPLAYTEXT_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	DISPLAYTEXT_free, .-DISPLAYTEXT_free
	.globl	DIRECTORYSTRING_it
	.type	DIRECTORYSTRING_it, @function
DIRECTORYSTRING_it:
.LFB176:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.6(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	DIRECTORYSTRING_it, .-DIRECTORYSTRING_it
	.globl	d2i_DIRECTORYSTRING
	.type	d2i_DIRECTORYSTRING, @function
d2i_DIRECTORYSTRING:
.LFB177:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	call	DIRECTORYSTRING_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	d2i_DIRECTORYSTRING, .-d2i_DIRECTORYSTRING
	.globl	i2d_DIRECTORYSTRING
	.type	i2d_DIRECTORYSTRING, @function
i2d_DIRECTORYSTRING:
.LFB178:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	DIRECTORYSTRING_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE178:
	.size	i2d_DIRECTORYSTRING, .-i2d_DIRECTORYSTRING
	.globl	DIRECTORYSTRING_new
	.type	DIRECTORYSTRING_new, @function
DIRECTORYSTRING_new:
.LFB179:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	DIRECTORYSTRING_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE179:
	.size	DIRECTORYSTRING_new, .-DIRECTORYSTRING_new
	.globl	DIRECTORYSTRING_free
	.type	DIRECTORYSTRING_free, @function
DIRECTORYSTRING_free:
.LFB180:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	DIRECTORYSTRING_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE180:
	.size	DIRECTORYSTRING_free, .-DIRECTORYSTRING_free
	.globl	ASN1_BOOLEAN_it
	.type	ASN1_BOOLEAN_it, @function
ASN1_BOOLEAN_it:
.LFB181:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.5(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE181:
	.size	ASN1_BOOLEAN_it, .-ASN1_BOOLEAN_it
	.globl	ASN1_TBOOLEAN_it
	.type	ASN1_TBOOLEAN_it, @function
ASN1_TBOOLEAN_it:
.LFB182:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.4(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE182:
	.size	ASN1_TBOOLEAN_it, .-ASN1_TBOOLEAN_it
	.globl	ASN1_FBOOLEAN_it
	.type	ASN1_FBOOLEAN_it, @function
ASN1_FBOOLEAN_it:
.LFB183:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.3(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE183:
	.size	ASN1_FBOOLEAN_it, .-ASN1_FBOOLEAN_it
	.globl	ASN1_OCTET_STRING_NDEF_it
	.type	ASN1_OCTET_STRING_NDEF_it, @function
ASN1_OCTET_STRING_NDEF_it:
.LFB184:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.2(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE184:
	.size	ASN1_OCTET_STRING_NDEF_it, .-ASN1_OCTET_STRING_NDEF_it
	.section	.rodata
.LC0:
	.string	"ASN1_SEQUENCE_ANY"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ASN1_SEQUENCE_ANY_item_tt, @object
	.size	ASN1_SEQUENCE_ANY_item_tt, 40
ASN1_SEQUENCE_ANY_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_ANY_it
	.text
	.globl	ASN1_SEQUENCE_ANY_it
	.type	ASN1_SEQUENCE_ANY_it, @function
ASN1_SEQUENCE_ANY_it:
.LFB185:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE185:
	.size	ASN1_SEQUENCE_ANY_it, .-ASN1_SEQUENCE_ANY_it
	.section	.rodata
.LC1:
	.string	"ASN1_SET_ANY"
	.section	.data.rel.ro
	.align 32
	.type	ASN1_SET_ANY_item_tt, @object
	.size	ASN1_SET_ANY_item_tt, 40
ASN1_SET_ANY_item_tt:
	.quad	2
	.quad	0
	.quad	0
	.quad	.LC1
	.quad	ASN1_ANY_it
	.text
	.globl	ASN1_SET_ANY_it
	.type	ASN1_SET_ANY_it, @function
ASN1_SET_ANY_it:
.LFB186:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE186:
	.size	ASN1_SET_ANY_it, .-ASN1_SET_ANY_it
	.globl	d2i_ASN1_SEQUENCE_ANY
	.type	d2i_ASN1_SEQUENCE_ANY, @function
d2i_ASN1_SEQUENCE_ANY:
.LFB187:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	call	ASN1_SEQUENCE_ANY_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE187:
	.size	d2i_ASN1_SEQUENCE_ANY, .-d2i_ASN1_SEQUENCE_ANY
	.globl	i2d_ASN1_SEQUENCE_ANY
	.type	i2d_ASN1_SEQUENCE_ANY, @function
i2d_ASN1_SEQUENCE_ANY:
.LFB188:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_SEQUENCE_ANY_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE188:
	.size	i2d_ASN1_SEQUENCE_ANY, .-i2d_ASN1_SEQUENCE_ANY
	.globl	d2i_ASN1_SET_ANY
	.type	d2i_ASN1_SET_ANY, @function
d2i_ASN1_SET_ANY:
.LFB189:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	call	ASN1_SET_ANY_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE189:
	.size	d2i_ASN1_SET_ANY, .-d2i_ASN1_SET_ANY
	.globl	i2d_ASN1_SET_ANY
	.type	i2d_ASN1_SET_ANY, @function
i2d_ASN1_SET_ANY:
.LFB190:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_SET_ANY_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE190:
	.size	i2d_ASN1_SET_ANY, .-i2d_ASN1_SET_ANY
	.section	.rodata
.LC2:
	.string	"ASN1_OCTET_STRING"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.26, @object
	.size	local_it.26, 56
local_it.26:
	.byte	0
	.zero	7
	.quad	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.section	.rodata
.LC3:
	.string	"ASN1_INTEGER"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.25, @object
	.size	local_it.25, 56
local_it.25:
	.byte	0
	.zero	7
	.quad	2
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC3
	.section	.rodata
.LC4:
	.string	"ASN1_ENUMERATED"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.24, @object
	.size	local_it.24, 56
local_it.24:
	.byte	0
	.zero	7
	.quad	10
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC4
	.section	.rodata
.LC5:
	.string	"ASN1_BIT_STRING"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.23, @object
	.size	local_it.23, 56
local_it.23:
	.byte	0
	.zero	7
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC5
	.section	.rodata
.LC6:
	.string	"ASN1_UTF8STRING"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.22, @object
	.size	local_it.22, 56
local_it.22:
	.byte	0
	.zero	7
	.quad	12
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC6
	.section	.rodata
.LC7:
	.string	"ASN1_PRINTABLESTRING"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.21, @object
	.size	local_it.21, 56
local_it.21:
	.byte	0
	.zero	7
	.quad	19
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC7
	.section	.rodata
.LC8:
	.string	"ASN1_T61STRING"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.20, @object
	.size	local_it.20, 56
local_it.20:
	.byte	0
	.zero	7
	.quad	20
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC8
	.section	.rodata
.LC9:
	.string	"ASN1_IA5STRING"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.19, @object
	.size	local_it.19, 56
local_it.19:
	.byte	0
	.zero	7
	.quad	22
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC9
	.section	.rodata
.LC10:
	.string	"ASN1_GENERALSTRING"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.18, @object
	.size	local_it.18, 56
local_it.18:
	.byte	0
	.zero	7
	.quad	27
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC10
	.section	.rodata
.LC11:
	.string	"ASN1_UTCTIME"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.17, @object
	.size	local_it.17, 56
local_it.17:
	.byte	0
	.zero	7
	.quad	23
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC11
	.section	.rodata
.LC12:
	.string	"ASN1_GENERALIZEDTIME"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.16, @object
	.size	local_it.16, 56
local_it.16:
	.byte	0
	.zero	7
	.quad	24
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC12
	.section	.rodata
.LC13:
	.string	"ASN1_VISIBLESTRING"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.15, @object
	.size	local_it.15, 56
local_it.15:
	.byte	0
	.zero	7
	.quad	26
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC13
	.section	.rodata
.LC14:
	.string	"ASN1_UNIVERSALSTRING"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.14, @object
	.size	local_it.14, 56
local_it.14:
	.byte	0
	.zero	7
	.quad	28
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC14
	.section	.rodata
.LC15:
	.string	"ASN1_BMPSTRING"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.13, @object
	.size	local_it.13, 56
local_it.13:
	.byte	0
	.zero	7
	.quad	30
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC15
	.section	.rodata
.LC16:
	.string	"ASN1_NULL"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.12, @object
	.size	local_it.12, 56
local_it.12:
	.byte	0
	.zero	7
	.quad	5
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC16
	.section	.rodata
.LC17:
	.string	"ASN1_OBJECT"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.11, @object
	.size	local_it.11, 56
local_it.11:
	.byte	0
	.zero	7
	.quad	6
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC17
	.section	.rodata
.LC18:
	.string	"ASN1_ANY"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.10, @object
	.size	local_it.10, 56
local_it.10:
	.byte	0
	.zero	7
	.quad	-4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC18
	.section	.rodata
.LC19:
	.string	"ASN1_SEQUENCE"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.9, @object
	.size	local_it.9, 56
local_it.9:
	.byte	0
	.zero	7
	.quad	16
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC19
	.section	.rodata
.LC20:
	.string	"ASN1_PRINTABLE"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.8, @object
	.size	local_it.8, 56
local_it.8:
	.byte	5
	.zero	7
	.quad	81175
	.quad	0
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC20
	.section	.rodata
.LC21:
	.string	"DISPLAYTEXT"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.7, @object
	.size	local_it.7, 56
local_it.7:
	.byte	5
	.zero	7
	.quad	10320
	.quad	0
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC21
	.section	.rodata
.LC22:
	.string	"DIRECTORYSTRING"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.6, @object
	.size	local_it.6, 56
local_it.6:
	.byte	5
	.zero	7
	.quad	10502
	.quad	0
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC22
	.section	.rodata
.LC23:
	.string	"ASN1_BOOLEAN"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.5, @object
	.size	local_it.5, 56
local_it.5:
	.byte	0
	.zero	7
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC23
	.section	.rodata
.LC24:
	.string	"ASN1_TBOOLEAN"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.4, @object
	.size	local_it.4, 56
local_it.4:
	.byte	0
	.zero	7
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	1
	.quad	.LC24
	.section	.rodata
.LC25:
	.string	"ASN1_FBOOLEAN"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.3, @object
	.size	local_it.3, 56
local_it.3:
	.byte	0
	.zero	7
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC25
	.section	.rodata
.LC26:
	.string	"ASN1_OCTET_STRING_NDEF"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	0
	.zero	7
	.quad	4
	.quad	0
	.quad	0
	.quad	0
	.quad	2048
	.quad	.LC26
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	0
	.zero	7
	.quad	-1
	.quad	ASN1_SEQUENCE_ANY_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	0
	.zero	7
	.quad	-1
	.quad	ASN1_SET_ANY_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC1
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

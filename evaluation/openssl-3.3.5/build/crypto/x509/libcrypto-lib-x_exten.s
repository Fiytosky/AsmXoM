	.file	"x_exten.c"
	.text
	.section	.rodata
.LC0:
	.string	"object"
.LC1:
	.string	"critical"
.LC2:
	.string	"value"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	X509_EXTENSION_seq_tt, @object
	.size	X509_EXTENSION_seq_tt, 120
X509_EXTENSION_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_OBJECT_it
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	ASN1_BOOLEAN_it
	.quad	4096
	.quad	0
	.quad	16
	.quad	.LC2
	.quad	ASN1_OCTET_STRING_it
	.text
	.globl	X509_EXTENSION_it
	.type	X509_EXTENSION_it, @function
X509_EXTENSION_it:
.LFB551:
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
.LFE551:
	.size	X509_EXTENSION_it, .-X509_EXTENSION_it
	.section	.rodata
.LC3:
	.string	"Extension"
	.section	.data.rel.ro
	.align 32
	.type	X509_EXTENSIONS_item_tt, @object
	.size	X509_EXTENSIONS_item_tt, 40
X509_EXTENSIONS_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC3
	.quad	X509_EXTENSION_it
	.text
	.globl	X509_EXTENSIONS_it
	.type	X509_EXTENSIONS_it, @function
X509_EXTENSIONS_it:
.LFB552:
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
.LFE552:
	.size	X509_EXTENSIONS_it, .-X509_EXTENSIONS_it
	.globl	d2i_X509_EXTENSION
	.type	d2i_X509_EXTENSION, @function
d2i_X509_EXTENSION:
.LFB553:
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
	call	X509_EXTENSION_it@PLT
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
.LFE553:
	.size	d2i_X509_EXTENSION, .-d2i_X509_EXTENSION
	.globl	i2d_X509_EXTENSION
	.type	i2d_X509_EXTENSION, @function
i2d_X509_EXTENSION:
.LFB554:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	X509_EXTENSION_it@PLT
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
.LFE554:
	.size	i2d_X509_EXTENSION, .-i2d_X509_EXTENSION
	.globl	X509_EXTENSION_new
	.type	X509_EXTENSION_new, @function
X509_EXTENSION_new:
.LFB555:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	X509_EXTENSION_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	X509_EXTENSION_new, .-X509_EXTENSION_new
	.globl	X509_EXTENSION_free
	.type	X509_EXTENSION_free, @function
X509_EXTENSION_free:
.LFB556:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_EXTENSION_it@PLT
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
.LFE556:
	.size	X509_EXTENSION_free, .-X509_EXTENSION_free
	.globl	d2i_X509_EXTENSIONS
	.type	d2i_X509_EXTENSIONS, @function
d2i_X509_EXTENSIONS:
.LFB557:
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
	call	X509_EXTENSIONS_it@PLT
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
.LFE557:
	.size	d2i_X509_EXTENSIONS, .-d2i_X509_EXTENSIONS
	.globl	i2d_X509_EXTENSIONS
	.type	i2d_X509_EXTENSIONS, @function
i2d_X509_EXTENSIONS:
.LFB558:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	X509_EXTENSIONS_it@PLT
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
.LFE558:
	.size	i2d_X509_EXTENSIONS, .-i2d_X509_EXTENSIONS
	.globl	X509_EXTENSION_dup
	.type	X509_EXTENSION_dup, @function
X509_EXTENSION_dup:
.LFB559:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_EXTENSION_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE559:
	.size	X509_EXTENSION_dup, .-X509_EXTENSION_dup
	.section	.rodata
.LC4:
	.string	"X509_EXTENSION"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	X509_EXTENSION_seq_tt
	.quad	3
	.quad	0
	.quad	40
	.quad	.LC4
	.section	.rodata
.LC5:
	.string	"X509_EXTENSIONS"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	0
	.zero	7
	.quad	-1
	.quad	X509_EXTENSIONS_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC5
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

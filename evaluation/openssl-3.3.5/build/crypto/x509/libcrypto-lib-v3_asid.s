	.file	"v3_asid.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	ossl_check_const_CONF_VALUE_sk_type, @function
ossl_check_const_CONF_VALUE_sk_type:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB432:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE432:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_ASIdOrRange_type, @function
ossl_check_ASIdOrRange_type:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	ossl_check_ASIdOrRange_type, .-ossl_check_ASIdOrRange_type
	.type	ossl_check_const_ASIdOrRange_sk_type, @function
ossl_check_const_ASIdOrRange_sk_type:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	ossl_check_const_ASIdOrRange_sk_type, .-ossl_check_const_ASIdOrRange_sk_type
	.type	ossl_check_ASIdOrRange_sk_type, @function
ossl_check_ASIdOrRange_sk_type:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	ossl_check_ASIdOrRange_sk_type, .-ossl_check_ASIdOrRange_sk_type
	.type	ossl_check_ASIdOrRange_compfunc_type, @function
ossl_check_ASIdOrRange_compfunc_type:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	ossl_check_ASIdOrRange_compfunc_type, .-ossl_check_ASIdOrRange_compfunc_type
	.section	.rodata
.LC0:
	.string	"min"
.LC1:
	.string	"max"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ASRange_seq_tt, @object
	.size	ASRange_seq_tt, 80
ASRange_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	ASN1_INTEGER_it
	.text
	.globl	ASRange_it
	.type	ASRange_it, @function
ASRange_it:
.LFB703:
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
.LFE703:
	.size	ASRange_it, .-ASRange_it
	.section	.rodata
.LC2:
	.string	"u.id"
.LC3:
	.string	"u.range"
	.section	.data.rel.ro
	.align 32
	.type	ASIdOrRange_ch_tt, @object
	.size	ASIdOrRange_ch_tt, 80
ASIdOrRange_ch_tt:
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC2
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC3
	.quad	ASRange_it
	.text
	.globl	ASIdOrRange_it
	.type	ASIdOrRange_it, @function
ASIdOrRange_it:
.LFB704:
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
.LFE704:
	.size	ASIdOrRange_it, .-ASIdOrRange_it
	.section	.rodata
.LC4:
	.string	"u.inherit"
.LC5:
	.string	"u.asIdsOrRanges"
	.section	.data.rel.ro
	.align 32
	.type	ASIdentifierChoice_ch_tt, @object
	.size	ASIdentifierChoice_ch_tt, 80
ASIdentifierChoice_ch_tt:
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC4
	.quad	ASN1_NULL_it
	.quad	4
	.quad	0
	.quad	8
	.quad	.LC5
	.quad	ASIdOrRange_it
	.text
	.globl	ASIdentifierChoice_it
	.type	ASIdentifierChoice_it, @function
ASIdentifierChoice_it:
.LFB705:
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
.LFE705:
	.size	ASIdentifierChoice_it, .-ASIdentifierChoice_it
	.section	.rodata
.LC6:
	.string	"asnum"
.LC7:
	.string	"rdi"
	.section	.data.rel.ro
	.align 32
	.type	ASIdentifiers_seq_tt, @object
	.size	ASIdentifiers_seq_tt, 80
ASIdentifiers_seq_tt:
	.quad	145
	.quad	0
	.quad	0
	.quad	.LC6
	.quad	ASIdentifierChoice_it
	.quad	145
	.quad	1
	.quad	8
	.quad	.LC7
	.quad	ASIdentifierChoice_it
	.text
	.globl	ASIdentifiers_it
	.type	ASIdentifiers_it, @function
ASIdentifiers_it:
.LFB706:
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
.LFE706:
	.size	ASIdentifiers_it, .-ASIdentifiers_it
	.globl	d2i_ASRange
	.type	d2i_ASRange, @function
d2i_ASRange:
.LFB707:
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
	call	ASRange_it@PLT
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
.LFE707:
	.size	d2i_ASRange, .-d2i_ASRange
	.globl	i2d_ASRange
	.type	i2d_ASRange, @function
i2d_ASRange:
.LFB708:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASRange_it@PLT
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
.LFE708:
	.size	i2d_ASRange, .-i2d_ASRange
	.globl	ASRange_new
	.type	ASRange_new, @function
ASRange_new:
.LFB709:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ASRange_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	ASRange_new, .-ASRange_new
	.globl	ASRange_free
	.type	ASRange_free, @function
ASRange_free:
.LFB710:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ASRange_it@PLT
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
.LFE710:
	.size	ASRange_free, .-ASRange_free
	.globl	d2i_ASIdOrRange
	.type	d2i_ASIdOrRange, @function
d2i_ASIdOrRange:
.LFB711:
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
	call	ASIdOrRange_it@PLT
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
.LFE711:
	.size	d2i_ASIdOrRange, .-d2i_ASIdOrRange
	.globl	i2d_ASIdOrRange
	.type	i2d_ASIdOrRange, @function
i2d_ASIdOrRange:
.LFB712:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASIdOrRange_it@PLT
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
.LFE712:
	.size	i2d_ASIdOrRange, .-i2d_ASIdOrRange
	.globl	ASIdOrRange_new
	.type	ASIdOrRange_new, @function
ASIdOrRange_new:
.LFB713:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ASIdOrRange_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE713:
	.size	ASIdOrRange_new, .-ASIdOrRange_new
	.globl	ASIdOrRange_free
	.type	ASIdOrRange_free, @function
ASIdOrRange_free:
.LFB714:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ASIdOrRange_it@PLT
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
.LFE714:
	.size	ASIdOrRange_free, .-ASIdOrRange_free
	.globl	d2i_ASIdentifierChoice
	.type	d2i_ASIdentifierChoice, @function
d2i_ASIdentifierChoice:
.LFB715:
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
	call	ASIdentifierChoice_it@PLT
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
.LFE715:
	.size	d2i_ASIdentifierChoice, .-d2i_ASIdentifierChoice
	.globl	i2d_ASIdentifierChoice
	.type	i2d_ASIdentifierChoice, @function
i2d_ASIdentifierChoice:
.LFB716:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASIdentifierChoice_it@PLT
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
.LFE716:
	.size	i2d_ASIdentifierChoice, .-i2d_ASIdentifierChoice
	.globl	ASIdentifierChoice_new
	.type	ASIdentifierChoice_new, @function
ASIdentifierChoice_new:
.LFB717:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ASIdentifierChoice_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE717:
	.size	ASIdentifierChoice_new, .-ASIdentifierChoice_new
	.globl	ASIdentifierChoice_free
	.type	ASIdentifierChoice_free, @function
ASIdentifierChoice_free:
.LFB718:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ASIdentifierChoice_it@PLT
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
.LFE718:
	.size	ASIdentifierChoice_free, .-ASIdentifierChoice_free
	.globl	d2i_ASIdentifiers
	.type	d2i_ASIdentifiers, @function
d2i_ASIdentifiers:
.LFB719:
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
	call	ASIdentifiers_it@PLT
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
.LFE719:
	.size	d2i_ASIdentifiers, .-d2i_ASIdentifiers
	.globl	i2d_ASIdentifiers
	.type	i2d_ASIdentifiers, @function
i2d_ASIdentifiers:
.LFB720:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASIdentifiers_it@PLT
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
.LFE720:
	.size	i2d_ASIdentifiers, .-i2d_ASIdentifiers
	.globl	ASIdentifiers_new
	.type	ASIdentifiers_new, @function
ASIdentifiers_new:
.LFB721:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ASIdentifiers_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE721:
	.size	ASIdentifiers_new, .-ASIdentifiers_new
	.globl	ASIdentifiers_free
	.type	ASIdentifiers_free, @function
ASIdentifiers_free:
.LFB722:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ASIdentifiers_it@PLT
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
.LFE722:
	.size	ASIdentifiers_free, .-ASIdentifiers_free
	.section	.rodata
.LC8:
	.string	""
.LC9:
	.string	"%*s%s:\n"
.LC10:
	.string	"%*sinherit\n"
.LC11:
	.string	"%*s%s\n"
.LC12:
	.string	"../crypto/x509/v3_asid.c"
.LC13:
	.string	"%*s%s-"
.LC14:
	.string	"%s\n"
	.text
	.type	i2r_ASIdentifierChoice, @function
i2r_ASIdentifierChoice:
.LFB723:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L54
	movl	$1, %eax
	jmp	.L55
.L54:
	movq	-64(%rbp), %rdi
	leaq	.LC8(%rip), %rcx
	movl	-52(%rbp), %edx
	leaq	.LC9(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L56
	cmpl	$1, %eax
	je	.L57
	jmp	.L69
.L56:
	movl	-52(%rbp), %eax
	leal	2(%rax), %edx
	leaq	.LC8(%rip), %rcx
	leaq	.LC10(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L59
.L57:
	movl	$0, -4(%rbp)
	jmp	.L60
.L68:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASIdOrRange_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L61
	cmpl	$1, %eax
	je	.L62
	jmp	.L70
.L61:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	i2s_ASN1_INTEGER@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L64
	movl	$0, %eax
	jmp	.L55
.L64:
	movl	-52(%rbp), %eax
	leal	2(%rax), %edx
	movq	-24(%rbp), %rdi
	leaq	.LC8(%rip), %rcx
	leaq	.LC11(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC12(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$84, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L65
.L62:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	i2s_ASN1_INTEGER@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L66
	movl	$0, %eax
	jmp	.L55
.L66:
	movl	-52(%rbp), %eax
	leal	2(%rax), %edx
	movq	-24(%rbp), %rdi
	leaq	.LC8(%rip), %rcx
	leaq	.LC13(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC12(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$90, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	i2s_ASN1_INTEGER@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L67
	movl	$0, %eax
	jmp	.L55
.L67:
	movq	-24(%rbp), %rdx
	leaq	.LC14(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC12(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$94, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L65
.L70:
	movl	$0, %eax
	jmp	.L55
.L65:
	addl	$1, -4(%rbp)
.L60:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASIdOrRange_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L68
	jmp	.L59
.L69:
	movl	$0, %eax
	jmp	.L55
.L59:
	movl	$1, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE723:
	.size	i2r_ASIdentifierChoice, .-i2r_ASIdentifierChoice
	.section	.rodata
.LC15:
	.string	"Autonomous System Numbers"
.LC16:
	.string	"Routing Domain Identifiers"
	.text
	.type	i2r_ASIdentifiers, @function
i2r_ASIdentifiers:
.LFB724:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC15(%rip), %rcx
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	i2r_ASIdentifierChoice
	testl	%eax, %eax
	je	.L72
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	leaq	.LC16(%rip), %rcx
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	i2r_ASIdentifierChoice
	testl	%eax, %eax
	je	.L72
	movl	$1, %eax
	jmp	.L74
.L72:
	movl	$0, %eax
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE724:
	.size	i2r_ASIdentifiers, .-i2r_ASIdentifiers
	.type	ASIdOrRange_cmp, @function
ASIdOrRange_cmp:
.LFB725:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L76
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L76
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	jmp	.L77
.L76:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L78
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L78
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L79
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	jmp	.L77
.L79:
	movl	-20(%rbp), %eax
	jmp	.L77
.L78:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L81
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	jmp	.L77
.L81:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE725:
	.size	ASIdOrRange_cmp, .-ASIdOrRange_cmp
	.globl	X509v3_asid_add_inherit
	.type	X509v3_asid_add_inherit, @function
X509v3_asid_add_inherit:
.LFB726:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L83
	movl	$0, %eax
	jmp	.L84
.L83:
	cmpl	$0, -44(%rbp)
	je	.L85
	cmpl	$1, -44(%rbp)
	je	.L86
	jmp	.L92
.L85:
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L88
.L86:
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.L88
.L92:
	movl	$0, %eax
	jmp	.L84
.L88:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L89
	call	ASIdentifierChoice_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L90
	movl	$0, %eax
	jmp	.L84
.L90:
	movq	-24(%rbp), %rax
	movq	(%rax), %rbx
	call	ASN1_NULL_new@PLT
	movq	%rax, 8(%rbx)
	movq	8(%rbx), %rax
	testq	%rax, %rax
	jne	.L91
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASIdentifierChoice_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L84
.L91:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, (%rax)
.L89:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L84:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE726:
	.size	X509v3_asid_add_inherit, .-X509v3_asid_add_inherit
	.globl	X509v3_asid_add_id_or_range
	.type	X509v3_asid_add_id_or_range, @function
X509v3_asid_add_id_or_range:
.LFB727:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L94
	movl	$0, %eax
	jmp	.L95
.L94:
	cmpl	$0, -44(%rbp)
	je	.L96
	cmpl	$1, -44(%rbp)
	je	.L97
	jmp	.L111
.L96:
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L99
.L97:
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.L99
.L111:
	movl	$0, %eax
	jmp	.L95
.L99:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L100
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L100
	movl	$0, %eax
	jmp	.L95
.L100:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L101
	call	ASIdentifierChoice_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L102
	movl	$0, %eax
	jmp	.L95
.L102:
	leaq	ASIdOrRange_cmp(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ASIdOrRange_compfunc_type
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rbx
	movq	%rdx, %rdi
	call	OPENSSL_sk_new@PLT
	movq	%rax, 8(%rbx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L103
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASIdentifierChoice_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L95
.L103:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, (%rax)
.L101:
	call	ASIdOrRange_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L104
	movl	$0, %eax
	jmp	.L95
.L104:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_ASIdOrRange_sk_type
	movl	$1, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_reserve@PLT
	testl	%eax, %eax
	je	.L112
	cmpq	$0, -64(%rbp)
	jne	.L107
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L108
.L107:
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	call	ASRange_new@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L113
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L108:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASIdOrRange_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_ASIdOrRange_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L114
	movl	$1, %eax
	jmp	.L95
.L112:
	nop
	jmp	.L106
.L113:
	nop
	jmp	.L106
.L114:
	nop
.L106:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASIdOrRange_free@PLT
	movl	$0, %eax
.L95:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE727:
	.size	X509v3_asid_add_id_or_range, .-X509v3_asid_add_id_or_range
	.type	extract_min_max, @function
extract_min_max:
.LFB728:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L116
	movl	$0, %eax
	jmp	.L117
.L116:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L118
	cmpl	$1, %eax
	je	.L119
	jmp	.L121
.L118:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L117
.L119:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L117
.L121:
	movl	$0, %eax
.L117:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	extract_min_max, .-extract_min_max
	.type	ASIdentifierChoice_is_canonical, @function
ASIdentifierChoice_is_canonical:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -40(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L123
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L124
.L123:
	movl	$1, %eax
	jmp	.L125
.L124:
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L126
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASIdOrRange_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L127
.L126:
	movl	$0, %eax
	jmp	.L125
.L127:
	movl	$0, -36(%rbp)
	jmp	.L128
.L140:
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASIdOrRange_sk_type
	movq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movl	-36(%rbp), %eax
	leal	1(%rax), %ebx
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASIdOrRange_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -64(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	extract_min_max
	testl	%eax, %eax
	je	.L143
	leaq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	extract_min_max
	testl	%eax, %eax
	je	.L143
	movq	-96(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	testl	%eax, %eax
	jns	.L144
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	testl	%eax, %eax
	jg	.L144
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	testl	%eax, %eax
	jg	.L144
	cmpq	$0, -32(%rbp)
	jne	.L134
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L135
.L134:
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_to_BN@PLT
	testq	%rax, %rax
	je	.L135
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	jne	.L136
.L135:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$313, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L139
.L136:
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_to_ASN1_INTEGER@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L137
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$320, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L139
.L137:
	movq	-96(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	testl	%eax, %eax
	jns	.L145
	addl	$1, -36(%rbp)
.L128:
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASIdOrRange_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	subl	$1, %eax
	cmpl	%eax, -36(%rbp)
	jl	.L140
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASIdOrRange_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	subl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASIdOrRange_sk_type
	movq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L141
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L141
	leaq	-120(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	extract_min_max
	testl	%eax, %eax
	je	.L146
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	testl	%eax, %eax
	jg	.L146
.L141:
	movl	$1, -40(%rbp)
	jmp	.L139
.L143:
	nop
	jmp	.L139
.L144:
	nop
	jmp	.L139
.L145:
	nop
	jmp	.L139
.L146:
	nop
.L139:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-40(%rbp), %eax
.L125:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	ASIdentifierChoice_is_canonical, .-ASIdentifierChoice_is_canonical
	.globl	X509v3_asid_is_canonical
	.type	X509v3_asid_is_canonical, @function
X509v3_asid_is_canonical:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L148
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASIdentifierChoice_is_canonical
	testl	%eax, %eax
	je	.L149
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASIdentifierChoice_is_canonical
	testl	%eax, %eax
	je	.L149
.L148:
	movl	$1, %eax
	jmp	.L151
.L149:
	movl	$0, %eax
.L151:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	X509v3_asid_is_canonical, .-X509v3_asid_is_canonical
	.type	ASIdentifierChoice_canonize, @function
ASIdentifierChoice_canonize:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -40(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L153
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L154
.L153:
	movl	$1, %eax
	jmp	.L155
.L154:
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L156
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASIdOrRange_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L157
.L156:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$384, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L155
.L157:
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_ASIdOrRange_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_sort@PLT
	movl	$0, -36(%rbp)
	jmp	.L158
.L181:
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASIdOrRange_sk_type
	movq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movl	-36(%rbp), %eax
	leal	1(%rax), %ebx
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASIdOrRange_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -64(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	leaq	-96(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	extract_min_max
	testl	%eax, %eax
	je	.L185
	leaq	-112(%rbp), %rdx
	leaq	-104(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	extract_min_max
	testl	%eax, %eax
	je	.L185
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L186
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	testl	%eax, %eax
	jg	.L187
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	testl	%eax, %eax
	jg	.L187
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	testl	%eax, %eax
	js	.L165
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$424, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L180
.L165:
	cmpq	$0, -32(%rbp)
	jne	.L166
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L167
.L166:
	movq	-96(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_to_BN@PLT
	testq	%rax, %rax
	je	.L167
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	jne	.L168
.L167:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$434, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L180
.L168:
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_to_ASN1_INTEGER@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L169
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$441, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L180
.L169:
	movq	-104(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	testl	%eax, %eax
	jne	.L179
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L171
	cmpl	$1, %eax
	je	.L172
	jmp	.L173
.L171:
	leaq	.LC12(%rip), %rax
	movl	$452, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L188
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-112(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
	movq	-56(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L173
.L172:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
.L173:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L175
	cmpl	$1, %eax
	je	.L176
	jmp	.L177
.L175:
	movq	-64(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L177
.L176:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 8(%rax)
	nop
.L177:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ASIdOrRange_free@PLT
	movl	-36(%rbp), %eax
	leal	1(%rax), %ebx
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_ASIdOrRange_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_delete@PLT
	subl	$1, -36(%rbp)
	nop
.L179:
	addl	$1, -36(%rbp)
.L158:
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASIdOrRange_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	subl	$1, %eax
	cmpl	%eax, -36(%rbp)
	jl	.L181
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASIdOrRange_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	subl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASIdOrRange_sk_type
	movq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L182
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L182
	leaq	-128(%rbp), %rdx
	leaq	-120(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	extract_min_max
	testl	%eax, %eax
	je	.L189
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	testl	%eax, %eax
	jg	.L189
.L182:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	ASIdentifierChoice_is_canonical
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L190
	movl	$1, -40(%rbp)
	jmp	.L180
.L185:
	nop
	jmp	.L180
.L186:
	nop
	jmp	.L180
.L187:
	nop
	jmp	.L180
.L188:
	nop
	jmp	.L180
.L189:
	nop
	jmp	.L180
.L190:
	nop
.L180:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-40(%rbp), %eax
.L155:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	ASIdentifierChoice_canonize, .-ASIdentifierChoice_canonize
	.globl	X509v3_asid_canonize
	.type	X509v3_asid_canonize, @function
X509v3_asid_canonize:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L192
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASIdentifierChoice_canonize
	testl	%eax, %eax
	je	.L193
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASIdentifierChoice_canonize
	testl	%eax, %eax
	je	.L193
.L192:
	movl	$1, %eax
	jmp	.L195
.L193:
	movl	$0, %eax
.L195:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	X509v3_asid_canonize, .-X509v3_asid_canonize
	.section	.rodata
.LC17:
	.string	"AS"
.LC18:
	.string	"RDI"
.LC19:
	.string	", value="
.LC20:
	.string	"name="
.LC21:
	.string	"inherit"
.LC22:
	.string	"0123456789"
.LC23:
	.string	" \t"
	.text
	.type	v2i_ASIdentifiers, @function
v2i_ASIdentifiers:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -32(%rbp)
	call	ASIdentifiers_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L197
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$527, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524322, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L219
.L197:
	movl	$0, -12(%rbp)
	jmp	.L199
.L217:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC17(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_v3_name_cmp@PLT
	testl	%eax, %eax
	jne	.L200
	movl	$0, -24(%rbp)
	jmp	.L201
.L200:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC18(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_v3_name_cmp@PLT
	testl	%eax, %eax
	jne	.L202
	movl	$1, -24(%rbp)
	jmp	.L201
.L202:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$543, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-40(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC20(%rip), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	jmp	.L203
.L201:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L204
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$549, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L203
.L204:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC21(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L205
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509v3_asid_add_inherit@PLT
	testl	%eax, %eax
	jne	.L220
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$559, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$165, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-40(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC20(%rip), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	jmp	.L203
.L205:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC22(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L208
	movl	$0, -20(%rbp)
	jmp	.L209
.L208:
	movl	$1, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	.LC23(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	movl	%eax, %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L210
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$574, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$162, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-40(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC20(%rip), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	jmp	.L203
.L210:
	addl	$1, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	.LC23(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	.LC22(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-48(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L209
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$582, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$163, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-40(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC20(%rip), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	jmp	.L203
.L209:
	cmpl	$0, -20(%rbp)
	jne	.L211
	leaq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_get_value_int@PLT
	testl	%eax, %eax
	jne	.L212
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$593, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524322, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L203
.L211:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC12(%rip), %rcx
	movl	$597, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L221
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	s2i_ASN1_INTEGER@PLT
	movq	%rax, -64(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	s2i_ASN1_INTEGER@PLT
	movq	%rax, -8(%rbp)
	leaq	.LC12(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$603, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.L214
	cmpq	$0, -8(%rbp)
	jne	.L215
.L214:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$605, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524322, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L203
.L215:
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	testl	%eax, %eax
	jle	.L212
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$609, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L203
.L212:
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movl	-24(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509v3_asid_add_id_or_range@PLT
	testl	%eax, %eax
	jne	.L216
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$614, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524322, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L203
.L216:
	movq	$0, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L207
.L220:
	nop
.L207:
	addl	$1, -12(%rbp)
.L199:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -12(%rbp)
	jl	.L217
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509v3_asid_canonize@PLT
	testl	%eax, %eax
	je	.L222
	movq	-32(%rbp), %rax
	jmp	.L219
.L221:
	nop
	jmp	.L203
.L222:
	nop
.L203:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASIdentifiers_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movl	$0, %eax
.L219:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	v2i_ASIdentifiers, .-v2i_ASIdentifiers
	.globl	ossl_v3_asid
	.section	.data.rel.ro
	.align 32
	.type	ossl_v3_asid, @object
	.size	ossl_v3_asid, 104
ossl_v3_asid:
	.long	291
	.long	0
	.quad	ASIdentifiers_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	v2i_ASIdentifiers
	.quad	i2r_ASIdentifiers
	.quad	0
	.quad	0
	.text
	.globl	X509v3_asid_inherits
	.type	X509v3_asid_inherits, @function
X509v3_asid_inherits:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L224
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L225
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L226
.L225:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L224
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L224
.L226:
	movl	$1, %eax
	jmp	.L228
.L224:
	movl	$0, %eax
.L228:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	X509v3_asid_inherits, .-X509v3_asid_inherits
	.type	asid_contains, @function
asid_contains:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L230
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L231
.L230:
	movl	$1, %eax
	jmp	.L243
.L231:
	cmpq	$0, -56(%rbp)
	jne	.L233
	movl	$0, %eax
	jmp	.L243
.L233:
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L234
.L242:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASIdOrRange_sk_type
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rcx
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	extract_min_max
	testl	%eax, %eax
	jne	.L235
	movl	$0, %eax
	jmp	.L243
.L235:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASIdOrRange_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L236
	movl	$0, %eax
	jmp	.L243
.L236:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASIdOrRange_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rcx
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	extract_min_max
	testl	%eax, %eax
	jne	.L237
	movl	$0, %eax
	jmp	.L243
.L237:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	testl	%eax, %eax
	js	.L245
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	testl	%eax, %eax
	jle	.L246
	movl	$0, %eax
	jmp	.L243
.L245:
	nop
	addl	$1, -4(%rbp)
	jmp	.L235
.L246:
	nop
	addl	$1, -8(%rbp)
.L234:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASIdOrRange_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -8(%rbp)
	jl	.L242
	movl	$1, %eax
.L243:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	asid_contains, .-asid_contains
	.globl	X509v3_asid_subset
	.type	X509v3_asid_subset, @function
X509v3_asid_subset:
.LFB736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L248
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L249
.L248:
	movl	$1, %eax
	jmp	.L250
.L249:
	cmpq	$0, -32(%rbp)
	jne	.L251
	movl	$0, %eax
	jmp	.L250
.L251:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509v3_asid_inherits@PLT
	testl	%eax, %eax
	jne	.L252
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509v3_asid_inherits@PLT
	testl	%eax, %eax
	je	.L253
.L252:
	movl	$0, %eax
	jmp	.L250
.L253:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L254
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L255
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asid_contains
	testl	%eax, %eax
	je	.L255
.L254:
	movl	$1, %eax
	jmp	.L256
.L255:
	movl	$0, %eax
.L256:
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L257
	movl	$0, %eax
	jmp	.L250
.L257:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L258
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L259
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asid_contains
	testl	%eax, %eax
	je	.L259
.L258:
	movl	$1, %eax
	jmp	.L250
.L259:
	movl	$0, %eax
.L250:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	X509v3_asid_subset, .-X509v3_asid_subset
	.type	asid_validate_path_internal, @function
asid_validate_path_internal:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$1, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L262
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jle	.L262
	movl	$1, %eax
	jmp	.L263
.L262:
	movl	$0, %eax
.L263:
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L264
	cmpq	$0, -56(%rbp)
	jne	.L265
	cmpq	$0, -72(%rbp)
	je	.L266
.L265:
	movl	$1, %eax
	jmp	.L267
.L266:
	movl	$0, %eax
.L267:
	cltq
	testq	%rax, %rax
	je	.L264
	cmpq	$0, -56(%rbp)
	je	.L268
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L269
.L268:
	movl	$1, %eax
	jmp	.L270
.L269:
	movl	$0, %eax
.L270:
	cltq
	testq	%rax, %rax
	jne	.L271
.L264:
	cmpq	$0, -56(%rbp)
	je	.L272
	movq	-56(%rbp), %rax
	movl	$1, 176(%rax)
.L272:
	movl	$0, %eax
	jmp	.L273
.L271:
	cmpq	$0, -72(%rbp)
	je	.L274
	movl	$-1, -20(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L275
.L274:
	movl	$0, -20(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L323
.L275:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509v3_asid_is_canonical@PLT
	testl	%eax, %eax
	jne	.L277
	cmpq	$0, -56(%rbp)
	je	.L278
	movq	-56(%rbp), %rax
	movl	$41, 176(%rax)
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 172(%rax)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 184(%rax)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	movl	%eax, -24(%rbp)
	jmp	.L279
.L278:
	movl	$0, -24(%rbp)
.L279:
	cmpl	$0, -24(%rbp)
	je	.L324
.L277:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L280
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L281
	cmpl	$1, %eax
	je	.L282
	jmp	.L280
.L281:
	movl	$1, -28(%rbp)
	jmp	.L280
.L282:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	nop
.L280:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L283
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L284
	cmpl	$1, %eax
	je	.L285
	jmp	.L283
.L284:
	movl	$1, -32(%rbp)
	jmp	.L283
.L285:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	nop
.L283:
	addl	$1, -20(%rbp)
	jmp	.L286
.L315:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L287
	cmpq	$0, -56(%rbp)
	je	.L288
	movq	-56(%rbp), %rax
	movl	$1, 176(%rax)
.L288:
	movl	$0, %eax
	jmp	.L273
.L287:
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	testq	%rax, %rax
	jne	.L289
	cmpq	$0, -8(%rbp)
	jne	.L290
	cmpq	$0, -16(%rbp)
	je	.L325
.L290:
	cmpq	$0, -56(%rbp)
	je	.L292
	movq	-56(%rbp), %rax
	movl	$46, 176(%rax)
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 172(%rax)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 184(%rax)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	movl	%eax, -24(%rbp)
	jmp	.L293
.L292:
	movl	$0, -24(%rbp)
.L293:
	cmpl	$0, -24(%rbp)
	jne	.L325
	jmp	.L276
.L289:
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, %rdi
	call	X509v3_asid_is_canonical@PLT
	testl	%eax, %eax
	jne	.L295
	cmpq	$0, -56(%rbp)
	je	.L296
	movq	-56(%rbp), %rax
	movl	$41, 176(%rax)
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 172(%rax)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 184(%rax)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	movl	%eax, -24(%rbp)
	jmp	.L297
.L296:
	movl	$0, -24(%rbp)
.L297:
	cmpl	$0, -24(%rbp)
	je	.L326
.L295:
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L298
	cmpq	$0, -8(%rbp)
	je	.L298
	cmpq	$0, -56(%rbp)
	je	.L299
	movq	-56(%rbp), %rax
	movl	$46, 176(%rax)
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 172(%rax)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 184(%rax)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	movl	%eax, -24(%rbp)
	jmp	.L300
.L299:
	movl	$0, -24(%rbp)
.L300:
	cmpl	$0, -24(%rbp)
	je	.L327
	movq	$0, -8(%rbp)
	movl	$0, -28(%rbp)
.L298:
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L302
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L302
	cmpl	$0, -28(%rbp)
	jne	.L303
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asid_contains
	testl	%eax, %eax
	je	.L304
.L303:
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L302
.L304:
	cmpq	$0, -56(%rbp)
	je	.L305
	movq	-56(%rbp), %rax
	movl	$46, 176(%rax)
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 172(%rax)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 184(%rax)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	movl	%eax, -24(%rbp)
	jmp	.L306
.L305:
	movl	$0, -24(%rbp)
.L306:
	cmpl	$0, -24(%rbp)
	je	.L328
.L302:
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L307
	cmpq	$0, -16(%rbp)
	je	.L307
	cmpq	$0, -56(%rbp)
	je	.L308
	movq	-56(%rbp), %rax
	movl	$46, 176(%rax)
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 172(%rax)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 184(%rax)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	movl	%eax, -24(%rbp)
	jmp	.L309
.L308:
	movl	$0, -24(%rbp)
.L309:
	cmpl	$0, -24(%rbp)
	je	.L329
	movq	$0, -16(%rbp)
	movl	$0, -32(%rbp)
.L307:
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L294
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L294
	cmpl	$0, -32(%rbp)
	jne	.L311
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asid_contains
	testl	%eax, %eax
	je	.L312
.L311:
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L294
.L312:
	cmpq	$0, -56(%rbp)
	je	.L313
	movq	-56(%rbp), %rax
	movl	$46, 176(%rax)
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 172(%rax)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 184(%rax)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	movl	%eax, -24(%rbp)
	jmp	.L314
.L313:
	movl	$0, -24(%rbp)
.L314:
	cmpl	$0, -24(%rbp)
	je	.L330
	jmp	.L294
.L325:
	nop
.L294:
	addl	$1, -20(%rbp)
.L286:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L315
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L316
	cmpq	$0, -56(%rbp)
	je	.L317
	movq	-56(%rbp), %rax
	movl	$1, 176(%rax)
.L317:
	movl	$0, %eax
	jmp	.L273
.L316:
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	testq	%rax, %rax
	je	.L331
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L318
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L318
	cmpq	$0, -56(%rbp)
	je	.L319
	movq	-56(%rbp), %rax
	movl	$46, 176(%rax)
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 172(%rax)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 184(%rax)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	movl	%eax, -24(%rbp)
	jmp	.L320
.L319:
	movl	$0, -24(%rbp)
.L320:
	cmpl	$0, -24(%rbp)
	je	.L332
.L318:
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L331
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L331
	cmpq	$0, -56(%rbp)
	je	.L321
	movq	-56(%rbp), %rax
	movl	$46, 176(%rax)
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 172(%rax)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 184(%rax)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	movl	%eax, -24(%rbp)
	jmp	.L322
.L321:
	movl	$0, -24(%rbp)
.L322:
	cmpl	$0, -24(%rbp)
	jmp	.L331
.L323:
	nop
	jmp	.L276
.L324:
	nop
	jmp	.L276
.L326:
	nop
	jmp	.L276
.L327:
	nop
	jmp	.L276
.L328:
	nop
	jmp	.L276
.L329:
	nop
	jmp	.L276
.L330:
	nop
	jmp	.L276
.L331:
	nop
	jmp	.L276
.L332:
	nop
.L276:
	movl	-24(%rbp), %eax
.L273:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	asid_validate_path_internal, .-asid_validate_path_internal
	.globl	X509v3_asid_validate_path
	.type	X509v3_asid_validate_path, @function
X509v3_asid_validate_path:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	je	.L334
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	je	.L334
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L335
.L334:
	movq	-8(%rbp), %rax
	movl	$1, 176(%rax)
	movl	$0, %eax
	jmp	.L336
.L335:
	movq	-8(%rbp), %rax
	movq	152(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	asid_validate_path_internal
.L336:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	X509v3_asid_validate_path, .-X509v3_asid_validate_path
	.globl	X509v3_asid_validate_resource_set
	.type	X509v3_asid_validate_resource_set, @function
X509v3_asid_validate_resource_set:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L338
	movl	$1, %eax
	jmp	.L339
.L338:
	cmpq	$0, -8(%rbp)
	je	.L340
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L341
.L340:
	movl	$0, %eax
	jmp	.L339
.L341:
	cmpl	$0, -20(%rbp)
	jne	.L342
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509v3_asid_inherits@PLT
	testl	%eax, %eax
	je	.L342
	movl	$0, %eax
	jmp	.L339
.L342:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	asid_validate_path_internal
.L339:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	X509v3_asid_validate_resource_set, .-X509v3_asid_validate_resource_set
	.section	.rodata
.LC24:
	.string	"ASRange"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.6, @object
	.size	local_it.6, 56
local_it.6:
	.byte	1
	.zero	7
	.quad	16
	.quad	ASRange_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC24
	.section	.rodata
.LC25:
	.string	"ASIdOrRange"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.5, @object
	.size	local_it.5, 56
local_it.5:
	.byte	2
	.zero	7
	.quad	0
	.quad	ASIdOrRange_ch_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC25
	.section	.rodata
.LC26:
	.string	"ASIdentifierChoice"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.4, @object
	.size	local_it.4, 56
local_it.4:
	.byte	2
	.zero	7
	.quad	0
	.quad	ASIdentifierChoice_ch_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC26
	.section	.rodata
.LC27:
	.string	"ASIdentifiers"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.3, @object
	.size	local_it.3, 56
local_it.3:
	.byte	1
	.zero	7
	.quad	16
	.quad	ASIdentifiers_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC27
	.section	.rodata
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 32
__func__.2:
	.string	"ASIdentifierChoice_is_canonical"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 28
__func__.1:
	.string	"ASIdentifierChoice_canonize"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"v2i_ASIdentifiers"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

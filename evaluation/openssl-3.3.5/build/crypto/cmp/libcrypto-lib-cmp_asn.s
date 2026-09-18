	.file	"cmp_asn.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB150:
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
.LFE150:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB151:
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
.LFE151:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB415:
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
.LFE415:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_X509_copyfunc_type, @function
ossl_check_X509_copyfunc_type:
.LFB418:
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
.LFE418:
	.size	ossl_check_X509_copyfunc_type, .-ossl_check_X509_copyfunc_type
	.type	ossl_check_X509_freefunc_type, @function
ossl_check_X509_freefunc_type:
.LFB419:
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
.LFE419:
	.size	ossl_check_X509_freefunc_type, .-ossl_check_X509_freefunc_type
	.type	ossl_check_OSSL_CMP_ITAV_type, @function
ossl_check_OSSL_CMP_ITAV_type:
.LFB641:
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
.LFE641:
	.size	ossl_check_OSSL_CMP_ITAV_type, .-ossl_check_OSSL_CMP_ITAV_type
	.type	ossl_check_OSSL_CMP_ITAV_sk_type, @function
ossl_check_OSSL_CMP_ITAV_sk_type:
.LFB643:
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
.LFE643:
	.size	ossl_check_OSSL_CMP_ITAV_sk_type, .-ossl_check_OSSL_CMP_ITAV_sk_type
	.section	.rodata
.LC0:
	.string	"status"
.LC1:
	.string	"certId"
.LC2:
	.string	"willBeRevokedAt"
.LC3:
	.string	"badSinceDate"
.LC4:
	.string	"crlDetails"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	OSSL_CMP_REVANNCONTENT_seq_tt, @object
	.size	OSSL_CMP_REVANNCONTENT_seq_tt, 200
OSSL_CMP_REVANNCONTENT_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	OSSL_CRMF_CERTID_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC2
	.quad	ASN1_GENERALIZEDTIME_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC3
	.quad	ASN1_GENERALIZEDTIME_it
	.quad	1
	.quad	0
	.quad	32
	.quad	.LC4
	.quad	X509_EXTENSIONS_it
	.text
	.globl	OSSL_CMP_REVANNCONTENT_it
	.type	OSSL_CMP_REVANNCONTENT_it, @function
OSSL_CMP_REVANNCONTENT_it:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.38(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	OSSL_CMP_REVANNCONTENT_it, .-OSSL_CMP_REVANNCONTENT_it
	.globl	d2i_OSSL_CMP_REVANNCONTENT
	.type	d2i_OSSL_CMP_REVANNCONTENT, @function
d2i_OSSL_CMP_REVANNCONTENT:
.LFB746:
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
	call	OSSL_CMP_REVANNCONTENT_it@PLT
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
.LFE746:
	.size	d2i_OSSL_CMP_REVANNCONTENT, .-d2i_OSSL_CMP_REVANNCONTENT
	.globl	i2d_OSSL_CMP_REVANNCONTENT
	.type	i2d_OSSL_CMP_REVANNCONTENT, @function
i2d_OSSL_CMP_REVANNCONTENT:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CMP_REVANNCONTENT_it@PLT
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
.LFE747:
	.size	i2d_OSSL_CMP_REVANNCONTENT, .-i2d_OSSL_CMP_REVANNCONTENT
	.globl	OSSL_CMP_REVANNCONTENT_new
	.type	OSSL_CMP_REVANNCONTENT_new, @function
OSSL_CMP_REVANNCONTENT_new:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CMP_REVANNCONTENT_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	OSSL_CMP_REVANNCONTENT_new, .-OSSL_CMP_REVANNCONTENT_new
	.globl	OSSL_CMP_REVANNCONTENT_free
	.type	OSSL_CMP_REVANNCONTENT_free, @function
OSSL_CMP_REVANNCONTENT_free:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_REVANNCONTENT_it@PLT
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
.LFE749:
	.size	OSSL_CMP_REVANNCONTENT_free, .-OSSL_CMP_REVANNCONTENT_free
	.section	.rodata
.LC5:
	.string	"owf"
.LC6:
	.string	"witness"
.LC7:
	.string	"challenge"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_CHALLENGE_seq_tt, @object
	.size	OSSL_CMP_CHALLENGE_seq_tt, 120
OSSL_CMP_CHALLENGE_seq_tt:
	.quad	1
	.quad	0
	.quad	0
	.quad	.LC5
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC6
	.quad	ASN1_OCTET_STRING_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC7
	.quad	ASN1_OCTET_STRING_it
	.text
	.globl	OSSL_CMP_CHALLENGE_it
	.type	OSSL_CMP_CHALLENGE_it, @function
OSSL_CMP_CHALLENGE_it:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.37(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	OSSL_CMP_CHALLENGE_it, .-OSSL_CMP_CHALLENGE_it
	.globl	d2i_OSSL_CMP_CHALLENGE
	.type	d2i_OSSL_CMP_CHALLENGE, @function
d2i_OSSL_CMP_CHALLENGE:
.LFB751:
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
	call	OSSL_CMP_CHALLENGE_it@PLT
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
.LFE751:
	.size	d2i_OSSL_CMP_CHALLENGE, .-d2i_OSSL_CMP_CHALLENGE
	.globl	i2d_OSSL_CMP_CHALLENGE
	.type	i2d_OSSL_CMP_CHALLENGE, @function
i2d_OSSL_CMP_CHALLENGE:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CMP_CHALLENGE_it@PLT
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
.LFE752:
	.size	i2d_OSSL_CMP_CHALLENGE, .-i2d_OSSL_CMP_CHALLENGE
	.globl	OSSL_CMP_CHALLENGE_new
	.type	OSSL_CMP_CHALLENGE_new, @function
OSSL_CMP_CHALLENGE_new:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CMP_CHALLENGE_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	OSSL_CMP_CHALLENGE_new, .-OSSL_CMP_CHALLENGE_new
	.globl	OSSL_CMP_CHALLENGE_free
	.type	OSSL_CMP_CHALLENGE_free, @function
OSSL_CMP_CHALLENGE_free:
.LFB754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_CHALLENGE_it@PLT
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
.LFE754:
	.size	OSSL_CMP_CHALLENGE_free, .-OSSL_CMP_CHALLENGE_free
	.section	.rodata
	.align 8
.LC8:
	.string	"OSSL_CMP_POPODECKEYCHALLCONTENT"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_POPODECKEYCHALLCONTENT_item_tt, @object
	.size	OSSL_CMP_POPODECKEYCHALLCONTENT_item_tt, 40
OSSL_CMP_POPODECKEYCHALLCONTENT_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC8
	.quad	OSSL_CMP_CHALLENGE_it
	.text
	.globl	OSSL_CMP_POPODECKEYCHALLCONTENT_it
	.type	OSSL_CMP_POPODECKEYCHALLCONTENT_it, @function
OSSL_CMP_POPODECKEYCHALLCONTENT_it:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.36(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	OSSL_CMP_POPODECKEYCHALLCONTENT_it, .-OSSL_CMP_POPODECKEYCHALLCONTENT_it
	.section	.rodata
	.align 8
.LC9:
	.string	"OSSL_CMP_POPODECKEYRESPCONTENT"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_POPODECKEYRESPCONTENT_item_tt, @object
	.size	OSSL_CMP_POPODECKEYRESPCONTENT_item_tt, 40
OSSL_CMP_POPODECKEYRESPCONTENT_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC9
	.quad	ASN1_INTEGER_it
	.text
	.globl	OSSL_CMP_POPODECKEYRESPCONTENT_it
	.type	OSSL_CMP_POPODECKEYRESPCONTENT_it, @function
OSSL_CMP_POPODECKEYRESPCONTENT_it:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.35(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	OSSL_CMP_POPODECKEYRESPCONTENT_it, .-OSSL_CMP_POPODECKEYRESPCONTENT_it
	.section	.rodata
.LC10:
	.string	"oldWithNew"
.LC11:
	.string	"newWithOld"
.LC12:
	.string	"newWithNew"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_CAKEYUPDANNCONTENT_seq_tt, @object
	.size	OSSL_CMP_CAKEYUPDANNCONTENT_seq_tt, 120
OSSL_CMP_CAKEYUPDANNCONTENT_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC10
	.quad	X509_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC11
	.quad	X509_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC12
	.quad	X509_it
	.text
	.globl	OSSL_CMP_CAKEYUPDANNCONTENT_it
	.type	OSSL_CMP_CAKEYUPDANNCONTENT_it, @function
OSSL_CMP_CAKEYUPDANNCONTENT_it:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.34(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	OSSL_CMP_CAKEYUPDANNCONTENT_it, .-OSSL_CMP_CAKEYUPDANNCONTENT_it
	.globl	d2i_OSSL_CMP_CAKEYUPDANNCONTENT
	.type	d2i_OSSL_CMP_CAKEYUPDANNCONTENT, @function
d2i_OSSL_CMP_CAKEYUPDANNCONTENT:
.LFB758:
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
	call	OSSL_CMP_CAKEYUPDANNCONTENT_it@PLT
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
.LFE758:
	.size	d2i_OSSL_CMP_CAKEYUPDANNCONTENT, .-d2i_OSSL_CMP_CAKEYUPDANNCONTENT
	.globl	i2d_OSSL_CMP_CAKEYUPDANNCONTENT
	.type	i2d_OSSL_CMP_CAKEYUPDANNCONTENT, @function
i2d_OSSL_CMP_CAKEYUPDANNCONTENT:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CMP_CAKEYUPDANNCONTENT_it@PLT
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
.LFE759:
	.size	i2d_OSSL_CMP_CAKEYUPDANNCONTENT, .-i2d_OSSL_CMP_CAKEYUPDANNCONTENT
	.globl	OSSL_CMP_CAKEYUPDANNCONTENT_new
	.type	OSSL_CMP_CAKEYUPDANNCONTENT_new, @function
OSSL_CMP_CAKEYUPDANNCONTENT_new:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CMP_CAKEYUPDANNCONTENT_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	OSSL_CMP_CAKEYUPDANNCONTENT_new, .-OSSL_CMP_CAKEYUPDANNCONTENT_new
	.globl	OSSL_CMP_CAKEYUPDANNCONTENT_free
	.type	OSSL_CMP_CAKEYUPDANNCONTENT_free, @function
OSSL_CMP_CAKEYUPDANNCONTENT_free:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_CAKEYUPDANNCONTENT_it@PLT
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
.LFE761:
	.size	OSSL_CMP_CAKEYUPDANNCONTENT_free, .-OSSL_CMP_CAKEYUPDANNCONTENT_free
	.section	.rodata
.LC13:
	.string	"pKIStatusInfo"
.LC14:
	.string	"errorCode"
.LC15:
	.string	"errorDetails"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_ERRORMSGCONTENT_seq_tt, @object
	.size	OSSL_CMP_ERRORMSGCONTENT_seq_tt, 120
OSSL_CMP_ERRORMSGCONTENT_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	OSSL_CMP_PKISI_it
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC14
	.quad	ASN1_INTEGER_it
	.quad	5
	.quad	0
	.quad	16
	.quad	.LC15
	.quad	ASN1_UTF8STRING_it
	.text
	.globl	OSSL_CMP_ERRORMSGCONTENT_it
	.type	OSSL_CMP_ERRORMSGCONTENT_it, @function
OSSL_CMP_ERRORMSGCONTENT_it:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.33(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	OSSL_CMP_ERRORMSGCONTENT_it, .-OSSL_CMP_ERRORMSGCONTENT_it
	.globl	d2i_OSSL_CMP_ERRORMSGCONTENT
	.type	d2i_OSSL_CMP_ERRORMSGCONTENT, @function
d2i_OSSL_CMP_ERRORMSGCONTENT:
.LFB763:
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
	call	OSSL_CMP_ERRORMSGCONTENT_it@PLT
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
.LFE763:
	.size	d2i_OSSL_CMP_ERRORMSGCONTENT, .-d2i_OSSL_CMP_ERRORMSGCONTENT
	.globl	i2d_OSSL_CMP_ERRORMSGCONTENT
	.type	i2d_OSSL_CMP_ERRORMSGCONTENT, @function
i2d_OSSL_CMP_ERRORMSGCONTENT:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CMP_ERRORMSGCONTENT_it@PLT
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
.LFE764:
	.size	i2d_OSSL_CMP_ERRORMSGCONTENT, .-i2d_OSSL_CMP_ERRORMSGCONTENT
	.globl	OSSL_CMP_ERRORMSGCONTENT_new
	.type	OSSL_CMP_ERRORMSGCONTENT_new, @function
OSSL_CMP_ERRORMSGCONTENT_new:
.LFB765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CMP_ERRORMSGCONTENT_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	OSSL_CMP_ERRORMSGCONTENT_new, .-OSSL_CMP_ERRORMSGCONTENT_new
	.globl	OSSL_CMP_ERRORMSGCONTENT_free
	.type	OSSL_CMP_ERRORMSGCONTENT_free, @function
OSSL_CMP_ERRORMSGCONTENT_free:
.LFB766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_ERRORMSGCONTENT_it@PLT
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
.LFE766:
	.size	OSSL_CMP_ERRORMSGCONTENT_free, .-OSSL_CMP_ERRORMSGCONTENT_free
	.section	.rodata
.LC16:
	.string	"infoValue.other"
	.section	.data.rel.ro
	.align 32
	.type	infotypeandvalue_default_tt, @object
	.size	infotypeandvalue_default_tt, 40
infotypeandvalue_default_tt:
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC16
	.quad	ASN1_ANY_it
	.section	.rodata
.LC17:
	.string	"infoValue.caProtEncCert"
.LC18:
	.string	"infoValue.signKeyPairTypes"
.LC19:
	.string	"infoValue.encKeyPairTypes"
.LC20:
	.string	"infoValue.preferredSymmAlg"
.LC21:
	.string	"infoValue.caKeyUpdateInfo"
.LC22:
	.string	"infoValue.currentCRL"
.LC23:
	.string	"infoValue.unsupportedOIDs"
.LC24:
	.string	"infoValue.keyPairParamReq"
.LC25:
	.string	"infoValue.keyPairParamRep"
.LC26:
	.string	"infoValue.revPassphrase"
.LC27:
	.string	"infoValue.implicitConfirm"
.LC28:
	.string	"infoValue.confirmWaitTime"
.LC29:
	.string	"infoValue.origPKIMessage"
.LC30:
	.string	"infoValue.suppLangTagsValue"
.LC31:
	.string	"infoValue.caCerts"
.LC32:
	.string	"infoValue.rootCaCert"
.LC33:
	.string	"infoValue.rootCaKeyUpdate"
.LC34:
	.string	"infoValue.certProfile"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_ITAV_adbtbl, @object
	.size	OSSL_CMP_ITAV_adbtbl, 864
OSSL_CMP_ITAV_adbtbl:
	.quad	298
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC17
	.quad	X509_it
	.quad	299
	.quad	5
	.quad	0
	.quad	8
	.quad	.LC18
	.quad	X509_ALGOR_it
	.quad	300
	.quad	5
	.quad	0
	.quad	8
	.quad	.LC19
	.quad	X509_ALGOR_it
	.quad	301
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC20
	.quad	X509_ALGOR_it
	.quad	302
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC21
	.quad	OSSL_CMP_CAKEYUPDANNCONTENT_it
	.quad	303
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC22
	.quad	X509_CRL_it
	.quad	304
	.quad	5
	.quad	0
	.quad	8
	.quad	.LC23
	.quad	ASN1_OBJECT_it
	.quad	307
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC24
	.quad	ASN1_OBJECT_it
	.quad	308
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC25
	.quad	X509_ALGOR_it
	.quad	309
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC26
	.quad	OSSL_CRMF_ENCRYPTEDVALUE_it
	.quad	310
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC27
	.quad	ASN1_NULL_it
	.quad	311
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC28
	.quad	ASN1_GENERALIZEDTIME_it
	.quad	312
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC29
	.quad	OSSL_CMP_MSGS_it
	.quad	784
	.quad	5
	.quad	0
	.quad	8
	.quad	.LC30
	.quad	ASN1_UTF8STRING_it
	.quad	1223
	.quad	5
	.quad	0
	.quad	8
	.quad	.LC31
	.quad	X509_it
	.quad	1254
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC32
	.quad	X509_it
	.quad	1224
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC33
	.quad	OSSL_CMP_ROOTCAKEYUPDATE_it
	.quad	1255
	.quad	5
	.quad	0
	.quad	8
	.quad	.LC34
	.quad	ASN1_UTF8STRING_it
	.text
	.type	OSSL_CMP_ITAV_adb, @function
OSSL_CMP_ITAV_adb:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	internal_adb.32(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	OSSL_CMP_ITAV_adb, .-OSSL_CMP_ITAV_adb
	.section	.rodata
.LC35:
	.string	"infoType"
.LC36:
	.string	"OSSL_CMP_ITAV"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_ITAV_seq_tt, @object
	.size	OSSL_CMP_ITAV_seq_tt, 80
OSSL_CMP_ITAV_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC35
	.quad	ASN1_OBJECT_it
	.quad	256
	.quad	-1
	.quad	0
	.quad	.LC36
	.quad	OSSL_CMP_ITAV_adb
	.text
	.globl	OSSL_CMP_ITAV_it
	.type	OSSL_CMP_ITAV_it, @function
OSSL_CMP_ITAV_it:
.LFB768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.31(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	OSSL_CMP_ITAV_it, .-OSSL_CMP_ITAV_it
	.globl	d2i_OSSL_CMP_ITAV
	.type	d2i_OSSL_CMP_ITAV, @function
d2i_OSSL_CMP_ITAV:
.LFB769:
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
	call	OSSL_CMP_ITAV_it@PLT
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
.LFE769:
	.size	d2i_OSSL_CMP_ITAV, .-d2i_OSSL_CMP_ITAV
	.globl	i2d_OSSL_CMP_ITAV
	.type	i2d_OSSL_CMP_ITAV, @function
i2d_OSSL_CMP_ITAV:
.LFB770:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CMP_ITAV_it@PLT
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
.LFE770:
	.size	i2d_OSSL_CMP_ITAV, .-i2d_OSSL_CMP_ITAV
	.globl	OSSL_CMP_ITAV_new
	.type	OSSL_CMP_ITAV_new, @function
OSSL_CMP_ITAV_new:
.LFB771:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CMP_ITAV_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	OSSL_CMP_ITAV_new, .-OSSL_CMP_ITAV_new
	.globl	OSSL_CMP_ITAV_free
	.type	OSSL_CMP_ITAV_free, @function
OSSL_CMP_ITAV_free:
.LFB772:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_ITAV_it@PLT
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
.LFE772:
	.size	OSSL_CMP_ITAV_free, .-OSSL_CMP_ITAV_free
	.globl	OSSL_CMP_ITAV_dup
	.type	OSSL_CMP_ITAV_dup, @function
OSSL_CMP_ITAV_dup:
.LFB773:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_ITAV_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	OSSL_CMP_ITAV_dup, .-OSSL_CMP_ITAV_dup
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_ROOTCAKEYUPDATE_seq_tt, @object
	.size	OSSL_CMP_ROOTCAKEYUPDATE_seq_tt, 120
OSSL_CMP_ROOTCAKEYUPDATE_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC12
	.quad	X509_it
	.quad	145
	.quad	0
	.quad	8
	.quad	.LC11
	.quad	X509_it
	.quad	145
	.quad	1
	.quad	16
	.quad	.LC10
	.quad	X509_it
	.text
	.globl	OSSL_CMP_ROOTCAKEYUPDATE_it
	.type	OSSL_CMP_ROOTCAKEYUPDATE_it, @function
OSSL_CMP_ROOTCAKEYUPDATE_it:
.LFB774:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.30(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	OSSL_CMP_ROOTCAKEYUPDATE_it, .-OSSL_CMP_ROOTCAKEYUPDATE_it
	.globl	d2i_OSSL_CMP_ROOTCAKEYUPDATE
	.type	d2i_OSSL_CMP_ROOTCAKEYUPDATE, @function
d2i_OSSL_CMP_ROOTCAKEYUPDATE:
.LFB775:
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
	call	OSSL_CMP_ROOTCAKEYUPDATE_it@PLT
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
.LFE775:
	.size	d2i_OSSL_CMP_ROOTCAKEYUPDATE, .-d2i_OSSL_CMP_ROOTCAKEYUPDATE
	.globl	i2d_OSSL_CMP_ROOTCAKEYUPDATE
	.type	i2d_OSSL_CMP_ROOTCAKEYUPDATE, @function
i2d_OSSL_CMP_ROOTCAKEYUPDATE:
.LFB776:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CMP_ROOTCAKEYUPDATE_it@PLT
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
.LFE776:
	.size	i2d_OSSL_CMP_ROOTCAKEYUPDATE, .-i2d_OSSL_CMP_ROOTCAKEYUPDATE
	.globl	OSSL_CMP_ROOTCAKEYUPDATE_new
	.type	OSSL_CMP_ROOTCAKEYUPDATE_new, @function
OSSL_CMP_ROOTCAKEYUPDATE_new:
.LFB777:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CMP_ROOTCAKEYUPDATE_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE777:
	.size	OSSL_CMP_ROOTCAKEYUPDATE_new, .-OSSL_CMP_ROOTCAKEYUPDATE_new
	.globl	OSSL_CMP_ROOTCAKEYUPDATE_free
	.type	OSSL_CMP_ROOTCAKEYUPDATE_free, @function
OSSL_CMP_ROOTCAKEYUPDATE_free:
.LFB778:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_ROOTCAKEYUPDATE_it@PLT
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
.LFE778:
	.size	OSSL_CMP_ROOTCAKEYUPDATE_free, .-OSSL_CMP_ROOTCAKEYUPDATE_free
	.globl	OSSL_CMP_ITAV_create
	.type	OSSL_CMP_ITAV_create, @function
OSSL_CMP_ITAV_create:
.LFB779:
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
	je	.L78
	call	OSSL_CMP_ITAV_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L79
.L78:
	movl	$0, %eax
	jmp	.L80
.L79:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_set0@PLT
	movq	-8(%rbp), %rax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE779:
	.size	OSSL_CMP_ITAV_create, .-OSSL_CMP_ITAV_create
	.globl	OSSL_CMP_ITAV_set0
	.type	OSSL_CMP_ITAV_set0, @function
OSSL_CMP_ITAV_set0:
.LFB780:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE780:
	.size	OSSL_CMP_ITAV_set0, .-OSSL_CMP_ITAV_set0
	.globl	OSSL_CMP_ITAV_get0_type
	.type	OSSL_CMP_ITAV_get0_type, @function
OSSL_CMP_ITAV_get0_type:
.LFB781:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L83
	movl	$0, %eax
	jmp	.L84
.L83:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
.L84:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE781:
	.size	OSSL_CMP_ITAV_get0_type, .-OSSL_CMP_ITAV_get0_type
	.globl	OSSL_CMP_ITAV_get0_value
	.type	OSSL_CMP_ITAV_get0_value, @function
OSSL_CMP_ITAV_get0_value:
.LFB782:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L86
	movl	$0, %eax
	jmp	.L87
.L86:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L87:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE782:
	.size	OSSL_CMP_ITAV_get0_value, .-OSSL_CMP_ITAV_get0_value
	.section	.rodata
.LC37:
	.string	"../crypto/cmp/cmp_asn.c"
	.text
	.globl	OSSL_CMP_ITAV_push0_stack_item
	.type	OSSL_CMP_ITAV_push0_stack_item, @function
OSSL_CMP_ITAV_push0_stack_item:
.LFB783:
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
	movq	%rsi, -48(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L89
	cmpq	$0, -48(%rbp)
	jne	.L90
.L89:
	call	ERR_new@PLT
	leaq	__func__.29(%rip), %rdx
	leaq	.LC37(%rip), %rax
	movl	$178, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L91
.L90:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L92
	call	OPENSSL_sk_new_null@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L97
	movl	$1, -20(%rbp)
.L92:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_ITAV_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_ITAV_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L98
	movl	$1, %eax
	jmp	.L95
.L97:
	nop
	jmp	.L91
.L98:
	nop
.L91:
	cmpl	$0, -20(%rbp)
	je	.L96
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
.L96:
	movl	$0, %eax
.L95:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE783:
	.size	OSSL_CMP_ITAV_push0_stack_item, .-OSSL_CMP_ITAV_push0_stack_item
	.globl	OSSL_CMP_ITAV_new0_certProfile
	.type	OSSL_CMP_ITAV_new0_certProfile, @function
OSSL_CMP_ITAV_new0_certProfile:
.LFB784:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	OSSL_CMP_ITAV_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L100
	movl	$0, %eax
	jmp	.L101
.L100:
	movl	$1255, %edi
	call	OBJ_nid2obj@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE784:
	.size	OSSL_CMP_ITAV_new0_certProfile, .-OSSL_CMP_ITAV_new0_certProfile
	.globl	OSSL_CMP_ITAV_get0_certProfile
	.type	OSSL_CMP_ITAV_get0_certProfile, @function
OSSL_CMP_ITAV_get0_certProfile:
.LFB785:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L103
	cmpq	$0, -16(%rbp)
	jne	.L104
.L103:
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC37(%rip), %rax
	movl	$215, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L105
.L104:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$1255, %eax
	je	.L106
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC37(%rip), %rax
	movl	$219, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L105
.L106:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE785:
	.size	OSSL_CMP_ITAV_get0_certProfile, .-OSSL_CMP_ITAV_get0_certProfile
	.globl	OSSL_CMP_ITAV_new_caCerts
	.type	OSSL_CMP_ITAV_new_caCerts, @function
OSSL_CMP_ITAV_new_caCerts:
.LFB786:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	call	OSSL_CMP_ITAV_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L108
	movl	$0, %eax
	jmp	.L109
.L108:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jle	.L110
	movq	X509_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_freefunc_type
	movq	%rax, %r12
	movq	X509_dup@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_copyfunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_deep_copy@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L110
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_free@PLT
	movl	$0, %eax
	jmp	.L109
.L110:
	movl	$1223, %edi
	call	OBJ_nid2obj@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
.L109:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE786:
	.size	OSSL_CMP_ITAV_new_caCerts, .-OSSL_CMP_ITAV_new_caCerts
	.globl	OSSL_CMP_ITAV_get0_caCerts
	.type	OSSL_CMP_ITAV_get0_caCerts, @function
OSSL_CMP_ITAV_get0_caCerts:
.LFB787:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L112
	cmpq	$0, -16(%rbp)
	jne	.L113
.L112:
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC37(%rip), %rax
	movl	$245, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L114
.L113:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$1223, %eax
	je	.L115
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC37(%rip), %rax
	movl	$249, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L114
.L115:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jle	.L116
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L117
.L116:
	movl	$0, %eax
.L117:
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$1, %eax
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE787:
	.size	OSSL_CMP_ITAV_get0_caCerts, .-OSSL_CMP_ITAV_get0_caCerts
	.globl	OSSL_CMP_ITAV_new_rootCaCert
	.type	OSSL_CMP_ITAV_new_rootCaCert, @function
OSSL_CMP_ITAV_new_rootCaCert:
.LFB788:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	OSSL_CMP_ITAV_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L119
	movl	$0, %eax
	jmp	.L120
.L119:
	cmpq	$0, -24(%rbp)
	je	.L121
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L121
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_free@PLT
	movl	$0, %eax
	jmp	.L120
.L121:
	movl	$1254, %edi
	call	OBJ_nid2obj@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
.L120:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE788:
	.size	OSSL_CMP_ITAV_new_rootCaCert, .-OSSL_CMP_ITAV_new_rootCaCert
	.globl	OSSL_CMP_ITAV_get0_rootCaCert
	.type	OSSL_CMP_ITAV_get0_rootCaCert, @function
OSSL_CMP_ITAV_get0_rootCaCert:
.LFB789:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L123
	cmpq	$0, -16(%rbp)
	jne	.L124
.L123:
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC37(%rip), %rax
	movl	$275, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L125
.L124:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$1254, %eax
	je	.L126
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC37(%rip), %rax
	movl	$279, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L125
.L126:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE789:
	.size	OSSL_CMP_ITAV_get0_rootCaCert, .-OSSL_CMP_ITAV_get0_rootCaCert
	.globl	OSSL_CMP_ITAV_new_rootCaKeyUpdate
	.type	OSSL_CMP_ITAV_new_rootCaKeyUpdate, @function
OSSL_CMP_ITAV_new_rootCaKeyUpdate:
.LFB790:
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
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L128
	call	OSSL_CMP_ROOTCAKEYUPDATE_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L129
	movl	$0, %eax
	jmp	.L130
.L129:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L135
	cmpq	$0, -32(%rbp)
	je	.L133
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L136
.L133:
	cmpq	$0, -40(%rbp)
	je	.L128
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L137
.L128:
	call	OSSL_CMP_ITAV_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L138
	movl	$1224, %edi
	call	OBJ_nid2obj@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	jmp	.L130
.L135:
	nop
	jmp	.L132
.L136:
	nop
	jmp	.L132
.L137:
	nop
	jmp	.L132
.L138:
	nop
.L132:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ROOTCAKEYUPDATE_free@PLT
	movl	$0, %eax
.L130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE790:
	.size	OSSL_CMP_ITAV_new_rootCaKeyUpdate, .-OSSL_CMP_ITAV_new_rootCaKeyUpdate
	.globl	OSSL_CMP_ITAV_get0_rootCaKeyUpdate
	.type	OSSL_CMP_ITAV_get0_rootCaKeyUpdate, @function
OSSL_CMP_ITAV_get0_rootCaKeyUpdate:
.LFB791:
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
	movq	%rcx, -48(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L140
	cmpq	$0, -32(%rbp)
	jne	.L141
.L140:
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC37(%rip), %rax
	movl	$326, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L142
.L141:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$1224, %eax
	je	.L143
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC37(%rip), %rax
	movl	$330, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L142
.L143:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L144
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L145
.L144:
	movl	$0, %eax
.L145:
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	cmpq	$0, -40(%rbp)
	je	.L146
	cmpq	$0, -8(%rbp)
	je	.L147
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L148
.L147:
	movl	$0, %eax
.L148:
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
.L146:
	cmpq	$0, -48(%rbp)
	je	.L149
	cmpq	$0, -8(%rbp)
	je	.L150
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L151
.L150:
	movl	$0, %eax
.L151:
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
.L149:
	movl	$1, %eax
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE791:
	.size	OSSL_CMP_ITAV_get0_rootCaKeyUpdate, .-OSSL_CMP_ITAV_get0_rootCaKeyUpdate
	.globl	ossl_cmp_asn1_get_int
	.type	ossl_cmp_asn1_get_int, @function
ossl_cmp_asn1_get_int:
.LFB792:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_get_int64@PLT
	testl	%eax, %eax
	jne	.L153
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC37(%rip), %rax
	movl	$348, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$187, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L157
.L153:
	movq	-8(%rbp), %rax
	cmpq	$-2147483648, %rax
	jge	.L155
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC37(%rip), %rax
	movl	$352, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$224, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L157
.L155:
	movq	-8(%rbp), %rax
	cmpq	$2147483647, %rax
	jle	.L156
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC37(%rip), %rax
	movl	$356, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$223, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L157
.L156:
	movq	-8(%rbp), %rax
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE792:
	.size	ossl_cmp_asn1_get_int, .-ossl_cmp_asn1_get_int
	.type	ossl_cmp_msg_cb, @function
ossl_cmp_msg_cb:
.LFB793:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$17, -36(%rbp)
	je	.L159
	cmpl	$17, -36(%rbp)
	jg	.L167
	cmpl	$16, -36(%rbp)
	je	.L161
	cmpl	$16, -36(%rbp)
	jg	.L167
	cmpl	$3, -36(%rbp)
	je	.L162
	cmpl	$15, -36(%rbp)
	je	.L163
	jmp	.L167
.L162:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC37(%rip), %rcx
	movl	$369, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L164
.L163:
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_msg_set0_libctx@PLT
	testl	%eax, %eax
	jne	.L168
	movl	$0, %eax
	jmp	.L166
.L161:
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L164
.L159:
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L164
.L167:
	nop
	jmp	.L164
.L168:
	nop
.L164:
	movl	$1, %eax
.L166:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE793:
	.size	ossl_cmp_msg_cb, .-ossl_cmp_msg_cb
	.section	.rodata
.LC38:
	.string	"value.certificate"
.LC39:
	.string	"value.encryptedCert"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_CERTORENCCERT_ch_tt, @object
	.size	OSSL_CMP_CERTORENCCERT_ch_tt, 80
OSSL_CMP_CERTORENCCERT_ch_tt:
	.quad	144
	.quad	0
	.quad	8
	.quad	.LC38
	.quad	X509_it
	.quad	144
	.quad	1
	.quad	8
	.quad	.LC39
	.quad	OSSL_CRMF_ENCRYPTEDVALUE_it
	.text
	.globl	OSSL_CMP_CERTORENCCERT_it
	.type	OSSL_CMP_CERTORENCCERT_it, @function
OSSL_CMP_CERTORENCCERT_it:
.LFB794:
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
.LFE794:
	.size	OSSL_CMP_CERTORENCCERT_it, .-OSSL_CMP_CERTORENCCERT_it
	.globl	d2i_OSSL_CMP_CERTORENCCERT
	.type	d2i_OSSL_CMP_CERTORENCCERT, @function
d2i_OSSL_CMP_CERTORENCCERT:
.LFB795:
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
	call	OSSL_CMP_CERTORENCCERT_it@PLT
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
.LFE795:
	.size	d2i_OSSL_CMP_CERTORENCCERT, .-d2i_OSSL_CMP_CERTORENCCERT
	.globl	i2d_OSSL_CMP_CERTORENCCERT
	.type	i2d_OSSL_CMP_CERTORENCCERT, @function
i2d_OSSL_CMP_CERTORENCCERT:
.LFB796:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CMP_CERTORENCCERT_it@PLT
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
.LFE796:
	.size	i2d_OSSL_CMP_CERTORENCCERT, .-i2d_OSSL_CMP_CERTORENCCERT
	.globl	OSSL_CMP_CERTORENCCERT_new
	.type	OSSL_CMP_CERTORENCCERT_new, @function
OSSL_CMP_CERTORENCCERT_new:
.LFB797:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CMP_CERTORENCCERT_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE797:
	.size	OSSL_CMP_CERTORENCCERT_new, .-OSSL_CMP_CERTORENCCERT_new
	.globl	OSSL_CMP_CERTORENCCERT_free
	.type	OSSL_CMP_CERTORENCCERT_free, @function
OSSL_CMP_CERTORENCCERT_free:
.LFB798:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_CERTORENCCERT_it@PLT
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
.LFE798:
	.size	OSSL_CMP_CERTORENCCERT_free, .-OSSL_CMP_CERTORENCCERT_free
	.section	.rodata
.LC40:
	.string	"certOrEncCert"
.LC41:
	.string	"privateKey"
.LC42:
	.string	"publicationInfo"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_CERTIFIEDKEYPAIR_seq_tt, @object
	.size	OSSL_CMP_CERTIFIEDKEYPAIR_seq_tt, 120
OSSL_CMP_CERTIFIEDKEYPAIR_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC40
	.quad	OSSL_CMP_CERTORENCCERT_it
	.quad	145
	.quad	0
	.quad	8
	.quad	.LC41
	.quad	OSSL_CRMF_ENCRYPTEDVALUE_it
	.quad	145
	.quad	1
	.quad	16
	.quad	.LC42
	.quad	OSSL_CRMF_PKIPUBLICATIONINFO_it
	.text
	.globl	OSSL_CMP_CERTIFIEDKEYPAIR_it
	.type	OSSL_CMP_CERTIFIEDKEYPAIR_it, @function
OSSL_CMP_CERTIFIEDKEYPAIR_it:
.LFB799:
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
.LFE799:
	.size	OSSL_CMP_CERTIFIEDKEYPAIR_it, .-OSSL_CMP_CERTIFIEDKEYPAIR_it
	.globl	d2i_OSSL_CMP_CERTIFIEDKEYPAIR
	.type	d2i_OSSL_CMP_CERTIFIEDKEYPAIR, @function
d2i_OSSL_CMP_CERTIFIEDKEYPAIR:
.LFB800:
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
	call	OSSL_CMP_CERTIFIEDKEYPAIR_it@PLT
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
.LFE800:
	.size	d2i_OSSL_CMP_CERTIFIEDKEYPAIR, .-d2i_OSSL_CMP_CERTIFIEDKEYPAIR
	.globl	i2d_OSSL_CMP_CERTIFIEDKEYPAIR
	.type	i2d_OSSL_CMP_CERTIFIEDKEYPAIR, @function
i2d_OSSL_CMP_CERTIFIEDKEYPAIR:
.LFB801:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CMP_CERTIFIEDKEYPAIR_it@PLT
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
.LFE801:
	.size	i2d_OSSL_CMP_CERTIFIEDKEYPAIR, .-i2d_OSSL_CMP_CERTIFIEDKEYPAIR
	.globl	OSSL_CMP_CERTIFIEDKEYPAIR_new
	.type	OSSL_CMP_CERTIFIEDKEYPAIR_new, @function
OSSL_CMP_CERTIFIEDKEYPAIR_new:
.LFB802:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CMP_CERTIFIEDKEYPAIR_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE802:
	.size	OSSL_CMP_CERTIFIEDKEYPAIR_new, .-OSSL_CMP_CERTIFIEDKEYPAIR_new
	.globl	OSSL_CMP_CERTIFIEDKEYPAIR_free
	.type	OSSL_CMP_CERTIFIEDKEYPAIR_free, @function
OSSL_CMP_CERTIFIEDKEYPAIR_free:
.LFB803:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_CERTIFIEDKEYPAIR_it@PLT
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
.LFE803:
	.size	OSSL_CMP_CERTIFIEDKEYPAIR_free, .-OSSL_CMP_CERTIFIEDKEYPAIR_free
	.section	.rodata
.LC43:
	.string	"certDetails"
.LC44:
	.string	"crlEntryDetails"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_REVDETAILS_seq_tt, @object
	.size	OSSL_CMP_REVDETAILS_seq_tt, 80
OSSL_CMP_REVDETAILS_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC43
	.quad	OSSL_CRMF_CERTTEMPLATE_it
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC44
	.quad	X509_EXTENSIONS_it
	.text
	.globl	OSSL_CMP_REVDETAILS_it
	.type	OSSL_CMP_REVDETAILS_it, @function
OSSL_CMP_REVDETAILS_it:
.LFB804:
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
.LFE804:
	.size	OSSL_CMP_REVDETAILS_it, .-OSSL_CMP_REVDETAILS_it
	.globl	d2i_OSSL_CMP_REVDETAILS
	.type	d2i_OSSL_CMP_REVDETAILS, @function
d2i_OSSL_CMP_REVDETAILS:
.LFB805:
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
	call	OSSL_CMP_REVDETAILS_it@PLT
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
.LFE805:
	.size	d2i_OSSL_CMP_REVDETAILS, .-d2i_OSSL_CMP_REVDETAILS
	.globl	i2d_OSSL_CMP_REVDETAILS
	.type	i2d_OSSL_CMP_REVDETAILS, @function
i2d_OSSL_CMP_REVDETAILS:
.LFB806:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CMP_REVDETAILS_it@PLT
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
.LFE806:
	.size	i2d_OSSL_CMP_REVDETAILS, .-i2d_OSSL_CMP_REVDETAILS
	.globl	OSSL_CMP_REVDETAILS_new
	.type	OSSL_CMP_REVDETAILS_new, @function
OSSL_CMP_REVDETAILS_new:
.LFB807:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CMP_REVDETAILS_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE807:
	.size	OSSL_CMP_REVDETAILS_new, .-OSSL_CMP_REVDETAILS_new
	.globl	OSSL_CMP_REVDETAILS_free
	.type	OSSL_CMP_REVDETAILS_free, @function
OSSL_CMP_REVDETAILS_free:
.LFB808:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_REVDETAILS_it@PLT
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
.LFE808:
	.size	OSSL_CMP_REVDETAILS_free, .-OSSL_CMP_REVDETAILS_free
	.section	.rodata
.LC45:
	.string	"OSSL_CMP_REVREQCONTENT"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_REVREQCONTENT_item_tt, @object
	.size	OSSL_CMP_REVREQCONTENT_item_tt, 40
OSSL_CMP_REVREQCONTENT_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC45
	.quad	OSSL_CMP_REVDETAILS_it
	.text
	.globl	OSSL_CMP_REVREQCONTENT_it
	.type	OSSL_CMP_REVREQCONTENT_it, @function
OSSL_CMP_REVREQCONTENT_it:
.LFB809:
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
.LFE809:
	.size	OSSL_CMP_REVREQCONTENT_it, .-OSSL_CMP_REVREQCONTENT_it
	.section	.rodata
.LC46:
	.string	"revCerts"
.LC47:
	.string	"crls"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_REVREPCONTENT_seq_tt, @object
	.size	OSSL_CMP_REVREPCONTENT_seq_tt, 120
OSSL_CMP_REVREPCONTENT_seq_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	OSSL_CMP_PKISI_it
	.quad	149
	.quad	0
	.quad	8
	.quad	.LC46
	.quad	OSSL_CRMF_CERTID_it
	.quad	149
	.quad	1
	.quad	16
	.quad	.LC47
	.quad	X509_CRL_it
	.text
	.globl	OSSL_CMP_REVREPCONTENT_it
	.type	OSSL_CMP_REVREPCONTENT_it, @function
OSSL_CMP_REVREPCONTENT_it:
.LFB810:
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
.LFE810:
	.size	OSSL_CMP_REVREPCONTENT_it, .-OSSL_CMP_REVREPCONTENT_it
	.globl	d2i_OSSL_CMP_REVREPCONTENT
	.type	d2i_OSSL_CMP_REVREPCONTENT, @function
d2i_OSSL_CMP_REVREPCONTENT:
.LFB811:
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
	call	OSSL_CMP_REVREPCONTENT_it@PLT
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
.LFE811:
	.size	d2i_OSSL_CMP_REVREPCONTENT, .-d2i_OSSL_CMP_REVREPCONTENT
	.globl	i2d_OSSL_CMP_REVREPCONTENT
	.type	i2d_OSSL_CMP_REVREPCONTENT, @function
i2d_OSSL_CMP_REVREPCONTENT:
.LFB812:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CMP_REVREPCONTENT_it@PLT
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
.LFE812:
	.size	i2d_OSSL_CMP_REVREPCONTENT, .-i2d_OSSL_CMP_REVREPCONTENT
	.globl	OSSL_CMP_REVREPCONTENT_new
	.type	OSSL_CMP_REVREPCONTENT_new, @function
OSSL_CMP_REVREPCONTENT_new:
.LFB813:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CMP_REVREPCONTENT_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE813:
	.size	OSSL_CMP_REVREPCONTENT_new, .-OSSL_CMP_REVREPCONTENT_new
	.globl	OSSL_CMP_REVREPCONTENT_free
	.type	OSSL_CMP_REVREPCONTENT_free, @function
OSSL_CMP_REVREPCONTENT_free:
.LFB814:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_REVREPCONTENT_it@PLT
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
.LFE814:
	.size	OSSL_CMP_REVREPCONTENT_free, .-OSSL_CMP_REVREPCONTENT_free
	.section	.rodata
.LC48:
	.string	"newSigCert"
.LC49:
	.string	"caCerts"
.LC50:
	.string	"keyPairHist"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_KEYRECREPCONTENT_seq_tt, @object
	.size	OSSL_CMP_KEYRECREPCONTENT_seq_tt, 160
OSSL_CMP_KEYRECREPCONTENT_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	OSSL_CMP_PKISI_it
	.quad	145
	.quad	0
	.quad	8
	.quad	.LC48
	.quad	X509_it
	.quad	149
	.quad	1
	.quad	16
	.quad	.LC49
	.quad	X509_it
	.quad	149
	.quad	2
	.quad	24
	.quad	.LC50
	.quad	OSSL_CMP_CERTIFIEDKEYPAIR_it
	.text
	.globl	OSSL_CMP_KEYRECREPCONTENT_it
	.type	OSSL_CMP_KEYRECREPCONTENT_it, @function
OSSL_CMP_KEYRECREPCONTENT_it:
.LFB815:
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
.LFE815:
	.size	OSSL_CMP_KEYRECREPCONTENT_it, .-OSSL_CMP_KEYRECREPCONTENT_it
	.globl	d2i_OSSL_CMP_KEYRECREPCONTENT
	.type	d2i_OSSL_CMP_KEYRECREPCONTENT, @function
d2i_OSSL_CMP_KEYRECREPCONTENT:
.LFB816:
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
	call	OSSL_CMP_KEYRECREPCONTENT_it@PLT
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
.LFE816:
	.size	d2i_OSSL_CMP_KEYRECREPCONTENT, .-d2i_OSSL_CMP_KEYRECREPCONTENT
	.globl	i2d_OSSL_CMP_KEYRECREPCONTENT
	.type	i2d_OSSL_CMP_KEYRECREPCONTENT, @function
i2d_OSSL_CMP_KEYRECREPCONTENT:
.LFB817:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CMP_KEYRECREPCONTENT_it@PLT
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
.LFE817:
	.size	i2d_OSSL_CMP_KEYRECREPCONTENT, .-i2d_OSSL_CMP_KEYRECREPCONTENT
	.globl	OSSL_CMP_KEYRECREPCONTENT_new
	.type	OSSL_CMP_KEYRECREPCONTENT_new, @function
OSSL_CMP_KEYRECREPCONTENT_new:
.LFB818:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CMP_KEYRECREPCONTENT_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE818:
	.size	OSSL_CMP_KEYRECREPCONTENT_new, .-OSSL_CMP_KEYRECREPCONTENT_new
	.globl	OSSL_CMP_KEYRECREPCONTENT_free
	.type	OSSL_CMP_KEYRECREPCONTENT_free, @function
OSSL_CMP_KEYRECREPCONTENT_free:
.LFB819:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_KEYRECREPCONTENT_it@PLT
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
.LFE819:
	.size	OSSL_CMP_KEYRECREPCONTENT_free, .-OSSL_CMP_KEYRECREPCONTENT_free
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_PKISTATUS_item_tt, @object
	.size	OSSL_CMP_PKISTATUS_item_tt, 40
OSSL_CMP_PKISTATUS_item_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_INTEGER_it
	.text
	.globl	OSSL_CMP_PKISTATUS_it
	.type	OSSL_CMP_PKISTATUS_it, @function
OSSL_CMP_PKISTATUS_it:
.LFB820:
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
.LFE820:
	.size	OSSL_CMP_PKISTATUS_it, .-OSSL_CMP_PKISTATUS_it
	.section	.rodata
.LC51:
	.string	"statusString"
.LC52:
	.string	"failInfo"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_PKISI_seq_tt, @object
	.size	OSSL_CMP_PKISI_seq_tt, 120
OSSL_CMP_PKISI_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	OSSL_CMP_PKISTATUS_it
	.quad	5
	.quad	0
	.quad	8
	.quad	.LC51
	.quad	ASN1_UTF8STRING_it
	.quad	1
	.quad	0
	.quad	16
	.quad	.LC52
	.quad	ASN1_BIT_STRING_it
	.text
	.globl	OSSL_CMP_PKISI_it
	.type	OSSL_CMP_PKISI_it, @function
OSSL_CMP_PKISI_it:
.LFB821:
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
.LFE821:
	.size	OSSL_CMP_PKISI_it, .-OSSL_CMP_PKISI_it
	.globl	d2i_OSSL_CMP_PKISI
	.type	d2i_OSSL_CMP_PKISI, @function
d2i_OSSL_CMP_PKISI:
.LFB822:
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
	call	OSSL_CMP_PKISI_it@PLT
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
.LFE822:
	.size	d2i_OSSL_CMP_PKISI, .-d2i_OSSL_CMP_PKISI
	.globl	i2d_OSSL_CMP_PKISI
	.type	i2d_OSSL_CMP_PKISI, @function
i2d_OSSL_CMP_PKISI:
.LFB823:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CMP_PKISI_it@PLT
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
.LFE823:
	.size	i2d_OSSL_CMP_PKISI, .-i2d_OSSL_CMP_PKISI
	.globl	OSSL_CMP_PKISI_new
	.type	OSSL_CMP_PKISI_new, @function
OSSL_CMP_PKISI_new:
.LFB824:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CMP_PKISI_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE824:
	.size	OSSL_CMP_PKISI_new, .-OSSL_CMP_PKISI_new
	.globl	OSSL_CMP_PKISI_free
	.type	OSSL_CMP_PKISI_free, @function
OSSL_CMP_PKISI_free:
.LFB825:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_PKISI_it@PLT
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
.LFE825:
	.size	OSSL_CMP_PKISI_free, .-OSSL_CMP_PKISI_free
	.globl	OSSL_CMP_PKISI_dup
	.type	OSSL_CMP_PKISI_dup, @function
OSSL_CMP_PKISI_dup:
.LFB826:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_PKISI_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE826:
	.size	OSSL_CMP_PKISI_dup, .-OSSL_CMP_PKISI_dup
	.section	.rodata
.LC53:
	.string	"certHash"
.LC54:
	.string	"certReqId"
.LC55:
	.string	"statusInfo"
.LC56:
	.string	"hashAlg"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_CERTSTATUS_seq_tt, @object
	.size	OSSL_CMP_CERTSTATUS_seq_tt, 160
OSSL_CMP_CERTSTATUS_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC53
	.quad	ASN1_OCTET_STRING_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC54
	.quad	ASN1_INTEGER_it
	.quad	1
	.quad	0
	.quad	16
	.quad	.LC55
	.quad	OSSL_CMP_PKISI_it
	.quad	145
	.quad	0
	.quad	24
	.quad	.LC56
	.quad	X509_ALGOR_it
	.text
	.globl	OSSL_CMP_CERTSTATUS_it
	.type	OSSL_CMP_CERTSTATUS_it, @function
OSSL_CMP_CERTSTATUS_it:
.LFB827:
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
.LFE827:
	.size	OSSL_CMP_CERTSTATUS_it, .-OSSL_CMP_CERTSTATUS_it
	.globl	d2i_OSSL_CMP_CERTSTATUS
	.type	d2i_OSSL_CMP_CERTSTATUS, @function
d2i_OSSL_CMP_CERTSTATUS:
.LFB828:
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
	call	OSSL_CMP_CERTSTATUS_it@PLT
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
.LFE828:
	.size	d2i_OSSL_CMP_CERTSTATUS, .-d2i_OSSL_CMP_CERTSTATUS
	.globl	i2d_OSSL_CMP_CERTSTATUS
	.type	i2d_OSSL_CMP_CERTSTATUS, @function
i2d_OSSL_CMP_CERTSTATUS:
.LFB829:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CMP_CERTSTATUS_it@PLT
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
.LFE829:
	.size	i2d_OSSL_CMP_CERTSTATUS, .-i2d_OSSL_CMP_CERTSTATUS
	.globl	OSSL_CMP_CERTSTATUS_new
	.type	OSSL_CMP_CERTSTATUS_new, @function
OSSL_CMP_CERTSTATUS_new:
.LFB830:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CMP_CERTSTATUS_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE830:
	.size	OSSL_CMP_CERTSTATUS_new, .-OSSL_CMP_CERTSTATUS_new
	.globl	OSSL_CMP_CERTSTATUS_free
	.type	OSSL_CMP_CERTSTATUS_free, @function
OSSL_CMP_CERTSTATUS_free:
.LFB831:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_CERTSTATUS_it@PLT
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
.LFE831:
	.size	OSSL_CMP_CERTSTATUS_free, .-OSSL_CMP_CERTSTATUS_free
	.section	.rodata
.LC57:
	.string	"OSSL_CMP_CERTCONFIRMCONTENT"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_CERTCONFIRMCONTENT_item_tt, @object
	.size	OSSL_CMP_CERTCONFIRMCONTENT_item_tt, 40
OSSL_CMP_CERTCONFIRMCONTENT_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC57
	.quad	OSSL_CMP_CERTSTATUS_it
	.text
	.globl	OSSL_CMP_CERTCONFIRMCONTENT_it
	.type	OSSL_CMP_CERTCONFIRMCONTENT_it, @function
OSSL_CMP_CERTCONFIRMCONTENT_it:
.LFB832:
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
.LFE832:
	.size	OSSL_CMP_CERTCONFIRMCONTENT_it, .-OSSL_CMP_CERTCONFIRMCONTENT_it
	.section	.rodata
.LC58:
	.string	"certifiedKeyPair"
.LC59:
	.string	"rspInfo"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_CERTRESPONSE_seq_tt, @object
	.size	OSSL_CMP_CERTRESPONSE_seq_tt, 160
OSSL_CMP_CERTRESPONSE_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC54
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC0
	.quad	OSSL_CMP_PKISI_it
	.quad	1
	.quad	0
	.quad	16
	.quad	.LC58
	.quad	OSSL_CMP_CERTIFIEDKEYPAIR_it
	.quad	1
	.quad	0
	.quad	24
	.quad	.LC59
	.quad	ASN1_OCTET_STRING_it
	.text
	.globl	OSSL_CMP_CERTRESPONSE_it
	.type	OSSL_CMP_CERTRESPONSE_it, @function
OSSL_CMP_CERTRESPONSE_it:
.LFB833:
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
.LFE833:
	.size	OSSL_CMP_CERTRESPONSE_it, .-OSSL_CMP_CERTRESPONSE_it
	.globl	d2i_OSSL_CMP_CERTRESPONSE
	.type	d2i_OSSL_CMP_CERTRESPONSE, @function
d2i_OSSL_CMP_CERTRESPONSE:
.LFB834:
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
	call	OSSL_CMP_CERTRESPONSE_it@PLT
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
.LFE834:
	.size	d2i_OSSL_CMP_CERTRESPONSE, .-d2i_OSSL_CMP_CERTRESPONSE
	.globl	i2d_OSSL_CMP_CERTRESPONSE
	.type	i2d_OSSL_CMP_CERTRESPONSE, @function
i2d_OSSL_CMP_CERTRESPONSE:
.LFB835:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CMP_CERTRESPONSE_it@PLT
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
.LFE835:
	.size	i2d_OSSL_CMP_CERTRESPONSE, .-i2d_OSSL_CMP_CERTRESPONSE
	.globl	OSSL_CMP_CERTRESPONSE_new
	.type	OSSL_CMP_CERTRESPONSE_new, @function
OSSL_CMP_CERTRESPONSE_new:
.LFB836:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CMP_CERTRESPONSE_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE836:
	.size	OSSL_CMP_CERTRESPONSE_new, .-OSSL_CMP_CERTRESPONSE_new
	.globl	OSSL_CMP_CERTRESPONSE_free
	.type	OSSL_CMP_CERTRESPONSE_free, @function
OSSL_CMP_CERTRESPONSE_free:
.LFB837:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_CERTRESPONSE_it@PLT
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
.LFE837:
	.size	OSSL_CMP_CERTRESPONSE_free, .-OSSL_CMP_CERTRESPONSE_free
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_POLLREQ_seq_tt, @object
	.size	OSSL_CMP_POLLREQ_seq_tt, 40
OSSL_CMP_POLLREQ_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC54
	.quad	ASN1_INTEGER_it
	.text
	.globl	OSSL_CMP_POLLREQ_it
	.type	OSSL_CMP_POLLREQ_it, @function
OSSL_CMP_POLLREQ_it:
.LFB838:
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
.LFE838:
	.size	OSSL_CMP_POLLREQ_it, .-OSSL_CMP_POLLREQ_it
	.globl	d2i_OSSL_CMP_POLLREQ
	.type	d2i_OSSL_CMP_POLLREQ, @function
d2i_OSSL_CMP_POLLREQ:
.LFB839:
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
	call	OSSL_CMP_POLLREQ_it@PLT
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
.LFE839:
	.size	d2i_OSSL_CMP_POLLREQ, .-d2i_OSSL_CMP_POLLREQ
	.globl	i2d_OSSL_CMP_POLLREQ
	.type	i2d_OSSL_CMP_POLLREQ, @function
i2d_OSSL_CMP_POLLREQ:
.LFB840:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CMP_POLLREQ_it@PLT
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
.LFE840:
	.size	i2d_OSSL_CMP_POLLREQ, .-i2d_OSSL_CMP_POLLREQ
	.globl	OSSL_CMP_POLLREQ_new
	.type	OSSL_CMP_POLLREQ_new, @function
OSSL_CMP_POLLREQ_new:
.LFB841:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CMP_POLLREQ_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE841:
	.size	OSSL_CMP_POLLREQ_new, .-OSSL_CMP_POLLREQ_new
	.globl	OSSL_CMP_POLLREQ_free
	.type	OSSL_CMP_POLLREQ_free, @function
OSSL_CMP_POLLREQ_free:
.LFB842:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_POLLREQ_it@PLT
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
.LFE842:
	.size	OSSL_CMP_POLLREQ_free, .-OSSL_CMP_POLLREQ_free
	.section	.rodata
.LC60:
	.string	"OSSL_CMP_POLLREQCONTENT"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_POLLREQCONTENT_item_tt, @object
	.size	OSSL_CMP_POLLREQCONTENT_item_tt, 40
OSSL_CMP_POLLREQCONTENT_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC60
	.quad	OSSL_CMP_POLLREQ_it
	.text
	.globl	OSSL_CMP_POLLREQCONTENT_it
	.type	OSSL_CMP_POLLREQCONTENT_it, @function
OSSL_CMP_POLLREQCONTENT_it:
.LFB843:
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
.LFE843:
	.size	OSSL_CMP_POLLREQCONTENT_it, .-OSSL_CMP_POLLREQCONTENT_it
	.section	.rodata
.LC61:
	.string	"checkAfter"
.LC62:
	.string	"reason"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_POLLREP_seq_tt, @object
	.size	OSSL_CMP_POLLREP_seq_tt, 120
OSSL_CMP_POLLREP_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC54
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC61
	.quad	ASN1_INTEGER_it
	.quad	5
	.quad	0
	.quad	16
	.quad	.LC62
	.quad	ASN1_UTF8STRING_it
	.text
	.globl	OSSL_CMP_POLLREP_it
	.type	OSSL_CMP_POLLREP_it, @function
OSSL_CMP_POLLREP_it:
.LFB844:
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
.LFE844:
	.size	OSSL_CMP_POLLREP_it, .-OSSL_CMP_POLLREP_it
	.globl	d2i_OSSL_CMP_POLLREP
	.type	d2i_OSSL_CMP_POLLREP, @function
d2i_OSSL_CMP_POLLREP:
.LFB845:
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
	call	OSSL_CMP_POLLREP_it@PLT
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
.LFE845:
	.size	d2i_OSSL_CMP_POLLREP, .-d2i_OSSL_CMP_POLLREP
	.globl	i2d_OSSL_CMP_POLLREP
	.type	i2d_OSSL_CMP_POLLREP, @function
i2d_OSSL_CMP_POLLREP:
.LFB846:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CMP_POLLREP_it@PLT
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
.LFE846:
	.size	i2d_OSSL_CMP_POLLREP, .-i2d_OSSL_CMP_POLLREP
	.globl	OSSL_CMP_POLLREP_new
	.type	OSSL_CMP_POLLREP_new, @function
OSSL_CMP_POLLREP_new:
.LFB847:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CMP_POLLREP_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE847:
	.size	OSSL_CMP_POLLREP_new, .-OSSL_CMP_POLLREP_new
	.globl	OSSL_CMP_POLLREP_free
	.type	OSSL_CMP_POLLREP_free, @function
OSSL_CMP_POLLREP_free:
.LFB848:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_POLLREP_it@PLT
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
.LFE848:
	.size	OSSL_CMP_POLLREP_free, .-OSSL_CMP_POLLREP_free
	.section	.rodata
.LC63:
	.string	"OSSL_CMP_POLLREPCONTENT"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_POLLREPCONTENT_item_tt, @object
	.size	OSSL_CMP_POLLREPCONTENT_item_tt, 40
OSSL_CMP_POLLREPCONTENT_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC63
	.quad	OSSL_CMP_POLLREP_it
	.text
	.globl	OSSL_CMP_POLLREPCONTENT_it
	.type	OSSL_CMP_POLLREPCONTENT_it, @function
OSSL_CMP_POLLREPCONTENT_it:
.LFB849:
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
.LFE849:
	.size	OSSL_CMP_POLLREPCONTENT_it, .-OSSL_CMP_POLLREPCONTENT_it
	.section	.rodata
.LC64:
	.string	"caPubs"
.LC65:
	.string	"response"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_CERTREPMESSAGE_seq_tt, @object
	.size	OSSL_CMP_CERTREPMESSAGE_seq_tt, 80
OSSL_CMP_CERTREPMESSAGE_seq_tt:
	.quad	149
	.quad	1
	.quad	0
	.quad	.LC64
	.quad	X509_it
	.quad	4
	.quad	0
	.quad	8
	.quad	.LC65
	.quad	OSSL_CMP_CERTRESPONSE_it
	.text
	.globl	OSSL_CMP_CERTREPMESSAGE_it
	.type	OSSL_CMP_CERTREPMESSAGE_it, @function
OSSL_CMP_CERTREPMESSAGE_it:
.LFB850:
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
.LFE850:
	.size	OSSL_CMP_CERTREPMESSAGE_it, .-OSSL_CMP_CERTREPMESSAGE_it
	.globl	d2i_OSSL_CMP_CERTREPMESSAGE
	.type	d2i_OSSL_CMP_CERTREPMESSAGE, @function
d2i_OSSL_CMP_CERTREPMESSAGE:
.LFB851:
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
	call	OSSL_CMP_CERTREPMESSAGE_it@PLT
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
.LFE851:
	.size	d2i_OSSL_CMP_CERTREPMESSAGE, .-d2i_OSSL_CMP_CERTREPMESSAGE
	.globl	i2d_OSSL_CMP_CERTREPMESSAGE
	.type	i2d_OSSL_CMP_CERTREPMESSAGE, @function
i2d_OSSL_CMP_CERTREPMESSAGE:
.LFB852:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CMP_CERTREPMESSAGE_it@PLT
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
.LFE852:
	.size	i2d_OSSL_CMP_CERTREPMESSAGE, .-i2d_OSSL_CMP_CERTREPMESSAGE
	.globl	OSSL_CMP_CERTREPMESSAGE_new
	.type	OSSL_CMP_CERTREPMESSAGE_new, @function
OSSL_CMP_CERTREPMESSAGE_new:
.LFB853:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CMP_CERTREPMESSAGE_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE853:
	.size	OSSL_CMP_CERTREPMESSAGE_new, .-OSSL_CMP_CERTREPMESSAGE_new
	.globl	OSSL_CMP_CERTREPMESSAGE_free
	.type	OSSL_CMP_CERTREPMESSAGE_free, @function
OSSL_CMP_CERTREPMESSAGE_free:
.LFB854:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_CERTREPMESSAGE_it@PLT
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
.LFE854:
	.size	OSSL_CMP_CERTREPMESSAGE_free, .-OSSL_CMP_CERTREPMESSAGE_free
	.section	.rodata
.LC66:
	.string	"OSSL_CMP_GENMSGCONTENT"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_GENMSGCONTENT_item_tt, @object
	.size	OSSL_CMP_GENMSGCONTENT_item_tt, 40
OSSL_CMP_GENMSGCONTENT_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC66
	.quad	OSSL_CMP_ITAV_it
	.text
	.globl	OSSL_CMP_GENMSGCONTENT_it
	.type	OSSL_CMP_GENMSGCONTENT_it, @function
OSSL_CMP_GENMSGCONTENT_it:
.LFB855:
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
.LFE855:
	.size	OSSL_CMP_GENMSGCONTENT_it, .-OSSL_CMP_GENMSGCONTENT_it
	.section	.rodata
.LC67:
	.string	"OSSL_CMP_GENREPCONTENT"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_GENREPCONTENT_item_tt, @object
	.size	OSSL_CMP_GENREPCONTENT_item_tt, 40
OSSL_CMP_GENREPCONTENT_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC67
	.quad	OSSL_CMP_ITAV_it
	.text
	.globl	OSSL_CMP_GENREPCONTENT_it
	.type	OSSL_CMP_GENREPCONTENT_it, @function
OSSL_CMP_GENREPCONTENT_it:
.LFB856:
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
.LFE856:
	.size	OSSL_CMP_GENREPCONTENT_it, .-OSSL_CMP_GENREPCONTENT_it
	.section	.rodata
.LC68:
	.string	"OSSL_CMP_CRLANNCONTENT"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_CRLANNCONTENT_item_tt, @object
	.size	OSSL_CMP_CRLANNCONTENT_item_tt, 40
OSSL_CMP_CRLANNCONTENT_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC68
	.quad	X509_CRL_it
	.text
	.globl	OSSL_CMP_CRLANNCONTENT_it
	.type	OSSL_CMP_CRLANNCONTENT_it, @function
OSSL_CMP_CRLANNCONTENT_it:
.LFB857:
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
.LFE857:
	.size	OSSL_CMP_CRLANNCONTENT_it, .-OSSL_CMP_CRLANNCONTENT_it
	.section	.rodata
.LC69:
	.string	"value.ir"
.LC70:
	.string	"value.ip"
.LC71:
	.string	"value.cr"
.LC72:
	.string	"value.cp"
.LC73:
	.string	"value.p10cr"
.LC74:
	.string	"value.popdecc"
.LC75:
	.string	"value.popdecr"
.LC76:
	.string	"value.kur"
.LC77:
	.string	"value.kup"
.LC78:
	.string	"value.krr"
.LC79:
	.string	"value.krp"
.LC80:
	.string	"value.rr"
.LC81:
	.string	"value.rp"
.LC82:
	.string	"value.ccr"
.LC83:
	.string	"value.ccp"
.LC84:
	.string	"value.ckuann"
.LC85:
	.string	"value.cann"
.LC86:
	.string	"value.rann"
.LC87:
	.string	"value.crlann"
.LC88:
	.string	"value.pkiconf"
.LC89:
	.string	"value.nested"
.LC90:
	.string	"value.genm"
.LC91:
	.string	"value.genp"
.LC92:
	.string	"value.error"
.LC93:
	.string	"value.certConf"
.LC94:
	.string	"value.pollReq"
.LC95:
	.string	"value.pollRep"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_PKIBODY_ch_tt, @object
	.size	OSSL_CMP_PKIBODY_ch_tt, 1080
OSSL_CMP_PKIBODY_ch_tt:
	.quad	144
	.quad	0
	.quad	8
	.quad	.LC69
	.quad	OSSL_CRMF_MSGS_it
	.quad	144
	.quad	1
	.quad	8
	.quad	.LC70
	.quad	OSSL_CMP_CERTREPMESSAGE_it
	.quad	144
	.quad	2
	.quad	8
	.quad	.LC71
	.quad	OSSL_CRMF_MSGS_it
	.quad	144
	.quad	3
	.quad	8
	.quad	.LC72
	.quad	OSSL_CMP_CERTREPMESSAGE_it
	.quad	144
	.quad	4
	.quad	8
	.quad	.LC73
	.quad	X509_REQ_it
	.quad	144
	.quad	5
	.quad	8
	.quad	.LC74
	.quad	OSSL_CMP_POPODECKEYCHALLCONTENT_it
	.quad	144
	.quad	6
	.quad	8
	.quad	.LC75
	.quad	OSSL_CMP_POPODECKEYRESPCONTENT_it
	.quad	144
	.quad	7
	.quad	8
	.quad	.LC76
	.quad	OSSL_CRMF_MSGS_it
	.quad	144
	.quad	8
	.quad	8
	.quad	.LC77
	.quad	OSSL_CMP_CERTREPMESSAGE_it
	.quad	144
	.quad	9
	.quad	8
	.quad	.LC78
	.quad	OSSL_CRMF_MSGS_it
	.quad	144
	.quad	10
	.quad	8
	.quad	.LC79
	.quad	OSSL_CMP_KEYRECREPCONTENT_it
	.quad	144
	.quad	11
	.quad	8
	.quad	.LC80
	.quad	OSSL_CMP_REVREQCONTENT_it
	.quad	144
	.quad	12
	.quad	8
	.quad	.LC81
	.quad	OSSL_CMP_REVREPCONTENT_it
	.quad	144
	.quad	13
	.quad	8
	.quad	.LC82
	.quad	OSSL_CRMF_MSGS_it
	.quad	144
	.quad	14
	.quad	8
	.quad	.LC83
	.quad	OSSL_CMP_CERTREPMESSAGE_it
	.quad	144
	.quad	15
	.quad	8
	.quad	.LC84
	.quad	OSSL_CMP_CAKEYUPDANNCONTENT_it
	.quad	144
	.quad	16
	.quad	8
	.quad	.LC85
	.quad	X509_it
	.quad	144
	.quad	17
	.quad	8
	.quad	.LC86
	.quad	OSSL_CMP_REVANNCONTENT_it
	.quad	144
	.quad	18
	.quad	8
	.quad	.LC87
	.quad	OSSL_CMP_CRLANNCONTENT_it
	.quad	144
	.quad	19
	.quad	8
	.quad	.LC88
	.quad	ASN1_ANY_it
	.quad	144
	.quad	20
	.quad	8
	.quad	.LC89
	.quad	OSSL_CMP_MSGS_it
	.quad	144
	.quad	21
	.quad	8
	.quad	.LC90
	.quad	OSSL_CMP_GENMSGCONTENT_it
	.quad	144
	.quad	22
	.quad	8
	.quad	.LC91
	.quad	OSSL_CMP_GENREPCONTENT_it
	.quad	144
	.quad	23
	.quad	8
	.quad	.LC92
	.quad	OSSL_CMP_ERRORMSGCONTENT_it
	.quad	144
	.quad	24
	.quad	8
	.quad	.LC93
	.quad	OSSL_CMP_CERTCONFIRMCONTENT_it
	.quad	144
	.quad	25
	.quad	8
	.quad	.LC94
	.quad	OSSL_CMP_POLLREQCONTENT_it
	.quad	144
	.quad	26
	.quad	8
	.quad	.LC95
	.quad	OSSL_CMP_POLLREPCONTENT_it
	.text
	.globl	OSSL_CMP_PKIBODY_it
	.type	OSSL_CMP_PKIBODY_it, @function
OSSL_CMP_PKIBODY_it:
.LFB858:
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
.LFE858:
	.size	OSSL_CMP_PKIBODY_it, .-OSSL_CMP_PKIBODY_it
	.globl	d2i_OSSL_CMP_PKIBODY
	.type	d2i_OSSL_CMP_PKIBODY, @function
d2i_OSSL_CMP_PKIBODY:
.LFB859:
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
	call	OSSL_CMP_PKIBODY_it@PLT
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
.LFE859:
	.size	d2i_OSSL_CMP_PKIBODY, .-d2i_OSSL_CMP_PKIBODY
	.globl	i2d_OSSL_CMP_PKIBODY
	.type	i2d_OSSL_CMP_PKIBODY, @function
i2d_OSSL_CMP_PKIBODY:
.LFB860:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CMP_PKIBODY_it@PLT
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
.LFE860:
	.size	i2d_OSSL_CMP_PKIBODY, .-i2d_OSSL_CMP_PKIBODY
	.globl	OSSL_CMP_PKIBODY_new
	.type	OSSL_CMP_PKIBODY_new, @function
OSSL_CMP_PKIBODY_new:
.LFB861:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CMP_PKIBODY_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE861:
	.size	OSSL_CMP_PKIBODY_new, .-OSSL_CMP_PKIBODY_new
	.globl	OSSL_CMP_PKIBODY_free
	.type	OSSL_CMP_PKIBODY_free, @function
OSSL_CMP_PKIBODY_free:
.LFB862:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_PKIBODY_it@PLT
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
.LFE862:
	.size	OSSL_CMP_PKIBODY_free, .-OSSL_CMP_PKIBODY_free
	.section	.rodata
.LC96:
	.string	"pvno"
.LC97:
	.string	"sender"
.LC98:
	.string	"recipient"
.LC99:
	.string	"messageTime"
.LC100:
	.string	"protectionAlg"
.LC101:
	.string	"senderKID"
.LC102:
	.string	"recipKID"
.LC103:
	.string	"transactionID"
.LC104:
	.string	"senderNonce"
.LC105:
	.string	"recipNonce"
.LC106:
	.string	"freeText"
.LC107:
	.string	"generalInfo"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_PKIHEADER_seq_tt, @object
	.size	OSSL_CMP_PKIHEADER_seq_tt, 480
OSSL_CMP_PKIHEADER_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC96
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC97
	.quad	GENERAL_NAME_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC98
	.quad	GENERAL_NAME_it
	.quad	145
	.quad	0
	.quad	24
	.quad	.LC99
	.quad	ASN1_GENERALIZEDTIME_it
	.quad	145
	.quad	1
	.quad	32
	.quad	.LC100
	.quad	X509_ALGOR_it
	.quad	145
	.quad	2
	.quad	40
	.quad	.LC101
	.quad	ASN1_OCTET_STRING_it
	.quad	145
	.quad	3
	.quad	48
	.quad	.LC102
	.quad	ASN1_OCTET_STRING_it
	.quad	145
	.quad	4
	.quad	56
	.quad	.LC103
	.quad	ASN1_OCTET_STRING_it
	.quad	145
	.quad	5
	.quad	64
	.quad	.LC104
	.quad	ASN1_OCTET_STRING_it
	.quad	145
	.quad	6
	.quad	72
	.quad	.LC105
	.quad	ASN1_OCTET_STRING_it
	.quad	149
	.quad	7
	.quad	80
	.quad	.LC106
	.quad	ASN1_UTF8STRING_it
	.quad	149
	.quad	8
	.quad	88
	.quad	.LC107
	.quad	OSSL_CMP_ITAV_it
	.text
	.globl	OSSL_CMP_PKIHEADER_it
	.type	OSSL_CMP_PKIHEADER_it, @function
OSSL_CMP_PKIHEADER_it:
.LFB863:
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
.LFE863:
	.size	OSSL_CMP_PKIHEADER_it, .-OSSL_CMP_PKIHEADER_it
	.globl	d2i_OSSL_CMP_PKIHEADER
	.type	d2i_OSSL_CMP_PKIHEADER, @function
d2i_OSSL_CMP_PKIHEADER:
.LFB864:
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
	call	OSSL_CMP_PKIHEADER_it@PLT
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
.LFE864:
	.size	d2i_OSSL_CMP_PKIHEADER, .-d2i_OSSL_CMP_PKIHEADER
	.globl	i2d_OSSL_CMP_PKIHEADER
	.type	i2d_OSSL_CMP_PKIHEADER, @function
i2d_OSSL_CMP_PKIHEADER:
.LFB865:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CMP_PKIHEADER_it@PLT
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
.LFE865:
	.size	i2d_OSSL_CMP_PKIHEADER, .-i2d_OSSL_CMP_PKIHEADER
	.globl	OSSL_CMP_PKIHEADER_new
	.type	OSSL_CMP_PKIHEADER_new, @function
OSSL_CMP_PKIHEADER_new:
.LFB866:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CMP_PKIHEADER_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE866:
	.size	OSSL_CMP_PKIHEADER_new, .-OSSL_CMP_PKIHEADER_new
	.globl	OSSL_CMP_PKIHEADER_free
	.type	OSSL_CMP_PKIHEADER_free, @function
OSSL_CMP_PKIHEADER_free:
.LFB867:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_PKIHEADER_it@PLT
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
.LFE867:
	.size	OSSL_CMP_PKIHEADER_free, .-OSSL_CMP_PKIHEADER_free
	.section	.rodata
.LC108:
	.string	"header"
.LC109:
	.string	"body"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_PROTECTEDPART_seq_tt, @object
	.size	OSSL_CMP_PROTECTEDPART_seq_tt, 80
OSSL_CMP_PROTECTEDPART_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC108
	.quad	OSSL_CMP_PKIHEADER_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC109
	.quad	OSSL_CMP_PKIBODY_it
	.text
	.globl	OSSL_CMP_PROTECTEDPART_it
	.type	OSSL_CMP_PROTECTEDPART_it, @function
OSSL_CMP_PROTECTEDPART_it:
.LFB868:
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
.LFE868:
	.size	OSSL_CMP_PROTECTEDPART_it, .-OSSL_CMP_PROTECTEDPART_it
	.globl	d2i_OSSL_CMP_PROTECTEDPART
	.type	d2i_OSSL_CMP_PROTECTEDPART, @function
d2i_OSSL_CMP_PROTECTEDPART:
.LFB869:
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
	call	OSSL_CMP_PROTECTEDPART_it@PLT
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
.LFE869:
	.size	d2i_OSSL_CMP_PROTECTEDPART, .-d2i_OSSL_CMP_PROTECTEDPART
	.globl	i2d_OSSL_CMP_PROTECTEDPART
	.type	i2d_OSSL_CMP_PROTECTEDPART, @function
i2d_OSSL_CMP_PROTECTEDPART:
.LFB870:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CMP_PROTECTEDPART_it@PLT
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
.LFE870:
	.size	i2d_OSSL_CMP_PROTECTEDPART, .-i2d_OSSL_CMP_PROTECTEDPART
	.globl	OSSL_CMP_PROTECTEDPART_new
	.type	OSSL_CMP_PROTECTEDPART_new, @function
OSSL_CMP_PROTECTEDPART_new:
.LFB871:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CMP_PROTECTEDPART_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE871:
	.size	OSSL_CMP_PROTECTEDPART_new, .-OSSL_CMP_PROTECTEDPART_new
	.globl	OSSL_CMP_PROTECTEDPART_free
	.type	OSSL_CMP_PROTECTEDPART_free, @function
OSSL_CMP_PROTECTEDPART_free:
.LFB872:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_PROTECTEDPART_it@PLT
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
.LFE872:
	.size	OSSL_CMP_PROTECTEDPART_free, .-OSSL_CMP_PROTECTEDPART_free
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	OSSL_CMP_MSG_aux, @object
	.size	OSSL_CMP_MSG_aux, 48
OSSL_CMP_MSG_aux:
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	ossl_cmp_msg_cb
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC110:
	.string	"protection"
.LC111:
	.string	"extraCerts"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_MSG_seq_tt, @object
	.size	OSSL_CMP_MSG_seq_tt, 160
OSSL_CMP_MSG_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC108
	.quad	OSSL_CMP_PKIHEADER_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC109
	.quad	OSSL_CMP_PKIBODY_it
	.quad	145
	.quad	0
	.quad	16
	.quad	.LC110
	.quad	ASN1_BIT_STRING_it
	.quad	149
	.quad	1
	.quad	24
	.quad	.LC111
	.quad	X509_it
	.text
	.globl	OSSL_CMP_MSG_it
	.type	OSSL_CMP_MSG_it, @function
OSSL_CMP_MSG_it:
.LFB873:
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
.LFE873:
	.size	OSSL_CMP_MSG_it, .-OSSL_CMP_MSG_it
	.globl	OSSL_CMP_MSG_dup
	.type	OSSL_CMP_MSG_dup, @function
OSSL_CMP_MSG_dup:
.LFB874:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_MSG_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE874:
	.size	OSSL_CMP_MSG_dup, .-OSSL_CMP_MSG_dup
	.section	.rodata
.LC112:
	.string	"OSSL_CMP_MSGS"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CMP_MSGS_item_tt, @object
	.size	OSSL_CMP_MSGS_item_tt, 40
OSSL_CMP_MSGS_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC112
	.quad	OSSL_CMP_MSG_it
	.text
	.globl	OSSL_CMP_MSGS_it
	.type	OSSL_CMP_MSGS_it, @function
OSSL_CMP_MSGS_it:
.LFB875:
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
.LFE875:
	.size	OSSL_CMP_MSGS_it, .-OSSL_CMP_MSGS_it
	.section	.rodata
.LC113:
	.string	"OSSL_CMP_REVANNCONTENT"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.38, @object
	.size	local_it.38, 56
local_it.38:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CMP_REVANNCONTENT_seq_tt
	.quad	5
	.quad	0
	.quad	40
	.quad	.LC113
	.section	.rodata
.LC114:
	.string	"OSSL_CMP_CHALLENGE"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.37, @object
	.size	local_it.37, 56
local_it.37:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CMP_CHALLENGE_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC114
	.align 32
	.type	local_it.36, @object
	.size	local_it.36, 56
local_it.36:
	.byte	0
	.zero	7
	.quad	-1
	.quad	OSSL_CMP_POPODECKEYCHALLCONTENT_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC8
	.align 32
	.type	local_it.35, @object
	.size	local_it.35, 56
local_it.35:
	.byte	0
	.zero	7
	.quad	-1
	.quad	OSSL_CMP_POPODECKEYRESPCONTENT_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC9
	.section	.rodata
.LC115:
	.string	"OSSL_CMP_CAKEYUPDANNCONTENT"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.34, @object
	.size	local_it.34, 56
local_it.34:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CMP_CAKEYUPDANNCONTENT_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC115
	.section	.rodata
.LC116:
	.string	"OSSL_CMP_ERRORMSGCONTENT"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.33, @object
	.size	local_it.33, 56
local_it.33:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CMP_ERRORMSGCONTENT_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC116
	.align 32
	.type	internal_adb.32, @object
	.size	internal_adb.32, 56
internal_adb.32:
	.quad	0
	.quad	0
	.quad	0
	.quad	OSSL_CMP_ITAV_adbtbl
	.quad	18
	.quad	infotypeandvalue_default_tt
	.quad	0
	.align 32
	.type	local_it.31, @object
	.size	local_it.31, 56
local_it.31:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CMP_ITAV_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC36
	.section	.rodata
.LC117:
	.string	"OSSL_CMP_ROOTCAKEYUPDATE"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.30, @object
	.size	local_it.30, 56
local_it.30:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CMP_ROOTCAKEYUPDATE_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC117
	.section	.rodata
	.align 16
	.type	__func__.29, @object
	.size	__func__.29, 31
__func__.29:
	.string	"OSSL_CMP_ITAV_push0_stack_item"
	.align 16
	.type	__func__.28, @object
	.size	__func__.28, 31
__func__.28:
	.string	"OSSL_CMP_ITAV_get0_certProfile"
	.align 16
	.type	__func__.27, @object
	.size	__func__.27, 27
__func__.27:
	.string	"OSSL_CMP_ITAV_get0_caCerts"
	.align 16
	.type	__func__.26, @object
	.size	__func__.26, 30
__func__.26:
	.string	"OSSL_CMP_ITAV_get0_rootCaCert"
	.align 32
	.type	__func__.25, @object
	.size	__func__.25, 35
__func__.25:
	.string	"OSSL_CMP_ITAV_get0_rootCaKeyUpdate"
	.align 16
	.type	__func__.24, @object
	.size	__func__.24, 22
__func__.24:
	.string	"ossl_cmp_asn1_get_int"
.LC118:
	.string	"OSSL_CMP_CERTORENCCERT"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.23, @object
	.size	local_it.23, 56
local_it.23:
	.byte	2
	.zero	7
	.quad	0
	.quad	OSSL_CMP_CERTORENCCERT_ch_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC118
	.section	.rodata
.LC119:
	.string	"OSSL_CMP_CERTIFIEDKEYPAIR"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.22, @object
	.size	local_it.22, 56
local_it.22:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CMP_CERTIFIEDKEYPAIR_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC119
	.section	.rodata
.LC120:
	.string	"OSSL_CMP_REVDETAILS"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.21, @object
	.size	local_it.21, 56
local_it.21:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CMP_REVDETAILS_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC120
	.align 32
	.type	local_it.20, @object
	.size	local_it.20, 56
local_it.20:
	.byte	0
	.zero	7
	.quad	-1
	.quad	OSSL_CMP_REVREQCONTENT_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC45
	.section	.rodata
.LC121:
	.string	"OSSL_CMP_REVREPCONTENT"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.19, @object
	.size	local_it.19, 56
local_it.19:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CMP_REVREPCONTENT_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC121
	.section	.rodata
.LC122:
	.string	"OSSL_CMP_KEYRECREPCONTENT"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.18, @object
	.size	local_it.18, 56
local_it.18:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CMP_KEYRECREPCONTENT_seq_tt
	.quad	4
	.quad	0
	.quad	32
	.quad	.LC122
	.section	.rodata
.LC123:
	.string	"OSSL_CMP_PKISTATUS"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.17, @object
	.size	local_it.17, 56
local_it.17:
	.byte	0
	.zero	7
	.quad	-1
	.quad	OSSL_CMP_PKISTATUS_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC123
	.section	.rodata
.LC124:
	.string	"OSSL_CMP_PKISI"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.16, @object
	.size	local_it.16, 56
local_it.16:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CMP_PKISI_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC124
	.section	.rodata
.LC125:
	.string	"OSSL_CMP_CERTSTATUS"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.15, @object
	.size	local_it.15, 56
local_it.15:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CMP_CERTSTATUS_seq_tt
	.quad	4
	.quad	0
	.quad	32
	.quad	.LC125
	.align 32
	.type	local_it.14, @object
	.size	local_it.14, 56
local_it.14:
	.byte	0
	.zero	7
	.quad	-1
	.quad	OSSL_CMP_CERTCONFIRMCONTENT_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC57
	.section	.rodata
.LC126:
	.string	"OSSL_CMP_CERTRESPONSE"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.13, @object
	.size	local_it.13, 56
local_it.13:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CMP_CERTRESPONSE_seq_tt
	.quad	4
	.quad	0
	.quad	32
	.quad	.LC126
	.section	.rodata
.LC127:
	.string	"OSSL_CMP_POLLREQ"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.12, @object
	.size	local_it.12, 56
local_it.12:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CMP_POLLREQ_seq_tt
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC127
	.align 32
	.type	local_it.11, @object
	.size	local_it.11, 56
local_it.11:
	.byte	0
	.zero	7
	.quad	-1
	.quad	OSSL_CMP_POLLREQCONTENT_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC60
	.section	.rodata
.LC128:
	.string	"OSSL_CMP_POLLREP"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.10, @object
	.size	local_it.10, 56
local_it.10:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CMP_POLLREP_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC128
	.align 32
	.type	local_it.9, @object
	.size	local_it.9, 56
local_it.9:
	.byte	0
	.zero	7
	.quad	-1
	.quad	OSSL_CMP_POLLREPCONTENT_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC63
	.section	.rodata
.LC129:
	.string	"OSSL_CMP_CERTREPMESSAGE"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.8, @object
	.size	local_it.8, 56
local_it.8:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CMP_CERTREPMESSAGE_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC129
	.align 32
	.type	local_it.7, @object
	.size	local_it.7, 56
local_it.7:
	.byte	0
	.zero	7
	.quad	-1
	.quad	OSSL_CMP_GENMSGCONTENT_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC66
	.align 32
	.type	local_it.6, @object
	.size	local_it.6, 56
local_it.6:
	.byte	0
	.zero	7
	.quad	-1
	.quad	OSSL_CMP_GENREPCONTENT_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC67
	.align 32
	.type	local_it.5, @object
	.size	local_it.5, 56
local_it.5:
	.byte	0
	.zero	7
	.quad	-1
	.quad	OSSL_CMP_CRLANNCONTENT_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC68
	.section	.rodata
.LC130:
	.string	"OSSL_CMP_PKIBODY"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.4, @object
	.size	local_it.4, 56
local_it.4:
	.byte	2
	.zero	7
	.quad	0
	.quad	OSSL_CMP_PKIBODY_ch_tt
	.quad	27
	.quad	0
	.quad	16
	.quad	.LC130
	.section	.rodata
.LC131:
	.string	"OSSL_CMP_PKIHEADER"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.3, @object
	.size	local_it.3, 56
local_it.3:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CMP_PKIHEADER_seq_tt
	.quad	12
	.quad	0
	.quad	96
	.quad	.LC131
	.section	.rodata
.LC132:
	.string	"OSSL_CMP_PROTECTEDPART"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CMP_PROTECTEDPART_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC132
	.section	.rodata
.LC133:
	.string	"OSSL_CMP_MSG"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CMP_MSG_seq_tt
	.quad	4
	.quad	OSSL_CMP_MSG_aux
	.quad	48
	.quad	.LC133
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	0
	.zero	7
	.quad	-1
	.quad	OSSL_CMP_MSGS_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC112
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

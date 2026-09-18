	.file	"p12_asn.c"
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
	.section	.rodata
.LC0:
	.string	"version"
.LC1:
	.string	"authsafes"
.LC2:
	.string	"mac"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	PKCS12_seq_tt, @object
	.size	PKCS12_seq_tt, 120
PKCS12_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC1
	.quad	PKCS7_it
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC2
	.quad	PKCS12_MAC_DATA_it
	.text
	.globl	PKCS12_it
	.type	PKCS12_it, @function
PKCS12_it:
.LFB521:
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
.LFE521:
	.size	PKCS12_it, .-PKCS12_it
	.globl	d2i_PKCS12
	.type	d2i_PKCS12, @function
d2i_PKCS12:
.LFB522:
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
	call	PKCS12_it@PLT
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
.LFE522:
	.size	d2i_PKCS12, .-d2i_PKCS12
	.globl	i2d_PKCS12
	.type	i2d_PKCS12, @function
i2d_PKCS12:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PKCS12_it@PLT
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
.LFE523:
	.size	i2d_PKCS12, .-i2d_PKCS12
	.globl	PKCS12_new
	.type	PKCS12_new, @function
PKCS12_new:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	PKCS12_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	PKCS12_new, .-PKCS12_new
	.section	.rodata
.LC3:
	.string	"../crypto/pkcs12/p12_asn.c"
	.text
	.globl	PKCS12_free
	.type	PKCS12_free, @function
PKCS12_free:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L14
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L14
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	48(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$35, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 48(%rax)
.L14:
	call	PKCS12_it@PLT
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
.LFE525:
	.size	PKCS12_free, .-PKCS12_free
	.section	.rodata
.LC4:
	.string	"dinfo"
.LC5:
	.string	"salt"
.LC6:
	.string	"iter"
	.section	.data.rel.ro
	.align 32
	.type	PKCS12_MAC_DATA_seq_tt, @object
	.size	PKCS12_MAC_DATA_seq_tt, 120
PKCS12_MAC_DATA_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC4
	.quad	X509_SIG_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC5
	.quad	ASN1_OCTET_STRING_it
	.quad	1
	.quad	0
	.quad	16
	.quad	.LC6
	.quad	ASN1_INTEGER_it
	.text
	.globl	PKCS12_MAC_DATA_it
	.type	PKCS12_MAC_DATA_it, @function
PKCS12_MAC_DATA_it:
.LFB526:
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
.LFE526:
	.size	PKCS12_MAC_DATA_it, .-PKCS12_MAC_DATA_it
	.globl	d2i_PKCS12_MAC_DATA
	.type	d2i_PKCS12_MAC_DATA, @function
d2i_PKCS12_MAC_DATA:
.LFB527:
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
	call	PKCS12_MAC_DATA_it@PLT
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
.LFE527:
	.size	d2i_PKCS12_MAC_DATA, .-d2i_PKCS12_MAC_DATA
	.globl	i2d_PKCS12_MAC_DATA
	.type	i2d_PKCS12_MAC_DATA, @function
i2d_PKCS12_MAC_DATA:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PKCS12_MAC_DATA_it@PLT
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
.LFE528:
	.size	i2d_PKCS12_MAC_DATA, .-i2d_PKCS12_MAC_DATA
	.globl	PKCS12_MAC_DATA_new
	.type	PKCS12_MAC_DATA_new, @function
PKCS12_MAC_DATA_new:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	PKCS12_MAC_DATA_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	PKCS12_MAC_DATA_new, .-PKCS12_MAC_DATA_new
	.globl	PKCS12_MAC_DATA_free
	.type	PKCS12_MAC_DATA_free, @function
PKCS12_MAC_DATA_free:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	PKCS12_MAC_DATA_it@PLT
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
.LFE530:
	.size	PKCS12_MAC_DATA_free, .-PKCS12_MAC_DATA_free
	.section	.rodata
.LC7:
	.string	"value.other"
	.section	.data.rel.ro
	.align 32
	.type	bag_default_tt, @object
	.size	bag_default_tt, 40
bag_default_tt:
	.quad	144
	.quad	0
	.quad	8
	.quad	.LC7
	.quad	ASN1_ANY_it
	.section	.rodata
.LC8:
	.string	"value.x509cert"
.LC9:
	.string	"value.x509crl"
.LC10:
	.string	"value.sdsicert"
	.section	.data.rel.ro
	.align 32
	.type	PKCS12_BAGS_adbtbl, @object
	.size	PKCS12_BAGS_adbtbl, 144
PKCS12_BAGS_adbtbl:
	.quad	158
	.quad	144
	.quad	0
	.quad	8
	.quad	.LC8
	.quad	ASN1_OCTET_STRING_it
	.quad	160
	.quad	144
	.quad	0
	.quad	8
	.quad	.LC9
	.quad	ASN1_OCTET_STRING_it
	.quad	159
	.quad	144
	.quad	0
	.quad	8
	.quad	.LC10
	.quad	ASN1_IA5STRING_it
	.text
	.type	PKCS12_BAGS_adb, @function
PKCS12_BAGS_adb:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	internal_adb.5(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	PKCS12_BAGS_adb, .-PKCS12_BAGS_adb
	.section	.rodata
.LC11:
	.string	"type"
.LC12:
	.string	"PKCS12_BAGS"
	.section	.data.rel.ro
	.align 32
	.type	PKCS12_BAGS_seq_tt, @object
	.size	PKCS12_BAGS_seq_tt, 80
PKCS12_BAGS_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC11
	.quad	ASN1_OBJECT_it
	.quad	256
	.quad	-1
	.quad	0
	.quad	.LC12
	.quad	PKCS12_BAGS_adb
	.text
	.globl	PKCS12_BAGS_it
	.type	PKCS12_BAGS_it, @function
PKCS12_BAGS_it:
.LFB532:
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
.LFE532:
	.size	PKCS12_BAGS_it, .-PKCS12_BAGS_it
	.globl	d2i_PKCS12_BAGS
	.type	d2i_PKCS12_BAGS, @function
d2i_PKCS12_BAGS:
.LFB533:
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
	call	PKCS12_BAGS_it@PLT
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
.LFE533:
	.size	d2i_PKCS12_BAGS, .-d2i_PKCS12_BAGS
	.globl	i2d_PKCS12_BAGS
	.type	i2d_PKCS12_BAGS, @function
i2d_PKCS12_BAGS:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PKCS12_BAGS_it@PLT
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
.LFE534:
	.size	i2d_PKCS12_BAGS, .-i2d_PKCS12_BAGS
	.globl	PKCS12_BAGS_new
	.type	PKCS12_BAGS_new, @function
PKCS12_BAGS_new:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	PKCS12_BAGS_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	PKCS12_BAGS_new, .-PKCS12_BAGS_new
	.globl	PKCS12_BAGS_free
	.type	PKCS12_BAGS_free, @function
PKCS12_BAGS_free:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	PKCS12_BAGS_it@PLT
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
.LFE536:
	.size	PKCS12_BAGS_free, .-PKCS12_BAGS_free
	.section	.data.rel.ro
	.align 32
	.type	safebag_default_tt, @object
	.size	safebag_default_tt, 40
safebag_default_tt:
	.quad	144
	.quad	0
	.quad	8
	.quad	.LC7
	.quad	ASN1_ANY_it
	.section	.rodata
.LC13:
	.string	"value.keybag"
.LC14:
	.string	"value.shkeybag"
.LC15:
	.string	"value.safes"
.LC16:
	.string	"value.bag"
	.section	.data.rel.ro
	.align 32
	.type	PKCS12_SAFEBAG_adbtbl, @object
	.size	PKCS12_SAFEBAG_adbtbl, 288
PKCS12_SAFEBAG_adbtbl:
	.quad	150
	.quad	144
	.quad	0
	.quad	8
	.quad	.LC13
	.quad	PKCS8_PRIV_KEY_INFO_it
	.quad	151
	.quad	144
	.quad	0
	.quad	8
	.quad	.LC14
	.quad	X509_SIG_it
	.quad	155
	.quad	148
	.quad	0
	.quad	8
	.quad	.LC15
	.quad	PKCS12_SAFEBAG_it
	.quad	152
	.quad	144
	.quad	0
	.quad	8
	.quad	.LC16
	.quad	PKCS12_BAGS_it
	.quad	153
	.quad	144
	.quad	0
	.quad	8
	.quad	.LC16
	.quad	PKCS12_BAGS_it
	.quad	154
	.quad	144
	.quad	0
	.quad	8
	.quad	.LC16
	.quad	PKCS12_BAGS_it
	.text
	.type	PKCS12_SAFEBAG_adb, @function
PKCS12_SAFEBAG_adb:
.LFB537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	internal_adb.3(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	PKCS12_SAFEBAG_adb, .-PKCS12_SAFEBAG_adb
	.section	.rodata
.LC17:
	.string	"PKCS12_SAFEBAG"
.LC18:
	.string	"attrib"
	.section	.data.rel.ro
	.align 32
	.type	PKCS12_SAFEBAG_seq_tt, @object
	.size	PKCS12_SAFEBAG_seq_tt, 120
PKCS12_SAFEBAG_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC11
	.quad	ASN1_OBJECT_it
	.quad	256
	.quad	-1
	.quad	0
	.quad	.LC17
	.quad	PKCS12_SAFEBAG_adb
	.quad	3
	.quad	0
	.quad	16
	.quad	.LC18
	.quad	X509_ATTRIBUTE_it
	.text
	.globl	PKCS12_SAFEBAG_it
	.type	PKCS12_SAFEBAG_it, @function
PKCS12_SAFEBAG_it:
.LFB538:
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
.LFE538:
	.size	PKCS12_SAFEBAG_it, .-PKCS12_SAFEBAG_it
	.globl	d2i_PKCS12_SAFEBAG
	.type	d2i_PKCS12_SAFEBAG, @function
d2i_PKCS12_SAFEBAG:
.LFB539:
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
	call	PKCS12_SAFEBAG_it@PLT
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
.LFE539:
	.size	d2i_PKCS12_SAFEBAG, .-d2i_PKCS12_SAFEBAG
	.globl	i2d_PKCS12_SAFEBAG
	.type	i2d_PKCS12_SAFEBAG, @function
i2d_PKCS12_SAFEBAG:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PKCS12_SAFEBAG_it@PLT
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
.LFE540:
	.size	i2d_PKCS12_SAFEBAG, .-i2d_PKCS12_SAFEBAG
	.globl	PKCS12_SAFEBAG_new
	.type	PKCS12_SAFEBAG_new, @function
PKCS12_SAFEBAG_new:
.LFB541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	PKCS12_SAFEBAG_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	PKCS12_SAFEBAG_new, .-PKCS12_SAFEBAG_new
	.globl	PKCS12_SAFEBAG_free
	.type	PKCS12_SAFEBAG_free, @function
PKCS12_SAFEBAG_free:
.LFB542:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	PKCS12_SAFEBAG_it@PLT
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
.LFE542:
	.size	PKCS12_SAFEBAG_free, .-PKCS12_SAFEBAG_free
	.section	.rodata
.LC19:
	.string	"PKCS12_SAFEBAGS"
	.section	.data.rel.ro
	.align 32
	.type	PKCS12_SAFEBAGS_item_tt, @object
	.size	PKCS12_SAFEBAGS_item_tt, 40
PKCS12_SAFEBAGS_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC19
	.quad	PKCS12_SAFEBAG_it
	.text
	.globl	PKCS12_SAFEBAGS_it
	.type	PKCS12_SAFEBAGS_it, @function
PKCS12_SAFEBAGS_it:
.LFB543:
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
.LFE543:
	.size	PKCS12_SAFEBAGS_it, .-PKCS12_SAFEBAGS_it
	.section	.rodata
.LC20:
	.string	"PKCS12_AUTHSAFES"
	.section	.data.rel.ro
	.align 32
	.type	PKCS12_AUTHSAFES_item_tt, @object
	.size	PKCS12_AUTHSAFES_item_tt, 40
PKCS12_AUTHSAFES_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC20
	.quad	PKCS7_it
	.text
	.globl	PKCS12_AUTHSAFES_it
	.type	PKCS12_AUTHSAFES_it, @function
PKCS12_AUTHSAFES_it:
.LFB544:
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
.LFE544:
	.size	PKCS12_AUTHSAFES_it, .-PKCS12_AUTHSAFES_it
	.section	.rodata
.LC21:
	.string	"PKCS12"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.7, @object
	.size	local_it.7, 56
local_it.7:
	.byte	1
	.zero	7
	.quad	16
	.quad	PKCS12_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC21
	.section	.rodata
.LC22:
	.string	"PKCS12_MAC_DATA"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.6, @object
	.size	local_it.6, 56
local_it.6:
	.byte	1
	.zero	7
	.quad	16
	.quad	PKCS12_MAC_DATA_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC22
	.align 32
	.type	internal_adb.5, @object
	.size	internal_adb.5, 56
internal_adb.5:
	.quad	0
	.quad	0
	.quad	0
	.quad	PKCS12_BAGS_adbtbl
	.quad	3
	.quad	bag_default_tt
	.quad	0
	.align 32
	.type	local_it.4, @object
	.size	local_it.4, 56
local_it.4:
	.byte	1
	.zero	7
	.quad	16
	.quad	PKCS12_BAGS_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC12
	.align 32
	.type	internal_adb.3, @object
	.size	internal_adb.3, 56
internal_adb.3:
	.quad	0
	.quad	0
	.quad	0
	.quad	PKCS12_SAFEBAG_adbtbl
	.quad	6
	.quad	safebag_default_tt
	.quad	0
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	1
	.zero	7
	.quad	16
	.quad	PKCS12_SAFEBAG_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC17
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	0
	.zero	7
	.quad	-1
	.quad	PKCS12_SAFEBAGS_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC19
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	0
	.zero	7
	.quad	-1
	.quad	PKCS12_AUTHSAFES_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC20
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

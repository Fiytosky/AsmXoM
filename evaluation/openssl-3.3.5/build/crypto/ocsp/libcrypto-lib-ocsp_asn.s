	.file	"ocsp_asn.c"
	.text
	.section	.rodata
.LC0:
	.string	"signatureAlgorithm"
.LC1:
	.string	"signature"
.LC2:
	.string	"certs"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	OCSP_SIGNATURE_seq_tt, @object
	.size	OCSP_SIGNATURE_seq_tt, 120
OCSP_SIGNATURE_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC1
	.quad	ASN1_BIT_STRING_it
	.quad	149
	.quad	0
	.quad	24
	.quad	.LC2
	.quad	X509_it
	.text
	.globl	OCSP_SIGNATURE_it
	.type	OCSP_SIGNATURE_it, @function
OCSP_SIGNATURE_it:
.LFB608:
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
.LFE608:
	.size	OCSP_SIGNATURE_it, .-OCSP_SIGNATURE_it
	.globl	d2i_OCSP_SIGNATURE
	.type	d2i_OCSP_SIGNATURE, @function
d2i_OCSP_SIGNATURE:
.LFB609:
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
	call	OCSP_SIGNATURE_it@PLT
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
.LFE609:
	.size	d2i_OCSP_SIGNATURE, .-d2i_OCSP_SIGNATURE
	.globl	i2d_OCSP_SIGNATURE
	.type	i2d_OCSP_SIGNATURE, @function
i2d_OCSP_SIGNATURE:
.LFB610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OCSP_SIGNATURE_it@PLT
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
.LFE610:
	.size	i2d_OCSP_SIGNATURE, .-i2d_OCSP_SIGNATURE
	.globl	OCSP_SIGNATURE_new
	.type	OCSP_SIGNATURE_new, @function
OCSP_SIGNATURE_new:
.LFB611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OCSP_SIGNATURE_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	OCSP_SIGNATURE_new, .-OCSP_SIGNATURE_new
	.globl	OCSP_SIGNATURE_free
	.type	OCSP_SIGNATURE_free, @function
OCSP_SIGNATURE_free:
.LFB612:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OCSP_SIGNATURE_it@PLT
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
.LFE612:
	.size	OCSP_SIGNATURE_free, .-OCSP_SIGNATURE_free
	.section	.rodata
.LC3:
	.string	"hashAlgorithm"
.LC4:
	.string	"issuerNameHash"
.LC5:
	.string	"issuerKeyHash"
.LC6:
	.string	"serialNumber"
	.section	.data.rel.ro
	.align 32
	.type	OCSP_CERTID_seq_tt, @object
	.size	OCSP_CERTID_seq_tt, 160
OCSP_CERTID_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC3
	.quad	X509_ALGOR_it
	.quad	4096
	.quad	0
	.quad	16
	.quad	.LC4
	.quad	ASN1_OCTET_STRING_it
	.quad	4096
	.quad	0
	.quad	40
	.quad	.LC5
	.quad	ASN1_OCTET_STRING_it
	.quad	4096
	.quad	0
	.quad	64
	.quad	.LC6
	.quad	ASN1_INTEGER_it
	.text
	.globl	OCSP_CERTID_it
	.type	OCSP_CERTID_it, @function
OCSP_CERTID_it:
.LFB613:
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
.LFE613:
	.size	OCSP_CERTID_it, .-OCSP_CERTID_it
	.globl	d2i_OCSP_CERTID
	.type	d2i_OCSP_CERTID, @function
d2i_OCSP_CERTID:
.LFB614:
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
	call	OCSP_CERTID_it@PLT
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
.LFE614:
	.size	d2i_OCSP_CERTID, .-d2i_OCSP_CERTID
	.globl	i2d_OCSP_CERTID
	.type	i2d_OCSP_CERTID, @function
i2d_OCSP_CERTID:
.LFB615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OCSP_CERTID_it@PLT
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
.LFE615:
	.size	i2d_OCSP_CERTID, .-i2d_OCSP_CERTID
	.globl	OCSP_CERTID_new
	.type	OCSP_CERTID_new, @function
OCSP_CERTID_new:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OCSP_CERTID_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	OCSP_CERTID_new, .-OCSP_CERTID_new
	.globl	OCSP_CERTID_free
	.type	OCSP_CERTID_free, @function
OCSP_CERTID_free:
.LFB617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OCSP_CERTID_it@PLT
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
.LFE617:
	.size	OCSP_CERTID_free, .-OCSP_CERTID_free
	.section	.rodata
.LC7:
	.string	"reqCert"
.LC8:
	.string	"singleRequestExtensions"
	.section	.data.rel.ro
	.align 32
	.type	OCSP_ONEREQ_seq_tt, @object
	.size	OCSP_ONEREQ_seq_tt, 80
OCSP_ONEREQ_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC7
	.quad	OCSP_CERTID_it
	.quad	149
	.quad	0
	.quad	8
	.quad	.LC8
	.quad	X509_EXTENSION_it
	.text
	.globl	OCSP_ONEREQ_it
	.type	OCSP_ONEREQ_it, @function
OCSP_ONEREQ_it:
.LFB618:
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
.LFE618:
	.size	OCSP_ONEREQ_it, .-OCSP_ONEREQ_it
	.globl	d2i_OCSP_ONEREQ
	.type	d2i_OCSP_ONEREQ, @function
d2i_OCSP_ONEREQ:
.LFB619:
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
	call	OCSP_ONEREQ_it@PLT
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
.LFE619:
	.size	d2i_OCSP_ONEREQ, .-d2i_OCSP_ONEREQ
	.globl	i2d_OCSP_ONEREQ
	.type	i2d_OCSP_ONEREQ, @function
i2d_OCSP_ONEREQ:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OCSP_ONEREQ_it@PLT
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
.LFE620:
	.size	i2d_OCSP_ONEREQ, .-i2d_OCSP_ONEREQ
	.globl	OCSP_ONEREQ_new
	.type	OCSP_ONEREQ_new, @function
OCSP_ONEREQ_new:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OCSP_ONEREQ_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	OCSP_ONEREQ_new, .-OCSP_ONEREQ_new
	.globl	OCSP_ONEREQ_free
	.type	OCSP_ONEREQ_free, @function
OCSP_ONEREQ_free:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OCSP_ONEREQ_it@PLT
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
.LFE622:
	.size	OCSP_ONEREQ_free, .-OCSP_ONEREQ_free
	.section	.rodata
.LC9:
	.string	"version"
.LC10:
	.string	"requestorName"
.LC11:
	.string	"requestList"
.LC12:
	.string	"requestExtensions"
	.section	.data.rel.ro
	.align 32
	.type	OCSP_REQINFO_seq_tt, @object
	.size	OCSP_REQINFO_seq_tt, 160
OCSP_REQINFO_seq_tt:
	.quad	145
	.quad	0
	.quad	0
	.quad	.LC9
	.quad	ASN1_INTEGER_it
	.quad	145
	.quad	1
	.quad	8
	.quad	.LC10
	.quad	GENERAL_NAME_it
	.quad	4
	.quad	0
	.quad	16
	.quad	.LC11
	.quad	OCSP_ONEREQ_it
	.quad	149
	.quad	2
	.quad	24
	.quad	.LC12
	.quad	X509_EXTENSION_it
	.text
	.globl	OCSP_REQINFO_it
	.type	OCSP_REQINFO_it, @function
OCSP_REQINFO_it:
.LFB623:
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
.LFE623:
	.size	OCSP_REQINFO_it, .-OCSP_REQINFO_it
	.globl	d2i_OCSP_REQINFO
	.type	d2i_OCSP_REQINFO, @function
d2i_OCSP_REQINFO:
.LFB624:
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
	call	OCSP_REQINFO_it@PLT
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
.LFE624:
	.size	d2i_OCSP_REQINFO, .-d2i_OCSP_REQINFO
	.globl	i2d_OCSP_REQINFO
	.type	i2d_OCSP_REQINFO, @function
i2d_OCSP_REQINFO:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OCSP_REQINFO_it@PLT
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
.LFE625:
	.size	i2d_OCSP_REQINFO, .-i2d_OCSP_REQINFO
	.globl	OCSP_REQINFO_new
	.type	OCSP_REQINFO_new, @function
OCSP_REQINFO_new:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OCSP_REQINFO_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	OCSP_REQINFO_new, .-OCSP_REQINFO_new
	.globl	OCSP_REQINFO_free
	.type	OCSP_REQINFO_free, @function
OCSP_REQINFO_free:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OCSP_REQINFO_it@PLT
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
.LFE627:
	.size	OCSP_REQINFO_free, .-OCSP_REQINFO_free
	.section	.rodata
.LC13:
	.string	"tbsRequest"
.LC14:
	.string	"optionalSignature"
	.section	.data.rel.ro
	.align 32
	.type	OCSP_REQUEST_seq_tt, @object
	.size	OCSP_REQUEST_seq_tt, 80
OCSP_REQUEST_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	OCSP_REQINFO_it
	.quad	145
	.quad	0
	.quad	32
	.quad	.LC14
	.quad	OCSP_SIGNATURE_it
	.text
	.globl	OCSP_REQUEST_it
	.type	OCSP_REQUEST_it, @function
OCSP_REQUEST_it:
.LFB628:
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
.LFE628:
	.size	OCSP_REQUEST_it, .-OCSP_REQUEST_it
	.globl	d2i_OCSP_REQUEST
	.type	d2i_OCSP_REQUEST, @function
d2i_OCSP_REQUEST:
.LFB629:
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
	call	OCSP_REQUEST_it@PLT
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
.LFE629:
	.size	d2i_OCSP_REQUEST, .-d2i_OCSP_REQUEST
	.globl	i2d_OCSP_REQUEST
	.type	i2d_OCSP_REQUEST, @function
i2d_OCSP_REQUEST:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OCSP_REQUEST_it@PLT
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
.LFE630:
	.size	i2d_OCSP_REQUEST, .-i2d_OCSP_REQUEST
	.globl	OCSP_REQUEST_new
	.type	OCSP_REQUEST_new, @function
OCSP_REQUEST_new:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OCSP_REQUEST_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	OCSP_REQUEST_new, .-OCSP_REQUEST_new
	.globl	OCSP_REQUEST_free
	.type	OCSP_REQUEST_free, @function
OCSP_REQUEST_free:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OCSP_REQUEST_it@PLT
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
.LFE632:
	.size	OCSP_REQUEST_free, .-OCSP_REQUEST_free
	.section	.rodata
.LC15:
	.string	"responseType"
.LC16:
	.string	"response"
	.section	.data.rel.ro
	.align 32
	.type	OCSP_RESPBYTES_seq_tt, @object
	.size	OCSP_RESPBYTES_seq_tt, 80
OCSP_RESPBYTES_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC15
	.quad	ASN1_OBJECT_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC16
	.quad	ASN1_OCTET_STRING_it
	.text
	.globl	OCSP_RESPBYTES_it
	.type	OCSP_RESPBYTES_it, @function
OCSP_RESPBYTES_it:
.LFB633:
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
.LFE633:
	.size	OCSP_RESPBYTES_it, .-OCSP_RESPBYTES_it
	.globl	d2i_OCSP_RESPBYTES
	.type	d2i_OCSP_RESPBYTES, @function
d2i_OCSP_RESPBYTES:
.LFB634:
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
	call	OCSP_RESPBYTES_it@PLT
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
.LFE634:
	.size	d2i_OCSP_RESPBYTES, .-d2i_OCSP_RESPBYTES
	.globl	i2d_OCSP_RESPBYTES
	.type	i2d_OCSP_RESPBYTES, @function
i2d_OCSP_RESPBYTES:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OCSP_RESPBYTES_it@PLT
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
.LFE635:
	.size	i2d_OCSP_RESPBYTES, .-i2d_OCSP_RESPBYTES
	.globl	OCSP_RESPBYTES_new
	.type	OCSP_RESPBYTES_new, @function
OCSP_RESPBYTES_new:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OCSP_RESPBYTES_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	OCSP_RESPBYTES_new, .-OCSP_RESPBYTES_new
	.globl	OCSP_RESPBYTES_free
	.type	OCSP_RESPBYTES_free, @function
OCSP_RESPBYTES_free:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OCSP_RESPBYTES_it@PLT
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
.LFE637:
	.size	OCSP_RESPBYTES_free, .-OCSP_RESPBYTES_free
	.section	.rodata
.LC17:
	.string	"responseStatus"
.LC18:
	.string	"responseBytes"
	.section	.data.rel.ro
	.align 32
	.type	OCSP_RESPONSE_seq_tt, @object
	.size	OCSP_RESPONSE_seq_tt, 80
OCSP_RESPONSE_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC17
	.quad	ASN1_ENUMERATED_it
	.quad	145
	.quad	0
	.quad	8
	.quad	.LC18
	.quad	OCSP_RESPBYTES_it
	.text
	.globl	OCSP_RESPONSE_it
	.type	OCSP_RESPONSE_it, @function
OCSP_RESPONSE_it:
.LFB638:
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
.LFE638:
	.size	OCSP_RESPONSE_it, .-OCSP_RESPONSE_it
	.globl	d2i_OCSP_RESPONSE
	.type	d2i_OCSP_RESPONSE, @function
d2i_OCSP_RESPONSE:
.LFB639:
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
	call	OCSP_RESPONSE_it@PLT
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
.LFE639:
	.size	d2i_OCSP_RESPONSE, .-d2i_OCSP_RESPONSE
	.globl	i2d_OCSP_RESPONSE
	.type	i2d_OCSP_RESPONSE, @function
i2d_OCSP_RESPONSE:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OCSP_RESPONSE_it@PLT
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
.LFE640:
	.size	i2d_OCSP_RESPONSE, .-i2d_OCSP_RESPONSE
	.globl	OCSP_RESPONSE_new
	.type	OCSP_RESPONSE_new, @function
OCSP_RESPONSE_new:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OCSP_RESPONSE_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	OCSP_RESPONSE_new, .-OCSP_RESPONSE_new
	.globl	OCSP_RESPONSE_free
	.type	OCSP_RESPONSE_free, @function
OCSP_RESPONSE_free:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OCSP_RESPONSE_it@PLT
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
.LFE642:
	.size	OCSP_RESPONSE_free, .-OCSP_RESPONSE_free
	.section	.rodata
.LC19:
	.string	"value.byName"
.LC20:
	.string	"value.byKey"
	.section	.data.rel.ro
	.align 32
	.type	OCSP_RESPID_ch_tt, @object
	.size	OCSP_RESPID_ch_tt, 80
OCSP_RESPID_ch_tt:
	.quad	144
	.quad	1
	.quad	8
	.quad	.LC19
	.quad	X509_NAME_it
	.quad	144
	.quad	2
	.quad	8
	.quad	.LC20
	.quad	ASN1_OCTET_STRING_it
	.text
	.globl	OCSP_RESPID_it
	.type	OCSP_RESPID_it, @function
OCSP_RESPID_it:
.LFB643:
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
.LFE643:
	.size	OCSP_RESPID_it, .-OCSP_RESPID_it
	.globl	d2i_OCSP_RESPID
	.type	d2i_OCSP_RESPID, @function
d2i_OCSP_RESPID:
.LFB644:
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
	call	OCSP_RESPID_it@PLT
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
.LFE644:
	.size	d2i_OCSP_RESPID, .-d2i_OCSP_RESPID
	.globl	i2d_OCSP_RESPID
	.type	i2d_OCSP_RESPID, @function
i2d_OCSP_RESPID:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OCSP_RESPID_it@PLT
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
.LFE645:
	.size	i2d_OCSP_RESPID, .-i2d_OCSP_RESPID
	.globl	OCSP_RESPID_new
	.type	OCSP_RESPID_new, @function
OCSP_RESPID_new:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OCSP_RESPID_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	OCSP_RESPID_new, .-OCSP_RESPID_new
	.globl	OCSP_RESPID_free
	.type	OCSP_RESPID_free, @function
OCSP_RESPID_free:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OCSP_RESPID_it@PLT
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
.LFE647:
	.size	OCSP_RESPID_free, .-OCSP_RESPID_free
	.section	.rodata
.LC21:
	.string	"revocationTime"
.LC22:
	.string	"revocationReason"
	.section	.data.rel.ro
	.align 32
	.type	OCSP_REVOKEDINFO_seq_tt, @object
	.size	OCSP_REVOKEDINFO_seq_tt, 80
OCSP_REVOKEDINFO_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC21
	.quad	ASN1_GENERALIZEDTIME_it
	.quad	145
	.quad	0
	.quad	8
	.quad	.LC22
	.quad	ASN1_ENUMERATED_it
	.text
	.globl	OCSP_REVOKEDINFO_it
	.type	OCSP_REVOKEDINFO_it, @function
OCSP_REVOKEDINFO_it:
.LFB648:
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
.LFE648:
	.size	OCSP_REVOKEDINFO_it, .-OCSP_REVOKEDINFO_it
	.globl	d2i_OCSP_REVOKEDINFO
	.type	d2i_OCSP_REVOKEDINFO, @function
d2i_OCSP_REVOKEDINFO:
.LFB649:
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
	call	OCSP_REVOKEDINFO_it@PLT
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
.LFE649:
	.size	d2i_OCSP_REVOKEDINFO, .-d2i_OCSP_REVOKEDINFO
	.globl	i2d_OCSP_REVOKEDINFO
	.type	i2d_OCSP_REVOKEDINFO, @function
i2d_OCSP_REVOKEDINFO:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OCSP_REVOKEDINFO_it@PLT
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
.LFE650:
	.size	i2d_OCSP_REVOKEDINFO, .-i2d_OCSP_REVOKEDINFO
	.globl	OCSP_REVOKEDINFO_new
	.type	OCSP_REVOKEDINFO_new, @function
OCSP_REVOKEDINFO_new:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OCSP_REVOKEDINFO_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	OCSP_REVOKEDINFO_new, .-OCSP_REVOKEDINFO_new
	.globl	OCSP_REVOKEDINFO_free
	.type	OCSP_REVOKEDINFO_free, @function
OCSP_REVOKEDINFO_free:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OCSP_REVOKEDINFO_it@PLT
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
.LFE652:
	.size	OCSP_REVOKEDINFO_free, .-OCSP_REVOKEDINFO_free
	.section	.rodata
.LC23:
	.string	"value.good"
.LC24:
	.string	"value.revoked"
.LC25:
	.string	"value.unknown"
	.section	.data.rel.ro
	.align 32
	.type	OCSP_CERTSTATUS_ch_tt, @object
	.size	OCSP_CERTSTATUS_ch_tt, 120
OCSP_CERTSTATUS_ch_tt:
	.quad	136
	.quad	0
	.quad	8
	.quad	.LC23
	.quad	ASN1_NULL_it
	.quad	136
	.quad	1
	.quad	8
	.quad	.LC24
	.quad	OCSP_REVOKEDINFO_it
	.quad	136
	.quad	2
	.quad	8
	.quad	.LC25
	.quad	ASN1_NULL_it
	.text
	.globl	OCSP_CERTSTATUS_it
	.type	OCSP_CERTSTATUS_it, @function
OCSP_CERTSTATUS_it:
.LFB653:
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
.LFE653:
	.size	OCSP_CERTSTATUS_it, .-OCSP_CERTSTATUS_it
	.globl	d2i_OCSP_CERTSTATUS
	.type	d2i_OCSP_CERTSTATUS, @function
d2i_OCSP_CERTSTATUS:
.LFB654:
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
	call	OCSP_CERTSTATUS_it@PLT
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
.LFE654:
	.size	d2i_OCSP_CERTSTATUS, .-d2i_OCSP_CERTSTATUS
	.globl	i2d_OCSP_CERTSTATUS
	.type	i2d_OCSP_CERTSTATUS, @function
i2d_OCSP_CERTSTATUS:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OCSP_CERTSTATUS_it@PLT
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
.LFE655:
	.size	i2d_OCSP_CERTSTATUS, .-i2d_OCSP_CERTSTATUS
	.globl	OCSP_CERTSTATUS_new
	.type	OCSP_CERTSTATUS_new, @function
OCSP_CERTSTATUS_new:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OCSP_CERTSTATUS_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	OCSP_CERTSTATUS_new, .-OCSP_CERTSTATUS_new
	.globl	OCSP_CERTSTATUS_free
	.type	OCSP_CERTSTATUS_free, @function
OCSP_CERTSTATUS_free:
.LFB657:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OCSP_CERTSTATUS_it@PLT
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
.LFE657:
	.size	OCSP_CERTSTATUS_free, .-OCSP_CERTSTATUS_free
	.section	.rodata
.LC26:
	.string	"certId"
.LC27:
	.string	"certStatus"
.LC28:
	.string	"thisUpdate"
.LC29:
	.string	"nextUpdate"
.LC30:
	.string	"singleExtensions"
	.section	.data.rel.ro
	.align 32
	.type	OCSP_SINGLERESP_seq_tt, @object
	.size	OCSP_SINGLERESP_seq_tt, 200
OCSP_SINGLERESP_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC26
	.quad	OCSP_CERTID_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC27
	.quad	OCSP_CERTSTATUS_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC28
	.quad	ASN1_GENERALIZEDTIME_it
	.quad	145
	.quad	0
	.quad	24
	.quad	.LC29
	.quad	ASN1_GENERALIZEDTIME_it
	.quad	149
	.quad	1
	.quad	32
	.quad	.LC30
	.quad	X509_EXTENSION_it
	.text
	.globl	OCSP_SINGLERESP_it
	.type	OCSP_SINGLERESP_it, @function
OCSP_SINGLERESP_it:
.LFB658:
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
.LFE658:
	.size	OCSP_SINGLERESP_it, .-OCSP_SINGLERESP_it
	.globl	d2i_OCSP_SINGLERESP
	.type	d2i_OCSP_SINGLERESP, @function
d2i_OCSP_SINGLERESP:
.LFB659:
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
	call	OCSP_SINGLERESP_it@PLT
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
.LFE659:
	.size	d2i_OCSP_SINGLERESP, .-d2i_OCSP_SINGLERESP
	.globl	i2d_OCSP_SINGLERESP
	.type	i2d_OCSP_SINGLERESP, @function
i2d_OCSP_SINGLERESP:
.LFB660:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OCSP_SINGLERESP_it@PLT
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
.LFE660:
	.size	i2d_OCSP_SINGLERESP, .-i2d_OCSP_SINGLERESP
	.globl	OCSP_SINGLERESP_new
	.type	OCSP_SINGLERESP_new, @function
OCSP_SINGLERESP_new:
.LFB661:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OCSP_SINGLERESP_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	OCSP_SINGLERESP_new, .-OCSP_SINGLERESP_new
	.globl	OCSP_SINGLERESP_free
	.type	OCSP_SINGLERESP_free, @function
OCSP_SINGLERESP_free:
.LFB662:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OCSP_SINGLERESP_it@PLT
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
.LFE662:
	.size	OCSP_SINGLERESP_free, .-OCSP_SINGLERESP_free
	.section	.rodata
.LC31:
	.string	"responderId"
.LC32:
	.string	"producedAt"
.LC33:
	.string	"responses"
.LC34:
	.string	"responseExtensions"
	.section	.data.rel.ro
	.align 32
	.type	OCSP_RESPDATA_seq_tt, @object
	.size	OCSP_RESPDATA_seq_tt, 200
OCSP_RESPDATA_seq_tt:
	.quad	145
	.quad	0
	.quad	0
	.quad	.LC9
	.quad	ASN1_INTEGER_it
	.quad	4096
	.quad	0
	.quad	8
	.quad	.LC31
	.quad	OCSP_RESPID_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC32
	.quad	ASN1_GENERALIZEDTIME_it
	.quad	4
	.quad	0
	.quad	32
	.quad	.LC33
	.quad	OCSP_SINGLERESP_it
	.quad	149
	.quad	1
	.quad	40
	.quad	.LC34
	.quad	X509_EXTENSION_it
	.text
	.globl	OCSP_RESPDATA_it
	.type	OCSP_RESPDATA_it, @function
OCSP_RESPDATA_it:
.LFB663:
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
.LFE663:
	.size	OCSP_RESPDATA_it, .-OCSP_RESPDATA_it
	.globl	d2i_OCSP_RESPDATA
	.type	d2i_OCSP_RESPDATA, @function
d2i_OCSP_RESPDATA:
.LFB664:
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
	call	OCSP_RESPDATA_it@PLT
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
.LFE664:
	.size	d2i_OCSP_RESPDATA, .-d2i_OCSP_RESPDATA
	.globl	i2d_OCSP_RESPDATA
	.type	i2d_OCSP_RESPDATA, @function
i2d_OCSP_RESPDATA:
.LFB665:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OCSP_RESPDATA_it@PLT
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
.LFE665:
	.size	i2d_OCSP_RESPDATA, .-i2d_OCSP_RESPDATA
	.globl	OCSP_RESPDATA_new
	.type	OCSP_RESPDATA_new, @function
OCSP_RESPDATA_new:
.LFB666:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OCSP_RESPDATA_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	OCSP_RESPDATA_new, .-OCSP_RESPDATA_new
	.globl	OCSP_RESPDATA_free
	.type	OCSP_RESPDATA_free, @function
OCSP_RESPDATA_free:
.LFB667:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OCSP_RESPDATA_it@PLT
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
.LFE667:
	.size	OCSP_RESPDATA_free, .-OCSP_RESPDATA_free
	.section	.rodata
.LC35:
	.string	"tbsResponseData"
	.section	.data.rel.ro
	.align 32
	.type	OCSP_BASICRESP_seq_tt, @object
	.size	OCSP_BASICRESP_seq_tt, 160
OCSP_BASICRESP_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC35
	.quad	OCSP_RESPDATA_it
	.quad	4096
	.quad	0
	.quad	48
	.quad	.LC0
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	64
	.quad	.LC1
	.quad	ASN1_BIT_STRING_it
	.quad	149
	.quad	0
	.quad	72
	.quad	.LC2
	.quad	X509_it
	.text
	.globl	OCSP_BASICRESP_it
	.type	OCSP_BASICRESP_it, @function
OCSP_BASICRESP_it:
.LFB668:
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
.LFE668:
	.size	OCSP_BASICRESP_it, .-OCSP_BASICRESP_it
	.globl	d2i_OCSP_BASICRESP
	.type	d2i_OCSP_BASICRESP, @function
d2i_OCSP_BASICRESP:
.LFB669:
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
	call	OCSP_BASICRESP_it@PLT
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
.LFE669:
	.size	d2i_OCSP_BASICRESP, .-d2i_OCSP_BASICRESP
	.globl	i2d_OCSP_BASICRESP
	.type	i2d_OCSP_BASICRESP, @function
i2d_OCSP_BASICRESP:
.LFB670:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OCSP_BASICRESP_it@PLT
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
.LFE670:
	.size	i2d_OCSP_BASICRESP, .-i2d_OCSP_BASICRESP
	.globl	OCSP_BASICRESP_new
	.type	OCSP_BASICRESP_new, @function
OCSP_BASICRESP_new:
.LFB671:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OCSP_BASICRESP_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	OCSP_BASICRESP_new, .-OCSP_BASICRESP_new
	.globl	OCSP_BASICRESP_free
	.type	OCSP_BASICRESP_free, @function
OCSP_BASICRESP_free:
.LFB672:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OCSP_BASICRESP_it@PLT
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
.LFE672:
	.size	OCSP_BASICRESP_free, .-OCSP_BASICRESP_free
	.section	.rodata
.LC36:
	.string	"crlUrl"
.LC37:
	.string	"crlNum"
.LC38:
	.string	"crlTime"
	.section	.data.rel.ro
	.align 32
	.type	OCSP_CRLID_seq_tt, @object
	.size	OCSP_CRLID_seq_tt, 120
OCSP_CRLID_seq_tt:
	.quad	145
	.quad	0
	.quad	0
	.quad	.LC36
	.quad	ASN1_IA5STRING_it
	.quad	145
	.quad	1
	.quad	8
	.quad	.LC37
	.quad	ASN1_INTEGER_it
	.quad	145
	.quad	2
	.quad	16
	.quad	.LC38
	.quad	ASN1_GENERALIZEDTIME_it
	.text
	.globl	OCSP_CRLID_it
	.type	OCSP_CRLID_it, @function
OCSP_CRLID_it:
.LFB673:
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
.LFE673:
	.size	OCSP_CRLID_it, .-OCSP_CRLID_it
	.globl	d2i_OCSP_CRLID
	.type	d2i_OCSP_CRLID, @function
d2i_OCSP_CRLID:
.LFB674:
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
	call	OCSP_CRLID_it@PLT
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
.LFE674:
	.size	d2i_OCSP_CRLID, .-d2i_OCSP_CRLID
	.globl	i2d_OCSP_CRLID
	.type	i2d_OCSP_CRLID, @function
i2d_OCSP_CRLID:
.LFB675:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OCSP_CRLID_it@PLT
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
.LFE675:
	.size	i2d_OCSP_CRLID, .-i2d_OCSP_CRLID
	.globl	OCSP_CRLID_new
	.type	OCSP_CRLID_new, @function
OCSP_CRLID_new:
.LFB676:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OCSP_CRLID_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE676:
	.size	OCSP_CRLID_new, .-OCSP_CRLID_new
	.globl	OCSP_CRLID_free
	.type	OCSP_CRLID_free, @function
OCSP_CRLID_free:
.LFB677:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OCSP_CRLID_it@PLT
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
.LFE677:
	.size	OCSP_CRLID_free, .-OCSP_CRLID_free
	.section	.rodata
.LC39:
	.string	"issuer"
.LC40:
	.string	"locator"
	.section	.data.rel.ro
	.align 32
	.type	OCSP_SERVICELOC_seq_tt, @object
	.size	OCSP_SERVICELOC_seq_tt, 80
OCSP_SERVICELOC_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC39
	.quad	X509_NAME_it
	.quad	5
	.quad	0
	.quad	8
	.quad	.LC40
	.quad	ACCESS_DESCRIPTION_it
	.text
	.globl	OCSP_SERVICELOC_it
	.type	OCSP_SERVICELOC_it, @function
OCSP_SERVICELOC_it:
.LFB678:
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
.LFE678:
	.size	OCSP_SERVICELOC_it, .-OCSP_SERVICELOC_it
	.globl	d2i_OCSP_SERVICELOC
	.type	d2i_OCSP_SERVICELOC, @function
d2i_OCSP_SERVICELOC:
.LFB679:
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
	call	OCSP_SERVICELOC_it@PLT
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
.LFE679:
	.size	d2i_OCSP_SERVICELOC, .-d2i_OCSP_SERVICELOC
	.globl	i2d_OCSP_SERVICELOC
	.type	i2d_OCSP_SERVICELOC, @function
i2d_OCSP_SERVICELOC:
.LFB680:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OCSP_SERVICELOC_it@PLT
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
.LFE680:
	.size	i2d_OCSP_SERVICELOC, .-i2d_OCSP_SERVICELOC
	.globl	OCSP_SERVICELOC_new
	.type	OCSP_SERVICELOC_new, @function
OCSP_SERVICELOC_new:
.LFB681:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OCSP_SERVICELOC_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	OCSP_SERVICELOC_new, .-OCSP_SERVICELOC_new
	.globl	OCSP_SERVICELOC_free
	.type	OCSP_SERVICELOC_free, @function
OCSP_SERVICELOC_free:
.LFB682:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OCSP_SERVICELOC_it@PLT
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
.LFE682:
	.size	OCSP_SERVICELOC_free, .-OCSP_SERVICELOC_free
	.section	.rodata
.LC41:
	.string	"OCSP_SIGNATURE"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.14, @object
	.size	local_it.14, 56
local_it.14:
	.byte	1
	.zero	7
	.quad	16
	.quad	OCSP_SIGNATURE_seq_tt
	.quad	3
	.quad	0
	.quad	32
	.quad	.LC41
	.section	.rodata
.LC42:
	.string	"OCSP_CERTID"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.13, @object
	.size	local_it.13, 56
local_it.13:
	.byte	1
	.zero	7
	.quad	16
	.quad	OCSP_CERTID_seq_tt
	.quad	4
	.quad	0
	.quad	88
	.quad	.LC42
	.section	.rodata
.LC43:
	.string	"OCSP_ONEREQ"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.12, @object
	.size	local_it.12, 56
local_it.12:
	.byte	1
	.zero	7
	.quad	16
	.quad	OCSP_ONEREQ_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC43
	.section	.rodata
.LC44:
	.string	"OCSP_REQINFO"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.11, @object
	.size	local_it.11, 56
local_it.11:
	.byte	1
	.zero	7
	.quad	16
	.quad	OCSP_REQINFO_seq_tt
	.quad	4
	.quad	0
	.quad	32
	.quad	.LC44
	.section	.rodata
.LC45:
	.string	"OCSP_REQUEST"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.10, @object
	.size	local_it.10, 56
local_it.10:
	.byte	1
	.zero	7
	.quad	16
	.quad	OCSP_REQUEST_seq_tt
	.quad	2
	.quad	0
	.quad	40
	.quad	.LC45
	.section	.rodata
.LC46:
	.string	"OCSP_RESPBYTES"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.9, @object
	.size	local_it.9, 56
local_it.9:
	.byte	1
	.zero	7
	.quad	16
	.quad	OCSP_RESPBYTES_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC46
	.section	.rodata
.LC47:
	.string	"OCSP_RESPONSE"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.8, @object
	.size	local_it.8, 56
local_it.8:
	.byte	1
	.zero	7
	.quad	16
	.quad	OCSP_RESPONSE_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC47
	.section	.rodata
.LC48:
	.string	"OCSP_RESPID"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.7, @object
	.size	local_it.7, 56
local_it.7:
	.byte	2
	.zero	7
	.quad	0
	.quad	OCSP_RESPID_ch_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC48
	.section	.rodata
.LC49:
	.string	"OCSP_REVOKEDINFO"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.6, @object
	.size	local_it.6, 56
local_it.6:
	.byte	1
	.zero	7
	.quad	16
	.quad	OCSP_REVOKEDINFO_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC49
	.section	.rodata
.LC50:
	.string	"OCSP_CERTSTATUS"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.5, @object
	.size	local_it.5, 56
local_it.5:
	.byte	2
	.zero	7
	.quad	0
	.quad	OCSP_CERTSTATUS_ch_tt
	.quad	3
	.quad	0
	.quad	16
	.quad	.LC50
	.section	.rodata
.LC51:
	.string	"OCSP_SINGLERESP"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.4, @object
	.size	local_it.4, 56
local_it.4:
	.byte	1
	.zero	7
	.quad	16
	.quad	OCSP_SINGLERESP_seq_tt
	.quad	5
	.quad	0
	.quad	40
	.quad	.LC51
	.section	.rodata
.LC52:
	.string	"OCSP_RESPDATA"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.3, @object
	.size	local_it.3, 56
local_it.3:
	.byte	1
	.zero	7
	.quad	16
	.quad	OCSP_RESPDATA_seq_tt
	.quad	5
	.quad	0
	.quad	48
	.quad	.LC52
	.section	.rodata
.LC53:
	.string	"OCSP_BASICRESP"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	1
	.zero	7
	.quad	16
	.quad	OCSP_BASICRESP_seq_tt
	.quad	4
	.quad	0
	.quad	80
	.quad	.LC53
	.section	.rodata
.LC54:
	.string	"OCSP_CRLID"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	OCSP_CRLID_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC54
	.section	.rodata
.LC55:
	.string	"OCSP_SERVICELOC"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	1
	.zero	7
	.quad	16
	.quad	OCSP_SERVICELOC_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC55
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"crmf_asn.c"
	.text
	.section	.rodata
.LC0:
	.string	"version"
.LC1:
	.string	"privateKeyAlgorithm"
.LC2:
	.string	"privateKey"
.LC3:
	.string	"attributes"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	OSSL_CRMF_PRIVATEKEYINFO_seq_tt, @object
	.size	OSSL_CRMF_PRIVATEKEYINFO_seq_tt, 160
OSSL_CRMF_PRIVATEKEYINFO_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC2
	.quad	ASN1_OCTET_STRING_it
	.quad	139
	.quad	0
	.quad	24
	.quad	.LC3
	.quad	X509_ATTRIBUTE_it
	.text
	.globl	OSSL_CRMF_PRIVATEKEYINFO_it
	.type	OSSL_CRMF_PRIVATEKEYINFO_it, @function
OSSL_CRMF_PRIVATEKEYINFO_it:
.LFB641:
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
.LFE641:
	.size	OSSL_CRMF_PRIVATEKEYINFO_it, .-OSSL_CRMF_PRIVATEKEYINFO_it
	.globl	d2i_OSSL_CRMF_PRIVATEKEYINFO
	.type	d2i_OSSL_CRMF_PRIVATEKEYINFO, @function
d2i_OSSL_CRMF_PRIVATEKEYINFO:
.LFB642:
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
	call	OSSL_CRMF_PRIVATEKEYINFO_it@PLT
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
.LFE642:
	.size	d2i_OSSL_CRMF_PRIVATEKEYINFO, .-d2i_OSSL_CRMF_PRIVATEKEYINFO
	.globl	i2d_OSSL_CRMF_PRIVATEKEYINFO
	.type	i2d_OSSL_CRMF_PRIVATEKEYINFO, @function
i2d_OSSL_CRMF_PRIVATEKEYINFO:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CRMF_PRIVATEKEYINFO_it@PLT
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
.LFE643:
	.size	i2d_OSSL_CRMF_PRIVATEKEYINFO, .-i2d_OSSL_CRMF_PRIVATEKEYINFO
	.globl	OSSL_CRMF_PRIVATEKEYINFO_new
	.type	OSSL_CRMF_PRIVATEKEYINFO_new, @function
OSSL_CRMF_PRIVATEKEYINFO_new:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CRMF_PRIVATEKEYINFO_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	OSSL_CRMF_PRIVATEKEYINFO_new, .-OSSL_CRMF_PRIVATEKEYINFO_new
	.globl	OSSL_CRMF_PRIVATEKEYINFO_free
	.type	OSSL_CRMF_PRIVATEKEYINFO_free, @function
OSSL_CRMF_PRIVATEKEYINFO_free:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_PRIVATEKEYINFO_it@PLT
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
.LFE645:
	.size	OSSL_CRMF_PRIVATEKEYINFO_free, .-OSSL_CRMF_PRIVATEKEYINFO_free
	.section	.rodata
.LC4:
	.string	"value.string"
.LC5:
	.string	"value.generalName"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_ch_tt, @object
	.size	OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_ch_tt, 80
OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_ch_tt:
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC4
	.quad	ASN1_UTF8STRING_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC5
	.quad	GENERAL_NAME_it
	.text
	.globl	OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_it
	.type	OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_it, @function
OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_it:
.LFB646:
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
.LFE646:
	.size	OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_it, .-OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_it
	.globl	d2i_OSSL_CRMF_ENCKEYWITHID_IDENTIFIER
	.type	d2i_OSSL_CRMF_ENCKEYWITHID_IDENTIFIER, @function
d2i_OSSL_CRMF_ENCKEYWITHID_IDENTIFIER:
.LFB647:
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
	call	OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_it@PLT
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
.LFE647:
	.size	d2i_OSSL_CRMF_ENCKEYWITHID_IDENTIFIER, .-d2i_OSSL_CRMF_ENCKEYWITHID_IDENTIFIER
	.globl	i2d_OSSL_CRMF_ENCKEYWITHID_IDENTIFIER
	.type	i2d_OSSL_CRMF_ENCKEYWITHID_IDENTIFIER, @function
i2d_OSSL_CRMF_ENCKEYWITHID_IDENTIFIER:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_it@PLT
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
.LFE648:
	.size	i2d_OSSL_CRMF_ENCKEYWITHID_IDENTIFIER, .-i2d_OSSL_CRMF_ENCKEYWITHID_IDENTIFIER
	.globl	OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_new
	.type	OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_new, @function
OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_new:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_new, .-OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_new
	.globl	OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_free
	.type	OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_free, @function
OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_free:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_it@PLT
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
.LFE650:
	.size	OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_free, .-OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_free
	.section	.rodata
.LC6:
	.string	"identifier"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CRMF_ENCKEYWITHID_seq_tt, @object
	.size	OSSL_CRMF_ENCKEYWITHID_seq_tt, 80
OSSL_CRMF_ENCKEYWITHID_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	OSSL_CRMF_PRIVATEKEYINFO_it
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC6
	.quad	OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_it
	.text
	.globl	OSSL_CRMF_ENCKEYWITHID_it
	.type	OSSL_CRMF_ENCKEYWITHID_it, @function
OSSL_CRMF_ENCKEYWITHID_it:
.LFB651:
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
.LFE651:
	.size	OSSL_CRMF_ENCKEYWITHID_it, .-OSSL_CRMF_ENCKEYWITHID_it
	.globl	d2i_OSSL_CRMF_ENCKEYWITHID
	.type	d2i_OSSL_CRMF_ENCKEYWITHID, @function
d2i_OSSL_CRMF_ENCKEYWITHID:
.LFB652:
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
	call	OSSL_CRMF_ENCKEYWITHID_it@PLT
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
.LFE652:
	.size	d2i_OSSL_CRMF_ENCKEYWITHID, .-d2i_OSSL_CRMF_ENCKEYWITHID
	.globl	i2d_OSSL_CRMF_ENCKEYWITHID
	.type	i2d_OSSL_CRMF_ENCKEYWITHID, @function
i2d_OSSL_CRMF_ENCKEYWITHID:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CRMF_ENCKEYWITHID_it@PLT
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
.LFE653:
	.size	i2d_OSSL_CRMF_ENCKEYWITHID, .-i2d_OSSL_CRMF_ENCKEYWITHID
	.globl	OSSL_CRMF_ENCKEYWITHID_new
	.type	OSSL_CRMF_ENCKEYWITHID_new, @function
OSSL_CRMF_ENCKEYWITHID_new:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CRMF_ENCKEYWITHID_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	OSSL_CRMF_ENCKEYWITHID_new, .-OSSL_CRMF_ENCKEYWITHID_new
	.globl	OSSL_CRMF_ENCKEYWITHID_free
	.type	OSSL_CRMF_ENCKEYWITHID_free, @function
OSSL_CRMF_ENCKEYWITHID_free:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_ENCKEYWITHID_it@PLT
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
.LFE655:
	.size	OSSL_CRMF_ENCKEYWITHID_free, .-OSSL_CRMF_ENCKEYWITHID_free
	.section	.rodata
.LC7:
	.string	"issuer"
.LC8:
	.string	"serialNumber"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CRMF_CERTID_seq_tt, @object
	.size	OSSL_CRMF_CERTID_seq_tt, 80
OSSL_CRMF_CERTID_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC7
	.quad	GENERAL_NAME_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC8
	.quad	ASN1_INTEGER_it
	.text
	.globl	OSSL_CRMF_CERTID_it
	.type	OSSL_CRMF_CERTID_it, @function
OSSL_CRMF_CERTID_it:
.LFB656:
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
.LFE656:
	.size	OSSL_CRMF_CERTID_it, .-OSSL_CRMF_CERTID_it
	.globl	d2i_OSSL_CRMF_CERTID
	.type	d2i_OSSL_CRMF_CERTID, @function
d2i_OSSL_CRMF_CERTID:
.LFB657:
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
	call	OSSL_CRMF_CERTID_it@PLT
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
.LFE657:
	.size	d2i_OSSL_CRMF_CERTID, .-d2i_OSSL_CRMF_CERTID
	.globl	i2d_OSSL_CRMF_CERTID
	.type	i2d_OSSL_CRMF_CERTID, @function
i2d_OSSL_CRMF_CERTID:
.LFB658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CRMF_CERTID_it@PLT
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
.LFE658:
	.size	i2d_OSSL_CRMF_CERTID, .-i2d_OSSL_CRMF_CERTID
	.globl	OSSL_CRMF_CERTID_new
	.type	OSSL_CRMF_CERTID_new, @function
OSSL_CRMF_CERTID_new:
.LFB659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CRMF_CERTID_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	OSSL_CRMF_CERTID_new, .-OSSL_CRMF_CERTID_new
	.globl	OSSL_CRMF_CERTID_free
	.type	OSSL_CRMF_CERTID_free, @function
OSSL_CRMF_CERTID_free:
.LFB660:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_CERTID_it@PLT
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
.LFE660:
	.size	OSSL_CRMF_CERTID_free, .-OSSL_CRMF_CERTID_free
	.globl	OSSL_CRMF_CERTID_dup
	.type	OSSL_CRMF_CERTID_dup, @function
OSSL_CRMF_CERTID_dup:
.LFB661:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_CERTID_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	OSSL_CRMF_CERTID_dup, .-OSSL_CRMF_CERTID_dup
	.section	.rodata
.LC9:
	.string	"intendedAlg"
.LC10:
	.string	"symmAlg"
.LC11:
	.string	"encSymmKey"
.LC12:
	.string	"keyAlg"
.LC13:
	.string	"valueHint"
.LC14:
	.string	"encValue"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CRMF_ENCRYPTEDVALUE_seq_tt, @object
	.size	OSSL_CRMF_ENCRYPTEDVALUE_seq_tt, 240
OSSL_CRMF_ENCRYPTEDVALUE_seq_tt:
	.quad	137
	.quad	0
	.quad	0
	.quad	.LC9
	.quad	X509_ALGOR_it
	.quad	137
	.quad	1
	.quad	8
	.quad	.LC10
	.quad	X509_ALGOR_it
	.quad	137
	.quad	2
	.quad	16
	.quad	.LC11
	.quad	ASN1_BIT_STRING_it
	.quad	137
	.quad	3
	.quad	24
	.quad	.LC12
	.quad	X509_ALGOR_it
	.quad	137
	.quad	4
	.quad	32
	.quad	.LC13
	.quad	ASN1_OCTET_STRING_it
	.quad	0
	.quad	0
	.quad	40
	.quad	.LC14
	.quad	ASN1_BIT_STRING_it
	.text
	.globl	OSSL_CRMF_ENCRYPTEDVALUE_it
	.type	OSSL_CRMF_ENCRYPTEDVALUE_it, @function
OSSL_CRMF_ENCRYPTEDVALUE_it:
.LFB662:
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
.LFE662:
	.size	OSSL_CRMF_ENCRYPTEDVALUE_it, .-OSSL_CRMF_ENCRYPTEDVALUE_it
	.globl	d2i_OSSL_CRMF_ENCRYPTEDVALUE
	.type	d2i_OSSL_CRMF_ENCRYPTEDVALUE, @function
d2i_OSSL_CRMF_ENCRYPTEDVALUE:
.LFB663:
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
	call	OSSL_CRMF_ENCRYPTEDVALUE_it@PLT
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
.LFE663:
	.size	d2i_OSSL_CRMF_ENCRYPTEDVALUE, .-d2i_OSSL_CRMF_ENCRYPTEDVALUE
	.globl	i2d_OSSL_CRMF_ENCRYPTEDVALUE
	.type	i2d_OSSL_CRMF_ENCRYPTEDVALUE, @function
i2d_OSSL_CRMF_ENCRYPTEDVALUE:
.LFB664:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CRMF_ENCRYPTEDVALUE_it@PLT
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
.LFE664:
	.size	i2d_OSSL_CRMF_ENCRYPTEDVALUE, .-i2d_OSSL_CRMF_ENCRYPTEDVALUE
	.globl	OSSL_CRMF_ENCRYPTEDVALUE_new
	.type	OSSL_CRMF_ENCRYPTEDVALUE_new, @function
OSSL_CRMF_ENCRYPTEDVALUE_new:
.LFB665:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CRMF_ENCRYPTEDVALUE_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	OSSL_CRMF_ENCRYPTEDVALUE_new, .-OSSL_CRMF_ENCRYPTEDVALUE_new
	.globl	OSSL_CRMF_ENCRYPTEDVALUE_free
	.type	OSSL_CRMF_ENCRYPTEDVALUE_free, @function
OSSL_CRMF_ENCRYPTEDVALUE_free:
.LFB666:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_ENCRYPTEDVALUE_it@PLT
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
.LFE666:
	.size	OSSL_CRMF_ENCRYPTEDVALUE_free, .-OSSL_CRMF_ENCRYPTEDVALUE_free
	.section	.rodata
.LC15:
	.string	"pubMethod"
.LC16:
	.string	"pubLocation"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CRMF_SINGLEPUBINFO_seq_tt, @object
	.size	OSSL_CRMF_SINGLEPUBINFO_seq_tt, 80
OSSL_CRMF_SINGLEPUBINFO_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC15
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC16
	.quad	GENERAL_NAME_it
	.text
	.globl	OSSL_CRMF_SINGLEPUBINFO_it
	.type	OSSL_CRMF_SINGLEPUBINFO_it, @function
OSSL_CRMF_SINGLEPUBINFO_it:
.LFB667:
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
.LFE667:
	.size	OSSL_CRMF_SINGLEPUBINFO_it, .-OSSL_CRMF_SINGLEPUBINFO_it
	.globl	d2i_OSSL_CRMF_SINGLEPUBINFO
	.type	d2i_OSSL_CRMF_SINGLEPUBINFO, @function
d2i_OSSL_CRMF_SINGLEPUBINFO:
.LFB668:
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
	call	OSSL_CRMF_SINGLEPUBINFO_it@PLT
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
.LFE668:
	.size	d2i_OSSL_CRMF_SINGLEPUBINFO, .-d2i_OSSL_CRMF_SINGLEPUBINFO
	.globl	i2d_OSSL_CRMF_SINGLEPUBINFO
	.type	i2d_OSSL_CRMF_SINGLEPUBINFO, @function
i2d_OSSL_CRMF_SINGLEPUBINFO:
.LFB669:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CRMF_SINGLEPUBINFO_it@PLT
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
.LFE669:
	.size	i2d_OSSL_CRMF_SINGLEPUBINFO, .-i2d_OSSL_CRMF_SINGLEPUBINFO
	.globl	OSSL_CRMF_SINGLEPUBINFO_new
	.type	OSSL_CRMF_SINGLEPUBINFO_new, @function
OSSL_CRMF_SINGLEPUBINFO_new:
.LFB670:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CRMF_SINGLEPUBINFO_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	OSSL_CRMF_SINGLEPUBINFO_new, .-OSSL_CRMF_SINGLEPUBINFO_new
	.globl	OSSL_CRMF_SINGLEPUBINFO_free
	.type	OSSL_CRMF_SINGLEPUBINFO_free, @function
OSSL_CRMF_SINGLEPUBINFO_free:
.LFB671:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_SINGLEPUBINFO_it@PLT
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
.LFE671:
	.size	OSSL_CRMF_SINGLEPUBINFO_free, .-OSSL_CRMF_SINGLEPUBINFO_free
	.section	.rodata
.LC17:
	.string	"action"
.LC18:
	.string	"pubInfos"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CRMF_PKIPUBLICATIONINFO_seq_tt, @object
	.size	OSSL_CRMF_PKIPUBLICATIONINFO_seq_tt, 80
OSSL_CRMF_PKIPUBLICATIONINFO_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC17
	.quad	ASN1_INTEGER_it
	.quad	5
	.quad	0
	.quad	8
	.quad	.LC18
	.quad	OSSL_CRMF_SINGLEPUBINFO_it
	.text
	.globl	OSSL_CRMF_PKIPUBLICATIONINFO_it
	.type	OSSL_CRMF_PKIPUBLICATIONINFO_it, @function
OSSL_CRMF_PKIPUBLICATIONINFO_it:
.LFB672:
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
.LFE672:
	.size	OSSL_CRMF_PKIPUBLICATIONINFO_it, .-OSSL_CRMF_PKIPUBLICATIONINFO_it
	.globl	d2i_OSSL_CRMF_PKIPUBLICATIONINFO
	.type	d2i_OSSL_CRMF_PKIPUBLICATIONINFO, @function
d2i_OSSL_CRMF_PKIPUBLICATIONINFO:
.LFB673:
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
	call	OSSL_CRMF_PKIPUBLICATIONINFO_it@PLT
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
.LFE673:
	.size	d2i_OSSL_CRMF_PKIPUBLICATIONINFO, .-d2i_OSSL_CRMF_PKIPUBLICATIONINFO
	.globl	i2d_OSSL_CRMF_PKIPUBLICATIONINFO
	.type	i2d_OSSL_CRMF_PKIPUBLICATIONINFO, @function
i2d_OSSL_CRMF_PKIPUBLICATIONINFO:
.LFB674:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CRMF_PKIPUBLICATIONINFO_it@PLT
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
.LFE674:
	.size	i2d_OSSL_CRMF_PKIPUBLICATIONINFO, .-i2d_OSSL_CRMF_PKIPUBLICATIONINFO
	.globl	OSSL_CRMF_PKIPUBLICATIONINFO_new
	.type	OSSL_CRMF_PKIPUBLICATIONINFO_new, @function
OSSL_CRMF_PKIPUBLICATIONINFO_new:
.LFB675:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CRMF_PKIPUBLICATIONINFO_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	OSSL_CRMF_PKIPUBLICATIONINFO_new, .-OSSL_CRMF_PKIPUBLICATIONINFO_new
	.globl	OSSL_CRMF_PKIPUBLICATIONINFO_free
	.type	OSSL_CRMF_PKIPUBLICATIONINFO_free, @function
OSSL_CRMF_PKIPUBLICATIONINFO_free:
.LFB676:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_PKIPUBLICATIONINFO_it@PLT
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
.LFE676:
	.size	OSSL_CRMF_PKIPUBLICATIONINFO_free, .-OSSL_CRMF_PKIPUBLICATIONINFO_free
	.globl	OSSL_CRMF_PKIPUBLICATIONINFO_dup
	.type	OSSL_CRMF_PKIPUBLICATIONINFO_dup, @function
OSSL_CRMF_PKIPUBLICATIONINFO_dup:
.LFB677:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_PKIPUBLICATIONINFO_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	OSSL_CRMF_PKIPUBLICATIONINFO_dup, .-OSSL_CRMF_PKIPUBLICATIONINFO_dup
	.section	.rodata
.LC19:
	.string	"algId"
.LC20:
	.string	"value"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CRMF_PKMACVALUE_seq_tt, @object
	.size	OSSL_CRMF_PKMACVALUE_seq_tt, 80
OSSL_CRMF_PKMACVALUE_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC19
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC20
	.quad	ASN1_BIT_STRING_it
	.text
	.globl	OSSL_CRMF_PKMACVALUE_it
	.type	OSSL_CRMF_PKMACVALUE_it, @function
OSSL_CRMF_PKMACVALUE_it:
.LFB678:
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
.LFE678:
	.size	OSSL_CRMF_PKMACVALUE_it, .-OSSL_CRMF_PKMACVALUE_it
	.globl	d2i_OSSL_CRMF_PKMACVALUE
	.type	d2i_OSSL_CRMF_PKMACVALUE, @function
d2i_OSSL_CRMF_PKMACVALUE:
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
	call	OSSL_CRMF_PKMACVALUE_it@PLT
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
	.size	d2i_OSSL_CRMF_PKMACVALUE, .-d2i_OSSL_CRMF_PKMACVALUE
	.globl	i2d_OSSL_CRMF_PKMACVALUE
	.type	i2d_OSSL_CRMF_PKMACVALUE, @function
i2d_OSSL_CRMF_PKMACVALUE:
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
	call	OSSL_CRMF_PKMACVALUE_it@PLT
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
	.size	i2d_OSSL_CRMF_PKMACVALUE, .-i2d_OSSL_CRMF_PKMACVALUE
	.globl	OSSL_CRMF_PKMACVALUE_new
	.type	OSSL_CRMF_PKMACVALUE_new, @function
OSSL_CRMF_PKMACVALUE_new:
.LFB681:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CRMF_PKMACVALUE_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	OSSL_CRMF_PKMACVALUE_new, .-OSSL_CRMF_PKMACVALUE_new
	.globl	OSSL_CRMF_PKMACVALUE_free
	.type	OSSL_CRMF_PKMACVALUE_free, @function
OSSL_CRMF_PKMACVALUE_free:
.LFB682:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_PKMACVALUE_it@PLT
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
	.size	OSSL_CRMF_PKMACVALUE_free, .-OSSL_CRMF_PKMACVALUE_free
	.section	.rodata
.LC21:
	.string	"value.thisMessage"
.LC22:
	.string	"value.subsequentMessage"
.LC23:
	.string	"value.dhMAC"
.LC24:
	.string	"value.agreeMAC"
.LC25:
	.string	"value.encryptedKey"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CRMF_POPOPRIVKEY_ch_tt, @object
	.size	OSSL_CRMF_POPOPRIVKEY_ch_tt, 200
OSSL_CRMF_POPOPRIVKEY_ch_tt:
	.quad	136
	.quad	0
	.quad	8
	.quad	.LC21
	.quad	ASN1_BIT_STRING_it
	.quad	136
	.quad	1
	.quad	8
	.quad	.LC22
	.quad	ASN1_INTEGER_it
	.quad	136
	.quad	2
	.quad	8
	.quad	.LC23
	.quad	ASN1_BIT_STRING_it
	.quad	136
	.quad	3
	.quad	8
	.quad	.LC24
	.quad	OSSL_CRMF_PKMACVALUE_it
	.quad	136
	.quad	4
	.quad	8
	.quad	.LC25
	.quad	ASN1_NULL_it
	.text
	.globl	OSSL_CRMF_POPOPRIVKEY_it
	.type	OSSL_CRMF_POPOPRIVKEY_it, @function
OSSL_CRMF_POPOPRIVKEY_it:
.LFB683:
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
.LFE683:
	.size	OSSL_CRMF_POPOPRIVKEY_it, .-OSSL_CRMF_POPOPRIVKEY_it
	.globl	d2i_OSSL_CRMF_POPOPRIVKEY
	.type	d2i_OSSL_CRMF_POPOPRIVKEY, @function
d2i_OSSL_CRMF_POPOPRIVKEY:
.LFB684:
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
	call	OSSL_CRMF_POPOPRIVKEY_it@PLT
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
.LFE684:
	.size	d2i_OSSL_CRMF_POPOPRIVKEY, .-d2i_OSSL_CRMF_POPOPRIVKEY
	.globl	i2d_OSSL_CRMF_POPOPRIVKEY
	.type	i2d_OSSL_CRMF_POPOPRIVKEY, @function
i2d_OSSL_CRMF_POPOPRIVKEY:
.LFB685:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CRMF_POPOPRIVKEY_it@PLT
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
.LFE685:
	.size	i2d_OSSL_CRMF_POPOPRIVKEY, .-i2d_OSSL_CRMF_POPOPRIVKEY
	.globl	OSSL_CRMF_POPOPRIVKEY_new
	.type	OSSL_CRMF_POPOPRIVKEY_new, @function
OSSL_CRMF_POPOPRIVKEY_new:
.LFB686:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CRMF_POPOPRIVKEY_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	OSSL_CRMF_POPOPRIVKEY_new, .-OSSL_CRMF_POPOPRIVKEY_new
	.globl	OSSL_CRMF_POPOPRIVKEY_free
	.type	OSSL_CRMF_POPOPRIVKEY_free, @function
OSSL_CRMF_POPOPRIVKEY_free:
.LFB687:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_POPOPRIVKEY_it@PLT
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
.LFE687:
	.size	OSSL_CRMF_POPOPRIVKEY_free, .-OSSL_CRMF_POPOPRIVKEY_free
	.section	.rodata
.LC26:
	.string	"salt"
.LC27:
	.string	"owf"
.LC28:
	.string	"iterationCount"
.LC29:
	.string	"mac"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CRMF_PBMPARAMETER_seq_tt, @object
	.size	OSSL_CRMF_PBMPARAMETER_seq_tt, 160
OSSL_CRMF_PBMPARAMETER_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC26
	.quad	ASN1_OCTET_STRING_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC27
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC28
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC29
	.quad	X509_ALGOR_it
	.text
	.globl	OSSL_CRMF_PBMPARAMETER_it
	.type	OSSL_CRMF_PBMPARAMETER_it, @function
OSSL_CRMF_PBMPARAMETER_it:
.LFB688:
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
.LFE688:
	.size	OSSL_CRMF_PBMPARAMETER_it, .-OSSL_CRMF_PBMPARAMETER_it
	.globl	d2i_OSSL_CRMF_PBMPARAMETER
	.type	d2i_OSSL_CRMF_PBMPARAMETER, @function
d2i_OSSL_CRMF_PBMPARAMETER:
.LFB689:
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
	call	OSSL_CRMF_PBMPARAMETER_it@PLT
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
.LFE689:
	.size	d2i_OSSL_CRMF_PBMPARAMETER, .-d2i_OSSL_CRMF_PBMPARAMETER
	.globl	i2d_OSSL_CRMF_PBMPARAMETER
	.type	i2d_OSSL_CRMF_PBMPARAMETER, @function
i2d_OSSL_CRMF_PBMPARAMETER:
.LFB690:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CRMF_PBMPARAMETER_it@PLT
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
.LFE690:
	.size	i2d_OSSL_CRMF_PBMPARAMETER, .-i2d_OSSL_CRMF_PBMPARAMETER
	.globl	OSSL_CRMF_PBMPARAMETER_new
	.type	OSSL_CRMF_PBMPARAMETER_new, @function
OSSL_CRMF_PBMPARAMETER_new:
.LFB691:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CRMF_PBMPARAMETER_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE691:
	.size	OSSL_CRMF_PBMPARAMETER_new, .-OSSL_CRMF_PBMPARAMETER_new
	.globl	OSSL_CRMF_PBMPARAMETER_free
	.type	OSSL_CRMF_PBMPARAMETER_free, @function
OSSL_CRMF_PBMPARAMETER_free:
.LFB692:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_PBMPARAMETER_it@PLT
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
.LFE692:
	.size	OSSL_CRMF_PBMPARAMETER_free, .-OSSL_CRMF_PBMPARAMETER_free
	.section	.rodata
.LC30:
	.string	"value.sender"
.LC31:
	.string	"value.publicKeyMAC"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_ch_tt, @object
	.size	OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_ch_tt, 80
OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_ch_tt:
	.quad	144
	.quad	0
	.quad	8
	.quad	.LC30
	.quad	GENERAL_NAME_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC31
	.quad	OSSL_CRMF_PKMACVALUE_it
	.text
	.globl	OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_it
	.type	OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_it, @function
OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_it:
.LFB693:
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
.LFE693:
	.size	OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_it, .-OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_it
	.globl	d2i_OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO
	.type	d2i_OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO, @function
d2i_OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO:
.LFB694:
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
	call	OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_it@PLT
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
.LFE694:
	.size	d2i_OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO, .-d2i_OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO
	.globl	i2d_OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO
	.type	i2d_OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO, @function
i2d_OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO:
.LFB695:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_it@PLT
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
.LFE695:
	.size	i2d_OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO, .-i2d_OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO
	.globl	OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_new
	.type	OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_new, @function
OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_new:
.LFB696:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_new, .-OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_new
	.globl	OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_free
	.type	OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_free, @function
OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_free:
.LFB697:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_it@PLT
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
.LFE697:
	.size	OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_free, .-OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_free
	.section	.rodata
.LC32:
	.string	"authInfo"
.LC33:
	.string	"publicKey"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CRMF_POPOSIGNINGKEYINPUT_seq_tt, @object
	.size	OSSL_CRMF_POPOSIGNINGKEYINPUT_seq_tt, 80
OSSL_CRMF_POPOSIGNINGKEYINPUT_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC32
	.quad	OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC33
	.quad	X509_PUBKEY_it
	.text
	.globl	OSSL_CRMF_POPOSIGNINGKEYINPUT_it
	.type	OSSL_CRMF_POPOSIGNINGKEYINPUT_it, @function
OSSL_CRMF_POPOSIGNINGKEYINPUT_it:
.LFB698:
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
.LFE698:
	.size	OSSL_CRMF_POPOSIGNINGKEYINPUT_it, .-OSSL_CRMF_POPOSIGNINGKEYINPUT_it
	.globl	d2i_OSSL_CRMF_POPOSIGNINGKEYINPUT
	.type	d2i_OSSL_CRMF_POPOSIGNINGKEYINPUT, @function
d2i_OSSL_CRMF_POPOSIGNINGKEYINPUT:
.LFB699:
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
	call	OSSL_CRMF_POPOSIGNINGKEYINPUT_it@PLT
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
.LFE699:
	.size	d2i_OSSL_CRMF_POPOSIGNINGKEYINPUT, .-d2i_OSSL_CRMF_POPOSIGNINGKEYINPUT
	.globl	i2d_OSSL_CRMF_POPOSIGNINGKEYINPUT
	.type	i2d_OSSL_CRMF_POPOSIGNINGKEYINPUT, @function
i2d_OSSL_CRMF_POPOSIGNINGKEYINPUT:
.LFB700:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CRMF_POPOSIGNINGKEYINPUT_it@PLT
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
.LFE700:
	.size	i2d_OSSL_CRMF_POPOSIGNINGKEYINPUT, .-i2d_OSSL_CRMF_POPOSIGNINGKEYINPUT
	.globl	OSSL_CRMF_POPOSIGNINGKEYINPUT_new
	.type	OSSL_CRMF_POPOSIGNINGKEYINPUT_new, @function
OSSL_CRMF_POPOSIGNINGKEYINPUT_new:
.LFB701:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CRMF_POPOSIGNINGKEYINPUT_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	OSSL_CRMF_POPOSIGNINGKEYINPUT_new, .-OSSL_CRMF_POPOSIGNINGKEYINPUT_new
	.globl	OSSL_CRMF_POPOSIGNINGKEYINPUT_free
	.type	OSSL_CRMF_POPOSIGNINGKEYINPUT_free, @function
OSSL_CRMF_POPOSIGNINGKEYINPUT_free:
.LFB702:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_POPOSIGNINGKEYINPUT_it@PLT
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
.LFE702:
	.size	OSSL_CRMF_POPOSIGNINGKEYINPUT_free, .-OSSL_CRMF_POPOSIGNINGKEYINPUT_free
	.section	.rodata
.LC34:
	.string	"poposkInput"
.LC35:
	.string	"algorithmIdentifier"
.LC36:
	.string	"signature"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CRMF_POPOSIGNINGKEY_seq_tt, @object
	.size	OSSL_CRMF_POPOSIGNINGKEY_seq_tt, 120
OSSL_CRMF_POPOSIGNINGKEY_seq_tt:
	.quad	137
	.quad	0
	.quad	0
	.quad	.LC34
	.quad	OSSL_CRMF_POPOSIGNINGKEYINPUT_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC35
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC36
	.quad	ASN1_BIT_STRING_it
	.text
	.globl	OSSL_CRMF_POPOSIGNINGKEY_it
	.type	OSSL_CRMF_POPOSIGNINGKEY_it, @function
OSSL_CRMF_POPOSIGNINGKEY_it:
.LFB703:
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
.LFE703:
	.size	OSSL_CRMF_POPOSIGNINGKEY_it, .-OSSL_CRMF_POPOSIGNINGKEY_it
	.globl	d2i_OSSL_CRMF_POPOSIGNINGKEY
	.type	d2i_OSSL_CRMF_POPOSIGNINGKEY, @function
d2i_OSSL_CRMF_POPOSIGNINGKEY:
.LFB704:
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
	call	OSSL_CRMF_POPOSIGNINGKEY_it@PLT
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
.LFE704:
	.size	d2i_OSSL_CRMF_POPOSIGNINGKEY, .-d2i_OSSL_CRMF_POPOSIGNINGKEY
	.globl	i2d_OSSL_CRMF_POPOSIGNINGKEY
	.type	i2d_OSSL_CRMF_POPOSIGNINGKEY, @function
i2d_OSSL_CRMF_POPOSIGNINGKEY:
.LFB705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CRMF_POPOSIGNINGKEY_it@PLT
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
.LFE705:
	.size	i2d_OSSL_CRMF_POPOSIGNINGKEY, .-i2d_OSSL_CRMF_POPOSIGNINGKEY
	.globl	OSSL_CRMF_POPOSIGNINGKEY_new
	.type	OSSL_CRMF_POPOSIGNINGKEY_new, @function
OSSL_CRMF_POPOSIGNINGKEY_new:
.LFB706:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CRMF_POPOSIGNINGKEY_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	OSSL_CRMF_POPOSIGNINGKEY_new, .-OSSL_CRMF_POPOSIGNINGKEY_new
	.globl	OSSL_CRMF_POPOSIGNINGKEY_free
	.type	OSSL_CRMF_POPOSIGNINGKEY_free, @function
OSSL_CRMF_POPOSIGNINGKEY_free:
.LFB707:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_POPOSIGNINGKEY_it@PLT
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
.LFE707:
	.size	OSSL_CRMF_POPOSIGNINGKEY_free, .-OSSL_CRMF_POPOSIGNINGKEY_free
	.section	.rodata
.LC37:
	.string	"value.raVerified"
.LC38:
	.string	"value.signature"
.LC39:
	.string	"value.keyEncipherment"
.LC40:
	.string	"value.keyAgreement"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CRMF_POPO_ch_tt, @object
	.size	OSSL_CRMF_POPO_ch_tt, 160
OSSL_CRMF_POPO_ch_tt:
	.quad	136
	.quad	0
	.quad	8
	.quad	.LC37
	.quad	ASN1_NULL_it
	.quad	136
	.quad	1
	.quad	8
	.quad	.LC38
	.quad	OSSL_CRMF_POPOSIGNINGKEY_it
	.quad	144
	.quad	2
	.quad	8
	.quad	.LC39
	.quad	OSSL_CRMF_POPOPRIVKEY_it
	.quad	144
	.quad	3
	.quad	8
	.quad	.LC40
	.quad	OSSL_CRMF_POPOPRIVKEY_it
	.text
	.globl	OSSL_CRMF_POPO_it
	.type	OSSL_CRMF_POPO_it, @function
OSSL_CRMF_POPO_it:
.LFB708:
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
.LFE708:
	.size	OSSL_CRMF_POPO_it, .-OSSL_CRMF_POPO_it
	.globl	d2i_OSSL_CRMF_POPO
	.type	d2i_OSSL_CRMF_POPO, @function
d2i_OSSL_CRMF_POPO:
.LFB709:
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
	call	OSSL_CRMF_POPO_it@PLT
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
.LFE709:
	.size	d2i_OSSL_CRMF_POPO, .-d2i_OSSL_CRMF_POPO
	.globl	i2d_OSSL_CRMF_POPO
	.type	i2d_OSSL_CRMF_POPO, @function
i2d_OSSL_CRMF_POPO:
.LFB710:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CRMF_POPO_it@PLT
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
.LFE710:
	.size	i2d_OSSL_CRMF_POPO, .-i2d_OSSL_CRMF_POPO
	.globl	OSSL_CRMF_POPO_new
	.type	OSSL_CRMF_POPO_new, @function
OSSL_CRMF_POPO_new:
.LFB711:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CRMF_POPO_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	OSSL_CRMF_POPO_new, .-OSSL_CRMF_POPO_new
	.globl	OSSL_CRMF_POPO_free
	.type	OSSL_CRMF_POPO_free, @function
OSSL_CRMF_POPO_free:
.LFB712:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_POPO_it@PLT
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
.LFE712:
	.size	OSSL_CRMF_POPO_free, .-OSSL_CRMF_POPO_free
	.section	.rodata
.LC41:
	.string	"value.other"
	.section	.data.rel.ro
	.align 32
	.type	attributetypeandvalue_default_tt, @object
	.size	attributetypeandvalue_default_tt, 40
attributetypeandvalue_default_tt:
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC41
	.quad	ASN1_ANY_it
	.section	.rodata
.LC42:
	.string	"value.regToken"
.LC43:
	.string	"value.authenticator"
.LC44:
	.string	"value.pkiPublicationInfo"
.LC45:
	.string	"value.oldCertID"
.LC46:
	.string	"value.protocolEncrKey"
.LC47:
	.string	"value.utf8Pairs"
.LC48:
	.string	"value.certReq"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_adbtbl, @object
	.size	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_adbtbl, 336
OSSL_CRMF_ATTRIBUTETYPEANDVALUE_adbtbl:
	.quad	315
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC42
	.quad	ASN1_UTF8STRING_it
	.quad	316
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC43
	.quad	ASN1_UTF8STRING_it
	.quad	317
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC44
	.quad	OSSL_CRMF_PKIPUBLICATIONINFO_it
	.quad	319
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC45
	.quad	OSSL_CRMF_CERTID_it
	.quad	320
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC46
	.quad	X509_PUBKEY_it
	.quad	321
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC47
	.quad	ASN1_UTF8STRING_it
	.quad	322
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC48
	.quad	OSSL_CRMF_CERTREQUEST_it
	.text
	.type	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_adb, @function
OSSL_CRMF_ATTRIBUTETYPEANDVALUE_adb:
.LFB713:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	internal_adb.6(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE713:
	.size	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_adb, .-OSSL_CRMF_ATTRIBUTETYPEANDVALUE_adb
	.section	.rodata
.LC49:
	.string	"type"
	.align 8
.LC50:
	.string	"OSSL_CRMF_ATTRIBUTETYPEANDVALUE"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_seq_tt, @object
	.size	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_seq_tt, 80
OSSL_CRMF_ATTRIBUTETYPEANDVALUE_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC49
	.quad	ASN1_OBJECT_it
	.quad	256
	.quad	-1
	.quad	0
	.quad	.LC50
	.quad	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_adb
	.text
	.globl	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_it
	.type	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_it, @function
OSSL_CRMF_ATTRIBUTETYPEANDVALUE_it:
.LFB714:
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
.LFE714:
	.size	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_it, .-OSSL_CRMF_ATTRIBUTETYPEANDVALUE_it
	.globl	d2i_OSSL_CRMF_ATTRIBUTETYPEANDVALUE
	.type	d2i_OSSL_CRMF_ATTRIBUTETYPEANDVALUE, @function
d2i_OSSL_CRMF_ATTRIBUTETYPEANDVALUE:
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
	call	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_it@PLT
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
	.size	d2i_OSSL_CRMF_ATTRIBUTETYPEANDVALUE, .-d2i_OSSL_CRMF_ATTRIBUTETYPEANDVALUE
	.globl	i2d_OSSL_CRMF_ATTRIBUTETYPEANDVALUE
	.type	i2d_OSSL_CRMF_ATTRIBUTETYPEANDVALUE, @function
i2d_OSSL_CRMF_ATTRIBUTETYPEANDVALUE:
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
	call	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_it@PLT
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
	.size	i2d_OSSL_CRMF_ATTRIBUTETYPEANDVALUE, .-i2d_OSSL_CRMF_ATTRIBUTETYPEANDVALUE
	.globl	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new
	.type	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new, @function
OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new:
.LFB717:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE717:
	.size	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new, .-OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new
	.globl	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free
	.type	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free, @function
OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free:
.LFB718:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_it@PLT
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
	.size	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free, .-OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free
	.globl	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_dup
	.type	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_dup, @function
OSSL_CRMF_ATTRIBUTETYPEANDVALUE_dup:
.LFB719:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE719:
	.size	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_dup, .-OSSL_CRMF_ATTRIBUTETYPEANDVALUE_dup
	.section	.rodata
.LC51:
	.string	"notBefore"
.LC52:
	.string	"notAfter"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CRMF_OPTIONALVALIDITY_seq_tt, @object
	.size	OSSL_CRMF_OPTIONALVALIDITY_seq_tt, 80
OSSL_CRMF_OPTIONALVALIDITY_seq_tt:
	.quad	145
	.quad	0
	.quad	0
	.quad	.LC51
	.quad	ASN1_TIME_it
	.quad	145
	.quad	1
	.quad	8
	.quad	.LC52
	.quad	ASN1_TIME_it
	.text
	.globl	OSSL_CRMF_OPTIONALVALIDITY_it
	.type	OSSL_CRMF_OPTIONALVALIDITY_it, @function
OSSL_CRMF_OPTIONALVALIDITY_it:
.LFB720:
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
.LFE720:
	.size	OSSL_CRMF_OPTIONALVALIDITY_it, .-OSSL_CRMF_OPTIONALVALIDITY_it
	.globl	d2i_OSSL_CRMF_OPTIONALVALIDITY
	.type	d2i_OSSL_CRMF_OPTIONALVALIDITY, @function
d2i_OSSL_CRMF_OPTIONALVALIDITY:
.LFB721:
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
	call	OSSL_CRMF_OPTIONALVALIDITY_it@PLT
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
.LFE721:
	.size	d2i_OSSL_CRMF_OPTIONALVALIDITY, .-d2i_OSSL_CRMF_OPTIONALVALIDITY
	.globl	i2d_OSSL_CRMF_OPTIONALVALIDITY
	.type	i2d_OSSL_CRMF_OPTIONALVALIDITY, @function
i2d_OSSL_CRMF_OPTIONALVALIDITY:
.LFB722:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CRMF_OPTIONALVALIDITY_it@PLT
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
.LFE722:
	.size	i2d_OSSL_CRMF_OPTIONALVALIDITY, .-i2d_OSSL_CRMF_OPTIONALVALIDITY
	.globl	OSSL_CRMF_OPTIONALVALIDITY_new
	.type	OSSL_CRMF_OPTIONALVALIDITY_new, @function
OSSL_CRMF_OPTIONALVALIDITY_new:
.LFB723:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CRMF_OPTIONALVALIDITY_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE723:
	.size	OSSL_CRMF_OPTIONALVALIDITY_new, .-OSSL_CRMF_OPTIONALVALIDITY_new
	.globl	OSSL_CRMF_OPTIONALVALIDITY_free
	.type	OSSL_CRMF_OPTIONALVALIDITY_free, @function
OSSL_CRMF_OPTIONALVALIDITY_free:
.LFB724:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_OPTIONALVALIDITY_it@PLT
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
.LFE724:
	.size	OSSL_CRMF_OPTIONALVALIDITY_free, .-OSSL_CRMF_OPTIONALVALIDITY_free
	.section	.rodata
.LC53:
	.string	"signingAlg"
.LC54:
	.string	"validity"
.LC55:
	.string	"subject"
.LC56:
	.string	"issuerUID"
.LC57:
	.string	"subjectUID"
.LC58:
	.string	"extensions"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CRMF_CERTTEMPLATE_seq_tt, @object
	.size	OSSL_CRMF_CERTTEMPLATE_seq_tt, 400
OSSL_CRMF_CERTTEMPLATE_seq_tt:
	.quad	137
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_INTEGER_it
	.quad	137
	.quad	1
	.quad	8
	.quad	.LC8
	.quad	ASN1_INTEGER_it
	.quad	137
	.quad	2
	.quad	16
	.quad	.LC53
	.quad	X509_ALGOR_it
	.quad	145
	.quad	3
	.quad	24
	.quad	.LC7
	.quad	X509_NAME_it
	.quad	137
	.quad	4
	.quad	32
	.quad	.LC54
	.quad	OSSL_CRMF_OPTIONALVALIDITY_it
	.quad	145
	.quad	5
	.quad	40
	.quad	.LC55
	.quad	X509_NAME_it
	.quad	137
	.quad	6
	.quad	48
	.quad	.LC33
	.quad	X509_PUBKEY_it
	.quad	137
	.quad	7
	.quad	56
	.quad	.LC56
	.quad	ASN1_BIT_STRING_it
	.quad	137
	.quad	8
	.quad	64
	.quad	.LC57
	.quad	ASN1_BIT_STRING_it
	.quad	141
	.quad	9
	.quad	72
	.quad	.LC58
	.quad	X509_EXTENSION_it
	.text
	.globl	OSSL_CRMF_CERTTEMPLATE_it
	.type	OSSL_CRMF_CERTTEMPLATE_it, @function
OSSL_CRMF_CERTTEMPLATE_it:
.LFB725:
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
.LFE725:
	.size	OSSL_CRMF_CERTTEMPLATE_it, .-OSSL_CRMF_CERTTEMPLATE_it
	.globl	d2i_OSSL_CRMF_CERTTEMPLATE
	.type	d2i_OSSL_CRMF_CERTTEMPLATE, @function
d2i_OSSL_CRMF_CERTTEMPLATE:
.LFB726:
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
	call	OSSL_CRMF_CERTTEMPLATE_it@PLT
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
.LFE726:
	.size	d2i_OSSL_CRMF_CERTTEMPLATE, .-d2i_OSSL_CRMF_CERTTEMPLATE
	.globl	i2d_OSSL_CRMF_CERTTEMPLATE
	.type	i2d_OSSL_CRMF_CERTTEMPLATE, @function
i2d_OSSL_CRMF_CERTTEMPLATE:
.LFB727:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CRMF_CERTTEMPLATE_it@PLT
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
.LFE727:
	.size	i2d_OSSL_CRMF_CERTTEMPLATE, .-i2d_OSSL_CRMF_CERTTEMPLATE
	.globl	OSSL_CRMF_CERTTEMPLATE_new
	.type	OSSL_CRMF_CERTTEMPLATE_new, @function
OSSL_CRMF_CERTTEMPLATE_new:
.LFB728:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CRMF_CERTTEMPLATE_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	OSSL_CRMF_CERTTEMPLATE_new, .-OSSL_CRMF_CERTTEMPLATE_new
	.globl	OSSL_CRMF_CERTTEMPLATE_free
	.type	OSSL_CRMF_CERTTEMPLATE_free, @function
OSSL_CRMF_CERTTEMPLATE_free:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_CERTTEMPLATE_it@PLT
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
.LFE729:
	.size	OSSL_CRMF_CERTTEMPLATE_free, .-OSSL_CRMF_CERTTEMPLATE_free
	.section	.rodata
.LC59:
	.string	"certReqId"
.LC60:
	.string	"certTemplate"
.LC61:
	.string	"controls"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CRMF_CERTREQUEST_seq_tt, @object
	.size	OSSL_CRMF_CERTREQUEST_seq_tt, 120
OSSL_CRMF_CERTREQUEST_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC59
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC60
	.quad	OSSL_CRMF_CERTTEMPLATE_it
	.quad	5
	.quad	0
	.quad	16
	.quad	.LC61
	.quad	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_it
	.text
	.globl	OSSL_CRMF_CERTREQUEST_it
	.type	OSSL_CRMF_CERTREQUEST_it, @function
OSSL_CRMF_CERTREQUEST_it:
.LFB730:
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
.LFE730:
	.size	OSSL_CRMF_CERTREQUEST_it, .-OSSL_CRMF_CERTREQUEST_it
	.globl	d2i_OSSL_CRMF_CERTREQUEST
	.type	d2i_OSSL_CRMF_CERTREQUEST, @function
d2i_OSSL_CRMF_CERTREQUEST:
.LFB731:
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
	call	OSSL_CRMF_CERTREQUEST_it@PLT
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
.LFE731:
	.size	d2i_OSSL_CRMF_CERTREQUEST, .-d2i_OSSL_CRMF_CERTREQUEST
	.globl	i2d_OSSL_CRMF_CERTREQUEST
	.type	i2d_OSSL_CRMF_CERTREQUEST, @function
i2d_OSSL_CRMF_CERTREQUEST:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CRMF_CERTREQUEST_it@PLT
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
.LFE732:
	.size	i2d_OSSL_CRMF_CERTREQUEST, .-i2d_OSSL_CRMF_CERTREQUEST
	.globl	OSSL_CRMF_CERTREQUEST_new
	.type	OSSL_CRMF_CERTREQUEST_new, @function
OSSL_CRMF_CERTREQUEST_new:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CRMF_CERTREQUEST_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	OSSL_CRMF_CERTREQUEST_new, .-OSSL_CRMF_CERTREQUEST_new
	.globl	OSSL_CRMF_CERTREQUEST_free
	.type	OSSL_CRMF_CERTREQUEST_free, @function
OSSL_CRMF_CERTREQUEST_free:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_CERTREQUEST_it@PLT
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
.LFE734:
	.size	OSSL_CRMF_CERTREQUEST_free, .-OSSL_CRMF_CERTREQUEST_free
	.globl	OSSL_CRMF_CERTREQUEST_dup
	.type	OSSL_CRMF_CERTREQUEST_dup, @function
OSSL_CRMF_CERTREQUEST_dup:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_CERTREQUEST_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	OSSL_CRMF_CERTREQUEST_dup, .-OSSL_CRMF_CERTREQUEST_dup
	.section	.rodata
.LC62:
	.string	"certReq"
.LC63:
	.string	"popo"
.LC64:
	.string	"regInfo"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CRMF_MSG_seq_tt, @object
	.size	OSSL_CRMF_MSG_seq_tt, 120
OSSL_CRMF_MSG_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC62
	.quad	OSSL_CRMF_CERTREQUEST_it
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC63
	.quad	OSSL_CRMF_POPO_it
	.quad	5
	.quad	0
	.quad	16
	.quad	.LC64
	.quad	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_it
	.text
	.globl	OSSL_CRMF_MSG_it
	.type	OSSL_CRMF_MSG_it, @function
OSSL_CRMF_MSG_it:
.LFB736:
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
.LFE736:
	.size	OSSL_CRMF_MSG_it, .-OSSL_CRMF_MSG_it
	.globl	d2i_OSSL_CRMF_MSG
	.type	d2i_OSSL_CRMF_MSG, @function
d2i_OSSL_CRMF_MSG:
.LFB737:
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
	call	OSSL_CRMF_MSG_it@PLT
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
.LFE737:
	.size	d2i_OSSL_CRMF_MSG, .-d2i_OSSL_CRMF_MSG
	.globl	i2d_OSSL_CRMF_MSG
	.type	i2d_OSSL_CRMF_MSG, @function
i2d_OSSL_CRMF_MSG:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CRMF_MSG_it@PLT
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
.LFE738:
	.size	i2d_OSSL_CRMF_MSG, .-i2d_OSSL_CRMF_MSG
	.globl	OSSL_CRMF_MSG_new
	.type	OSSL_CRMF_MSG_new, @function
OSSL_CRMF_MSG_new:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CRMF_MSG_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	OSSL_CRMF_MSG_new, .-OSSL_CRMF_MSG_new
	.globl	OSSL_CRMF_MSG_free
	.type	OSSL_CRMF_MSG_free, @function
OSSL_CRMF_MSG_free:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_MSG_it@PLT
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
.LFE740:
	.size	OSSL_CRMF_MSG_free, .-OSSL_CRMF_MSG_free
	.globl	OSSL_CRMF_MSG_dup
	.type	OSSL_CRMF_MSG_dup, @function
OSSL_CRMF_MSG_dup:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_MSG_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	OSSL_CRMF_MSG_dup, .-OSSL_CRMF_MSG_dup
	.section	.rodata
.LC65:
	.string	"OSSL_CRMF_MSGS"
	.section	.data.rel.ro
	.align 32
	.type	OSSL_CRMF_MSGS_item_tt, @object
	.size	OSSL_CRMF_MSGS_item_tt, 40
OSSL_CRMF_MSGS_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC65
	.quad	OSSL_CRMF_MSG_it
	.text
	.globl	OSSL_CRMF_MSGS_it
	.type	OSSL_CRMF_MSGS_it, @function
OSSL_CRMF_MSGS_it:
.LFB742:
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
.LFE742:
	.size	OSSL_CRMF_MSGS_it, .-OSSL_CRMF_MSGS_it
	.globl	d2i_OSSL_CRMF_MSGS
	.type	d2i_OSSL_CRMF_MSGS, @function
d2i_OSSL_CRMF_MSGS:
.LFB743:
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
	call	OSSL_CRMF_MSGS_it@PLT
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
.LFE743:
	.size	d2i_OSSL_CRMF_MSGS, .-d2i_OSSL_CRMF_MSGS
	.globl	i2d_OSSL_CRMF_MSGS
	.type	i2d_OSSL_CRMF_MSGS, @function
i2d_OSSL_CRMF_MSGS:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CRMF_MSGS_it@PLT
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
.LFE744:
	.size	i2d_OSSL_CRMF_MSGS, .-i2d_OSSL_CRMF_MSGS
	.globl	OSSL_CRMF_MSGS_new
	.type	OSSL_CRMF_MSGS_new, @function
OSSL_CRMF_MSGS_new:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_CRMF_MSGS_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	OSSL_CRMF_MSGS_new, .-OSSL_CRMF_MSGS_new
	.globl	OSSL_CRMF_MSGS_free
	.type	OSSL_CRMF_MSGS_free, @function
OSSL_CRMF_MSGS_free:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CRMF_MSGS_it@PLT
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
.LFE746:
	.size	OSSL_CRMF_MSGS_free, .-OSSL_CRMF_MSGS_free
	.section	.rodata
.LC66:
	.string	"OSSL_CRMF_PRIVATEKEYINFO"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.20, @object
	.size	local_it.20, 56
local_it.20:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CRMF_PRIVATEKEYINFO_seq_tt
	.quad	4
	.quad	0
	.quad	32
	.quad	.LC66
	.section	.rodata
	.align 8
.LC67:
	.string	"OSSL_CRMF_ENCKEYWITHID_IDENTIFIER"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.19, @object
	.size	local_it.19, 56
local_it.19:
	.byte	2
	.zero	7
	.quad	0
	.quad	OSSL_CRMF_ENCKEYWITHID_IDENTIFIER_ch_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC67
	.section	.rodata
.LC68:
	.string	"OSSL_CRMF_ENCKEYWITHID"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.18, @object
	.size	local_it.18, 56
local_it.18:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CRMF_ENCKEYWITHID_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC68
	.section	.rodata
.LC69:
	.string	"OSSL_CRMF_CERTID"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.17, @object
	.size	local_it.17, 56
local_it.17:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CRMF_CERTID_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC69
	.section	.rodata
.LC70:
	.string	"OSSL_CRMF_ENCRYPTEDVALUE"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.16, @object
	.size	local_it.16, 56
local_it.16:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CRMF_ENCRYPTEDVALUE_seq_tt
	.quad	6
	.quad	0
	.quad	48
	.quad	.LC70
	.section	.rodata
.LC71:
	.string	"OSSL_CRMF_SINGLEPUBINFO"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.15, @object
	.size	local_it.15, 56
local_it.15:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CRMF_SINGLEPUBINFO_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC71
	.section	.rodata
.LC72:
	.string	"OSSL_CRMF_PKIPUBLICATIONINFO"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.14, @object
	.size	local_it.14, 56
local_it.14:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CRMF_PKIPUBLICATIONINFO_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC72
	.section	.rodata
.LC73:
	.string	"OSSL_CRMF_PKMACVALUE"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.13, @object
	.size	local_it.13, 56
local_it.13:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CRMF_PKMACVALUE_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC73
	.section	.rodata
.LC74:
	.string	"OSSL_CRMF_POPOPRIVKEY"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.12, @object
	.size	local_it.12, 56
local_it.12:
	.byte	2
	.zero	7
	.quad	0
	.quad	OSSL_CRMF_POPOPRIVKEY_ch_tt
	.quad	5
	.quad	0
	.quad	16
	.quad	.LC74
	.section	.rodata
.LC75:
	.string	"OSSL_CRMF_PBMPARAMETER"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.11, @object
	.size	local_it.11, 56
local_it.11:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CRMF_PBMPARAMETER_seq_tt
	.quad	4
	.quad	0
	.quad	32
	.quad	.LC75
	.section	.rodata
	.align 8
.LC76:
	.string	"OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.10, @object
	.size	local_it.10, 56
local_it.10:
	.byte	2
	.zero	7
	.quad	0
	.quad	OSSL_CRMF_POPOSIGNINGKEYINPUT_AUTHINFO_ch_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC76
	.section	.rodata
.LC77:
	.string	"OSSL_CRMF_POPOSIGNINGKEYINPUT"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.9, @object
	.size	local_it.9, 56
local_it.9:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CRMF_POPOSIGNINGKEYINPUT_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC77
	.section	.rodata
.LC78:
	.string	"OSSL_CRMF_POPOSIGNINGKEY"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.8, @object
	.size	local_it.8, 56
local_it.8:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CRMF_POPOSIGNINGKEY_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC78
	.section	.rodata
.LC79:
	.string	"OSSL_CRMF_POPO"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.7, @object
	.size	local_it.7, 56
local_it.7:
	.byte	2
	.zero	7
	.quad	0
	.quad	OSSL_CRMF_POPO_ch_tt
	.quad	4
	.quad	0
	.quad	16
	.quad	.LC79
	.align 32
	.type	internal_adb.6, @object
	.size	internal_adb.6, 56
internal_adb.6:
	.quad	0
	.quad	0
	.quad	0
	.quad	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_adbtbl
	.quad	7
	.quad	attributetypeandvalue_default_tt
	.quad	0
	.align 32
	.type	local_it.5, @object
	.size	local_it.5, 56
local_it.5:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC50
	.section	.rodata
.LC80:
	.string	"OSSL_CRMF_OPTIONALVALIDITY"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.4, @object
	.size	local_it.4, 56
local_it.4:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CRMF_OPTIONALVALIDITY_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC80
	.section	.rodata
.LC81:
	.string	"OSSL_CRMF_CERTTEMPLATE"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.3, @object
	.size	local_it.3, 56
local_it.3:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CRMF_CERTTEMPLATE_seq_tt
	.quad	10
	.quad	0
	.quad	80
	.quad	.LC81
	.section	.rodata
.LC82:
	.string	"OSSL_CRMF_CERTREQUEST"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CRMF_CERTREQUEST_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC82
	.section	.rodata
.LC83:
	.string	"OSSL_CRMF_MSG"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	OSSL_CRMF_MSG_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC83
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	0
	.zero	7
	.quad	-1
	.quad	OSSL_CRMF_MSGS_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC65
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"cms_asn1.c"
	.text
	.section	.rodata
.LC0:
	.string	"issuer"
.LC1:
	.string	"serialNumber"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	CMS_IssuerAndSerialNumber_seq_tt, @object
	.size	CMS_IssuerAndSerialNumber_seq_tt, 80
CMS_IssuerAndSerialNumber_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	X509_NAME_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	ASN1_INTEGER_it
	.text
	.globl	CMS_IssuerAndSerialNumber_it
	.type	CMS_IssuerAndSerialNumber_it, @function
CMS_IssuerAndSerialNumber_it:
.LFB612:
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
.LFE612:
	.size	CMS_IssuerAndSerialNumber_it, .-CMS_IssuerAndSerialNumber_it
	.section	.rodata
.LC2:
	.string	"otherCertFormat"
.LC3:
	.string	"otherCert"
	.section	.data.rel.ro
	.align 32
	.type	CMS_OtherCertificateFormat_seq_tt, @object
	.size	CMS_OtherCertificateFormat_seq_tt, 80
CMS_OtherCertificateFormat_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	ASN1_OBJECT_it
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC3
	.quad	ASN1_ANY_it
	.text
	.type	CMS_OtherCertificateFormat_it, @function
CMS_OtherCertificateFormat_it:
.LFB613:
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
.LFE613:
	.size	CMS_OtherCertificateFormat_it, .-CMS_OtherCertificateFormat_it
	.section	.rodata
.LC4:
	.string	"d.certificate"
.LC5:
	.string	"d.extendedCertificate"
.LC6:
	.string	"d.v1AttrCert"
.LC7:
	.string	"d.v2AttrCert"
.LC8:
	.string	"d.other"
	.section	.data.rel.ro
	.align 32
	.type	CMS_CertificateChoices_ch_tt, @object
	.size	CMS_CertificateChoices_ch_tt, 200
CMS_CertificateChoices_ch_tt:
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC4
	.quad	X509_it
	.quad	136
	.quad	0
	.quad	8
	.quad	.LC5
	.quad	ASN1_SEQUENCE_it
	.quad	136
	.quad	1
	.quad	8
	.quad	.LC6
	.quad	ASN1_SEQUENCE_it
	.quad	136
	.quad	2
	.quad	8
	.quad	.LC7
	.quad	ASN1_SEQUENCE_it
	.quad	136
	.quad	3
	.quad	8
	.quad	.LC8
	.quad	CMS_OtherCertificateFormat_it
	.text
	.globl	CMS_CertificateChoices_it
	.type	CMS_CertificateChoices_it, @function
CMS_CertificateChoices_it:
.LFB614:
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
.LFE614:
	.size	CMS_CertificateChoices_it, .-CMS_CertificateChoices_it
	.section	.rodata
.LC9:
	.string	"d.issuerAndSerialNumber"
.LC10:
	.string	"d.subjectKeyIdentifier"
	.section	.data.rel.ro
	.align 32
	.type	CMS_SignerIdentifier_ch_tt, @object
	.size	CMS_SignerIdentifier_ch_tt, 80
CMS_SignerIdentifier_ch_tt:
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC9
	.quad	CMS_IssuerAndSerialNumber_it
	.quad	136
	.quad	0
	.quad	8
	.quad	.LC10
	.quad	ASN1_OCTET_STRING_it
	.text
	.type	CMS_SignerIdentifier_it, @function
CMS_SignerIdentifier_it:
.LFB615:
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
.LFE615:
	.size	CMS_SignerIdentifier_it, .-CMS_SignerIdentifier_it
	.section	.rodata
.LC11:
	.string	"eContentType"
.LC12:
	.string	"eContent"
	.section	.data.rel.ro
	.align 32
	.type	CMS_EncapsulatedContentInfo_seq_tt, @object
	.size	CMS_EncapsulatedContentInfo_seq_tt, 80
CMS_EncapsulatedContentInfo_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC11
	.quad	ASN1_OBJECT_it
	.quad	2193
	.quad	0
	.quad	8
	.quad	.LC12
	.quad	ASN1_OCTET_STRING_NDEF_it
	.text
	.type	CMS_EncapsulatedContentInfo_it, @function
CMS_EncapsulatedContentInfo_it:
.LFB616:
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
.LFE616:
	.size	CMS_EncapsulatedContentInfo_it, .-CMS_EncapsulatedContentInfo_it
	.type	cms_si_cb, @function
cms_si_cb:
.LFB617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	cmpl	$3, -20(%rbp)
	jne	.L12
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
.L12:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	cms_si_cb, .-cms_si_cb
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	CMS_SignerInfo_aux, @object
	.size	CMS_SignerInfo_aux, 48
CMS_SignerInfo_aux:
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	cms_si_cb
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC13:
	.string	"version"
.LC14:
	.string	"sid"
.LC15:
	.string	"digestAlgorithm"
.LC16:
	.string	"signedAttrs"
.LC17:
	.string	"signatureAlgorithm"
.LC18:
	.string	"signature"
.LC19:
	.string	"unsignedAttrs"
	.section	.data.rel.ro
	.align 32
	.type	CMS_SignerInfo_seq_tt, @object
	.size	CMS_SignerInfo_seq_tt, 280
CMS_SignerInfo_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	INT32_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC14
	.quad	CMS_SignerIdentifier_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC15
	.quad	X509_ALGOR_it
	.quad	139
	.quad	0
	.quad	24
	.quad	.LC16
	.quad	X509_ATTRIBUTE_it
	.quad	0
	.quad	0
	.quad	32
	.quad	.LC17
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	40
	.quad	.LC18
	.quad	ASN1_OCTET_STRING_it
	.quad	139
	.quad	1
	.quad	48
	.quad	.LC19
	.quad	X509_ATTRIBUTE_it
	.text
	.globl	CMS_SignerInfo_it
	.type	CMS_SignerInfo_it, @function
CMS_SignerInfo_it:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.32(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	CMS_SignerInfo_it, .-CMS_SignerInfo_it
	.section	.rodata
.LC20:
	.string	"otherRevInfoFormat"
.LC21:
	.string	"otherRevInfo"
	.section	.data.rel.ro
	.align 32
	.type	CMS_OtherRevocationInfoFormat_seq_tt, @object
	.size	CMS_OtherRevocationInfoFormat_seq_tt, 80
CMS_OtherRevocationInfoFormat_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC20
	.quad	ASN1_OBJECT_it
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC21
	.quad	ASN1_ANY_it
	.text
	.type	CMS_OtherRevocationInfoFormat_it, @function
CMS_OtherRevocationInfoFormat_it:
.LFB619:
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
.LFE619:
	.size	CMS_OtherRevocationInfoFormat_it, .-CMS_OtherRevocationInfoFormat_it
	.section	.rodata
.LC22:
	.string	"d.crl"
	.section	.data.rel.ro
	.align 32
	.type	CMS_RevocationInfoChoice_ch_tt, @object
	.size	CMS_RevocationInfoChoice_ch_tt, 80
CMS_RevocationInfoChoice_ch_tt:
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC22
	.quad	X509_CRL_it
	.quad	136
	.quad	1
	.quad	8
	.quad	.LC8
	.quad	CMS_OtherRevocationInfoFormat_it
	.text
	.globl	CMS_RevocationInfoChoice_it
	.type	CMS_RevocationInfoChoice_it, @function
CMS_RevocationInfoChoice_it:
.LFB620:
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
.LFE620:
	.size	CMS_RevocationInfoChoice_it, .-CMS_RevocationInfoChoice_it
	.section	.rodata
.LC23:
	.string	"digestAlgorithms"
.LC24:
	.string	"encapContentInfo"
.LC25:
	.string	"certificates"
.LC26:
	.string	"crls"
.LC27:
	.string	"signerInfos"
	.section	.data.rel.ro
	.align 32
	.type	CMS_SignedData_seq_tt, @object
	.size	CMS_SignedData_seq_tt, 240
CMS_SignedData_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	INT32_it
	.quad	2
	.quad	0
	.quad	8
	.quad	.LC23
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC24
	.quad	CMS_EncapsulatedContentInfo_it
	.quad	139
	.quad	0
	.quad	24
	.quad	.LC25
	.quad	CMS_CertificateChoices_it
	.quad	139
	.quad	1
	.quad	32
	.quad	.LC26
	.quad	CMS_RevocationInfoChoice_it
	.quad	2
	.quad	0
	.quad	40
	.quad	.LC27
	.quad	CMS_SignerInfo_it
	.text
	.globl	CMS_SignedData_it
	.type	CMS_SignedData_it, @function
CMS_SignedData_it:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.29(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	CMS_SignedData_it, .-CMS_SignedData_it
	.globl	CMS_SignedData_new
	.type	CMS_SignedData_new, @function
CMS_SignedData_new:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	CMS_SignedData_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	CMS_SignedData_new, .-CMS_SignedData_new
	.globl	CMS_SignedData_free
	.type	CMS_SignedData_free, @function
CMS_SignedData_free:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	CMS_SignedData_it@PLT
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
.LFE623:
	.size	CMS_SignedData_free, .-CMS_SignedData_free
	.section	.data.rel.ro
	.align 32
	.type	CMS_OriginatorInfo_seq_tt, @object
	.size	CMS_OriginatorInfo_seq_tt, 80
CMS_OriginatorInfo_seq_tt:
	.quad	139
	.quad	0
	.quad	0
	.quad	.LC25
	.quad	CMS_CertificateChoices_it
	.quad	139
	.quad	1
	.quad	8
	.quad	.LC26
	.quad	CMS_RevocationInfoChoice_it
	.text
	.type	CMS_OriginatorInfo_it, @function
CMS_OriginatorInfo_it:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.28(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	CMS_OriginatorInfo_it, .-CMS_OriginatorInfo_it
	.section	.rodata
.LC28:
	.string	"../crypto/cms/cms_asn1.c"
	.text
	.type	cms_ec_cb, @function
cms_ec_cb:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$3, -20(%rbp)
	jne	.L28
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC28(%rip), %rdx
	movl	$100, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L28:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	cms_ec_cb, .-cms_ec_cb
	.section	.data.rel.ro.local
	.align 32
	.type	CMS_EncryptedContentInfo_aux, @object
	.size	CMS_EncryptedContentInfo_aux, 48
CMS_EncryptedContentInfo_aux:
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	cms_ec_cb
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC29:
	.string	"contentType"
.LC30:
	.string	"contentEncryptionAlgorithm"
.LC31:
	.string	"encryptedContent"
	.section	.data.rel.ro
	.align 32
	.type	CMS_EncryptedContentInfo_seq_tt, @object
	.size	CMS_EncryptedContentInfo_seq_tt, 120
CMS_EncryptedContentInfo_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC29
	.quad	ASN1_OBJECT_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC30
	.quad	X509_ALGOR_it
	.quad	137
	.quad	0
	.quad	16
	.quad	.LC31
	.quad	ASN1_OCTET_STRING_NDEF_it
	.text
	.globl	CMS_EncryptedContentInfo_it
	.type	CMS_EncryptedContentInfo_it, @function
CMS_EncryptedContentInfo_it:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.27(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	CMS_EncryptedContentInfo_it, .-CMS_EncryptedContentInfo_it
	.section	.rodata
.LC32:
	.string	"rid"
.LC33:
	.string	"keyEncryptionAlgorithm"
.LC34:
	.string	"encryptedKey"
	.section	.data.rel.ro
	.align 32
	.type	CMS_KeyTransRecipientInfo_seq_tt, @object
	.size	CMS_KeyTransRecipientInfo_seq_tt, 160
CMS_KeyTransRecipientInfo_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	INT32_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC32
	.quad	CMS_SignerIdentifier_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC33
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC34
	.quad	ASN1_OCTET_STRING_it
	.text
	.globl	CMS_KeyTransRecipientInfo_it
	.type	CMS_KeyTransRecipientInfo_it, @function
CMS_KeyTransRecipientInfo_it:
.LFB627:
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
.LFE627:
	.size	CMS_KeyTransRecipientInfo_it, .-CMS_KeyTransRecipientInfo_it
	.section	.rodata
.LC35:
	.string	"keyAttrId"
.LC36:
	.string	"keyAttr"
	.section	.data.rel.ro
	.align 32
	.type	CMS_OtherKeyAttribute_seq_tt, @object
	.size	CMS_OtherKeyAttribute_seq_tt, 80
CMS_OtherKeyAttribute_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC35
	.quad	ASN1_OBJECT_it
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC36
	.quad	ASN1_ANY_it
	.text
	.globl	CMS_OtherKeyAttribute_it
	.type	CMS_OtherKeyAttribute_it, @function
CMS_OtherKeyAttribute_it:
.LFB628:
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
.LFE628:
	.size	CMS_OtherKeyAttribute_it, .-CMS_OtherKeyAttribute_it
	.section	.rodata
.LC37:
	.string	"subjectKeyIdentifier"
.LC38:
	.string	"date"
.LC39:
	.string	"other"
	.section	.data.rel.ro
	.align 32
	.type	CMS_RecipientKeyIdentifier_seq_tt, @object
	.size	CMS_RecipientKeyIdentifier_seq_tt, 120
CMS_RecipientKeyIdentifier_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC37
	.quad	ASN1_OCTET_STRING_it
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC38
	.quad	ASN1_GENERALIZEDTIME_it
	.quad	1
	.quad	0
	.quad	16
	.quad	.LC39
	.quad	CMS_OtherKeyAttribute_it
	.text
	.globl	CMS_RecipientKeyIdentifier_it
	.type	CMS_RecipientKeyIdentifier_it, @function
CMS_RecipientKeyIdentifier_it:
.LFB629:
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
.LFE629:
	.size	CMS_RecipientKeyIdentifier_it, .-CMS_RecipientKeyIdentifier_it
	.section	.rodata
.LC40:
	.string	"d.rKeyId"
	.section	.data.rel.ro
	.align 32
	.type	CMS_KeyAgreeRecipientIdentifier_ch_tt, @object
	.size	CMS_KeyAgreeRecipientIdentifier_ch_tt, 80
CMS_KeyAgreeRecipientIdentifier_ch_tt:
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC9
	.quad	CMS_IssuerAndSerialNumber_it
	.quad	136
	.quad	0
	.quad	8
	.quad	.LC40
	.quad	CMS_RecipientKeyIdentifier_it
	.text
	.type	CMS_KeyAgreeRecipientIdentifier_it, @function
CMS_KeyAgreeRecipientIdentifier_it:
.LFB630:
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
.LFE630:
	.size	CMS_KeyAgreeRecipientIdentifier_it, .-CMS_KeyAgreeRecipientIdentifier_it
	.type	cms_rek_cb, @function
cms_rek_cb:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$3, -20(%rbp)
	jne	.L41
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L41:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	cms_rek_cb, .-cms_rek_cb
	.section	.data.rel.ro.local
	.align 32
	.type	CMS_RecipientEncryptedKey_aux, @object
	.size	CMS_RecipientEncryptedKey_aux, 48
CMS_RecipientEncryptedKey_aux:
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	cms_rek_cb
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	CMS_RecipientEncryptedKey_seq_tt, @object
	.size	CMS_RecipientEncryptedKey_seq_tt, 80
CMS_RecipientEncryptedKey_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC32
	.quad	CMS_KeyAgreeRecipientIdentifier_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC34
	.quad	ASN1_OCTET_STRING_it
	.text
	.globl	CMS_RecipientEncryptedKey_it
	.type	CMS_RecipientEncryptedKey_it, @function
CMS_RecipientEncryptedKey_it:
.LFB632:
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
.LFE632:
	.size	CMS_RecipientEncryptedKey_it, .-CMS_RecipientEncryptedKey_it
	.section	.rodata
.LC41:
	.string	"algorithm"
.LC42:
	.string	"publicKey"
	.section	.data.rel.ro
	.align 32
	.type	CMS_OriginatorPublicKey_seq_tt, @object
	.size	CMS_OriginatorPublicKey_seq_tt, 80
CMS_OriginatorPublicKey_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC41
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC42
	.quad	ASN1_BIT_STRING_it
	.text
	.globl	CMS_OriginatorPublicKey_it
	.type	CMS_OriginatorPublicKey_it, @function
CMS_OriginatorPublicKey_it:
.LFB633:
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
.LFE633:
	.size	CMS_OriginatorPublicKey_it, .-CMS_OriginatorPublicKey_it
	.section	.rodata
.LC43:
	.string	"d.originatorKey"
	.section	.data.rel.ro
	.align 32
	.type	CMS_OriginatorIdentifierOrKey_ch_tt, @object
	.size	CMS_OriginatorIdentifierOrKey_ch_tt, 120
CMS_OriginatorIdentifierOrKey_ch_tt:
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC9
	.quad	CMS_IssuerAndSerialNumber_it
	.quad	136
	.quad	0
	.quad	8
	.quad	.LC10
	.quad	ASN1_OCTET_STRING_it
	.quad	136
	.quad	1
	.quad	8
	.quad	.LC43
	.quad	CMS_OriginatorPublicKey_it
	.text
	.type	CMS_OriginatorIdentifierOrKey_it, @function
CMS_OriginatorIdentifierOrKey_it:
.LFB634:
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
.LFE634:
	.size	CMS_OriginatorIdentifierOrKey_it, .-CMS_OriginatorIdentifierOrKey_it
	.type	cms_kari_cb, @function
cms_kari_cb:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.L50
	call	EVP_CIPHER_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L51
	movl	$0, %eax
	jmp	.L52
.L51:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_flags@PLT
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	jmp	.L53
.L50:
	cmpl	$3, -20(%rbp)
	jne	.L53
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
.L53:
	movl	$1, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	cms_kari_cb, .-cms_kari_cb
	.section	.data.rel.ro.local
	.align 32
	.type	CMS_KeyAgreeRecipientInfo_aux, @object
	.size	CMS_KeyAgreeRecipientInfo_aux, 48
CMS_KeyAgreeRecipientInfo_aux:
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	cms_kari_cb
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC44:
	.string	"originator"
.LC45:
	.string	"ukm"
.LC46:
	.string	"recipientEncryptedKeys"
	.section	.data.rel.ro
	.align 32
	.type	CMS_KeyAgreeRecipientInfo_seq_tt, @object
	.size	CMS_KeyAgreeRecipientInfo_seq_tt, 200
CMS_KeyAgreeRecipientInfo_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	INT32_it
	.quad	144
	.quad	0
	.quad	8
	.quad	.LC44
	.quad	CMS_OriginatorIdentifierOrKey_it
	.quad	145
	.quad	1
	.quad	16
	.quad	.LC45
	.quad	ASN1_OCTET_STRING_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC33
	.quad	X509_ALGOR_it
	.quad	4
	.quad	0
	.quad	32
	.quad	.LC46
	.quad	CMS_RecipientEncryptedKey_it
	.text
	.globl	CMS_KeyAgreeRecipientInfo_it
	.type	CMS_KeyAgreeRecipientInfo_it, @function
CMS_KeyAgreeRecipientInfo_it:
.LFB636:
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
.LFE636:
	.size	CMS_KeyAgreeRecipientInfo_it, .-CMS_KeyAgreeRecipientInfo_it
	.section	.rodata
.LC47:
	.string	"keyIdentifier"
	.section	.data.rel.ro
	.align 32
	.type	CMS_KEKIdentifier_seq_tt, @object
	.size	CMS_KEKIdentifier_seq_tt, 120
CMS_KEKIdentifier_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC47
	.quad	ASN1_OCTET_STRING_it
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC38
	.quad	ASN1_GENERALIZEDTIME_it
	.quad	1
	.quad	0
	.quad	16
	.quad	.LC39
	.quad	CMS_OtherKeyAttribute_it
	.text
	.type	CMS_KEKIdentifier_it, @function
CMS_KEKIdentifier_it:
.LFB637:
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
.LFE637:
	.size	CMS_KEKIdentifier_it, .-CMS_KEKIdentifier_it
	.section	.rodata
.LC48:
	.string	"kekid"
	.section	.data.rel.ro
	.align 32
	.type	CMS_KEKRecipientInfo_seq_tt, @object
	.size	CMS_KEKRecipientInfo_seq_tt, 160
CMS_KEKRecipientInfo_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	INT32_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC48
	.quad	CMS_KEKIdentifier_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC33
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC34
	.quad	ASN1_OCTET_STRING_it
	.text
	.globl	CMS_KEKRecipientInfo_it
	.type	CMS_KEKRecipientInfo_it, @function
CMS_KEKRecipientInfo_it:
.LFB638:
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
.LFE638:
	.size	CMS_KEKRecipientInfo_it, .-CMS_KEKRecipientInfo_it
	.section	.rodata
.LC49:
	.string	"keyDerivationAlgorithm"
	.section	.data.rel.ro
	.align 32
	.type	CMS_PasswordRecipientInfo_seq_tt, @object
	.size	CMS_PasswordRecipientInfo_seq_tt, 160
CMS_PasswordRecipientInfo_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	INT32_it
	.quad	137
	.quad	0
	.quad	8
	.quad	.LC49
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC33
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC34
	.quad	ASN1_OCTET_STRING_it
	.text
	.globl	CMS_PasswordRecipientInfo_it
	.type	CMS_PasswordRecipientInfo_it, @function
CMS_PasswordRecipientInfo_it:
.LFB639:
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
.LFE639:
	.size	CMS_PasswordRecipientInfo_it, .-CMS_PasswordRecipientInfo_it
	.section	.rodata
.LC50:
	.string	"oriType"
.LC51:
	.string	"oriValue"
	.section	.data.rel.ro
	.align 32
	.type	CMS_OtherRecipientInfo_seq_tt, @object
	.size	CMS_OtherRecipientInfo_seq_tt, 80
CMS_OtherRecipientInfo_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC50
	.quad	ASN1_OBJECT_it
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC51
	.quad	ASN1_ANY_it
	.text
	.type	CMS_OtherRecipientInfo_it, @function
CMS_OtherRecipientInfo_it:
.LFB640:
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
.LFE640:
	.size	CMS_OtherRecipientInfo_it, .-CMS_OtherRecipientInfo_it
	.type	cms_ri_cb, @function
cms_ri_cb:
.LFB641:
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
	cmpl	$2, -36(%rbp)
	jne	.L65
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L66
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	jmp	.L65
.L66:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L67
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC28(%rip), %rdx
	movl	$222, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	jmp	.L65
.L67:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L65
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC28(%rip), %rdx
	movl	$225, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L65:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	cms_ri_cb, .-cms_ri_cb
	.section	.data.rel.ro.local
	.align 32
	.type	CMS_RecipientInfo_aux, @object
	.size	CMS_RecipientInfo_aux, 48
CMS_RecipientInfo_aux:
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	cms_ri_cb
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC52:
	.string	"d.ktri"
.LC53:
	.string	"d.kari"
.LC54:
	.string	"d.kekri"
.LC55:
	.string	"d.pwri"
.LC56:
	.string	"d.ori"
	.section	.data.rel.ro
	.align 32
	.type	CMS_RecipientInfo_ch_tt, @object
	.size	CMS_RecipientInfo_ch_tt, 200
CMS_RecipientInfo_ch_tt:
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC52
	.quad	CMS_KeyTransRecipientInfo_it
	.quad	136
	.quad	1
	.quad	8
	.quad	.LC53
	.quad	CMS_KeyAgreeRecipientInfo_it
	.quad	136
	.quad	2
	.quad	8
	.quad	.LC54
	.quad	CMS_KEKRecipientInfo_it
	.quad	136
	.quad	3
	.quad	8
	.quad	.LC55
	.quad	CMS_PasswordRecipientInfo_it
	.quad	136
	.quad	4
	.quad	8
	.quad	.LC56
	.quad	CMS_OtherRecipientInfo_it
	.text
	.globl	CMS_RecipientInfo_it
	.type	CMS_RecipientInfo_it, @function
CMS_RecipientInfo_it:
.LFB642:
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
.LFE642:
	.size	CMS_RecipientInfo_it, .-CMS_RecipientInfo_it
	.section	.rodata
.LC57:
	.string	"originatorInfo"
.LC58:
	.string	"recipientInfos"
.LC59:
	.string	"encryptedContentInfo"
.LC60:
	.string	"unprotectedAttrs"
	.section	.data.rel.ro
	.align 32
	.type	CMS_EnvelopedData_seq_tt, @object
	.size	CMS_EnvelopedData_seq_tt, 200
CMS_EnvelopedData_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	INT32_it
	.quad	137
	.quad	0
	.quad	8
	.quad	.LC57
	.quad	CMS_OriginatorInfo_it
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC58
	.quad	CMS_RecipientInfo_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC59
	.quad	CMS_EncryptedContentInfo_it
	.quad	139
	.quad	1
	.quad	32
	.quad	.LC60
	.quad	X509_ATTRIBUTE_it
	.text
	.globl	CMS_EnvelopedData_it
	.type	CMS_EnvelopedData_it, @function
CMS_EnvelopedData_it:
.LFB643:
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
.LFE643:
	.size	CMS_EnvelopedData_it, .-CMS_EnvelopedData_it
	.section	.rodata
.LC61:
	.string	"digest"
	.section	.data.rel.ro
	.align 32
	.type	CMS_DigestedData_seq_tt, @object
	.size	CMS_DigestedData_seq_tt, 160
CMS_DigestedData_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	INT32_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC15
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC24
	.quad	CMS_EncapsulatedContentInfo_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC61
	.quad	ASN1_OCTET_STRING_it
	.text
	.globl	CMS_DigestedData_it
	.type	CMS_DigestedData_it, @function
CMS_DigestedData_it:
.LFB644:
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
.LFE644:
	.size	CMS_DigestedData_it, .-CMS_DigestedData_it
	.section	.data.rel.ro
	.align 32
	.type	CMS_EncryptedData_seq_tt, @object
	.size	CMS_EncryptedData_seq_tt, 120
CMS_EncryptedData_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	INT32_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC59
	.quad	CMS_EncryptedContentInfo_it
	.quad	139
	.quad	1
	.quad	16
	.quad	.LC60
	.quad	X509_ATTRIBUTE_it
	.text
	.globl	CMS_EncryptedData_it
	.type	CMS_EncryptedData_it, @function
CMS_EncryptedData_it:
.LFB645:
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
.LFE645:
	.size	CMS_EncryptedData_it, .-CMS_EncryptedData_it
	.section	.rodata
.LC62:
	.string	"authEncryptedContentInfo"
.LC63:
	.string	"authAttrs"
.LC64:
	.string	"mac"
.LC65:
	.string	"unauthAttrs"
	.section	.data.rel.ro
	.align 32
	.type	CMS_AuthEnvelopedData_seq_tt, @object
	.size	CMS_AuthEnvelopedData_seq_tt, 280
CMS_AuthEnvelopedData_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	INT32_it
	.quad	137
	.quad	0
	.quad	8
	.quad	.LC57
	.quad	CMS_OriginatorInfo_it
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC58
	.quad	CMS_RecipientInfo_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC62
	.quad	CMS_EncryptedContentInfo_it
	.quad	139
	.quad	2
	.quad	32
	.quad	.LC63
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	40
	.quad	.LC64
	.quad	ASN1_OCTET_STRING_it
	.quad	139
	.quad	3
	.quad	48
	.quad	.LC65
	.quad	X509_ALGOR_it
	.text
	.globl	CMS_AuthEnvelopedData_it
	.type	CMS_AuthEnvelopedData_it, @function
CMS_AuthEnvelopedData_it:
.LFB646:
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
.LFE646:
	.size	CMS_AuthEnvelopedData_it, .-CMS_AuthEnvelopedData_it
	.section	.rodata
.LC66:
	.string	"macAlgorithm"
	.section	.data.rel.ro
	.align 32
	.type	CMS_AuthenticatedData_seq_tt, @object
	.size	CMS_AuthenticatedData_seq_tt, 360
CMS_AuthenticatedData_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	INT32_it
	.quad	137
	.quad	0
	.quad	8
	.quad	.LC57
	.quad	CMS_OriginatorInfo_it
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC58
	.quad	CMS_RecipientInfo_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC66
	.quad	X509_ALGOR_it
	.quad	136
	.quad	1
	.quad	32
	.quad	.LC15
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	40
	.quad	.LC24
	.quad	CMS_EncapsulatedContentInfo_it
	.quad	139
	.quad	2
	.quad	48
	.quad	.LC63
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	56
	.quad	.LC64
	.quad	ASN1_OCTET_STRING_it
	.quad	139
	.quad	3
	.quad	64
	.quad	.LC65
	.quad	X509_ALGOR_it
	.text
	.type	CMS_AuthenticatedData_it, @function
CMS_AuthenticatedData_it:
.LFB647:
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
.LFE647:
	.size	CMS_AuthenticatedData_it, .-CMS_AuthenticatedData_it
	.section	.rodata
.LC67:
	.string	"compressionAlgorithm"
	.section	.data.rel.ro
	.align 32
	.type	CMS_CompressedData_seq_tt, @object
	.size	CMS_CompressedData_seq_tt, 120
CMS_CompressedData_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	INT32_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC67
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC24
	.quad	CMS_EncapsulatedContentInfo_it
	.text
	.globl	CMS_CompressedData_it
	.type	CMS_CompressedData_it, @function
CMS_CompressedData_it:
.LFB648:
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
.LFE648:
	.size	CMS_CompressedData_it, .-CMS_CompressedData_it
	.section	.data.rel.ro
	.align 32
	.type	cms_default_tt, @object
	.size	cms_default_tt, 40
cms_default_tt:
	.quad	144
	.quad	0
	.quad	8
	.quad	.LC8
	.quad	ASN1_ANY_it
	.section	.rodata
.LC68:
	.string	"d.data"
.LC69:
	.string	"d.signedData"
.LC70:
	.string	"d.envelopedData"
.LC71:
	.string	"d.digestedData"
.LC72:
	.string	"d.encryptedData"
.LC73:
	.string	"d.authEnvelopedData"
.LC74:
	.string	"d.authenticatedData"
.LC75:
	.string	"d.compressedData"
	.section	.data.rel.ro
	.align 32
	.type	CMS_ContentInfo_adbtbl, @object
	.size	CMS_ContentInfo_adbtbl, 384
CMS_ContentInfo_adbtbl:
	.quad	21
	.quad	2192
	.quad	0
	.quad	8
	.quad	.LC68
	.quad	ASN1_OCTET_STRING_NDEF_it
	.quad	22
	.quad	2192
	.quad	0
	.quad	8
	.quad	.LC69
	.quad	CMS_SignedData_it
	.quad	23
	.quad	2192
	.quad	0
	.quad	8
	.quad	.LC70
	.quad	CMS_EnvelopedData_it
	.quad	25
	.quad	2192
	.quad	0
	.quad	8
	.quad	.LC71
	.quad	CMS_DigestedData_it
	.quad	26
	.quad	2192
	.quad	0
	.quad	8
	.quad	.LC72
	.quad	CMS_EncryptedData_it
	.quad	1059
	.quad	2192
	.quad	0
	.quad	8
	.quad	.LC73
	.quad	CMS_AuthEnvelopedData_it
	.quad	205
	.quad	2192
	.quad	0
	.quad	8
	.quad	.LC74
	.quad	CMS_AuthenticatedData_it
	.quad	786
	.quad	2192
	.quad	0
	.quad	8
	.quad	.LC75
	.quad	CMS_CompressedData_it
	.text
	.type	CMS_ContentInfo_adb, @function
CMS_ContentInfo_adb:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	internal_adb.7(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	CMS_ContentInfo_adb, .-CMS_ContentInfo_adb
	.type	cms_cb, @function
cms_cb:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L86
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpl	$13, -20(%rbp)
	je	.L89
	jmp	.L95
.L86:
	movl	$1, %eax
	jmp	.L88
.L95:
	cmpl	$13, -20(%rbp)
	jg	.L90
	cmpl	$12, -20(%rbp)
	je	.L91
	cmpl	$12, -20(%rbp)
	jg	.L90
	cmpl	$11, -20(%rbp)
	je	.L89
	cmpl	$11, -20(%rbp)
	jg	.L90
	cmpl	$3, -20(%rbp)
	je	.L92
	cmpl	$10, -20(%rbp)
	jne	.L90
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CMS_stream@PLT
	testl	%eax, %eax
	jg	.L91
	movl	$0, %eax
	jmp	.L88
.L91:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_dataInit@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L96
	movl	$0, %eax
	jmp	.L88
.L89:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_dataFinal@PLT
	testl	%eax, %eax
	jg	.L97
	movl	$0, %eax
	jmp	.L88
.L92:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC28(%rip), %rcx
	movl	$333, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L90
.L96:
	nop
	jmp	.L90
.L97:
	nop
.L90:
	movl	$1, %eax
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	cms_cb, .-cms_cb
	.section	.data.rel.ro.local
	.align 32
	.type	CMS_ContentInfo_aux, @object
	.size	CMS_ContentInfo_aux, 48
CMS_ContentInfo_aux:
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	cms_cb
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC76:
	.string	"CMS_ContentInfo"
	.section	.data.rel.ro
	.align 32
	.type	CMS_ContentInfo_seq_tt, @object
	.size	CMS_ContentInfo_seq_tt, 80
CMS_ContentInfo_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC29
	.quad	ASN1_OBJECT_it
	.quad	256
	.quad	-1
	.quad	0
	.quad	.LC76
	.quad	CMS_ContentInfo_adb
	.text
	.globl	CMS_ContentInfo_it
	.type	CMS_ContentInfo_it, @function
CMS_ContentInfo_it:
.LFB651:
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
.LFE651:
	.size	CMS_ContentInfo_it, .-CMS_ContentInfo_it
	.section	.rodata
.LC77:
	.string	"CMS_ATTRIBUTES"
	.section	.data.rel.ro
	.align 32
	.type	CMS_Attributes_Sign_item_tt, @object
	.size	CMS_Attributes_Sign_item_tt, 40
CMS_Attributes_Sign_item_tt:
	.quad	6
	.quad	0
	.quad	0
	.quad	.LC77
	.quad	X509_ATTRIBUTE_it
	.text
	.globl	CMS_Attributes_Sign_it
	.type	CMS_Attributes_Sign_it, @function
CMS_Attributes_Sign_it:
.LFB652:
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
.LFE652:
	.size	CMS_Attributes_Sign_it, .-CMS_Attributes_Sign_it
	.section	.data.rel.ro
	.align 32
	.type	CMS_Attributes_Verify_item_tt, @object
	.size	CMS_Attributes_Verify_item_tt, 40
CMS_Attributes_Verify_item_tt:
	.quad	12
	.quad	17
	.quad	0
	.quad	.LC77
	.quad	X509_ATTRIBUTE_it
	.text
	.globl	CMS_Attributes_Verify_it
	.type	CMS_Attributes_Verify_it, @function
CMS_Attributes_Verify_it:
.LFB653:
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
.LFE653:
	.size	CMS_Attributes_Verify_it, .-CMS_Attributes_Verify_it
	.section	.rodata
.LC78:
	.string	"d.allOrFirstTier"
.LC79:
	.string	"d.receiptList"
	.section	.data.rel.ro
	.align 32
	.type	CMS_ReceiptsFrom_ch_tt, @object
	.size	CMS_ReceiptsFrom_ch_tt, 80
CMS_ReceiptsFrom_ch_tt:
	.quad	4232
	.quad	0
	.quad	8
	.quad	.LC78
	.quad	INT32_it
	.quad	140
	.quad	1
	.quad	8
	.quad	.LC79
	.quad	GENERAL_NAMES_it
	.text
	.type	CMS_ReceiptsFrom_it, @function
CMS_ReceiptsFrom_it:
.LFB654:
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
.LFE654:
	.size	CMS_ReceiptsFrom_it, .-CMS_ReceiptsFrom_it
	.section	.rodata
.LC80:
	.string	"signedContentIdentifier"
.LC81:
	.string	"receiptsFrom"
.LC82:
	.string	"receiptsTo"
	.section	.data.rel.ro
	.align 32
	.type	CMS_ReceiptRequest_seq_tt, @object
	.size	CMS_ReceiptRequest_seq_tt, 120
CMS_ReceiptRequest_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC80
	.quad	ASN1_OCTET_STRING_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC81
	.quad	CMS_ReceiptsFrom_it
	.quad	4
	.quad	0
	.quad	16
	.quad	.LC82
	.quad	GENERAL_NAMES_it
	.text
	.globl	CMS_ReceiptRequest_it
	.type	CMS_ReceiptRequest_it, @function
CMS_ReceiptRequest_it:
.LFB655:
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
.LFE655:
	.size	CMS_ReceiptRequest_it, .-CMS_ReceiptRequest_it
	.section	.rodata
.LC83:
	.string	"originatorSignatureValue"
	.section	.data.rel.ro
	.align 32
	.type	CMS_Receipt_seq_tt, @object
	.size	CMS_Receipt_seq_tt, 160
CMS_Receipt_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	INT32_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC29
	.quad	ASN1_OBJECT_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC80
	.quad	ASN1_OCTET_STRING_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC83
	.quad	ASN1_OCTET_STRING_it
	.text
	.globl	CMS_Receipt_it
	.type	CMS_Receipt_it, @function
CMS_Receipt_it:
.LFB656:
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
.LFE656:
	.size	CMS_Receipt_it, .-CMS_Receipt_it
	.section	.rodata
.LC84:
	.string	"keyInfo"
.LC85:
	.string	"entityUInfo"
.LC86:
	.string	"suppPubInfo"
	.section	.data.rel.ro
	.align 32
	.type	CMS_SharedInfo_seq_tt, @object
	.size	CMS_SharedInfo_seq_tt, 120
CMS_SharedInfo_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC84
	.quad	X509_ALGOR_it
	.quad	145
	.quad	0
	.quad	8
	.quad	.LC85
	.quad	ASN1_OCTET_STRING_it
	.quad	145
	.quad	2
	.quad	16
	.quad	.LC86
	.quad	ASN1_OCTET_STRING_it
	.text
	.type	CMS_SharedInfo_it, @function
CMS_SharedInfo_it:
.LFB657:
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
.LFE657:
	.size	CMS_SharedInfo_it, .-CMS_SharedInfo_it
	.globl	CMS_SharedInfo_encode
	.type	CMS_SharedInfo_encode, @function
CMS_SharedInfo_encode:
.LFB658:
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
	movl	%ecx, -92(%rbp)
	movq	$0, -8(%rbp)
	sall	$3, -92(%rbp)
	movl	-92(%rbp), %eax
	shrl	$24, %eax
	movb	%al, -36(%rbp)
	movl	-92(%rbp), %eax
	sarl	$16, %eax
	movb	%al, -35(%rbp)
	movl	-92(%rbp), %eax
	sarl	$8, %eax
	movb	%al, -34(%rbp)
	movl	-92(%rbp), %eax
	movb	%al, -33(%rbp)
	movl	$4, -32(%rbp)
	leaq	-36(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$4, -28(%rbp)
	movq	$0, -16(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	call	CMS_SharedInfo_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	CMS_SharedInfo_encode, .-CMS_SharedInfo_encode
	.section	.rodata
.LC87:
	.string	"CMS_IssuerAndSerialNumber"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.37, @object
	.size	local_it.37, 56
local_it.37:
	.byte	1
	.zero	7
	.quad	16
	.quad	CMS_IssuerAndSerialNumber_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC87
	.section	.rodata
.LC88:
	.string	"CMS_OtherCertificateFormat"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.36, @object
	.size	local_it.36, 56
local_it.36:
	.byte	1
	.zero	7
	.quad	16
	.quad	CMS_OtherCertificateFormat_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC88
	.section	.rodata
.LC89:
	.string	"CMS_CertificateChoices"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.35, @object
	.size	local_it.35, 56
local_it.35:
	.byte	2
	.zero	7
	.quad	0
	.quad	CMS_CertificateChoices_ch_tt
	.quad	5
	.quad	0
	.quad	16
	.quad	.LC89
	.section	.rodata
.LC90:
	.string	"CMS_SignerIdentifier"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.34, @object
	.size	local_it.34, 56
local_it.34:
	.byte	2
	.zero	7
	.quad	0
	.quad	CMS_SignerIdentifier_ch_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC90
	.section	.rodata
.LC91:
	.string	"CMS_EncapsulatedContentInfo"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.33, @object
	.size	local_it.33, 56
local_it.33:
	.byte	6
	.zero	7
	.quad	16
	.quad	CMS_EncapsulatedContentInfo_seq_tt
	.quad	2
	.quad	0
	.quad	24
	.quad	.LC91
	.section	.rodata
.LC92:
	.string	"CMS_SignerInfo"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.32, @object
	.size	local_it.32, 56
local_it.32:
	.byte	1
	.zero	7
	.quad	16
	.quad	CMS_SignerInfo_seq_tt
	.quad	7
	.quad	CMS_SignerInfo_aux
	.quad	96
	.quad	.LC92
	.section	.rodata
.LC93:
	.string	"CMS_OtherRevocationInfoFormat"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.31, @object
	.size	local_it.31, 56
local_it.31:
	.byte	1
	.zero	7
	.quad	16
	.quad	CMS_OtherRevocationInfoFormat_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC93
	.section	.rodata
.LC94:
	.string	"CMS_RevocationInfoChoice"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.30, @object
	.size	local_it.30, 56
local_it.30:
	.byte	2
	.zero	7
	.quad	0
	.quad	CMS_RevocationInfoChoice_ch_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC94
	.section	.rodata
.LC95:
	.string	"CMS_SignedData"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.29, @object
	.size	local_it.29, 56
local_it.29:
	.byte	6
	.zero	7
	.quad	16
	.quad	CMS_SignedData_seq_tt
	.quad	6
	.quad	0
	.quad	48
	.quad	.LC95
	.section	.rodata
.LC96:
	.string	"CMS_OriginatorInfo"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.28, @object
	.size	local_it.28, 56
local_it.28:
	.byte	1
	.zero	7
	.quad	16
	.quad	CMS_OriginatorInfo_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC96
	.section	.rodata
.LC97:
	.string	"CMS_EncryptedContentInfo"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.27, @object
	.size	local_it.27, 56
local_it.27:
	.byte	6
	.zero	7
	.quad	16
	.quad	CMS_EncryptedContentInfo_seq_tt
	.quad	3
	.quad	CMS_EncryptedContentInfo_aux
	.quad	72
	.quad	.LC97
	.section	.rodata
.LC98:
	.string	"CMS_KeyTransRecipientInfo"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.26, @object
	.size	local_it.26, 56
local_it.26:
	.byte	1
	.zero	7
	.quad	16
	.quad	CMS_KeyTransRecipientInfo_seq_tt
	.quad	4
	.quad	0
	.quad	64
	.quad	.LC98
	.section	.rodata
.LC99:
	.string	"CMS_OtherKeyAttribute"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.25, @object
	.size	local_it.25, 56
local_it.25:
	.byte	1
	.zero	7
	.quad	16
	.quad	CMS_OtherKeyAttribute_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC99
	.section	.rodata
.LC100:
	.string	"CMS_RecipientKeyIdentifier"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.24, @object
	.size	local_it.24, 56
local_it.24:
	.byte	1
	.zero	7
	.quad	16
	.quad	CMS_RecipientKeyIdentifier_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC100
	.section	.rodata
	.align 8
.LC101:
	.string	"CMS_KeyAgreeRecipientIdentifier"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.23, @object
	.size	local_it.23, 56
local_it.23:
	.byte	2
	.zero	7
	.quad	0
	.quad	CMS_KeyAgreeRecipientIdentifier_ch_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC101
	.section	.rodata
.LC102:
	.string	"CMS_RecipientEncryptedKey"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.22, @object
	.size	local_it.22, 56
local_it.22:
	.byte	1
	.zero	7
	.quad	16
	.quad	CMS_RecipientEncryptedKey_seq_tt
	.quad	2
	.quad	CMS_RecipientEncryptedKey_aux
	.quad	24
	.quad	.LC102
	.section	.rodata
.LC103:
	.string	"CMS_OriginatorPublicKey"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.21, @object
	.size	local_it.21, 56
local_it.21:
	.byte	1
	.zero	7
	.quad	16
	.quad	CMS_OriginatorPublicKey_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC103
	.section	.rodata
.LC104:
	.string	"CMS_OriginatorIdentifierOrKey"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.20, @object
	.size	local_it.20, 56
local_it.20:
	.byte	2
	.zero	7
	.quad	0
	.quad	CMS_OriginatorIdentifierOrKey_ch_tt
	.quad	3
	.quad	0
	.quad	16
	.quad	.LC104
	.section	.rodata
.LC105:
	.string	"CMS_KeyAgreeRecipientInfo"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.19, @object
	.size	local_it.19, 56
local_it.19:
	.byte	1
	.zero	7
	.quad	16
	.quad	CMS_KeyAgreeRecipientInfo_seq_tt
	.quad	5
	.quad	CMS_KeyAgreeRecipientInfo_aux
	.quad	64
	.quad	.LC105
	.section	.rodata
.LC106:
	.string	"CMS_KEKIdentifier"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.18, @object
	.size	local_it.18, 56
local_it.18:
	.byte	1
	.zero	7
	.quad	16
	.quad	CMS_KEKIdentifier_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC106
	.section	.rodata
.LC107:
	.string	"CMS_KEKRecipientInfo"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.17, @object
	.size	local_it.17, 56
local_it.17:
	.byte	1
	.zero	7
	.quad	16
	.quad	CMS_KEKRecipientInfo_seq_tt
	.quad	4
	.quad	0
	.quad	56
	.quad	.LC107
	.section	.rodata
.LC108:
	.string	"CMS_PasswordRecipientInfo"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.16, @object
	.size	local_it.16, 56
local_it.16:
	.byte	1
	.zero	7
	.quad	16
	.quad	CMS_PasswordRecipientInfo_seq_tt
	.quad	4
	.quad	0
	.quad	56
	.quad	.LC108
	.section	.rodata
.LC109:
	.string	"CMS_OtherRecipientInfo"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.15, @object
	.size	local_it.15, 56
local_it.15:
	.byte	1
	.zero	7
	.quad	16
	.quad	CMS_OtherRecipientInfo_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC109
	.section	.rodata
.LC110:
	.string	"CMS_RecipientInfo"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.14, @object
	.size	local_it.14, 56
local_it.14:
	.byte	2
	.zero	7
	.quad	0
	.quad	CMS_RecipientInfo_ch_tt
	.quad	5
	.quad	CMS_RecipientInfo_aux
	.quad	16
	.quad	.LC110
	.section	.rodata
.LC111:
	.string	"CMS_EnvelopedData"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.13, @object
	.size	local_it.13, 56
local_it.13:
	.byte	6
	.zero	7
	.quad	16
	.quad	CMS_EnvelopedData_seq_tt
	.quad	5
	.quad	0
	.quad	40
	.quad	.LC111
	.section	.rodata
.LC112:
	.string	"CMS_DigestedData"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.12, @object
	.size	local_it.12, 56
local_it.12:
	.byte	6
	.zero	7
	.quad	16
	.quad	CMS_DigestedData_seq_tt
	.quad	4
	.quad	0
	.quad	32
	.quad	.LC112
	.section	.rodata
.LC113:
	.string	"CMS_EncryptedData"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.11, @object
	.size	local_it.11, 56
local_it.11:
	.byte	6
	.zero	7
	.quad	16
	.quad	CMS_EncryptedData_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC113
	.section	.rodata
.LC114:
	.string	"CMS_AuthEnvelopedData"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.10, @object
	.size	local_it.10, 56
local_it.10:
	.byte	6
	.zero	7
	.quad	16
	.quad	CMS_AuthEnvelopedData_seq_tt
	.quad	7
	.quad	0
	.quad	56
	.quad	.LC114
	.section	.rodata
.LC115:
	.string	"CMS_AuthenticatedData"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.9, @object
	.size	local_it.9, 56
local_it.9:
	.byte	6
	.zero	7
	.quad	16
	.quad	CMS_AuthenticatedData_seq_tt
	.quad	9
	.quad	0
	.quad	72
	.quad	.LC115
	.section	.rodata
.LC116:
	.string	"CMS_CompressedData"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.8, @object
	.size	local_it.8, 56
local_it.8:
	.byte	6
	.zero	7
	.quad	16
	.quad	CMS_CompressedData_seq_tt
	.quad	3
	.quad	0
	.quad	32
	.quad	.LC116
	.align 32
	.type	internal_adb.7, @object
	.size	internal_adb.7, 56
internal_adb.7:
	.quad	0
	.quad	0
	.quad	0
	.quad	CMS_ContentInfo_adbtbl
	.quad	8
	.quad	cms_default_tt
	.quad	0
	.align 32
	.type	local_it.6, @object
	.size	local_it.6, 56
local_it.6:
	.byte	6
	.zero	7
	.quad	16
	.quad	CMS_ContentInfo_seq_tt
	.quad	2
	.quad	CMS_ContentInfo_aux
	.quad	32
	.quad	.LC76
	.section	.rodata
.LC117:
	.string	"CMS_Attributes_Sign"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.5, @object
	.size	local_it.5, 56
local_it.5:
	.byte	0
	.zero	7
	.quad	-1
	.quad	CMS_Attributes_Sign_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC117
	.section	.rodata
.LC118:
	.string	"CMS_Attributes_Verify"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.4, @object
	.size	local_it.4, 56
local_it.4:
	.byte	0
	.zero	7
	.quad	-1
	.quad	CMS_Attributes_Verify_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC118
	.section	.rodata
.LC119:
	.string	"CMS_ReceiptsFrom"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.3, @object
	.size	local_it.3, 56
local_it.3:
	.byte	2
	.zero	7
	.quad	0
	.quad	CMS_ReceiptsFrom_ch_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC119
	.section	.rodata
.LC120:
	.string	"CMS_ReceiptRequest"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	1
	.zero	7
	.quad	16
	.quad	CMS_ReceiptRequest_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC120
	.section	.rodata
.LC121:
	.string	"CMS_Receipt"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	CMS_Receipt_seq_tt
	.quad	4
	.quad	0
	.quad	32
	.quad	.LC121
	.section	.rodata
.LC122:
	.string	"CMS_SharedInfo"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	1
	.zero	7
	.quad	16
	.quad	CMS_SharedInfo_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC122
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

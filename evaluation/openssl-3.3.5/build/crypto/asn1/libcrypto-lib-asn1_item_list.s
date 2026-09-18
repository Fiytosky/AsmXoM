	.file	"asn1_item_list.c"
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
	.section	.data.rel,"aw"
	.align 32
	.type	asn1_item_list, @object
	.size	asn1_item_list, 1168
asn1_item_list:
	.quad	ACCESS_DESCRIPTION_it
	.quad	ASIdOrRange_it
	.quad	ASIdentifierChoice_it
	.quad	ASIdentifiers_it
	.quad	ASN1_ANY_it
	.quad	ASN1_BIT_STRING_it
	.quad	ASN1_BMPSTRING_it
	.quad	ASN1_BOOLEAN_it
	.quad	ASN1_ENUMERATED_it
	.quad	ASN1_FBOOLEAN_it
	.quad	ASN1_GENERALIZEDTIME_it
	.quad	ASN1_GENERALSTRING_it
	.quad	ASN1_IA5STRING_it
	.quad	ASN1_INTEGER_it
	.quad	ASN1_NULL_it
	.quad	ASN1_OBJECT_it
	.quad	ASN1_OCTET_STRING_NDEF_it
	.quad	ASN1_OCTET_STRING_it
	.quad	ASN1_PRINTABLESTRING_it
	.quad	ASN1_PRINTABLE_it
	.quad	ASN1_SEQUENCE_ANY_it
	.quad	ASN1_SEQUENCE_it
	.quad	ASN1_SET_ANY_it
	.quad	ASN1_T61STRING_it
	.quad	ASN1_TBOOLEAN_it
	.quad	ASN1_TIME_it
	.quad	ASN1_UNIVERSALSTRING_it
	.quad	ASN1_UTCTIME_it
	.quad	ASN1_UTF8STRING_it
	.quad	ASN1_VISIBLESTRING_it
	.quad	ASRange_it
	.quad	AUTHORITY_INFO_ACCESS_it
	.quad	AUTHORITY_KEYID_it
	.quad	BASIC_CONSTRAINTS_it
	.quad	BIGNUM_it
	.quad	CBIGNUM_it
	.quad	CERTIFICATEPOLICIES_it
	.quad	CMS_ContentInfo_it
	.quad	CMS_EnvelopedData_it
	.quad	CMS_ReceiptRequest_it
	.quad	CRL_DIST_POINTS_it
	.quad	DHparams_it
	.quad	DIRECTORYSTRING_it
	.quad	DISPLAYTEXT_it
	.quad	DIST_POINT_NAME_it
	.quad	DIST_POINT_it
	.quad	ECPARAMETERS_it
	.quad	ECPKPARAMETERS_it
	.quad	EDIPARTYNAME_it
	.quad	EXTENDED_KEY_USAGE_it
	.quad	GENERAL_NAMES_it
	.quad	GENERAL_NAME_it
	.quad	GENERAL_SUBTREE_it
	.quad	IPAddressChoice_it
	.quad	IPAddressFamily_it
	.quad	IPAddressOrRange_it
	.quad	IPAddressRange_it
	.quad	ISSUING_DIST_POINT_it
	.quad	LONG_it
	.quad	NAME_CONSTRAINTS_it
	.quad	NETSCAPE_CERT_SEQUENCE_it
	.quad	NETSCAPE_SPKAC_it
	.quad	NETSCAPE_SPKI_it
	.quad	NOTICEREF_it
	.quad	OCSP_BASICRESP_it
	.quad	OCSP_CERTID_it
	.quad	OCSP_CERTSTATUS_it
	.quad	OCSP_CRLID_it
	.quad	OCSP_ONEREQ_it
	.quad	OCSP_REQINFO_it
	.quad	OCSP_REQUEST_it
	.quad	OCSP_RESPBYTES_it
	.quad	OCSP_RESPDATA_it
	.quad	OCSP_RESPID_it
	.quad	OCSP_RESPONSE_it
	.quad	OCSP_REVOKEDINFO_it
	.quad	OCSP_SERVICELOC_it
	.quad	OCSP_SIGNATURE_it
	.quad	OCSP_SINGLERESP_it
	.quad	OTHERNAME_it
	.quad	PBE2PARAM_it
	.quad	PBEPARAM_it
	.quad	PBKDF2PARAM_it
	.quad	PKCS12_AUTHSAFES_it
	.quad	PKCS12_BAGS_it
	.quad	PKCS12_MAC_DATA_it
	.quad	PKCS12_SAFEBAGS_it
	.quad	PKCS12_SAFEBAG_it
	.quad	PKCS12_it
	.quad	PKCS7_ATTR_SIGN_it
	.quad	PKCS7_ATTR_VERIFY_it
	.quad	PKCS7_DIGEST_it
	.quad	PKCS7_ENCRYPT_it
	.quad	PKCS7_ENC_CONTENT_it
	.quad	PKCS7_ENVELOPE_it
	.quad	PKCS7_ISSUER_AND_SERIAL_it
	.quad	PKCS7_RECIP_INFO_it
	.quad	PKCS7_SIGNED_it
	.quad	PKCS7_SIGNER_INFO_it
	.quad	PKCS7_SIGN_ENVELOPE_it
	.quad	PKCS7_it
	.quad	PKCS8_PRIV_KEY_INFO_it
	.quad	PKEY_USAGE_PERIOD_it
	.quad	POLICYINFO_it
	.quad	POLICYQUALINFO_it
	.quad	POLICY_CONSTRAINTS_it
	.quad	POLICY_MAPPINGS_it
	.quad	POLICY_MAPPING_it
	.quad	PROXY_CERT_INFO_EXTENSION_it
	.quad	PROXY_POLICY_it
	.quad	RSAPrivateKey_it
	.quad	RSAPublicKey_it
	.quad	RSA_OAEP_PARAMS_it
	.quad	RSA_PSS_PARAMS_it
	.quad	SCRYPT_PARAMS_it
	.quad	SXNETID_it
	.quad	SXNET_it
	.quad	ISSUER_SIGN_TOOL_it
	.quad	USERNOTICE_it
	.quad	X509_ALGORS_it
	.quad	X509_ALGOR_it
	.quad	X509_ATTRIBUTE_it
	.quad	X509_CERT_AUX_it
	.quad	X509_CINF_it
	.quad	X509_CRL_INFO_it
	.quad	X509_CRL_it
	.quad	X509_EXTENSIONS_it
	.quad	X509_EXTENSION_it
	.quad	X509_NAME_ENTRY_it
	.quad	X509_NAME_it
	.quad	X509_PUBKEY_it
	.quad	X509_REQ_INFO_it
	.quad	X509_REQ_it
	.quad	X509_REVOKED_it
	.quad	X509_SIG_it
	.quad	X509_VAL_it
	.quad	X509_it
	.quad	ZLONG_it
	.quad	INT32_it
	.quad	UINT32_it
	.quad	ZINT32_it
	.quad	ZUINT32_it
	.quad	INT64_it
	.quad	UINT64_it
	.quad	ZINT64_it
	.quad	ZUINT64_it
	.text
	.globl	ASN1_ITEM_lookup
	.type	ASN1_ITEM_lookup, @function
ASN1_ITEM_lookup:
.LFB677:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L6
.L9:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	asn1_item_list(%rip), %rax
	movq	(%rdx,%rax), %rax
	call	*%rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L7
	movq	-16(%rbp), %rax
	jmp	.L8
.L7:
	addq	$1, -8(%rbp)
.L6:
	cmpq	$145, -8(%rbp)
	jbe	.L9
	movl	$0, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	ASN1_ITEM_lookup, .-ASN1_ITEM_lookup
	.globl	ASN1_ITEM_get
	.type	ASN1_ITEM_get, @function
ASN1_ITEM_get:
.LFB678:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$145, -8(%rbp)
	jbe	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	asn1_item_list(%rip), %rax
	movq	(%rdx,%rax), %rax
	call	*%rax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	ASN1_ITEM_get, .-ASN1_ITEM_get
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

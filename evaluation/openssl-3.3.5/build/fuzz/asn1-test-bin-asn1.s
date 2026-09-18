	.file	"asn1.c"
	.text
	.section	.data.rel,"aw"
	.align 32
	.type	item_type, @object
	.size	item_type, 1152
item_type:
	.quad	ACCESS_DESCRIPTION_it
	.quad	ASIdentifierChoice_it
	.quad	ASIdentifiers_it
	.quad	ASIdOrRange_it
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
	.quad	ASN1_OCTET_STRING_it
	.quad	ASN1_OCTET_STRING_NDEF_it
	.quad	ASN1_PRINTABLE_it
	.quad	ASN1_PRINTABLESTRING_it
	.quad	ASN1_SEQUENCE_it
	.quad	ASN1_SEQUENCE_ANY_it
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
	.quad	CMS_ReceiptRequest_it
	.quad	CRL_DIST_POINTS_it
	.quad	DHparams_it
	.quad	DIRECTORYSTRING_it
	.quad	DISPLAYTEXT_it
	.quad	DIST_POINT_it
	.quad	DIST_POINT_NAME_it
	.quad	ECPARAMETERS_it
	.quad	ECPKPARAMETERS_it
	.quad	EDIPARTYNAME_it
	.quad	EXTENDED_KEY_USAGE_it
	.quad	GENERAL_NAME_it
	.quad	GENERAL_NAMES_it
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
	.quad	PKCS12_it
	.quad	PKCS12_AUTHSAFES_it
	.quad	PKCS12_BAGS_it
	.quad	PKCS12_MAC_DATA_it
	.quad	PKCS12_SAFEBAG_it
	.quad	PKCS12_SAFEBAGS_it
	.quad	PKCS7_it
	.quad	PKCS7_ATTR_SIGN_it
	.quad	PKCS7_ATTR_VERIFY_it
	.quad	PKCS7_DIGEST_it
	.quad	PKCS7_ENC_CONTENT_it
	.quad	PKCS7_ENCRYPT_it
	.quad	PKCS7_ENVELOPE_it
	.quad	PKCS7_ISSUER_AND_SERIAL_it
	.quad	PKCS7_RECIP_INFO_it
	.quad	PKCS7_SIGNED_it
	.quad	PKCS7_SIGN_ENVELOPE_it
	.quad	PKCS7_SIGNER_INFO_it
	.quad	PKCS8_PRIV_KEY_INFO_it
	.quad	PKEY_USAGE_PERIOD_it
	.quad	POLICY_CONSTRAINTS_it
	.quad	POLICYINFO_it
	.quad	POLICY_MAPPING_it
	.quad	POLICY_MAPPINGS_it
	.quad	POLICYQUALINFO_it
	.quad	PROXY_CERT_INFO_EXTENSION_it
	.quad	PROXY_POLICY_it
	.quad	RSA_OAEP_PARAMS_it
	.quad	RSA_PSS_PARAMS_it
	.quad	RSAPrivateKey_it
	.quad	RSAPublicKey_it
	.quad	SXNET_it
	.quad	SXNETID_it
	.quad	USERNOTICE_it
	.quad	X509_it
	.quad	X509_ALGOR_it
	.quad	X509_ALGORS_it
	.quad	X509_ATTRIBUTE_it
	.quad	X509_CERT_AUX_it
	.quad	X509_CINF_it
	.quad	X509_CRL_it
	.quad	X509_CRL_INFO_it
	.quad	X509_EXTENSION_it
	.quad	X509_EXTENSIONS_it
	.quad	X509_NAME_it
	.quad	X509_NAME_ENTRY_it
	.quad	X509_PUBKEY_it
	.quad	X509_REQ_it
	.quad	X509_REQ_INFO_it
	.quad	X509_REVOKED_it
	.quad	X509_SIG_it
	.quad	X509_VAL_it
	.quad	ZLONG_it
	.quad	INT32_it
	.quad	ZINT32_it
	.quad	UINT32_it
	.quad	ZUINT32_it
	.quad	INT64_it
	.quad	ZINT64_it
	.quad	UINT64_it
	.quad	ZUINT64_it
	.quad	0
	.local	pctx
	.comm	pctx,8,8
	.text
	.globl	FuzzerInitialize
	.type	FuzzerInitialize, @function
FuzzerInitialize:
.LFB676:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	FuzzerSetRand@PLT
	call	ASN1_PCTX_new@PLT
	movq	%rax, pctx(%rip)
	movq	pctx(%rip), %rax
	movl	$143, %esi
	movq	%rax, %rdi
	call	ASN1_PCTX_set_flags@PLT
	movq	pctx(%rip), %rax
	movl	$208, %esi
	movq	%rax, %rdi
	call	ASN1_PCTX_set_str_flags@PLT
	movl	$0, %esi
	movl	$2, %edi
	call	OPENSSL_init_crypto@PLT
	movl	$0, %esi
	movl	$2097152, %edi
	call	OPENSSL_init_ssl@PLT
	call	ERR_clear_error@PLT
	movl	$-1, %esi
	movl	$0, %edi
	call	CRYPTO_free_ex_index@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE676:
	.size	FuzzerInitialize, .-FuzzerInitialize
	.section	.rodata
.LC0:
	.string	"../fuzz/asn1.c"
	.text
	.globl	FuzzerTestOneInput
	.type	FuzzerTestOneInput, @function
FuzzerTestOneInput:
.LFB677:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$896, %rsp
	movq	%rdi, -888(%rbp)
	movq	%rsi, -896(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L4
.L8:
	movq	-888(%rbp), %rax
	movq	%rax, -480(%rbp)
	movq	$0, -488(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	item_type(%rip), %rax
	movq	(%rdx,%rax), %rax
	call	*%rax
	movq	%rax, -456(%rbp)
	movq	-896(%rbp), %rdx
	movq	-456(%rbp), %rcx
	leaq	-480(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_item_d2i@PLT
	movq	%rax, -464(%rbp)
	cmpq	$0, -464(%rbp)
	je	.L5
	movq	-480(%rbp), %rax
	subq	-888(%rbp), %rax
	cmpq	$9999, %rax
	jg	.L6
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -472(%rbp)
	cmpq	$0, -472(%rbp)
	je	.L6
	movq	pctx(%rip), %rcx
	movq	-456(%rbp), %rdx
	movq	-464(%rbp), %rsi
	movq	-472(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	ASN1_item_print@PLT
	movq	-472(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L6:
	movq	-456(%rbp), %rdx
	leaq	-488(%rbp), %rcx
	movq	-464(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	testl	%eax, %eax
	jle	.L7
	movq	-488(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$327, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L7:
	movq	-456(%rbp), %rdx
	movq	-464(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
.L5:
	addl	$1, -4(%rbp)
.L4:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	item_type(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	jne	.L8
	movq	-888(%rbp), %rax
	movq	%rax, -496(%rbp)
	movq	$0, -504(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-496(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_TS_REQ@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L9
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L10
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_REQ_print_bio@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L10:
	leaq	-504(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_TS_REQ@PLT
	movl	%eax, -28(%rbp)
	movq	-504(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$334, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	TS_REQ_free@PLT
.L9:
	movq	-888(%rbp), %rax
	movq	%rax, -512(%rbp)
	movq	$0, -520(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-512(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_TS_MSG_IMPRINT@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L11
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L12
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_MSG_IMPRINT_print_bio@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L12:
	leaq	-520(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_TS_MSG_IMPRINT@PLT
	movl	%eax, -52(%rbp)
	movq	-520(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$335, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	TS_MSG_IMPRINT_free@PLT
.L11:
	movq	-888(%rbp), %rax
	movq	%rax, -528(%rbp)
	movq	$0, -536(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-528(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_TS_RESP@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L13
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L14
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_RESP_print_bio@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L14:
	leaq	-536(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_TS_RESP@PLT
	movl	%eax, -76(%rbp)
	movq	-536(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$336, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	TS_RESP_free@PLT
.L13:
	movq	-888(%rbp), %rax
	movq	%rax, -544(%rbp)
	movq	$0, -552(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_TS_STATUS_INFO@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L15
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L16
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_STATUS_INFO_print_bio@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L16:
	leaq	-552(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_TS_STATUS_INFO@PLT
	movl	%eax, -100(%rbp)
	movq	-552(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$337, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	TS_STATUS_INFO_free@PLT
.L15:
	movq	-888(%rbp), %rax
	movq	%rax, -560(%rbp)
	movq	$0, -568(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-560(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_TS_TST_INFO@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L17
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L18
	movq	-112(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_TST_INFO_print_bio@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L18:
	leaq	-568(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_TS_TST_INFO@PLT
	movl	%eax, -124(%rbp)
	movq	-568(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$338, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	TS_TST_INFO_free@PLT
.L17:
	movq	-888(%rbp), %rax
	movq	%rax, -576(%rbp)
	movq	$0, -584(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-576(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_TS_ACCURACY@PLT
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L19
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	-584(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_TS_ACCURACY@PLT
	movq	-584(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$339, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	TS_ACCURACY_free@PLT
.L19:
	movq	-888(%rbp), %rax
	movq	%rax, -592(%rbp)
	movq	$0, -600(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-592(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ESS_ISSUER_SERIAL@PLT
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.L20
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	-600(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ESS_ISSUER_SERIAL@PLT
	movq	-600(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$341, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ESS_ISSUER_SERIAL_free@PLT
.L20:
	movq	-888(%rbp), %rax
	movq	%rax, -608(%rbp)
	movq	$0, -616(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-608(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ESS_CERT_ID@PLT
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	je	.L21
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	-616(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ESS_CERT_ID@PLT
	movq	-616(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$342, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ESS_CERT_ID_free@PLT
.L21:
	movq	-888(%rbp), %rax
	movq	%rax, -624(%rbp)
	movq	$0, -632(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-624(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ESS_SIGNING_CERT@PLT
	movq	%rax, -184(%rbp)
	cmpq	$0, -184(%rbp)
	je	.L22
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	-632(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ESS_SIGNING_CERT@PLT
	movq	-632(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$343, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	ESS_SIGNING_CERT_free@PLT
.L22:
	movq	-888(%rbp), %rax
	movq	%rax, -640(%rbp)
	movq	$0, -648(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-640(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ESS_CERT_ID_V2@PLT
	movq	%rax, -200(%rbp)
	cmpq	$0, -200(%rbp)
	je	.L23
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	-648(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ESS_CERT_ID_V2@PLT
	movq	-648(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$344, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	ESS_CERT_ID_V2_free@PLT
.L23:
	movq	-888(%rbp), %rax
	movq	%rax, -656(%rbp)
	movq	$0, -664(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-656(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ESS_SIGNING_CERT_V2@PLT
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	je	.L24
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	-664(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ESS_SIGNING_CERT_V2@PLT
	movq	-664(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$345, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	ESS_SIGNING_CERT_V2_free@PLT
.L24:
	movq	-888(%rbp), %rax
	movq	%rax, -672(%rbp)
	movq	$0, -680(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-672(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_DHparams@PLT
	movq	%rax, -232(%rbp)
	cmpq	$0, -232(%rbp)
	je	.L25
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	-680(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_DHparams@PLT
	movq	-680(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$347, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
.L25:
	movq	-888(%rbp), %rax
	movq	%rax, -688(%rbp)
	movq	$0, -696(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-688(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_DHxparams@PLT
	movq	%rax, -248(%rbp)
	cmpq	$0, -248(%rbp)
	je	.L26
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	-696(%rbp), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_DHxparams@PLT
	movq	-696(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$348, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
.L26:
	movq	-888(%rbp), %rax
	movq	%rax, -704(%rbp)
	movq	$0, -712(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-704(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_DSA_SIG@PLT
	movq	%rax, -264(%rbp)
	cmpq	$0, -264(%rbp)
	je	.L27
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	-712(%rbp), %rdx
	movq	-264(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_DSA_SIG@PLT
	movq	-712(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$351, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_SIG_free@PLT
.L27:
	movq	-888(%rbp), %rax
	movq	%rax, -720(%rbp)
	movq	$0, -728(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-720(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_DSAPrivateKey@PLT
	movq	%rax, -280(%rbp)
	cmpq	$0, -280(%rbp)
	je	.L28
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	-728(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_DSAPrivateKey@PLT
	movq	-728(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$353, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
.L28:
	movq	-888(%rbp), %rax
	movq	%rax, -736(%rbp)
	movq	$0, -744(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-736(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_DSAPublicKey@PLT
	movq	%rax, -296(%rbp)
	cmpq	$0, -296(%rbp)
	je	.L29
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	-744(%rbp), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_DSAPublicKey@PLT
	movq	-744(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$354, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
.L29:
	movq	-888(%rbp), %rax
	movq	%rax, -752(%rbp)
	movq	$0, -760(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-752(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_DSAparams@PLT
	movq	%rax, -312(%rbp)
	cmpq	$0, -312(%rbp)
	je	.L30
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	-760(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_DSAparams@PLT
	movq	-760(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$355, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
.L30:
	movq	-888(%rbp), %rax
	movq	%rax, -768(%rbp)
	movq	$0, -776(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-768(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_RSAPublicKey@PLT
	movq	%rax, -328(%rbp)
	cmpq	$0, -328(%rbp)
	je	.L31
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	-776(%rbp), %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_RSAPublicKey@PLT
	movq	-776(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$359, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
.L31:
	movq	-888(%rbp), %rax
	movq	%rax, -784(%rbp)
	movq	$0, -792(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-784(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ECPKParameters@PLT
	movq	%rax, -344(%rbp)
	cmpq	$0, -344(%rbp)
	je	.L32
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -352(%rbp)
	cmpq	$0, -352(%rbp)
	je	.L33
	movq	-344(%rbp), %rcx
	movq	-352(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ECPKParameters_print@PLT
	movq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L33:
	leaq	-792(%rbp), %rdx
	movq	-344(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ECPKParameters@PLT
	movq	-792(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$363, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
.L32:
	movq	-888(%rbp), %rax
	movq	%rax, -800(%rbp)
	movq	$0, -808(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-800(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ECPrivateKey@PLT
	movq	%rax, -360(%rbp)
	cmpq	$0, -360(%rbp)
	je	.L34
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -368(%rbp)
	cmpq	$0, -368(%rbp)
	je	.L35
	movq	-360(%rbp), %rcx
	movq	-368(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_print@PLT
	movq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L35:
	leaq	-808(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ECPrivateKey@PLT
	movq	-808(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$364, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
.L34:
	movq	-888(%rbp), %rax
	movq	%rax, -816(%rbp)
	movq	$0, -824(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-816(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ECParameters@PLT
	movq	%rax, -376(%rbp)
	cmpq	$0, -376(%rbp)
	je	.L36
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -384(%rbp)
	cmpq	$0, -384(%rbp)
	je	.L37
	movq	-376(%rbp), %rdx
	movq	-384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ECParameters_print@PLT
	movq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L37:
	leaq	-824(%rbp), %rdx
	movq	-376(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ECParameters@PLT
	movl	%eax, -388(%rbp)
	movq	-824(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$365, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
.L36:
	movq	-888(%rbp), %rax
	movq	%rax, -832(%rbp)
	movq	$0, -840(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-832(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ECDSA_SIG@PLT
	movq	%rax, -400(%rbp)
	cmpq	$0, -400(%rbp)
	je	.L38
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	-840(%rbp), %rdx
	movq	-400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ECDSA_SIG@PLT
	movq	-840(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$366, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	ECDSA_SIG_free@PLT
.L38:
	movq	-888(%rbp), %rax
	movq	%rax, -848(%rbp)
	movq	$0, -856(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-848(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_AutoPrivateKey@PLT
	movq	%rax, -416(%rbp)
	cmpq	$0, -416(%rbp)
	je	.L39
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -424(%rbp)
	cmpq	$0, -424(%rbp)
	je	.L40
	movq	pctx(%rip), %rdx
	movq	-416(%rbp), %rsi
	movq	-424(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_private@PLT
	movq	-424(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L40:
	leaq	-856(%rbp), %rdx
	movq	-416(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PrivateKey@PLT
	movq	-856(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$369, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L39:
	movq	-888(%rbp), %rax
	movq	%rax, -864(%rbp)
	movq	$0, -872(%rbp)
	movq	-896(%rbp), %rdx
	leaq	-864(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_SSL_SESSION@PLT
	movq	%rax, -432(%rbp)
	cmpq	$0, -432(%rbp)
	je	.L41
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -440(%rbp)
	cmpq	$0, -440(%rbp)
	je	.L42
	movq	-432(%rbp), %rdx
	movq	-440(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_print@PLT
	movq	-440(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L42:
	leaq	-872(%rbp), %rdx
	movq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_SSL_SESSION@PLT
	movl	%eax, -444(%rbp)
	movq	-872(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$370, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-432(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
.L41:
	call	ERR_clear_error@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	FuzzerTestOneInput, .-FuzzerTestOneInput
	.globl	FuzzerCleanup
	.type	FuzzerCleanup, @function
FuzzerCleanup:
.LFB678:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	pctx(%rip), %rax
	movq	%rax, %rdi
	call	ASN1_PCTX_free@PLT
	call	FuzzerClearRand@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	FuzzerCleanup, .-FuzzerCleanup
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

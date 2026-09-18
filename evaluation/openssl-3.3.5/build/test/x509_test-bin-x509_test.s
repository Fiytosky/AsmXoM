	.file	"x509_test.c"
	.text
	.type	ossl_check_const_X509_EXTENSION_sk_type, @function
ossl_check_const_X509_EXTENSION_sk_type:
.LFB351:
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
.LFE351:
	.size	ossl_check_const_X509_EXTENSION_sk_type, .-ossl_check_const_X509_EXTENSION_sk_type
	.local	pubkey
	.comm	pubkey,8,8
	.local	privkey
	.comm	privkey,8,8
	.local	signmd
	.comm	signmd,8,8
	.section	.rodata
	.align 32
	.type	privkeydata, @object
	.size	privkeydata, 121
privkeydata:
	.base64	"MHcCAQEEIH0r/lzLyyfWKP6YNIRKE29wxBoL/N6wsjKx3U8OvN+JoAoGCCqGSM49AwEHoUQDQgAEv4LZyUsZQ0Vr1FBkm9WNWtncySQjejtII+IqJPKcb4fQxA/MfnyN/AhGN4VPWzoLl9dXKlpregvk6JxKu78JTQ=="
	.align 32
	.type	pubkeydata, @object
	.size	pubkeydata, 91
pubkeydata:
	.base64	"MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEv4LZyUsZQ0Vr1FBkm9WNWtncySQjejtII+IqJPKcb4fQxA/MfnyN/AhGN4VPWzoLl9dXKlpregvk6JxKu78JTQ=="
	.align 32
	.type	certdata, @object
	.size	certdata, 394
certdata:
	.base64	"MIIBhjCCAS0CFHXWBNKAYdMyvK44WP4SQoF63QuZMAoGCCqGSM49BAMCMEUxCzAJBgNVBAYTAkFVMRMwEQYDVQQIDApTb21lLVN0YXRlMSEwHwYDVQQKDBhJbnRlcm5ldCBXaWRnaXRzIFB0eSBMdGQwIBcNMjIxMDEyMDcyNzU1WhgPMjA1MDAyMjcwNzI3NTVaMEUxCzAJBgNVBAYTAkFVMRMwEQYDVQQIDApTb21lLVN0YXRlMSEwHwYDVQQKDBhJbnRlcm5ldCBXaWRnaXRzIFB0eSBMdGQwWTATBgcqhkjOPQIBBggqhkjOPQMBBwNCAAS/gtnJSxlDRWvU"
	.base64	"UGSb1Y1a2dzJJCN6O0gj4iok8pxvh9DED8x+fI38CEY3hU9bOguX11cqWmt6C+TonEq7vwlNMAoGCCqGSM49BAMCA0cAMEQCIF9Ff6RqA/3n80JDOFuBCBpHjlk6KFuXZ0dmKhb1zvWSAiAiDqs130mxhqM7Jtp+i0RFxkYUBCIr5SpihMWUoBuqqQ=="
	.align 32
	.type	crldata, @object
	.size	crldata, 142
crldata:
	.base64	"MIGLMDECAQEwDAYIKoZIzj0EAwIFADAPMQ0wCwYDVQQDDARUZXN0Fw0yMjEwMTIwNTM0MDFaMAwGCCqGSM49BAMCBQADSAAwRQIgdayptf5jCYtXT7vGDKmafFWJ+ZxI6fPt5cKIzuyxUfECIQCLk8WmKEhaThBSghIvxGItP1pif50bEsU2JXMD9N5iJA=="
	.align 8
.LC0:
	.string	"x = d2i_X509(NULL, &p, sizeof(certdata))"
.LC1:
	.string	"../test/x509_test.c"
.LC2:
	.string	"0"
.LC3:
	.string	"X509_sign(x, privkey, signmd)"
.LC4:
	.string	"1"
.LC5:
	.string	"X509_verify(x, pubkey)"
	.text
	.type	test_x509_tbs_cache, @function
test_x509_tbs_cache:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	leaq	certdata(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movl	$394, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_X509@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$98, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L4
	movq	signmd(%rip), %rdx
	movq	privkey(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_sign@PLT
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$99, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L4
	movq	pubkey(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_verify@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$100, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L4
	movl	$1, %eax
	jmp	.L5
.L4:
	movl	$0, %eax
.L5:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	test_x509_tbs_cache, .-test_x509_tbs_cache
	.section	.rodata
	.align 8
.LC6:
	.string	"crl = d2i_X509_CRL(NULL, &p, sizeof(crldata))"
	.align 8
.LC7:
	.string	"X509_CRL_sign(crl, privkey, signmd)"
.LC8:
	.string	"X509_CRL_verify(crl, pubkey)"
	.text
	.type	test_x509_crl_tbs_cache, @function
test_x509_crl_tbs_cache:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	leaq	crldata(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movl	$142, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_X509_CRL@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$116, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L8
	movq	signmd(%rip), %rdx
	movq	privkey(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_sign@PLT
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$117, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L8
	movq	pubkey(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_verify@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$118, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L8
	movl	$1, %eax
	jmp	.L9
.L8:
	movl	$0, %eax
.L9:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_x509_crl_tbs_cache, .-test_x509_crl_tbs_cache
	.section	.rodata
	.align 8
.LC9:
	.string	"certfile = test_get_argument(0)"
.LC10:
	.string	"r"
	.align 8
.LC11:
	.string	"bio = BIO_new_file(certfile, \"r\")"
	.align 8
.LC12:
	.string	"x509 = PEM_read_bio_X509(bio, NULL, NULL, NULL)"
.LC13:
	.string	"pkey = X509_get0_pubkey(x509)"
.LC14:
	.string	"rsa = EVP_PKEY_get1_RSA(pkey)"
.LC15:
	.string	"EVP_PKEY_set1_RSA(pkey, rsa)"
	.align 8
.LC16:
	.string	"ASN1_item_verify(ASN1_ITEM_rptr(X509_CINF), (X509_ALGOR *)alg, (ASN1_BIT_STRING *)sig, &x509->cert_info, pkey)"
	.align 8
.LC17:
	.string	"ASN1_item_verify(ASN1_ITEM_rptr(X509_CINF), (X509_ALGOR *)alg, (ASN1_BIT_STRING *)sig, NULL, pkey)"
	.text
	.type	test_asn1_item_verify, @function
test_asn1_item_verify:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	$0, -36(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$137, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L20
	leaq	.LC10(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$138, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L20
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_X509@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$139, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L20
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$140, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L20
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get1_RSA@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$145, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L21
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set1_RSA@PLT
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$148, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L22
	movq	-56(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_get0_signature@PLT
	movq	-56(%rbp), %r13
	movq	-88(%rbp), %r12
	movq	-96(%rbp), %rbx
	call	X509_CINF_it@PLT
	movq	-80(%rbp), %rdx
	movq	%rdx, %r8
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_verify@PLT
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$154, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L23
	call	ERR_set_mark@PLT
	movq	-88(%rbp), %r12
	movq	-96(%rbp), %rbx
	call	X509_CINF_it@PLT
	movq	-80(%rbp), %rdx
	movq	%rdx, %r8
	movl	$0, %ecx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_verify@PLT
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$160, %esi
	movq	%rax, %rdi
	call	test_int_lt@PLT
	testl	%eax, %eax
	jne	.L18
	call	ERR_clear_last_mark@PLT
	jmp	.L14
.L18:
	call	ERR_pop_to_mark@PLT
	movl	$1, -36(%rbp)
	jmp	.L14
.L20:
	nop
	jmp	.L14
.L21:
	nop
	jmp	.L14
.L22:
	nop
	jmp	.L14
.L23:
	nop
.L14:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-36(%rbp), %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_asn1_item_verify, .-test_asn1_item_verify
	.section	.rodata
.LC18:
	.string	"(x509 = X509_new())"
.LC19:
	.string	"X509_get0_extensions(x509)"
.LC20:
	.string	"(ext = X509_EXTENSION_new())"
	.align 8
.LC21:
	.string	"(obj = OBJ_nid2obj(NID_subject_key_identifier))"
	.align 8
.LC22:
	.string	"X509_EXTENSION_set_object(ext, obj)"
.LC23:
	.string	"X509_add_ext(x509, ext, -1)"
	.align 8
.LC24:
	.string	"sk_X509_EXTENSION_num(X509_get0_extensions(x509))"
	.text
	.type	test_x509_delete_last_extension, @function
test_x509_delete_last_extension:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	call	X509_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$186, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L30
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_extensions@PLT
	movq	%rax, %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$188, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L30
	call	X509_EXTENSION_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$190, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L30
	movl	$82, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$191, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L30
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_EXTENSION_set_object@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$192, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L30
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_add_ext@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$193, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L30
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_extensions@PLT
	movq	%rax, %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$195, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L30
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_extensions@PLT
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$196, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L30
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_delete_ext@PLT
	movq	%rax, %rdi
	call	X509_EXTENSION_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_extensions@PLT
	movq	%rax, %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$203, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L31
	movl	$1, -4(%rbp)
	jmp	.L27
.L30:
	nop
	jmp	.L27
.L31:
	nop
.L27:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	test_x509_delete_last_extension, .-test_x509_delete_last_extension
	.section	.rodata
.LC25:
	.string	"(crl = X509_CRL_new())"
.LC26:
	.string	"X509_CRL_get0_extensions(crl)"
	.align 8
.LC27:
	.string	"X509_CRL_add_ext(crl, ext, -1)"
	.align 8
.LC28:
	.string	"sk_X509_EXTENSION_num(X509_CRL_get0_extensions(crl))"
	.text
	.type	test_x509_crl_delete_last_extension, @function
test_x509_crl_delete_last_extension:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	call	X509_CRL_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$221, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get0_extensions@PLT
	movq	%rax, %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$223, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L38
	call	X509_EXTENSION_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$225, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	movl	$82, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$226, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_EXTENSION_set_object@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$227, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L38
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_add_ext@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$228, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L38
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get0_extensions@PLT
	movq	%rax, %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$230, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get0_extensions@PLT
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$231, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L38
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_CRL_delete_ext@PLT
	movq	%rax, %rdi
	call	X509_EXTENSION_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get0_extensions@PLT
	movq	%rax, %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$239, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L39
	movl	$1, -4(%rbp)
	jmp	.L35
.L38:
	nop
	jmp	.L35
.L39:
	nop
.L35:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	test_x509_crl_delete_last_extension, .-test_x509_crl_delete_last_extension
	.section	.rodata
.LC29:
	.string	"(rev = X509_REVOKED_new())"
	.align 8
.LC30:
	.string	"X509_REVOKED_get0_extensions(rev)"
	.align 8
.LC31:
	.string	"X509_REVOKED_add_ext(rev, ext, -1)"
	.align 8
.LC32:
	.string	"sk_X509_EXTENSION_num(X509_REVOKED_get0_extensions(rev))"
	.text
	.type	test_x509_revoked_delete_last_extension, @function
test_x509_revoked_delete_last_extension:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	call	X509_REVOKED_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$257, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REVOKED_get0_extensions@PLT
	movq	%rax, %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$259, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L46
	call	X509_EXTENSION_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$261, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	movl	$82, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$262, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_EXTENSION_set_object@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$263, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_REVOKED_add_ext@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$264, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REVOKED_get0_extensions@PLT
	movq	%rax, %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$266, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REVOKED_get0_extensions@PLT
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$267, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_REVOKED_delete_ext@PLT
	movq	%rax, %rdi
	call	X509_EXTENSION_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REVOKED_get0_extensions@PLT
	movq	%rax, %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$274, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L47
	movl	$1, -4(%rbp)
	jmp	.L43
.L46:
	nop
	jmp	.L43
.L47:
	nop
.L43:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REVOKED_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	test_x509_revoked_delete_last_extension, .-test_x509_revoked_delete_last_extension
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	test_get_options, .-test_get_options
	.section	.rodata
	.align 8
.LC33:
	.string	"Must specify a certificate file self-signed with RSA-PSS.\n"
.LC34:
	.string	"Failed to create keys\n"
.LC35:
	.string	"SHA384"
.LC36:
	.string	"Failed to fetch digest\n"
.LC37:
	.string	"test_x509_tbs_cache"
.LC38:
	.string	"test_x509_crl_tbs_cache"
.LC39:
	.string	"test_asn1_item_verify"
	.align 8
.LC40:
	.string	"test_x509_delete_last_extension"
	.align 8
.LC41:
	.string	"test_x509_crl_delete_last_extension"
	.align 8
.LC42:
	.string	"test_x509_revoked_delete_last_extension"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	test_get_argument_count@PLT
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	.L51
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$294, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L56
.L51:
	leaq	pubkeydata(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movl	$91, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_PUBKEY@PLT
	movq	%rax, pubkey(%rip)
	leaq	privkeydata(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movl	$121, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$408, %edi
	call	d2i_PrivateKey@PLT
	movq	%rax, privkey(%rip)
	movq	pubkey(%rip), %rax
	testq	%rax, %rax
	je	.L53
	movq	privkey(%rip), %rax
	testq	%rax, %rax
	jne	.L54
.L53:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC34(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L56
.L54:
	leaq	.LC35(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_MD_fetch@PLT
	movq	%rax, signmd(%rip)
	movq	signmd(%rip), %rax
	testq	%rax, %rax
	jne	.L55
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC36(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L56
.L55:
	leaq	test_x509_tbs_cache(%rip), %rdx
	leaq	.LC37(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_x509_crl_tbs_cache(%rip), %rdx
	leaq	.LC38(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_asn1_item_verify(%rip), %rdx
	leaq	.LC39(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_x509_delete_last_extension(%rip), %rdx
	leaq	.LC40(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_x509_crl_delete_last_extension(%rip), %rdx
	leaq	.LC41(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_x509_revoked_delete_last_extension(%rip), %rdx
	leaq	.LC42(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	signmd(%rip), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	pubkey(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	privkey(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
	.align 8
.LC43:
	.string	"Usage: %s [options] <pss-self-signed-cert.pem>\n"
.LC44:
	.string	"Valid options are:\n"
.LC45:
	.string	"help"
.LC46:
	.string	"Display this summary"
.LC47:
	.string	"list"
	.align 8
.LC48:
	.string	"Display the list of tests available"
.LC49:
	.string	"test"
	.align 8
.LC50:
	.string	"Run a single test by id or name"
.LC51:
	.string	"iter"
	.align 8
.LC52:
	.string	"Run a single iteration of a test"
.LC53:
	.string	"indent"
	.align 8
.LC54:
	.string	"Number of tabs added to output"
.LC55:
	.string	"seed"
	.align 8
.LC56:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC43
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC44
	.quad	.LC45
	.long	500
	.long	45
	.quad	.LC46
	.quad	.LC47
	.long	501
	.long	45
	.quad	.LC48
	.quad	.LC49
	.long	502
	.long	115
	.quad	.LC50
	.quad	.LC51
	.long	503
	.long	110
	.quad	.LC52
	.quad	.LC53
	.long	504
	.long	112
	.quad	.LC54
	.quad	.LC55
	.long	505
	.long	110
	.quad	.LC56
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

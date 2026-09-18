	.file	"algorithmid_test.c"
	.text
	.local	eecert_filename
	.comm	eecert_filename,8,8
	.local	cacert_filename
	.comm	cacert_filename,8,8
	.local	pubkey_filename
	.comm	pubkey_filename,8,8
	.section	.rodata
.LC0:
	.string	"algorithm-id"
	.align 8
.LC1:
	.string	"X509_PUBKEY_get0_param(NULL, NULL, NULL, &alg, pubkey)"
.LC2:
	.string	"../test/algorithmid_test.c"
	.align 8
.LC3:
	.string	"pkey = X509_PUBKEY_get0(pubkey)"
.LC4:
	.string	"0"
	.align 8
.LC5:
	.string	"algid_legacy_len = i2d_X509_ALGOR(alg, &algid_legacy)"
	.align 8
.LC6:
	.string	"OBJ_obj2txt(name, sizeof(name), oid, 0)"
	.align 8
.LC7:
	.string	"The public key found in '%s' doesn't have provider support.  Skipping..."
	.align 8
.LC8:
	.string	"EVP_KEYMGMT_is_a(keymgmt, name)"
	.align 8
.LC9:
	.string	"The AlgorithmID key type (%s) for the public key found in '%s' doesn't match the key type of the extracted public key."
	.align 8
.LC10:
	.string	"gettable_params = EVP_KEYMGMT_gettable_params(keymgmt)"
	.align 8
.LC11:
	.string	"OSSL_PARAM_locate_const(gettable_params, ALGORITHMID_NAME)"
	.align 8
.LC12:
	.string	"The %s provider keymgmt appears to lack support for algorithm-id.  Skipping..."
	.align 8
.LC13:
	.string	"evp_keymgmt_get_params(keymgmt, keydata, params)"
.LC14:
	.string	"algid_prov"
.LC15:
	.string	"algid_legacy"
	.text
	.type	test_spki_aid, @function
test_spki_aid:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movw	$0, -80(%rbp)
	movq	$0, -136(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -224(%rbp)
	movl	$5, -216(%rbp)
	leaq	algid_prov.2(%rip), %rax
	movq	%rax, -208(%rbp)
	movq	$256, -200(%rbp)
	movq	$-1, -192(%rbp)
	movq	$0, -184(%rbp)
	movl	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movl	$0, -4(%rbp)
	movq	-232(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	X509_PUBKEY_get0_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$43, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L13
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$44, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L13
	movq	-64(%rbp), %rax
	leaq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_ALGOR@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$47, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L14
	movq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_ALGOR_get0@PLT
	movq	-56(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$51, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L15
	leaq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	evp_pkey_export_to_provider@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L7
	movq	-240(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$62, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -4(%rbp)
	jmp	.L4
.L7:
	movq	-72(%rbp), %rax
	leaq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_is_a@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$69, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L8
	movq	-240(%rbp), %rcx
	leaq	-128(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$70, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -4(%rbp)
	jmp	.L4
.L8:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_gettable_params@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$78, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L9
	leaq	.LC0(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$79, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L10
.L9:
	leaq	-128(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$80, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -4(%rbp)
	jmp	.L4
.L10:
	movb	$0, algid_prov.2(%rip)
	movq	-72(%rbp), %rax
	leaq	-224(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_get_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$88, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L16
	movq	-192(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %r8
	movq	-136(%rbp), %rdi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	-40(%rbp)
	leaq	algid_prov.2(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$93, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L17
	movl	$1, -4(%rbp)
	jmp	.L4
.L13:
	nop
	jmp	.L4
.L14:
	nop
	jmp	.L4
.L15:
	nop
	jmp	.L4
.L16:
	nop
	jmp	.L4
.L17:
	nop
.L4:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	movq	-136(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$99, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	test_spki_aid, .-test_spki_aid
	.type	test_x509_spki_aid, @function
test_x509_spki_aid:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_X509_PUBKEY@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_spki_aid
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	test_x509_spki_aid, .-test_x509_spki_aid
	.section	.rodata
	.align 8
.LC16:
	.string	"X509_ALGOR_cmp(alg, X509_get0_tbs_sigalg(eecert))"
.LC17:
	.string	"NID_undef"
	.align 8
.LC18:
	.string	"sig_nid = OBJ_obj2nid(sig_oid)"
	.align 8
.LC19:
	.string	"OBJ_find_sigid_algs(sig_nid, &dig_nid, &pkey_nid)"
	.align 8
.LC20:
	.string	"pkey = X509_get0_pubkey(cacert)"
	.align 8
.LC21:
	.string	"EVP_PKEY_is_a(pkey, OBJ_nid2sn(pkey_nid))"
	.align 8
.LC22:
	.string	"The '%s' pubkey can't be used to verify the '%s' signature"
	.align 8
.LC23:
	.string	"Signature algorithm is %s (pkey type %s, hash type %s)"
.LC24:
	.string	"Pkey key type is %s"
.LC25:
	.string	"mdctx = EVP_MD_CTX_new()"
	.align 8
.LC26:
	.string	"EVP_DigestVerifyInit_ex(mdctx, &pctx, OBJ_nid2sn(dig_nid), NULL, NULL, pkey, NULL)"
	.align 8
.LC27:
	.string	"Couldn't initialize a DigestVerify operation with pkey type %s and hash type %s"
	.align 8
.LC28:
	.string	"gettable_params = EVP_PKEY_CTX_gettable_params(pctx)"
	.align 8
.LC29:
	.string	"The %s provider keymgmt appears to lack support for algorithm-id  Skipping..."
	.align 8
.LC30:
	.string	"EVP_PKEY_CTX_get_params(pctx, params)"
	.text
	.type	test_x509_sig_aid, @function
test_x509_sig_aid:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%rcx, -224(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -104(%rbp)
	movl	$0, -44(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -192(%rbp)
	movl	$5, -184(%rbp)
	leaq	algid_prov.1(%rip), %rax
	movq	%rax, -176(%rbp)
	movq	$256, -168(%rbp)
	movq	$-1, -160(%rbp)
	movq	$0, -152(%rbp)
	movl	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movl	$0, -28(%rbp)
	movq	-200(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509_get0_signature@PLT
	movq	-80(%rbp), %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_ALGOR_get0@PLT
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_tbs_sigalg@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_ALGOR_cmp@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$133, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L33
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$135, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L34
	leaq	-88(%rbp), %rdx
	leaq	-84(%rbp), %rcx
	movl	-32(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	OBJ_find_sigid_algs@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$136, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L34
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$137, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L34
	movl	-88(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$140, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L25
	movq	-208(%rbp), %rcx
	movq	-224(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$141, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %r12
	movl	-88(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rbx
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%r12, %r9
	movq	%rbx, %r8
	movl	$143, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_type_name@PLT
	movq	%rax, %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$145, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L22
.L25:
	movq	-80(%rbp), %rax
	leaq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_ALGOR@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$149, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L35
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$152, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L27
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx
	leaq	-96(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_DigestVerifyInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$153, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L28
.L27:
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rbx
	movl	-88(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rbx, %r8
	movl	$156, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L22
.L28:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_gettable_params@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$162, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L29
	leaq	.LC0(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$163, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L30
.L29:
	movl	-88(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$164, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -28(%rbp)
	jmp	.L22
.L30:
	movb	$0, algid_prov.1(%rip)
	movq	-96(%rbp), %rax
	leaq	-192(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$172, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L36
	movq	-160(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %r8
	movq	-104(%rbp), %rdi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	-56(%rbp)
	leaq	algid_prov.1(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$177, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L37
	movl	$1, -28(%rbp)
	jmp	.L22
.L33:
	nop
	jmp	.L22
.L34:
	nop
	jmp	.L22
.L35:
	nop
	jmp	.L22
.L36:
	nop
	jmp	.L22
.L37:
	nop
.L22:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-104(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$184, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-28(%rbp), %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	test_x509_sig_aid, .-test_x509_sig_aid
	.section	.rodata
.LC31:
	.string	"r"
	.align 8
.LC32:
	.string	"Couldn't open '%s' for reading\n"
	.align 8
.LC33:
	.string	"'%s' doesn't appear to be a SubjectPublicKeyInfo in PEM format\n"
	.text
	.type	test_spki_file, @function
test_spki_file:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	movq	pubkey_filename(%rip), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L39
	movq	pubkey_filename(%rip), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$195, %esi
	movl	$0, %eax
	call	test_error@PLT
	call	test_openssl_errors@PLT
	jmp	.L40
.L39:
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_X509_PUBKEY@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L41
	movq	pubkey_filename(%rip), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$201, %esi
	movl	$0, %eax
	call	test_error@PLT
	call	test_openssl_errors@PLT
	jmp	.L40
.L41:
	movq	pubkey_filename(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_spki_aid
	movl	%eax, -12(%rbp)
.L40:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	test_spki_file, .-test_spki_file
	.section	.rodata
	.align 8
.LC34:
	.string	"'%s' doesn't appear to be a X.509 certificate in PEM format\n"
	.text
	.type	test_x509_files, @function
test_x509_files:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	eecert_filename(%rip), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L44
	movq	eecert_filename(%rip), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$221, %esi
	movl	$0, %eax
	call	test_error@PLT
	call	test_openssl_errors@PLT
	jmp	.L45
.L44:
	movq	cacert_filename(%rip), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L46
	movq	cacert_filename(%rip), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$226, %esi
	movl	$0, %eax
	call	test_error@PLT
	call	test_openssl_errors@PLT
	jmp	.L45
.L46:
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_X509@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L47
	movq	eecert_filename(%rip), %rax
	leaq	.LC34(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$232, %esi
	movl	$0, %eax
	call	test_error@PLT
	call	test_openssl_errors@PLT
	jmp	.L45
.L47:
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_X509@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L48
	movq	cacert_filename(%rip), %rax
	leaq	.LC34(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$238, %esi
	movl	$0, %eax
	call	test_error@PLT
	call	test_openssl_errors@PLT
	jmp	.L45
.L48:
	movq	cacert_filename(%rip), %rcx
	movq	eecert_filename(%rip), %rsi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	test_x509_sig_aid
	movl	%eax, %ebx
	movq	eecert_filename(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_x509_spki_aid
	andl	%eax, %ebx
	movq	cacert_filename(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_x509_spki_aid
	andl	%ebx, %eax
	movl	%eax, -44(%rbp)
.L45:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	test_x509_files, .-test_x509_files
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC35:
	.string	"No test type given\n"
	.align 8
.LC36:
	.string	"Only one test type may be given\n"
.LC37:
	.string	"Missing -spki argument\n"
.LC38:
	.string	"Missing -x509 argument(s)\n"
.LC39:
	.string	"test_x509_files"
.LC40:
	.string	"test_spki_file"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L53
.L59:
	cmpl	$505, -16(%rbp)
	jg	.L54
	cmpl	$500, -16(%rbp)
	jge	.L53
	cmpl	$1, -16(%rbp)
	je	.L56
	cmpl	$2, -16(%rbp)
	je	.L57
	jmp	.L54
.L56:
	movl	$1, -4(%rbp)
	jmp	.L53
.L57:
	movl	$1, -8(%rbp)
	jmp	.L53
.L54:
	movl	$0, %eax
	jmp	.L58
.L53:
	call	opt_next@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.L59
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L60
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC35(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L61
.L60:
	cmpl	$1, -12(%rbp)
	jle	.L61
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC36(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L61:
	cmpl	$1, -12(%rbp)
	je	.L62
	movl	$0, %eax
	jmp	.L58
.L62:
	call	test_get_argument_count@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L63
	cmpl	$1, -20(%rbp)
	jne	.L63
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, pubkey_filename(%rip)
	jmp	.L64
.L63:
	cmpl	$0, -4(%rbp)
	je	.L64
	cmpl	$2, -20(%rbp)
	jne	.L64
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, eecert_filename(%rip)
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, cacert_filename(%rip)
.L64:
	cmpl	$0, -8(%rbp)
	je	.L65
	movq	pubkey_filename(%rip), %rax
	testq	%rax, %rax
	jne	.L65
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC37(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L58
.L65:
	cmpl	$0, -4(%rbp)
	je	.L66
	movq	eecert_filename(%rip), %rax
	testq	%rax, %rax
	je	.L67
	movq	cacert_filename(%rip), %rax
	testq	%rax, %rax
	jne	.L66
.L67:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC38(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L58
.L66:
	cmpl	$0, -4(%rbp)
	je	.L68
	leaq	test_x509_files(%rip), %rdx
	leaq	.LC39(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
.L68:
	cmpl	$0, -8(%rbp)
	je	.L69
	leaq	test_spki_file(%rip), %rdx
	leaq	.LC40(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
.L69:
	movl	$1, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	setup_tests, .-setup_tests
	.local	algid_prov.2
	.comm	algid_prov.2,256,32
	.local	algid_prov.1
	.comm	algid_prov.1,256,32
	.section	.rodata
.LC41:
	.string	"Usage: %s [options] file...\n"
.LC42:
	.string	"Valid options are:\n"
.LC43:
	.string	"help"
.LC44:
	.string	"Display this summary"
.LC45:
	.string	"list"
	.align 8
.LC46:
	.string	"Display the list of tests available"
.LC47:
	.string	"test"
	.align 8
.LC48:
	.string	"Run a single test by id or name"
.LC49:
	.string	"iter"
	.align 8
.LC50:
	.string	"Run a single iteration of a test"
.LC51:
	.string	"indent"
	.align 8
.LC52:
	.string	"Number of tabs added to output"
.LC53:
	.string	"seed"
	.align 8
.LC54:
	.string	"Seed value to randomize tests with"
.LC55:
	.string	"x509"
	.align 8
.LC56:
	.string	"Test X.509 certificates.  Requires two files"
.LC57:
	.string	"spki"
	.align 8
.LC58:
	.string	"Test public keys in SubjectPublicKeyInfo form.  Requires one file"
	.align 8
.LC59:
	.string	"file...\tFile(s) to run tests on.  All files must be PEM encoded.\n"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	test_options.0, @object
	.size	test_options.0, 288
test_options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC41
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC42
	.quad	.LC43
	.long	500
	.long	45
	.quad	.LC44
	.quad	.LC45
	.long	501
	.long	45
	.quad	.LC46
	.quad	.LC47
	.long	502
	.long	115
	.quad	.LC48
	.quad	.LC49
	.long	503
	.long	110
	.quad	.LC50
	.quad	.LC51
	.long	504
	.long	112
	.quad	.LC52
	.quad	.LC53
	.long	505
	.long	110
	.quad	.LC54
	.quad	.LC55
	.long	1
	.long	45
	.quad	.LC56
	.quad	.LC57
	.long	2
	.long	45
	.quad	.LC58
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC59
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

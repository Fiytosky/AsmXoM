	.file	"ocspapitest.c"
	.text
	.type	ossl_check_X509_type, @function
ossl_check_X509_type:
.LFB365:
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
.LFE365:
	.size	ossl_check_X509_type, .-ossl_check_X509_type
	.type	ossl_check_X509_sk_type, @function
ossl_check_X509_sk_type:
.LFB367:
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
.LFE367:
	.size	ossl_check_X509_sk_type, .-ossl_check_X509_sk_type
	.local	certstr
	.comm	certstr,8,8
	.local	privkeystr
	.comm	privkeystr,8,8
	.section	.rodata
.LC0:
	.string	"r"
	.align 8
.LC1:
	.string	"certbio = BIO_new_file(certstr, \"r\")"
.LC2:
	.string	"../test/ocspapitest.c"
	.align 8
.LC3:
	.string	"keybio = BIO_new_file(privkeystr, \"r\")"
.LC4:
	.string	"cert"
.LC5:
	.string	"key"
	.text
	.type	get_cert_and_key, @function
get_cert_and_key:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	certstr(%rip), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$31, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_X509@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	privkeystr(%rip), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$35, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L12
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$39, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L13
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$39, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L13
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L7
.L12:
	nop
	jmp	.L9
.L13:
	nop
.L9:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	get_cert_and_key, .-get_cert_and_key
	.type	get_cert, @function
get_cert:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	certstr(%rip), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$55, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_X509@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$59, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L20
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L16
.L20:
	nop
.L18:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	$0, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	get_cert, .-get_cert
	.section	.rodata
.LC6:
	.string	"name"
.LC7:
	.string	"serial"
	.align 8
.LC8:
	.string	"X509_NAME_add_entry_by_NID(name, NID_commonName, MBSTRING_ASC, namestr, -1, -1, 1)"
	.align 8
.LC9:
	.string	"ASN1_BIT_STRING_set(key, keybytes, sizeof(keybytes))"
	.align 8
.LC10:
	.string	"ASN1_INTEGER_set_uint64(serial, (uint64_t)1)"
.LC11:
	.string	"bs"
.LC12:
	.string	"thisupd"
.LC13:
	.string	"nextupd"
.LC14:
	.string	"cid"
	.align 8
.LC15:
	.string	"OCSP_basic_add1_status(bs, cid, V_OCSP_CERTSTATUS_UNKNOWN, 0, NULL, thisupd, nextupd)"
	.text
	.type	make_dummy_resp, @function
make_dummy_resp:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movabsq	$3345175562840010863, %rax
	movabsq	$3343197528519702629, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movl	$7171939, -80(%rbp)
	movq	$7, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	call	OCSP_BASICRESP_new@PLT
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, %edi
	call	time@PLT
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_set@PLT
	movq	%rax, -32(%rbp)
	movl	$0, %edi
	call	time@PLT
	addq	$200, %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_set@PLT
	movq	%rax, -40(%rbp)
	call	X509_NAME_new@PLT
	movq	%rax, -48(%rbp)
	call	ASN1_BIT_STRING_new@PLT
	movq	%rax, -56(%rbp)
	call	ASN1_INTEGER_new@PLT
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$81, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L28
	movq	-56(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$82, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L28
	movq	-64(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$83, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L28
	leaq	-96(%rbp), %rdx
	movq	-48(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movl	$-1, %r9d
	movl	$-1, %r8d
	movq	%rdx, %rcx
	movl	$4097, %edx
	movl	$13, %esi
	movq	%rax, %rdi
	call	X509_NAME_add_entry_by_NID@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$84, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	leaq	-224(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$128, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_set@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$87, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	movq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set_uint64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$88, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	call	EVP_sha256@PLT
	movq	%rax, %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	call	OCSP_cert_id_new@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$91, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L29
	movq	-32(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$92, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L29
	movq	-40(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$93, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L29
	movq	-24(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$94, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L29
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-40(%rbp)
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	OCSP_basic_add1_status@PLT
	addq	$16, %rsp
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$95, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L29
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L24
.L28:
	nop
	jmp	.L24
.L29:
	nop
.L24:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_CERTID_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_BASICRESP_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	make_dummy_resp, .-make_dummy_resp
	.section	.rodata
.LC16:
	.string	"extra_certs"
	.align 8
.LC17:
	.string	"get_cert_and_key(&signer, &key)"
	.align 8
.LC18:
	.string	"sk_X509_push(extra_certs, signer)"
	.align 8
.LC19:
	.string	"OCSP_basic_sign(bs, signer, key, EVP_sha1(), NULL, OCSP_NOCERTS)"
	.align 8
.LC20:
	.string	"OCSP_resp_get0_signer(bs, &tmp, extra_certs)"
.LC21:
	.string	"0"
.LC22:
	.string	"X509_cmp(tmp, signer)"
	.align 8
.LC23:
	.string	"OCSP_basic_sign(bs, signer, key, EVP_sha1(), NULL, 0)"
	.align 8
.LC24:
	.string	"OCSP_resp_get0_signer(bs, &tmp, NULL)"
	.text
	.type	test_resp_signer, @function
test_resp_signer:
.LFB603:
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
	movq	$0, -48(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -28(%rbp)
	call	make_dummy_resp
	movq	%rax, -24(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$126, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L41
	movq	-40(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$127, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L41
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_cert_and_key
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$128, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$129, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	call	EVP_sha1@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	OCSP_basic_sign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$130, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	movq	-40(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OCSP_resp_get0_signer@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$133, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_cmp@PLT
	movl	%eax, %esi
	leaq	.LC21(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$134, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L42
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_BASICRESP_free@PLT
	call	make_dummy_resp
	movq	%rax, -24(%rbp)
	movq	$0, -56(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$141, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L43
	call	EVP_sha1@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	OCSP_basic_sign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$142, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L43
	leaq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OCSP_resp_get0_signer@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$145, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_cmp@PLT
	movl	%eax, %esi
	leaq	.LC21(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$146, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L44
	movl	$1, -28(%rbp)
	jmp	.L33
.L41:
	nop
	jmp	.L33
.L42:
	nop
	jmp	.L33
.L43:
	nop
	jmp	.L33
.L44:
	nop
.L33:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_BASICRESP_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	test_resp_signer, .-test_resp_signer
	.section	.rodata
.LC25:
	.string	"ad"
.LC26:
	.string	"ad->location"
	.text
	.type	test_access_description, @function
test_access_description:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	call	ACCESS_DESCRIPTION_new@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$162, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L55
	cmpl	$2, -20(%rbp)
	je	.L48
	cmpl	$2, -20(%rbp)
	jg	.L49
	cmpl	$0, -20(%rbp)
	je	.L56
	cmpl	$1, -20(%rbp)
	jne	.L49
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$169, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L57
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	GENERAL_NAME_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L49
.L48:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	GENERAL_NAME_free@PLT
	call	GENERAL_NAME_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$177, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L58
	jmp	.L49
.L56:
	nop
.L49:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ACCESS_DESCRIPTION_free@PLT
	movl	$1, -4(%rbp)
	jmp	.L47
.L55:
	nop
	jmp	.L47
.L57:
	nop
	jmp	.L47
.L58:
	nop
.L47:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	test_access_description, .-test_access_description
	.section	.rodata
.LC27:
	.string	"get_cert(&issuer)"
.LC28:
	.string	"ext"
	.text
	.type	test_ocsp_url_svcloc_new, @function
test_ocsp_url_svcloc_new:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_cert
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$199, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L64
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, %rdx
	leaq	urls.1(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OCSP_url_svcloc_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$206, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L65
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_free@PLT
	movl	$1, -4(%rbp)
	jmp	.L61
.L64:
	nop
	jmp	.L61
.L65:
	nop
.L61:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	test_ocsp_url_svcloc_new, .-test_ocsp_url_svcloc_new
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB606:
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
.LFE606:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC29:
	.string	"Error parsing test options\n"
	.align 8
.LC30:
	.string	"certstr = test_get_argument(0)"
	.align 8
.LC31:
	.string	"privkeystr = test_get_argument(1)"
.LC32:
	.string	"test_resp_signer"
.LC33:
	.string	"test_access_description"
.LC34:
	.string	"test_ocsp_url_svcloc_new"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L69
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$223, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L70
.L69:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, certstr(%rip)
	movq	certstr(%rip), %rax
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$227, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L71
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, privkeystr(%rip)
	movq	privkeystr(%rip), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$228, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L72
.L71:
	movl	$0, %eax
	jmp	.L70
.L72:
	leaq	test_resp_signer(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_access_description(%rip), %rsi
	leaq	.LC33(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_ocsp_url_svcloc_new(%rip), %rdx
	leaq	.LC34(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L70:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	setup_tests, .-setup_tests
	.section	.rodata
.LC35:
	.string	"www.openssl.org"
.LC36:
	.string	"www.openssl.net"
	.section	.data.rel.local,"aw"
	.align 16
	.type	urls.1, @object
	.size	urls.1, 24
urls.1:
	.quad	.LC35
	.quad	.LC36
	.quad	0
	.section	.rodata
	.align 8
.LC37:
	.string	"Usage: %s [options] certfile privkeyfile\n"
.LC38:
	.string	"Valid options are:\n"
.LC39:
	.string	"help"
.LC40:
	.string	"Display this summary"
.LC41:
	.string	"list"
	.align 8
.LC42:
	.string	"Display the list of tests available"
.LC43:
	.string	"test"
	.align 8
.LC44:
	.string	"Run a single test by id or name"
.LC45:
	.string	"iter"
	.align 8
.LC46:
	.string	"Run a single iteration of a test"
.LC47:
	.string	"indent"
	.align 8
.LC48:
	.string	"Number of tabs added to output"
.LC49:
	.string	"seed"
	.align 8
.LC50:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC37
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC38
	.quad	.LC39
	.long	500
	.long	45
	.quad	.LC40
	.quad	.LC41
	.long	501
	.long	45
	.quad	.LC42
	.quad	.LC43
	.long	502
	.long	115
	.quad	.LC44
	.quad	.LC45
	.long	503
	.long	110
	.quad	.LC46
	.quad	.LC47
	.long	504
	.long	112
	.quad	.LC48
	.quad	.LC49
	.long	505
	.long	110
	.quad	.LC50
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"verify_extra_test.c"
	.text
	.type	ossl_check_X509_type, @function
ossl_check_X509_type:
.LFB326:
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
.LFE326:
	.size	ossl_check_X509_type, .-ossl_check_X509_type
	.type	ossl_check_X509_sk_type, @function
ossl_check_X509_sk_type:
.LFB328:
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
.LFE328:
	.size	ossl_check_X509_sk_type, .-ossl_check_X509_sk_type
	.local	certs_dir
	.comm	certs_dir,8,8
	.local	root_f
	.comm	root_f,8,8
	.local	roots_f
	.comm	roots_f,8,8
	.local	untrusted_f
	.comm	untrusted_f,8,8
	.local	bad_f
	.comm	bad_f,8,8
	.local	req_f
	.comm	req_f,8,8
	.local	sroot_cert
	.comm	sroot_cert,8,8
	.local	ca_cert
	.comm	ca_cert,8,8
	.local	ee_cert
	.comm	ee_cert,8,8
	.type	test_alt_chains_cert_forgery, @function
test_alt_chains_cert_forgery:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	call	X509_STORE_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L14
	call	X509_LOOKUP_file@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_lookup@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L15
	movq	roots_f(%rip), %rdx
	movq	-48(%rbp), %rax
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	X509_LOOKUP_ctrl@PLT
	testl	%eax, %eax
	je	.L16
	movq	untrusted_f(%rip), %rax
	movq	%rax, %rdi
	call	load_certs_pem@PLT
	movq	%rax, -24(%rbp)
	movq	bad_f(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L17
	call	X509_STORE_CTX_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L18
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	je	.L19
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_verify_cert@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L20
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error@PLT
	cmpl	$79, %eax
	jne	.L20
	movl	$1, -4(%rbp)
	jmp	.L7
.L14:
	nop
	jmp	.L7
.L15:
	nop
	jmp	.L7
.L16:
	nop
	jmp	.L7
.L17:
	nop
	jmp	.L7
.L18:
	nop
	jmp	.L7
.L19:
	nop
	jmp	.L7
.L20:
	nop
.L7:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	test_alt_chains_cert_forgery, .-test_alt_chains_cert_forgery
	.section	.rodata
.LC0:
	.string	"this is an ID"
.LC1:
	.string	"v2"
.LC2:
	.string	"../test/verify_extra_test.c"
.LC3:
	.string	"0"
.LC4:
	.string	"ASN1_OCTET_STRING_cmp(v, v2)"
	.text
	.type	test_distinguishing_id, @function
test_distinguishing_id:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	bad_f(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L29
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L30
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	jne	.L25
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	jmp	.L23
.L25:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_set0_distinguishing_id@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_distinguishing_id@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$131, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L31
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_cmp@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$132, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L31
	movl	$1, -4(%rbp)
	jmp	.L23
.L29:
	nop
	jmp	.L23
.L30:
	nop
	jmp	.L23
.L31:
	nop
.L23:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	test_distinguishing_id, .-test_distinguishing_id
	.section	.rodata
.LC5:
	.string	"r"
	.text
	.type	test_req_distinguishing_id, @function
test_req_distinguishing_id:
.LFB578:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	req_f(%rip), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L41
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_X509_REQ@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L42
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L43
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	jne	.L37
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	jmp	.L34
.L37:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_REQ_set0_distinguishing_id@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get0_distinguishing_id@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$170, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L44
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_cmp@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$171, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L44
	movl	$1, -12(%rbp)
	jmp	.L34
.L41:
	nop
	jmp	.L34
.L42:
	nop
	jmp	.L34
.L43:
	nop
	jmp	.L34
.L44:
	nop
.L34:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	test_req_distinguishing_id, .-test_req_distinguishing_id
	.section	.rodata
.LC6:
	.string	"expected"
.LC7:
	.string	"X509_self_signed(cert, 1)"
.LC8:
	.string	"sk_X509_push(trusted, cert)"
	.align 8
.LC9:
	.string	"X509_STORE_CTX_init(ctx, NULL, cert, NULL)"
.LC10:
	.string	"X509_verify_cert(ctx)"
	.text
	.type	test_self_signed, @function
test_self_signed:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, -32(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -40(%rbp)
	call	X509_STORE_CTX_new@PLT
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	X509_self_signed@PLT
	movl	%eax, %esi
	movl	-64(%rbp), %edi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$188, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	movl	%eax, -20(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L46
	cmpl	$0, -60(%rbp)
	je	.L47
	cmpl	$0, -20(%rbp)
	je	.L48
	movq	-32(%rbp), %rax
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
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$192, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L48
	movl	$1, %eax
	jmp	.L49
.L48:
	movl	$0, %eax
.L49:
	movl	%eax, -20(%rbp)
.L47:
	cmpl	$0, -20(%rbp)
	je	.L50
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$193, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L50
	movl	$1, %eax
	jmp	.L51
.L50:
	movl	$0, %eax
.L51:
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set0_trusted_stack@PLT
	cmpl	$0, -20(%rbp)
	je	.L52
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_verify_cert@PLT
	movl	%eax, %esi
	movl	-64(%rbp), %edi
	leaq	.LC6(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$195, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L52
	movl	$1, %eax
	jmp	.L53
.L52:
	movl	$0, %eax
.L53:
	movl	%eax, -20(%rbp)
.L46:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	test_self_signed, .-test_self_signed
	.type	test_self_signed_good, @function
test_self_signed_good:
.LFB580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	root_f(%rip), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	test_self_signed
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	test_self_signed_good, .-test_self_signed_good
	.type	test_self_signed_bad, @function
test_self_signed_bad:
.LFB581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	bad_f(%rip), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	test_self_signed
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	test_self_signed_bad, .-test_self_signed_bad
	.section	.rodata
.LC11:
	.string	"nonexistent file name"
	.text
	.type	test_self_signed_error, @function
test_self_signed_error:
.LFB582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC11(%rip), %rax
	movl	$-1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	test_self_signed
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	test_self_signed_error, .-test_self_signed_error
	.type	test_store_ctx, @function
test_store_ctx:
.LFB583:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	bad_f(%rip), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	test_self_signed
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	test_store_ctx, .-test_store_ctx
	.section	.rodata
.LC12:
	.string	"eecert"
.LC13:
	.string	"untrcert"
.LC14:
	.string	"trcert"
.LC15:
	.string	"trusted"
.LC16:
	.string	"untrusted"
.LC17:
	.string	"ctx"
.LC18:
	.string	"sk_X509_push(trusted, trcert)"
	.align 8
.LC19:
	.string	"sk_X509_push(untrusted, untrcert)"
	.align 8
.LC20:
	.string	"X509_STORE_CTX_init(ctx, NULL, eecert, untrusted)"
	.align 8
.LC21:
	.string	"X509_STORE_CTX_set_purpose(ctx, purpose)"
	.text
	.type	do_test_purpose, @function
do_test_purpose:
.LFB584:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movl	%edi, -84(%rbp)
	movl	%esi, -88(%rbp)
	movq	ee_cert(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, -48(%rbp)
	movq	ca_cert(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, -24(%rbp)
	movq	sroot_cert(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, -32(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -56(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -64(%rbp)
	call	X509_STORE_CTX_new@PLT
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$235, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L73
	movq	-24(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$236, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L73
	movq	-32(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$237, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L73
	movq	-56(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$238, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L73
	movq	-64(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$239, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L73
	movq	-72(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$240, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L73
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
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
	movl	$244, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L74
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$247, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L75
	movq	$0, -24(%rbp)
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$251, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L76
	movl	-84(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set_purpose@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$254, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L77
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set0_trusted_stack@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_verify_cert@PLT
	movl	%eax, %esi
	movl	-88(%rbp), %edi
	leaq	.LC6(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$264, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L78
	movl	$1, -36(%rbp)
	jmp	.L66
.L73:
	nop
	jmp	.L66
.L74:
	nop
	jmp	.L66
.L75:
	nop
	jmp	.L66
.L76:
	nop
	jmp	.L66
.L77:
	nop
	jmp	.L66
.L78:
	nop
.L66:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	do_test_purpose, .-do_test_purpose
	.type	test_purpose_ssl_client, @function
test_purpose_ssl_client:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %esi
	movl	$1, %edi
	call	do_test_purpose
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	test_purpose_ssl_client, .-test_purpose_ssl_client
	.type	test_purpose_ssl_server, @function
test_purpose_ssl_server:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %esi
	movl	$2, %edi
	call	do_test_purpose
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	test_purpose_ssl_server, .-test_purpose_ssl_server
	.type	test_purpose_any, @function
test_purpose_any:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %esi
	movl	$7, %edi
	call	do_test_purpose
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	test_purpose_any, .-test_purpose_any
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB588:
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
.LFE588:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC22:
	.string	"Error parsing test options\n"
	.align 8
.LC23:
	.string	"certs_dir = test_get_argument(0)"
.LC24:
	.string	"rootCA.pem"
	.align 8
.LC25:
	.string	"root_f = test_mk_file_path(certs_dir, \"rootCA.pem\")"
.LC26:
	.string	"roots.pem"
	.align 8
.LC27:
	.string	"roots_f = test_mk_file_path(certs_dir, \"roots.pem\")"
.LC28:
	.string	"untrusted.pem"
	.align 8
.LC29:
	.string	"untrusted_f = test_mk_file_path(certs_dir, \"untrusted.pem\")"
.LC30:
	.string	"bad.pem"
	.align 8
.LC31:
	.string	"bad_f = test_mk_file_path(certs_dir, \"bad.pem\")"
.LC32:
	.string	"sm2-csr.pem"
	.align 8
.LC33:
	.string	"req_f = test_mk_file_path(certs_dir, \"sm2-csr.pem\")"
.LC34:
	.string	"sroot-cert.pem"
	.align 8
.LC35:
	.string	"sroot_cert = test_mk_file_path(certs_dir, \"sroot-cert.pem\")"
.LC36:
	.string	"ca-cert.pem"
	.align 8
.LC37:
	.string	"ca_cert = test_mk_file_path(certs_dir, \"ca-cert.pem\")"
.LC38:
	.string	"ee-cert.pem"
	.align 8
.LC39:
	.string	"ee_cert = test_mk_file_path(certs_dir, \"ee-cert.pem\")"
.LC40:
	.string	"test_alt_chains_cert_forgery"
.LC41:
	.string	"test_store_ctx"
.LC42:
	.string	"test_distinguishing_id"
.LC43:
	.string	"test_req_distinguishing_id"
.LC44:
	.string	"test_self_signed_good"
.LC45:
	.string	"test_self_signed_bad"
.LC46:
	.string	"test_self_signed_error"
.LC47:
	.string	"test_purpose_ssl_client"
.LC48:
	.string	"test_purpose_ssl_server"
.LC49:
	.string	"test_purpose_any"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L88
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$298, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L89
.L88:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, certs_dir(%rip)
	movq	certs_dir(%rip), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$302, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L90
	movl	$0, %eax
	jmp	.L89
.L90:
	movq	certs_dir(%rip), %rax
	leaq	.LC24(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, root_f(%rip)
	movq	root_f(%rip), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$305, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L94
	movq	certs_dir(%rip), %rax
	leaq	.LC26(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, roots_f(%rip)
	movq	roots_f(%rip), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$306, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L94
	movq	certs_dir(%rip), %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, untrusted_f(%rip)
	movq	untrusted_f(%rip), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$307, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L94
	movq	certs_dir(%rip), %rax
	leaq	.LC30(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, bad_f(%rip)
	movq	bad_f(%rip), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$308, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L94
	movq	certs_dir(%rip), %rax
	leaq	.LC32(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, req_f(%rip)
	movq	req_f(%rip), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$309, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L94
	movq	certs_dir(%rip), %rax
	leaq	.LC34(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, sroot_cert(%rip)
	movq	sroot_cert(%rip), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$310, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L94
	movq	certs_dir(%rip), %rax
	leaq	.LC36(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, ca_cert(%rip)
	movq	ca_cert(%rip), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$311, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L94
	movq	certs_dir(%rip), %rax
	leaq	.LC38(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, ee_cert(%rip)
	movq	ee_cert(%rip), %rax
	leaq	.LC39(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$312, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L94
	leaq	test_alt_chains_cert_forgery(%rip), %rdx
	leaq	.LC40(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_store_ctx(%rip), %rdx
	leaq	.LC41(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_distinguishing_id(%rip), %rdx
	leaq	.LC42(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_req_distinguishing_id(%rip), %rdx
	leaq	.LC43(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_self_signed_good(%rip), %rdx
	leaq	.LC44(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_self_signed_bad(%rip), %rdx
	leaq	.LC45(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_self_signed_error(%rip), %rdx
	leaq	.LC46(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_purpose_ssl_client(%rip), %rdx
	leaq	.LC47(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_purpose_ssl_server(%rip), %rdx
	leaq	.LC48(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_purpose_any(%rip), %rdx
	leaq	.LC49(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	jmp	.L89
.L94:
	nop
.L93:
	call	cleanup_tests@PLT
	movl	$0, %eax
.L89:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	root_f(%rip), %rax
	leaq	.LC2(%rip), %rcx
	movl	$333, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	roots_f(%rip), %rax
	leaq	.LC2(%rip), %rcx
	movl	$334, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	untrusted_f(%rip), %rax
	leaq	.LC2(%rip), %rcx
	movl	$335, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	bad_f(%rip), %rax
	leaq	.LC2(%rip), %rcx
	movl	$336, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	req_f(%rip), %rax
	leaq	.LC2(%rip), %rcx
	movl	$337, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	sroot_cert(%rip), %rax
	leaq	.LC2(%rip), %rcx
	movl	$338, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	ca_cert(%rip), %rax
	leaq	.LC2(%rip), %rcx
	movl	$339, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	ee_cert(%rip), %rax
	leaq	.LC2(%rip), %rcx
	movl	$340, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
	.align 8
.LC50:
	.string	"Usage: %s [options] certs-dir\n"
.LC51:
	.string	"Valid options are:\n"
.LC52:
	.string	"help"
.LC53:
	.string	"Display this summary"
.LC54:
	.string	"list"
	.align 8
.LC55:
	.string	"Display the list of tests available"
.LC56:
	.string	"test"
	.align 8
.LC57:
	.string	"Run a single test by id or name"
.LC58:
	.string	"iter"
	.align 8
.LC59:
	.string	"Run a single iteration of a test"
.LC60:
	.string	"indent"
	.align 8
.LC61:
	.string	"Number of tabs added to output"
.LC62:
	.string	"seed"
	.align 8
.LC63:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC50
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC51
	.quad	.LC52
	.long	500
	.long	45
	.quad	.LC53
	.quad	.LC54
	.long	501
	.long	45
	.quad	.LC55
	.quad	.LC56
	.long	502
	.long	115
	.quad	.LC57
	.quad	.LC58
	.long	503
	.long	110
	.quad	.LC59
	.quad	.LC60
	.long	504
	.long	112
	.quad	.LC61
	.quad	.LC62
	.long	505
	.long	110
	.quad	.LC63
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

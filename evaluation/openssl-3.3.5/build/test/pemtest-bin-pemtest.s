	.file	"pemtest.c"
	.text
	.section	.rodata
.LC0:
	.string	"hello world"
.LC1:
	.string	"aGVsbG8gd29ybGQ="
	.align 8
.LC2:
	.string	"a very ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong input"
	.align 8
.LC3:
	.string	"YSB2ZXJ5IG9vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29uZyBpbnB1dA=="
	.section	.data.rel.local,"aw"
	.align 32
	.type	b64_pem_data, @object
	.size	b64_pem_data, 32
b64_pem_data:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.section	.rodata
.LC4:
	.string	"PEMTESTDATA"
	.section	.data.rel.local
	.align 8
	.type	pemtype, @object
	.size	pemtype, 8
pemtype:
	.quad	.LC4
	.local	pemfile
	.comm	pemfile,8,8
	.section	.rodata
.LC5:
	.string	"b"
.LC6:
	.string	"../test/pemtest.c"
.LC7:
	.string	"-----BEGIN %s-----\n"
	.align 8
.LC8:
	.string	"BIO_printf(b, \"-----BEGIN %s-----\\n\", pemtype)"
.LC9:
	.string	"%s\n"
	.align 8
.LC10:
	.string	"BIO_printf(b, \"%s\\n\", encoded)"
.LC11:
	.string	"-----END %s-----\n"
	.align 8
.LC12:
	.string	"BIO_printf(b, \"-----END %s-----\\n\", pemtype)"
	.align 8
.LC13:
	.string	"PEM_read_bio_ex(b, &name, &header, &data, &len, PEM_FLAG_ONLY_B64)"
.LC14:
	.string	"0"
	.align 8
.LC15:
	.string	"memcmp(pemtype, name, strlen(pemtype))"
.LC16:
	.string	"strlen(raw)"
.LC17:
	.string	"len"
	.align 8
.LC18:
	.string	"memcmp(data, raw, strlen(raw))"
	.text
	.type	test_b64, @function
test_b64:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -4(%rbp)
	movl	-68(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	b64_pem_data(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-68(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+b64_pem_data(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$43, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L8
	movq	pemtype(%rip), %rdx
	leaq	.LC7(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$44, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	movq	-32(%rbp), %rdx
	leaq	.LC9(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$45, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	movq	pemtype(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$46, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	leaq	-64(%rbp), %rdi
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$4, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_read_bio_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$47, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	movq	pemtype(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx
	movq	pemtype(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$50, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edi
	movq	-64(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$51, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$52, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L9
	movl	$1, -4(%rbp)
	jmp	.L4
.L8:
	nop
	jmp	.L4
.L9:
	nop
.L4:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movl	$57, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movl	$58, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movl	$59, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_b64, .-test_b64
	.section	.rodata
.LC19:
	.string	"%c%s\n"
	.align 8
.LC20:
	.string	"BIO_printf(b, \"%c%s\\n\", '\\t', encoded)"
	.text
	.type	test_invalid, @function
test_invalid:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	8+b64_pem_data(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$71, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L11
	movq	pemtype(%rip), %rdx
	leaq	.LC7(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$72, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L11
	movq	-16(%rbp), %rdx
	leaq	.LC19(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$9, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$73, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L11
	movq	pemtype(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$74, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L11
	leaq	-48(%rbp), %rdi
	leaq	-40(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$4, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_read_bio_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$76, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L12
.L11:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
	jmp	.L14
.L12:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movl	$82, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movl	$83, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movl	$84, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_invalid, .-test_invalid
	.section	.rodata
	.align 8
.LC21:
	.string	"key = load_pkey_pem(pemfile, NULL)"
	.text
	.type	test_cert_key_cert, @function
test_cert_key_cert:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	pemfile(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_pkey_pem@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$92, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_cert_key_cert, .-test_cert_key_cert
	.section	.rodata
	.align 8
.LC22:
	.string	"PEM_read_bio_ex(b, &name, &header, &data, &len, 0)"
	.text
	.type	test_empty_payload, @function
test_empty_payload:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	emptypay.1(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	emptypay.1(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$112, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L23
.L19:
	leaq	-48(%rbp), %rdi
	leaq	-40(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_read_bio_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$116, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L24
	movl	$1, -4(%rbp)
	jmp	.L22
.L24:
	nop
.L22:
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movl	$121, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movl	$122, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movl	$123, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_empty_payload, .-test_empty_payload
	.section	.rodata
.LC23:
	.string	"pkey"
	.text
	.type	test_protected_params, @function
test_protected_params:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	protectedpay.0(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	protectedpay.0(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$142, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_Parameters@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$147, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L30
	movl	$1, -4(%rbp)
	jmp	.L29
.L30:
	nop
.L29:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_protected_params, .-test_protected_params
	.section	.rodata
	.align 8
.LC24:
	.string	"pemfile = test_get_argument(0)"
.LC25:
	.string	"test_b64"
.LC26:
	.string	"test_invalid"
.LC27:
	.string	"test_cert_key_cert"
.LC28:
	.string	"test_empty_payload"
.LC29:
	.string	"test_protected_params"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, pemfile(%rip)
	movq	pemfile(%rip), %rax
	leaq	.LC24(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$159, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L32
	movl	$0, %eax
	jmp	.L33
.L32:
	leaq	test_b64(%rip), %rsi
	leaq	.LC25(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_invalid(%rip), %rdx
	leaq	.LC26(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cert_key_cert(%rip), %rdx
	leaq	.LC27(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_empty_payload(%rip), %rdx
	leaq	.LC28(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_protected_params(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L33:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 8
.LC30:
	.string	"-----BEGIN CERTIFICATE-----\n-\n-----END CERTIFICATE-----"
	.section	.data.rel.local
	.align 8
	.type	emptypay.1, @object
	.size	emptypay.1, 8
emptypay.1:
	.quad	.LC30
	.section	.rodata
	.align 8
.LC31:
	.string	"-----BEGIN RSA PRIVATE KEY-----\nProc-Type: 4,ENCRYPTED\nDEK-Info: AES-256-CBC,4A44448ED28992710556549B35100CEA\n\nXw3INxKeH+rUUF57mjATpvj6zknVhedwrlRmRvnwlLv5wqIy5Ae4UVLPh7SUswfC\n-----END RSA PRIVATE KEY-----\n"
	.section	.data.rel.local
	.align 8
	.type	protectedpay.0, @object
	.size	protectedpay.0, 8
protectedpay.0:
	.quad	.LC31
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

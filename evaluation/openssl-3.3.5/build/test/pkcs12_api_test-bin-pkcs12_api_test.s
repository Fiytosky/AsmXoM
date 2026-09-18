	.file	"pkcs12_api_test.c"
	.text
	.local	testctx
	.comm	testctx,8,8
	.local	nullprov
	.comm	nullprov,8,8
	.section	.rodata
	.align 8
.LC0:
	.string	"PKCS12_parse(NULL, NULL, NULL, NULL, NULL)"
.LC1:
	.string	"../test/pkcs12_api_test.c"
	.text
	.type	test_null_args, @function
test_null_args:
.LFB582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	PKCS12_parse@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$29, %esi
	call	test_false@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	test_null_args, .-test_null_args
	.section	.rodata
.LC2:
	.string	"rb"
.LC3:
	.string	"bio"
.LC4:
	.string	"provider=default"
.LC5:
	.string	"p12"
	.align 8
.LC6:
	.string	"p12 == d2i_PKCS12_bio(bio, &p12)"
	.text
	.type	PKCS12_load, @function
PKCS12_load:
.LFB583:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC2(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$38, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L10
	movq	testctx(%rip), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rsi
	movl	$21, %edi
	call	PKCS12_init_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$42, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L11
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	d2i_PKCS12_bio@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$45, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L12
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	jmp	.L9
.L10:
	nop
	jmp	.L5
.L11:
	nop
	jmp	.L5
.L12:
	nop
.L5:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_free@PLT
	movl	$0, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	PKCS12_load, .-PKCS12_load
	.local	in_file
	.comm	in_file,8,8
	.section	.rodata
.LC7:
	.string	""
	.section	.data.rel.local,"aw"
	.align 8
	.type	in_pass, @object
	.size	in_pass, 8
in_pass:
	.quad	.LC7
	.local	has_key
	.comm	has_key,4,4
	.local	has_cert
	.comm	has_cert,4,4
	.local	has_ca
	.comm	has_ca,4,4
	.section	.rodata
.LC8:
	.string	"NEWPASS"
	.align 8
.LC9:
	.string	"PKCS12_newpass(p12, in_pass, \"NEWPASS\")"
.LC10:
	.string	"bio = BIO_new(BIO_s_mem())"
.LC11:
	.string	"i2d_PKCS12_bio(bio, p12)"
	.align 8
.LC12:
	.string	"p12new = PKCS12_init_ex(NID_pkcs7_data, testctx, \"provider=default\")"
.LC13:
	.string	"d2i_PKCS12_bio(bio, &p12new)"
	.align 8
.LC14:
	.string	"PKCS12_parse(p12new, \"NEWPASS\", &key2, &cert2, &ca2)"
.LC15:
	.string	"key2"
.LC16:
	.string	"1"
.LC17:
	.string	"EVP_PKEY_eq(key, key2)"
.LC18:
	.string	"cert2"
.LC19:
	.string	"0"
.LC20:
	.string	"X509_cmp(cert, cert2)"
	.text
	.type	changepass, @function
changepass:
.LFB584:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	in_pass(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS12_newpass@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$73, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L26
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$75, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L27
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PKCS12_bio@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$77, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	movq	testctx(%rip), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rsi
	movl	$21, %edi
	call	PKCS12_init_ex@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$79, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L29
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	d2i_PKCS12_bio@PLT
	movq	%rax, %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$81, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L30
	movq	-24(%rbp), %rax
	leaq	-48(%rbp), %rdi
	leaq	-40(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	leaq	.LC8(%rip), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PKCS12_parse@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$83, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L31
	movl	has_key(%rip), %eax
	testl	%eax, %eax
	je	.L21
	movq	-32(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$86, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L32
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$86, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L32
.L21:
	movl	has_cert(%rip), %eax
	testl	%eax, %eax
	je	.L23
	movq	-40(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$90, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L33
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_cmp@PLT
	movl	%eax, %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$90, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L33
.L23:
	movl	$1, -4(%rbp)
	jmp	.L15
.L26:
	nop
	jmp	.L15
.L27:
	nop
	jmp	.L15
.L28:
	nop
	jmp	.L15
.L29:
	nop
	jmp	.L15
.L30:
	nop
	jmp	.L15
.L31:
	nop
	jmp	.L15
.L32:
	nop
	jmp	.L15
.L33:
	nop
.L15:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	changepass, .-changepass
	.section	.rodata
	.align 8
.LC21:
	.string	"PKCS12_parse(p12, in_pass, &key, &cert, &ca)"
.LC22:
	.string	"key"
.LC23:
	.string	"cert"
.LC24:
	.string	"ca"
.LC25:
	.string	"ret"
	.text
	.type	pkcs12_parse_test, @function
pkcs12_parse_test:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	in_file(%rip), %rax
	testq	%rax, %rax
	je	.L35
	movq	in_file(%rip), %rax
	movq	%rax, %rdi
	call	PKCS12_load
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$113, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L49
	movq	in_pass(%rip), %rsi
	leaq	-40(%rbp), %rdi
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PKCS12_parse@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$116, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L50
	movl	has_key(%rip), %eax
	testl	%eax, %eax
	je	.L39
	movq	-24(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$119, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L51
.L39:
	movl	has_key(%rip), %eax
	testl	%eax, %eax
	jne	.L41
	movq	-24(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$119, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L51
.L41:
	movl	has_cert(%rip), %eax
	testl	%eax, %eax
	je	.L42
	movq	-32(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$121, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L52
.L42:
	movl	has_cert(%rip), %eax
	testl	%eax, %eax
	jne	.L44
	movq	-32(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$121, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L52
.L44:
	movl	has_ca(%rip), %eax
	testl	%eax, %eax
	je	.L45
	movq	-40(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$123, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L53
.L45:
	movl	has_ca(%rip), %eax
	testl	%eax, %eax
	jne	.L47
	movq	-40(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$123, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L53
.L47:
	movl	has_key(%rip), %eax
	testl	%eax, %eax
	je	.L35
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	changepass
	testl	%eax, %eax
	je	.L54
.L35:
	movl	$1, -4(%rbp)
	jmp	.L37
.L49:
	nop
	jmp	.L37
.L50:
	nop
	jmp	.L37
.L51:
	nop
	jmp	.L37
.L52:
	nop
	jmp	.L37
.L53:
	nop
	jmp	.L37
.L54:
	nop
.L37:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$134, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	pkcs12_parse_test, .-pkcs12_parse_test
	.type	pkcs12_create_cb, @function
pkcs12_create_cb:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	pkcs12_create_cb, .-pkcs12_create_cb
	.section	.rodata
.LC26:
	.string	"out6.p12"
	.align 8
.LC27:
	.string	"PKCS12_parse(p12, \"\", key, cert, ca)"
	.text
	.type	pkcs12_create_ex2_setup, @function
pkcs12_create_ex2_setup:
.LFB587:
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
	movq	$0, -8(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	PKCS12_load
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$147, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L62
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	.LC7(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PKCS12_parse@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$150, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L63
	movq	-8(%rbp), %rax
	jmp	.L61
.L62:
	nop
	jmp	.L59
.L63:
	nop
.L59:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_free@PLT
	movl	$0, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	pkcs12_create_ex2_setup, .-pkcs12_create_ex2_setup
	.section	.rodata
.LC28:
	.string	"ptr"
	.text
	.type	pkcs12_create_ex2_test, @function
pkcs12_create_ex2_test:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	pkcs12_create_ex2_setup
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$168, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L73
	cmpl	$0, -68(%rbp)
	jne	.L67
	movq	testctx(%rip), %rax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	%rax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	PKCS12_create_ex2@PLT
	addq	$64, %rsp
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$178, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L74
	movq	-48(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$182, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L75
	movl	$1, -28(%rbp)
	movq	testctx(%rip), %rdx
	movq	-48(%rbp), %rax
	leaq	-28(%rbp), %rcx
	pushq	%rcx
	leaq	pkcs12_create_cb(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	%rdx
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	PKCS12_create_ex2@PLT
	addq	$64, %rsp
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$193, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L70
	jmp	.L66
.L67:
	cmpl	$1, -68(%rbp)
	jne	.L71
	movl	$-1, -28(%rbp)
	movq	testctx(%rip), %rdx
	movq	-48(%rbp), %rax
	leaq	-28(%rbp), %rcx
	pushq	%rcx
	leaq	pkcs12_create_cb(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	%rdx
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	PKCS12_create_ex2@PLT
	addq	$64, %rsp
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$204, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L70
	jmp	.L66
.L71:
	cmpl	$2, -68(%rbp)
	jne	.L70
	movl	$0, -28(%rbp)
	movq	testctx(%rip), %rdx
	movq	-48(%rbp), %rax
	leaq	-28(%rbp), %rcx
	pushq	%rcx
	leaq	pkcs12_create_cb(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	%rdx
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	PKCS12_create_ex2@PLT
	addq	$64, %rsp
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$215, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L76
.L70:
	movl	$1, -4(%rbp)
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
.L66:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$226, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	pkcs12_create_ex2_test, .-pkcs12_create_ex2_test
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB589:
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
.LFE589:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC29:
	.string	"test_null_args"
.LC30:
	.string	"pkcs12_parse_test"
.LC31:
	.string	"pkcs12_create_ex2_test"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	jmp	.L80
.L90:
	cmpl	$505, -4(%rbp)
	jg	.L81
	cmpl	$500, -4(%rbp)
	jge	.L80
	cmpl	$6, -4(%rbp)
	je	.L80
	cmpl	$6, -4(%rbp)
	jg	.L81
	cmpl	$5, -4(%rbp)
	je	.L84
	cmpl	$5, -4(%rbp)
	jg	.L81
	cmpl	$4, -4(%rbp)
	je	.L85
	cmpl	$4, -4(%rbp)
	jg	.L81
	cmpl	$3, -4(%rbp)
	je	.L86
	cmpl	$3, -4(%rbp)
	jg	.L81
	cmpl	$1, -4(%rbp)
	je	.L87
	cmpl	$2, -4(%rbp)
	je	.L88
	jmp	.L81
.L87:
	call	opt_arg@PLT
	movq	%rax, in_file(%rip)
	jmp	.L80
.L88:
	call	opt_arg@PLT
	movq	%rax, in_pass(%rip)
	jmp	.L80
.L86:
	call	opt_int_arg@PLT
	movl	%eax, has_key(%rip)
	jmp	.L80
.L85:
	call	opt_int_arg@PLT
	movl	%eax, has_cert(%rip)
	jmp	.L80
.L84:
	call	opt_int_arg@PLT
	movl	%eax, has_ca(%rip)
	jmp	.L80
.L81:
	movl	$0, %eax
	jmp	.L89
.L80:
	call	opt_next@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L90
	leaq	nullprov(%rip), %rsi
	leaq	testctx(%rip), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	test_get_libctx@PLT
	testl	%eax, %eax
	jne	.L91
	movq	testctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movq	$0, testctx(%rip)
	movl	$0, %eax
	jmp	.L89
.L91:
	leaq	test_null_args(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	pkcs12_parse_test(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	pkcs12_create_ex2_test(%rip), %rsi
	leaq	.LC31(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	testctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movq	nullprov(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
.LC32:
	.string	"Usage: %s [options]\n"
.LC33:
	.string	"Valid options are:\n"
.LC34:
	.string	"help"
.LC35:
	.string	"Display this summary"
.LC36:
	.string	"list"
	.align 8
.LC37:
	.string	"Display the list of tests available"
.LC38:
	.string	"test"
	.align 8
.LC39:
	.string	"Run a single test by id or name"
.LC40:
	.string	"iter"
	.align 8
.LC41:
	.string	"Run a single iteration of a test"
.LC42:
	.string	"indent"
	.align 8
.LC43:
	.string	"Number of tabs added to output"
.LC44:
	.string	"seed"
	.align 8
.LC45:
	.string	"Seed value to randomize tests with"
.LC46:
	.string	"in"
.LC47:
	.string	"PKCS12 input file"
.LC48:
	.string	"pass"
.LC49:
	.string	"PKCS12 input file password"
.LC50:
	.string	"has-key"
	.align 8
.LC51:
	.string	"Whether the input file does contain an user key"
.LC52:
	.string	"has-cert"
	.align 8
.LC53:
	.string	"Whether the input file does contain an user certificate"
.LC54:
	.string	"has-ca"
	.align 8
.LC55:
	.string	"Whether the input file does contain other certificate"
.LC56:
	.string	"legacy"
.LC57:
	.string	"Test the legacy APIs"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 360
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC32
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC33
	.quad	.LC34
	.long	500
	.long	45
	.quad	.LC35
	.quad	.LC36
	.long	501
	.long	45
	.quad	.LC37
	.quad	.LC38
	.long	502
	.long	115
	.quad	.LC39
	.quad	.LC40
	.long	503
	.long	110
	.quad	.LC41
	.quad	.LC42
	.long	504
	.long	112
	.quad	.LC43
	.quad	.LC44
	.long	505
	.long	110
	.quad	.LC45
	.quad	.LC46
	.long	1
	.long	60
	.quad	.LC47
	.quad	.LC48
	.long	2
	.long	115
	.quad	.LC49
	.quad	.LC50
	.long	3
	.long	110
	.quad	.LC51
	.quad	.LC52
	.long	4
	.long	110
	.quad	.LC53
	.quad	.LC54
	.long	5
	.long	110
	.quad	.LC55
	.quad	.LC56
	.long	6
	.long	45
	.quad	.LC57
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

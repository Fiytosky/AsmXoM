	.file	"load.c"
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
	.section	.rodata
.LC0:
	.string	"file"
.LC1:
	.string	"../test/testutil/load.c"
.LC2:
	.string	"bio = BIO_new(BIO_s_file())"
.LC3:
	.string	"0"
.LC4:
	.string	"BIO_read_filename(bio, file)"
	.align 8
.LC5:
	.string	"cert = X509_new_ex(libctx, NULL)"
	.align 8
.LC6:
	.string	"cert = PEM_read_bio_X509(bio, &cert, NULL, NULL)"
	.text
	.globl	load_cert_pem
	.type	load_cert_pem, @function
load_cert_pem:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$23, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L6
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$23, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L7
.L6:
	movl	$0, %eax
	jmp	.L10
.L7:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$108, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$25, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L9
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_new_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$26, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L9
	leaq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PEM_read_bio_X509@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$27, %esi
	call	test_ptr@PLT
.L9:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	load_cert_pem, .-load_cert_pem
	.section	.rodata
.LC7:
	.string	"r"
	.text
	.globl	load_certs_pem
	.type	load_certs_pem, @function
load_certs_pem:
.LFB469:
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
	movq	-56(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$39, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L12
	leaq	.LC7(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L13
.L12:
	movl	$0, %eax
	jmp	.L14
.L13:
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
	jmp	.L14
.L15:
	call	ERR_set_mark@PLT
.L18:
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_X509@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L16
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L16
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
	jmp	.L14
.L16:
	cmpq	$0, -40(%rbp)
	jne	.L17
	call	ERR_pop_to_mark@PLT
.L17:
	cmpq	$0, -40(%rbp)
	jne	.L18
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
.L14:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	load_certs_pem, .-load_certs_pem
	.section	.rodata
	.align 8
.LC8:
	.string	"key = PEM_read_bio_PrivateKey_ex(bio, NULL, NULL, NULL, libctx, NULL)"
	.align 8
.LC9:
	.string	"Spurious error from reading PEM"
	.text
	.globl	load_pkey_pem
	.type	load_pkey_pem, @function
load_pkey_pem:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$74, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L20
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$74, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L21
.L20:
	movl	$0, %eax
	jmp	.L22
.L21:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$108, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$76, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L23
	call	ERR_peek_error@PLT
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$79, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L23
	call	ERR_peek_error@PLT
	cmpq	%rax, -24(%rbp)
	je	.L23
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$82, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -8(%rbp)
.L23:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	load_pkey_pem, .-load_pkey_pem
	.section	.rodata
.LC10:
	.string	"rb"
	.align 8
.LC11:
	.string	"bio = BIO_new_file(file, \"rb\")"
.LC12:
	.string	"csr"
.LC13:
	.string	"d2i_X509_REQ_bio(bio, &csr)"
	.text
	.globl	load_csr_der
	.type	load_csr_der, @function
load_csr_der:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$97, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L25
	leaq	.LC10(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$97, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L26
.L25:
	movl	$0, %eax
	jmp	.L29
.L26:
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_REQ_new_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$101, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L28
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	d2i_X509_REQ_bio@PLT
	movq	%rax, %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$102, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
.L28:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	load_csr_der, .-load_csr_der
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

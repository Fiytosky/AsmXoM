	.file	"cmsapitest.c"
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
	.local	cert
	.comm	cert,8,8
	.local	privkey
	.comm	privkey,8,8
	.local	derin
	.comm	derin,8,8
	.section	.rodata
.LC0:
	.string	"Hello world"
.LC1:
	.string	"certstack"
.LC2:
	.string	"../test/cmsapitest.c"
.LC3:
	.string	"msgbio"
.LC4:
	.string	"outmsgbio"
.LC5:
	.string	"0"
.LC6:
	.string	"sk_X509_push(certstack, cert)"
.LC7:
	.string	"content"
	.align 8
.LC8:
	.string	"CMS_decrypt(content, privkey, cert, NULL, outmsgbio, CMS_TEXT)"
	.align 8
.LC9:
	.string	"contentbio = CMS_EnvelopedData_decrypt(content->d.envelopedData, NULL, privkey, cert, NULL, CMS_TEXT, NULL, NULL)"
.LC10:
	.string	"strlen(msg)"
	.align 8
.LC11:
	.string	"BIO_gets(outmsgbio, buf, sizeof(buf))"
.LC12:
	.string	"strcmp(buf, msg)"
.LC13:
	.string	"ERR_peek_error()"
	.text
	.type	test_encrypt_decrypt, @function
test_encrypt_decrypt:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movl	$0, -20(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -48(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -64(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -72(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$35, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L18
	movq	-64(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$35, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L18
	movq	-72(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$35, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L18
	movq	cert(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	movl	%eax, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$38, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L19
	movq	-168(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	CMS_encrypt@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$42, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L20
	movq	cert(%rip), %rdx
	movq	privkey(%rip), %rsi
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$1, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	CMS_decrypt@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$45, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	movq	cert(%rip), %rcx
	movq	privkey(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	pushq	$0
	pushq	$0
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_EnvelopedData_decrypt@PLT
	addq	$16, %rsp
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$49, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L22
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %ebx
	leaq	-160(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	movl	%eax, %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$56, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L23
	movq	-56(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movl	%eax, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$57, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L23
	movl	$1, -20(%rbp)
	jmp	.L8
.L18:
	nop
	jmp	.L8
.L19:
	nop
	jmp	.L8
.L20:
	nop
	jmp	.L8
.L21:
	nop
	jmp	.L8
.L22:
	nop
	jmp	.L8
.L23:
	nop
.L8:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ContentInfo_free@PLT
	cmpl	$0, -20(%rbp)
	je	.L15
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$68, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L15
	movl	$1, %eax
	jmp	.L17
.L15:
	movl	$0, %eax
.L17:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	test_encrypt_decrypt, .-test_encrypt_decrypt
	.type	test_encrypt_decrypt_aes_cbc, @function
test_encrypt_decrypt_aes_cbc:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	EVP_aes_128_cbc@PLT
	movq	%rax, %rdi
	call	test_encrypt_decrypt
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	test_encrypt_decrypt_aes_cbc, .-test_encrypt_decrypt_aes_cbc
	.type	test_encrypt_decrypt_aes_128_gcm, @function
test_encrypt_decrypt_aes_128_gcm:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	EVP_aes_128_gcm@PLT
	movq	%rax, %rdi
	call	test_encrypt_decrypt
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	test_encrypt_decrypt_aes_128_gcm, .-test_encrypt_decrypt_aes_128_gcm
	.type	test_encrypt_decrypt_aes_192_gcm, @function
test_encrypt_decrypt_aes_192_gcm:
.LFB628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	EVP_aes_192_gcm@PLT
	movq	%rax, %rdi
	call	test_encrypt_decrypt
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	test_encrypt_decrypt_aes_192_gcm, .-test_encrypt_decrypt_aes_192_gcm
	.type	test_encrypt_decrypt_aes_256_gcm, @function
test_encrypt_decrypt_aes_256_gcm:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	EVP_aes_256_gcm@PLT
	movq	%rax, %rdi
	call	test_encrypt_decrypt
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	test_encrypt_decrypt_aes_256_gcm, .-test_encrypt_decrypt_aes_256_gcm
	.section	.rodata
.LC14:
	.string	"cms = CMS_ContentInfo_new()"
	.align 8
.LC15:
	.string	"CMS_add1_signer(cms, cert, privkey, NULL, 0)"
.LC16:
	.string	"CMS_add1_cert(cms, cert)"
	.text
	.type	test_CMS_add1_cert, @function
test_CMS_add1_cert:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	call	CMS_ContentInfo_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$96, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L33
	movq	privkey(%rip), %rdx
	movq	cert(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	CMS_add1_signer@PLT
	movq	%rax, %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L33
	movq	cert(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_add1_cert@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$98, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L33
	movl	$1, %eax
	jmp	.L34
.L33:
	movl	$0, %eax
.L34:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ContentInfo_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	test_CMS_add1_cert, .-test_CMS_add1_cert
	.section	.rodata
	.align 8
.LC17:
	.string	"bio = BIO_new_mem_buf(cms_data, sizeof(cms_data))"
.LC18:
	.string	"cms = d2i_CMS_bio(bio, NULL)"
	.align 8
.LC19:
	.string	"CMS_verify(cms, NULL, NULL, NULL, NULL, flags)"
	.align 8
.LC20:
	.string	"content = CMS_SignedData_verify(cms->d.signedData, NULL, NULL, NULL, NULL, NULL, flags, NULL, NULL)"
	.text
	.type	test_d2i_CMS_bio_NULL, @function
test_d2i_CMS_bio_NULL:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$32, -20(%rbp)
	movl	$0, -24(%rbp)
	leaq	cms_data.1(%rip), %rax
	movl	$1481, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$306, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L37
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_CMS_bio@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$307, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L37
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_verify@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$308, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	movl	-20(%rbp), %edx
	pushq	%rdx
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_SignedData_verify@PLT
	addq	$32, %rsp
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$309, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L37
	movl	$1, %eax
	jmp	.L38
.L37:
	movl	$0, %eax
.L38:
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ContentInfo_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	cmpl	$0, -24(%rbp)
	je	.L39
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$315, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L39
	movl	$1, %eax
	jmp	.L41
.L39:
	movl	$0, %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	test_d2i_CMS_bio_NULL, .-test_d2i_CMS_bio_NULL
	.type	read_all, @function
read_all:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$256, -12(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
.L48:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$327, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L49
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-12(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	js	.L50
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.L48
	movq	-8(%rbp), %rax
	jmp	.L47
.L49:
	nop
	jmp	.L44
.L50:
	nop
.L44:
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$342, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	read_all, .-read_all
	.section	.rodata
.LC21:
	.string	"r"
	.align 8
.LC22:
	.string	"bio = BIO_new_file(derin, \"r\")"
.LC23:
	.string	"buf = read_all(bio, &buf_len)"
	.align 8
.LC24:
	.string	"cms = d2i_CMS_ContentInfo(NULL, &tmp, buf_len)"
	.text
	.type	test_d2i_CMS_decode, @function
test_d2i_CMS_decode:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -20(%rbp)
	movq	derin(%rip), %rax
	leaq	.LC21(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$356, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L62
	cmpl	$0, -52(%rbp)
	je	.L54
	cmpl	$1, -52(%rbp)
	je	.L55
	jmp	.L56
.L54:
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_CMS_bio@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$361, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L63
	jmp	.L53
.L55:
	leaq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_all
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$365, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L64
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_CMS_ContentInfo@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$368, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L65
	jmp	.L56
.L63:
	nop
.L56:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$373, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L66
	movl	$1, -20(%rbp)
	jmp	.L53
.L62:
	nop
	jmp	.L53
.L64:
	nop
	jmp	.L53
.L65:
	nop
	jmp	.L53
.L66:
	nop
.L53:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ContentInfo_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$380, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	test_d2i_CMS_decode, .-test_d2i_CMS_decode
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB634:
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
.LFE634:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC25:
	.string	"Error parsing test options\n"
.LC26:
	.string	"certin = test_get_argument(0)"
	.align 8
.LC27:
	.string	"privkeyin = test_get_argument(1)"
.LC28:
	.string	"derin = test_get_argument(2)"
.LC29:
	.string	"certbio"
	.align 8
.LC30:
	.string	"PEM_read_bio_X509(certbio, &cert, NULL, NULL)"
.LC31:
	.string	"privkeybio"
	.align 8
.LC32:
	.string	"PEM_read_bio_PrivateKey(privkeybio, &privkey, NULL, NULL)"
.LC33:
	.string	"test_encrypt_decrypt_aes_cbc"
	.align 8
.LC34:
	.string	"test_encrypt_decrypt_aes_128_gcm"
	.align 8
.LC35:
	.string	"test_encrypt_decrypt_aes_192_gcm"
	.align 8
.LC36:
	.string	"test_encrypt_decrypt_aes_256_gcm"
.LC37:
	.string	"test_CMS_add1_cert"
.LC38:
	.string	"test_d2i_CMS_bio_NULL"
.LC39:
	.string	"test_d2i_CMS_decode"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L70
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$393, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L71
.L70:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$397, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L72
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$398, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L72
	movl	$2, %edi
	call	test_get_argument@PLT
	movq	%rax, derin(%rip)
	movq	derin(%rip), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$399, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L73
.L72:
	movl	$0, %eax
	jmp	.L71
.L73:
	leaq	.LC21(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$403, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L74
	movl	$0, %eax
	jmp	.L71
.L74:
	leaq	cert(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PEM_read_bio_X509@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$405, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L75
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
	jmp	.L71
.L75:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	.LC21(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$412, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L76
	movq	cert(%rip), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	$0, cert(%rip)
	movl	$0, %eax
	jmp	.L71
.L76:
	leaq	privkey(%rip), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$417, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L77
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	cert(%rip), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	$0, cert(%rip)
	movl	$0, %eax
	jmp	.L71
.L77:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	test_encrypt_decrypt_aes_cbc(%rip), %rdx
	leaq	.LC33(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_encrypt_decrypt_aes_128_gcm(%rip), %rdx
	leaq	.LC34(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_encrypt_decrypt_aes_192_gcm(%rip), %rdx
	leaq	.LC35(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_encrypt_decrypt_aes_256_gcm(%rip), %rdx
	leaq	.LC36(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CMS_add1_cert(%rip), %rdx
	leaq	.LC37(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_d2i_CMS_bio_NULL(%rip), %rdx
	leaq	.LC38(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_d2i_CMS_decode(%rip), %rsi
	leaq	.LC39(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	cert(%rip), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	privkey(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
	.align 32
	.type	cms_data.1, @object
	.size	cms_data.1, 1481
cms_data.1:
	.base64	"MIIFxQYJKoZIhvcNAQcCoIIFtjCCBbICAQExDTALBglghkgBZQMEAgEwHAYJKoZIhvcNAQcBoA8EDUhlbGxvIFdvcmxkDQqgggODMIIDfzCCAmegAwIBAgIJAIhDKcvC6xWaMA0GCSqGSIb3DQEBCwUAMFYxCzAJBgNVBAYTAkFVMRMwEQYDVQQIDApTb21lLVN0YXRlMSEwHwYDVQQKDBhJbnRlcm5ldCBXaWRnaXRzIFB0eSBMdGQxDzANBgNVBAMMBnJvb3RDQTAeFw0xNTA3MDIxMzE1MTFaFw0zNTA3MDIxMzE1MTFaMFYxCzAJBgNVBAYTAkFVMRMwEQYD"
	.base64	"VQQIDApTb21lLVN0YXRlMSEwHwYDVQQKDBhJbnRlcm5ldCBXaWRnaXRzIFB0eSBMdGQxDzANBgNVBAMMBnJvb3RDQTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMDxa3eIrDXf+3NTL5KAL3QWMk31ECBvbDqO0dxr4S4+wwQPv5vEyRLR5AtFl+UGzWY64eDiK9+ixOx70z08iv9edKCrpwNqFlteksR+W3mKadS8g16uQpJ0pSvnAMGp3NWxUwcPc/eOrRQ+JZ7lHubMkc2VDIBEIMP9F8+RPWMQHBRb+8OowYiyd/+c2/xqRERE94XsCCzU34Gj"
	.base64	"ecn+HpuTFlO3l6u+Txql4vpGBeQNnCqkzLkeIaBsxKtZsEA5u/mIrf3fjbQLr35B4CE8yDNFSYQvkwbu/U/tT/O8m978JV5V1XXUxXs6QDUGn8SEtGyTDK83Wq+2QU0mIxy4ArMCAwEAAaNQME4wDAYDVR0TBAUwAwEB/zAdBgNVHQ4EFgQUhVaJNeKfABrhhgMLS692Emszbf0wHwYDVR0jBBgwFoAUhVaJNeKfABrhhgMLS692Emszbf0wDQYJKoZIhvcNAQELBQADggEBADIKvyoK4rtPQ86I2lo5EDeAuzctXi2I3SZpnOe0mCCxJeZhWW0S7JuHvlfhEgXF"
	.base64	"BPEXzhS4HJLUlZUsWyiJ+3KcINMygaiF7MgIe6hZWzpsMatS4mbNFElc89M+YryRFrQc9d1Uqjxhl3ms5MhDNcMP/PNwHa/wnIoqkpNIqtDoR741wcZ7bdr6XVdF8+pBjzbBPPRSf24x3bqavHBWcTjcSVcM/ZEXxeqH5SN0GbK2mQxrogX4UWjtl+DfYvl+ejpEcYNXKEmIabUUHtpG42544cuPtZizLW5bt/aTJBQfpPZpvf9MUlACxUONFOLQdZ8SXpSJ0e93iX2J2Z52mSQxggH3MIIB8wIBATBjMFYxCzAJBgNVBAYTAkFVMRMwEQYDVQQIDApTb21lLVN0"
	.base64	"YXRlMSEwHwYDVQQKDBhJbnRlcm5ldCBXaWRnaXRzIFB0eSBMdGQxDzANBgNVBAMMBnJvb3RDQQIJAIhDKcvC6xWaMAsGCWCGSAFlAwQCAaBpMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIwMTIxMTA5MDAxM1owLwYJKoZIhvcNAQkEMSIEILCAItMVzx6xLSZlve0OavQGU8CgvpdSMvtJvL0CHPw2MA0GCSqGSIb3DQEBAQUABIIBADdEOQiyGVI1nNBnh664HID0Ayku43ZKsJgQAJow2wUoUzQxFL2HuU1FB5ejVwt+0Wf7"
	.base64	"Tg9bkLJv5s5J3XJGcSahG5gjfWlzhNz50hxt9vUXSW6dTfHiQylTVaUiHoksr/JDR9X6reeJYL+WNW/CmbdVxeMEJRv2fvIrFKlXlr69bpVElL2vmm13VV5s9jI37O/lgbDjNceG6kdZOLYW+x0QVUixRDPe9im+v7xxPkm6559NbPvs0uASqXzJmnuFg7jK3fa3FXV7SmnPCseAAeeUFn+NPPofBXF2FbD2YTBYFr4b0ZPEGpEMSOIcjqXFp4FESDsQwnQH36iuV+5/42o="
	.align 8
.LC40:
	.string	"Usage: %s [options] certfile privkeyfile derfile\n"
.LC41:
	.string	"Valid options are:\n"
.LC42:
	.string	"help"
.LC43:
	.string	"Display this summary"
.LC44:
	.string	"list"
	.align 8
.LC45:
	.string	"Display the list of tests available"
.LC46:
	.string	"test"
	.align 8
.LC47:
	.string	"Run a single test by id or name"
.LC48:
	.string	"iter"
	.align 8
.LC49:
	.string	"Run a single iteration of a test"
.LC50:
	.string	"indent"
	.align 8
.LC51:
	.string	"Number of tabs added to output"
.LC52:
	.string	"seed"
	.align 8
.LC53:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC40
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC41
	.quad	.LC42
	.long	500
	.long	45
	.quad	.LC43
	.quad	.LC44
	.long	501
	.long	45
	.quad	.LC45
	.quad	.LC46
	.long	502
	.long	115
	.quad	.LC47
	.quad	.LC48
	.long	503
	.long	110
	.quad	.LC49
	.quad	.LC50
	.long	504
	.long	112
	.quad	.LC51
	.quad	.LC52
	.long	505
	.long	110
	.quad	.LC53
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

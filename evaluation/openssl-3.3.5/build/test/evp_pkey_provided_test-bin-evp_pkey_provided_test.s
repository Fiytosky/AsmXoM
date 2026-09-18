	.file	"evp_pkey_provided_test.c"
	.text
	.local	datadir
	.comm	datadir,8,8
	.type	stripcr, @function
stripcr:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L2
.L6:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	jne	.L3
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L4
.L3:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.L5
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
.L5:
	addq	$1, -24(%rbp)
.L4:
	subq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
.L2:
	cmpq	$0, -8(%rbp)
	jne	.L6
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	stripcr, .-stripcr
	.section	.rodata
.LC9:
	.string	"priv.txt"
.LC10:
	.string	"priv.pem"
.LC11:
	.string	"priv.der"
.LC12:
	.string	"pub.txt"
.LC13:
	.string	"pub.pem"
.LC14:
	.string	"pub.der"
.LC15:
	.string	"Invalid file type"
	.align 8
.LC16:
	.string	"../test/evp_pkey_provided_test.c"
.LC17:
	.string	"%s.%s"
.LC18:
	.string	"fullfile"
.LC19:
	.string	"rb"
.LC20:
	.string	"file"
	.align 8
.LC21:
	.string	"BIO_read_ex(file, buf, sizeof(buf), &readbytes)"
.LC22:
	.string	"BIO_eof(file)"
.LC23:
	.string	"sizeof(buf)"
.LC24:
	.string	"readbytes"
.LC25:
	.string	"0"
.LC26:
	.string	"len"
.LC27:
	.string	"buf"
.LC28:
	.string	"memdata"
	.text
	.type	compare_with_file, @function
compare_with_file:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4272, %rsp
	movq	%rdi, -4248(%rbp)
	movl	%esi, -4252(%rbp)
	movq	%rdx, -4264(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -28(%rbp)
	cmpl	$5, -4252(%rbp)
	je	.L8
	cmpl	$5, -4252(%rbp)
	jg	.L9
	cmpl	$4, -4252(%rbp)
	je	.L10
	cmpl	$4, -4252(%rbp)
	jg	.L9
	cmpl	$3, -4252(%rbp)
	je	.L11
	cmpl	$3, -4252(%rbp)
	jg	.L9
	cmpl	$2, -4252(%rbp)
	je	.L12
	cmpl	$2, -4252(%rbp)
	jg	.L9
	cmpl	$0, -4252(%rbp)
	je	.L13
	cmpl	$1, -4252(%rbp)
	je	.L14
	jmp	.L9
.L13:
	leaq	.LC9(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L15
.L14:
	leaq	.LC10(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L15
.L12:
	leaq	.LC11(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L15
.L11:
	leaq	.LC12(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L15
.L10:
	leaq	.LC13(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L15
.L8:
	leaq	.LC14(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L15
.L9:
	leaq	.LC15(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$92, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L16
.L15:
	movq	-24(%rbp), %rcx
	movq	-4248(%rbp), %rdx
	leaq	.LC17(%rip), %rsi
	leaq	-112(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	datadir(%rip), %rax
	leaq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$98, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L25
	leaq	.LC19(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$102, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L26
	leaq	-4224(%rbp), %rdx
	leaq	-4208(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4096, %edx
	movq	%rax, %rdi
	call	BIO_read_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$105, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$106, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
	movq	-4224(%rbp), %rsi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$4096, %r9d
	movq	%rsi, %r8
	movl	$107, %esi
	movq	%rax, %rdi
	call	test_size_t_lt@PLT
	testl	%eax, %eax
	je	.L27
	leaq	-4216(%rbp), %rdx
	movq	-4264(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$111, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L28
	movl	-32(%rbp), %eax
	cltq
	movq	%rax, -4232(%rbp)
	cmpl	$2, -4252(%rbp)
	je	.L22
	cmpl	$5, -4252(%rbp)
	je	.L22
	movq	-4216(%rbp), %rax
	leaq	-4232(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stripcr
	leaq	-4224(%rbp), %rdx
	leaq	-4208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stripcr
.L22:
	movq	-4224(%rbp), %rsi
	movq	-4232(%rbp), %r8
	movq	-4216(%rbp), %rdi
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC16(%rip), %rax
	pushq	%rsi
	leaq	-4208(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$120, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L29
	movl	$1, -28(%rbp)
	jmp	.L16
.L25:
	nop
	jmp	.L16
.L26:
	nop
	jmp	.L16
.L27:
	nop
	jmp	.L16
.L28:
	nop
	jmp	.L16
.L29:
	nop
.L16:
	leaq	.LC16(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$125, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-4264(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	compare_with_file, .-compare_with_file
	.type	pass_cb, @function
pass_cb:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	pass_cb, .-pass_cb
	.type	pass_cb_error, @function
pass_cb_error:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$-1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	pass_cb_error, .-pass_cb_error
	.section	.rodata
.LC29:
	.string	"membio"
.LC30:
	.string	"pass"
	.align 8
.LC31:
	.string	"PEM_write_bio_PrivateKey(bio_out, pk, EVP_aes_256_cbc(), (unsigned char *)\"pass\", 4, NULL, NULL)"
	.align 8
.LC32:
	.string	"PEM_write_bio_PKCS8PrivateKey(bio_out, pk, EVP_aes_256_cbc(), (const char *)~0, 0, NULL, NULL)"
.LC33:
	.string	""
	.align 8
.LC34:
	.string	"PEM_write_bio_PKCS8PrivateKey(bio_out, pk, EVP_aes_256_cbc(), NULL, 0, NULL, \"\")"
	.align 8
.LC35:
	.string	"PEM_write_bio_PKCS8PrivateKey(bio_out, pk, EVP_aes_256_cbc(), NULL, 0, pass_cb, NULL)"
	.align 8
.LC36:
	.string	"PEM_write_bio_PKCS8PrivateKey(bio_out, pk, EVP_aes_256_cbc(), NULL, 0, pass_cb_error, NULL)"
	.align 8
.LC37:
	.string	"PEM_write_bio_PKCS8PrivateKey_nid( bio_out, pk, NID_pbe_WithSHA1And3_Key_TripleDES_CBC, (const char *)~0, 0, NULL, NULL)"
	.align 8
.LC38:
	.string	"PEM_write_bio_PKCS8PrivateKey_nid( bio_out, pk, NID_pbe_WithSHA1And3_Key_TripleDES_CBC, NULL, 0, NULL, \"\")"
	.align 8
.LC39:
	.string	"PEM_write_bio_PKCS8PrivateKey_nid( bio_out, pk, NID_pbe_WithSHA1And3_Key_TripleDES_CBC, NULL, 0, pass_cb, NULL)"
	.align 8
.LC40:
	.string	"PEM_write_bio_PKCS8PrivateKey_nid( bio_out, pk, NID_pbe_WithSHA1And3_Key_TripleDES_CBC, NULL, 0, pass_cb_error, NULL)"
	.align 8
.LC41:
	.string	"EVP_PKEY_print_private(membio, pk, 0, NULL)"
	.align 8
.LC42:
	.string	"compare_with_file(alg, PRIV_TEXT, membio)"
	.align 8
.LC43:
	.string	"PEM_write_bio_PUBKEY(membio, pk)"
	.align 8
.LC44:
	.string	"compare_with_file(alg, PUB_PEM, membio)"
	.align 8
.LC45:
	.string	"PEM_write_bio_PrivateKey(membio, pk, NULL, NULL, 0, NULL, NULL)"
	.align 8
.LC46:
	.string	"compare_with_file(alg, PRIV_PEM, membio)"
	.align 8
.LC47:
	.string	"PEM_write_bio_PrivateKey(membio, NULL, NULL, NULL, 0, NULL, NULL)"
	.align 8
.LC48:
	.string	"PEM_write_bio_PrivateKey_traditional(membio, NULL, NULL, NULL, 0, NULL, NULL)"
	.text
	.type	test_print_key_using_pem, @function
test_print_key_using_pem:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$146, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L40
	call	EVP_aes_256_cbc@PLT
	movq	%rax, %rdi
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC30(%rip), %rdx
	movq	-32(%rbp), %rsi
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$4, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	PEM_write_bio_PrivateKey@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$150, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	call	EVP_aes_256_cbc@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rsi
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	$-1, %rcx
	movq	%rax, %rdi
	call	PEM_write_bio_PKCS8PrivateKey@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$154, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	call	EVP_aes_256_cbc@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rsi
	subq	$8, %rsp
	leaq	.LC33(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	PEM_write_bio_PKCS8PrivateKey@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$158, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	call	EVP_aes_256_cbc@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	pass_cb(%rip), %rcx
	movq	-32(%rbp), %rsi
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	PEM_write_bio_PKCS8PrivateKey@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$161, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	call	EVP_aes_256_cbc@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	pass_cb_error(%rip), %rcx
	movq	-32(%rbp), %rsi
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	PEM_write_bio_PKCS8PrivateKey@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$164, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L41
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rsi
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	$-1, %rcx
	movl	$146, %edx
	movq	%rax, %rdi
	call	PEM_write_bio_PKCS8PrivateKey_nid@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$169, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rsi
	subq	$8, %rsp
	leaq	.LC33(%rip), %rdx
	pushq	%rdx
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$146, %edx
	movq	%rax, %rdi
	call	PEM_write_bio_PKCS8PrivateKey_nid@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$172, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	pass_cb(%rip), %rdx
	movq	-32(%rbp), %rsi
	subq	$8, %rsp
	pushq	$0
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$146, %edx
	movq	%rax, %rdi
	call	PEM_write_bio_PKCS8PrivateKey_nid@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$175, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	pass_cb_error(%rip), %rdx
	movq	-32(%rbp), %rsi
	subq	$8, %rsp
	pushq	$0
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$146, %edx
	movq	%rax, %rdi
	call	PEM_write_bio_PKCS8PrivateKey_nid@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$178, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L41
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_private@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC41(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$183, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L41
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	compare_with_file
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$184, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_PUBKEY@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC43(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$186, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	compare_with_file
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$187, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PEM_write_bio_PrivateKey@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC45(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$189, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	compare_with_file
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC46(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$191, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_write_bio_PrivateKey@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC47(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$193, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L41
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_write_bio_PrivateKey_traditional@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC48(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$195, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L41
	movl	$1, -4(%rbp)
	jmp	.L36
.L40:
	nop
	jmp	.L36
.L41:
	nop
.L36:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	test_print_key_using_pem, .-test_print_key_using_pem
	.section	.rodata
.LC49:
	.string	"TEXT"
.LC50:
	.string	"PEM"
.LC51:
	.string	"PrivateKeyInfo"
.LC52:
	.string	"DER"
.LC53:
	.string	"SubjectPublicKeyInfo"
.LC54:
	.string	"Invalid encoding type"
	.align 8
.LC55:
	.string	"Setting up a OSSL_ENCODER context with passphrase"
	.align 8
.LC56:
	.string	"ctx = OSSL_ENCODER_CTX_new_for_pkey(pk, selection, output_type, output_structure, NULL)"
	.align 8
.LC57:
	.string	"OSSL_ENCODER_CTX_get_num_encoders(ctx)"
.LC58:
	.string	"Testing with no encryption"
	.align 8
.LC59:
	.string	"OSSL_ENCODER_to_bio(ctx, membio)"
	.align 8
.LC60:
	.string	"compare_with_file(alg, type, membio)"
	.align 8
.LC61:
	.string	"OSSL_ENCODER_CTX_set_passphrase(ctx, (unsigned char *)\"pass\", 4)"
	.align 8
.LC62:
	.string	"Displaying PEM encrypted with AES-256-CBC"
.LC63:
	.string	"AES-256-CBC"
	.align 8
.LC64:
	.string	"OSSL_ENCODER_CTX_set_cipher(ctx, \"AES-256-CBC\", NULL)"
	.align 8
.LC65:
	.string	"OSSL_ENCODER_to_bio(ctx, bio_out)"
	.align 8
.LC66:
	.string	"NOT Displaying PEM encrypted with (invalid) FOO"
.LC67:
	.string	"FOO"
	.align 8
.LC68:
	.string	"OSSL_ENCODER_CTX_set_cipher(ctx, \"FOO\", NULL)"
	.align 8
.LC69:
	.string	"Testing with encryption cleared (no encryption)"
	.align 8
.LC70:
	.string	"OSSL_ENCODER_CTX_set_cipher(ctx, NULL, NULL)"
	.text
	.type	test_print_key_type_using_encoder, @function
test_print_key_type_using_encoder:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -32(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -36(%rbp)
	cmpl	$5, -60(%rbp)
	je	.L43
	cmpl	$5, -60(%rbp)
	jg	.L44
	cmpl	$4, -60(%rbp)
	je	.L45
	cmpl	$4, -60(%rbp)
	jg	.L44
	cmpl	$3, -60(%rbp)
	je	.L46
	cmpl	$3, -60(%rbp)
	jg	.L44
	cmpl	$2, -60(%rbp)
	je	.L47
	cmpl	$2, -60(%rbp)
	jg	.L44
	cmpl	$0, -60(%rbp)
	je	.L48
	cmpl	$1, -60(%rbp)
	je	.L49
	jmp	.L44
.L48:
	leaq	.LC49(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$7, -20(%rbp)
	jmp	.L50
.L49:
	leaq	.LC50(%rip), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC51(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	$7, -20(%rbp)
	jmp	.L50
.L47:
	leaq	.LC52(%rip), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC51(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	$7, -20(%rbp)
	jmp	.L50
.L46:
	leaq	.LC49(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$6, -20(%rbp)
	jmp	.L50
.L45:
	leaq	.LC50(%rip), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC53(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	$6, -20(%rbp)
	jmp	.L50
.L43:
	leaq	.LC52(%rip), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC53(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	$6, -20(%rbp)
	jmp	.L50
.L44:
	leaq	.LC54(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$258, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L51
.L50:
	movq	-48(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$262, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L65
	leaq	.LC55(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	-20(%rbp), %esi
	movq	-72(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC56(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$267, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L66
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_get_num_encoders@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$272, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L66
	leaq	.LC58(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_bio@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC59(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$277, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L67
	movq	-48(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	compare_with_file
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC60(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$278, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L67
	cmpl	$1, -60(%rbp)
	jne	.L57
	leaq	.LC30(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_passphrase@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$283, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L68
	leaq	.LC62(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	leaq	.LC63(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_cipher@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC64(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$290, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L69
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_bio@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC65(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$291, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L69
	leaq	.LC66(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	leaq	.LC67(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_cipher@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC68(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$296, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L70
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_bio@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC65(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$297, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L70
	leaq	.LC69(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_cipher@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$302, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L71
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_bio@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC59(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$303, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L71
	movq	-48(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	compare_with_file
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC60(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$304, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L71
.L57:
	movl	$1, -36(%rbp)
	jmp	.L51
.L65:
	nop
	jmp	.L51
.L66:
	nop
	jmp	.L51
.L67:
	nop
	jmp	.L51
.L68:
	nop
	jmp	.L51
.L69:
	nop
	jmp	.L51
.L70:
	nop
	jmp	.L51
.L71:
	nop
.L51:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movl	-36(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	test_print_key_type_using_encoder, .-test_print_key_type_using_encoder
	.type	test_print_key_using_encoder, @function
test_print_key_using_encoder:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L73
.L76:
	cmpl	$0, -8(%rbp)
	je	.L74
	movq	-32(%rbp), %rdx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	test_print_key_type_using_encoder
	testl	%eax, %eax
	je	.L74
	movl	$1, %eax
	jmp	.L75
.L74:
	movl	$0, %eax
.L75:
	movl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L73:
	cmpl	$5, -4(%rbp)
	jle	.L76
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	test_print_key_using_encoder, .-test_print_key_using_encoder
	.type	test_print_key_using_encoder_public, @function
test_print_key_using_encoder_public:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1, -8(%rbp)
	movl	$3, -4(%rbp)
	jmp	.L79
.L82:
	cmpl	$0, -8(%rbp)
	je	.L80
	movq	-32(%rbp), %rdx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	test_print_key_type_using_encoder
	testl	%eax, %eax
	je	.L80
	movl	$1, %eax
	jmp	.L81
.L80:
	movl	$0, %eax
.L81:
	movl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L79:
	cmpl	$5, -4(%rbp)
	jle	.L82
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	test_print_key_using_encoder_public, .-test_print_key_using_encoder_public
	.section	.rodata
.LC72:
	.string	"RSA"
	.align 8
.LC73:
	.string	"ctx = EVP_PKEY_CTX_new_from_name(NULL, \"RSA\", NULL)"
.LC74:
	.string	"1"
.LC75:
	.string	"EVP_PKEY_fromdata_init(ctx)"
	.align 8
.LC76:
	.string	"EVP_PKEY_fromdata(ctx, &pk, EVP_PKEY_KEYPAIR, fromdata_params)"
.LC77:
	.string	"32"
.LC78:
	.string	"EVP_PKEY_get_bits(pk)"
.LC79:
	.string	"8"
	.align 8
.LC80:
	.string	"EVP_PKEY_get_security_bits(pk)"
.LC81:
	.string	"4"
.LC82:
	.string	"EVP_PKEY_get_size(pk)"
	.align 8
.LC83:
	.string	"EVP_PKEY_missing_parameters(pk)"
	.align 8
.LC84:
	.string	"key_ctx = EVP_PKEY_CTX_new_from_pkey(NULL, pk, \"\")"
.LC85:
	.string	"EVP_PKEY_check(key_ctx)"
	.align 8
.LC86:
	.string	"EVP_PKEY_public_check(key_ctx)"
	.align 8
.LC87:
	.string	"EVP_PKEY_private_check(key_ctx)"
	.align 8
.LC88:
	.string	"EVP_PKEY_pairwise_check(key_ctx)"
.LC89:
	.string	"copy_pk = EVP_PKEY_new()"
	.align 8
.LC90:
	.string	"EVP_PKEY_copy_parameters(copy_pk, pk)"
.LC91:
	.string	"dup_pk = EVP_PKEY_dup(pk)"
.LC92:
	.string	"EVP_PKEY_eq(pk, dup_pk)"
	.align 8
.LC93:
	.string	"BN_set_word(bn_from, key_numbers[i])"
	.align 8
.LC94:
	.string	"EVP_PKEY_get_bn_param(pk, fromdata_params[i].key, &bn)"
.LC95:
	.string	"bn_from"
.LC96:
	.string	"bn"
.LC0:
	.string	"n"
.LC1:
	.string	"e"
.LC2:
	.string	"d"
.LC3:
	.string	"rsa-factor1"
.LC4:
	.string	"rsa-factor2"
.LC5:
	.string	"rsa-exponent1"
.LC6:
	.string	"rsa-exponent2"
.LC7:
	.string	"rsa-coefficient1"
	.data
	.align 32
.LC71:
	.quad	.LC0
	.long	2
	.zero	4
	.quad	key_numbers.0
	.quad	8
	.quad	-1
	.quad	.LC1
	.long	2
	.zero	4
	.quad	key_numbers.0+8
	.quad	8
	.quad	-1
	.quad	.LC2
	.long	2
	.zero	4
	.quad	key_numbers.0+16
	.quad	8
	.quad	-1
	.quad	.LC3
	.long	2
	.zero	4
	.quad	key_numbers.0+24
	.quad	8
	.quad	-1
	.quad	.LC4
	.long	2
	.zero	4
	.quad	key_numbers.0+32
	.quad	8
	.quad	-1
	.quad	.LC5
	.long	2
	.zero	4
	.quad	key_numbers.0+40
	.quad	8
	.quad	-1
	.quad	.LC6
	.long	2
	.zero	4
	.quad	key_numbers.0+48
	.quad	8
	.quad	-1
	.quad	.LC7
	.long	2
	.zero	4
	.quad	key_numbers.0+56
	.quad	8
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	test_fromdata_rsa, @function
test_fromdata_rsa:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$432, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	leaq	-416(%rbp), %rax
	leaq	.LC71(%rip), %rdx
	movl	$45, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
	call	BN_new@PLT
	movq	%rax, -424(%rbp)
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	leaq	.LC72(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC73(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$384, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L107
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$387, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L108
	leaq	-416(%rbp), %rdx
	leaq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$135, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC76(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$388, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L108
.L88:
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_bits@PLT
	movl	%eax, %esi
	leaq	.LC77(%rip), %rcx
	leaq	.LC78(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$32, %r9d
	movl	%esi, %r8d
	movl	$394, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L109
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_security_bits@PLT
	movl	%eax, %esi
	leaq	.LC79(%rip), %rcx
	leaq	.LC80(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$8, %r9d
	movl	%esi, %r8d
	movl	$395, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L109
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	movl	%eax, %esi
	leaq	.LC81(%rip), %rcx
	leaq	.LC82(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$4, %r9d
	movl	%esi, %r8d
	movl	$396, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L109
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_missing_parameters@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC83(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$397, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L109
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-56(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC84(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$401, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L110
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC85(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$404, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L111
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_public_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC86(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$405, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L111
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_private_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC87(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$406, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L111
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_pairwise_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$407, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L111
	call	EVP_PKEY_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC89(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$411, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L112
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_copy_parameters@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC90(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$412, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L112
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC72(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_print_key_using_pem
	testl	%eax, %eax
	je	.L96
	movq	-56(%rbp), %rax
	leaq	.LC72(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_print_key_using_encoder
	testl	%eax, %eax
	je	.L96
	movl	$1, %eax
	jmp	.L97
.L96:
	movl	$0, %eax
.L97:
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L113
	cmpq	$0, -32(%rbp)
	jne	.L113
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_dup@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC91(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$423, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L114
	cmpl	$0, -4(%rbp)
	je	.L99
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC92(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$425, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L99
	movl	$1, %eax
	jmp	.L100
.L99:
	movl	$0, %eax
.L100:
	movl	%eax, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L115
	jmp	.L88
.L107:
	nop
	jmp	.L86
.L108:
	nop
	jmp	.L86
.L109:
	nop
	jmp	.L86
.L110:
	nop
	jmp	.L86
.L111:
	nop
	jmp	.L86
.L112:
	nop
	jmp	.L86
.L113:
	nop
	jmp	.L86
.L114:
	nop
	jmp	.L86
.L115:
	nop
.L86:
	movl	$0, -8(%rbp)
	jmp	.L102
.L105:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	key_numbers.0(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$434, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L103
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$416, %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	leaq	-424(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC94(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$435, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L103
	movq	-424(%rbp), %rsi
	movq	-48(%rbp), %rdi
	leaq	.LC95(%rip), %rcx
	leaq	.LC96(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$437, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	jne	.L104
.L103:
	movl	$0, -4(%rbp)
.L104:
	addl	$1, -8(%rbp)
.L102:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$416, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L105
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-424(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	test_fromdata_rsa, .-test_fromdata_rsa
	.section	.rodata
	.align 8
.LC97:
	.string	"EVP_PKEY_todata(pk, EVP_PKEY_KEYPAIR, &todata_params)"
	.align 8
.LC98:
	.string	"check_param = OSSL_PARAM_locate_const(todata_params, check[i].pname)"
	.align 8
.LC99:
	.string	"OSSL_PARAM_get_BN(check_param, &check_bn)"
.LC100:
	.string	"check[i].comparebn"
.LC101:
	.string	"check_bn"
	.align 8
.LC102:
	.string	"Data mismatch for parameter %s"
.LC103:
	.string	"expected_nbits"
.LC104:
	.string	"expected_sbits"
.LC105:
	.string	"expected_ksize"
	.text
	.type	do_fromdata_rsa_derive, @function
do_fromdata_rsa_derive:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movl	%ecx, -104(%rbp)
	movl	%r8d, -108(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -24(%rbp)
	leaq	.LC72(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC73(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$468, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L140
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$469, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L140
	movq	-88(%rbp), %rdx
	leaq	-72(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$135, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC76(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$470, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L140
	movq	-72(%rbp), %rax
	leaq	-64(%rbp), %rdx
	movl	$135, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_todata@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC97(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$478, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L141
	movl	$0, -20(%rbp)
	jmp	.L121
.L125:
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC98(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$482, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L142
	leaq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC99(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$485, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L143
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC100(%rip), %rcx
	leaq	.LC101(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$487, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	jne	.L124
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC102(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$488, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L119
.L124:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -56(%rbp)
	addl	$1, -20(%rbp)
.L121:
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L125
.L137:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_bits@PLT
	movl	%eax, %esi
	movl	-100(%rbp), %edi
	leaq	.LC103(%rip), %rcx
	leaq	.LC78(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$496, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L144
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_security_bits@PLT
	movl	%eax, %esi
	movl	-104(%rbp), %edi
	leaq	.LC104(%rip), %rcx
	leaq	.LC80(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$497, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L144
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	movl	%eax, %esi
	movl	-108(%rbp), %edi
	leaq	.LC105(%rip), %rcx
	leaq	.LC82(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$498, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L144
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_missing_parameters@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC83(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$499, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L144
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-72(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC84(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$503, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L145
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC85(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$506, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L146
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_public_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC86(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$507, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L146
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_private_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC87(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$508, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L146
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_pairwise_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$509, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L146
	call	EVP_PKEY_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC89(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$513, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L147
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_copy_parameters@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC90(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$514, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L147
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -48(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L148
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_dup@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC91(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$522, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L149
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC92(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$524, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L136
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	jmp	.L119
.L136:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.L137
.L148:
	nop
	movl	$1, -24(%rbp)
	jmp	.L119
.L140:
	nop
	jmp	.L119
.L141:
	nop
	jmp	.L119
.L142:
	nop
	jmp	.L119
.L143:
	nop
	jmp	.L119
.L144:
	nop
	jmp	.L119
.L145:
	nop
	jmp	.L119
.L146:
	nop
	jmp	.L119
.L147:
	nop
	jmp	.L119
.L149:
	nop
.L119:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movl	-24(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	do_fromdata_rsa_derive, .-do_fromdata_rsa_derive
	.section	.rodata
.LC106:
	.string	"bld = OSSL_PARAM_BLD_new()"
	.align 8
.LC107:
	.string	"n = BN_bin2bn(n_data, sizeof(n_data), NULL)"
	.align 8
.LC108:
	.string	"e = BN_bin2bn(e_data, sizeof(e_data), NULL)"
	.align 8
.LC109:
	.string	"d = BN_bin2bn(d_data, sizeof(d_data), NULL)"
	.align 8
.LC110:
	.string	"p = BN_bin2bn(p_data, sizeof(p_data), NULL)"
	.align 8
.LC111:
	.string	"q = BN_bin2bn(q_data, sizeof(q_data), NULL)"
	.align 8
.LC112:
	.string	"dmp1 = BN_bin2bn(dmp1_data, sizeof(dmp1_data), NULL)"
	.align 8
.LC113:
	.string	"dmq1 = BN_bin2bn(dmq1_data, sizeof(dmq1_data), NULL)"
	.align 8
.LC114:
	.string	"iqmp = BN_bin2bn(iqmp_data, sizeof(iqmp_data), NULL)"
	.align 8
.LC115:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_RSA_N, n)"
	.align 8
.LC116:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_RSA_E, e)"
	.align 8
.LC117:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_RSA_D, d)"
	.align 8
.LC118:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_RSA_FACTOR1, p)"
	.align 8
.LC119:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_RSA_FACTOR2, q)"
.LC120:
	.string	"rsa-derive-from-pq"
	.align 8
.LC121:
	.string	"OSSL_PARAM_BLD_push_int(bld, OSSL_PKEY_PARAM_RSA_DERIVE_FROM_PQ, 1)"
	.align 8
.LC122:
	.string	"fromdata_params = OSSL_PARAM_BLD_to_param(bld)"
	.text
	.type	test_fromdata_rsa_derive_from_pq_sp800, @function
test_fromdata_rsa_derive_from_pq_sp800:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	$0, -80(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -68(%rbp)
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC106(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$593, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L155
	leaq	n_data.40(%rip), %rax
	movl	$0, %edx
	movl	$65, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC107(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$594, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L155
	leaq	e_data.39(%rip), %rax
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC108(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$595, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L155
	leaq	d_data.38(%rip), %rax
	movl	$0, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC109(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$596, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L155
	leaq	p_data.37(%rip), %rax
	movl	$0, %edx
	movl	$33, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC110(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$597, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L155
	leaq	q_data.36(%rip), %rax
	movl	$0, %edx
	movl	$33, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC111(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$598, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L155
	leaq	dmp1_data.35(%rip), %rax
	movl	$0, %edx
	movl	$33, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC112(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$599, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L155
	leaq	dmq1_data.34(%rip), %rax
	movl	$0, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC113(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$600, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L155
	leaq	iqmp_data.33(%rip), %rax
	movl	$0, %edx
	movl	$33, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC114(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$601, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L155
	movq	-8(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC115(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$602, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L155
	movq	-16(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC116(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$603, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L155
	movq	-24(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC117(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$604, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L155
	movq	-32(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC118(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$605, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L155
	movq	-40(%rbp), %rdx
	leaq	.LC4(%rip), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC119(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$607, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L155
	leaq	.LC120(%rip), %rcx
	movq	-80(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_int@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC121(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$609, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L155
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC122(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$611, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L155
	leaq	.LC5(%rip), %rax
	movq	%rax, -160(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -144(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	leaq	-160(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$64, %r8d
	movl	$56, %ecx
	movl	$512, %edx
	movq	%rax, %rdi
	call	do_fromdata_rsa_derive
	movl	%eax, -68(%rbp)
	jmp	.L153
.L155:
	nop
.L153:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movl	-68(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	test_fromdata_rsa_derive_from_pq_sp800, .-test_fromdata_rsa_derive_from_pq_sp800
	.section	.rodata
	.align 8
.LC123:
	.string	"p2 = BN_bin2bn(p2_data, sizeof(p2_data), NULL)"
	.align 8
.LC124:
	.string	"exp3 = BN_bin2bn(exp3_data, sizeof(exp3_data), NULL)"
	.align 8
.LC125:
	.string	"coeff2 = BN_bin2bn(coeff2_data, sizeof(coeff2_data), NULL)"
.LC126:
	.string	"rsa-factor3"
	.align 8
.LC127:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_RSA_FACTOR3, p2)"
.LC128:
	.string	"rsa-exponent3"
.LC129:
	.string	"rsa-coefficient2"
	.text
	.type	test_fromdata_rsa_derive_from_pq_multiprime, @function
test_fromdata_rsa_derive_from_pq_multiprime:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	$0, -104(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -112(%rbp)
	movl	$0, -92(%rbp)
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	leaq	.LC106(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$775, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L161
	leaq	n_data.32(%rip), %rax
	movl	$0, %edx
	movl	$257, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC107(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$776, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L161
	leaq	e_data.31(%rip), %rax
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC108(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$777, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L161
	leaq	d_data.30(%rip), %rax
	movl	$0, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC109(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$778, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L161
	leaq	p_data.29(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC110(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$779, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L161
	leaq	q_data.28(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC111(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$780, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L161
	leaq	p2_data.27(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC123(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$781, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L161
	leaq	exp3_data.26(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC124(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$782, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L161
	leaq	coeff2_data.25(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC125(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$783, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L161
	leaq	dmp1_data.24(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC112(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$784, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L161
	leaq	dmq1_data.23(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC113(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$785, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L161
	leaq	iqmp_data.22(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC114(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$786, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L161
	movq	-8(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC115(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$787, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L161
	movq	-16(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC116(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$788, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L161
	movq	-24(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC117(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$789, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L161
	movq	-32(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC118(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$790, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L161
	movq	-40(%rbp), %rdx
	leaq	.LC4(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC119(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$792, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L161
	movq	-48(%rbp), %rdx
	leaq	.LC126(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC127(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$794, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L161
	leaq	.LC120(%rip), %rcx
	movq	-104(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_int@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC121(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$796, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L161
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC122(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$798, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L161
	leaq	.LC5(%rip), %rax
	movq	%rax, -304(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -296(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -288(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -280(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -272(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)
	leaq	.LC128(%rip), %rax
	movq	%rax, -256(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -248(%rbp)
	leaq	.LC129(%rip), %rax
	movq	%rax, -240(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -232(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -224(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -216(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -208(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -192(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -176(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -160(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	.LC126(%rip), %rax
	movq	%rax, -144(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	leaq	-304(%rbp), %rsi
	movq	-112(%rbp), %rax
	movl	$256, %r8d
	movl	$112, %ecx
	movl	$2048, %edx
	movq	%rax, %rdi
	call	do_fromdata_rsa_derive
	movl	%eax, -92(%rbp)
	jmp	.L159
.L161:
	nop
.L159:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movl	-92(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	test_fromdata_rsa_derive_from_pq_multiprime, .-test_fromdata_rsa_derive_from_pq_multiprime
	.section	.rodata
	.align 8
.LC130:
	.string	"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_RSA_N, &n_out)"
.LC131:
	.string	"n_out"
	.text
	.type	test_evp_pkey_get_bn_param_large, @function
test_evp_pkey_get_bn_param_large:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -80(%rbp)
	leaq	n_data.21(%rip), %rax
	movl	$2050, %edx
	movl	$206, %esi
	movq	%rax, %rdi
	call	memset@PLT
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC106(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$867, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L167
	leaq	n_data.21(%rip), %rax
	movl	$0, %edx
	movl	$2050, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC107(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$868, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L167
	leaq	e_data.20(%rip), %rax
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC108(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$869, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L167
	leaq	d_data.19(%rip), %rax
	movl	$0, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC109(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$870, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L167
	movq	-40(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC115(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$871, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L167
	movq	-48(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC116(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$872, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L167
	movq	-56(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC117(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$873, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L167
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC122(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$874, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L167
	leaq	.LC72(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC73(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$875, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L167
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$876, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L167
	movq	-32(%rbp), %rdx
	leaq	-72(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$135, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC76(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$877, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L167
	movq	-72(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC84(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$879, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L167
	movq	-72(%rbp), %rax
	leaq	-80(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC130(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$880, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L167
	movq	-80(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC131(%rip), %rcx
	leaq	.LC0(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$881, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L167
	movl	$1, -4(%rbp)
	jmp	.L165
.L167:
	nop
.L165:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	test_evp_pkey_get_bn_param_large, .-test_evp_pkey_get_bn_param_large
	.section	.rodata
	.align 8
.LC132:
	.string	"pub = BN_bin2bn(pub_data, sizeof(pub_data), NULL)"
	.align 8
.LC133:
	.string	"priv = BN_bin2bn(priv_data, sizeof(priv_data), NULL)"
.LC134:
	.string	"group"
	.align 8
.LC135:
	.string	"OSSL_PARAM_BLD_push_utf8_string(bld, OSSL_PKEY_PARAM_GROUP_NAME, group_name, 0)"
.LC136:
	.string	"priv_len"
	.align 8
.LC137:
	.string	"OSSL_PARAM_BLD_push_long(bld, OSSL_PKEY_PARAM_DH_PRIV_LEN, priv_len)"
.LC138:
	.string	"pub"
	.align 8
.LC139:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_PUB_KEY, pub)"
.LC140:
	.string	"priv"
	.align 8
.LC141:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_PRIV_KEY, priv)"
.LC142:
	.string	"DH"
	.align 8
.LC143:
	.string	"ctx = EVP_PKEY_CTX_new_from_name(NULL, \"DH\", NULL)"
	.align 8
.LC144:
	.string	"EVP_PKEY_get_utf8_string_param(pk, OSSL_PKEY_PARAM_GROUP_NAME, NULL, sizeof(name_out), &len)"
.LC145:
	.string	"sizeof(group_name) - 1"
	.align 8
.LC146:
	.string	"EVP_PKEY_get_utf8_string_param(pk, OSSL_PKEY_PARAM_GROUP_NAME, name_out, sizeof(group_name), &len)"
	.align 8
.LC147:
	.string	"EVP_PKEY_get_utf8_string_param(pk, OSSL_PKEY_PARAM_GROUP_NAME, name_out, sizeof(group_name) - 1, &len)"
	.align 8
.LC148:
	.string	"EVP_PKEY_get_utf8_string_param(pk, OSSL_PKEY_PARAM_GROUP_NAME, name_out, sizeof(group_name) - 2, &len)"
.LC149:
	.string	"2048"
.LC150:
	.string	"112"
.LC151:
	.string	"256"
	.align 8
.LC152:
	.string	"EVP_PKEY_get_utf8_string_param(pk, OSSL_PKEY_PARAM_GROUP_NAME, name_out, sizeof(name_out), &len)"
.LC153:
	.string	"group_name"
.LC154:
	.string	"name_out"
	.align 8
.LC155:
	.string	"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_PUB_KEY, &pub_out)"
.LC156:
	.string	"pub_out"
	.align 8
.LC157:
	.string	"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_PRIV_KEY, &priv_out)"
.LC158:
	.string	"priv_out"
.LC159:
	.string	"p"
	.align 8
.LC160:
	.string	"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_FFC_P, &p)"
.LC161:
	.string	"&ossl_bignum_ffdhe2048_p"
.LC162:
	.string	"q"
	.align 8
.LC163:
	.string	"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_FFC_Q, &q)"
.LC164:
	.string	"g"
	.align 8
.LC165:
	.string	"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_FFC_G, &g)"
.LC166:
	.string	"&ossl_bignum_const_2"
.LC167:
	.string	"j"
	.align 8
.LC168:
	.string	"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_FFC_COFACTOR, &j)"
.LC169:
	.string	"seed"
	.align 8
.LC170:
	.string	"EVP_PKEY_get_octet_string_param(pk, OSSL_PKEY_PARAM_FFC_SEED, seed_out, sizeof(seed_out), &len)"
.LC171:
	.string	"gindex"
	.align 8
.LC172:
	.string	"EVP_PKEY_get_int_param(pk, OSSL_PKEY_PARAM_FFC_GINDEX, &gindex)"
.LC173:
	.string	"-1"
.LC174:
	.string	"hindex"
	.align 8
.LC175:
	.string	"EVP_PKEY_get_int_param(pk, OSSL_PKEY_PARAM_FFC_H, &hindex)"
.LC176:
	.string	"pcounter"
	.align 8
.LC177:
	.string	"EVP_PKEY_get_int_param(pk, OSSL_PKEY_PARAM_FFC_PCOUNTER, &pcounter)"
	.text
	.type	test_fromdata_dh_named_group, @function
test_fromdata_dh_named_group:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC106(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$951, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L193
	leaq	pub_data.18(%rip), %rax
	movl	$0, %edx
	movl	$257, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC132(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$952, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L193
	leaq	priv_data.17(%rip), %rax
	movl	$0, %edx
	movl	$28, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC133(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$953, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L193
	leaq	group_name.16(%rip), %rdx
	leaq	.LC134(%rip), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC135(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$954, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L193
	movq	priv_len.15(%rip), %rdx
	leaq	.LC136(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_long@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC137(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$957, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L193
	movq	-48(%rbp), %rdx
	leaq	.LC138(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC139(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$959, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L193
	movq	-56(%rbp), %rdx
	leaq	.LC140(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC141(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$960, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L193
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC122(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$961, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L193
	leaq	.LC142(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC143(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$964, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L194
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$967, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L195
	movq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$135, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC76(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$968, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L195
	movq	-96(%rbp), %rax
	leaq	-104(%rbp), %rdx
	leaq	.LC134(%rip), %rsi
	movq	%rdx, %r8
	movl	$80, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_get_utf8_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC144(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$977, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L196
	movq	-104(%rbp), %rsi
	leaq	.LC145(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$9, %r9d
	movq	%rsi, %r8
	movl	$981, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L196
	movq	-96(%rbp), %rax
	leaq	-104(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	.LC134(%rip), %rsi
	movq	%rcx, %r8
	movl	$10, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_utf8_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC146(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$983, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L196
	movq	-104(%rbp), %rsi
	leaq	.LC145(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$9, %r9d
	movq	%rsi, %r8
	movl	$988, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L196
	movq	-96(%rbp), %rax
	leaq	-104(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	.LC134(%rip), %rsi
	movq	%rcx, %r8
	movl	$9, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_utf8_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC147(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$990, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L196
	movq	-96(%rbp), %rax
	leaq	-104(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	.LC134(%rip), %rsi
	movq	%rcx, %r8
	movl	$8, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_utf8_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC148(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$996, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L196
.L176:
	movl	$0, -4(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_bits@PLT
	movl	%eax, %esi
	leaq	.LC149(%rip), %rcx
	leaq	.LC78(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$2048, %r9d
	movl	%esi, %r8d
	movl	$1005, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L197
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_security_bits@PLT
	movl	%eax, %esi
	leaq	.LC150(%rip), %rcx
	leaq	.LC80(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$112, %r9d
	movl	%esi, %r8d
	movl	$1006, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L197
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	movl	%eax, %esi
	leaq	.LC151(%rip), %rcx
	leaq	.LC82(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$256, %r9d
	movl	%esi, %r8d
	movl	$1007, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L197
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_missing_parameters@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC83(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1008, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L197
	movq	-96(%rbp), %rax
	leaq	-104(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	.LC134(%rip), %rsi
	movq	%rcx, %r8
	movl	$80, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_utf8_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC152(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1011, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L198
	leaq	group_name.16(%rip), %rdi
	leaq	-240(%rbp), %rsi
	leaq	.LC153(%rip), %rcx
	leaq	.LC154(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1016, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L198
	movq	-96(%rbp), %rax
	leaq	-112(%rbp), %rdx
	leaq	.LC138(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC155(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1017, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L198
	movq	-112(%rbp), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC156(%rip), %rcx
	leaq	.LC138(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1020, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L198
	movq	-96(%rbp), %rax
	leaq	-120(%rbp), %rdx
	leaq	.LC140(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC157(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1021, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L198
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC158(%rip), %rcx
	leaq	.LC140(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1023, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L198
	movq	-96(%rbp), %rax
	leaq	-128(%rbp), %rdx
	leaq	.LC159(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC160(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1024, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L198
	movq	-128(%rbp), %rsi
	movq	ossl_bignum_ffdhe2048_p@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	leaq	.LC159(%rip), %rcx
	leaq	.LC161(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$1025, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L198
	movq	-96(%rbp), %rax
	leaq	-136(%rbp), %rdx
	leaq	.LC162(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC163(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1026, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L198
	movq	-136(%rbp), %rax
	leaq	.LC162(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1027, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L198
	movq	-96(%rbp), %rax
	leaq	-144(%rbp), %rdx
	leaq	.LC164(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC165(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1028, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L198
	movq	-144(%rbp), %rsi
	movq	ossl_bignum_const_2@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	leaq	.LC164(%rip), %rcx
	leaq	.LC166(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$1029, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L198
	movq	-96(%rbp), %rax
	leaq	-152(%rbp), %rdx
	leaq	.LC167(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC168(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1030, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L198
	movq	-152(%rbp), %rax
	leaq	.LC167(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1033, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L198
	movq	-96(%rbp), %rax
	leaq	-104(%rbp), %rcx
	leaq	-272(%rbp), %rdx
	leaq	.LC169(%rip), %rsi
	movq	%rcx, %r8
	movl	$32, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC170(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1034, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L198
	movq	-96(%rbp), %rax
	leaq	-76(%rbp), %rdx
	leaq	.LC171(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC172(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1039, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L198
	movl	-76(%rbp), %esi
	leaq	.LC173(%rip), %rcx
	leaq	.LC171(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$1041, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L198
	movq	-96(%rbp), %rax
	leaq	-84(%rbp), %rdx
	leaq	.LC174(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1042, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L198
	movl	-84(%rbp), %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC174(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1044, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L198
	movq	-96(%rbp), %rax
	leaq	-80(%rbp), %rdx
	leaq	.LC176(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC177(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1045, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L198
	movl	-80(%rbp), %esi
	leaq	.LC173(%rip), %rcx
	leaq	.LC176(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$1048, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L198
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -128(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -136(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -152(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -112(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -120(%rbp)
	movq	-96(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC84(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1063, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L199
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC85(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1066, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L200
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_public_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC86(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1067, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L200
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_private_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC87(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1068, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L200
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_pairwise_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1069, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L200
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -24(%rbp)
	call	EVP_PKEY_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC89(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1074, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L201
	movq	-96(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_copy_parameters@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC90(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1075, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L201
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -32(%rbp)
	movq	-96(%rbp), %rax
	leaq	.LC142(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_print_key_using_pem
	testl	%eax, %eax
	je	.L186
	movq	-96(%rbp), %rax
	leaq	.LC142(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_print_key_using_encoder
	testl	%eax, %eax
	je	.L186
	movl	$1, %eax
	jmp	.L187
.L186:
	movl	$0, %eax
.L187:
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L202
	cmpq	$0, -40(%rbp)
	jne	.L202
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_dup@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC91(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1086, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L203
	cmpl	$0, -4(%rbp)
	je	.L189
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC92(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1088, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L189
	movl	$1, %eax
	jmp	.L190
.L189:
	movl	$0, %eax
.L190:
	movl	%eax, -4(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L204
	jmp	.L176
.L193:
	nop
	jmp	.L171
.L194:
	nop
	jmp	.L171
.L195:
	nop
	jmp	.L171
.L196:
	nop
	jmp	.L171
.L197:
	nop
	jmp	.L171
.L198:
	nop
	jmp	.L171
.L199:
	nop
	jmp	.L171
.L200:
	nop
	jmp	.L171
.L201:
	nop
	jmp	.L171
.L202:
	nop
	jmp	.L171
.L203:
	nop
	jmp	.L171
.L204:
	nop
.L171:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	test_fromdata_dh_named_group, .-test_fromdata_dh_named_group
	.type	test_fromdata_dh_fips186_4, @function
test_fromdata_dh_fips186_4:
.LFB537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC106(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1166, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L226
	leaq	pub_data.14(%rip), %rax
	movl	$0, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC132(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1167, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L226
	leaq	priv_data.13(%rip), %rax
	movl	$0, %edx
	movl	$28, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC133(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1168, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L226
	leaq	group_name.12(%rip), %rdx
	leaq	.LC134(%rip), %rsi
	movq	-64(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC135(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1169, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L226
	movq	priv_len.11(%rip), %rdx
	leaq	.LC136(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_long@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC137(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1172, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L226
	movq	-40(%rbp), %rdx
	leaq	.LC138(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC139(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1174, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L226
	movq	-48(%rbp), %rdx
	leaq	.LC140(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC141(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1175, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L226
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC122(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1176, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L226
	leaq	.LC142(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC143(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1179, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L227
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1182, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L228
	movq	-56(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$135, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC76(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1183, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L228
.L211:
	movl	$0, -4(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_bits@PLT
	movl	%eax, %esi
	leaq	.LC149(%rip), %rcx
	leaq	.LC78(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$2048, %r9d
	movl	%esi, %r8d
	movl	$1189, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L229
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_security_bits@PLT
	movl	%eax, %esi
	leaq	.LC150(%rip), %rcx
	leaq	.LC80(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$112, %r9d
	movl	%esi, %r8d
	movl	$1190, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L229
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	movl	%eax, %esi
	leaq	.LC151(%rip), %rcx
	leaq	.LC82(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$256, %r9d
	movl	%esi, %r8d
	movl	$1191, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L229
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_missing_parameters@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC83(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1192, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L229
	movq	-88(%rbp), %rax
	leaq	-96(%rbp), %rcx
	leaq	-224(%rbp), %rdx
	leaq	.LC134(%rip), %rsi
	movq	%rcx, %r8
	movl	$80, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_utf8_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC152(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1195, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L230
	leaq	group_name.12(%rip), %rdi
	leaq	-224(%rbp), %rsi
	leaq	.LC153(%rip), %rcx
	leaq	.LC154(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1200, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L230
	movq	-88(%rbp), %rax
	leaq	-104(%rbp), %rdx
	leaq	.LC138(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC155(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1201, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L230
	movq	-104(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC156(%rip), %rcx
	leaq	.LC138(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1203, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L230
	movq	-88(%rbp), %rax
	leaq	-112(%rbp), %rdx
	leaq	.LC140(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC157(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1204, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L230
	movq	-112(%rbp), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC158(%rip), %rcx
	leaq	.LC140(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1206, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L230
	movq	-88(%rbp), %rax
	leaq	-120(%rbp), %rdx
	leaq	.LC159(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC160(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1207, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L230
	movq	-120(%rbp), %rsi
	movq	ossl_bignum_ffdhe2048_p@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	leaq	.LC159(%rip), %rcx
	leaq	.LC161(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$1208, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L230
	movq	-88(%rbp), %rax
	leaq	-128(%rbp), %rdx
	leaq	.LC162(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC163(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1209, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L230
	movq	-128(%rbp), %rax
	leaq	.LC162(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1210, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L230
	movq	-88(%rbp), %rax
	leaq	-136(%rbp), %rdx
	leaq	.LC164(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC165(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1211, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L230
	movq	-136(%rbp), %rsi
	movq	ossl_bignum_const_2@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	leaq	.LC164(%rip), %rcx
	leaq	.LC166(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$1212, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L230
	movq	-88(%rbp), %rax
	leaq	-144(%rbp), %rdx
	leaq	.LC167(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC168(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1213, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L230
	movq	-144(%rbp), %rax
	leaq	.LC167(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1216, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L230
	movq	-88(%rbp), %rax
	leaq	-96(%rbp), %rcx
	leaq	-256(%rbp), %rdx
	leaq	.LC169(%rip), %rsi
	movq	%rcx, %r8
	movl	$32, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC170(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1217, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L230
	movq	-88(%rbp), %rax
	leaq	-68(%rbp), %rdx
	leaq	.LC171(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC172(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1222, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L230
	movl	-68(%rbp), %esi
	leaq	.LC173(%rip), %rcx
	leaq	.LC171(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$1225, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L230
	movq	-88(%rbp), %rax
	leaq	-76(%rbp), %rdx
	leaq	.LC174(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1226, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L230
	movl	-76(%rbp), %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC174(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1228, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L230
	movq	-88(%rbp), %rax
	leaq	-72(%rbp), %rdx
	leaq	.LC176(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC177(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1229, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L230
	movl	-72(%rbp), %esi
	leaq	.LC173(%rip), %rcx
	leaq	.LC176(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$1232, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L230
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -120(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -128(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -136(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -144(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -104(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -112(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC84(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1247, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L231
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC85(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1250, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L232
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_public_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC86(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1251, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L232
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_private_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC87(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1252, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L232
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_pairwise_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1253, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L232
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -24(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC142(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_print_key_using_pem
	testl	%eax, %eax
	je	.L219
	movq	-88(%rbp), %rax
	leaq	.LC142(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_print_key_using_encoder
	testl	%eax, %eax
	je	.L219
	movl	$1, %eax
	jmp	.L220
.L219:
	movl	$0, %eax
.L220:
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L233
	cmpq	$0, -32(%rbp)
	jne	.L233
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_dup@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC91(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1264, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L234
	cmpl	$0, -4(%rbp)
	je	.L222
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC92(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1266, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L222
	movl	$1, %eax
	jmp	.L223
.L222:
	movl	$0, %eax
.L223:
	movl	%eax, -4(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L235
	jmp	.L211
.L226:
	nop
	jmp	.L208
.L227:
	nop
	jmp	.L208
.L228:
	nop
	jmp	.L208
.L229:
	nop
	jmp	.L208
.L230:
	nop
	jmp	.L208
.L231:
	nop
	jmp	.L208
.L232:
	nop
	jmp	.L208
.L233:
	nop
	jmp	.L208
.L234:
	nop
	jmp	.L208
.L235:
	nop
.L208:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	test_fromdata_dh_fips186_4, .-test_fromdata_dh_fips186_4
	.section	.rodata
.LC178:
	.string	"X25519"
.LC179:
	.string	"X448"
.LC180:
	.string	"ED25519"
.LC181:
	.string	"ED448"
.LC182:
	.string	"ctx"
.LC183:
	.string	"bits"
.LC184:
	.string	"security_bits"
.LC185:
	.string	"size"
	.align 8
.LC186:
	.string	"ctx2 = EVP_PKEY_CTX_new_from_pkey(NULL, pk, NULL)"
.LC187:
	.string	"EVP_PKEY_check(ctx2)"
	.align 8
.LC188:
	.string	"EVP_PKEY_get_octet_string_param( pk, orig_fromdata_params[PRIV_KEY].key, out_priv, sizeof(out_priv), &len)"
	.align 8
.LC189:
	.string	"orig_fromdata_params[PRIV_KEY].data"
.LC190:
	.string	"out_priv"
	.align 8
.LC191:
	.string	"EVP_PKEY_get_octet_string_param( pk, orig_fromdata_params[PUB_KEY].key, out_pub, sizeof(out_pub), &len)"
	.align 8
.LC192:
	.string	"orig_fromdata_params[PUB_KEY].data"
.LC193:
	.string	"out_pub"
.LC194:
	.string	"EVP_PKEY_public_check(ctx2)"
.LC195:
	.string	"EVP_PKEY_private_check(ctx2)"
	.align 8
.LC196:
	.string	"ctx2 = EVP_PKEY_CTX_new_from_pkey(NULL, copy_pk, NULL)"
	.text
	.type	test_fromdata_ecx, @function
test_fromdata_ecx:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$888, %rsp
	.cfi_offset 3, -24
	movl	%edi, -884(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	leaq	-368(%rbp), %rdx
	movl	$0, %eax
	movl	$15, %ecx
	movq	%rdx, %rdi
	rep stosq
	leaq	.LC140(%rip), %rax
	movq	%rax, -496(%rbp)
	movl	$5, -488(%rbp)
	leaq	key_numbers.10(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$32, -472(%rbp)
	movq	$-1, -464(%rbp)
	leaq	.LC138(%rip), %rax
	movq	%rax, -456(%rbp)
	movl	$5, -448(%rbp)
	leaq	57+key_numbers.10(%rip), %rax
	movq	%rax, -440(%rbp)
	movq	$32, -432(%rbp)
	movq	$-1, -424(%rbp)
	movq	$0, -416(%rbp)
	movl	$0, -408(%rbp)
	movq	$0, -400(%rbp)
	movq	$0, -392(%rbp)
	movq	$0, -384(%rbp)
	leaq	.LC140(%rip), %rax
	movq	%rax, -624(%rbp)
	movl	$5, -616(%rbp)
	leaq	114+key_numbers.10(%rip), %rax
	movq	%rax, -608(%rbp)
	movq	$56, -600(%rbp)
	movq	$-1, -592(%rbp)
	leaq	.LC138(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$5, -576(%rbp)
	leaq	171+key_numbers.10(%rip), %rax
	movq	%rax, -568(%rbp)
	movq	$56, -560(%rbp)
	movq	$-1, -552(%rbp)
	movq	$0, -544(%rbp)
	movl	$0, -536(%rbp)
	movq	$0, -528(%rbp)
	movq	$0, -520(%rbp)
	movq	$0, -512(%rbp)
	leaq	.LC140(%rip), %rax
	movq	%rax, -752(%rbp)
	movl	$5, -744(%rbp)
	leaq	228+key_numbers.10(%rip), %rax
	movq	%rax, -736(%rbp)
	movq	$32, -728(%rbp)
	movq	$-1, -720(%rbp)
	leaq	.LC138(%rip), %rax
	movq	%rax, -712(%rbp)
	movl	$5, -704(%rbp)
	leaq	285+key_numbers.10(%rip), %rax
	movq	%rax, -696(%rbp)
	movq	$32, -688(%rbp)
	movq	$-1, -680(%rbp)
	movq	$0, -672(%rbp)
	movl	$0, -664(%rbp)
	movq	$0, -656(%rbp)
	movq	$0, -648(%rbp)
	movq	$0, -640(%rbp)
	leaq	.LC140(%rip), %rax
	movq	%rax, -880(%rbp)
	movl	$5, -872(%rbp)
	leaq	342+key_numbers.10(%rip), %rax
	movq	%rax, -864(%rbp)
	movq	$57, -856(%rbp)
	movq	$-1, -848(%rbp)
	leaq	.LC138(%rip), %rax
	movq	%rax, -840(%rbp)
	movl	$5, -832(%rbp)
	leaq	399+key_numbers.10(%rip), %rax
	movq	%rax, -824(%rbp)
	movq	$57, -816(%rbp)
	movq	$-1, -808(%rbp)
	movq	$0, -800(%rbp)
	movl	$0, -792(%rbp)
	movq	$0, -784(%rbp)
	movq	$0, -776(%rbp)
	movq	$0, -768(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movq	$0, -96(%rbp)
	movl	-884(%rbp), %eax
	andl	$3, %eax
	cmpl	$3, %eax
	je	.L237
	cmpl	$3, %eax
	jg	.L270
	cmpl	$2, %eax
	je	.L239
	cmpl	$2, %eax
	jg	.L270
	testl	%eax, %eax
	je	.L240
	cmpl	$1, %eax
	je	.L241
	jmp	.L270
.L240:
	leaq	-496(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$253, -76(%rbp)
	movl	$128, -80(%rbp)
	movl	$32, -84(%rbp)
	leaq	.LC178(%rip), %rax
	movq	%rax, -64(%rbp)
	jmp	.L242
.L241:
	leaq	-624(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$448, -76(%rbp)
	movl	$224, -80(%rbp)
	movl	$56, -84(%rbp)
	leaq	.LC179(%rip), %rax
	movq	%rax, -64(%rbp)
	jmp	.L242
.L239:
	leaq	-752(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$256, -76(%rbp)
	movl	$128, -80(%rbp)
	movl	$64, -84(%rbp)
	leaq	.LC180(%rip), %rax
	movq	%rax, -64(%rbp)
	jmp	.L242
.L237:
	leaq	-880(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$456, -76(%rbp)
	movl	$224, -80(%rbp)
	movl	$114, -84(%rbp)
	leaq	.LC181(%rip), %rax
	movq	%rax, -64(%rbp)
	nop
.L242:
	movq	-64(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC182(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1479, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L271
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)
	cmpl	$7, -884(%rbp)
	jle	.L245
	addq	$40, -72(%rbp)
	jmp	.L246
.L245:
	cmpl	$3, -884(%rbp)
	jle	.L246
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -368(%rbp)
	movq	%rbx, -360(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -352(%rbp)
	movq	%rbx, -344(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-72(%rbp), %rax
	movq	80(%rax), %rcx
	movq	88(%rax), %rbx
	movq	%rcx, -328(%rbp)
	movq	%rbx, -320(%rbp)
	movq	96(%rax), %rcx
	movq	104(%rax), %rbx
	movq	%rcx, -312(%rbp)
	movq	%rbx, -304(%rbp)
	movq	112(%rax), %rax
	movq	%rax, -296(%rbp)
	leaq	-368(%rbp), %rax
	movq	%rax, -72(%rbp)
.L246:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1493, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L272
	movq	-72(%rbp), %rdx
	leaq	-104(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$135, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC76(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1494, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L272
.L248:
	movl	$0, -20(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_bits@PLT
	movl	%eax, %esi
	movl	-76(%rbp), %edi
	leaq	.LC183(%rip), %rcx
	leaq	.LC78(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1500, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L273
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_security_bits@PLT
	movl	%eax, %esi
	movl	-80(%rbp), %edi
	leaq	.LC184(%rip), %rcx
	leaq	.LC80(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1501, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L273
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	movl	%eax, %esi
	movl	-84(%rbp), %edi
	leaq	.LC185(%rip), %rcx
	leaq	.LC82(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1502, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L273
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_missing_parameters@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC83(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1503, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L273
	movq	-104(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC186(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1506, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L274
	cmpl	$7, -884(%rbp)
	jg	.L252
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC187(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1509, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L275
	movq	-96(%rbp), %rax
	movq	(%rax), %rsi
	movq	-104(%rbp), %rax
	leaq	-112(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	movq	%rcx, %r8
	movl	$57, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC188(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1511, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L276
	movq	-96(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-96(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-112(%rbp), %r9
	leaq	-240(%rbp), %r8
	leaq	.LC189(%rip), %rcx
	leaq	.LC190(%rip), %rdx
	leaq	.LC16(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$1514, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L276
	movq	-96(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rsi
	movq	-104(%rbp), %rax
	leaq	-112(%rbp), %rcx
	leaq	-176(%rbp), %rdx
	movq	%rcx, %r8
	movl	$57, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC191(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1517, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L276
	movq	-96(%rbp), %rax
	addq	$40, %rax
	movq	24(%rax), %rdi
	movq	-96(%rbp), %rax
	addq	$40, %rax
	movq	16(%rax), %rsi
	movq	-112(%rbp), %r9
	leaq	-176(%rbp), %r8
	leaq	.LC192(%rip), %rcx
	leaq	.LC193(%rip), %rdx
	leaq	.LC16(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$1520, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L255
	jmp	.L276
.L252:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_public_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC194(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1526, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L277
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_private_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC195(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1527, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L277
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC187(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1528, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L277
.L255:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -40(%rbp)
	call	EVP_PKEY_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC89(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1534, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L278
	movq	-104(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_copy_parameters@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC90(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1536, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L278
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC196(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1538, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L279
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_public_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC194(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1540, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L279
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -48(%rbp)
	cmpl	$7, -884(%rbp)
	jle	.L261
	movq	-104(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_print_key_using_encoder_public
	movl	%eax, -20(%rbp)
	jmp	.L262
.L261:
	movq	-104(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_print_key_using_pem
	testl	%eax, %eax
	je	.L263
	movq	-104(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_print_key_using_encoder
	testl	%eax, %eax
	je	.L263
	movl	$1, %eax
	jmp	.L264
.L263:
	movl	$0, %eax
.L264:
	movl	%eax, -20(%rbp)
.L262:
	cmpl	$0, -20(%rbp)
	je	.L280
	cmpq	$0, -56(%rbp)
	jne	.L280
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_dup@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC91(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1556, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L281
	cmpl	$0, -20(%rbp)
	je	.L266
	movq	-104(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC92(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1558, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L266
	movl	$1, %eax
	jmp	.L267
.L266:
	movl	$0, %eax
.L267:
	movl	%eax, -20(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L282
	jmp	.L248
.L270:
	nop
	jmp	.L243
.L271:
	nop
	jmp	.L243
.L272:
	nop
	jmp	.L243
.L273:
	nop
	jmp	.L243
.L274:
	nop
	jmp	.L243
.L275:
	nop
	jmp	.L243
.L276:
	nop
	jmp	.L243
.L277:
	nop
	jmp	.L243
.L278:
	nop
	jmp	.L243
.L279:
	nop
	jmp	.L243
.L280:
	nop
	jmp	.L243
.L281:
	nop
	jmp	.L243
.L282:
	nop
.L243:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	test_fromdata_ecx, .-test_fromdata_ecx
	.section	.rodata
.LC197:
	.string	"EC"
.LC198:
	.string	"prime256v1"
	.align 8
.LC199:
	.string	"ec_priv_bn = BN_bin2bn(ec_priv_keydata, sizeof(ec_priv_keydata), NULL)"
	.align 8
.LC200:
	.string	"EVP_PKEY_fromdata(ctx, &pk, EVP_PKEY_KEY_PARAMETERS, nokey_params)"
.LC201:
	.string	"pk"
.LC202:
	.string	"128"
.LC203:
	.string	"2 + 35 * 2"
	.align 8
.LC204:
	.string	"gettable = EVP_PKEY_gettable_params(pk)"
	.align 8
.LC205:
	.string	"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_GROUP_NAME)"
	.align 8
.LC206:
	.string	"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_PUB_KEY)"
	.align 8
.LC207:
	.string	"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_PRIV_KEY)"
	.align 8
.LC208:
	.string	"group = EC_GROUP_new_by_curve_name(OBJ_sn2nid(curve))"
.LC209:
	.string	"group_p = BN_new()"
.LC210:
	.string	"group_a = BN_new()"
.LC211:
	.string	"group_b = BN_new()"
	.align 8
.LC212:
	.string	"EC_GROUP_get_curve(group, group_p, group_a, group_b, NULL)"
.LC213:
	.string	"a"
	.align 8
.LC214:
	.string	"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_EC_A, &a)"
.LC215:
	.string	"b"
	.align 8
.LC216:
	.string	"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_EC_B, &b)"
	.align 8
.LC217:
	.string	"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_EC_P, &p)"
.LC218:
	.string	"group_p"
.LC219:
	.string	"group_a"
.LC220:
	.string	"group_b"
.LC221:
	.string	"curve"
.LC222:
	.string	"out_curve_name"
	.align 8
.LC223:
	.string	"out_pub[0] == POINT_CONVERSION_UNCOMPRESSED"
.LC224:
	.string	"ec_pub_keydata + 1"
.LC225:
	.string	"out_pub + 1"
	.align 8
.LC226:
	.string	"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_PRIV_KEY, &bn_priv)"
.LC227:
	.string	"bn_priv"
.LC228:
	.string	"ec_priv_bn"
	.text
	.type	test_fromdata_ec, @function
test_fromdata_ec:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$480, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -48(%rbp)
	leaq	.LC197(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC198(%rip), %rax
	movq	%rax, -104(%rbp)
	movabsq	$8391166496540094318, %rax
	movabsq	$8535013312645328485, %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movw	$101, -144(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -240(%rbp)
	movaps	%xmm0, -224(%rbp)
	movaps	%xmm0, -208(%rbp)
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm0, -176(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -416(%rbp)
	movq	$0, -424(%rbp)
	movq	$0, -432(%rbp)
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC106(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1630, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L317
	leaq	ec_priv_keydata.9(%rip), %rax
	movl	$0, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC199(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1632, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L318
	movq	-104(%rbp), %rdx
	leaq	.LC134(%rip), %rsi
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	jle	.L319
	leaq	ec_pub_keydata_compressed.8(%rip), %rdx
	leaq	.LC138(%rip), %rsi
	movq	-88(%rbp), %rax
	movl	$33, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	jle	.L320
	movq	-40(%rbp), %rdx
	leaq	.LC140(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	jle	.L321
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC122(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1653, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L322
	movq	-96(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC182(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1656, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L323
	leaq	-480(%rbp), %rax
	leaq	-160(%rbp), %rdx
	leaq	.LC134(%rip), %rsi
	movl	$18, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-448(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1663, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L324
	leaq	-240(%rbp), %rdx
	leaq	-120(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$132, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC200(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1664, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L324
	movq	-120(%rbp), %rax
	leaq	.LC201(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1666, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L324
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1669, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L325
	movq	-48(%rbp), %rdx
	leaq	-120(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$135, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC76(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1670, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L325
.L295:
	movl	$0, -4(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_bits@PLT
	movl	%eax, %esi
	leaq	.LC151(%rip), %rcx
	leaq	.LC78(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$256, %r9d
	movl	%esi, %r8d
	movl	$1676, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L326
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_security_bits@PLT
	movl	%eax, %esi
	leaq	.LC202(%rip), %rcx
	leaq	.LC80(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$128, %r9d
	movl	%esi, %r8d
	movl	$1677, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L326
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	movl	%eax, %esi
	leaq	.LC203(%rip), %rcx
	leaq	.LC82(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$72, %r9d
	movl	%esi, %r8d
	movl	$1678, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L326
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_missing_parameters@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC83(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1679, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L326
	call	EVP_PKEY_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC89(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1682, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L327
	movq	-120(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_copy_parameters@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC90(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1683, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L327
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -24(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_gettable_params@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC204(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1688, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L328
	leaq	.LC134(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC205(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1689, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L328
	leaq	.LC138(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC206(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1691, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L328
	leaq	.LC140(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC207(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1693, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L328
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movl	%eax, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC208(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1697, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L329
	call	BN_new@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC209(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1698, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L329
	call	BN_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC210(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1699, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L329
	call	BN_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC211(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1700, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L329
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EC_GROUP_get_curve@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC212(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1701, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L329
	movq	-120(%rbp), %rax
	leaq	-416(%rbp), %rdx
	leaq	.LC213(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC214(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1704, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L330
	movq	-120(%rbp), %rax
	leaq	-424(%rbp), %rdx
	leaq	.LC215(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC216(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1705, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L330
	movq	-120(%rbp), %rax
	leaq	-432(%rbp), %rdx
	leaq	.LC159(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC217(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1706, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L330
	movq	-432(%rbp), %rdi
	movq	-80(%rbp), %rsi
	leaq	.LC159(%rip), %rcx
	leaq	.LC218(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1709, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L331
	movq	-416(%rbp), %rdi
	movq	-64(%rbp), %rsi
	leaq	.LC213(%rip), %rcx
	leaq	.LC219(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1709, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L331
	movq	-424(%rbp), %rdi
	movq	-72(%rbp), %rsi
	leaq	.LC215(%rip), %rcx
	leaq	.LC220(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1710, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L331
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	$0, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -72(%rbp)
	movq	-120(%rbp), %rax
	leaq	-408(%rbp), %rcx
	leaq	-400(%rbp), %rdx
	leaq	.LC134(%rip), %rsi
	movq	%rcx, %r8
	movl	$80, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_utf8_string_param@PLT
	testl	%eax, %eax
	je	.L332
	movq	-104(%rbp), %rdi
	leaq	-400(%rbp), %rsi
	leaq	.LC221(%rip), %rcx
	leaq	.LC222(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1726, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L332
	movq	-120(%rbp), %rax
	leaq	-408(%rbp), %rcx
	leaq	-320(%rbp), %rdx
	leaq	.LC138(%rip), %rsi
	movq	%rcx, %r8
	movl	$65, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	testl	%eax, %eax
	je	.L332
	movzbl	-320(%rbp), %eax
	cmpb	$4, %al
	sete	%al
	movzbl	%al, %eax
	leaq	.LC223(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1736, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L332
	leaq	1+ec_pub_keydata.7(%rip), %rsi
	movq	-408(%rbp), %rax
	leaq	-1(%rax), %r8
	leaq	-320(%rbp), %rax
	addq	$1, %rax
	leaq	.LC224(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	pushq	$64
	pushq	%rsi
	movq	%r8, %r9
	movq	%rax, %r8
	movl	$1737, %esi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L332
	movq	-120(%rbp), %rax
	leaq	-128(%rbp), %rdx
	leaq	.LC140(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC226(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1740, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L332
	movq	-128(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC227(%rip), %rcx
	leaq	.LC228(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1742, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L332
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -128(%rbp)
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_print_key_using_pem
	testl	%eax, %eax
	je	.L310
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_print_key_using_encoder
	testl	%eax, %eax
	je	.L310
	movl	$1, %eax
	jmp	.L311
.L310:
	movl	$0, %eax
.L311:
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L333
	cmpq	$0, -32(%rbp)
	jne	.L333
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_dup@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC91(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1753, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L334
	cmpl	$0, -4(%rbp)
	je	.L313
	movq	-120(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC92(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1755, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L313
	movl	$1, %eax
	jmp	.L314
.L313:
	movl	$0, %eax
.L314:
	movl	%eax, -4(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L335
	jmp	.L295
.L317:
	nop
	jmp	.L285
.L318:
	nop
	jmp	.L285
.L319:
	nop
	jmp	.L285
.L320:
	nop
	jmp	.L285
.L321:
	nop
	jmp	.L285
.L322:
	nop
	jmp	.L285
.L323:
	nop
	jmp	.L285
.L324:
	nop
	jmp	.L285
.L325:
	nop
	jmp	.L285
.L326:
	nop
	jmp	.L285
.L327:
	nop
	jmp	.L285
.L328:
	nop
	jmp	.L285
.L329:
	nop
	jmp	.L285
.L330:
	nop
	jmp	.L285
.L331:
	nop
	jmp	.L285
.L332:
	nop
	jmp	.L285
.L333:
	nop
	jmp	.L285
.L334:
	nop
	jmp	.L285
.L335:
	nop
.L285:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-424(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-432(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	test_fromdata_ec, .-test_fromdata_ec
	.section	.rodata
	.align 8
.LC229:
	.string	"pctx = EVP_PKEY_CTX_new_id(EVP_PKEY_EC, NULL)"
.LC230:
	.string	"EVP_PKEY_paramgen_init(pctx)"
	.align 8
.LC231:
	.string	"EVP_PKEY_CTX_set_ec_paramgen_curve_nid(pctx, NID_X9_62_prime256v1)"
	.align 8
.LC232:
	.string	"EVP_PKEY_paramgen(pctx, &param)"
.LC233:
	.string	"param"
	.align 8
.LC234:
	.string	"ctx = EVP_PKEY_CTX_new_from_pkey(NULL, param, NULL)"
.LC235:
	.string	"kctx = EVP_PKEY_CTX_dup(ctx)"
.LC236:
	.string	"EVP_PKEY_keygen_init(kctx)"
.LC237:
	.string	"EVP_PKEY_keygen(kctx, &pkey)"
	.text
	.type	test_ec_dup_no_operation, @function
test_ec_dup_no_operation:
.LFB540:
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
	movq	$0, -48(%rbp)
	movl	$0, %esi
	movl	$408, %edi
	call	EVP_PKEY_CTX_new_id@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC229(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1786, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L343
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen_init@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC230(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1787, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L343
	movq	-16(%rbp), %rax
	movl	$415, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_ec_paramgen_curve_nid@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC231(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1788, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L343
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC232(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1790, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L343
	movq	-40(%rbp), %rax
	leaq	.LC233(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1791, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L343
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC234(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1797, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L344
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_dup@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC235(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1798, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L344
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC236(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1799, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L344
	leaq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC237(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1800, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L344
	movl	$1, -4(%rbp)
	jmp	.L339
.L343:
	nop
	jmp	.L339
.L344:
	nop
.L339:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	test_ec_dup_no_operation, .-test_ec_dup_no_operation
	.section	.rodata
.LC238:
	.string	"EVP_PKEY_keygen_init(ctx)"
	.text
	.type	test_ec_dup_keygen_operation, @function
test_ec_dup_keygen_operation:
.LFB541:
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
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, %esi
	movl	$408, %edi
	call	EVP_PKEY_CTX_new_id@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC229(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1819, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L352
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen_init@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC230(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1820, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L352
	movq	-16(%rbp), %rax
	movl	$415, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_ec_paramgen_curve_nid@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC231(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1821, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L352
	leaq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC232(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1823, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L352
	movq	-48(%rbp), %rax
	leaq	.LC233(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1824, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L352
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -16(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC234(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1830, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L353
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC238(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1831, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L353
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_dup@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC235(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1832, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L353
	movl	$1, -4(%rbp)
	jmp	.L348
.L352:
	nop
	jmp	.L348
.L353:
	nop
.L348:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	test_ec_dup_keygen_operation, .-test_ec_dup_keygen_operation
	.section	.rodata
	.align 8
.LC239:
	.string	"g = BN_bin2bn(g_data, sizeof(g_data), NULL)"
	.align 8
.LC240:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_FFC_P, p)"
	.align 8
.LC241:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_FFC_Q, q)"
	.align 8
.LC242:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_FFC_G, g)"
	.align 8
.LC243:
	.string	"OSSL_PARAM_BLD_push_octet_string(bld, OSSL_PKEY_PARAM_FFC_SEED, seed_data, sizeof(seed_data))"
	.align 8
.LC244:
	.string	"OSSL_PARAM_BLD_push_int(bld, OSSL_PKEY_PARAM_FFC_GINDEX, gindex)"
	.align 8
.LC245:
	.string	"OSSL_PARAM_BLD_push_int(bld, OSSL_PKEY_PARAM_FFC_PCOUNTER, pcounter)"
.LC246:
	.string	"DSA"
	.align 8
.LC247:
	.string	"ctx = EVP_PKEY_CTX_new_from_name(NULL, \"DSA\", NULL)"
.LC248:
	.string	"2 + 2 * (3 + sizeof(q_data))"
	.align 8
.LC249:
	.string	"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_FFC_P, &p_out)"
.LC250:
	.string	"p_out"
	.align 8
.LC251:
	.string	"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_FFC_Q, &q_out)"
.LC252:
	.string	"q_out"
	.align 8
.LC253:
	.string	"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_FFC_G, &g_out)"
.LC254:
	.string	"g_out"
	.align 8
.LC255:
	.string	"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_FFC_COFACTOR, &j_out)"
.LC256:
	.string	"j_out"
	.align 8
.LC257:
	.string	"EVP_PKEY_get_int_param(pk, OSSL_PKEY_PARAM_FFC_GINDEX, &gindex_out)"
.LC258:
	.string	"gindex_out"
	.align 8
.LC259:
	.string	"EVP_PKEY_get_int_param(pk, OSSL_PKEY_PARAM_FFC_H, &hindex_out)"
.LC260:
	.string	"hindex_out"
	.align 8
.LC261:
	.string	"EVP_PKEY_get_int_param(pk, OSSL_PKEY_PARAM_FFC_PCOUNTER, &pcounter_out)"
.LC262:
	.string	"pcounter_out"
	.text
	.type	test_fromdata_dsa_fips186_4, @function
test_fromdata_dsa_fips186_4:
.LFB542:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -160(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -168(%rbp)
	movl	$0, -172(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -100(%rbp)
	movl	$53, -104(%rbp)
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	leaq	.LC106(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1965, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L377
	leaq	pub_data.6(%rip), %rax
	movl	$0, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC132(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1966, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L377
	leaq	priv_data.5(%rip), %rax
	movl	$0, %edx
	movl	$33, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC133(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1967, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L377
	leaq	p_data.4(%rip), %rax
	movl	$0, %edx
	movl	$257, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC110(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1968, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L377
	leaq	q_data.3(%rip), %rax
	movl	$0, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC111(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1969, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L377
	leaq	g_data.2(%rip), %rax
	movl	$0, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC239(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1970, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L377
	movq	-64(%rbp), %rdx
	leaq	.LC159(%rip), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC240(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1972, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L377
	movq	-72(%rbp), %rdx
	leaq	.LC162(%rip), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC241(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1973, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L377
	movq	-80(%rbp), %rdx
	leaq	.LC164(%rip), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC242(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1974, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L377
	leaq	seed_data.1(%rip), %rdx
	leaq	.LC169(%rip), %rsi
	movq	-96(%rbp), %rax
	movl	$32, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC243(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1975, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L377
	movl	-100(%rbp), %edx
	leaq	.LC171(%rip), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_int@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC244(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1979, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L377
	movl	-104(%rbp), %edx
	leaq	.LC176(%rip), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_int@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC245(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1981, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L377
	movq	-48(%rbp), %rdx
	leaq	.LC138(%rip), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC139(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1984, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L377
	movq	-56(%rbp), %rdx
	leaq	.LC140(%rip), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC141(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$1986, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L377
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC122(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1988, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L377
	leaq	.LC246(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC247(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$1991, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L378
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1994, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L379
	movq	-88(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$135, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC76(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1995, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L379
.L360:
	movl	$0, -4(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_bits@PLT
	movl	%eax, %esi
	leaq	.LC149(%rip), %rcx
	leaq	.LC78(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$2048, %r9d
	movl	%esi, %r8d
	movl	$2001, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L380
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_security_bits@PLT
	movl	%eax, %esi
	leaq	.LC150(%rip), %rcx
	leaq	.LC80(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$112, %r9d
	movl	%esi, %r8d
	movl	$2002, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L380
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	movl	%eax, %esi
	leaq	.LC248(%rip), %rcx
	leaq	.LC82(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$72, %r9d
	movl	%esi, %r8d
	movl	$2003, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L380
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_missing_parameters@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC83(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$2004, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L380
	movq	-112(%rbp), %rax
	leaq	-296(%rbp), %rcx
	leaq	-256(%rbp), %rdx
	leaq	.LC134(%rip), %rsi
	movq	%rcx, %r8
	movl	$80, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_utf8_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC152(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$2007, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L381
	movq	-112(%rbp), %rax
	leaq	-120(%rbp), %rdx
	leaq	.LC138(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC155(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$2012, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L381
	movq	-120(%rbp), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC156(%rip), %rcx
	leaq	.LC138(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2014, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L381
	movq	-112(%rbp), %rax
	leaq	-128(%rbp), %rdx
	leaq	.LC140(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC157(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$2015, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L381
	movq	-128(%rbp), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC158(%rip), %rcx
	leaq	.LC140(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2017, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L381
	movq	-112(%rbp), %rax
	leaq	-136(%rbp), %rdx
	leaq	.LC159(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC249(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$2018, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L381
	movq	-136(%rbp), %rdi
	movq	-64(%rbp), %rsi
	leaq	.LC250(%rip), %rcx
	leaq	.LC159(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2020, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L381
	movq	-112(%rbp), %rax
	leaq	-144(%rbp), %rdx
	leaq	.LC162(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC251(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$2021, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L381
	movq	-144(%rbp), %rdi
	movq	-72(%rbp), %rsi
	leaq	.LC252(%rip), %rcx
	leaq	.LC162(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2023, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L381
	movq	-112(%rbp), %rax
	leaq	-152(%rbp), %rdx
	leaq	.LC164(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC253(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$2024, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L381
	movq	-152(%rbp), %rdi
	movq	-80(%rbp), %rsi
	leaq	.LC254(%rip), %rcx
	leaq	.LC164(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2026, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L381
	movq	-112(%rbp), %rax
	leaq	-160(%rbp), %rdx
	leaq	.LC167(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC255(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$2027, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L381
	movq	-160(%rbp), %rax
	leaq	.LC256(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$2030, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L381
	movq	-112(%rbp), %rax
	leaq	-296(%rbp), %rcx
	leaq	-288(%rbp), %rdx
	leaq	.LC169(%rip), %rsi
	movq	%rcx, %r8
	movl	$32, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC170(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$2031, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L381
	movq	-112(%rbp), %rax
	leaq	-164(%rbp), %rdx
	leaq	.LC171(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC257(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$2036, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L381
	movl	-164(%rbp), %edi
	movl	-100(%rbp), %esi
	leaq	.LC258(%rip), %rcx
	leaq	.LC171(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$2039, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L381
	movq	-112(%rbp), %rax
	leaq	-172(%rbp), %rdx
	leaq	.LC174(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC259(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$2040, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L381
	movl	-172(%rbp), %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC260(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2042, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L381
	movq	-112(%rbp), %rax
	leaq	-168(%rbp), %rdx
	leaq	.LC176(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC261(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$2043, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L381
	movl	-168(%rbp), %edi
	movl	-104(%rbp), %esi
	leaq	.LC262(%rip), %rcx
	leaq	.LC176(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$2046, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L381
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -136(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -152(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -160(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -120(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -128(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC84(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$2061, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L382
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC85(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2064, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L383
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_public_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC86(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2065, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L383
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_private_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC87(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2066, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L383
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_pairwise_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2067, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L383
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -24(%rbp)
	call	EVP_PKEY_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC89(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$2072, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L384
	movq	-112(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_copy_parameters@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC90(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movl	%eax, %ecx
	movl	$2073, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L384
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -32(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC246(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_print_key_using_pem
	testl	%eax, %eax
	je	.L370
	movq	-112(%rbp), %rax
	leaq	.LC246(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_print_key_using_encoder
	testl	%eax, %eax
	je	.L370
	movl	$1, %eax
	jmp	.L371
.L370:
	movl	$0, %eax
.L371:
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L385
	cmpq	$0, -40(%rbp)
	jne	.L385
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_dup@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC91(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$2084, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L386
	cmpl	$0, -4(%rbp)
	je	.L373
	movq	-112(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC92(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$2086, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L373
	movl	$1, %eax
	jmp	.L374
.L373:
	movl	$0, %eax
.L374:
	movl	%eax, -4(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L387
	jmp	.L360
.L377:
	nop
	jmp	.L357
.L378:
	nop
	jmp	.L357
.L379:
	nop
	jmp	.L357
.L380:
	nop
	jmp	.L357
.L381:
	nop
	jmp	.L357
.L382:
	nop
	jmp	.L357
.L383:
	nop
	jmp	.L357
.L384:
	nop
	jmp	.L357
.L385:
	nop
	jmp	.L357
.L386:
	nop
	jmp	.L357
.L387:
	nop
.L357:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	test_fromdata_dsa_fips186_4, .-test_fromdata_dsa_fips186_4
	.section	.rodata
.LC263:
	.string	"EVP_PKEY_check(ctx)"
.LC264:
	.string	"EVP_PKEY_public_check(ctx)"
.LC265:
	.string	"EVP_PKEY_private_check(ctx)"
.LC266:
	.string	"EVP_PKEY_pairwise_check(ctx)"
	.text
	.type	test_check_dsa, @function
test_check_dsa:
.LFB543:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC246(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC247(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$2120, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L393
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC263(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2121, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L393
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_public_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC264(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2122, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L393
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_private_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC265(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2123, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L393
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_pairwise_check@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC266(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2124, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L393
	movl	$1, -4(%rbp)
	jmp	.L391
.L393:
	nop
.L391:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	test_check_dsa, .-test_check_dsa
	.section	.rodata
.LC267:
	.string	"digest"
.LC268:
	.string	"salt"
.LC269:
	.string	"key"
.LC270:
	.string	"EXTRACT_ONLY"
.LC271:
	.string	"mode"
	.text
	.type	do_construct_hkdf_params, @function
do_construct_hkdf_params:
.LFB544:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	leaq	.LC16(%rip), %rax
	movl	$2139, %edx
	movq	%rax, %rsi
	movl	$200, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-112(%rbp), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC267(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-112(%rbp), %rax
	movq	-64(%rbp), %rdx
	leaq	.LC268(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-112(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	leaq	.LC269(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-112(%rbp), %rax
	leaq	.LC270(%rip), %rdx
	leaq	.LC271(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	do_construct_hkdf_params, .-do_construct_hkdf_params
	.section	.rodata
.LC272:
	.string	"secret"
.LC273:
	.string	"sha256"
	.align 8
.LC274:
	.string	"params = do_construct_hkdf_params(\"sha256\", \"secret\", 6, \"salt\")"
.LC275:
	.string	"HKDF"
	.align 8
.LC276:
	.string	"pctx = EVP_PKEY_CTX_new_from_name(NULL, \"HKDF\", NULL)"
	.align 8
.LC277:
	.string	"EVP_PKEY_derive_init_ex(pctx, params)"
.LC278:
	.string	"dctx = EVP_PKEY_CTX_dup(pctx)"
	.align 8
.LC279:
	.string	"EVP_PKEY_derive(pctx, NULL, &len)"
.LC280:
	.string	"SHA256_DIGEST_LENGTH"
	.align 8
.LC281:
	.string	"EVP_PKEY_derive(dctx, NULL, &dlen)"
.LC282:
	.string	"dlen"
	.text
	.type	test_evp_pkey_ctx_dup_kdf, @function
test_evp_pkey_ctx_dup_kdf:
.LFB545:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	leaq	.LC268(%rip), %rdx
	leaq	.LC272(%rip), %rsi
	leaq	.LC273(%rip), %rax
	movq	%rdx, %rcx
	movl	$6, %edx
	movq	%rax, %rdi
	call	do_construct_hkdf_params
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC274(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$2161, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L405
	leaq	.LC275(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC276(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$2164, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L406
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive_init_ex@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC277(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$2166, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L407
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_dup@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC278(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$2168, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L408
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC279(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$2170, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L409
	movq	-40(%rbp), %rsi
	leaq	.LC280(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$32, %r9d
	movq	%rsi, %r8
	movl	$2171, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L409
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	movl	%eax, %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC281(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$2172, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L409
	movq	-48(%rbp), %rsi
	leaq	.LC280(%rip), %rcx
	leaq	.LC282(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$32, %r9d
	movq	%rsi, %r8
	movl	$2173, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L409
	movl	$1, -4(%rbp)
	jmp	.L398
.L405:
	nop
	jmp	.L398
.L406:
	nop
	jmp	.L398
.L407:
	nop
	jmp	.L398
.L408:
	nop
	jmp	.L398
.L409:
	nop
.L398:
	leaq	.LC16(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$2177, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	test_evp_pkey_ctx_dup_kdf, .-test_evp_pkey_ctx_dup_kdf
	.section	.rodata
.LC283:
	.string	"ML-KEM-512"
.LC284:
	.string	"ML-DSA-44"
	.section	.data.rel.local,"aw"
	.align 32
	.type	name_dup_algs, @object
	.size	name_dup_algs, 32
name_dup_algs:
	.quad	.LC180
	.quad	.LC283
	.quad	.LC284
	.quad	0
	.section	.rodata
	.align 8
.LC285:
	.string	"Testing fresh context dup for: %s"
	.align 8
.LC286:
	.string	"ctx = EVP_PKEY_CTX_dup(factory)"
.LC287:
	.string	"EVP_PKEY_keygen(ctx, &key)"
	.text
	.type	test_name_dup, @function
test_name_dup:
.LFB546:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	name_dup_algs(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L411
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L412
.L411:
	movl	$1, %eax
	jmp	.L419
.L412:
	movq	-24(%rbp), %rax
	leaq	.LC285(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$2206, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, -12(%rbp)
	jmp	.L414
.L418:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_dup@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC286(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$2213, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L415
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC238(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2214, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L415
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC287(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2215, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L416
.L415:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L417
.L416:
	addl	$1, -12(%rbp)
.L414:
	cmpl	$1, -12(%rbp)
	jle	.L418
	movl	$1, -16(%rbp)
.L417:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-16(%rbp), %eax
.L419:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	test_name_dup, .-test_name_dup
	.section	.rodata
.LC288:
	.string	"Error parsing test options\n"
	.align 8
.LC289:
	.string	"datadir = test_get_argument(0)"
.LC290:
	.string	"test_evp_pkey_ctx_dup_kdf"
.LC291:
	.string	"test_name_dup"
	.align 8
.LC292:
	.string	"test_evp_pkey_get_bn_param_large"
.LC293:
	.string	"test_fromdata_rsa"
	.align 8
.LC294:
	.string	"test_fromdata_rsa_derive_from_pq_sp800"
	.align 8
.LC295:
	.string	"test_fromdata_rsa_derive_from_pq_multiprime"
.LC296:
	.string	"test_fromdata_dh_fips186_4"
.LC297:
	.string	"test_fromdata_dh_named_group"
.LC298:
	.string	"test_check_dsa"
.LC299:
	.string	"test_fromdata_dsa_fips186_4"
.LC300:
	.string	"test_fromdata_ecx"
.LC301:
	.string	"test_fromdata_ec"
.LC302:
	.string	"test_ec_dup_no_operation"
.LC303:
	.string	"test_ec_dup_keygen_operation"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L421
	leaq	.LC288(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$2233, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L422
.L421:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, datadir(%rip)
	movq	datadir(%rip), %rax
	leaq	.LC289(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$2237, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L423
	movl	$0, %eax
	jmp	.L422
.L423:
	leaq	test_evp_pkey_ctx_dup_kdf(%rip), %rdx
	leaq	.LC290(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_name_dup(%rip), %rsi
	leaq	.LC291(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_evp_pkey_get_bn_param_large(%rip), %rdx
	leaq	.LC292(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_fromdata_rsa(%rip), %rdx
	leaq	.LC293(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_fromdata_rsa_derive_from_pq_sp800(%rip), %rdx
	leaq	.LC294(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_fromdata_rsa_derive_from_pq_multiprime(%rip), %rdx
	leaq	.LC295(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_fromdata_dh_fips186_4(%rip), %rdx
	leaq	.LC296(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_fromdata_dh_named_group(%rip), %rdx
	leaq	.LC297(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_check_dsa(%rip), %rdx
	leaq	.LC298(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_fromdata_dsa_fips186_4(%rip), %rdx
	leaq	.LC299(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_fromdata_ecx(%rip), %rsi
	leaq	.LC300(%rip), %rax
	movl	$1, %ecx
	movl	$12, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_fromdata_ec(%rip), %rdx
	leaq	.LC301(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ec_dup_no_operation(%rip), %rdx
	leaq	.LC302(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ec_dup_keygen_operation(%rip), %rdx
	leaq	.LC303(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L422:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	setup_tests, .-setup_tests
	.data
	.align 32
	.type	key_numbers.0, @object
	.size	key_numbers.0, 64
key_numbers.0:
	.quad	3161751493
	.quad	65537
	.quad	2064855961
	.quad	59747
	.quad	52919
	.quad	34201
	.quad	48519
	.quad	52283
	.align 32
	.type	n_data.40, @object
	.size	n_data.40, 65
n_data.40:
	.base64	"AMcG2Gs8T7eVQkSQve/zxLWoVZ4zowQ6kOUT/4dpFaSKFxDM3/nFD/ES/xIR5Wtcg9lD0Yp+pmAHLrsDFy3sF4c="
	.type	e_data.39, @object
	.size	e_data.39, 3
e_data.39:
	.base64	"AQAB"
	.align 32
	.type	d_data.38, @object
	.size	d_data.38, 64
d_data.38:
	.base64	"Hl5dB3/cahbMVcoAMWzwxwc4iTs31J1bHpk+lFrkgoaKeDQJN9XntO9fg5T/5TZ5EAw4xTozpnw8zJjg9dvmgQ=="
	.align 32
	.type	p_data.37, @object
	.size	p_data.37, 33
p_data.37:
	.base64	"APZhOA4fgny4ugDTrNxOa373WPPZ2CHtVKM20ixfBn3F"
	.align 32
	.type	q_data.36, @object
	.size	q_data.36, 33
q_data.36:
	.base64	"AM7MSqVP1nPQIMOYZCCbwSPYXIJP6KUyzX6XtN72TIDb"
	.align 32
	.type	dmp1_data.35, @object
	.size	dmp1_data.35, 33
dmp1_data.35:
	.base64	"ANEHtnk0/o42Y4ikDjpzRfxYel2Y6ygNpQs8TaBblrRJ"
	.align 32
	.type	dmq1_data.34, @object
	.size	dmq1_data.34, 32
dmq1_data.34:
	.base64	"W0cC36q4ro+8FnlqIJZ/DpJOatpYhqpA19KgbBVsuSc="
	.align 32
	.type	iqmp_data.33, @object
	.size	iqmp_data.33, 33
iqmp_data.33:
	.base64	"AKDW8OgXnufmmRLW2UPP7Tcp9Ww+wX8uMT9kNGZoXCII"
	.align 32
	.type	n_data.32, @object
	.size	n_data.32, 257
n_data.32:
	.base64	"AJV4IeDKlGwLhioB3tmr7ohKJ0/MX/Fx4QvD0Yh28IMDk345+keJNCcYGZf81P7liqkRg7UVSimmptBuDH9hj358+/wEi8pE+FkLIm8/kiOYtcj3//esazazrzneZjhRn77i/ORvGg963n8PTrztopnF0b+PupKR5ACRu2c2fQBQ2ig43J/+PyRaDeGN6UUs1/JnjAxu28iLazgwIZTA49fgI9PU+tu5/hrMyXkZNRhCMMS1kjMe1MTAnVU31O9UcYEJFdsROGs1kxHcsWzWpDeE87IvG9YFnw5cmCkvlbZVvSRExciidh74gorfNHJ+3WVL/GwclnDiabUSG1ln"
	.ascii	"\024\235"
	.type	e_data.31, @object
	.size	e_data.31, 3
e_data.31:
	.base64	"AQAB"
	.align 32
	.type	d_data.30, @object
	.size	d_data.30, 256
d_data.30:
	.base64	"ZFdNhvb4RMBHxROUY1SEwYHmei+diR0GEzvWAmK2e31/GpIZbsSw+j23kMzuwF+ggnd7j6lHLEbwXaRDR5BbIHMPRtRWc+dxQXW0HDL1DGiMQOocMBKiZQInmE4Kvytyslzjvj7H25uiSpDAp7AA8Wr/o3f3caJB6W58OCRG1VxJKubuJ0subxZULTc2ATkrI0u0ZSVNf3Igf13sULq7qpw8HaFALGqLXy7gpveeA7VEX3THn4krcS9mnwNsltAjNk2h8ILMQ+cIk0AYwDlzg+Lsm4GdTIaqWahnHIDcb38ja30sVpmgiX7bi3qqA46OjjpYtANrZfqSCpaTpgdg"
	.ascii	"\001"
	.align 32
	.type	p_data.29, @object
	.size	p_data.29, 86
p_data.29:
	.base64	"BlV/vf2oTJReEIpUN/NkNzrKGBvdcaWUyTFZpYnpxLpVkG2czFJdRKi8KzuMvZb6zVRj48j+XsZzmBR6VA7ndUmTIDMXqTSo7q86zPVp/DAa30lhpNE="
	.align 32
	.type	q_data.28, @object
	.size	q_data.28, 86
q_data.28:
	.base64	"BhN0bt58M8LnBSzrJX1KB34Dz2ojNiUj9l3eow+C5kvsOb83H09WHthiMlz1N3Ug4n5WgsY10036bMOT8GBTeJXu+Yssr7FHXCkNKkd/0HpOJntH+2E="
	.align 32
	.type	p2_data.27, @object
	.size	p2_data.27, 86
p2_data.27:
	.base64	"A+JBPbHdrdc7+KsyJ4uslcAaP4COIam4ou3Pl1xhEJQb0L6Iwqcg5aXCen7w0eQTdblikPHDW4zpqVu3bdzNEuqXBQQlKpPRTgUaUKJnuEsJFWVsZi0="
	.align 32
	.type	exp3_data.26, @object
	.size	exp3_data.26, 86
exp3_data.26:
	.base64	"An0WJPw1+dCzAvJf3usnGYXQy+QKLxPb1brgjDKLl93vvOB6LZB+CekfJvL0SOoGdibmO85OyfkPOJAmh2U2mupq/rHbRt8U/RNT+1s1bufV2Dn3Lbk="
	.align 32
	.type	coeff2_data.25, @object
	.size	coeff2_data.25, 86
coeff2_data.25:
	.base64	"AbpmCqKGwFd/TmixhmMjWw7rk0LRqhUTzClxirDgyWfeGnwa76cIhbOumJnerwk4/EYpX09+AWxQE5WRTA8AuspAo9BYtmJM0bbTKV2Csz1hvl3wS/Q="
	.align 32
	.type	dmp1_data.24, @object
	.size	dmp1_data.24, 86
dmp1_data.24:
	.base64	"ARM6H5GSo4z7emtAaE7Tz9wWuYjhSY0FeDD8OnDyUQYfx+gTGUtRsXnClsQA251o7LlKSzuukX+11zaCnQn6l5npcym49muN0RXFMUzmtHul1AisnkE="
	.align 32
	.type	dmq1_data.23, @object
	.size	dmq1_data.23, 86
dmq1_data.23:
	.base64	"Bc0zwt07uOzkTAPM77oHIspHdxhAUOX7xbVx7T7VXXKnN6iGSKYndEJm2PH7zx1O7hV2I16BbKcrdAj3THGdoil/ytUCMSxUGAK2qGUm/PibgJD8dWE="
	.align 32
	.type	iqmp_data.22, @object
	.size	iqmp_data.22, 86
iqmp_data.22:
	.base64	"BXj43RxvPa9ThDKpNVLz0E34CYU9ciCLR7rIzqzZdpAFiGOKECvN076MFmBq/c7Hn/q746bewo8dJdxBy6TrdsncjkkO5HzS1W4mPAvTxSBOS7b3ru8="
	.local	n_data.21
	.comm	n_data.21,2050,32
	.section	.rodata
	.type	e_data.20, @object
	.size	e_data.20, 3
e_data.20:
	.base64	"AQAB"
	.type	d_data.19, @object
	.size	d_data.19, 4
d_data.19:
	.base64	"mTMTew=="
	.align 32
	.type	pub_data.18, @object
	.size	pub_data.18, 257
pub_data.18:
	.base64	"ANYtd+DTffjrmFChgiJl1dn+yT++FoO9M+nGk88Ir4P6gIpsZN9wZNUKfFpy2mbm+fUxIZKwYBq10/Cl+kiVLjjZxeba+2wDnUtpt5XkXMCTT0jZfgYist7zeSTt4dFKV/FAhnBCJcUnaMn65Y5ifv9JbFu1uvnvmhoQ1IFTz4MEGBzh2+FlqX/hM+vDT+O3IvccCU/txgeOeAWPfJbZEuCBdBrpE8AggmW7QjvtCGqET+p3FDL57cIS1sXGs+XybvYWfzfevAnHBmsSvK0tSSXV3PQYFNLw8R0fOqoVVbsNf75noafwqrP7QYI5SZO8qO5yE0VlFUIXqtirzzNC"
	.ascii	"\203B"
	.align 16
	.type	priv_data.17, @object
	.size	priv_data.17, 28
priv_data.17:
	.base64	"iIXnn+5txXx4r2NdOCrQ7VZLRyEr+lX6h+ipew=="
	.align 8
	.type	group_name.16, @object
	.size	group_name.16, 10
group_name.16:
	.string	"ffdhe2048"
	.align 8
	.type	priv_len.15, @object
	.size	priv_len.15, 8
priv_len.15:
	.quad	224
	.align 32
	.type	pub_data.14, @object
	.size	pub_data.14, 256
pub_data.14:
	.base64	"1i134NN9+OuYUKGCImXV2f7JP74Wg70z6caTzwivg/qAimxk33Bk1Qp8WnLaZub59TEhkrBgGrXT8KX6SJUuONnF5tr7bAOdS2m3leRcwJNPSNl+BiKy3vN5JO3h0UpX8UCGcEIlxSdoyfrljmJ+/0lsW7W6+e+aGhDUgVPPgwQYHOHb4WWpf+Ez68NP47ci9xwJT+3GB454BY98ltkS4IF0GukTwCCCZbtCO+0IaoRP6ncUMvntwhLWxcaz5fJu9hZ/N968CccGaxK8rS1JJdXc9BgU0vDxHR86qhVVuw1/vmehp/Cqs/tBgjlJk7yo7nITRWUVQheq2KvPM0KD"
	.ascii	"B"
	.align 16
	.type	priv_data.13, @object
	.size	priv_data.13, 28
priv_data.13:
	.base64	"iIXnn+5txXx4r2NdOCrQ7VZLRyEr+lX6h+ipew=="
	.align 8
	.type	group_name.12, @object
	.size	group_name.12, 10
group_name.12:
	.string	"ffdhe2048"
	.align 8
	.type	priv_len.11, @object
	.size	priv_len.11, 8
priv_len.11:
	.quad	224
	.data
	.align 32
	.type	key_numbers.10, @object
	.size	key_numbers.10, 456
key_numbers.10:
	.base64	"dwdtCnMYpX08FsFyUbJmRd9ML4frwJkqsXf7pR25LCoA"
	.zero	24
	.base64	"hSDwCYkwp1R0i33ctD73Wg2/Og0mOBr066SpjqqbTmoA"
	.zero	24
	.base64	"mo9JJdFRn1d1z0awS1gA1O6e6LrovFVl1JjCjdnJuvV0qUGXRIlzkQBjgqbxJ6sdmsLYwKWYcmsA"
	.base64	"mwj3zDG34+Z9ItWuoSEHSic70rg94Jxj+qc9LCLF2bvINmRyQdlT1AxbEtqIEg1TF3+A5TLEH6AA"
	.base64	"nWGxne/9WmC6hEr0kuwsxERJxWl7MmkZcDusAxyuf2AA"
	.zero	24
	.base64	"11qYAYKxCrfVS/7TyWQHOg7hcvPapiMlrwIaaPcHURoA"
	.zero	24
	.base64	"bIKlYsuAjRDWMr6JyFE+v2ySnzTd+oyfY8mWDvbjSKNSjIo/zC8ETjmj/FuUSS+PAy51SaIAmPlb"
	.base64	"X9dEm1m0Yf0s54fsYWrUah2hNCSFpw4fig6nXYDpZ3jt8SR2m0bHBhvWeD3x5Q9s0foavq/oJWGA"
	.section	.rodata
	.align 32
	.type	ec_priv_keydata.9, @object
	.size	ec_priv_keydata.9, 32
ec_priv_keydata.9:
	.base64	"M9BDg6mJVgPS1/5rAW/kWcwNmiRshhsu3EtNNUPhG60="
	.align 32
	.type	ec_pub_keydata_compressed.8, @object
	.size	ec_pub_keydata_compressed.8, 33
ec_pub_keydata_compressed.8:
	.base64	"AxuTZ1UcVZ9j0SKk2NEKYG0CpXdXyKNHczpqCCg5vcnS"
	.align 32
	.type	ec_pub_keydata.7, @object
	.size	ec_pub_keydata.7, 65
ec_pub_keydata.7:
	.base64	"BBuTZ1UcVZ9j0SKk2NEKYG0CpXdXyKNHczpqCCg5vcnSgOzppwgpcS/JVoLumoUPbX9ZX4zRlgvfKT5JB4g/mik="
	.align 32
	.type	pub_data.6, @object
	.size	pub_data.6, 256
pub_data.6:
	.base64	"RBnJRkVXwanYMJkpaktjcWmWNReyYpuACpWdasAyDQdfGUQC8b3O3xD4Al19mIpziQC2JNYz58+LSSqvExyyUhX9m9VAShraKUySfmYG22GGrLXaPH1zflQyaKUCvFlHhNOHcV/rQ0Uk0+wIUsKJLZwazJFlXaOhNTEQHDqoTRjVBq+y7FyJnpCGEAHrUdUbnMtmBz/Ebgobc6BLX02rNSj62joMCOjz70JnvCHywrj/GoEFaHNi39erDyKJV5bUk6+hIaNI6fCXR6Anuoe4FV//LFBB8X7GgcRR8f3Whvdpl/FJyfn0m/Tohae9NlVKPehlCXu3EmTSClNgSNGK"
	.ascii	"\275"
	.align 32
	.type	priv_data.5, @object
	.size	priv_data.5, 33
priv_data.5:
	.base64	"AI/FntD3Kgtm8TJzrvbZ1NstllWJ/++oX0ePygKK4TWQ"
	.align 32
	.type	p_data.4, @object
	.size	p_data.4, 257
p_data.4:
	.base64	"AKC3AsSspkKr8jQLIkcfM8/VBOQ+7KEhyEEr77gfC1uIi2f4aG18TZZfPGbvWDTX9qIbrcgSUrjoKmPM6udOyDRMWFkKwkrktGQg9PYKz4YBbH8jSlEHmUIoev8YZ1Jk8ppiMMMA3iPpEZV+0T2NtA6fnrEwA/BzqEBIQntgoMTyOy0KDLgZ+7T44CrH8cDGhhRgEg/A3kpn7MfediEaVX+Gw5eYzvXN8OcS1pPuG5th7wWMRUbZZG++J6pnAcxxsWDOIdhRFycNkD0YfIcVjkhMbMVy67dW9Wtgj8L9P0ZcAJGFeUVbHILEh1B5uswcMn4uuC7FTtGb22Z5fP6v"
	.ascii	"j\005"
	.align 32
	.type	q_data.3, @object
	.size	q_data.3, 32
q_data.3:
	.base64	"qM30M3sTCiTB3koEe0txUTLpR3S9DCFAhBIKF3PbKcc="
	.align 32
	.type	g_data.2, @object
	.size	g_data.2, 256
g_data.2:
	.base64	"bMakPmGEwf9vShprsCRL0pJbKVxhuMkr1vdZ/dhwZnf8waTUsB7Vv1mYs2aL9C7mEj7M+AK4xsNH0vWqDF9R9dBMVT0Hc6ZXzlqtQgwTD+IxJY5yEnMQ239561n8/vcMGoFTliK451jYZ4BgrYtVHJHwcpp+rTfxdxiWimhw/HGpoug1J3jy71k2bXy2mNge+iVzl0VY4669UlQF2CYmuroFtenldq4l3fwQiVqp7lnFeYvrHixhqw3REASRMndKpmRT2kzXOinU84IlHW9Kf9MIO0IwENjQlzrrkmPskytvMtjNgNPATAPVyryPx0NTZGYcgi37/zm61kJiAm+W"
	.ascii	"6"
	.align 32
	.type	seed_data.1, @object
	.size	seed_data.1, 32
seed_data.1:
	.base64	"ZEYHMo1wnLOKNd5iAPJtUjdNs4ThnUEE2nvcDYte4IQ="
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

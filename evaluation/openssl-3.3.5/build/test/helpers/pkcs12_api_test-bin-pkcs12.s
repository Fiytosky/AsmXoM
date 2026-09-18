	.file	"pkcs12.c"
	.text
	.type	ossl_check_const_X509_ATTRIBUTE_sk_type, @function
ossl_check_const_X509_ATTRIBUTE_sk_type:
.LFB357:
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
.LFE357:
	.size	ossl_check_const_X509_ATTRIBUTE_sk_type, .-ossl_check_const_X509_ATTRIBUTE_sk_type
	.type	ossl_check_const_PKCS7_sk_type, @function
ossl_check_const_PKCS7_sk_type:
.LFB427:
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
.LFE427:
	.size	ossl_check_const_PKCS7_sk_type, .-ossl_check_const_PKCS7_sk_type
	.type	ossl_check_PKCS7_sk_type, @function
ossl_check_PKCS7_sk_type:
.LFB428:
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
.LFE428:
	.size	ossl_check_PKCS7_sk_type, .-ossl_check_PKCS7_sk_type
	.type	ossl_check_PKCS7_freefunc_type, @function
ossl_check_PKCS7_freefunc_type:
.LFB431:
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
.LFE431:
	.size	ossl_check_PKCS7_freefunc_type, .-ossl_check_PKCS7_freefunc_type
	.type	ossl_check_const_PKCS12_SAFEBAG_sk_type, @function
ossl_check_const_PKCS12_SAFEBAG_sk_type:
.LFB450:
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
.LFE450:
	.size	ossl_check_const_PKCS12_SAFEBAG_sk_type, .-ossl_check_const_PKCS12_SAFEBAG_sk_type
	.type	ossl_check_PKCS12_SAFEBAG_sk_type, @function
ossl_check_PKCS12_SAFEBAG_sk_type:
.LFB451:
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
.LFE451:
	.size	ossl_check_PKCS12_SAFEBAG_sk_type, .-ossl_check_PKCS12_SAFEBAG_sk_type
	.type	ossl_check_PKCS12_SAFEBAG_freefunc_type, @function
ossl_check_PKCS12_SAFEBAG_freefunc_type:
.LFB454:
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
.LFE454:
	.size	ossl_check_PKCS12_SAFEBAG_freefunc_type, .-ossl_check_PKCS12_SAFEBAG_freefunc_type
	.local	write_files
	.comm	write_files,4,4
	.local	legacy
	.comm	legacy,4,4
	.local	test_ctx
	.comm	test_ctx,8,8
	.local	test_propq
	.comm	test_propq,8,8
	.globl	PKCS12_helper_set_write_files
	.type	PKCS12_helper_set_write_files, @function
PKCS12_helper_set_write_files:
.LFB582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, write_files(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	PKCS12_helper_set_write_files, .-PKCS12_helper_set_write_files
	.globl	PKCS12_helper_set_legacy
	.type	PKCS12_helper_set_legacy, @function
PKCS12_helper_set_legacy:
.LFB583:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, legacy(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	PKCS12_helper_set_legacy, .-PKCS12_helper_set_legacy
	.globl	PKCS12_helper_set_libctx
	.type	PKCS12_helper_set_libctx, @function
PKCS12_helper_set_libctx:
.LFB584:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, test_ctx(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	PKCS12_helper_set_libctx, .-PKCS12_helper_set_libctx
	.globl	PKCS12_helper_set_propq
	.type	PKCS12_helper_set_propq, @function
PKCS12_helper_set_propq:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, test_propq(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	PKCS12_helper_set_propq, .-PKCS12_helper_set_propq
	.section	.rodata
.LC0:
	.string	"cert"
.LC1:
	.string	"../test/helpers/pkcs12.c"
	.text
	.type	load_cert_asn1, @function
load_cert_asn1:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -8(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_X509@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$82, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	nop
.L20:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	load_cert_asn1, .-load_cert_asn1
	.section	.rodata
.LC2:
	.string	"pkey"
	.text
	.type	load_pkey_asn1, @function
load_pkey_asn1:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -8(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_AutoPrivateKey@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$93, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	nop
.L23:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	load_pkey_asn1, .-load_pkey_asn1
	.section	.rodata
.LC3:
	.string	"pb"
	.text
	.globl	new_pkcs12_builder
	.type	new_pkcs12_builder, @function
new_pkcs12_builder:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$105, %edx
	movq	%rax, %rsi
	movl	$56, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$106, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-8(%rbp), %rax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	new_pkcs12_builder, .-new_pkcs12_builder
	.globl	end_pkcs12_builder
	.type	end_pkcs12_builder, @function
end_pkcs12_builder:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -4(%rbp)
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$118, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	end_pkcs12_builder, .-end_pkcs12_builder
	.globl	start_pkcs12
	.type	start_pkcs12, @function
start_pkcs12:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	start_pkcs12, .-start_pkcs12
	.globl	end_pkcs12
	.type	end_pkcs12, @function
end_pkcs12:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L34
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	generate_p12
	jmp	.L31
.L34:
	nop
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	end_pkcs12, .-end_pkcs12
	.globl	end_pkcs12_with_mac
	.type	end_pkcs12_with_mac, @function
end_pkcs12_with_mac:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L38
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	generate_p12
	jmp	.L35
.L38:
	nop
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	end_pkcs12_with_mac, .-end_pkcs12_with_mac
	.section	.rodata
.LC4:
	.string	"pb->p12bio"
.LC5:
	.string	"p12"
	.align 8
.LC6:
	.string	"PKCS12_set_mac(p12, mac->pass, strlen(mac->pass), NULL, 0, mac->iter, md)"
	.text
	.type	generate_p12, @function
generate_p12:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L51
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$155, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L42
	movq	-40(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L39
.L42:
	movl	legacy(%rip), %eax
	testl	%eax, %eax
	je	.L43
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	PKCS12_add_safes@PLT
	movq	%rax, -24(%rbp)
	jmp	.L44
.L43:
	movq	test_propq(%rip), %rcx
	movq	test_ctx(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	PKCS12_add_safes_ex@PLT
	movq	%rax, -24(%rbp)
.L44:
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$163, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L45
	movq	-40(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L46
.L45:
	movq	PKCS7_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_freefunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	cmpq	$0, -48(%rbp)
	je	.L47
	movl	legacy(%rip), %eax
	testl	%eax, %eax
	je	.L48
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -32(%rbp)
	jmp	.L49
.L48:
	movq	test_propq(%rip), %rbx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	movq	test_ctx(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -32(%rbp)
.L49:
	movq	-48(%rbp), %rax
	movl	16(%rax), %ebx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	-32(%rbp)
	movl	%ebx, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	PKCS12_set_mac@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$175, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L47
	movq	-40(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L46
.L47:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PKCS12_bio@PLT
	movl	write_files(%rip), %eax
	testl	%eax, %eax
	je	.L52
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	write_p12
	jmp	.L46
.L52:
	nop
.L46:
	movl	legacy(%rip), %eax
	testl	%eax, %eax
	jne	.L50
	cmpq	$0, -32(%rbp)
	je	.L50
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
.L50:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_free@PLT
	jmp	.L39
.L51:
	nop
.L39:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	generate_p12, .-generate_p12
	.section	.rodata
.LC7:
	.string	"w"
.LC8:
	.string	"1"
.LC9:
	.string	"i2d_PKCS12_bio(out, p12)"
	.text
	.type	write_p12, @function
write_p12:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	leaq	.LC7(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L58
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PKCS12_bio@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$201, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L59
	movl	$1, -4(%rbp)
	jmp	.L55
.L58:
	nop
	jmp	.L55
.L59:
	nop
.L55:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	write_p12, .-write_p12
	.section	.rodata
.LC10:
	.string	"PKCS12_mac_present(p12)"
	.text
	.type	from_bio_p12, @function
from_bio_p12:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	movl	legacy(%rip), %eax
	testl	%eax, %eax
	jne	.L61
	movq	test_propq(%rip), %rdx
	movq	test_ctx(%rip), %rax
	movq	%rax, %rsi
	movl	$21, %edi
	call	PKCS12_init_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$216, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L68
.L61:
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	d2i_PKCS12_bio@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$221, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L69
	cmpq	$0, -32(%rbp)
	jne	.L64
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_mac_present@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$224, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L65
	jmp	.L62
.L64:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_p12_mac
	testl	%eax, %eax
	je	.L70
.L65:
	movq	-8(%rbp), %rax
	jmp	.L67
.L68:
	nop
	jmp	.L62
.L69:
	nop
	jmp	.L62
.L70:
	nop
.L62:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_free@PLT
	movl	$0, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	from_bio_p12, .-from_bio_p12
	.section	.rodata
.LC11:
	.string	"r"
	.text
	.type	read_p12, @function
read_p12:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	leaq	.LC11(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L78
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_PKCS12_bio@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$247, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L79
	cmpq	$0, -32(%rbp)
	jne	.L75
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_mac_present@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$250, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L76
	jmp	.L73
.L75:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_p12_mac
	testl	%eax, %eax
	je	.L80
.L76:
	movq	-8(%rbp), %rax
	jmp	.L77
.L78:
	nop
	jmp	.L73
.L79:
	nop
	jmp	.L73
.L80:
	nop
.L73:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_free@PLT
	movl	$0, %eax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	read_p12, .-read_p12
	.section	.rodata
	.align 8
.LC12:
	.string	"PKCS12_verify_mac(p12, mac->pass, strlen(mac->pass))"
	.text
	.type	check_p12_mac, @function
check_p12_mac:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_mac_present@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$264, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L82
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS12_verify_mac@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$265, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L82
	movl	$1, %eax
	jmp	.L84
.L82:
	movl	$0, %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	check_p12_mac, .-check_p12_mac
	.globl	start_contentinfo
	.type	start_contentinfo, @function
start_contentinfo:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	start_contentinfo, .-start_contentinfo
	.section	.rodata
	.align 8
.LC13:
	.string	"PKCS12_add_safe(&pb->safes, pb->bags, -1, 0, NULL)"
	.text
	.globl	end_contentinfo
	.type	end_contentinfo, @function
end_contentinfo:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L87
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L87
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	24(%rdx), %rdi
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rsi
	call	PKCS12_add_safe@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$282, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L87
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
.L87:
	movq	PKCS12_SAFEBAG_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	end_contentinfo, .-end_contentinfo
	.section	.rodata
	.align 8
.LC14:
	.string	"PKCS12_add_safe(&pb->safes, pb->bags, enc->nid, enc->iter, enc->pass)"
	.align 8
.LC15:
	.string	"PKCS12_add_safe_ex(&pb->safes, pb->bags, enc->nid, enc->iter, enc->pass, test_ctx, test_propq)"
	.text
	.globl	end_contentinfo_encrypted
	.type	end_contentinfo_encrypted, @function
end_contentinfo_encrypted:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L89
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L89
	movl	legacy(%rip), %eax
	testl	%eax, %eax
	je	.L90
	movq	-32(%rbp), %rax
	movq	8(%rax), %r8
	movq	-32(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rsi
	leaq	24(%rsi), %rdi
	movq	%rax, %rsi
	call	PKCS12_add_safe@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$294, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L89
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L89
.L90:
	movq	test_propq(%rip), %rsi
	movq	test_ctx(%rip), %r9
	movq	-32(%rbp), %rax
	movq	8(%rax), %r8
	movq	-32(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rdi
	addq	$24, %rdi
	subq	$8, %rsp
	pushq	%rsi
	movq	%rax, %rsi
	call	PKCS12_add_safe_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$298, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L89
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
.L89:
	movq	PKCS12_SAFEBAG_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	end_contentinfo_encrypted, .-end_contentinfo_encrypted
	.section	.rodata
.LC16:
	.string	"p7"
.LC17:
	.string	"NID_pkcs7_encrypted"
.LC18:
	.string	"bagnid"
.LC19:
	.string	"NID_pkcs7_data"
.LC20:
	.string	"bags"
	.text
	.type	decode_contentinfo, @function
decode_contentinfo:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_sk_type
	movq	%rax, %rdx
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$315, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L100
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -20(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L94
	movl	-20(%rbp), %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$26, %r9d
	movl	%esi, %r8d
	movl	$320, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L101
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS12_unpack_p7encdata@PLT
	movq	%rax, -8(%rbp)
	jmp	.L96
.L94:
	movl	-20(%rbp), %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$21, %r9d
	movl	%esi, %r8d
	movl	$324, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L102
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_unpack_p7data@PLT
	movq	%rax, -8(%rbp)
.L96:
	movq	-8(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$328, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L103
	movq	-8(%rbp), %rax
	jmp	.L99
.L100:
	nop
	jmp	.L93
.L101:
	nop
	jmp	.L93
.L102:
	nop
	jmp	.L93
.L103:
	nop
.L93:
	movl	$0, %eax
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	decode_contentinfo, .-decode_contentinfo
	.section	.rodata
.LC21:
	.string	"Adding attribute %s = %s"
	.align 8
.LC22:
	.string	"PKCS12_add_friendlyname(bag, p_attr->value, -1)"
	.align 8
.LC23:
	.string	"PKCS12_add_localkeyid(bag, (unsigned char *)p_attr->value, strlen(p_attr->value))"
	.align 8
.LC24:
	.string	"PKCS12_add1_attr_by_txt(bag, p_attr->oid, MBSTRING_ASC, (unsigned char *)p_attr->value, strlen(p_attr->value))"
	.text
	.type	add_attributes, @function
add_attributes:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$0, -4(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L107
	movl	$1, %eax
	jmp	.L114
.L113:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$353, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, -28(%rbp)
	cmpl	$156, -28(%rbp)
	jne	.L108
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS12_add_friendlyname_utf8@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$357, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L109
	jmp	.L110
.L108:
	cmpl	$157, -28(%rbp)
	jne	.L111
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS12_add_localkeyid@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$360, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L109
	jmp	.L110
.L111:
	cmpl	$1283, -28(%rbp)
	jne	.L112
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get0_attrs@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	$6, %esi
	movl	%eax, %edi
	call	X509_ATTRIBUTE_create@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509at_add1_attr@PLT
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_set0_attrs@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ATTRIBUTE_free@PLT
	jmp	.L109
.L112:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movq	-56(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$4097, %edx
	movq	%rax, %rdi
	call	PKCS12_add1_attr_by_txt@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$371, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L115
.L109:
	addq	$16, -16(%rbp)
.L107:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L113
	movl	$1, -4(%rbp)
	jmp	.L110
.L115:
	nop
.L110:
	movl	-4(%rbp), %eax
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	add_attributes, .-add_attributes
	.section	.rodata
.LC25:
	.string	"Adding certificate <%s>"
.LC26:
	.string	"bag"
.LC27:
	.string	"add_attributes(bag, attrs)"
	.text
	.globl	add_certbag
	.type	add_certbag, @function
add_certbag:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L122
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	load_cert_asn1
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$394, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L119
	movq	-40(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L116
.L119:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_NAME_oneline@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$400, %esi
	movl	$0, %eax
	call	test_info@PLT
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$401, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	PKCS12_add_cert@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$404, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L120
	movq	-40(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L121
.L120:
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_attributes
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$409, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L123
	movq	-40(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L121
.L123:
	nop
.L121:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	jmp	.L116
.L122:
	nop
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	add_certbag, .-add_certbag
	.section	.rodata
.LC28:
	.string	"Adding key"
	.text
	.globl	add_keybag
	.type	add_keybag, @function
add_keybag:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L132
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$426, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	load_pkey_asn1
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$429, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L127
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L124
.L127:
	movl	legacy(%rip), %eax
	testl	%eax, %eax
	je	.L128
	movq	-56(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	16(%rax), %edx
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	PKCS12_add_key@PLT
	movq	%rax, -8(%rbp)
	jmp	.L129
.L128:
	movq	test_propq(%rip), %rsi
	movq	test_ctx(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movl	(%rax), %r8d
	movq	-56(%rbp), %rax
	movl	16(%rax), %edx
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	pushq	%rsi
	pushq	%rcx
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	PKCS12_add_key_ex@PLT
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
.L129:
	movq	-8(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$439, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L130
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L131
.L130:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_attributes
	testl	%eax, %eax
	jne	.L133
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L131
.L133:
	nop
.L131:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	jmp	.L124
.L132:
	nop
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	add_keybag, .-add_keybag
	.section	.rodata
.LC29:
	.string	"Adding secret <%s>"
	.text
	.globl	add_secretbag
	.type	add_secretbag, @function
add_secretbag:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L138
	movq	-40(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$457, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rdi
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	call	PKCS12_add_secret@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$460, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L137
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L134
.L137:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_attributes
	testl	%eax, %eax
	jne	.L134
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L134
.L138:
	nop
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	add_secretbag, .-add_secretbag
	.section	.rodata
.LC30:
	.string	"av"
.LC31:
	.string	"(char *)value"
.LC32:
	.string	"txt"
	.align 8
.LC33:
	.string	"(char *)av->value.utf8string->data"
	.align 8
.LC34:
	.string	"(char *)av->value.octet_string->data"
	.text
	.type	check_asn1_string, @function
check_asn1_string:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$478, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L151
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$30, %eax
	je	.L142
	cmpl	$30, %eax
	jg	.L152
	cmpl	$4, %eax
	je	.L144
	cmpl	$12, %eax
	je	.L145
	jmp	.L152
.L142:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_uni2asc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC31(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$485, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L153
	jmp	.L141
.L145:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %r12
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	movq	-48(%rbp), %rdi
	leaq	.LC33(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$490, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L154
	jmp	.L141
.L144:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %r12
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	movq	-48(%rbp), %rdi
	leaq	.LC34(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$496, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L155
	jmp	.L147
.L153:
	nop
	jmp	.L147
.L154:
	nop
.L147:
	movl	$1, -20(%rbp)
	jmp	.L141
.L151:
	nop
	jmp	.L141
.L152:
	nop
	jmp	.L141
.L155:
	nop
.L141:
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$508, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	check_asn1_string, .-check_asn1_string
	.section	.rodata
.LC35:
	.string	"X509_ATTRIBUTE_count(attr)"
	.align 8
.LC36:
	.string	"check_asn1_string(av, p_attr->value)"
	.text
	.type	check_attrs, @function
check_attrs:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L157
.L167:
	movq	-176(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ATTRIBUTE_sk_type
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ATTRIBUTE_get0_object@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movl	$0, %ecx
	movl	$100, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	jmp	.L158
.L166:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L159
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ATTRIBUTE_count@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$531, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L169
	movl	$0, -12(%rbp)
	jmp	.L162
.L164:
	movl	-12(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_ATTRIBUTE_get0_type@PLT
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_asn1_string
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$537, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L170
	addl	$1, -12(%rbp)
.L162:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ATTRIBUTE_count@PLT
	cmpl	%eax, -12(%rbp)
	jl	.L164
	jmp	.L165
.L159:
	addq	$16, -24(%rbp)
.L158:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L166
.L165:
	addl	$1, -8(%rbp)
.L157:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ATTRIBUTE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -8(%rbp)
	jl	.L167
	movl	$1, -4(%rbp)
	jmp	.L161
.L169:
	nop
	jmp	.L161
.L170:
	nop
.L161:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	check_attrs, .-check_attrs
	.section	.rodata
.LC37:
	.string	"NID_certBag"
.LC38:
	.string	"PKCS12_SAFEBAG_get_nid(bag)"
.LC39:
	.string	"NID_x509Certificate"
	.align 8
.LC40:
	.string	"PKCS12_SAFEBAG_get_bag_nid(bag)"
.LC41:
	.string	"x509"
.LC42:
	.string	"X509_cmp(x509, ref_x509)"
	.text
	.globl	check_certbag
	.type	check_certbag, @function
check_certbag:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L179
	movq	-56(%rbp), %rax
	movl	48(%rax), %ebx
	leal	1(%rbx), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS12_SAFEBAG_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$561, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L174
	movq	-56(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L171
.L174:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get0_attrs@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	check_attrs
	testl	%eax, %eax
	je	.L175
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get_nid@PLT
	movl	%eax, %esi
	leaq	.LC37(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$152, %r9d
	movl	%esi, %r8d
	movl	$566, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L175
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get_bag_nid@PLT
	movl	%eax, %esi
	leaq	.LC39(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$158, %r9d
	movl	%esi, %r8d
	movl	$567, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L176
.L175:
	movq	-56(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L171
.L176:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get1_cert@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC41(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$572, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L177
	movq	-56(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L178
.L177:
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	load_cert_asn1
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_cmp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$577, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L180
	movq	-56(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L178
.L180:
	nop
.L178:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	jmp	.L171
.L179:
	nop
.L171:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	check_certbag, .-check_certbag
	.section	.rodata
.LC43:
	.string	"pkey = EVP_PKCS82PKEY(p8c)"
.LC44:
	.string	"p8"
.LC45:
	.string	"pkey = EVP_PKCS82PKEY(p8)"
.LC46:
	.string	"EVP_PKEY_eq(pkey, ref_pkey)"
	.text
	.globl	check_keybag
	.type	check_keybag, @function
check_keybag:
.LFB609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L197
	movq	-72(%rbp), %rax
	movl	48(%rax), %ebx
	leal	1(%rbx), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS12_SAFEBAG_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$597, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L184
	movq	-72(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L181
.L184:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get0_attrs@PLT
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	check_attrs
	testl	%eax, %eax
	jne	.L185
	movq	-72(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L181
.L185:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get_nid@PLT
	cmpl	$150, %eax
	je	.L186
	cmpl	$151, %eax
	je	.L187
	jmp	.L196
.L186:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get0_p8inf@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKCS82PKEY@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$610, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L198
	movq	-72(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L190
.L187:
	movl	legacy(%rip), %eax
	testl	%eax, %eax
	je	.L192
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS12_decrypt_skey@PLT
	movq	%rax, -40(%rbp)
	jmp	.L193
.L192:
	movq	test_propq(%rip), %r12
	movq	test_ctx(%rip), %rbx
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-48(%rbp), %rax
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	PKCS12_decrypt_skey_ex@PLT
	movq	%rax, -40(%rbp)
.L193:
	movq	-40(%rbp), %rax
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$621, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L194
	movq	-72(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L190
.L194:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKCS82PKEY@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC45(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$625, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L195
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	movq	-72(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L190
.L195:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	jmp	.L191
.L196:
	movq	-72(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L190
.L198:
	nop
.L191:
	movl	-84(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	load_pkey_asn1
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$640, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L199
	movq	-72(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L190
.L199:
	nop
.L190:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	jmp	.L181
.L197:
	nop
.L181:
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	check_keybag, .-check_keybag
	.section	.rodata
.LC47:
	.string	"NID_secretBag"
.LC48:
	.string	"secret_nid"
	.align 8
.LC49:
	.string	"check_asn1_string(PKCS12_SAFEBAG_get0_bag_obj(bag), secret)"
	.text
	.globl	check_secretbag
	.type	check_secretbag, @function
check_secretbag:
.LFB610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L205
	movq	-40(%rbp), %rax
	movl	48(%rax), %ebx
	leal	1(%rbx), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS12_SAFEBAG_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$655, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L203
	movq	-40(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L200
.L203:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get0_attrs@PLT
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	check_attrs
	testl	%eax, %eax
	je	.L204
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get_nid@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$154, %r9d
	movl	%esi, %r8d
	movl	$661, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L204
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get_bag_nid@PLT
	movl	%eax, %esi
	movl	-44(%rbp), %edi
	leaq	.LC48(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$662, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L204
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get0_bag_obj@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	check_asn1_string
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC49(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$663, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L200
.L204:
	movq	-40(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L200
.L205:
	nop
.L200:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	check_secretbag, .-check_secretbag
	.section	.rodata
.LC50:
	.string	"pb->safes"
	.text
	.globl	start_check_pkcs12
	.type	start_check_pkcs12, @function
start_check_pkcs12:
.LFB611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L211
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	from_bio_p12
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$676, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L209
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L206
.L209:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_unpack_authsafes@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC50(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$681, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L210
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
.L210:
	movq	-24(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_free@PLT
	jmp	.L206
.L211:
	nop
.L206:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	start_check_pkcs12, .-start_check_pkcs12
	.globl	start_check_pkcs12_with_mac
	.type	start_check_pkcs12_with_mac, @function
start_check_pkcs12_with_mac:
.LFB612:
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
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L217
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	from_bio_p12
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$696, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L215
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L212
.L215:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_unpack_authsafes@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC50(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$701, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L216
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
.L216:
	movq	-24(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_free@PLT
	jmp	.L212
.L217:
	nop
.L212:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	start_check_pkcs12_with_mac, .-start_check_pkcs12_with_mac
	.globl	start_check_pkcs12_file
	.type	start_check_pkcs12_file, @function
start_check_pkcs12_file:
.LFB613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L223
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	read_p12
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$716, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L221
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L218
.L221:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_unpack_authsafes@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC50(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$721, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L222
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
.L222:
	movq	-24(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_free@PLT
	jmp	.L218
.L223:
	nop
.L218:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	start_check_pkcs12_file, .-start_check_pkcs12_file
	.globl	start_check_pkcs12_file_with_mac
	.type	start_check_pkcs12_file_with_mac, @function
start_check_pkcs12_file_with_mac:
.LFB614:
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
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L229
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_p12
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$736, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L227
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L224
.L227:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_unpack_authsafes@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC50(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$741, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L228
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
.L228:
	movq	-24(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_free@PLT
	jmp	.L224
.L229:
	nop
.L224:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	start_check_pkcs12_file_with_mac, .-start_check_pkcs12_file_with_mac
	.globl	end_check_pkcs12
	.type	end_check_pkcs12, @function
end_check_pkcs12:
.LFB615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L233
	movq	PKCS7_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	jmp	.L230
.L233:
	nop
.L230:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	end_check_pkcs12, .-end_check_pkcs12
	.section	.rodata
.LC51:
	.string	"pb->bags"
.LC52:
	.string	"Decoding %d bags"
	.text
	.globl	start_check_contentinfo
	.type	start_check_contentinfo, @function
start_check_contentinfo:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L238
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	leal	1(%rax), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, 32(%rdx)
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rcx
	movl	$0, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	decode_contentinfo
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC51(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$764, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L237
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L234
.L237:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS12_SAFEBAG_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %ecx
	leaq	.LC52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$768, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L234
.L238:
	nop
.L234:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	start_check_contentinfo, .-start_check_contentinfo
	.globl	start_check_contentinfo_encrypted
	.type	start_check_contentinfo_encrypted, @function
start_check_contentinfo_encrypted:
.LFB617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L243
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	leal	1(%rax), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, 32(%rdx)
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rcx
	movq	-16(%rbp), %rdx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	decode_contentinfo
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC51(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$778, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L242
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L239
.L242:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS12_SAFEBAG_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %ecx
	leaq	.LC52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$782, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L239
.L243:
	nop
.L239:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	start_check_contentinfo_encrypted, .-start_check_contentinfo_encrypted
	.section	.rodata
.LC53:
	.string	"pb->bag_idx"
	.align 8
.LC54:
	.string	"sk_PKCS12_SAFEBAG_num(pb->bags)"
	.text
	.globl	end_check_contentinfo
	.type	end_check_contentinfo, @function
end_check_contentinfo:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L248
	movq	-24(%rbp), %rax
	movl	48(%rax), %ebx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS12_SAFEBAG_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %esi
	leaq	.LC53(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$791, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L247
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
.L247:
	movq	PKCS12_SAFEBAG_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	jmp	.L244
.L248:
	nop
.L244:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	end_check_contentinfo, .-end_check_contentinfo
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

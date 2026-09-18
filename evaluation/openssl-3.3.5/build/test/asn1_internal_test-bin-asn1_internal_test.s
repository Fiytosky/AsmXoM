	.file	"asn1_internal_test.c"
	.text
	.type	ERR_GET_LIB, @function
ERR_GET_LIB:
.LFB345:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L2
	movl	$2, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	shrq	$23, %rax
	movzbl	%al, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE345:
	.size	ERR_GET_LIB, .-ERR_GET_LIB
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB347:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L5
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE347:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.section	.rodata
	.align 32
	.type	tbl_standard, @object
	.size	tbl_standard, 1120
tbl_standard:
	.long	13
	.zero	4
	.quad	1
	.quad	64
	.quad	10246
	.quad	0
	.long	14
	.zero	4
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.long	15
	.zero	4
	.quad	1
	.quad	128
	.quad	10246
	.quad	0
	.long	16
	.zero	4
	.quad	1
	.quad	128
	.quad	10246
	.quad	0
	.long	17
	.zero	4
	.quad	1
	.quad	64
	.quad	10246
	.quad	0
	.long	18
	.zero	4
	.quad	1
	.quad	64
	.quad	10246
	.quad	0
	.long	48
	.zero	4
	.quad	1
	.quad	128
	.quad	16
	.quad	2
	.long	49
	.zero	4
	.quad	1
	.quad	-1
	.quad	10262
	.quad	0
	.long	54
	.zero	4
	.quad	1
	.quad	-1
	.quad	10262
	.quad	0
	.long	55
	.zero	4
	.quad	1
	.quad	-1
	.quad	10246
	.quad	0
	.long	99
	.zero	4
	.quad	1
	.quad	32768
	.quad	10246
	.quad	0
	.long	100
	.zero	4
	.quad	1
	.quad	32768
	.quad	10246
	.quad	0
	.long	101
	.zero	4
	.quad	1
	.quad	32768
	.quad	10246
	.quad	0
	.long	105
	.zero	4
	.quad	1
	.quad	64
	.quad	2
	.quad	2
	.long	156
	.zero	4
	.quad	-1
	.quad	-1
	.quad	2048
	.quad	2
	.long	173
	.zero	4
	.quad	1
	.quad	32768
	.quad	10246
	.quad	0
	.long	174
	.zero	4
	.quad	-1
	.quad	-1
	.quad	2
	.quad	2
	.long	391
	.zero	4
	.quad	1
	.quad	-1
	.quad	16
	.quad	2
	.long	417
	.zero	4
	.quad	-1
	.quad	-1
	.quad	2048
	.quad	2
	.long	460
	.zero	4
	.quad	1
	.quad	256
	.quad	16
	.quad	2
	.long	957
	.zero	4
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.long	1004
	.zero	4
	.quad	1
	.quad	12
	.quad	1
	.quad	2
	.long	1005
	.zero	4
	.quad	1
	.quad	13
	.quad	1
	.quad	2
	.long	1006
	.zero	4
	.quad	1
	.quad	11
	.quad	1
	.quad	2
	.long	1090
	.zero	4
	.quad	3
	.quad	3
	.quad	2
	.quad	2
	.long	1091
	.zero	4
	.quad	3
	.quad	3
	.quad	1
	.quad	2
	.long	1092
	.zero	4
	.quad	0
	.quad	-1
	.quad	8192
	.quad	2
	.long	1208
	.zero	4
	.quad	1
	.quad	128
	.quad	8192
	.quad	2
.LC0:
	.string	"0"
.LC1:
	.string	"last_nid"
.LC2:
	.string	"../test/asn1_internal_test.c"
	.align 8
.LC3:
	.string	"asn1 tbl_standard: Table order OK"
	.align 8
.LC4:
	.string	"asn1 tbl_standard: out of order"
	.align 8
.LC5:
	.string	"asn1 tbl_standard: Index %zu, NID %d, Name=%s"
	.text
	.type	test_tbl_standard, @function
test_tbl_standard:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$-1, -12(%rbp)
	leaq	tbl_standard(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L8
.L11:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L9
	movl	$0, -12(%rbp)
	jmp	.L10
.L9:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	addq	$1, -24(%rbp)
	addq	$40, -8(%rbp)
.L8:
	cmpq	$27, -24(%rbp)
	jbe	.L11
.L10:
	movl	-12(%rbp), %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$49, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L12
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, %eax
	jmp	.L13
.L12:
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$54, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	tbl_standard(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L14
.L15:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rsi
	movl	$0, %eax
	call	test_note@PLT
	addq	$1, -24(%rbp)
	addq	$40, -8(%rbp)
.L14:
	cmpq	$27, -24(%rbp)
	jbe	.L15
	movl	$0, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_tbl_standard, .-test_tbl_standard
	.section	.data.rel,"aw"
	.align 32
	.type	standard_methods, @object
	.size	standard_methods, 128
standard_methods:
	.quad	ossl_rsa_asn1_meths
	.quad	ossl_rsa_asn1_meths+320
	.quad	ossl_dh_asn1_meth
	.quad	ossl_dsa_asn1_meths
	.quad	ossl_dsa_asn1_meths+320
	.quad	ossl_dsa_asn1_meths+640
	.quad	ossl_dsa_asn1_meths+960
	.quad	ossl_dsa_asn1_meths+1280
	.quad	ossl_eckey_asn1_meth
	.quad	ossl_rsa_pss_asn1_meth
	.quad	ossl_dhx_asn1_meth
	.quad	ossl_ecx25519_asn1_meth
	.quad	ossl_ecx448_asn1_meth
	.quad	ossl_ed25519_asn1_meth
	.quad	ossl_ed448_asn1_meth
	.quad	ossl_sm2_asn1_meth
	.section	.rodata
	.align 8
.LC6:
	.string	"((*tmp)->pem_str == NULL && ((*tmp)->pkey_flags & ASN1_PKEY_ALIAS) != 0) || ((*tmp)->pem_str != NULL && ((*tmp)->pkey_flags & ASN1_PKEY_ALIAS) == 0)"
	.align 8
.LC7:
	.string	"asn1 standard methods: Index %zu, pkey ID %d, Name=%s"
.LC8:
	.string	"last_pkey_id"
	.align 8
.LC9:
	.string	"asn1 standard methods: Table order OK"
	.align 8
.LC10:
	.string	"asn1 standard methods: out of order"
	.text
	.type	test_standard_methods, @function
test_standard_methods:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$-1, -12(%rbp)
	movl	$1, -28(%rbp)
	leaq	standard_methods(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L17
.L25:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L18
	movl	$0, -12(%rbp)
	jmp	.L19
.L18:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L20
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L21
.L20:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L22
.L21:
	movl	$1, %ecx
	jmp	.L23
.L22:
	movl	$0, %ecx
.L23:
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$94, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L24
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	leaq	.LC7(%rip), %rdi
	movq	%rax, %rsi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, -28(%rbp)
.L24:
	addq	$1, -24(%rbp)
	addq	$8, -8(%rbp)
.L17:
	cmpq	$15, -24(%rbp)
	jbe	.L25
.L19:
	movl	-12(%rbp), %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$102, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L26
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$103, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	-28(%rbp), %eax
	jmp	.L27
.L26:
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	leaq	standard_methods(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L28
.L29:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	leaq	.LC7(%rip), %rdi
	movq	%rax, %rsi
	movl	$0, %eax
	call	test_note@PLT
	addq	$1, -24(%rbp)
	addq	$8, -8(%rbp)
.L28:
	cmpq	$15, -24(%rbp)
	jbe	.L29
	movl	$0, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	test_standard_methods, .-test_standard_methods
	.section	.rodata
.LC11:
	.string	"rsa = RSA_new()"
.LC12:
	.string	"n = BN_new()"
.LC13:
	.string	"e = BN_new()"
.LC14:
	.string	"RSA_set0_key(rsa, n, e, NULL)"
.LC15:
	.string	"i2d_RSAPrivateKey(rsa, NULL)"
	.text
	.type	test_empty_nonoptional_content, @function
test_empty_nonoptional_content:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	call	RSA_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$131, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$132, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$133, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RSA_set0_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$134, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L35
	movq	$0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_RSAPrivateKey@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$143, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L36
	movl	$1, -20(%rbp)
	jmp	.L33
.L35:
	nop
	jmp	.L33
.L36:
	nop
.L33:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	test_empty_nonoptional_content, .-test_empty_nonoptional_content
	.section	.rodata
.LC16:
	.string	"expected"
	.align 8
.LC17:
	.string	"ASN1_mbstring_copy(NULL, univ, 4, MBSTRING_UNIV, B_ASN1_UTF8STRING)"
	.text
	.type	test_unicode, @function
test_unicode:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L38
.L40:
	movq	-24(%rbp), %rax
	movl	$8192, %r8d
	movl	$4100, %ecx
	movl	$4, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_mbstring_copy@PLT
	movl	%eax, %esi
	movl	-36(%rbp), %edi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$165, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L39
	movl	$0, -4(%rbp)
.L39:
	addq	$4, -24(%rbp)
.L38:
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L40
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	test_unicode, .-test_unicode
	.type	test_unicode_range, @function
test_unicode_range:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movabsq	$-11540474045136896, %rax
	movabsq	$-263882775986176, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$0, -16(%rbp)
	movabsq	$-9288674217295872, %rax
	movabsq	$549755818240, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movabsq	$72057594021150720, %rax
	movq	%rax, -51(%rbp)
	movl	$1, -4(%rbp)
	leaq	-32(%rbp), %rax
	movl	$12, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	test_unicode
	testl	%eax, %eax
	jne	.L43
	movl	$0, -4(%rbp)
.L43:
	leaq	-64(%rbp), %rax
	movl	$-1, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	call	test_unicode
	testl	%eax, %eax
	jne	.L44
	movl	$0, -4(%rbp)
.L44:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	test_unicode_range, .-test_unicode_range
	.type	test_obj_create_once, @function
test_obj_create_once:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	call	ERR_set_mark@PLT
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OBJ_create@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L47
	call	ERR_peek_last_error@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_LIB
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movl	%eax, -24(%rbp)
	cmpl	$8, -20(%rbp)
	jne	.L48
	cmpl	$102, -24(%rbp)
	je	.L47
.L48:
	call	ERR_clear_last_mark@PLT
	movl	$0, %eax
	jmp	.L49
.L47:
	call	ERR_pop_to_mark@PLT
	movl	$1, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	test_obj_create_once, .-test_obj_create_once
	.section	.rodata
.LC18:
	.string	"custom1"
	.align 8
.LC19:
	.string	"test_obj_create_once(NULL, sn_prefix \"1\", NULL)"
.LC20:
	.string	"NID_undef"
.LC21:
	.string	"OBJ_sn2nid(sn_prefix \"1\")"
.LC22:
	.string	"custom2"
	.align 8
.LC23:
	.string	"test_obj_create_once(NULL, NULL, ln_prefix \"2\")"
.LC24:
	.string	"OBJ_ln2nid(ln_prefix \"2\")"
.LC25:
	.string	"custom3"
	.align 8
.LC26:
	.string	"test_obj_create_once(NULL, sn_prefix \"3\", ln_prefix \"3\")"
.LC27:
	.string	"OBJ_sn2nid(sn_prefix \"3\")"
.LC28:
	.string	"OBJ_ln2nid(ln_prefix \"3\")"
.LC29:
	.string	"1.3.6.1.4.1.16604.998866.4"
	.align 8
.LC30:
	.string	"test_obj_create_once(arc \"4\", NULL, NULL)"
.LC31:
	.string	"custom5"
.LC32:
	.string	"1.3.6.1.4.1.16604.998866.5"
	.align 8
.LC33:
	.string	"test_obj_create_once(arc \"5\", sn_prefix \"5\", NULL)"
.LC34:
	.string	"OBJ_sn2nid(sn_prefix \"5\")"
.LC35:
	.string	"custom6"
.LC36:
	.string	"1.3.6.1.4.1.16604.998866.6"
	.align 8
.LC37:
	.string	"test_obj_create_once(arc \"6\", NULL, ln_prefix \"6\")"
.LC38:
	.string	"OBJ_ln2nid(ln_prefix \"6\")"
.LC39:
	.string	"custom7"
.LC40:
	.string	"1.3.6.1.4.1.16604.998866.7"
	.align 8
.LC41:
	.string	"test_obj_create_once(arc \"7\", sn_prefix \"7\", ln_prefix \"7\")"
.LC42:
	.string	"OBJ_sn2nid(sn_prefix \"7\")"
.LC43:
	.string	"OBJ_ln2nid(ln_prefix \"7\")"
	.align 8
.LC44:
	.string	"test_obj_create_once(NULL, NULL, NULL)"
.LC45:
	.string	"custom8"
.LC46:
	.string	"25.8"
	.align 8
.LC47:
	.string	"test_obj_create_once(broken_arc \"8\", sn_prefix \"8\", ln_prefix \"8\")"
	.text
	.type	test_obj_create, @function
test_obj_create:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC18(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_obj_create_once
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$231, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$232, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L51
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	test_obj_create_once
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$233, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	OBJ_ln2nid@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$234, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L51
	leaq	.LC25(%rip), %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_obj_create_once
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$235, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$236, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L51
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	call	OBJ_ln2nid@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$237, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L51
	leaq	.LC29(%rip), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	test_obj_create_once
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$238, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
	leaq	.LC31(%rip), %rcx
	leaq	.LC32(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_obj_create_once
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$239, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$240, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L51
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	test_obj_create_once
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$241, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdi
	call	OBJ_ln2nid@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$242, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L51
	leaq	.LC39(%rip), %rdx
	leaq	.LC39(%rip), %rcx
	leaq	.LC40(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_obj_create_once
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$243, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
	leaq	.LC39(%rip), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$245, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L51
	leaq	.LC39(%rip), %rax
	movq	%rax, %rdi
	call	OBJ_ln2nid@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$246, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	jne	.L52
.L51:
	movl	$0, %eax
	jmp	.L53
.L52:
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	test_obj_create_once
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$249, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L54
	leaq	.LC45(%rip), %rdx
	leaq	.LC45(%rip), %rcx
	leaq	.LC46(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_obj_create_once
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC47(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$250, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L55
.L54:
	movl	$0, %eax
	jmp	.L53
.L55:
	movl	$1, %eax
.L53:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	test_obj_create, .-test_obj_create
	.section	.rodata
.LC48:
	.string	"OBJ_nid2obj(NID_undef)"
.LC49:
	.string	"OBJ_nid2sn(NID_undef)"
.LC50:
	.string	"OBJ_nid2ln(NID_undef)"
	.text
	.type	test_obj_nid_undef, @function
test_obj_nid_undef:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$259, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L57
	movl	$0, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$260, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L57
	movl	$0, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, %rcx
	leaq	.LC50(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$261, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L58
.L57:
	movl	$0, %eax
	jmp	.L59
.L58:
	movl	$1, %eax
.L59:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	test_obj_nid_undef, .-test_obj_nid_undef
	.section	.rodata
.LC51:
	.string	"test_tbl_standard"
.LC52:
	.string	"test_standard_methods"
	.align 8
.LC53:
	.string	"test_empty_nonoptional_content"
.LC54:
	.string	"test_unicode_range"
.LC55:
	.string	"test_obj_create"
.LC56:
	.string	"test_obj_nid_undef"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_tbl_standard(%rip), %rdx
	leaq	.LC51(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_standard_methods(%rip), %rdx
	leaq	.LC52(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_empty_nonoptional_content(%rip), %rdx
	leaq	.LC53(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unicode_range(%rip), %rdx
	leaq	.LC54(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_obj_create(%rip), %rdx
	leaq	.LC55(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_obj_nid_undef(%rip), %rdx
	leaq	.LC56(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

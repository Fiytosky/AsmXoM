	.file	"v3ext.c"
	.text
	.type	ossl_check_const_IPAddressOrRange_sk_type, @function
ossl_check_const_IPAddressOrRange_sk_type:
.LFB528:
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
.LFE528:
	.size	ossl_check_const_IPAddressOrRange_sk_type, .-ossl_check_const_IPAddressOrRange_sk_type
	.type	ossl_check_IPAddressFamily_type, @function
ossl_check_IPAddressFamily_type:
.LFB533:
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
.LFE533:
	.size	ossl_check_IPAddressFamily_type, .-ossl_check_IPAddressFamily_type
	.type	ossl_check_const_IPAddressFamily_sk_type, @function
ossl_check_const_IPAddressFamily_sk_type:
.LFB534:
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
.LFE534:
	.size	ossl_check_const_IPAddressFamily_sk_type, .-ossl_check_const_IPAddressFamily_sk_type
	.type	ossl_check_IPAddressFamily_sk_type, @function
ossl_check_IPAddressFamily_sk_type:
.LFB535:
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
.LFE535:
	.size	ossl_check_IPAddressFamily_sk_type, .-ossl_check_IPAddressFamily_sk_type
	.type	ossl_check_IPAddressFamily_freefunc_type, @function
ossl_check_IPAddressFamily_freefunc_type:
.LFB538:
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
.LFE538:
	.size	ossl_check_IPAddressFamily_freefunc_type, .-ossl_check_IPAddressFamily_freefunc_type
	.local	infile
	.comm	infile,8,8
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"b = BIO_new_file(infile, \"r\")"
.LC2:
	.string	"../test/v3ext.c"
	.align 8
.LC3:
	.string	"x = PEM_read_bio_X509(b, NULL, NULL, NULL)"
.LC4:
	.string	"6"
.LC5:
	.string	"pathlen = X509_get_pathlen(x)"
	.text
	.type	test_pathlen, @function
test_pathlen:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -12(%rbp)
	movq	infile(%rip), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$29, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L16
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_X509@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$30, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L16
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_pathlen@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$6, %r9d
	movl	%esi, %r8d
	movl	$31, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L16
	movl	$1, -12(%rbp)
	jmp	.L14
.L16:
	nop
.L14:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	test_pathlen, .-test_pathlen
	.section	.rodata
.LC6:
	.string	"asid1"
.LC7:
	.string	"asid2"
.LC8:
	.string	"asid3"
.LC9:
	.string	"val1 = ASN1_INTEGER_new()"
	.align 8
.LC10:
	.string	"ASN1_INTEGER_set_int64(val1, 64496)"
	.align 8
.LC11:
	.string	"X509v3_asid_add_id_or_range(asid1, V3_ASID_ASNUM, val1, NULL)"
.LC12:
	.string	"val2 = ASN1_INTEGER_new()"
	.align 8
.LC13:
	.string	"ASN1_INTEGER_set_int64(val2, 64497)"
	.align 8
.LC14:
	.string	"X509v3_asid_add_id_or_range(asid2, V3_ASID_ASNUM, val2, NULL)"
	.align 8
.LC15:
	.string	"X509v3_asid_add_id_or_range(asid3, V3_ASID_ASNUM, val1, val2)"
	.align 8
.LC16:
	.string	"X509v3_asid_subset(NULL, NULL)"
	.align 8
.LC17:
	.string	"X509v3_asid_subset(NULL, asid1)"
	.align 8
.LC18:
	.string	"X509v3_asid_subset(asid1, asid1)"
	.align 8
.LC19:
	.string	"X509v3_asid_subset(asid2, asid2)"
	.align 8
.LC20:
	.string	"X509v3_asid_subset(asid1, asid3)"
	.align 8
.LC21:
	.string	"X509v3_asid_subset(asid2, asid3)"
	.align 8
.LC22:
	.string	"X509v3_asid_subset(asid3, asid3)"
	.align 8
.LC23:
	.string	"X509v3_asid_subset(asid4, asid1)"
	.align 8
.LC24:
	.string	"X509v3_asid_subset(asid4, asid2)"
	.align 8
.LC25:
	.string	"X509v3_asid_subset(asid4, asid3)"
	.align 8
.LC26:
	.string	"X509v3_asid_subset(asid1, NULL)"
	.align 8
.LC27:
	.string	"X509v3_asid_subset(asid1, asid2)"
	.align 8
.LC28:
	.string	"X509v3_asid_subset(asid2, asid1)"
	.align 8
.LC29:
	.string	"X509v3_asid_subset(asid3, asid1)"
	.align 8
.LC30:
	.string	"X509v3_asid_subset(asid3, asid2)"
	.align 8
.LC31:
	.string	"X509v3_asid_subset(asid1, asid4)"
	.align 8
.LC32:
	.string	"X509v3_asid_subset(asid2, asid4)"
	.align 8
.LC33:
	.string	"X509v3_asid_subset(asid3, asid4)"
	.text
	.type	test_asid, @function
test_asid:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	call	ASIdentifiers_new@PLT
	movq	%rax, -32(%rbp)
	call	ASIdentifiers_new@PLT
	movq	%rax, -40(%rbp)
	call	ASIdentifiers_new@PLT
	movq	%rax, -48(%rbp)
	call	ASIdentifiers_new@PLT
	movq	%rax, -56(%rbp)
	movl	$0, -20(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$50, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	movq	-40(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$51, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	movq	-48(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$52, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	call	ASN1_INTEGER_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$55, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L36
	movq	-8(%rbp), %rax
	movl	$64496, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set_int64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$56, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L36
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509v3_asid_add_id_or_range@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$59, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	movq	$0, -8(%rbp)
	call	ASN1_INTEGER_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$63, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	movq	-16(%rbp), %rax
	movl	$64497, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set_int64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$64, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509v3_asid_add_id_or_range@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$67, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L39
	movq	$0, -16(%rbp)
	call	ASN1_INTEGER_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$71, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L40
	movq	-8(%rbp), %rax
	movl	$64496, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set_int64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$72, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L40
	call	ASN1_INTEGER_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$73, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L40
	movq	-16(%rbp), %rax
	movl	$64497, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set_int64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$74, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L40
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509v3_asid_add_id_or_range@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$81, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	movq	$0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, %esi
	movl	$0, %edi
	call	X509v3_asid_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$86, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509v3_asid_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$87, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_asid_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$88, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_asid_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$89, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_asid_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$90, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_asid_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$91, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_asid_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$92, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_asid_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$93, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_asid_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$94, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_asid_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$95, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509v3_asid_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$99, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L43
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_asid_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$100, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L43
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_asid_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$101, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L43
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_asid_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$102, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L43
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_asid_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$103, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L43
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_asid_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$104, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L43
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_asid_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$105, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L43
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_asid_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$106, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L43
	movl	$1, -20(%rbp)
	jmp	.L20
.L35:
	nop
	jmp	.L20
.L36:
	nop
	jmp	.L20
.L37:
	nop
	jmp	.L20
.L38:
	nop
	jmp	.L20
.L39:
	nop
	jmp	.L20
.L40:
	nop
	jmp	.L20
.L41:
	nop
	jmp	.L20
.L42:
	nop
	jmp	.L20
.L43:
	nop
.L20:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASIdentifiers_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASIdentifiers_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ASIdentifiers_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ASIdentifiers_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	test_asid, .-test_asid
	.section	.rodata
.LC34:
	.string	"192.168.0.0"
.LC35:
	.string	"192.168.0.1"
.LC36:
	.string	"192.168.0.2"
.LC37:
	.string	"192.168.0.3"
.LC38:
	.string	"192.168.0.254"
.LC39:
	.string	"192.168.0.255"
.LC40:
	.string	"192.168.255.255"
.LC41:
	.string	"192.168.1.0"
.LC42:
	.string	"2001:0db8::0"
.LC43:
	.string	"2001:0db8::1"
.LC44:
	.string	"2001:0db8::2"
.LC45:
	.string	"2001:0db8::3"
.LC46:
	.string	"2001:0db8::fffe"
.LC47:
	.string	"2001:0db8::ffff"
.LC48:
	.string	"2001:0db8::0:0"
.LC49:
	.string	"2001:0db8::ffff:ffff"
.LC50:
	.string	"2001:0db8::1:0"
	.section	.data.rel.local,"aw"
	.align 32
	.type	ranges, @object
	.size	ranges, 576
ranges:
	.long	1
	.zero	4
	.quad	.LC34
	.quad	.LC35
	.long	0
	.zero	4
	.long	1
	.zero	4
	.quad	.LC34
	.quad	.LC36
	.long	1
	.zero	4
	.long	1
	.zero	4
	.quad	.LC34
	.quad	.LC37
	.long	0
	.zero	4
	.long	1
	.zero	4
	.quad	.LC34
	.quad	.LC38
	.long	1
	.zero	4
	.long	1
	.zero	4
	.quad	.LC34
	.quad	.LC39
	.long	0
	.zero	4
	.long	1
	.zero	4
	.quad	.LC35
	.quad	.LC39
	.long	1
	.zero	4
	.long	1
	.zero	4
	.quad	.LC35
	.quad	.LC35
	.long	0
	.zero	4
	.long	1
	.zero	4
	.quad	.LC34
	.quad	.LC40
	.long	0
	.zero	4
	.long	1
	.zero	4
	.quad	.LC41
	.quad	.LC40
	.long	1
	.zero	4
	.long	2
	.zero	4
	.quad	.LC42
	.quad	.LC43
	.long	0
	.zero	4
	.long	2
	.zero	4
	.quad	.LC42
	.quad	.LC44
	.long	1
	.zero	4
	.long	2
	.zero	4
	.quad	.LC42
	.quad	.LC45
	.long	0
	.zero	4
	.long	2
	.zero	4
	.quad	.LC42
	.quad	.LC46
	.long	1
	.zero	4
	.long	2
	.zero	4
	.quad	.LC42
	.quad	.LC47
	.long	0
	.zero	4
	.long	2
	.zero	4
	.quad	.LC43
	.quad	.LC47
	.long	1
	.zero	4
	.long	2
	.zero	4
	.quad	.LC43
	.quad	.LC43
	.long	0
	.zero	4
	.long	2
	.zero	4
	.quad	.LC48
	.quad	.LC49
	.long	0
	.zero	4
	.long	2
	.zero	4
	.quad	.LC50
	.quad	.LC49
	.long	1
	.zero	4
	.section	.rodata
.LC51:
	.string	"1"
.LC52:
	.string	"sk_IPAddressFamily_num(addr)"
.LC53:
	.string	"fam"
	.align 8
.LC54:
	.string	"IPAddressChoice_addressesOrRanges"
.LC55:
	.string	"fam->ipAddressChoice->type"
	.align 8
.LC56:
	.string	"sk_IPAddressOrRange_num(fam->ipAddressChoice->u.addressesOrRanges)"
.LC57:
	.string	"aorr"
.LC58:
	.string	"type"
.LC59:
	.string	"aorr->type"
	.text
	.type	check_addr, @function
check_addr:
.LFB578:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_IPAddressFamily_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %esi
	leaq	.LC51(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$151, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_IPAddressFamily_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC53(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$155, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L47
	movl	$0, %eax
	jmp	.L46
.L47:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %esi
	leaq	.LC54(%rip), %rcx
	leaq	.LC55(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$158, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L48
	movl	$0, %eax
	jmp	.L46
.L48:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_IPAddressOrRange_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %esi
	leaq	.LC51(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$161, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L49
	movl	$0, %eax
	jmp	.L46
.L49:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_IPAddressOrRange_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC57(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$165, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L50
	movl	$0, %eax
	jmp	.L46
.L50:
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movl	-28(%rbp), %edi
	leaq	.LC58(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$168, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L51
	movl	$0, %eax
	jmp	.L46
.L51:
	movl	$1, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	check_addr, .-check_addr
	.section	.rodata
.LC60:
	.string	"addr"
.LC61:
	.string	"X509v3_addr_canonize(addr)"
.LC62:
	.string	"ip1"
	.align 8
.LC63:
	.string	"ip1->length == 4 || ip1->length == 16"
.LC64:
	.string	"ip2"
.LC65:
	.string	"ip1->length"
.LC66:
	.string	"ip2->length"
	.align 8
.LC67:
	.string	"memcmp(ip1->data, ip2->data, ip1->length) <= 0"
	.align 8
.LC68:
	.string	"X509v3_addr_add_range(addr, ranges[i].afi, NULL, ip1->data, ip2->data)"
	.align 8
.LC69:
	.string	"X509v3_addr_is_canonical(addr)"
	.text
	.type	test_addr_ranges, @function
test_addr_ranges:
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
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -52(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L53
.L68:
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC60(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$183, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L70
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509v3_addr_canonize@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$189, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L71
	movq	-48(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+ranges(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	a2i_IPADDRESS@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC62(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$193, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L72
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L58
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	jne	.L59
.L58:
	movl	$1, %ecx
	jmp	.L60
.L59:
	movl	$0, %ecx
.L60:
	leaq	.LC63(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$195, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L73
	movq	-48(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+ranges(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	a2i_IPADDRESS@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC64(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$198, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L74
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	leaq	.LC65(%rip), %rcx
	leaq	.LC66(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$200, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L75
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$202, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L76
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	leaq	ranges(%rip), %rax
	movl	(%rcx,%rax), %esi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509v3_addr_add_range@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC68(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$205, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L77
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509v3_addr_is_canonical@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC69(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$208, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L78
	movq	-48(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+ranges(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_addr
	testl	%eax, %eax
	je	.L79
	movq	IPAddressFamily_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_IPAddressFamily_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_IPAddressFamily_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	$0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	$0, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	addq	$1, -48(%rbp)
.L53:
	cmpq	$17, -48(%rbp)
	jbe	.L68
	movl	$1, -52(%rbp)
	jmp	.L55
.L70:
	nop
	jmp	.L55
.L71:
	nop
	jmp	.L55
.L72:
	nop
	jmp	.L55
.L73:
	nop
	jmp	.L55
.L74:
	nop
	jmp	.L55
.L75:
	nop
	jmp	.L55
.L76:
	nop
	jmp	.L55
.L77:
	nop
	jmp	.L55
.L78:
	nop
	jmp	.L55
.L79:
	nop
.L55:
	movq	IPAddressFamily_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_IPAddressFamily_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_IPAddressFamily_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	test_addr_ranges, .-test_addr_ranges
	.section	.rodata
	.align 8
.LC70:
	.string	"X509v3_addr_add_range(addr, ranges[0].afi, NULL, ip1->data, ip2->data)"
	.text
	.type	test_addr_fam_len, @function
test_addr_fam_len:
.LFB580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	$0, -20(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$1, -60(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC60(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$241, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L100
	movq	8+ranges(%rip), %rax
	movq	%rax, %rdi
	call	a2i_IPADDRESS@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC62(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$244, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L101
	movq	16+ranges(%rip), %rax
	movq	%rax, %rdi
	call	a2i_IPADDRESS@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC64(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$247, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L102
	movq	-48(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	ranges(%rip), %esi
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509v3_addr_add_range@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$249, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L103
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509v3_addr_is_canonical@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC69(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$251, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L104
	movl	-60(%rbp), %eax
	shrl	$8, %eax
	movb	%al, -70(%rbp)
	movl	-60(%rbp), %eax
	movb	%al, -69(%rbp)
	movb	$13, -68(%rbp)
	movb	$14, -67(%rbp)
	movb	$10, -66(%rbp)
	movb	$13, -65(%rbp)
	movl	$6, -64(%rbp)
	call	IPAddressFamily_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L105
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L88
	call	IPAddressChoice_new@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L106
.L88:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L89
	call	ASN1_OCTET_STRING_new@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L107
.L89:
	movl	-64(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	-70(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	je	.L108
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_IPAddressFamily_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_IPAddressFamily_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L109
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509v3_addr_canonize@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$279, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L110
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_IPAddressFamily_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_pop@PLT
	movq	%rax, %rdi
	call	IPAddressFamily_free@PLT
	movl	-60(%rbp), %eax
	shrl	$8, %eax
	movb	%al, -70(%rbp)
	movl	-60(%rbp), %eax
	movb	%al, -69(%rbp)
	movb	$1, -68(%rbp)
	movl	$3, -64(%rbp)
	call	IPAddressFamily_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L111
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L94
	call	IPAddressChoice_new@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L112
.L94:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L95
	call	ASN1_OCTET_STRING_new@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L113
.L95:
	movl	-64(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	-70(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	je	.L114
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_IPAddressFamily_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_IPAddressFamily_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L115
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509v3_addr_canonize@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$310, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L116
	movl	$1, -20(%rbp)
	jmp	.L82
.L100:
	nop
	jmp	.L82
.L101:
	nop
	jmp	.L82
.L102:
	nop
	jmp	.L82
.L103:
	nop
	jmp	.L82
.L104:
	nop
	jmp	.L82
.L105:
	nop
	jmp	.L82
.L106:
	nop
	jmp	.L82
.L107:
	nop
	jmp	.L82
.L108:
	nop
	jmp	.L82
.L109:
	nop
	jmp	.L82
.L110:
	nop
	jmp	.L82
.L111:
	nop
	jmp	.L82
.L112:
	nop
	jmp	.L82
.L113:
	nop
	jmp	.L82
.L114:
	nop
	jmp	.L82
.L115:
	nop
	jmp	.L82
.L116:
	nop
.L82:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	IPAddressFamily_free@PLT
	movq	IPAddressFamily_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_IPAddressFamily_freefunc_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_IPAddressFamily_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	test_addr_fam_len, .-test_addr_fam_len
	.section	.rodata
	.align 8
.LC71:
	.string	"sbgp-ipAddrBlock = IPv4:192.0.0.1\n"
	.align 8
.LC72:
	.string	"sbgp-ipAddrBlock = IPv4:192.0.0.0/0\n"
	.align 8
.LC73:
	.string	"sbgp-ipAddrBlock = IPv4:192.0.0.0/1\n"
	.align 8
.LC74:
	.string	"sbgp-ipAddrBlock = IPv4:192.0.0.0/32\n"
	.align 8
.LC75:
	.string	"sbgp-ipAddrBlock = IPv4:192.0.0.0/33\n"
	.align 8
.LC76:
	.string	"sbgp-ipAddrBlock = IPv4:192.0.0.0/12341234\n"
	.align 8
.LC77:
	.string	"sbgp-ipAddrBlock = IPv4:192.0.0\n"
	.align 8
.LC78:
	.string	"sbgp-ipAddrBlock = IPv4:256.0.0.0\n"
	.align 8
.LC79:
	.string	"sbgp-ipAddrBlock = IPv4:-1.0.0.0\n"
	.align 8
.LC80:
	.string	"sbgp-ipAddrBlock = IPv4:192.0.0.0.0\n"
	.align 8
.LC81:
	.string	"sbgp-ipAddrBlock = IPv3:192.0.0.0\n"
	.align 8
.LC82:
	.string	"sbgp-ipAddrBlock = IPv6:2001:db8::\n"
	.align 8
.LC83:
	.string	"sbgp-ipAddrBlock = IPv6:2001::db8\n"
	.align 8
.LC84:
	.string	"sbgp-ipAddrBlock = IPv6:2001:0db8:0000:0000:0000:0000:0000:0000\n"
	.align 8
.LC85:
	.string	"sbgp-ipAddrBlock = IPv6:2001:db8::/0\n"
	.align 8
.LC86:
	.string	"sbgp-ipAddrBlock = IPv6:2001:db8::/1\n"
	.align 8
.LC87:
	.string	"sbgp-ipAddrBlock = IPv6:2001:db8::/32\n"
	.align 8
.LC88:
	.string	"sbgp-ipAddrBlock = IPv6:2001:0db8:0000:0000:0000:0000:0000:0000/32\n"
	.align 8
.LC89:
	.string	"sbgp-ipAddrBlock = IPv6:2001:db8::/128\n"
	.align 8
.LC90:
	.string	"sbgp-ipAddrBlock = IPv6:2001:db8::/129\n"
	.align 8
.LC91:
	.string	"sbgp-ipAddrBlock = IPv6:2001:db8::/12341234\n"
	.align 8
.LC92:
	.string	"sbgp-ipAddrBlock = IPv6:2001:0db8:0000:0000:0000:0000:0000\n"
	.align 8
.LC93:
	.string	"sbgp-ipAddrBlock = IPv6:2001:0db8:0000:0000:0000:0000:0000:0000:0000\n"
	.align 8
.LC94:
	.string	"sbgp-ipAddrBlock = IPv6:1ffff:0db8:0000:0000:0000:0000:0000:0000\n"
	.align 8
.LC95:
	.string	"sbgp-ipAddrBlock = IPv6:fffg:0db8:0000:0000:0000:0000:0000:0000\n"
	.align 8
.LC96:
	.string	"sbgp-ipAddrBlock = IPv6:-1:0db8:0000:0000:0000:0000:0000:0000\n"
	.section	.data.rel.local
	.align 32
	.type	extvalues, @object
	.size	extvalues, 416
extvalues:
	.quad	.LC71
	.long	1
	.zero	4
	.quad	.LC72
	.long	1
	.zero	4
	.quad	.LC73
	.long	1
	.zero	4
	.quad	.LC74
	.long	1
	.zero	4
	.quad	.LC75
	.long	0
	.zero	4
	.quad	.LC76
	.long	0
	.zero	4
	.quad	.LC77
	.long	0
	.zero	4
	.quad	.LC78
	.long	0
	.zero	4
	.quad	.LC79
	.long	0
	.zero	4
	.quad	.LC80
	.long	0
	.zero	4
	.quad	.LC81
	.long	0
	.zero	4
	.quad	.LC82
	.long	1
	.zero	4
	.quad	.LC83
	.long	1
	.zero	4
	.quad	.LC84
	.long	1
	.zero	4
	.quad	.LC85
	.long	1
	.zero	4
	.quad	.LC86
	.long	1
	.zero	4
	.quad	.LC87
	.long	1
	.zero	4
	.quad	.LC88
	.long	1
	.zero	4
	.quad	.LC89
	.long	1
	.zero	4
	.quad	.LC90
	.long	0
	.zero	4
	.quad	.LC91
	.long	0
	.zero	4
	.quad	.LC92
	.long	0
	.zero	4
	.quad	.LC93
	.long	0
	.zero	4
	.quad	.LC94
	.long	0
	.zero	4
	.quad	.LC95
	.long	0
	.zero	4
	.quad	.LC96
	.long	0
	.zero	4
	.section	.rodata
.LC97:
	.string	"extbio"
.LC98:
	.string	"conf"
.LC99:
	.string	"0"
	.align 8
.LC100:
	.string	"NCONF_load_bio(conf, extbio, &eline)"
.LC101:
	.string	"default"
	.align 8
.LC102:
	.string	"X509V3_EXT_add_nconf(conf, &ctx, \"default\", NULL)"
.LC103:
	.string	"Value: %s"
	.text
	.type	test_ext_syntax, @function
test_ext_syntax:
.LFB581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	$1, -12(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L118
.L128:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	extvalues(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	extvalues(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC97(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$383, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L119
	movl	$0, %eax
	jmp	.L127
.L119:
	movl	$0, %esi
	movl	$0, %edi
	call	NCONF_new_ex@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC98(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$387, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L121
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
	jmp	.L127
.L121:
	leaq	-40(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_load_bio@PLT
	movslq	%eax, %rsi
	leaq	.LC99(%rip), %rcx
	leaq	.LC100(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$391, %esi
	movq	%rax, %rdi
	call	test_long_gt@PLT
	testl	%eax, %eax
	jne	.L122
	movl	$0, -12(%rbp)
	jmp	.L123
.L122:
	leaq	-112(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509V3_set_ctx@PLT
	movq	-32(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_set_nconf@PLT
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+extvalues(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L124
	leaq	.LC101(%rip), %rdx
	leaq	-112(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509V3_EXT_add_nconf@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC102(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$398, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L123
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	extvalues(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC103(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$400, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, -12(%rbp)
	jmp	.L123
.L124:
	call	ERR_set_mark@PLT
	leaq	.LC101(%rip), %rdx
	leaq	-112(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509V3_EXT_add_nconf@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC102(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$405, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L125
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	extvalues(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC103(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$408, %esi
	movl	$0, %eax
	call	test_info@PLT
	call	ERR_clear_last_mark@PLT
	jmp	.L123
.L125:
	call	ERR_pop_to_mark@PLT
.L123:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	addq	$1, -8(%rbp)
.L118:
	cmpq	$25, -8(%rbp)
	jbe	.L128
	movl	-12(%rbp), %eax
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	test_ext_syntax, .-test_ext_syntax
	.section	.rodata
	.align 8
.LC104:
	.string	"addr[i] = sk_IPAddressFamily_new_null()"
	.align 8
.LC105:
	.string	"ip1[i] = a2i_IPADDRESS(ranges[i].ip1)"
	.align 8
.LC106:
	.string	"ip2[i] = a2i_IPADDRESS(ranges[i].ip2)"
	.align 8
.LC107:
	.string	"X509v3_addr_add_range(addr[i], ranges[i].afi, NULL, ip1[i]->data, ip2[i]->data)"
	.align 8
.LC108:
	.string	"addrEmpty = sk_IPAddressFamily_new_null()"
	.align 8
.LC109:
	.string	"X509v3_addr_subset(NULL, NULL)"
	.align 8
.LC110:
	.string	"X509v3_addr_subset(NULL, addr[0])"
	.align 8
.LC111:
	.string	"X509v3_addr_subset(addrEmpty, addr[0])"
	.align 8
.LC112:
	.string	"X509v3_addr_subset(addr[0], addr[0])"
	.align 8
.LC113:
	.string	"X509v3_addr_subset(addr[0], addr[1])"
	.align 8
.LC114:
	.string	"X509v3_addr_subset(addr[0], addr[2])"
	.align 8
.LC115:
	.string	"X509v3_addr_subset(addr[1], addr[2])"
	.align 8
.LC116:
	.string	"X509v3_addr_subset(addr[0], NULL)"
	.align 8
.LC117:
	.string	"X509v3_addr_subset(addr[1], addr[0])"
	.align 8
.LC118:
	.string	"X509v3_addr_subset(addr[2], addr[1])"
	.align 8
.LC119:
	.string	"X509v3_addr_subset(addr[0], addrEmpty)"
	.text
	.type	test_addr_subset, @function
test_addr_subset:
.LFB582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movl	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	%xmm0, -48(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movq	%xmm0, -80(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -128(%rbp)
	movq	%xmm0, -112(%rbp)
	movl	$3, -36(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L130
.L134:
	call	OPENSSL_sk_new_null@PLT
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -64(%rbp,%rdx,8)
	movl	-20(%rbp), %eax
	cltq
	movq	-64(%rbp,%rax,8), %rax
	leaq	.LC104(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$434, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L140
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+ranges(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	a2i_IPADDRESS@PLT
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -96(%rbp,%rdx,8)
	movl	-20(%rbp), %eax
	cltq
	movq	-96(%rbp,%rax,8), %rax
	leaq	.LC105(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$435, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L140
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+ranges(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	a2i_IPADDRESS@PLT
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -128(%rbp,%rdx,8)
	movl	-20(%rbp), %eax
	cltq
	movq	-128(%rbp,%rax,8), %rax
	leaq	.LC106(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$436, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L140
	movl	-20(%rbp), %eax
	cltq
	movq	-128(%rbp,%rax,8), %rax
	movq	8(%rax), %rdi
	movl	-20(%rbp), %eax
	cltq
	movq	-96(%rbp,%rax,8), %rax
	movq	8(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rcx
	leaq	ranges(%rip), %rax
	movl	(%rcx,%rax), %esi
	movl	-20(%rbp), %eax
	cltq
	movq	-64(%rbp,%rax,8), %rax
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509v3_addr_add_range@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC107(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$437, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L140
	addl	$1, -20(%rbp)
.L130:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L134
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC108(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$442, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L135
	movl	$0, %esi
	movl	$0, %edi
	call	X509v3_addr_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC109(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$443, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L135
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509v3_addr_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC110(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$444, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L135
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_addr_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC111(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$445, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L135
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_addr_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC112(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$446, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L135
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_addr_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC113(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$447, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L135
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_addr_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC114(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$448, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L135
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_addr_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC115(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$449, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L135
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509v3_addr_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC116(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$450, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L135
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_addr_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC117(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$451, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L135
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_addr_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC118(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$452, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L135
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509v3_addr_subset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC119(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$453, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L135
	movl	$1, %eax
	jmp	.L136
.L135:
	movl	$0, %eax
.L136:
	movl	%eax, -24(%rbp)
	jmp	.L133
.L140:
	nop
.L133:
	movq	IPAddressFamily_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_IPAddressFamily_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_IPAddressFamily_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, -20(%rbp)
	jmp	.L137
.L138:
	movq	IPAddressFamily_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_IPAddressFamily_freefunc_type
	movq	%rax, %rbx
	movl	-20(%rbp), %eax
	cltq
	movq	-64(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	ossl_check_IPAddressFamily_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	-20(%rbp), %eax
	cltq
	movq	-96(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movl	-20(%rbp), %eax
	cltq
	movq	-128(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	addl	$1, -20(%rbp)
.L137:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L138
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	test_addr_subset, .-test_addr_subset
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB583:
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
.LFE583:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC120:
	.string	"Error parsing test options\n"
.LC121:
	.string	"infile = test_get_argument(0)"
.LC122:
	.string	"test_pathlen"
.LC123:
	.string	"test_asid"
.LC124:
	.string	"test_addr_ranges"
.LC125:
	.string	"test_ext_syntax"
.LC126:
	.string	"test_addr_fam_len"
.LC127:
	.string	"test_addr_subset"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB584:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L144
	leaq	.LC120(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$471, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L145
.L144:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, infile(%rip)
	movq	infile(%rip), %rax
	leaq	.LC121(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$475, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L146
	movl	$0, %eax
	jmp	.L145
.L146:
	leaq	test_pathlen(%rip), %rdx
	leaq	.LC122(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_asid(%rip), %rdx
	leaq	.LC123(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_addr_ranges(%rip), %rdx
	leaq	.LC124(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ext_syntax(%rip), %rdx
	leaq	.LC125(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_addr_fam_len(%rip), %rdx
	leaq	.LC126(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_addr_subset(%rip), %rdx
	leaq	.LC127(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L145:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	setup_tests, .-setup_tests
	.section	.rodata
.LC128:
	.string	"Usage: %s [options] cert.pem\n"
.LC129:
	.string	"Valid options are:\n"
.LC130:
	.string	"help"
.LC131:
	.string	"Display this summary"
.LC132:
	.string	"list"
	.align 8
.LC133:
	.string	"Display the list of tests available"
.LC134:
	.string	"test"
	.align 8
.LC135:
	.string	"Run a single test by id or name"
.LC136:
	.string	"iter"
	.align 8
.LC137:
	.string	"Run a single iteration of a test"
.LC138:
	.string	"indent"
	.align 8
.LC139:
	.string	"Number of tabs added to output"
.LC140:
	.string	"seed"
	.align 8
.LC141:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC128
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC129
	.quad	.LC130
	.long	500
	.long	45
	.quad	.LC131
	.quad	.LC132
	.long	501
	.long	45
	.quad	.LC133
	.quad	.LC134
	.long	502
	.long	115
	.quad	.LC135
	.quad	.LC136
	.long	503
	.long	110
	.quad	.LC137
	.quad	.LC138
	.long	504
	.long	112
	.quad	.LC139
	.quad	.LC140
	.long	505
	.long	110
	.quad	.LC141
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

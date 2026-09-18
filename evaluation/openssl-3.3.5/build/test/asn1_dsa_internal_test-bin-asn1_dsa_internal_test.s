	.file	"asn1_dsa_internal_test.c"
	.text
	.data
	.align 8
	.type	t_dsa_sig, @object
	.size	t_dsa_sig, 8
t_dsa_sig:
	.base64	"MAYCAQECAQI="
	.align 8
	.type	t_dsa_sig_extra, @object
	.size	t_dsa_sig_extra, 10
t_dsa_sig_extra:
	.base64	"MAYCAQECAQIFAA=="
	.align 8
	.type	t_dsa_sig_msb, @object
	.size	t_dsa_sig_msb, 10
t_dsa_sig_msb:
	.base64	"MAgCAgCBAgIAgg=="
	.align 8
	.type	t_dsa_sig_two, @object
	.size	t_dsa_sig_two, 10
t_dsa_sig_two:
	.base64	"MAgCAgEAAgICAA=="
	.type	t_invalid_int_zero, @object
	.size	t_invalid_int_zero, 7
t_invalid_int_zero:
	.base64	"MAUCAAIBKg=="
	.align 8
	.type	t_invalid_int, @object
	.size	t_invalid_int, 9
t_invalid_int:
	.base64	"MAcCAgB/AgEq"
	.align 8
	.type	t_neg_int, @object
	.size	t_neg_int, 8
t_neg_int:
	.base64	"MAYCAaoCASo="
	.align 8
	.type	t_trunc_der, @object
	.size	t_trunc_der, 9
t_trunc_der:
	.base64	"MAgCAgCBAgIA"
	.align 8
	.type	t_trunc_seq, @object
	.size	t_trunc_seq, 10
t_trunc_seq:
	.base64	"MAcCAgCBAgIAgg=="
	.section	.rodata
	.align 8
.LC0:
	.string	"(t_dsa_sig + sizeof(t_dsa_sig))"
.LC1:
	.string	"pder"
	.align 8
.LC2:
	.string	"../test/asn1_dsa_internal_test.c"
.LC3:
	.string	"1"
.LC4:
	.string	"r"
.LC5:
	.string	"2"
.LC6:
	.string	"s"
	.align 8
.LC7:
	.string	"asn1_dsa test_decode: t_dsa_sig failed"
	.align 8
.LC8:
	.string	"(t_dsa_sig_extra + sizeof(t_dsa_sig_extra) - 2)"
	.align 8
.LC9:
	.string	"asn1_dsa test_decode: t_dsa_sig_extra failed"
	.align 8
.LC10:
	.string	"(t_dsa_sig_msb + sizeof(t_dsa_sig_msb))"
.LC11:
	.string	"0x81"
.LC12:
	.string	"0x82"
	.align 8
.LC13:
	.string	"asn1_dsa test_decode: t_dsa_sig_msb failed"
	.align 8
.LC14:
	.string	"(t_dsa_sig_two + sizeof(t_dsa_sig_two))"
.LC15:
	.string	"0x100"
.LC16:
	.string	"0x200"
	.align 8
.LC17:
	.string	"asn1_dsa test_decode: t_dsa_sig_two failed"
	.align 8
.LC18:
	.string	"asn1_dsa test_decode: Expected t_invalid_int_zero to fail"
	.align 8
.LC19:
	.string	"asn1_dsa test_decode: Expected t_invalid_int to fail"
	.align 8
.LC20:
	.string	"asn1_dsa test_decode: Expected t_neg_int to fail"
	.align 8
.LC21:
	.string	"asn1_dsa test_decode: Expected fail t_trunc_der"
	.align 8
.LC22:
	.string	"asn1_dsa test_decode: Expected fail t_trunc_seq"
	.text
	.type	test_decode, @function
test_decode:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	leaq	t_dsa_sig(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	ossl_decode_der_dsa_sig@PLT
	testq	%rax, %rax
	je	.L2
	leaq	8+t_dsa_sig(%rip), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$97, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L2
	movq	-16(%rbp), %rsi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$98, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	je	.L2
	movq	-24(%rbp), %rsi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movq	%rsi, %r8
	movl	$98, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	jne	.L3
.L2:
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$99, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L4
.L3:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	leaq	t_dsa_sig_extra(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$10, %ecx
	movq	%rax, %rdi
	call	ossl_decode_der_dsa_sig@PLT
	testq	%rax, %rax
	je	.L5
	leaq	8+t_dsa_sig_extra(%rip), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC8(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$107, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L5
	movq	-16(%rbp), %rsi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$109, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	je	.L5
	movq	-24(%rbp), %rsi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movq	%rsi, %r8
	movl	$109, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	jne	.L6
.L5:
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$110, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L4
.L6:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	leaq	t_dsa_sig_msb(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$10, %ecx
	movq	%rax, %rdi
	call	ossl_decode_der_dsa_sig@PLT
	testq	%rax, %rax
	je	.L7
	leaq	10+t_dsa_sig_msb(%rip), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC10(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$118, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L7
	movq	-16(%rbp), %rsi
	leaq	.LC11(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$129, %r9d
	movq	%rsi, %r8
	movl	$119, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	je	.L7
	movq	-24(%rbp), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$130, %r9d
	movq	%rsi, %r8
	movl	$119, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	jne	.L8
.L7:
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$120, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L4
.L8:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	leaq	t_dsa_sig_two(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$10, %ecx
	movq	%rax, %rdi
	call	ossl_decode_der_dsa_sig@PLT
	testq	%rax, %rax
	je	.L9
	leaq	10+t_dsa_sig_two(%rip), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC14(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$128, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L9
	movq	-16(%rbp), %rsi
	leaq	.LC15(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$256, %r9d
	movq	%rsi, %r8
	movl	$129, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	je	.L9
	movq	-24(%rbp), %rsi
	leaq	.LC16(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$512, %r9d
	movq	%rsi, %r8
	movl	$129, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	jne	.L10
.L9:
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$130, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L4
.L10:
	leaq	t_invalid_int_zero(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$7, %ecx
	movq	%rax, %rdi
	call	ossl_decode_der_dsa_sig@PLT
	testq	%rax, %rax
	je	.L11
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$137, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L4
.L11:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	leaq	t_invalid_int(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$9, %ecx
	movq	%rax, %rdi
	call	ossl_decode_der_dsa_sig@PLT
	testq	%rax, %rax
	je	.L12
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$145, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L4
.L12:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	leaq	t_neg_int(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	ossl_decode_der_dsa_sig@PLT
	testq	%rax, %rax
	je	.L13
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$153, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L4
.L13:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	leaq	t_trunc_der(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$9, %ecx
	movq	%rax, %rdi
	call	ossl_decode_der_dsa_sig@PLT
	testq	%rax, %rax
	je	.L14
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$161, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L4
.L14:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	leaq	t_trunc_seq(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$10, %ecx
	movq	%rax, %rdi
	call	ossl_decode_der_dsa_sig@PLT
	testq	%rax, %rax
	je	.L15
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$169, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L4
.L15:
	movl	$1, -4(%rbp)
.L4:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	test_decode, .-test_decode
	.section	.rodata
.LC23:
	.string	"test_decode"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_decode(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

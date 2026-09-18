	.file	"d2i_test.c"
	.text
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB63:
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
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.local	item_type
	.comm	item_type,8,8
	.local	test_file
	.comm	test_file,8,8
	.local	expected_error
	.comm	expected_error,4,4
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"bio"
.LC2:
	.string	"../test/d2i_test.c"
	.align 8
.LC3:
	.string	"ASN1_item_d2i_bio(item_type, bio, NULL)"
.LC4:
	.string	"0"
.LC5:
	.string	"len"
.LC6:
	.string	"ASN1_DECODE"
.LC7:
	.string	"expected_error"
.LC8:
	.string	"ASN1_ENCODE"
.LC9:
	.string	"ASN1_COMPARE"
.LC10:
	.string	"ASN1_OK"
	.align 8
.LC11:
	.string	"ERR_GET_REASON(ERR_peek_error()) == ERR_R_MALLOC_FAILURE"
	.text
	.type	test_bad_asn1, @function
test_bad_asn1:
.LFB582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2096, %rsp
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	leaq	-2080(%rbp), %rax
	movq	%rax, -2088(%rbp)
	movq	$0, -2096(%rbp)
	movq	test_file(%rip), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$56, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L5
	movl	$0, %eax
	jmp	.L20
.L5:
	movl	expected_error(%rip), %eax
	cmpl	$2, %eax
	jne	.L7
	movq	item_type(%rip), %rax
	movq	-24(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_d2i_bio@PLT
	movq	%rax, %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$60, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L21
	movl	$1, -12(%rbp)
	jmp	.L21
.L7:
	leaq	-2080(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$2048, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$71, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L22
	movq	item_type(%rip), %rcx
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-2088(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_item_d2i@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L11
	movl	expected_error(%rip), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$76, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L23
	movl	$1, -12(%rbp)
	jmp	.L23
.L11:
	movq	item_type(%rip), %rdx
	leaq	-2096(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	movl	%eax, -32(%rbp)
	movq	-2096(%rbp), %rax
	testq	%rax, %rax
	je	.L13
	cmpl	$0, -32(%rbp)
	jns	.L14
.L13:
	movl	expected_error(%rip), %eax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4, %r9d
	movl	%esi, %r8d
	movl	$84, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L24
	movl	$1, -12(%rbp)
	jmp	.L24
.L14:
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.L16
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-2096(%rbp), %rax
	leaq	-2080(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L17
.L16:
	movl	expected_error(%rip), %eax
	movl	%eax, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$5, %r9d
	movl	%esi, %r8d
	movl	$90, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L25
	movl	$1, -12(%rbp)
	jmp	.L25
.L17:
	movl	expected_error(%rip), %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$95, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L26
	movl	$1, -12(%rbp)
	jmp	.L9
.L21:
	nop
	jmp	.L9
.L22:
	nop
	jmp	.L9
.L23:
	nop
	jmp	.L9
.L24:
	nop
	jmp	.L9
.L25:
	nop
	jmp	.L9
.L26:
	nop
.L9:
	cmpl	$1, -12(%rbp)
	jne	.L19
	call	ERR_peek_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$786688, %eax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$101, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$0, -12(%rbp)
.L19:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-2096(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$104, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	item_type(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	movl	-12(%rbp), %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	test_bad_asn1, .-test_bad_asn1
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
	leaq	options.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC12:
	.string	"Error parsing test options\n"
	.align 8
.LC13:
	.string	"test_type_name = test_get_argument(0)"
	.align 8
.LC14:
	.string	"expected_error_string = test_get_argument(1)"
	.align 8
.LC15:
	.string	"test_file = test_get_argument(2)"
.LC16:
	.string	"Unknown type %s"
.LC17:
	.string	"Supported types:"
.LC18:
	.string	"\t%s"
.LC19:
	.string	"Unknown expected error %s\n"
.LC20:
	.string	"test_bad_asn1"
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
	subq	$32, %rsp
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L30
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$131, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L31
.L30:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$135, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L32
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$136, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L32
	movl	$2, %edi
	call	test_get_argument@PLT
	movq	%rax, test_file(%rip)
	movq	test_file(%rip), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$137, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L33
.L32:
	movl	$0, %eax
	jmp	.L31
.L33:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_ITEM_lookup@PLT
	movq	%rax, item_type(%rip)
	movq	item_type(%rip), %rax
	testq	%rax, %rax
	jne	.L34
	movq	-16(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$143, %esi
	movl	$0, %eax
	call	test_error@PLT
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	$0, -8(%rbp)
.L37:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_ITEM_get@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L44
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	addq	$1, -8(%rbp)
	jmp	.L37
.L44:
	nop
	movl	$0, %eax
	jmp	.L31
.L34:
	movq	$0, -8(%rbp)
	jmp	.L38
.L41:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	expected_errors.0(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L39
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+expected_errors.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, expected_error(%rip)
	jmp	.L40
.L39:
	addq	$1, -8(%rbp)
.L38:
	cmpq	$4, -8(%rbp)
	jbe	.L41
.L40:
	movl	expected_error(%rip), %eax
	testl	%eax, %eax
	jne	.L42
	movq	-24(%rbp), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$163, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L31
.L42:
	leaq	test_bad_asn1(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 8
.LC21:
	.string	"Usage: %s [options] item_name expected_error test_file.der\n"
.LC22:
	.string	"Valid options are:\n"
.LC23:
	.string	"help"
.LC24:
	.string	"Display this summary"
.LC25:
	.string	"list"
	.align 8
.LC26:
	.string	"Display the list of tests available"
.LC27:
	.string	"test"
	.align 8
.LC28:
	.string	"Run a single test by id or name"
.LC29:
	.string	"iter"
	.align 8
.LC30:
	.string	"Run a single iteration of a test"
.LC31:
	.string	"indent"
	.align 8
.LC32:
	.string	"Number of tabs added to output"
.LC33:
	.string	"seed"
	.align 8
.LC34:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.1, @object
	.size	options.1, 216
options.1:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC21
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC22
	.quad	.LC23
	.long	500
	.long	45
	.quad	.LC24
	.quad	.LC25
	.long	501
	.long	45
	.quad	.LC26
	.quad	.LC27
	.long	502
	.long	115
	.quad	.LC28
	.quad	.LC29
	.long	503
	.long	110
	.quad	.LC30
	.quad	.LC31
	.long	504
	.long	112
	.quad	.LC32
	.quad	.LC33
	.long	505
	.long	110
	.quad	.LC34
	.quad	0
	.zero	16
	.section	.rodata
.LC35:
	.string	"OK"
.LC36:
	.string	"BIO"
.LC37:
	.string	"decode"
.LC38:
	.string	"encode"
.LC39:
	.string	"compare"
	.section	.data.rel.local,"aw"
	.align 32
	.type	expected_errors.0, @object
	.size	expected_errors.0, 80
expected_errors.0:
	.quad	.LC35
	.long	1
	.zero	4
	.quad	.LC36
	.long	2
	.zero	4
	.quad	.LC37
	.long	3
	.zero	4
	.quad	.LC38
	.long	4
	.zero	4
	.quad	.LC39
	.long	5
	.zero	4
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

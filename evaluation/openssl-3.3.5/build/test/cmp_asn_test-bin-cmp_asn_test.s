	.file	"cmp_asn_test.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB644:
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
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.local	rand_data
	.comm	rand_data,16,16
	.section	.rodata
.LC0:
	.string	"../test/cmp_asn_test.c"
	.align 8
.LC1:
	.string	"fixture = OPENSSL_zalloc(sizeof(*fixture))"
	.text
	.type	set_up, @function
set_up:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$28, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$28, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	set_up, .-set_up
	.type	tear_down, @function
tear_down:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L9
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
.L9:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$40, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	tear_down, .-tear_down
	.section	.rodata
.LC2:
	.string	"asn1integer"
	.align 8
.LC3:
	.string	"ASN1_INTEGER_set(asn1integer, good_int)"
	.align 8
.LC4:
	.string	"ossl_cmp_asn1_get_int(asn1integer)"
.LC5:
	.string	"good_int"
	.align 8
.LC6:
	.string	"ASN1_INTEGER_set_int64(asn1integer, max_int + 1)"
.LC7:
	.string	"-2"
	.text
	.type	execute_cmp_asn1_get_int_test, @function
execute_cmp_asn1_get_int_test:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -4(%rbp)
	call	ASN1_INTEGER_new@PLT
	movq	%rax, -16(%rbp)
	movl	$77, -20(%rbp)
	movq	$2147483647, -32(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$50, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L11
	movl	-4(%rbp), %eax
	jmp	.L12
.L11:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$53, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L13
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movl	$0, %eax
	jmp	.L12
.L13:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_asn1_get_int@PLT
	movl	%eax, %esi
	movl	-20(%rbp), %edi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$57, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L17
	movl	$0, -4(%rbp)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set_int64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$62, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L18
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_asn1_get_int@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	$-2, %r8d
	movl	$64, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	movl	%eax, -4(%rbp)
	jmp	.L15
.L17:
	nop
	jmp	.L15
.L18:
	nop
.L15:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movl	-4(%rbp), %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	execute_cmp_asn1_get_int_test, .-execute_cmp_asn1_get_int_test
	.type	test_cmp_asn1_get_int, @function
test_cmp_asn1_get_int:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.2(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L20
	movl	$0, %eax
	jmp	.L21
.L20:
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	cmpq	$0, -16(%rbp)
	je	.L22
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_cmp_asn1_get_int_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L22:
	movl	-4(%rbp), %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	test_cmp_asn1_get_int, .-test_cmp_asn1_get_int
	.section	.rodata
	.align 8
.LC8:
	.string	"ossl_cmp_asn1_octet_string_set1(&fixture->tgt_string, fixture->src_string)"
.LC9:
	.string	"fixture->expected"
	.align 8
.LC10:
	.string	"ASN1_OCTET_STRING_cmp(fixture->tgt_string, fixture->src_string)"
.LC11:
	.string	"0"
	.text
	.type	execute_CMP_ASN1_OCTET_STRING_set1_test, @function
execute_CMP_ASN1_OCTET_STRING_set1_test:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$24, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_cmp_asn1_octet_string_set1@PLT
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$82, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L26
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_cmp@PLT
	movl	%eax, %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$87, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	jmp	.L25
.L26:
	movl	$1, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	execute_CMP_ASN1_OCTET_STRING_set1_test, .-execute_CMP_ASN1_OCTET_STRING_set1_test
	.section	.rodata
	.align 8
.LC12:
	.string	"fixture->tgt_string = ASN1_OCTET_STRING_new()"
	.align 8
.LC13:
	.string	"fixture->src_string = ASN1_OCTET_STRING_new()"
	.align 8
.LC14:
	.string	"ASN1_OCTET_STRING_set(fixture->src_string, rand_data, sizeof(rand_data))"
	.text
	.type	test_ASN1_OCTET_STRING_set, @function
test_ASN1_OCTET_STRING_set:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.1(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	call	ASN1_OCTET_STRING_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$96, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L30
	call	ASN1_OCTET_STRING_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$97, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L30
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	rand_data(%rip), %rcx
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$98, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L31
.L30:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L31:
	cmpq	$0, -8(%rbp)
	je	.L32
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CMP_ASN1_OCTET_STRING_set1_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L32:
	movl	-12(%rbp), %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	test_ASN1_OCTET_STRING_set, .-test_ASN1_OCTET_STRING_set
	.type	test_ASN1_OCTET_STRING_set_tgt_is_src, @function
test_ASN1_OCTET_STRING_set_tgt_is_src:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.0(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	call	ASN1_OCTET_STRING_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$111, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L36
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	rand_data(%rip), %rcx
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$113, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L37
.L36:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L37:
	cmpq	$0, -8(%rbp)
	je	.L38
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CMP_ASN1_OCTET_STRING_set1_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L38:
	movl	-12(%rbp), %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	test_ASN1_OCTET_STRING_set_tgt_is_src, .-test_ASN1_OCTET_STRING_set_tgt_is_src
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
.LC15:
	.string	"test_cmp_asn1_get_int"
.LC16:
	.string	"test_ASN1_OCTET_STRING_set"
	.align 8
.LC17:
	.string	"test_ASN1_OCTET_STRING_set_tgt_is_src"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	rand_data(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	leaq	test_cmp_asn1_get_int(%rip), %rdx
	leaq	.LC15(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ASN1_OCTET_STRING_set(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ASN1_OCTET_STRING_set_tgt_is_src(%rip), %rdx
	leaq	.LC17(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 22
__func__.2:
	.string	"test_cmp_asn1_get_int"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 27
__func__.1:
	.string	"test_ASN1_OCTET_STRING_set"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 38
__func__.0:
	.string	"test_ASN1_OCTET_STRING_set_tgt_is_src"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

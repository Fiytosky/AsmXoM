	.file	"asn1_string_table_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"tmp"
	.align 8
.LC1:
	.string	"../test/asn1_string_table_test.c"
	.align 8
.LC2:
	.string	"asn1 string table: ASN1_STRING_TABLE_get non-exist nid"
.LC3:
	.string	"ret"
	.align 8
.LC4:
	.string	"asn1 string table: add NID(%d) failed"
	.align 8
.LC5:
	.string	"asn1 string table: get NID(%d) failed"
	.text
	.type	test_string_tbl, @function
test_string_tbl:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movl	$12345678, -20(%rbp)
	movl	$87654321, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -28(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	ASN1_STRING_TABLE_get@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$24, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L2
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$25, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L3
.L2:
	movl	-20(%rbp), %eax
	movl	$0, %r8d
	movl	$4097, %ecx
	movq	$-1, %rdx
	movq	$-1, %rsi
	movl	%eax, %edi
	call	ASN1_STRING_TABLE_add@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$30, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L4
	movl	-20(%rbp), %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$31, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L3
.L4:
	movl	-24(%rbp), %eax
	movl	$0, %r8d
	movl	$4097, %ecx
	movq	$-1, %rdx
	movq	$-1, %rsi
	movl	%eax, %edi
	call	ASN1_STRING_TABLE_add@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$36, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L5
	movl	-24(%rbp), %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$37, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L3
.L5:
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	ASN1_STRING_TABLE_get@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$42, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L6
	movl	-20(%rbp), %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$43, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L3
.L6:
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	ASN1_STRING_TABLE_get@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$48, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L7
	movl	-24(%rbp), %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$49, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L3
.L7:
	call	ASN1_STRING_TABLE_cleanup@PLT
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	ASN1_STRING_TABLE_get@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$57, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L8
	movl	-20(%rbp), %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$58, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L3
.L8:
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	ASN1_STRING_TABLE_get@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$63, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L9
	movl	-24(%rbp), %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$64, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L3
.L9:
	movl	$1, -4(%rbp)
.L3:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_string_tbl, .-test_string_tbl
	.section	.rodata
.LC6:
	.string	"test_string_tbl"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_string_tbl(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

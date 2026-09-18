	.file	"pkey_meth_test.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"EVP_PKEY_ASN1_METHOD table out of order"
.LC1:
	.string	"../test/pkey_meth_test.c"
.LC2:
	.string	"<NO NAME>"
.LC3:
	.string	"%d : %s : %s"
	.text
	.type	test_asn1_meths, @function
test_asn1_meths:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	$-1, -24(%rbp)
	movl	$1, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L2
.L4:
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	EVP_PKEY_asn1_get0@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdx
	leaq	-44(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_asn1_get0_info@PLT
	movl	-44(%rbp), %eax
	cmpl	%eax, -24(%rbp)
	jle	.L3
	movl	$0, -28(%rbp)
.L3:
	movl	-44(%rbp), %eax
	movl	%eax, -24(%rbp)
	addl	$1, -20(%rbp)
.L2:
	call	EVP_PKEY_asn1_get_count@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L4
	cmpl	$0, -28(%rbp)
	jne	.L5
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$39, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
	jmp	.L6
.L8:
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	EVP_PKEY_asn1_get0@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	leaq	-44(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_asn1_get0_info@PLT
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	jne	.L7
	leaq	.LC2(%rip), %rax
	movq	%rax, -56(%rbp)
.L7:
	movq	-56(%rbp), %rbx
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, %rdx
	movl	-44(%rbp), %eax
	leaq	.LC3(%rip), %rdi
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %eax
	call	test_note@PLT
	addl	$1, -20(%rbp)
.L6:
	call	EVP_PKEY_asn1_get_count@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L8
.L5:
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_asn1_meths, .-test_asn1_meths
	.section	.rodata
	.align 8
.LC4:
	.string	"EVP_PKEY_METHOD table out of order"
.LC5:
	.string	"%d : %s"
	.text
	.type	test_pkey_meths, @function
test_pkey_meths:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$-1, -12(%rbp)
	movl	$1, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L11
.L13:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_meth_get0@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-28(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_meth_get0_info@PLT
	movl	-28(%rbp), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L12
	movl	$0, -16(%rbp)
.L12:
	movl	-28(%rbp), %eax
	movl	%eax, -12(%rbp)
	addq	$1, -8(%rbp)
.L11:
	call	EVP_PKEY_meth_get_count@PLT
	cmpq	%rax, -8(%rbp)
	jb	.L13
	cmpl	$0, -16(%rbp)
	jne	.L14
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$72, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -8(%rbp)
	jmp	.L15
.L16:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_meth_get0@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-28(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_meth_get0_info@PLT
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	leaq	.LC5(%rip), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	addq	$1, -8(%rbp)
.L15:
	call	EVP_PKEY_meth_get_count@PLT
	cmpq	%rax, -8(%rbp)
	jb	.L16
.L14:
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_pkey_meths, .-test_pkey_meths
	.section	.rodata
.LC6:
	.string	"test_asn1_meths"
.LC7:
	.string	"test_pkey_meths"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_asn1_meths(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pkey_meths(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

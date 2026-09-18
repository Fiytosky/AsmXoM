	.file	"evp_byname_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"SHA2-256"
	.align 8
.LC1:
	.string	"md = EVP_get_digestbyname(\"SHA2-256\")"
.LC2:
	.string	"../test/evp_byname_test.c"
	.text
	.type	test_evp_get_digestbyname, @function
test_evp_get_digestbyname:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$21, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movl	$1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_evp_get_digestbyname, .-test_evp_get_digestbyname
	.section	.rodata
.LC3:
	.string	"AES-256-WRAP"
	.align 8
.LC4:
	.string	"cipher = EVP_get_cipherbyname(\"AES-256-WRAP\")"
	.text
	.type	test_evp_get_cipherbyname, @function
test_evp_get_cipherbyname:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	EVP_get_cipherbyname@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$30, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L5
	movl	$0, %eax
	jmp	.L6
.L5:
	movl	$1, %eax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_evp_get_cipherbyname, .-test_evp_get_cipherbyname
	.section	.rodata
.LC5:
	.string	"test_evp_get_digestbyname"
.LC6:
	.string	"test_evp_get_cipherbyname"
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
	leaq	test_evp_get_digestbyname(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_evp_get_cipherbyname(%rip), %rdx
	leaq	.LC6(%rip), %rax
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

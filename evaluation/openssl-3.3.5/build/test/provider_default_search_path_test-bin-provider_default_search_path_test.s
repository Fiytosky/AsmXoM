	.file	"provider_default_search_path_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"./some/path"
	.align 8
.LC1:
	.string	"OSSL_PROVIDER_set_default_search_path(ctx, path)"
	.align 8
.LC2:
	.string	"../test/provider_default_search_path_test.c"
	.align 8
.LC3:
	.string	"retrieved_path = OSSL_PROVIDER_get0_default_search_path(ctx)"
.LC4:
	.string	"retrieved_path"
.LC5:
	.string	"path"
	.text
	.type	test_default_libctx, @function
test_default_libctx:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_set_default_search_path@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$21, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_default_search_path@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$22, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L2
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$23, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L2
	movl	$1, %eax
	jmp	.L3
.L2:
	movl	$0, %eax
.L3:
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_default_libctx, .-test_default_libctx
	.section	.rodata
.LC6:
	.string	"./another/location"
	.align 8
.LC7:
	.string	"OSSL_PROVIDER_set_default_search_path(NULL, def_libctx_path)"
.LC8:
	.string	"ctx = OSSL_LIB_CTX_new()"
	.align 8
.LC9:
	.string	"retrieved_defctx_path = OSSL_PROVIDER_get0_default_search_path(NULL)"
.LC10:
	.string	"retrieved_defctx_path"
.LC11:
	.string	"def_libctx_path"
	.text
	.type	test_explicit_libctx, @function
test_explicit_libctx:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_set_default_search_path@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$40, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L6
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$41, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L6
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_set_default_search_path@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$42, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L6
	movl	$0, %edi
	call	OSSL_PROVIDER_get0_default_search_path@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$43, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L6
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$44, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L6
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_default_search_path@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$45, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L6
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$46, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L6
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC10(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$47, %esi
	movq	%rax, %rdi
	call	test_str_ne@PLT
	testl	%eax, %eax
	je	.L6
	movl	$1, %eax
	jmp	.L7
.L6:
	movl	$0, %eax
.L7:
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-44(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_explicit_libctx, .-test_explicit_libctx
	.section	.rodata
.LC12:
	.string	"test_default_libctx"
.LC13:
	.string	"test_explicit_libctx"
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
	leaq	test_default_libctx(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_explicit_libctx(%rip), %rdx
	leaq	.LC13(%rip), %rax
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

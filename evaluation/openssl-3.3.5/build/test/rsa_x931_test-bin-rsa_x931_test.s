	.file	"rsa_x931_test.c"
	.text
	.local	prov_null
	.comm	prov_null,8,8
	.local	libctx
	.comm	libctx,8,8
	.section	.rodata
	.align 8
.LC0:
	.string	"rsa = ossl_rsa_new_with_ctx(libctx)"
.LC1:
	.string	"../test/rsa_x931_test.c"
.LC2:
	.string	"e = BN_new()"
.LC3:
	.string	"1"
.LC4:
	.string	"BN_set_word(e, RSA_F4)"
	.align 8
.LC5:
	.string	"RSA_X931_generate_key_ex(rsa, 1024, e, NULL)"
	.text
	.type	test_rsa_x931_keygen, @function
test_rsa_x931_keygen:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -12(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	libctx(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rsa_new_with_ctx@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$26, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L2
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$27, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L2
	movq	-8(%rbp), %rax
	movl	$65537, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$28, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L2
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	RSA_X931_generate_key_ex@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$29, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L2
	movl	$1, %eax
	jmp	.L3
.L2:
	movl	$0, %eax
.L3:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_rsa_x931_keygen, .-test_rsa_x931_keygen
	.section	.rodata
.LC6:
	.string	"test_rsa_x931_keygen"
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
	leaq	prov_null(%rip), %rsi
	leaq	libctx(%rip), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	test_get_libctx@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	leaq	test_rsa_x931_keygen(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	prov_null(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	libctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	cleanup_tests, .-cleanup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

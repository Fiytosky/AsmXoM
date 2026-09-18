	.file	"nodefltctxtest.c"
	.text
	.section	.rodata
.LC0:
	.string	"ctx"
.LC1:
	.string	"../test/nodefltctxtest.c"
.LC2:
	.string	"SHA2-256"
.LC3:
	.string	"md"
.LC4:
	.string	"default"
	.align 8
.LC5:
	.string	"OSSL_PROVIDER_available(NULL, \"default\")"
.LC6:
	.string	"null"
	.align 8
.LC7:
	.string	"OSSL_PROVIDER_available(NULL, \"null\")"
	.text
	.type	test_no_deflt_ctx_init, @function
test_no_deflt_ctx_init:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$24, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	leaq	.LC2(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$28, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L8
	movl	$0, %esi
	movl	$128, %edi
	call	OPENSSL_init_crypto@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_available@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$44, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L9
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_available@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$46, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L10
	movl	$1, -4(%rbp)
	jmp	.L5
.L8:
	nop
	jmp	.L5
.L9:
	nop
	jmp	.L5
.L10:
	nop
.L5:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-4(%rbp), %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_no_deflt_ctx_init, .-test_no_deflt_ctx_init
	.section	.rodata
.LC8:
	.string	"test_no_deflt_ctx_init"
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
	leaq	test_no_deflt_ctx_init(%rip), %rdx
	leaq	.LC8(%rip), %rax
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

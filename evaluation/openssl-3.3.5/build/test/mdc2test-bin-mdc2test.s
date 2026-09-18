	.file	"mdc2test.c"
	.text
	.data
	.align 16
	.type	pad1, @object
	.size	pad1, 16
pad1:
	.base64	"QuUM0iS6zrp2C90r1AkoGg=="
	.align 16
	.type	pad2, @object
	.size	pad2, 16
pad2:
	.base64	"LkZ5ta3ZynU12Hr+qzO+4g=="
	.section	.rodata
.LC0:
	.string	"pad-type"
.LC1:
	.string	"legacy"
.LC2:
	.string	"prov"
.LC3:
	.string	"../test/mdc2test.c"
.LC4:
	.string	"c"
	.align 8
.LC5:
	.string	"EVP_DigestInit_ex(c, EVP_mdc2(), NULL)"
	.align 8
.LC6:
	.string	"EVP_DigestUpdate(c, (unsigned char *)text, tlen)"
	.align 8
.LC7:
	.string	"EVP_DigestFinal_ex(c, &(md[0]), NULL)"
.LC8:
	.string	"pad1"
.LC9:
	.string	"md"
.LC10:
	.string	"0"
	.align 8
.LC11:
	.string	"EVP_MD_CTX_set_params(c, params)"
.LC12:
	.string	"pad2"
	.text
	.type	test_mdc2, @function
test_mdc2:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movl	$0, -20(%rbp)
	movl	$2, -60(%rbp)
	movq	$0, -32(%rbp)
	leaq	text.0(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-48(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-144(%rax), %rbx
	leaq	-208(%rbp), %rax
	leaq	-60(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-176(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-144(%rax), %rbx
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-176(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$61, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L9
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$69, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L10
	call	EVP_mdc2@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$70, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	movq	-40(%rbp), %rdx
	leaq	text.0(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$71, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	leaq	-80(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$72, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	leaq	-80(%rbp), %rdi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC3(%rip), %rax
	pushq	$16
	leaq	pad1(%rip), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$73, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L10
	call	EVP_mdc2@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$74, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	leaq	-160(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_set_params@PLT
	movl	%eax, %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$77, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L11
	movq	-40(%rbp), %rdx
	leaq	text.0(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$78, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L11
	leaq	-80(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$79, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L11
	leaq	-80(%rbp), %rdi
	leaq	.LC12(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC3(%rip), %rax
	pushq	$16
	leaq	pad2(%rip), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$80, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L11
	movl	$1, -20(%rbp)
	jmp	.L3
.L9:
	nop
	jmp	.L3
.L10:
	nop
	jmp	.L3
.L11:
	nop
.L3:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_mdc2, .-test_mdc2
	.section	.rodata
.LC13:
	.string	"test_mdc2"
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
	leaq	test_mdc2(%rip), %rdx
	leaq	.LC13(%rip), %rax
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
	.data
	.align 16
	.type	text.0, @object
	.size	text.0, 25
text.0:
	.string	"Now is the time for all "
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

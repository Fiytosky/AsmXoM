	.file	"user_property_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"blocksize"
.LC1:
	.string	"size"
	.text
	.type	tmpmd_get_params, @function
tmpmd_get_params:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	leaq	.LC1(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L4
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L4
	movl	$0, %eax
	jmp	.L3
.L4:
	movl	$1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	tmpmd_get_params, .-tmpmd_get_params
	.type	tmpmd_digest, @function
tmpmd_digest:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	tmpmd_digest, .-tmpmd_digest
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	testprovmd_functions, @object
	.size	testprovmd_functions, 48
testprovmd_functions:
	.long	8
	.zero	4
	.quad	tmpmd_get_params
	.long	5
	.zero	4
	.quad	tmpmd_digest
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC2:
	.string	"testprovmd"
.LC3:
	.string	"foo.bar=yes"
	.section	.data.rel.ro.local
	.align 32
	.type	testprov_digests, @object
	.size	testprov_digests, 64
testprov_digests:
	.quad	.LC2
	.quad	.LC3
	.quad	testprovmd_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.text
	.type	testprov_query, @function
testprov_query:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	cmpl	$1, -12(%rbp)
	jne	.L8
	leaq	testprov_digests(%rip), %rax
	jmp	.L10
.L8:
	movl	$0, %eax
.L10:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	testprov_query, .-testprov_query
	.section	.data.rel.ro.local
	.align 32
	.type	testprov_dispatch_table, @object
	.size	testprov_dispatch_table, 32
testprov_dispatch_table:
	.long	1027
	.zero	4
	.quad	testprov_query
	.long	0
	.zero	4
	.quad	0
	.text
	.type	testprov_provider_init, @function
testprov_provider_init:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	leaq	testprov_dispatch_table(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	testprov_provider_init, .-testprov_provider_init
	.section	.rodata
.LC4:
	.string	"libctx = OSSL_LIB_CTX_new()"
.LC5:
	.string	"../test/user_property_test.c"
.LC6:
	.string	"testprov"
	.align 8
.LC7:
	.string	"OSSL_PROVIDER_add_builtin(libctx, \"testprov\", testprov_provider_init)"
	.align 8
.LC8:
	.string	"EVP_set_default_properties(libctx, MYPROPERTIES)"
	.align 8
.LC9:
	.string	"testprov = OSSL_PROVIDER_load(libctx, \"testprov\")"
	.align 8
.LC10:
	.string	"testprovmd = EVP_MD_fetch(libctx, \"testprovmd\", NULL)"
	.text
	.type	test_default_props_and_providers, @function
test_default_props_and_providers:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$93, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L24
	leaq	testprov_provider_init(%rip), %rdx
	leaq	.LC6(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_add_builtin@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$94, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	cmpl	$0, -36(%rbp)
	jne	.L17
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_set_default_properties@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$99, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L25
.L17:
	leaq	.LC6(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$102, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L26
	cmpl	$1, -36(%rbp)
	jne	.L19
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_set_default_properties@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$106, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
.L19:
	leaq	.LC2(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$109, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L28
	cmpl	$2, -36(%rbp)
	jne	.L21
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_set_default_properties@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$113, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L29
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$116, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L30
.L21:
	movl	$1, -20(%rbp)
	jmp	.L16
.L24:
	nop
	jmp	.L16
.L25:
	nop
	jmp	.L16
.L26:
	nop
	jmp	.L16
.L27:
	nop
	jmp	.L16
.L28:
	nop
	jmp	.L16
.L29:
	nop
	jmp	.L16
.L30:
	nop
.L16:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_default_props_and_providers, .-test_default_props_and_providers
	.section	.rodata
	.align 8
.LC11:
	.string	"test_default_props_and_providers"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_default_props_and_providers(%rip), %rsi
	leaq	.LC11(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

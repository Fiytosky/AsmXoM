	.file	"defltfips_test.c"
	.text
	.local	is_fips
	.comm	is_fips,4,4
	.local	bad_fips
	.comm	bad_fips,4,4
	.section	.rodata
.LC0:
	.string	"fips"
.LC1:
	.string	"is_fips_enabled"
.LC2:
	.string	"is_fips || bad_fips"
.LC3:
	.string	"../test/defltfips_test.c"
.LC4:
	.string	"is_fips_loaded"
.LC5:
	.string	"is_fips && !bad_fips"
.LC6:
	.string	"SHA2-256"
.LC7:
	.string	"sha256"
.LC8:
	.string	"\"fips\""
	.align 8
.LC9:
	.string	"OSSL_PROVIDER_get0_name(EVP_MD_get0_provider(sha256))"
	.text
	.type	test_is_fips_enabled, @function
test_is_fips_enabled:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movl	$0, %edi
	call	EVP_default_properties_is_fips_enabled@PLT
	movl	%eax, -12(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_available@PLT
	movl	%eax, -16(%rbp)
	movl	is_fips(%rip), %eax
	testl	%eax, %eax
	jne	.L2
	movl	bad_fips(%rip), %eax
	testl	%eax, %eax
	je	.L3
.L2:
	movl	$1, %edi
	jmp	.L4
.L3:
	movl	$0, %edi
.L4:
	movl	-12(%rbp), %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$37, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L5
	movl	is_fips(%rip), %eax
	testl	%eax, %eax
	je	.L6
	movl	bad_fips(%rip), %eax
	testl	%eax, %eax
	jne	.L6
	movl	$1, %edi
	jmp	.L7
.L6:
	movl	$0, %edi
.L7:
	movl	-16(%rbp), %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$38, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L8
.L5:
	movl	$0, %eax
	jmp	.L9
.L8:
	leaq	.LC6(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	movl	bad_fips(%rip), %eax
	testl	%eax, %eax
	je	.L10
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$47, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$0, %eax
	jmp	.L9
.L10:
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$52, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L12
	movl	$0, %eax
	jmp	.L9
.L12:
	movl	is_fips(%rip), %eax
	testl	%eax, %eax
	je	.L13
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$55, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L13
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$0, %eax
	jmp	.L9
.L13:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
.L11:
	movl	$0, %edi
	call	EVP_default_properties_is_fips_enabled@PLT
	movl	%eax, -12(%rbp)
	movl	is_fips(%rip), %eax
	testl	%eax, %eax
	jne	.L14
	movl	bad_fips(%rip), %eax
	testl	%eax, %eax
	je	.L15
.L14:
	movl	$1, %edi
	jmp	.L16
.L15:
	movl	$0, %edi
.L16:
	movl	-12(%rbp), %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$65, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L17
	movl	$0, %eax
	jmp	.L9
.L17:
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_is_fips_enabled, .-test_is_fips_enabled
	.section	.rodata
.LC10:
	.string	"Error parsing test options\n"
.LC11:
	.string	"badfips"
.LC12:
	.string	"Invalid argument\n"
.LC13:
	.string	"test_is_fips_enabled"
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
	subq	$16, %rsp
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L19
	leaq	.LC10(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$77, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L20
.L19:
	call	test_get_argument_count@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L21
	cmpq	$1, -8(%rbp)
	je	.L22
	jmp	.L23
.L21:
	movl	$0, is_fips(%rip)
	movl	$0, bad_fips(%rip)
	jmp	.L24
.L22:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, -16(%rbp)
	leaq	.LC0(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L25
	movl	$1, is_fips(%rip)
	movl	$0, bad_fips(%rip)
	jmp	.L24
.L25:
	leaq	.LC11(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L23
	movl	$0, is_fips(%rip)
	movl	$1, bad_fips(%rip)
	jmp	.L24
.L23:
	leaq	.LC12(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$101, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L20
.L24:
	leaq	test_is_fips_enabled(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

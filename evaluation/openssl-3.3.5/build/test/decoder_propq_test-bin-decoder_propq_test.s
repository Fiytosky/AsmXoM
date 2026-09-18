	.file	"decoder_propq_test.c"
	.text
	.local	libctx
	.comm	libctx,8,8
	.local	nullprov
	.comm	nullprov,8,8
	.local	libprov
	.comm	libprov,8,8
	.local	filename
	.comm	filename,8,8
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_get_options, .-test_get_options
	.type	passcb, @function
passcb:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	$1936941424, (%rax)
	movb	$0, 4(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	passcb, .-passcb
	.section	.rodata
.LC0:
	.string	"r"
	.align 8
.LC1:
	.string	"bio = BIO_new_file(filename, \"r\")"
.LC2:
	.string	"../test/decoder_propq_test.c"
	.align 8
.LC3:
	.string	"PEM_read_bio_PrivateKey_ex(bio, &privkey, &passcb, NULL, libctx, NULL)"
.LC4:
	.string	"?fips=true"
	.align 8
.LC5:
	.string	"PEM_read_bio_PrivateKey_ex(bio, &privkey, &passcb, NULL, libctx, \"?fips=true\")"
	.text
	.type	test_decode_nonfipsalg, @function
test_decode_nonfipsalg:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	libctx(%rip), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	EVP_default_properties_enable_fips@PLT
	movq	filename(%rip), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$60, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L11
	movq	libctx(%rip), %rcx
	leaq	passcb(%rip), %rdx
	leaq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey_ex@PLT
	movq	%rax, %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$67, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L12
	movq	libctx(%rip), %rcx
	leaq	.LC4(%rip), %rdi
	leaq	passcb(%rip), %rdx
	leaq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey_ex@PLT
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$74, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L13
	movl	$1, -4(%rbp)
	jmp	.L7
.L11:
	nop
	jmp	.L7
.L12:
	nop
	jmp	.L7
.L13:
	nop
.L7:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_decode_nonfipsalg, .-test_decode_nonfipsalg
	.section	.rodata
.LC6:
	.string	"default"
.LC7:
	.string	"test_decode_nonfipsalg"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	leaq	.LC6(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L15
.L20:
	cmpl	$505, -20(%rbp)
	jg	.L16
	cmpl	$500, -20(%rbp)
	jge	.L15
	cmpl	$1, -20(%rbp)
	je	.L18
	cmpl	$2, -20(%rbp)
	jne	.L16
	call	opt_arg@PLT
	movq	%rax, -8(%rbp)
	jmp	.L15
.L18:
	call	opt_arg@PLT
	movq	%rax, -16(%rbp)
	jmp	.L15
.L16:
	movl	$0, %eax
	jmp	.L19
.L15:
	call	opt_next@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L20
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, filename(%rip)
	movq	-8(%rbp), %rcx
	leaq	libprov(%rip), %rdx
	movq	-16(%rbp), %rax
	leaq	nullprov(%rip), %rsi
	leaq	libctx(%rip), %rdi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	test_get_libctx@PLT
	testl	%eax, %eax
	jne	.L21
	movl	$0, %eax
	jmp	.L19
.L21:
	leaq	test_decode_nonfipsalg(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	libprov(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	libctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movq	nullprov(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
.LC8:
	.string	"Usage: %s [options] file\n"
.LC9:
	.string	"Valid options are:\n"
.LC10:
	.string	"help"
.LC11:
	.string	"Display this summary"
.LC12:
	.string	"list"
	.align 8
.LC13:
	.string	"Display the list of tests available"
.LC14:
	.string	"test"
	.align 8
.LC15:
	.string	"Run a single test by id or name"
.LC16:
	.string	"iter"
	.align 8
.LC17:
	.string	"Run a single iteration of a test"
.LC18:
	.string	"indent"
	.align 8
.LC19:
	.string	"Number of tabs added to output"
.LC20:
	.string	"seed"
	.align 8
.LC21:
	.string	"Seed value to randomize tests with"
.LC22:
	.string	"config"
	.align 8
.LC23:
	.string	"The configuration file to use for the libctx"
.LC24:
	.string	"provider"
	.align 8
.LC25:
	.string	"The provider to load (The default value is 'default')"
.LC26:
	.string	"file\tFile to decode.\n"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	test_options.0, @object
	.size	test_options.0, 288
test_options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC8
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC9
	.quad	.LC10
	.long	500
	.long	45
	.quad	.LC11
	.quad	.LC12
	.long	501
	.long	45
	.quad	.LC13
	.quad	.LC14
	.long	502
	.long	115
	.quad	.LC15
	.quad	.LC16
	.long	503
	.long	110
	.quad	.LC17
	.quad	.LC18
	.long	504
	.long	112
	.quad	.LC19
	.quad	.LC20
	.long	505
	.long	110
	.quad	.LC21
	.quad	.LC22
	.long	1
	.long	60
	.quad	.LC23
	.quad	.LC24
	.long	2
	.long	115
	.quad	.LC25
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC26
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

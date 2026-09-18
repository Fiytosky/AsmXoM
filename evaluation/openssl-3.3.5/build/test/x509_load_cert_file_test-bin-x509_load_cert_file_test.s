	.file	"x509_load_cert_file_test.c"
	.text
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB365:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_const_X509_OBJECT_sk_type, @function
ossl_check_const_X509_OBJECT_sk_type:
.LFB448:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE448:
	.size	ossl_check_const_X509_OBJECT_sk_type, .-ossl_check_const_X509_OBJECT_sk_type
	.type	ossl_check_X509_OBJECT_sk_type, @function
ossl_check_X509_OBJECT_sk_type:
.LFB449:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE449:
	.size	ossl_check_X509_OBJECT_sk_type, .-ossl_check_X509_OBJECT_sk_type
	.type	ossl_check_X509_OBJECT_freefunc_type, @function
ossl_check_X509_OBJECT_freefunc_type:
.LFB452:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE452:
	.size	ossl_check_X509_OBJECT_freefunc_type, .-ossl_check_X509_OBJECT_freefunc_type
	.local	chain
	.comm	chain,8,8
	.local	crl
	.comm	crl,8,8
	.section	.rodata
.LC0:
	.string	"store = X509_STORE_new()"
	.align 8
.LC1:
	.string	"../test/x509_load_cert_file_test.c"
	.align 8
.LC2:
	.string	"lookup = X509_STORE_add_lookup(store, X509_LOOKUP_file())"
	.align 8
.LC3:
	.string	"X509_load_cert_file(lookup, chain, X509_FILETYPE_PEM)"
	.align 8
.LC4:
	.string	"certs = X509_STORE_get1_all_certs(store)"
.LC5:
	.string	"4"
.LC6:
	.string	"sk_X509_num(certs)"
	.align 8
.LC7:
	.string	"objs = X509_STORE_get1_objects(store)"
.LC8:
	.string	"sk_X509_OBJECT_num(objs)"
.LC9:
	.string	"X509_LU_X509"
.LC10:
	.string	"X509_OBJECT_get_type(obj)"
	.align 8
.LC11:
	.string	"X509_load_crl_file(lookup, crl, X509_FILETYPE_PEM)"
	.text
	.type	test_load_cert_file, @function
test_load_cert_file:
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
	movl	$0, -20(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	call	X509_STORE_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$25, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L18
	call	X509_LOOKUP_file@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_lookup@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$26, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L18
	movq	chain(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_load_cert_file@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$27, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L18
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_get1_all_certs@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$28, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L18
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4, %r9d
	movl	%esi, %r8d
	movl	$29, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L18
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_get1_objects@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$30, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L18
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4, %r9d
	movl	%esi, %r8d
	movl	$31, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L18
	movl	$0, -24(%rbp)
	jmp	.L13
.L15:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_OBJECT_sk_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_OBJECT_get_type@PLT
	movl	%eax, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$36, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L19
	addl	$1, -24(%rbp)
.L13:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -24(%rbp)
	jl	.L15
	movq	crl(%rip), %rax
	testq	%rax, %rax
	je	.L16
	movq	crl(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_load_crl_file@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$40, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L20
.L16:
	movl	$1, -20(%rbp)
	jmp	.L12
.L18:
	nop
	jmp	.L12
.L19:
	nop
	jmp	.L12
.L20:
	nop
.L12:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	X509_OBJECT_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_freefunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_load_cert_file, .-test_load_cert_file
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC12:
	.string	"Error parsing test options\n"
.LC13:
	.string	"test_load_cert_file"
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
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L24
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$57, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L25
.L24:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, chain(%rip)
	movq	chain(%rip), %rax
	testq	%rax, %rax
	jne	.L26
	movl	$0, %eax
	jmp	.L25
.L26:
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, crl(%rip)
	leaq	test_load_cert_file(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L25:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 8
.LC14:
	.string	"Usage: %s [options] cert.pem [crl.pem]\n"
.LC15:
	.string	"Valid options are:\n"
.LC16:
	.string	"help"
.LC17:
	.string	"Display this summary"
.LC18:
	.string	"list"
	.align 8
.LC19:
	.string	"Display the list of tests available"
.LC20:
	.string	"test"
	.align 8
.LC21:
	.string	"Run a single test by id or name"
.LC22:
	.string	"iter"
	.align 8
.LC23:
	.string	"Run a single iteration of a test"
.LC24:
	.string	"indent"
	.align 8
.LC25:
	.string	"Number of tabs added to output"
.LC26:
	.string	"seed"
	.align 8
.LC27:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC14
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC15
	.quad	.LC16
	.long	500
	.long	45
	.quad	.LC17
	.quad	.LC18
	.long	501
	.long	45
	.quad	.LC19
	.quad	.LC20
	.long	502
	.long	115
	.quad	.LC21
	.quad	.LC22
	.long	503
	.long	110
	.quad	.LC23
	.quad	.LC24
	.long	504
	.long	112
	.quad	.LC25
	.quad	.LC26
	.long	505
	.long	110
	.quad	.LC27
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"x509aux.c"
	.text
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB451:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L2
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE451:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"fp"
.LC2:
	.string	"../test/x509aux.c"
.LC3:
	.string	"TRUSTED CERTIFICATE"
.LC4:
	.string	"CERTIFICATE"
.LC5:
	.string	"X509 CERTIFICATE"
.LC6:
	.string	"unexpected PEM object: %s"
.LC7:
	.string	"error parsing input %s"
	.align 8
.LC8:
	.string	"encoded length %ld of %s != input length %ld"
.LC9:
	.string	"malloc"
	.align 8
.LC10:
	.string	"unexpected buffer position after encoding %s"
	.align 8
.LC11:
	.string	"encoded content of %s does not match input"
.LC12:
	.string	"second d2i call failed for %s"
	.align 8
.LC13:
	.string	"X509_cmp for %s resulted in %d"
	.align 8
.LC14:
	.string	"encoded length %ld of %s > input length %ld"
	.align 8
.LC15:
	.string	"encoded cert content does not match input"
	.text
	.type	test_certs, @function
test_certs:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movl	%edi, -132(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -8(%rbp)
	movl	-132(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	test_get_argument@PLT
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$33, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L5
	movl	$0, %eax
	jmp	.L29
.L5:
	movl	$0, -4(%rbp)
	jmp	.L7
.L27:
	movq	-72(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L8
	movq	d2i_X509_AUX@GOTPCREL(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L9
.L8:
	movq	d2i_X509@GOTPCREL(%rip), %rax
	movq	%rax, -16(%rbp)
.L9:
	cmpl	$0, -52(%rbp)
	je	.L10
	movq	i2d_X509_AUX@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L11
.L10:
	movq	i2d_X509@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
.L11:
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	$0, -112(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L12
	movq	-72(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L12
	movq	-72(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L12
	movq	-72(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$50, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$1, -8(%rbp)
	jmp	.L13
.L12:
	movq	-96(%rbp), %rdx
	leaq	-104(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rcx
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L14
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	subq	%rax, %rdx
	movq	-96(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L15
.L14:
	movq	-72(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$57, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$1, -8(%rbp)
	jmp	.L13
.L15:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%rdx
	cltq
	movq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	je	.L16
	movq	-96(%rbp), %rsi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$65, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$1, -8(%rbp)
	jmp	.L13
.L16:
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	leaq	.LC2(%rip), %rax
	movl	$70, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	testq	%rax, %rax
	jne	.L17
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	test_perror@PLT
	movl	$1, -8(%rbp)
	jmp	.L13
.L17:
	leaq	-120(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	cltq
	movq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	je	.L18
	movq	-96(%rbp), %rsi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$77, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$1, -8(%rbp)
	jmp	.L13
.L18:
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, -64(%rbp)
	movq	-96(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	je	.L19
	movq	-72(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$84, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$1, -8(%rbp)
	jmp	.L13
.L19:
	movq	-96(%rbp), %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L20
	movq	-72(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$89, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$1, -8(%rbp)
	jmp	.L13
.L20:
	movq	-112(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rdx
	leaq	-104(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rcx
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L21
	movq	-72(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$96, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$1, -8(%rbp)
	jmp	.L13
.L21:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_cmp@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L22
	movq	-72(%rbp), %rax
	movl	-8(%rbp), %ecx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$102, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$1, -8(%rbp)
	jmp	.L13
.L22:
	movq	-112(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$106, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -112(%rbp)
	leaq	-112(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	cltq
	movq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	je	.L23
	movq	-96(%rbp), %rsi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$112, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$1, -8(%rbp)
	jmp	.L13
.L23:
	movq	-96(%rbp), %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L24
	movq	-72(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$118, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$1, -8(%rbp)
	jmp	.L13
.L24:
	cmpl	$0, -52(%rbp)
	je	.L30
	movq	-112(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$125, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -112(%rbp)
	leaq	-112(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	cltq
	movq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	jle	.L25
	movq	-96(%rbp), %rsi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$131, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$1, -8(%rbp)
	jmp	.L13
.L25:
	movq	-64(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L30
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$137, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$1, -8(%rbp)
	jmp	.L13
.L30:
	nop
.L13:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-112(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$149, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-72(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$150, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$151, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-88(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$152, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addl	$1, -4(%rbp)
.L7:
	cmpl	$0, -8(%rbp)
	jne	.L26
	leaq	-96(%rbp), %rdi
	leaq	-88(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	leaq	-72(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_read_bio@PLT
	testl	%eax, %eax
	jne	.L27
.L26:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	call	ERR_peek_last_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$108, %eax
	jne	.L28
	cmpl	$0, -4(%rbp)
	jle	.L28
	call	ERR_clear_error@PLT
	movl	$1, %eax
	jmp	.L29
.L28:
	movl	$0, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_certs, .-test_certs
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
.LC16:
	.string	"Error parsing test options\n"
.LC17:
	.string	"test_certs"
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
	subq	$16, %rsp
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L34
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$175, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L35
.L34:
	call	test_get_argument_count@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L36
	movl	$0, %eax
	jmp	.L35
.L36:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	leaq	test_certs(%rip), %rsi
	leaq	.LC17(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 8
.LC18:
	.string	"Usage: %s [options] certfile...\n"
.LC19:
	.string	"Valid options are:\n"
.LC20:
	.string	"help"
.LC21:
	.string	"Display this summary"
.LC22:
	.string	"list"
	.align 8
.LC23:
	.string	"Display the list of tests available"
.LC24:
	.string	"test"
	.align 8
.LC25:
	.string	"Run a single test by id or name"
.LC26:
	.string	"iter"
	.align 8
.LC27:
	.string	"Run a single iteration of a test"
.LC28:
	.string	"indent"
	.align 8
.LC29:
	.string	"Number of tabs added to output"
.LC30:
	.string	"seed"
	.align 8
.LC31:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC18
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC19
	.quad	.LC20
	.long	500
	.long	45
	.quad	.LC21
	.quad	.LC22
	.long	501
	.long	45
	.quad	.LC23
	.quad	.LC24
	.long	502
	.long	115
	.quad	.LC25
	.quad	.LC26
	.long	503
	.long	110
	.quad	.LC27
	.quad	.LC28
	.long	504
	.long	112
	.quad	.LC29
	.quad	.LC30
	.long	505
	.long	110
	.quad	.LC31
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

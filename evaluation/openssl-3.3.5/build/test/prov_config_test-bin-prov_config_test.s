	.file	"prov_config_test.c"
	.text
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB364:
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
.LFE364:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.local	configfile
	.comm	configfile,8,8
	.local	recurseconfigfile
	.comm	recurseconfigfile,8,8
	.local	pathedconfig
	.comm	pathedconfig,8,8
	.section	.rodata
.LC0:
	.string	"ctx"
.LC1:
	.string	"../test/prov_config_test.c"
	.align 8
.LC2:
	.string	"OSSL_LIB_CTX_load_config(ctx, configfile)"
.LC3:
	.string	"SHA2-256"
.LC4:
	.string	"sha256"
	.text
	.type	test_double_config, @function
test_double_config:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$29, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L5
	movl	$0, %eax
	jmp	.L6
.L5:
	movq	configfile(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_load_config@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$32, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L11
	movq	configfile(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_load_config@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$34, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L12
	leaq	.LC3(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$39, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L13
	movl	$1, -4(%rbp)
	jmp	.L8
.L11:
	nop
	jmp	.L8
.L12:
	nop
	jmp	.L8
.L13:
	nop
.L8:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-4(%rbp), %eax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_double_config, .-test_double_config
	.section	.rodata
	.align 8
.LC5:
	.string	"OSSL_LIB_CTX_load_config(ctx, recurseconfigfile)"
	.text
	.type	test_recursive_config, @function
test_recursive_config:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$55, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L19
	movq	recurseconfigfile(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_load_config@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$58, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L20
	call	ERR_peek_error@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$126, %eax
	jne	.L21
	movl	$1, -4(%rbp)
	jmp	.L16
.L19:
	nop
	jmp	.L16
.L20:
	nop
	jmp	.L16
.L21:
	nop
.L16:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_recursive_config, .-test_recursive_config
	.section	.rodata
.LC6:
	.string	"OPENSSL_MODULES"
.LC7:
	.string	"module_path"
.LC8:
	.string	"full_path"
.LC9:
	.string	"full path is %s"
	.align 8
.LC10:
	.string	"Skipping modulepath test as provider not present"
.LC11:
	.string	"pathedconfig"
	.align 8
.LC12:
	.string	"OSSL_LIB_CTX_load_config(ctx, pathedconfig)"
.LC13:
	.string	"test"
	.align 8
.LC14:
	.string	"prov = OSSL_PROVIDER_load(ctx, \"test\")"
	.text
	.type	test_path_config, @function
test_path_config:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$81, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L23
	movl	$0, %eax
	jmp	.L32
.L23:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$19, %rax
	leaq	.LC1(%rip), %rcx
	movl	$84, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$85, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L25
	movl	$0, %eax
	jmp	.L32
.L25:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movabsq	$8391162080403533359, %rsi
	movabsq	$3347427302624423983, %rdi
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movl	$7303982, 15(%rax)
	movq	-32(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$90, %esi
	movl	$0, %eax
	call	test_info@PLT
	leaq	-192(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	movl	%eax, -36(%rbp)
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$92, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpl	$-1, -36(%rbp)
	jne	.L26
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$94, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L32
.L26:
	movq	pathedconfig(%rip), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$96, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L27
	movl	$0, %eax
	jmp	.L32
.L27:
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$100, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L28
	movl	$0, %eax
	jmp	.L32
.L28:
	movq	pathedconfig(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_load_config@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$103, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L33
	leaq	.LC13(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$107, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L34
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movl	$1, -4(%rbp)
	jmp	.L30
.L33:
	nop
	jmp	.L30
.L34:
	nop
.L30:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-4(%rbp), %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_path_config, .-test_path_config
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB471:
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
.LFE471:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC15:
	.string	"Error parsing test options\n"
	.align 8
.LC16:
	.string	"configfile = test_get_argument(0)"
	.align 8
.LC17:
	.string	"recurseconfigfile = test_get_argument(1)"
	.align 8
.LC18:
	.string	"pathedconfig = test_get_argument(2)"
.LC19:
	.string	"test_recursive_config"
.LC20:
	.string	"test_double_config"
.LC21:
	.string	"test_path_config"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L38
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$123, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L39
.L38:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, configfile(%rip)
	movq	configfile(%rip), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$127, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L40
	movl	$0, %eax
	jmp	.L39
.L40:
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, recurseconfigfile(%rip)
	movq	recurseconfigfile(%rip), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$130, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L41
	movl	$0, %eax
	jmp	.L39
.L41:
	movl	$2, %edi
	call	test_get_argument@PLT
	movq	%rax, pathedconfig(%rip)
	movq	pathedconfig(%rip), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$133, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L42
	movl	$0, %eax
	jmp	.L39
.L42:
	leaq	test_recursive_config(%rip), %rdx
	leaq	.LC19(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_double_config(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_path_config(%rip), %rdx
	leaq	.LC21(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L39:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 8
.LC22:
	.string	"Usage: %s [options] configfile\n"
.LC23:
	.string	"Valid options are:\n"
.LC24:
	.string	"help"
.LC25:
	.string	"Display this summary"
.LC26:
	.string	"list"
	.align 8
.LC27:
	.string	"Display the list of tests available"
	.align 8
.LC28:
	.string	"Run a single test by id or name"
.LC29:
	.string	"iter"
	.align 8
.LC30:
	.string	"Run a single iteration of a test"
.LC31:
	.string	"indent"
	.align 8
.LC32:
	.string	"Number of tabs added to output"
.LC33:
	.string	"seed"
	.align 8
.LC34:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC22
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC23
	.quad	.LC24
	.long	500
	.long	45
	.quad	.LC25
	.quad	.LC26
	.long	501
	.long	45
	.quad	.LC27
	.quad	.LC13
	.long	502
	.long	115
	.quad	.LC28
	.quad	.LC29
	.long	503
	.long	110
	.quad	.LC30
	.quad	.LC31
	.long	504
	.long	112
	.quad	.LC32
	.quad	.LC33
	.long	505
	.long	110
	.quad	.LC34
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

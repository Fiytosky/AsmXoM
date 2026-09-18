	.file	"trace_api_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"ALL"
.LC1:
	.string	"\"ALL\""
.LC2:
	.string	"cat_name"
.LC3:
	.string	"../test/trace_api_test.c"
.LC4:
	.string	"TRACE"
.LC5:
	.string	"\"TRACE\""
.LC6:
	.string	"INIT"
.LC7:
	.string	"\"INIT\""
.LC8:
	.string	"TLS"
.LC9:
	.string	"\"TLS\""
.LC10:
	.string	"TLS_CIPHER"
.LC11:
	.string	"\"TLS_CIPHER\""
.LC12:
	.string	"CONF"
.LC13:
	.string	"\"CONF\""
.LC14:
	.string	"ENGINE_TABLE"
.LC15:
	.string	"\"ENGINE_TABLE\""
.LC16:
	.string	"ENGINE_REF_COUNT"
.LC17:
	.string	"\"ENGINE_REF_COUNT\""
.LC18:
	.string	"PKCS5V2"
.LC19:
	.string	"\"PKCS5V2\""
.LC20:
	.string	"PKCS12_KEYGEN"
.LC21:
	.string	"\"PKCS12_KEYGEN\""
.LC22:
	.string	"PKCS12_DECRYPT"
.LC23:
	.string	"\"PKCS12_DECRYPT\""
.LC24:
	.string	"X509V3_POLICY"
.LC25:
	.string	"\"X509V3_POLICY\""
.LC26:
	.string	"BN_CTX"
.LC27:
	.string	"\"BN_CTX\""
.LC28:
	.string	"CMP"
.LC29:
	.string	"\"CMP\""
.LC30:
	.string	"STORE"
.LC31:
	.string	"\"STORE\""
.LC32:
	.string	"DECODER"
.LC33:
	.string	"\"DECODER\""
.LC34:
	.string	"ENCODER"
.LC35:
	.string	"\"ENCODER\""
.LC36:
	.string	"REF_COUNT"
.LC37:
	.string	"\"REF_COUNT\""
.LC38:
	.string	"HTTP"
.LC39:
	.string	"\"HTTP\""
.LC40:
	.string	"is_cat_name_eq"
.LC41:
	.string	"ret_cat_num"
.LC42:
	.string	"expected_ret"
	.text
	.type	test_trace_categories, @function
test_trace_categories:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$-1, -4(%rbp)
	jmp	.L2
.L29:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	OSSL_trace_get_category_name@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -8(%rbp)
	cmpl	$18, -4(%rbp)
	je	.L3
	cmpl	$18, -4(%rbp)
	jg	.L4
	cmpl	$17, -4(%rbp)
	je	.L5
	cmpl	$17, -4(%rbp)
	jg	.L4
	cmpl	$16, -4(%rbp)
	je	.L6
	cmpl	$16, -4(%rbp)
	jg	.L4
	cmpl	$15, -4(%rbp)
	je	.L7
	cmpl	$15, -4(%rbp)
	jg	.L4
	cmpl	$14, -4(%rbp)
	je	.L8
	cmpl	$14, -4(%rbp)
	jg	.L4
	cmpl	$13, -4(%rbp)
	je	.L9
	cmpl	$13, -4(%rbp)
	jg	.L4
	cmpl	$12, -4(%rbp)
	je	.L10
	cmpl	$12, -4(%rbp)
	jg	.L4
	cmpl	$11, -4(%rbp)
	je	.L11
	cmpl	$11, -4(%rbp)
	jg	.L4
	cmpl	$10, -4(%rbp)
	je	.L12
	cmpl	$10, -4(%rbp)
	jg	.L4
	cmpl	$9, -4(%rbp)
	je	.L13
	cmpl	$9, -4(%rbp)
	jg	.L4
	cmpl	$8, -4(%rbp)
	je	.L14
	cmpl	$8, -4(%rbp)
	jg	.L4
	cmpl	$7, -4(%rbp)
	je	.L15
	cmpl	$7, -4(%rbp)
	jg	.L4
	cmpl	$6, -4(%rbp)
	je	.L16
	cmpl	$6, -4(%rbp)
	jg	.L4
	cmpl	$5, -4(%rbp)
	je	.L17
	cmpl	$5, -4(%rbp)
	jg	.L4
	cmpl	$4, -4(%rbp)
	je	.L18
	cmpl	$4, -4(%rbp)
	jg	.L4
	cmpl	$3, -4(%rbp)
	je	.L19
	cmpl	$3, -4(%rbp)
	jg	.L4
	cmpl	$2, -4(%rbp)
	je	.L20
	cmpl	$2, -4(%rbp)
	jg	.L4
	cmpl	$0, -4(%rbp)
	je	.L21
	cmpl	$1, -4(%rbp)
	je	.L22
	jmp	.L4
.L21:
	leaq	.LC0(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC1(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$30, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, -8(%rbp)
	jmp	.L23
.L22:
	leaq	.LC4(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC5(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$31, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, -8(%rbp)
	jmp	.L23
.L20:
	leaq	.LC6(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$32, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, -8(%rbp)
	jmp	.L23
.L19:
	leaq	.LC8(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$33, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, -8(%rbp)
	jmp	.L23
.L18:
	leaq	.LC10(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC11(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$34, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, -8(%rbp)
	jmp	.L23
.L17:
	leaq	.LC12(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC13(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$35, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, -8(%rbp)
	jmp	.L23
.L16:
	leaq	.LC14(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC15(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$36, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, -8(%rbp)
	jmp	.L23
.L15:
	leaq	.LC16(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$37, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, -8(%rbp)
	jmp	.L23
.L14:
	leaq	.LC18(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC19(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$38, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, -8(%rbp)
	jmp	.L23
.L13:
	leaq	.LC20(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC21(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$39, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, -8(%rbp)
	jmp	.L23
.L12:
	leaq	.LC22(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC23(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$40, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, -8(%rbp)
	jmp	.L23
.L11:
	leaq	.LC24(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC25(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$41, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, -8(%rbp)
	jmp	.L23
.L10:
	leaq	.LC26(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC27(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$42, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, -8(%rbp)
	jmp	.L23
.L9:
	leaq	.LC28(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC29(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$43, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, -8(%rbp)
	jmp	.L23
.L8:
	leaq	.LC30(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC31(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$44, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, -8(%rbp)
	jmp	.L23
.L7:
	leaq	.LC32(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC33(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$45, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, -8(%rbp)
	jmp	.L23
.L6:
	leaq	.LC34(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC35(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$46, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, -8(%rbp)
	jmp	.L23
.L5:
	leaq	.LC36(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC37(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$47, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, -8(%rbp)
	jmp	.L23
.L3:
	leaq	.LC38(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC39(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$48, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, -8(%rbp)
	jmp	.L23
.L4:
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$51, %esi
	call	test_ptr_null@PLT
	movl	%eax, -8(%rbp)
	nop
.L23:
	cmpl	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$55, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_trace_get_category_num@PLT
	movl	%eax, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L26
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L27
.L26:
	movl	$-1, -12(%rbp)
.L27:
	movl	-28(%rbp), %edi
	movl	-12(%rbp), %esi
	leaq	.LC41(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$60, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L28
	movl	$0, %eax
	jmp	.L25
.L28:
	addl	$1, -4(%rbp)
.L2:
	cmpl	$20, -4(%rbp)
	jle	.L29
	movl	$1, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_trace_categories, .-test_trace_categories
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
.LC43:
	.string	"Error parsing test options\n"
.LC44:
	.string	"test_trace_categories"
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
	jne	.L33
	leaq	.LC43(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$178, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L34
.L33:
	leaq	test_trace_categories(%rip), %rdx
	leaq	.LC44(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L34:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
.LC45:
	.string	"Usage: %s [options] \n"
.LC46:
	.string	"Valid options are:\n"
.LC47:
	.string	"help"
.LC48:
	.string	"Display this summary"
.LC49:
	.string	"list"
	.align 8
.LC50:
	.string	"Display the list of tests available"
.LC51:
	.string	"test"
	.align 8
.LC52:
	.string	"Run a single test by id or name"
.LC53:
	.string	"iter"
	.align 8
.LC54:
	.string	"Run a single iteration of a test"
.LC55:
	.string	"indent"
	.align 8
.LC56:
	.string	"Number of tabs added to output"
.LC57:
	.string	"seed"
	.align 8
.LC58:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC45
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC46
	.quad	.LC47
	.long	500
	.long	45
	.quad	.LC48
	.quad	.LC49
	.long	501
	.long	45
	.quad	.LC50
	.quad	.LC51
	.long	502
	.long	115
	.quad	.LC52
	.quad	.LC53
	.long	503
	.long	110
	.quad	.LC54
	.quad	.LC55
	.long	504
	.long	112
	.quad	.LC56
	.quad	.LC57
	.long	505
	.long	110
	.quad	.LC58
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

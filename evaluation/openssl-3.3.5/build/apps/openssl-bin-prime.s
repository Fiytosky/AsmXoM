	.file	"prime.c"
	.text
	.type	lh_FUNCTION_hfn_thunk, @function
lh_FUNCTION_hfn_thunk:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	lh_FUNCTION_hfn_thunk, .-lh_FUNCTION_hfn_thunk
	.type	lh_FUNCTION_cfn_thunk, @function
lh_FUNCTION_cfn_thunk:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	lh_FUNCTION_cfn_thunk, .-lh_FUNCTION_cfn_thunk
	.type	check_num, @function
check_num:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L6
	movl	$0, -4(%rbp)
	jmp	.L7
.L9:
	addl	$1, -4(%rbp)
.L7:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L8
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jle	.L9
.L8:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jle	.L10
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$70, %al
	jle	.L9
.L10:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$96, %al
	jle	.L11
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$102, %al
	jle	.L9
	jmp	.L11
.L6:
	movl	$0, -4(%rbp)
	jmp	.L12
.L13:
	addl	$1, -4(%rbp)
.L12:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L11
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jle	.L13
.L11:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	check_num, .-check_num
	.globl	prime_options
	.section	.rodata
	.align 8
.LC0:
	.string	"Usage: %s [options] [number...]\n"
.LC1:
	.string	"General options:\n"
.LC2:
	.string	"help"
.LC3:
	.string	"Display this summary"
.LC4:
	.string	"bits"
.LC5:
	.string	"Size of number in bits"
.LC6:
	.string	"checks"
.LC7:
	.string	"Number of checks"
.LC8:
	.string	"Output options:\n"
.LC9:
	.string	"hex"
.LC10:
	.string	"Hex output"
.LC11:
	.string	"generate"
.LC12:
	.string	"Generate a prime"
.LC13:
	.string	"safe"
	.align 8
.LC14:
	.string	"When used with -generate, generate a safe prime"
.LC15:
	.string	"Provider options:\n"
.LC16:
	.string	"provider-path"
	.align 8
.LC17:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC18:
	.string	"provider"
	.align 8
.LC19:
	.string	"Provider to load (can be specified multiple times)"
.LC20:
	.string	"propquery"
	.align 8
.LC21:
	.string	"Property query used when fetching algorithms"
.LC22:
	.string	"Parameters:\n"
.LC23:
	.string	"number"
	.align 8
.LC24:
	.string	"Number(s) to check for primality if not generating"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	prime_options, @object
	.size	prime_options, 384
prime_options:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC1
	.quad	.LC2
	.long	1
	.long	45
	.quad	.LC3
	.quad	.LC4
	.long	4
	.long	112
	.quad	.LC5
	.quad	.LC6
	.long	6
	.long	112
	.quad	.LC7
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC8
	.quad	.LC9
	.long	2
	.long	45
	.quad	.LC10
	.quad	.LC11
	.long	3
	.long	45
	.quad	.LC12
	.quad	.LC13
	.long	5
	.long	45
	.quad	.LC14
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC15
	.quad	.LC16
	.long	1602
	.long	115
	.quad	.LC17
	.quad	.LC18
	.long	1601
	.long	115
	.quad	.LC19
	.quad	.LC20
	.long	1603
	.long	115
	.quad	.LC21
	.quad	OPT_PARAM_STR
	.long	1
	.long	45
	.quad	.LC22
	.quad	.LC23
	.long	0
	.long	0
	.quad	.LC24
	.quad	0
	.zero	16
	.section	.rodata
.LC25:
	.string	"%s: Use -help for summary.\n"
.LC26:
	.string	"Missing number (s) to check\n"
.LC27:
	.string	"Specify the number of bits.\n"
.LC28:
	.string	"Out of memory.\n"
.LC29:
	.string	"Failed to generate prime.\n"
.LC30:
	.string	"%s\n"
.LC31:
	.string	"../apps/prime.c"
.LC32:
	.string	"Failed to process value (%s)\n"
.LC33:
	.string	"is"
.LC34:
	.string	"is not"
.LC35:
	.string	" (%s) %s prime\n"
	.text
	.globl	prime_main
	.type	prime_main, @function
prime_main:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$1, -20(%rbp)
	movq	prime_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx
	movl	-68(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -48(%rbp)
	jmp	.L16
.L29:
	cmpl	$1604, -52(%rbp)
	je	.L16
	cmpl	$1604, -52(%rbp)
	jg	.L16
	cmpl	$1603, -52(%rbp)
	jg	.L16
	cmpl	$1601, -52(%rbp)
	jge	.L18
	cmpl	$1600, -52(%rbp)
	je	.L16
	cmpl	$1600, -52(%rbp)
	jg	.L16
	cmpl	$6, -52(%rbp)
	je	.L19
	cmpl	$6, -52(%rbp)
	jg	.L16
	cmpl	$5, -52(%rbp)
	je	.L20
	cmpl	$5, -52(%rbp)
	jg	.L16
	cmpl	$4, -52(%rbp)
	je	.L21
	cmpl	$4, -52(%rbp)
	jg	.L16
	cmpl	$3, -52(%rbp)
	je	.L22
	cmpl	$3, -52(%rbp)
	jg	.L16
	cmpl	$2, -52(%rbp)
	je	.L23
	cmpl	$2, -52(%rbp)
	jg	.L16
	cmpl	$0, -52(%rbp)
	jg	.L24
	cmpl	$-1, -52(%rbp)
	jge	.L25
	jmp	.L16
.L24:
	cmpl	$1, -52(%rbp)
	je	.L26
	jmp	.L16
.L49:
	nop
.L25:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	leaq	.LC25(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L27
.L26:
	movq	prime_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -20(%rbp)
	jmp	.L27
.L23:
	movl	$1, -4(%rbp)
	jmp	.L16
.L22:
	movl	$1, -8(%rbp)
	jmp	.L16
.L21:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -12(%rbp)
	jmp	.L16
.L20:
	movl	$1, -16(%rbp)
	jmp	.L16
.L19:
	call	opt_arg@PLT
	jmp	.L16
.L18:
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L48
	nop
.L16:
	call	opt_next@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L29
	cmpl	$0, -8(%rbp)
	je	.L30
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L49
.L30:
	call	opt_num_rest@PLT
	movl	%eax, -68(%rbp)
	call	opt_rest@PLT
	movq	%rax, -80(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L31
	cmpl	$0, -68(%rbp)
	jne	.L31
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC26(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L25
.L31:
	cmpl	$0, -8(%rbp)
	je	.L40
	cmpl	$0, -12(%rbp)
	jne	.L33
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC27(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L27
.L33:
	call	BN_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L34
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L27
.L34:
	movq	-64(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %esi
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	BN_generate_prime_ex@PLT
	testl	%eax, %eax
	jne	.L35
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC29(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L27
.L35:
	cmpl	$0, -4(%rbp)
	je	.L36
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_bn2hex@PLT
	movq	%rax, -32(%rbp)
	jmp	.L37
.L36:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_bn2dec@PLT
	movq	%rax, -32(%rbp)
.L37:
	cmpq	$0, -32(%rbp)
	jne	.L38
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L27
.L38:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	.LC30(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC31(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$134, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L39
.L46:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_num
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L41
	cmpl	$0, -4(%rbp)
	je	.L42
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	movl	%eax, -36(%rbp)
	jmp	.L41
.L42:
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_dec2bn@PLT
	movl	%eax, -36(%rbp)
.L41:
	cmpl	$0, -36(%rbp)
	jne	.L43
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC32(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L27
.L43:
	movq	-64(%rbp), %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_print@PLT
	movq	-64(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	testl	%eax, %eax
	je	.L44
	leaq	.LC33(%rip), %rax
	jmp	.L45
.L44:
	leaq	.LC34(%rip), %rax
.L45:
	movq	-80(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	bio_out@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$8, -80(%rbp)
.L40:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L46
.L39:
	movl	$0, -20(%rbp)
	jmp	.L27
.L48:
	nop
.L27:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	prime_main, .-prime_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

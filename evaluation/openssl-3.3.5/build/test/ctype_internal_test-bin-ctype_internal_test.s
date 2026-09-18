	.file	"ctype_internal_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"ossl_isascii(n) != 0"
	.align 8
.LC1:
	.string	"isascii((unsigned char)n) != 0"
.LC2:
	.string	"../test/ctype_internal_test.c"
.LC3:
	.string	"ossl_isalpha(n) != 0"
.LC4:
	.string	"isalpha(n) != 0"
.LC5:
	.string	"ossl_isalnum(n) != 0"
.LC6:
	.string	"isalnum(n) != 0"
.LC7:
	.string	"ossl_isblank(n) != 0"
.LC8:
	.string	"isblank(n) != 0"
.LC9:
	.string	"ossl_iscntrl(n) != 0"
.LC10:
	.string	"iscntrl(n) != 0"
.LC11:
	.string	"ossl_isdigit(n) != 0"
.LC12:
	.string	"isdigit(n) != 0"
.LC13:
	.string	"ossl_isgraph(n) != 0"
.LC14:
	.string	"isgraph(n) != 0"
.LC15:
	.string	"ossl_islower(n) != 0"
.LC16:
	.string	"islower(n) != 0"
.LC17:
	.string	"ossl_isprint(n) != 0"
.LC18:
	.string	"isprint(n) != 0"
.LC19:
	.string	"ossl_ispunct(n) != 0"
.LC20:
	.string	"ispunct(n) != 0"
.LC21:
	.string	"ossl_isspace(n) != 0"
.LC22:
	.string	"isspace(n) != 0"
.LC23:
	.string	"ossl_isupper(n) != 0"
.LC24:
	.string	"isupper(n) != 0"
.LC25:
	.string	"ossl_isxdigit(n) != 0"
.LC26:
	.string	"isxdigit(n) != 0"
	.text
	.type	test_ctype_chars, @function
test_ctype_chars:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	$127, %eax
	setbe	%al
	movzbl	%al, %edi
	movl	-20(%rbp), %eax
	notl	%eax
	shrb	$7, %al
	movzbl	%al, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$30, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movl	-20(%rbp), %eax
	cmpl	$127, %eax
	jbe	.L4
	movl	$1, %eax
	jmp	.L3
.L4:
	movl	-20(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebx
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	shrl	$10, %eax
	andl	$1, %eax
	movzbl	%al, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$36, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L5
	movl	-20(%rbp), %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebx
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8, %eax
	shrl	$3, %eax
	andl	$1, %eax
	movzbl	%al, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$37, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L5
	movl	-20(%rbp), %eax
	movl	$32, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebx
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1, %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$39, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L5
	movl	-20(%rbp), %eax
	movl	$64, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebx
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2, %eax
	shrl	%eax
	andl	$1, %eax
	movzbl	%al, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$41, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L5
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	ossl_isdigit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebx
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	shrl	$11, %eax
	andl	$1, %eax
	movzbl	%al, %esi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$42, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L5
	movl	-20(%rbp), %eax
	movl	$128, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebx
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	shrw	$15, %ax
	movzbl	%al, %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$43, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L5
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	ossl_islower@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebx
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	shrl	$9, %eax
	andl	$1, %eax
	movzbl	%al, %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$44, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L5
	movl	-20(%rbp), %eax
	movl	$256, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebx
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	shrl	$14, %eax
	andl	$1, %eax
	movzbl	%al, %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$45, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L5
	movl	-20(%rbp), %eax
	movl	$512, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebx
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	shrl	$2, %eax
	andl	$1, %eax
	movzbl	%al, %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$46, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L5
	movl	-20(%rbp), %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebx
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	shrl	$13, %eax
	andl	$1, %eax
	movzbl	%al, %esi
	leaq	.LC21(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$47, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L5
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	ossl_isupper@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebx
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	shrl	$8, %eax
	andl	$1, %eax
	movzbl	%al, %esi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$48, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L5
	movl	-20(%rbp), %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebx
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	shrl	$12, %eax
	andl	$1, %eax
	movzbl	%al, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$49, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L5
	movl	$1, %eax
	jmp	.L3
.L5:
	movl	$0, %eax
.L3:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_ctype_chars, .-test_ctype_chars
	.data
	.align 32
	.type	case_change, @object
	.size	case_change, 64
case_change:
	.long	65
	.long	97
	.long	88
	.long	120
	.long	90
	.long	122
	.long	48
	.long	48
	.long	37
	.long	37
	.long	126
	.long	126
	.long	0
	.long	0
	.long	-1
	.long	-1
	.section	.rodata
.LC27:
	.string	"case_change[n].u"
	.align 8
.LC28:
	.string	"ossl_toupper(case_change[n].l)"
	.align 8
.LC29:
	.string	"ossl_toupper(case_change[n].u)"
	.text
	.type	test_ctype_toupper, @function
test_ctype_toupper:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	case_change(%rip), %rax
	movl	(%rdx,%rax), %ebx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	4+case_change(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	ossl_toupper@PLT
	movl	%eax, %esi
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$68, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L8
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	case_change(%rip), %rax
	movl	(%rdx,%rax), %ebx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	case_change(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	ossl_toupper@PLT
	movl	%eax, %esi
	leaq	.LC27(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$69, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L8
	movl	$1, %eax
	jmp	.L10
.L8:
	movl	$0, %eax
.L10:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_ctype_toupper, .-test_ctype_toupper
	.section	.rodata
.LC30:
	.string	"case_change[n].l"
	.align 8
.LC31:
	.string	"ossl_tolower(case_change[n].u)"
	.align 8
.LC32:
	.string	"ossl_tolower(case_change[n].l)"
	.text
	.type	test_ctype_tolower, @function
test_ctype_tolower:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	4+case_change(%rip), %rax
	movl	(%rdx,%rax), %ebx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	case_change(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	ossl_tolower@PLT
	movl	%eax, %esi
	leaq	.LC30(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$74, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L12
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	4+case_change(%rip), %rax
	movl	(%rdx,%rax), %ebx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	4+case_change(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	ossl_tolower@PLT
	movl	%eax, %esi
	leaq	.LC30(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$75, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L12
	movl	$1, %eax
	jmp	.L14
.L12:
	movl	$0, %eax
.L14:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_ctype_tolower, .-test_ctype_tolower
	.type	test_ctype_eof, @function
test_ctype_eof:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$-1, %edi
	call	test_ctype_chars
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_ctype_eof, .-test_ctype_eof
	.section	.rodata
.LC33:
	.string	"test_ctype_chars"
.LC34:
	.string	"test_ctype_toupper"
.LC35:
	.string	"test_ctype_tolower"
.LC36:
	.string	"test_ctype_eof"
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
	leaq	test_ctype_chars(%rip), %rsi
	leaq	.LC33(%rip), %rax
	movl	$1, %ecx
	movl	$256, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_ctype_toupper(%rip), %rsi
	leaq	.LC34(%rip), %rax
	movl	$1, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_ctype_tolower(%rip), %rsi
	leaq	.LC35(%rip), %rax
	movl	$1, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_ctype_eof(%rip), %rdx
	leaq	.LC36(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

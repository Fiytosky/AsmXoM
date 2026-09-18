	.file	"bntest.c"
	.text
	.section	.rodata
	.align 4
	.type	NUM0, @object
	.size	NUM0, 4
NUM0:
	.long	100
	.align 4
	.type	NUM1, @object
	.size	NUM1, 4
NUM1:
	.long	50
	.align 4
	.type	NUM_PRIME_TESTS, @object
	.size	NUM_PRIME_TESTS, 4
NUM_PRIME_TESTS:
	.long	20
	.local	ctx
	.comm	ctx,8,8
	.data
	.align 16
	.type	p0, @object
	.size	p0, 24
p0:
	.long	163
	.long	7
	.long	6
	.long	3
	.long	0
	.long	-1
	.align 16
	.type	p1, @object
	.size	p1, 16
p1:
	.long	193
	.long	15
	.long	0
	.long	-1
	.text
	.type	findattr, @function
findattr:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -16(%rbp)
	jmp	.L2
.L5:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L3
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L4
.L3:
	addq	$16, -16(%rbp)
.L2:
	subl	$1, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L5
	movl	$0, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	findattr, .-findattr
	.section	.rodata
.LC0:
	.string	"../test/bntest.c"
	.text
	.type	parse_bigBN, @function
parse_bigBN:
.LFB469:
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
	movl	$0, %esi
	movq	%rax, %rdi
	call	glue_strings@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	movl	%eax, -12(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$77, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	parse_bigBN, .-parse_bigBN
	.type	parseBN, @function
parseBN:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	parseBN, .-parseBN
	.type	parsedecBN, @function
parsedecBN:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_dec2bn@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	parsedecBN, .-parsedecBN
	.section	.rodata
.LC1:
	.string	"%s:%d: Can't find %s"
.LC2:
	.string	"Could not decode '%s'"
	.text
	.type	getBN, @function
getBN:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -32(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	findattr
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L13
	movq	-40(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rsi
	leaq	.LC1(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$102, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L16
.L13:
	movq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parseBN
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpl	%eax, %ebx
	je	.L15
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$107, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-32(%rbp), %rax
.L16:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	getBN, .-getBN
	.section	.rodata
.LC3:
	.string	"ret = getBN(s, attribute)"
.LC4:
	.string	"INT_MAX"
.LC5:
	.string	"word = BN_get_word(ret)"
	.text
	.type	getint, @function
getint:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$119, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L22
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_get_word@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2147483647, %r9d
	movq	%rsi, %r8
	movl	$120, %esi
	movq	%rax, %rdi
	call	test_ulong_le@PLT
	testl	%eax, %eax
	je	.L22
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L20
.L22:
	nop
.L20:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	getint, .-getint
	.section	.rodata
.LC6:
	.string	"unexpected %s value"
.LC7:
	.string	"actual"
.LC8:
	.string	"expected"
	.text
	.type	equalBN, @function
equalBN:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L24
	movl	$1, %eax
	jmp	.L25
.L24:
	movq	-8(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$135, %esi
	movl	$0, %eax
	call	test_error@PLT
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$136, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	movl	$0, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	equalBN, .-equalBN
	.type	rand_neg, @function
rand_neg:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	neg.8(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, neg.8(%rip)
	andl	$7, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	sign.7(%rip), %rax
	movl	(%rdx,%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	rand_neg, .-rand_neg
	.section	.rodata
.LC9:
	.string	"a = BN_new()"
.LC10:
	.string	"b = BN_new()"
.LC11:
	.string	"c = BN_new()"
.LC12:
	.string	"d = BN_new()"
.LC13:
	.string	"BN_bntest_rand(a, 1024, 1, 0)"
.LC14:
	.string	"BN_bntest_rand(b, 1024, 1, 0)"
.LC15:
	.string	"BN_copy(c, a)"
.LC16:
	.string	"BN_copy(d, b)"
.LC17:
	.string	"swap"
.LC18:
	.string	"swap with same pointer"
.LC19:
	.string	"cswap true"
.LC20:
	.string	"cswap false"
.LC21:
	.string	"swap, flags"
	.align 8
.LC22:
	.string	"BN_get_flags(b, BN_FLG_CONSTTIME)"
	.align 8
.LC23:
	.string	"BN_get_flags(a, BN_FLG_CONSTTIME)"
.LC24:
	.string	"cswap true, flags"
.LC25:
	.string	"cswap false, flags"
	.text
	.type	test_swap, @function
test_swap:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$156, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L50
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$157, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L50
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$158, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L50
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$159, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L50
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$162, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$163, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	movq	%rax, %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$164, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L51
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	movq	%rax, %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$165, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L51
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_swap@PLT
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC17(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L52
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC17(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L52
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_swap@PLT
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC18(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L53
	movl	$1, -48(%rbp)
	movl	-48(%rbp), %eax
	cltq
	movl	-44(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_consttime_swap@PLT
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC19(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L54
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC19(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L54
	movl	-48(%rbp), %eax
	cltq
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_consttime_swap@PLT
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC19(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L55
	movl	$0, -48(%rbp)
	movl	-48(%rbp), %eax
	cltq
	movl	-44(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_consttime_swap@PLT
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC20(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L56
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC20(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L56
	movl	-48(%rbp), %eax
	cltq
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_consttime_swap@PLT
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC20(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L57
	movq	-40(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_swap@PLT
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC21(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L58
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC21(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L58
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$210, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L58
	movq	-40(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$211, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L58
	movl	$1, -48(%rbp)
	movl	-48(%rbp), %eax
	cltq
	movl	-44(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_consttime_swap@PLT
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC24(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L59
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC24(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L59
	movq	-40(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$218, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L59
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$219, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L59
	movl	$0, -48(%rbp)
	movl	-48(%rbp), %eax
	cltq
	movl	-44(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_consttime_swap@PLT
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC25(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L60
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC25(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L60
	movq	-40(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$226, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$227, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L60
	movl	$1, -28(%rbp)
	jmp	.L31
.L50:
	nop
	jmp	.L31
.L51:
	nop
	jmp	.L31
.L52:
	nop
	jmp	.L31
.L53:
	nop
	jmp	.L31
.L54:
	nop
	jmp	.L31
.L55:
	nop
	jmp	.L31
.L56:
	nop
	jmp	.L31
.L57:
	nop
	jmp	.L31
.L58:
	nop
	jmp	.L31
.L59:
	nop
	jmp	.L31
.L60:
	nop
.L31:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	test_swap, .-test_swap
	.section	.rodata
.LC26:
	.string	"BN_bntest_rand(a, 512, 0, 0)"
.LC27:
	.string	"BN_copy(b, a)"
.LC28:
	.string	"0"
.LC29:
	.string	"BN_set_bit(a, i)"
.LC30:
	.string	"BN_add_word(b, i)"
	.align 8
.LC31:
	.string	"BN_bntest_rand(b, 400 + i - NUM1, 0, 0)"
.LC32:
	.string	"BN_sub(c, a, b)"
.LC33:
	.string	"BN_add(c, c, b)"
.LC34:
	.string	"BN_sub(c, c, a)"
.LC35:
	.string	"c"
	.text
	.type	test_sub, @function
test_sub:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -24(%rbp)
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$244, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L73
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$245, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L73
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$246, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L73
	movl	$0, -20(%rbp)
	jmp	.L65
.L71:
	movl	$50, %eax
	cmpl	%eax, -20(%rbp)
	jge	.L66
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$512, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$251, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L67
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	movq	%rax, %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$252, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L67
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_bit@PLT
	movl	%eax, %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$253, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L67
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$254, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L67
	jmp	.L64
.L66:
	movl	-20(%rbp), %eax
	addl	$400, %eax
	movl	$50, %edx
	subl	%edx, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$257, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L74
	call	rand_neg
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	call	rand_neg
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
.L67:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$262, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L75
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$263, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L75
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$264, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L75
	movq	-16(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$265, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L75
	addl	$1, -20(%rbp)
.L65:
	movl	$100, %edx
	movl	$50, %eax
	addl	%edx, %eax
	cmpl	%eax, -20(%rbp)
	jl	.L71
	movl	$1, -24(%rbp)
	jmp	.L64
.L73:
	nop
	jmp	.L64
.L74:
	nop
	jmp	.L64
.L75:
	nop
.L64:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-24(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	test_sub, .-test_sub
	.section	.rodata
.LC36:
	.string	"e = BN_new()"
.LC37:
	.string	"recp = BN_RECP_CTX_new()"
.LC38:
	.string	"BN_bntest_rand(a, 400, 0, 0)"
.LC39:
	.string	"BN_lshift(a, a, i)"
.LC40:
	.string	"BN_add_word(a, i)"
	.align 8
.LC41:
	.string	"BN_bntest_rand(b, 50 + 3 * (i - NUM1), 0, 0)"
.LC42:
	.string	"BN_RECP_CTX_set(recp, b, ctx)"
	.align 8
.LC43:
	.string	"BN_div_recp(d, c, a, recp, ctx)"
.LC44:
	.string	"BN_mul(e, d, b, ctx)"
.LC45:
	.string	"BN_add(d, e, c)"
.LC46:
	.string	"BN_sub(d, d, a)"
.LC47:
	.string	"d"
	.text
	.type	test_div_recip, @function
test_div_recip:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$282, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L88
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$283, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L88
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$284, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L88
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$285, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L88
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$286, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L88
	call	BN_RECP_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$287, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L88
	movl	$0, -48(%rbp)
	jmp	.L80
.L86:
	movl	$50, %eax
	cmpl	%eax, -48(%rbp)
	jge	.L81
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$400, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$292, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	movq	%rax, %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$293, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L89
	movl	-48(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_lshift@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$294, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$295, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L83
	jmp	.L89
.L81:
	movl	$50, %ecx
	movl	-48(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	50(%rax), %esi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$298, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L90
.L83:
	call	rand_neg
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	call	rand_neg
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	ctx(%rip), %rdx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_RECP_CTX_set@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$303, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	movq	ctx(%rip), %rdi
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_div_recp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC43(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$304, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	movq	ctx(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$305, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC45(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$306, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC46(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$307, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	movq	-24(%rbp), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$308, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L91
	addl	$1, -48(%rbp)
.L80:
	movl	$100, %edx
	movl	$50, %eax
	addl	%edx, %eax
	cmpl	%eax, -48(%rbp)
	jl	.L86
	movl	$1, -44(%rbp)
	jmp	.L79
.L88:
	nop
	jmp	.L79
.L89:
	nop
	jmp	.L79
.L90:
	nop
	jmp	.L79
.L91:
	nop
.L79:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_RECP_CTX_free@PLT
	movl	-44(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	test_div_recip, .-test_div_recip
	.data
	.align 32
	.type	signed_mod_tests, @object
	.size	signed_mod_tests, 64
signed_mod_tests:
	.long	10
	.long	3
	.long	3
	.long	1
	.long	-10
	.long	3
	.long	-3
	.long	-1
	.long	10
	.long	-3
	.long	-3
	.long	1
	.long	-10
	.long	-3
	.long	3
	.long	-1
	.text
	.type	set_signed_bn, @function
set_signed_bn:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L93
	movl	$0, %eax
	jmp	.L94
.L93:
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	jne	.L95
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	$0, %eax
	jmp	.L94
.L95:
	movl	-20(%rbp), %eax
	shrl	$31, %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-8(%rbp), %rax
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	set_signed_bn, .-set_signed_bn
	.section	.rodata
	.align 8
.LC48:
	.string	"a = set_signed_bn(signed_mod_tests[n].n)"
	.align 8
.LC49:
	.string	"b = set_signed_bn(signed_mod_tests[n].divisor)"
	.align 8
.LC50:
	.string	"c = set_signed_bn(signed_mod_tests[n].result)"
	.align 8
.LC51:
	.string	"d = set_signed_bn(signed_mod_tests[n].remainder)"
.LC52:
	.string	"BN_div(a, b, a, b, ctx)"
.LC53:
	.string	"a"
.LC54:
	.string	"b"
	.text
	.type	test_signed_mod_replace_ab, @function
test_signed_mod_replace_ab:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	-52(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	signed_mod_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	set_signed_bn
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$350, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L101
	movl	-52(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	4+signed_mod_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	set_signed_bn
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$351, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L101
	movl	-52(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+signed_mod_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	set_signed_bn
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC50(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$352, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L101
	movl	-52(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	12+signed_mod_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	set_signed_bn
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC51(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$353, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L101
	movq	ctx(%rip), %rdi
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC52(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$356, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L102
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC35(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$357, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L102
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	.LC47(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$358, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L102
	movl	$1, -28(%rbp)
	jmp	.L99
.L101:
	nop
	jmp	.L99
.L102:
	nop
.L99:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	test_signed_mod_replace_ab, .-test_signed_mod_replace_ab
	.section	.rodata
.LC55:
	.string	"BN_div(b, a, a, b, ctx)"
	.text
	.type	test_signed_mod_replace_ba, @function
test_signed_mod_replace_ba:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	-52(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	signed_mod_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	set_signed_bn
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$373, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L108
	movl	-52(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	4+signed_mod_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	set_signed_bn
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$374, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L108
	movl	-52(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+signed_mod_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	set_signed_bn
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC50(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$375, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L108
	movl	-52(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	12+signed_mod_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	set_signed_bn
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC51(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$376, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L108
	movq	ctx(%rip), %rdi
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC55(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$379, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L109
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	.LC35(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$380, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L109
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC47(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$381, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L109
	movl	$1, -28(%rbp)
	jmp	.L106
.L108:
	nop
	jmp	.L106
.L109:
	nop
.L106:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	test_signed_mod_replace_ba, .-test_signed_mod_replace_ba
	.section	.rodata
.LC56:
	.string	"BN_bntest_rand(a, 1024, 0, 0)"
	.align 8
.LC57:
	.string	"BN_bntest_rand(b, 450 + i * 10, 0, 0)"
.LC58:
	.string	"BN_mod(c, a, b, ctx)"
.LC59:
	.string	"BN_div(d, e, a, b, ctx)"
.LC60:
	.string	"e"
.LC61:
	.string	"BN_mul(c, d, b, ctx)"
.LC62:
	.string	"BN_add(d, c, e)"
	.text
	.type	test_mod, @function
test_mod:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$396, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$397, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$398, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$399, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$400, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC56(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$403, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L122
	movl	$0, -40(%rbp)
	jmp	.L115
.L119:
	movl	-40(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	leal	450(%rax), %esi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC57(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$406, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L123
	call	rand_neg
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	call	rand_neg
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	ctx(%rip), %rsi
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC58(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$410, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L124
	movq	ctx(%rip), %rdi
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC59(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$411, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L124
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC35(%rip), %rcx
	leaq	.LC60(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$412, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L124
	movq	ctx(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$413, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L124
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC62(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$414, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L124
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC53(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$415, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L124
	addl	$1, -40(%rbp)
.L115:
	movl	$100, %eax
	cmpl	%eax, -40(%rbp)
	jl	.L119
	movl	$1, -36(%rbp)
	jmp	.L113
.L121:
	nop
	jmp	.L113
.L122:
	nop
	jmp	.L113
.L123:
	nop
	jmp	.L113
.L124:
	nop
.L113:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-36(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	test_mod, .-test_mod
	.section	.rodata
	.align 8
.LC63:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
	.align 8
.LC64:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000FFFFFFFF00"
	.align 8
.LC65:
	.string	"0000000000000000000000000000000000000000000000000000000000000000"
	.align 8
.LC66:
	.string	"00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF"
	.section	.data.rel.local,"aw"
	.align 32
	.type	bn1strings, @object
	.size	bn1strings, 136
bn1strings:
	.quad	.LC63
	.quad	.LC63
	.quad	.LC63
	.quad	.LC63
	.quad	.LC63
	.quad	.LC63
	.quad	.LC63
	.quad	.LC64
	.quad	.LC65
	.quad	.LC65
	.quad	.LC65
	.quad	.LC65
	.quad	.LC65
	.quad	.LC65
	.quad	.LC65
	.quad	.LC66
	.quad	0
	.section	.rodata
	.align 8
.LC67:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000FFFFFFFF0000000000"
	.align 8
.LC68:
	.string	"000000000000000000000000000000000000000000FFFFFFFFFFFFFF00000000"
	.section	.data.rel.local
	.align 32
	.type	bn2strings, @object
	.size	bn2strings, 136
bn2strings:
	.quad	.LC63
	.quad	.LC63
	.quad	.LC63
	.quad	.LC63
	.quad	.LC63
	.quad	.LC63
	.quad	.LC63
	.quad	.LC67
	.quad	.LC65
	.quad	.LC65
	.quad	.LC65
	.quad	.LC65
	.quad	.LC65
	.quad	.LC65
	.quad	.LC65
	.quad	.LC68
	.quad	0
	.section	.rodata
.LC69:
	.string	"p = BN_new()"
.LC70:
	.string	"m = BN_new()"
.LC71:
	.string	"n = BN_new()"
.LC72:
	.string	"mont = BN_MONT_CTX_new()"
.LC73:
	.string	"BN_bntest_rand(m, 1024, 0, 1)"
	.align 8
.LC74:
	.string	"BN_mod_exp_mont_consttime(d, a, p, m, ctx, NULL)"
	.align 8
.LC75:
	.string	"7878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878"
	.align 8
.LC76:
	.ascii	"BN_hex2bn(&a, \"78787878787"
	.string	"87878787878787878787878787878787878787878787878787878\" \"7878787878787878787878787878787878787878787878787878787878787878\" \"7878787878787878787878787878787878787878787878787878787878787878\" \"7878787878787878787878787878787878787878787878787878787878787878\")"
	.align 8
.LC77:
	.string	"095D72C08C097BA488C5E439C655A192EAFB6380073D8C2664668EDDB4060744E16E57FB4EDB9AE10A0CEFCDC28A894F689A128379DB279D48A2E20849D685939B7803BCF46CEBF5C533FB0DD35B080593DE5472E3FE5DB951B8BFF9B4CB8F039CC638A5EE8CDD703719F8000E6A9F63BEED5F2FCD52FF293EA05A251BB4AB81"
	.align 8
.LC78:
	.ascii	"BN_hex2bn(&b, \"095D72C08C0"
	.string	"97BA488C5E439C655A192EAFB6380073D8C2664668EDDB4060744\" \"E16E57FB4EDB9AE10A0CEFCDC28A894F689A128379DB279D48A2E20849D68593\" \"9B7803BCF46CEBF5C533FB0DD35B080593DE5472E3FE5DB951B8BFF9B4CB8F03\" \"9CC638A5EE8CDD703719F8000E6A9F63BEED5F2FCD52FF293EA05A251BB4AB81\")"
	.align 8
.LC79:
	.string	"D78AF684E71DB0C39CFF4E64FB9DB567132CB9C50CC98009FEB820B26F2DED9B91B9B5E2B83AE0AE4EB4E0523CA726BFBE969B89FD754F674CE99118C3F2D1C5D81FDC7C54E02B60262B241D53C040E99E45826ECA37A804668E690E1AFC1CA42C9A15D84D4954425F0B7642FC0BD9D7B24E2618D2DCC9B729D944BADACFDDAF"
	.align 8
.LC80:
	.ascii	"BN_hex2bn(&n, \"D78AF684E71"
	.string	"DB0C39CFF4E64FB9DB567132CB9C50CC98009FEB820B26F2DED9B\" \"91B9B5E2B83AE0AE4EB4E0523CA726BFBE969B89FD754F674CE99118C3F2D1C5\" \"D81FDC7C54E02B60262B241D53C040E99E45826ECA37A804668E690E1AFC1CA4\" \"2C9A15D84D4954425F0B7642FC0BD9D7B24E2618D2DCC9B729D944BADACFDDAF\")"
.LC81:
	.string	"BN_MONT_CTX_set(mont, n, ctx)"
	.align 8
.LC82:
	.string	"BN_mod_mul_montgomery(c, a, b, mont, ctx)"
	.align 8
.LC83:
	.string	"BN_mod_mul_montgomery(d, b, a, mont, ctx)"
.LC84:
	.string	"parse_bigBN(&n, bn1strings)"
.LC85:
	.string	"parse_bigBN(&a, bn2strings)"
.LC86:
	.string	"b = BN_dup(a)"
	.align 8
.LC87:
	.string	"BN_mod_mul_montgomery(c, a, a, mont, ctx)"
	.align 8
.LC88:
	.string	"BN_mod_mul_montgomery(d, a, b, mont, ctx)"
.LC89:
	.string	"parse_bigBN(&a, ahex)"
.LC90:
	.string	"parse_bigBN(&n, nhex)"
	.align 8
.LC91:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
	.align 8
.LC92:
	.string	"BN_hex2bn(&a, \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\")"
	.align 8
.LC93:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
	.align 8
.LC94:
	.string	"BN_hex2bn(&n, \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\")"
	.align 8
.LC95:
	.string	"BN_mod_mul_montgomery(d, a, a, mont, ctx)"
	.align 8
.LC96:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020202020DF"
	.align 8
.LC97:
	.ascii	"BN_hex2bn(&a, \"FFFFFFFFFFF"
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020202020DF\")"
	.align 8
.LC98:
	.string	"2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020FF2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020"
	.align 8
.LC99:
	.ascii	"BN_hex2bn(&b, \"20202020202"
	.string	"02020202020202020202020202020202020202020202020202020\" \"2020202020202020202020202020202020202020202020202020202020202020\" \"20202020202020FF202020202020202020202020202020202020202020202020\" \"2020202020202020202020202020202020202020202020202020202020202020\")"
	.align 8
.LC100:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020202020FF"
	.align 8
.LC101:
	.ascii	"BN_hex2bn(&n, \"FFFFFFFFFFF"
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020202020FF\")"
	.align 8
.LC102:
	.string	"BN_mod_exp_mont_consttime(c, a, b, n, ctx, mont)"
	.align 8
.LC103:
	.string	"BN_mod_exp_mont(d, a, b, n, ctx, mont)"
	.align 8
.LC104:
	.string	"1FA53F26F8811C58BE0357897AA5E165693230BC9DF5F01DFA6A2D59229EC69D9DE6A89C36E3B6957B22D6FAAD5A3C73AE587B710DBE92E83D3A9A3339A085CBB58F508CA4F837924BB52CC1698B7FDC2FD74362456A595A5B58E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E"
	.align 8
.LC105:
	.ascii	"BN_hex2bn(&b, \"1FA53F26F88"
	.string	"11C58BE0357897AA5E165693230BC9DF5F01DFA6A2D59229EC69D\" \"9DE6A89C36E3B6957B22D6FAAD5A3C73AE587B710DBE92E83D3A9A3339A085CB\" \"B58F508CA4F837924BB52CC1698B7FDC2FD74362456A595A5B58E38E38E38E38\" \"E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E\")"
	.align 8
.LC106:
	.ascii	"BN_hex2bn(&n, \"FFFFFFFFFFF"
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020202020DF\")"
.LC107:
	.string	"parse_bigBN(&e, ehex)"
.LC108:
	.string	"parse_bigBN(&p, phex)"
.LC109:
	.string	"parse_bigBN(&m, mhex)"
	.align 8
.LC110:
	.string	"BN_mod_exp_mont_consttime(d, e, p, m, ctx, NULL)"
	.align 8
.LC111:
	.string	"BN_mod_exp_simple(a, e, p, m, ctx)"
.LC112:
	.string	"BN_bntest_rand(p, 1024, 0, 0)"
.LC113:
	.string	"BN_one(a)"
.LC114:
	.string	"BN_MONT_CTX_set(mont, m, ctx)"
	.align 8
.LC115:
	.string	"BN_from_montgomery(e, a, mont, ctx)"
.LC116:
	.string	"BN_bntest_rand(e, 1024, 0, 0)"
	.text
	.type	test_modexp_mont5, @function
test_modexp_mont5:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$479, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC69(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$480, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$481, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$482, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	call	BN_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$483, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	call	BN_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$484, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	call	BN_new@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$485, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$486, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	call	BN_MONT_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$487, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	movq	-56(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$491, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L167
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC56(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$493, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L167
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	ctx(%rip), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont_consttime@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$497, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L168
	movq	-8(%rbp), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$499, %esi
	call	test_BN_eq_one@PLT
	testl	%eax, %eax
	je	.L169
	leaq	.LC75(%rip), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$503, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L170
	leaq	.LC77(%rip), %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC78(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$508, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L170
	leaq	.LC79(%rip), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$513, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L170
	movq	ctx(%rip), %rdx
	movq	-80(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$520, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L171
	movq	ctx(%rip), %rdi
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_montgomery@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC82(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$521, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L171
	movq	ctx(%rip), %rdi
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_montgomery@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$522, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L171
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC47(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$523, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L171
	leaq	bn1strings(%rip), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_bigBN
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC84(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$527, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L172
	leaq	bn2strings(%rip), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_bigBN
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$528, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L172
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC86(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$531, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L173
	movq	ctx(%rip), %rdx
	movq	-80(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$532, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L173
	movq	ctx(%rip), %rdi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_montgomery@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC87(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$533, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L173
	movq	ctx(%rip), %rdi
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_montgomery@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC88(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$534, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L173
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC47(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$535, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L173
	leaq	ahex.6(%rip), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_bigBN
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC89(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$571, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L174
	leaq	nhex.5(%rip), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_bigBN
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC90(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$572, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L174
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC86(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$576, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L175
	movq	ctx(%rip), %rdx
	movq	-80(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$577, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L175
	movq	ctx(%rip), %rdi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_montgomery@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC87(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$580, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L176
	movq	ctx(%rip), %rdi
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_montgomery@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC88(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$581, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L176
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC47(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$582, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L176
	leaq	.LC91(%rip), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC92(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$586, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L177
	leaq	.LC93(%rip), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC94(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$590, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L177
	movq	ctx(%rip), %rdx
	movq	-80(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$593, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L177
	movq	ctx(%rip), %rdi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_montgomery@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC95(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$594, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L177
	leaq	.LC96(%rip), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC97(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$598, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L178
	leaq	.LC98(%rip), %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC99(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$603, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L178
	leaq	.LC100(%rip), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC101(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$608, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L178
	movq	ctx(%rip), %rdx
	movq	-80(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$613, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L178
	movq	ctx(%rip), %rdi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %r8
	movq	-16(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont_consttime@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC102(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$614, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L178
	movq	ctx(%rip), %rdi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %r8
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC103(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$615, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L178
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC47(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$616, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L178
	leaq	.LC96(%rip), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC97(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$623, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L179
	leaq	.LC104(%rip), %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC105(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$628, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L179
	leaq	.LC96(%rip), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC106(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$633, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L179
	movq	ctx(%rip), %rdx
	movq	-80(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$638, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L179
	movq	ctx(%rip), %rdi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %r8
	movq	-16(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont_consttime@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC102(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$639, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L179
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC47(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$642, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L180
	leaq	ehex.4(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_bigBN
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC107(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$681, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L181
	leaq	phex.3(%rip), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_bigBN
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC108(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$682, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L181
	leaq	mhex.2(%rip), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_bigBN
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC109(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$683, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L181
	movq	ctx(%rip), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont_consttime@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC110(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$684, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L181
	movq	ctx(%rip), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_simple@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC111(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$685, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L181
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC47(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$686, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L181
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC112(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$691, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L182
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	ctx(%rip), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont_consttime@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$694, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L183
	movq	-8(%rbp), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$695, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L183
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC113(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$703, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L184
	movq	ctx(%rip), %rdx
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC114(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$704, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L184
	movq	ctx(%rip), %rcx
	movq	-40(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	call	BN_from_montgomery@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC115(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$706, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L185
	movq	ctx(%rip), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont_consttime@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC110(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$707, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L185
	movq	ctx(%rip), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_simple@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC111(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$708, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L185
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC47(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$709, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L185
	movq	-64(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC116(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$713, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L186
	movq	ctx(%rip), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont_consttime@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC110(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$714, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L186
	movq	ctx(%rip), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_simple@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC111(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$715, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L186
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC47(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$716, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L186
	movl	$1, -28(%rbp)
	jmp	.L128
.L166:
	nop
	jmp	.L128
.L167:
	nop
	jmp	.L128
.L168:
	nop
	jmp	.L128
.L169:
	nop
	jmp	.L128
.L170:
	nop
	jmp	.L128
.L171:
	nop
	jmp	.L128
.L172:
	nop
	jmp	.L128
.L173:
	nop
	jmp	.L128
.L174:
	nop
	jmp	.L128
.L175:
	nop
	jmp	.L128
.L176:
	nop
	jmp	.L128
.L177:
	nop
	jmp	.L128
.L178:
	nop
	jmp	.L128
.L179:
	nop
	jmp	.L128
.L180:
	nop
	jmp	.L128
.L181:
	nop
	jmp	.L128
.L182:
	nop
	jmp	.L128
.L183:
	nop
	jmp	.L128
.L184:
	nop
	jmp	.L128
.L185:
	nop
	jmp	.L128
.L186:
	nop
.L128:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	test_modexp_mont5, .-test_modexp_mont5
	.section	.rodata
.LC117:
	.string	"BN_rand(a, 512, 0, 0)"
.LC118:
	.string	"BN_copy(b, BN_value_one())"
.LC119:
	.string	"BN_GF2m_add(c, a, b)"
	.align 8
.LC120:
	.string	"(BN_is_odd(a) && BN_is_odd(c)) || (!BN_is_odd(a) && !BN_is_odd(c))"
.LC121:
	.string	"BN_GF2m_add(c, c, c)"
	.text
	.type	test_gf2m_add, @function
test_gf2m_add:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -24(%rbp)
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$740, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L204
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$741, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L204
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$742, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L204
	movl	$0, -20(%rbp)
	jmp	.L191
.L202:
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$512, %esi
	movq	%rax, %rdi
	call	BN_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC117(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$746, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L205
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	movq	%rax, %rcx
	leaq	.LC118(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$747, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L205
	call	rand_neg
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	call	rand_neg
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC119(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$751, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L206
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	je	.L195
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	jne	.L196
.L195:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	jne	.L197
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	jne	.L197
.L196:
	movl	$1, %eax
	jmp	.L198
.L197:
	movl	$0, %eax
.L198:
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC120(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$753, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L206
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC121(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$756, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L207
	movq	-16(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$758, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L207
	addl	$1, -20(%rbp)
.L191:
	movl	$100, %eax
	cmpl	%eax, -20(%rbp)
	jl	.L202
	movl	$1, -24(%rbp)
	jmp	.L190
.L204:
	nop
	jmp	.L190
.L205:
	nop
	jmp	.L190
.L206:
	nop
	jmp	.L190
.L207:
	nop
.L190:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-24(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	test_gf2m_add, .-test_gf2m_add
	.section	.rodata
.LC122:
	.string	"b[0] = BN_new()"
.LC123:
	.string	"b[1] = BN_new()"
.LC124:
	.string	"BN_GF2m_arr2poly(p0, b[0])"
.LC125:
	.string	"BN_GF2m_arr2poly(p1, b[1])"
.LC126:
	.string	"BN_GF2m_mod(c, a, b[j])"
.LC127:
	.string	"BN_GF2m_add(d, a, c)"
.LC128:
	.string	"BN_GF2m_mod(e, d, b[j])"
	.text
	.type	test_gf2m_mod, @function
test_gf2m_mod:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -48(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -36(%rbp)
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$774, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L222
	call	BN_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC122(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$775, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L222
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC123(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$776, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L222
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$777, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L222
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$778, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L222
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$779, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L222
	movq	-64(%rbp), %rax
	leaq	p0(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_GF2m_arr2poly@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC124(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$782, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L223
	movq	-56(%rbp), %rax
	leaq	p1(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_GF2m_arr2poly@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC125(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$783, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L223
	movl	$0, -28(%rbp)
	jmp	.L214
.L220:
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC56(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$787, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L224
	movl	$0, -32(%rbp)
	jmp	.L216
.L219:
	movl	-32(%rbp), %eax
	cltq
	movq	-64(%rbp,%rax,8), %rdx
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_mod@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC126(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$790, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L225
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC127(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$791, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L225
	movl	-32(%rbp), %eax
	cltq
	movq	-64(%rbp,%rax,8), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_mod@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC128(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$792, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L225
	movq	-24(%rbp), %rax
	leaq	.LC60(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$794, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L225
	addl	$1, -32(%rbp)
.L216:
	cmpl	$1, -32(%rbp)
	jle	.L219
	addl	$1, -28(%rbp)
.L214:
	movl	$100, %eax
	cmpl	%eax, -28(%rbp)
	jl	.L220
	movl	$1, -36(%rbp)
	jmp	.L211
.L222:
	nop
	jmp	.L211
.L223:
	nop
	jmp	.L211
.L224:
	nop
	jmp	.L211
.L225:
	nop
.L211:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-36(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	test_gf2m_mod, .-test_gf2m_mod
	.section	.rodata
.LC129:
	.string	"f = BN_new()"
.LC130:
	.string	"g = BN_new()"
.LC131:
	.string	"h = BN_new()"
.LC132:
	.string	"BN_bntest_rand(c, 1024, 0, 0)"
.LC133:
	.string	"BN_bntest_rand(d, 1024, 0, 0)"
	.align 8
.LC134:
	.string	"BN_GF2m_mod_mul(e, a, c, b[j], ctx)"
.LC135:
	.string	"BN_GF2m_add(f, a, d)"
	.align 8
.LC136:
	.string	"BN_GF2m_mod_mul(g, f, c, b[j], ctx)"
	.align 8
.LC137:
	.string	"BN_GF2m_mod_mul(h, d, c, b[j], ctx)"
.LC138:
	.string	"BN_GF2m_add(f, e, g)"
.LC139:
	.string	"BN_GF2m_add(f, f, h)"
.LC140:
	.string	"f"
	.text
	.type	test_gf2m_mul, @function
test_gf2m_mul:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -60(%rbp)
	call	BN_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$815, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L241
	call	BN_new@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	leaq	.LC122(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$816, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L241
	call	BN_new@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC123(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$817, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L241
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$818, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L241
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$819, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L241
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$820, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L241
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC129(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$821, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L241
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC130(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$822, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L241
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC131(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$823, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L241
	movq	-96(%rbp), %rax
	leaq	p0(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_GF2m_arr2poly@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC124(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$826, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L242
	movq	-88(%rbp), %rax
	leaq	p1(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_GF2m_arr2poly@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC125(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$827, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L242
	movl	$0, -52(%rbp)
	jmp	.L232
.L239:
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC56(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$831, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L243
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC132(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$832, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L243
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC133(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$833, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L243
	movl	$0, -56(%rbp)
	jmp	.L235
.L238:
	movq	ctx(%rip), %rdi
	movl	-56(%rbp), %eax
	cltq
	movq	-96(%rbp,%rax,8), %rcx
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_GF2m_mod_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC134(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$836, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L244
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC135(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$837, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L244
	movq	ctx(%rip), %rdi
	movl	-56(%rbp), %eax
	cltq
	movq	-96(%rbp,%rax,8), %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_GF2m_mod_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC136(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$838, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L244
	movq	ctx(%rip), %rdi
	movl	-56(%rbp), %eax
	cltq
	movq	-96(%rbp,%rax,8), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_GF2m_mod_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC137(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$839, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L244
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC138(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$840, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L244
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC139(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$841, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L244
	movq	-32(%rbp), %rax
	leaq	.LC140(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$843, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L244
	addl	$1, -56(%rbp)
.L235:
	cmpl	$1, -56(%rbp)
	jle	.L238
	addl	$1, -52(%rbp)
.L232:
	movl	$100, %eax
	cmpl	%eax, -52(%rbp)
	jl	.L239
	movl	$1, -60(%rbp)
	jmp	.L229
.L241:
	nop
	jmp	.L229
.L242:
	nop
	jmp	.L229
.L243:
	nop
	jmp	.L229
.L244:
	nop
.L229:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-60(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	test_gf2m_mul, .-test_gf2m_mul
	.section	.rodata
	.align 8
.LC141:
	.string	"BN_GF2m_mod_sqr(c, a, b[j], ctx)"
.LC142:
	.string	"BN_copy(d, a)"
	.align 8
.LC143:
	.string	"BN_GF2m_mod_mul(d, a, d, b[j], ctx)"
.LC144:
	.string	"BN_GF2m_add(d, c, d)"
	.text
	.type	test_gf2m_sqr, @function
test_gf2m_sqr:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -40(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -28(%rbp)
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$867, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L259
	call	BN_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC122(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$868, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L259
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC123(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$869, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L259
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$870, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L259
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$871, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L259
	movq	-64(%rbp), %rax
	leaq	p0(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_GF2m_arr2poly@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC124(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$874, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L260
	movq	-56(%rbp), %rax
	leaq	p1(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_GF2m_arr2poly@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC125(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$875, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L260
	movl	$0, -20(%rbp)
	jmp	.L251
.L257:
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC56(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$879, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L261
	movl	$0, -24(%rbp)
	jmp	.L253
.L256:
	movq	ctx(%rip), %rcx
	movl	-24(%rbp), %eax
	cltq
	movq	-64(%rbp,%rax,8), %rdx
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GF2m_mod_sqr@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC141(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$882, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L262
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC142(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$883, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L262
	movq	ctx(%rip), %rdi
	movl	-24(%rbp), %eax
	cltq
	movq	-64(%rbp,%rax,8), %rcx
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_GF2m_mod_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC143(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$884, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L262
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC144(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$885, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L262
	movq	-16(%rbp), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$887, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L262
	addl	$1, -24(%rbp)
.L253:
	cmpl	$1, -24(%rbp)
	jle	.L256
	addl	$1, -20(%rbp)
.L251:
	movl	$100, %eax
	cmpl	%eax, -20(%rbp)
	jl	.L257
	movl	$1, -28(%rbp)
	jmp	.L248
.L259:
	nop
	jmp	.L248
.L260:
	nop
	jmp	.L248
.L261:
	nop
	jmp	.L248
.L262:
	nop
.L248:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	test_gf2m_sqr, .-test_gf2m_sqr
	.section	.rodata
.LC145:
	.string	"BN_one(b[0])"
	.align 8
.LC146:
	.string	"BN_GF2m_mod_inv(c, a, b[0], ctx)"
	.align 8
.LC147:
	.string	"BN_GF2m_mod_inv(c, a, b[j], ctx)"
	.align 8
.LC148:
	.string	"BN_GF2m_mod_mul(d, a, c, b[j], ctx)"
	.text
	.type	test_gf2m_modinv, @function
test_gf2m_modinv:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -40(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -28(%rbp)
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$906, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L280
	call	BN_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC122(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$907, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L280
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC123(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$908, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L280
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$909, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L280
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$910, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L280
	movq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC145(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$914, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L281
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$512, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$916, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L282
	movq	ctx(%rip), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GF2m_mod_inv@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC146(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$918, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L283
	movq	-64(%rbp), %rax
	leaq	p0(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_GF2m_arr2poly@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC124(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$921, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L284
	movq	-56(%rbp), %rax
	leaq	p1(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_GF2m_arr2poly@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC125(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$922, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L284
	movl	$0, -20(%rbp)
	jmp	.L272
.L278:
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$512, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$926, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L285
	movl	$0, -24(%rbp)
	jmp	.L274
.L277:
	movq	ctx(%rip), %rcx
	movl	-24(%rbp), %eax
	cltq
	movq	-64(%rbp,%rax,8), %rdx
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GF2m_mod_inv@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC147(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$929, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L286
	movq	ctx(%rip), %rdi
	movl	-24(%rbp), %eax
	cltq
	movq	-64(%rbp,%rax,8), %rcx
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_GF2m_mod_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC148(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$930, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L286
	movq	-16(%rbp), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$932, %esi
	call	test_BN_eq_one@PLT
	testl	%eax, %eax
	je	.L286
	addl	$1, -24(%rbp)
.L274:
	cmpl	$1, -24(%rbp)
	jle	.L277
	addl	$1, -20(%rbp)
.L272:
	movl	$100, %eax
	cmpl	%eax, -20(%rbp)
	jl	.L278
	movl	$1, -28(%rbp)
	jmp	.L266
.L280:
	nop
	jmp	.L266
.L281:
	nop
	jmp	.L266
.L282:
	nop
	jmp	.L266
.L283:
	nop
	jmp	.L266
.L284:
	nop
	jmp	.L266
.L285:
	nop
	jmp	.L266
.L286:
	nop
.L266:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	test_gf2m_modinv, .-test_gf2m_modinv
	.section	.rodata
.LC149:
	.string	"BN_bntest_rand(c, 512, 0, 0)"
	.align 8
.LC150:
	.string	"BN_GF2m_mod_div(d, a, c, b[j], ctx)"
	.align 8
.LC151:
	.string	"BN_GF2m_mod_mul(e, d, c, b[j], ctx)"
	.align 8
.LC152:
	.string	"BN_GF2m_mod_div(f, a, e, b[j], ctx)"
	.text
	.type	test_gf2m_moddiv, @function
test_gf2m_moddiv:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	$0, -56(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -44(%rbp)
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$952, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L302
	call	BN_new@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC122(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$953, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L302
	call	BN_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC123(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$954, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L302
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$955, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L302
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$956, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L302
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$957, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L302
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC129(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$958, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L302
	movq	-80(%rbp), %rax
	leaq	p0(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_GF2m_arr2poly@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC124(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$961, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L303
	movq	-72(%rbp), %rax
	leaq	p1(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_GF2m_arr2poly@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC125(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$962, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L303
	movl	$0, -36(%rbp)
	jmp	.L293
.L300:
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$512, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$966, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L304
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$512, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC149(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$967, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L304
	movl	$0, -40(%rbp)
	jmp	.L296
.L299:
	movq	ctx(%rip), %rdi
	movl	-40(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rcx
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_GF2m_mod_div@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC150(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$970, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L305
	movq	ctx(%rip), %rdi
	movl	-40(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_GF2m_mod_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC151(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$971, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L305
	movq	ctx(%rip), %rdi
	movl	-40(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rcx
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_GF2m_mod_div@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC152(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$972, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L305
	movq	-32(%rbp), %rax
	leaq	.LC140(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$974, %esi
	call	test_BN_eq_one@PLT
	testl	%eax, %eax
	je	.L305
	addl	$1, -40(%rbp)
.L296:
	cmpl	$1, -40(%rbp)
	jle	.L299
	addl	$1, -36(%rbp)
.L293:
	movl	$100, %eax
	cmpl	%eax, -36(%rbp)
	jl	.L300
	movl	$1, -44(%rbp)
	jmp	.L290
.L302:
	nop
	jmp	.L290
.L303:
	nop
	jmp	.L290
.L304:
	nop
	jmp	.L290
.L305:
	nop
.L290:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-44(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	test_gf2m_moddiv, .-test_gf2m_moddiv
	.section	.rodata
.LC153:
	.string	"BN_bntest_rand(d, 512, 0, 0)"
	.align 8
.LC154:
	.string	"BN_GF2m_mod_exp(e, a, c, b[j], ctx)"
	.align 8
.LC155:
	.string	"BN_GF2m_mod_exp(f, a, d, b[j], ctx)"
	.align 8
.LC156:
	.string	"BN_GF2m_mod_mul(e, e, f, b[j], ctx)"
.LC157:
	.string	"BN_add(f, c, d)"
	.align 8
.LC158:
	.string	"BN_GF2m_mod_exp(f, a, f, b[j], ctx)"
.LC159:
	.string	"BN_GF2m_add(f, e, f)"
	.text
	.type	test_gf2m_modexp, @function
test_gf2m_modexp:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	$0, -56(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -44(%rbp)
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$996, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L321
	call	BN_new@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC122(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$997, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L321
	call	BN_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC123(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$998, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L321
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$999, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L321
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1000, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L321
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1001, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L321
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC129(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1002, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L321
	movq	-80(%rbp), %rax
	leaq	p0(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_GF2m_arr2poly@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC124(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1005, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L322
	movq	-72(%rbp), %rax
	leaq	p1(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_GF2m_arr2poly@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC125(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1006, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L322
	movl	$0, -36(%rbp)
	jmp	.L312
.L319:
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$512, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1010, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L323
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$512, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC149(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1011, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L323
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$512, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC153(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1012, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L323
	movl	$0, -40(%rbp)
	jmp	.L315
.L318:
	movq	ctx(%rip), %rdi
	movl	-40(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rcx
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_GF2m_mod_exp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC154(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1015, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L324
	movq	ctx(%rip), %rdi
	movl	-40(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rcx
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_GF2m_mod_exp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC155(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1016, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L324
	movq	ctx(%rip), %rdi
	movl	-40(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_GF2m_mod_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC156(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1017, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L324
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC157(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1018, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L324
	movq	ctx(%rip), %rdi
	movl	-40(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rcx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_GF2m_mod_exp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC158(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1019, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L324
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC159(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1020, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L324
	movq	-32(%rbp), %rax
	leaq	.LC140(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1022, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L324
	addl	$1, -40(%rbp)
.L315:
	cmpl	$1, -40(%rbp)
	jle	.L318
	addl	$1, -36(%rbp)
.L312:
	movl	$100, %eax
	cmpl	%eax, -36(%rbp)
	jl	.L319
	movl	$1, -44(%rbp)
	jmp	.L309
.L321:
	nop
	jmp	.L309
.L322:
	nop
	jmp	.L309
.L323:
	nop
	jmp	.L309
.L324:
	nop
.L309:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-44(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	test_gf2m_modexp, .-test_gf2m_modexp
	.section	.rodata
	.align 8
.LC160:
	.string	"BN_GF2m_mod_sqrt(d, a, b[j], ctx)"
	.align 8
.LC161:
	.string	"BN_GF2m_mod_sqr(e, d, b[j], ctx)"
.LC162:
	.string	"BN_GF2m_add(f, c, e)"
	.text
	.type	test_gf2m_modsqrt, @function
test_gf2m_modsqrt:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	$0, -56(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -44(%rbp)
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1044, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L339
	call	BN_new@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC122(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1045, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L339
	call	BN_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC123(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1046, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L339
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1047, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L339
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1048, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L339
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1049, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L339
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC129(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1050, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L339
	movq	-80(%rbp), %rax
	leaq	p0(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_GF2m_arr2poly@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC124(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1053, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L340
	movq	-72(%rbp), %rax
	leaq	p1(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_GF2m_arr2poly@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC125(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1054, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L340
	movl	$0, -36(%rbp)
	jmp	.L331
.L337:
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$512, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1058, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L341
	movl	$0, -40(%rbp)
	jmp	.L333
.L336:
	movl	-40(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rdx
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_mod@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC126(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1062, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L342
	movq	ctx(%rip), %rcx
	movl	-40(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rdx
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GF2m_mod_sqrt@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC160(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1063, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L342
	movq	ctx(%rip), %rcx
	movl	-40(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GF2m_mod_sqr@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC161(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1064, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L342
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC162(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1065, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L342
	movq	-32(%rbp), %rax
	leaq	.LC140(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1067, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L342
	addl	$1, -40(%rbp)
.L333:
	cmpl	$1, -40(%rbp)
	jle	.L336
	addl	$1, -36(%rbp)
.L331:
	movl	$100, %eax
	cmpl	%eax, -36(%rbp)
	jl	.L337
	movl	$1, -44(%rbp)
	jmp	.L328
.L339:
	nop
	jmp	.L328
.L340:
	nop
	jmp	.L328
.L341:
	nop
	jmp	.L328
.L342:
	nop
.L328:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-44(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	test_gf2m_modsqrt, .-test_gf2m_modsqrt
	.section	.rodata
	.align 8
.LC163:
	.string	"BN_GF2m_mod_sqr(d, c, b[j], ctx)"
.LC164:
	.string	"BN_GF2m_mod(e, a, b[j])"
.LC165:
	.string	"BN_GF2m_add(e, e, d)"
.LC166:
	.string	"s"
	.align 8
.LC167:
	.string	"%d tests found no roots; probably an error"
	.text
	.type	test_gf2m_modsolvequad, @function
test_gf2m_modsolvequad:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	$0, -48(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1089, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L358
	call	BN_new@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC122(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1090, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L358
	call	BN_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC123(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1091, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L358
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1092, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L358
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1093, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L358
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1094, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L358
	movq	-80(%rbp), %rax
	leaq	p0(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_GF2m_arr2poly@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC124(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1097, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L359
	movq	-72(%rbp), %rax
	leaq	p1(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_GF2m_arr2poly@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC125(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1098, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L359
	movl	$0, -28(%rbp)
	jmp	.L349
.L355:
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$512, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1102, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L360
	movl	$0, -32(%rbp)
	jmp	.L351
.L354:
	movq	ctx(%rip), %rcx
	movl	-32(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rdx
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GF2m_mod_solve_quad@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L352
	addl	$1, -36(%rbp)
	movq	ctx(%rip), %rcx
	movl	-32(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GF2m_mod_sqr@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC163(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1108, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L361
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC144(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1109, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L361
	movl	-32(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rdx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_mod@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC164(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1110, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L361
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC165(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1111, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L361
	movq	-24(%rbp), %rax
	leaq	.LC60(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1116, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L361
.L352:
	addl	$1, -32(%rbp)
.L351:
	cmpl	$1, -32(%rbp)
	jle	.L354
	addl	$1, -28(%rbp)
.L349:
	movl	$100, %eax
	cmpl	%eax, -28(%rbp)
	jl	.L355
	movl	-36(%rbp), %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC166(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1121, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	jne	.L356
	movl	$100, %ecx
	leaq	.LC167(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1122, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L346
.L356:
	movl	$1, -40(%rbp)
	jmp	.L346
.L358:
	nop
	jmp	.L346
.L359:
	nop
	jmp	.L346
.L360:
	nop
	jmp	.L346
.L361:
	nop
.L346:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-40(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	test_gf2m_modsolvequad, .-test_gf2m_modsolvequad
	.section	.rodata
.LC168:
	.string	"r = BN_new()"
.LC169:
	.string	"t = BN_new()"
	.align 8
.LC170:
	.string	"BN_generate_prime_ex(b, 512, 0, NULL, NULL, NULL)"
.LC171:
	.string	"BN_copy(t, b)"
.LC172:
	.string	"BN_sub_word(t, 1)"
.LC173:
	.string	"BN_rshift1(t, t)"
	.align 8
.LC174:
	.string	"BN_mod_exp_recp(r, a, t, b, ctx)"
.LC175:
	.string	"BN_add_word(r, 1)"
.LC176:
	.string	"BN_ucmp(r, b)"
	.align 8
.LC177:
	.string	"Legendre symbol computation failed"
.LC178:
	.string	"-1"
	.align 8
.LC179:
	.string	"kronecker = BN_kronecker(a, b, ctx)"
.LC180:
	.string	"kronecker"
.LC181:
	.string	"legendre"
	.text
	.type	test_kronecker, @function
test_kronecker:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -40(%rbp)
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1142, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L383
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1143, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L383
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC168(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1144, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L383
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC169(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1145, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L383
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$512, %esi
	movq	%rax, %rdi
	call	BN_generate_prime_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC170(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1158, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L384
	call	rand_neg
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movl	$0, -28(%rbp)
	jmp	.L367
.L381:
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$512, %esi
	movq	%rax, %rdi
	call	BN_bntest_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1163, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L385
	call	rand_neg
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC171(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1168, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L386
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC172(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1171, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L387
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_rshift1@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC173(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1173, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L388
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	ctx(%rip), %rdi
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_recp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC174(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1178, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L389
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_is_word@PLT
	testl	%eax, %eax
	je	.L373
	movl	$1, -32(%rbp)
	jmp	.L374
.L373:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L375
	movl	$0, -32(%rbp)
	jmp	.L374
.L375:
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1187, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L390
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	movl	%eax, %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC176(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1189, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L377
	leaq	.LC177(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1190, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L365
.L377:
	movl	$-1, -32(%rbp)
.L374:
	movq	ctx(%rip), %rdx
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_kronecker@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %esi
	leaq	.LC178(%rip), %rcx
	leaq	.LC179(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$1196, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L391
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L379
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L379
	negl	-36(%rbp)
.L379:
	movl	-36(%rbp), %edi
	movl	-32(%rbp), %esi
	leaq	.LC180(%rip), %rcx
	leaq	.LC181(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1202, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L392
	addl	$1, -28(%rbp)
.L367:
	movl	$100, %eax
	cmpl	%eax, -28(%rbp)
	jl	.L381
	movl	$1, -40(%rbp)
	jmp	.L365
.L383:
	nop
	jmp	.L365
.L384:
	nop
	jmp	.L365
.L385:
	nop
	jmp	.L365
.L386:
	nop
	jmp	.L365
.L387:
	nop
	jmp	.L365
.L388:
	nop
	jmp	.L365
.L389:
	nop
	jmp	.L365
.L390:
	nop
	jmp	.L365
.L391:
	nop
	jmp	.L365
.L392:
	nop
.L365:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-40(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	test_kronecker, .-test_kronecker
	.section	.rodata
.LC182:
	.string	"A"
.LC183:
	.string	"a = getBN(s, \"A\")"
.LC184:
	.string	"B"
.LC185:
	.string	"b = getBN(s, \"B\")"
.LC186:
	.string	"Sum"
.LC187:
	.string	"sum = getBN(s, \"Sum\")"
.LC188:
	.string	"ret = BN_new()"
.LC189:
	.string	"BN_add(ret, a, b)"
.LC190:
	.string	"A + B"
.LC191:
	.string	"BN_sub(ret, sum, a)"
.LC192:
	.string	"Sum - A"
.LC193:
	.string	"BN_sub(ret, sum, b)"
.LC194:
	.string	"Sum - B"
.LC195:
	.string	"BN_copy(ret, a)"
.LC196:
	.string	"BN_add(ret, ret, b)"
.LC197:
	.string	"A + B (r is a)"
.LC198:
	.string	"BN_copy(ret, b)"
.LC199:
	.string	"BN_add(ret, a, ret)"
.LC200:
	.string	"A + B (r is b)"
.LC201:
	.string	"BN_copy(ret, sum)"
.LC202:
	.string	"BN_sub(ret, ret, a)"
.LC203:
	.string	"Sum - A (r is a)"
.LC204:
	.string	"BN_sub(ret, sum, ret)"
.LC205:
	.string	"Sum - A (r is b)"
.LC206:
	.string	"BN_sub(ret, ret, b)"
.LC207:
	.string	"Sum - B (r is a)"
.LC208:
	.string	"Sum - B (r is b)"
.LC209:
	.string	"BN_uadd(ret, a, b)"
.LC210:
	.string	"A +u B"
.LC211:
	.string	"BN_usub(ret, sum, a)"
.LC212:
	.string	"Sum -u A"
.LC213:
	.string	"BN_usub(ret, sum, b)"
.LC214:
	.string	"Sum -u B"
.LC215:
	.string	"BN_uadd(ret, ret, b)"
.LC216:
	.string	"A +u B (r is a)"
.LC217:
	.string	"BN_uadd(ret, a, ret)"
.LC218:
	.string	"A +u B (r is b)"
.LC219:
	.string	"BN_usub(ret, ret, a)"
.LC220:
	.string	"Sum -u A (r is a)"
.LC221:
	.string	"BN_usub(ret, sum, ret)"
.LC222:
	.string	"Sum -u A (r is b)"
.LC223:
	.string	"BN_usub(ret, ret, b)"
.LC224:
	.string	"Sum -u B (r is a)"
.LC225:
	.string	"Sum -u B (r is b)"
.LC226:
	.string	"BN_add_word(ret, b_word)"
.LC227:
	.string	"A + B (word)"
.LC228:
	.string	"BN_sub_word(ret, b_word)"
.LC229:
	.string	"Sum - B (word)"
	.text
	.type	file_sum, @function
file_sum:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	leaq	.LC182(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC183(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1221, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L408
	leaq	.LC184(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC185(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1222, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L408
	leaq	.LC186(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC187(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1223, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L408
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC188(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1224, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L408
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC189(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1227, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L409
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC190(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L409
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC191(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1229, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L409
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC192(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L409
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC193(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1231, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L409
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC194(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L409
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC195(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1240, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L410
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC196(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1241, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L410
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC197(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L410
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC198(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1243, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L410
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC199(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1244, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L410
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC200(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L410
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC201(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1246, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L410
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC202(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1247, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L410
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC203(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L410
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC195(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1249, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L410
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC204(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1250, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L410
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC205(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L410
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC201(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1252, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L410
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC206(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1253, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L410
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC207(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L410
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC198(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1255, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L410
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC204(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1256, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L410
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC208(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L410
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L401
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L401
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	js	.L401
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_uadd@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC209(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1267, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L411
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC210(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L411
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_usub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC211(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1269, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L411
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC212(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L411
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_usub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC213(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1271, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L411
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC214(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L411
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC195(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1280, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L412
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_uadd@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC215(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1281, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L412
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC216(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L412
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC198(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1283, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L412
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_uadd@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC217(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1284, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L412
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC218(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L412
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC201(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1286, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L412
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_usub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC219(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1287, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L412
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC220(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L412
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC195(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1289, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L412
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_usub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC221(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1290, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L412
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC222(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L412
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC201(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1292, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L412
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_usub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC223(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1293, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L412
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC224(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L412
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC198(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1295, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L412
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_usub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC221(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1296, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L412
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC225(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L412
.L401:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_get_word@PLT
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L405
	cmpq	$-1, -48(%rbp)
	je	.L405
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC195(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1306, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L413
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC226(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1307, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L413
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC227(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L413
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC201(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1309, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L413
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC228(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1310, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L413
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC229(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L413
.L405:
	movl	$1, -28(%rbp)
	jmp	.L396
.L408:
	nop
	jmp	.L396
.L409:
	nop
	jmp	.L396
.L410:
	nop
	jmp	.L396
.L411:
	nop
	jmp	.L396
.L412:
	nop
	jmp	.L396
.L413:
	nop
.L396:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	file_sum, .-file_sum
	.section	.rodata
.LC230:
	.string	"LShift1"
.LC231:
	.string	"lshift1 = getBN(s, \"LShift1\")"
.LC232:
	.string	"zero = BN_new()"
.LC233:
	.string	"two = BN_new()"
.LC234:
	.string	"remainder = BN_new()"
.LC235:
	.string	"BN_set_word(two, 2)"
.LC236:
	.string	"BN_add(ret, a, a)"
.LC237:
	.string	"A + A"
.LC238:
	.string	"BN_mul(ret, a, two, ctx)"
.LC239:
	.string	"A * 2"
	.align 8
.LC240:
	.string	"BN_div(ret, remainder, lshift1, two, ctx)"
.LC241:
	.string	"LShift1 / 2"
.LC242:
	.string	"LShift1 % 2"
.LC243:
	.string	"BN_lshift1(ret, a)"
.LC244:
	.string	"A << 1"
.LC245:
	.string	"BN_rshift1(ret, lshift1)"
.LC246:
	.string	"LShift >> 1"
.LC247:
	.string	"BN_set_bit(lshift1, 0)"
	.align 8
.LC248:
	.string	"BN_div(ret, NULL , lshift1, two, ctx)"
.LC249:
	.string	"(LShift1 | 1) / 2"
.LC250:
	.string	"(LShift | 1) >> 1"
	.text
	.type	file_lshift1, @function
file_lshift1:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	leaq	.LC182(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC183(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1330, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L423
	leaq	.LC230(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC231(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1331, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L423
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC232(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1332, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L423
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC188(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1333, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L423
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC233(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1334, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L423
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC234(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1335, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L423
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC235(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1340, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L424
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC236(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1341, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L424
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC237(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L424
	movq	ctx(%rip), %rcx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC238(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1343, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L424
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC239(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L424
	movq	ctx(%rip), %rdi
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC240(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1345, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L424
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC241(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L424
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC242(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L424
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_lshift1@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC243(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1348, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L424
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC244(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L424
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_rshift1@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC245(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1350, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L424
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC246(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L424
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_rshift1@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC245(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1352, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L424
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC246(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L424
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_bit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC247(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1357, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L425
	movq	ctx(%rip), %rsi
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC248(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1358, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L425
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC249(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L425
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_rshift1@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC245(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1360, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L425
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC250(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L425
	movl	$1, -44(%rbp)
	jmp	.L417
.L423:
	nop
	jmp	.L417
.L424:
	nop
	jmp	.L417
.L425:
	nop
.L417:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-44(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	file_lshift1, .-file_lshift1
	.section	.rodata
.LC251:
	.string	"LShift"
.LC252:
	.string	"lshift = getBN(s, \"LShift\")"
.LC253:
	.string	"N"
.LC254:
	.string	"BN_lshift(ret, a, n)"
.LC255:
	.string	"A << N"
.LC256:
	.string	"BN_rshift(ret, lshift, n)"
.LC257:
	.string	"A >> N"
	.text
	.type	file_lshift, @function
file_lshift:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -20(%rbp)
	leaq	.LC182(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC183(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1381, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L433
	leaq	.LC251(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC252(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1382, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L433
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC188(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1383, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L433
	leaq	.LC253(%rip), %rdx
	leaq	-36(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getint
	testl	%eax, %eax
	je	.L433
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_lshift@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC254(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1387, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L434
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC255(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L434
	movl	-36(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_rshift@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC256(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1389, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L434
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	.LC257(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L434
	movl	$1, -20(%rbp)
	jmp	.L429
.L433:
	nop
	jmp	.L429
.L434:
	nop
.L429:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	file_lshift, .-file_lshift
	.section	.rodata
.LC258:
	.string	"RShift"
.LC259:
	.string	"rshift = getBN(s, \"RShift\")"
.LC260:
	.string	"BN_rshift(ret, a, n)"
.LC261:
	.string	"BN_rshift1(ret, a)"
.LC262:
	.string	"A >> 1 (rshift1)"
	.text
	.type	file_rshift, @function
file_rshift:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -20(%rbp)
	leaq	.LC182(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC183(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1406, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L444
	leaq	.LC258(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC259(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1407, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L444
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC188(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1408, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L444
	leaq	.LC253(%rip), %rdx
	leaq	-36(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getint
	testl	%eax, %eax
	je	.L444
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_rshift@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC260(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1412, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L445
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC257(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L445
	movl	-36(%rbp), %eax
	cmpl	$1, %eax
	jne	.L441
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_rshift1@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC261(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1418, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L446
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC262(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L446
.L441:
	movl	$1, -20(%rbp)
	jmp	.L438
.L444:
	nop
	jmp	.L438
.L445:
	nop
	jmp	.L438
.L446:
	nop
.L438:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	file_rshift, .-file_rshift
	.section	.rodata
.LC263:
	.string	"Square"
.LC264:
	.string	"square = getBN(s, \"Square\")"
.LC265:
	.string	"BN_sqr(ret, a, ctx)"
.LC266:
	.string	"A^2"
.LC267:
	.string	"BN_mul(ret, a, a, ctx)"
.LC268:
	.string	"A * A"
	.align 8
.LC269:
	.string	"BN_div(ret, remainder, square, a, ctx)"
.LC270:
	.string	"Square / A"
.LC271:
	.string	"Square % A"
	.text
	.type	file_square, @function
file_square:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -36(%rbp)
	leaq	.LC182(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC183(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1437, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L454
	leaq	.LC263(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC264(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1438, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L454
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC232(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1439, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L454
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC188(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1440, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L454
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC234(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1441, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L454
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	ctx(%rip), %rdx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sqr@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC265(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1445, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L455
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC266(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L455
	movq	ctx(%rip), %rcx
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC267(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1447, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L455
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC268(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L455
	movq	ctx(%rip), %rdi
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC269(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1449, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L455
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	.LC270(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L455
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC271(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L455
	movl	$1, -36(%rbp)
	jmp	.L450
.L454:
	nop
	jmp	.L450
.L455:
	nop
.L450:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-36(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	file_square, .-file_square
	.section	.rodata
.LC272:
	.string	"Product"
.LC273:
	.string	"product = getBN(s, \"Product\")"
.LC274:
	.string	"BN_mul(ret, a, b, ctx)"
.LC275:
	.string	"A * B"
	.align 8
.LC276:
	.string	"BN_div(ret, remainder, product, a, ctx)"
.LC277:
	.string	"Product / A"
.LC278:
	.string	"Product % A"
	.align 8
.LC279:
	.string	"BN_div(ret, remainder, product, b, ctx)"
.LC280:
	.string	"Product / B"
.LC281:
	.string	"Product % B"
	.text
	.type	file_product, @function
file_product:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	leaq	.LC182(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC183(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1497, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L463
	leaq	.LC184(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC185(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1498, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L463
	leaq	.LC272(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC273(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1499, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L463
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC188(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1500, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L463
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC234(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1501, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L463
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC232(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1502, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L463
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	ctx(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC274(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1507, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L464
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC275(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L464
	movq	ctx(%rip), %rdi
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC276(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1509, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L464
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC277(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L464
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC278(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L464
	movq	ctx(%rip), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC279(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1512, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L464
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC280(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L464
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC281(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L464
	movl	$1, -44(%rbp)
	jmp	.L459
.L463:
	nop
	jmp	.L459
.L464:
	nop
.L459:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-44(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	file_product, .-file_product
	.section	.rodata
.LC282:
	.string	"Quotient"
	.align 8
.LC283:
	.string	"quotient = getBN(s, \"Quotient\")"
.LC284:
	.string	"Remainder"
	.align 8
.LC285:
	.string	"remainder = getBN(s, \"Remainder\")"
.LC286:
	.string	"ret2 = BN_new()"
.LC287:
	.string	"nnmod = BN_new()"
.LC288:
	.string	"BN_div(ret, ret2, a, b, ctx)"
.LC289:
	.string	"A / B"
.LC290:
	.string	"A % B"
.LC291:
	.string	"BN_mul(ret, quotient, b, ctx)"
.LC292:
	.string	"BN_add(ret, ret, remainder)"
.LC293:
	.string	"Quotient * B + Remainder"
.LC294:
	.string	"Got A %% B (word) mismatch"
.LC295:
	.string	"A / B (word)"
.LC296:
	.string	"BN_copy(nnmod, remainder)"
.LC297:
	.string	"BN_add(nnmod, nnmod, b)"
.LC298:
	.string	"BN_nnmod(ret, a, b, ctx)"
.LC299:
	.string	"A % B (non-negative)"
	.text
	.type	file_quotient, @function
file_quotient:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	leaq	.LC182(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC183(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1535, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L479
	leaq	.LC184(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC185(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1536, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L479
	leaq	.LC282(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC283(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1537, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L479
	leaq	.LC284(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC285(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1538, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L479
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC188(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1539, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L479
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC286(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1540, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L479
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC287(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1541, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L479
	movq	ctx(%rip), %rdi
	movq	-8(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC288(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1544, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L480
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC289(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L480
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC290(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L480
	movq	ctx(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC291(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1547, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L480
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC292(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1548, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L480
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	leaq	.LC293(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L480
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_get_word@PLT
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L471
	cmpq	$-1, -72(%rbp)
	je	.L471
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_get_word@PLT
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	movq	%rax, %rcx
	leaq	.LC195(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1561, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L481
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_div_word@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L473
	leaq	.LC294(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1570, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L468
.L473:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC295(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L482
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_mod_word@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L471
	leaq	.LC294(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1584, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L468
.L471:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L475
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC296(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1592, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L483
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L477
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC297(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1594, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L483
.L477:
	movq	ctx(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC298(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1595, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L483
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	.LC299(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L483
.L475:
	movl	$1, -52(%rbp)
	jmp	.L468
.L479:
	nop
	jmp	.L468
.L480:
	nop
	jmp	.L468
.L481:
	nop
	jmp	.L468
.L482:
	nop
	jmp	.L468
.L483:
	nop
.L468:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-52(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	file_quotient, .-file_quotient
	.section	.rodata
.LC300:
	.string	"M"
.LC301:
	.string	"m = getBN(s, \"M\")"
.LC302:
	.string	"ModMul"
.LC303:
	.string	"mod_mul = getBN(s, \"ModMul\")"
.LC304:
	.string	"BN_mod_mul(ret, a, b, m, ctx)"
.LC305:
	.string	"A * B (mod M)"
.LC306:
	.string	"BN_nnmod(a_tmp, a, m, ctx)"
.LC307:
	.string	"BN_nnmod(b_tmp, b, m, ctx)"
	.align 8
.LC308:
	.string	"BN_to_montgomery(a_tmp, a_tmp, mont, ctx)"
	.align 8
.LC309:
	.string	"BN_to_montgomery(b_tmp, b_tmp, mont, ctx)"
	.align 8
.LC310:
	.string	"BN_mod_mul_montgomery(ret, a_tmp, b_tmp, mont, ctx)"
	.align 8
.LC311:
	.string	"BN_from_montgomery(ret, ret, mont, ctx)"
.LC312:
	.string	"A * B (mod M) (mont)"
	.text
	.type	file_modmul, @function
file_modmul:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	leaq	.LC182(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC183(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1617, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L495
	leaq	.LC184(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC185(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1618, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L495
	leaq	.LC300(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC301(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1619, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L495
	leaq	.LC302(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC303(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1620, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L495
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC188(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1621, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L495
	movq	ctx(%rip), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC304(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1624, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L496
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC305(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L496
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	je	.L490
	call	BN_MONT_CTX_new@PLT
	movq	%rax, -56(%rbp)
	call	BN_new@PLT
	movq	%rax, -64(%rbp)
	call	BN_new@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L491
	cmpq	$0, -64(%rbp)
	je	.L491
	cmpq	$0, -72(%rbp)
	je	.L491
	movq	ctx(%rip), %rdx
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC114(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1635, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L491
	movq	ctx(%rip), %rcx
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC306(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1636, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L491
	movq	ctx(%rip), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC307(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1637, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L491
	movq	ctx(%rip), %rcx
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_to_montgomery@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC308(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1638, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L491
	movq	ctx(%rip), %rcx
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_to_montgomery@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC309(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1639, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L491
	movq	ctx(%rip), %rdi
	movq	-56(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_montgomery@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC310(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1640, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L491
	movq	ctx(%rip), %rcx
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_from_montgomery@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC311(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1642, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L491
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC312(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	jne	.L492
.L491:
	movl	$0, -36(%rbp)
	jmp	.L493
.L492:
	movl	$1, -36(%rbp)
.L493:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	cmpl	$0, -36(%rbp)
	je	.L497
.L490:
	movl	$1, -36(%rbp)
	jmp	.L487
.L495:
	nop
	jmp	.L487
.L496:
	nop
	jmp	.L487
.L497:
	nop
.L487:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-36(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	file_modmul, .-file_modmul
	.section	.rodata
.LC313:
	.string	"E"
.LC314:
	.string	"e = getBN(s, \"E\")"
.LC315:
	.string	"ModExp"
.LC316:
	.string	"mod_exp = getBN(s, \"ModExp\")"
.LC317:
	.string	"BN_mod_exp(ret, a, e, m, ctx)"
.LC318:
	.string	"A ^ E (mod M)"
	.align 8
.LC319:
	.string	"BN_mod_exp_mont(ret, a, e, m, ctx, NULL)"
.LC320:
	.string	"A ^ E (mod M) (mont)"
	.align 8
.LC321:
	.string	"BN_mod_exp_mont_consttime(ret, a, e, m, ctx, NULL)"
.LC322:
	.string	"A ^ E (mod M) (mont const"
.LC323:
	.string	"050505050505"
.LC324:
	.string	"02"
	.align 8
.LC325:
	.ascii	"414141414141414141414127414141414141414141414141414141414141"
	.ascii	"414141414141414141414141414141414141414141414141414141414141"
	.ascii	"41"
	.string	"4141414141414141414141414141800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001"
.LC326:
	.string	"BN_mod_exp(d, a, b, c, ctx)"
.LC327:
	.string	"BN_mul(e, a, a, ctx)"
	.text
	.type	file_modexp, @function
file_modexp:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	leaq	.LC182(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC183(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1670, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L509
	leaq	.LC313(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC314(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1671, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L509
	leaq	.LC300(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC301(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1672, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L509
	leaq	.LC315(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC316(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1673, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L509
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC188(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1674, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L509
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1675, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L509
	movq	ctx(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC317(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1678, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L510
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC318(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L510
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	je	.L504
	movq	ctx(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC319(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1683, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L511
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC320(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L511
	movq	ctx(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont_consttime@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC321(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1685, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L511
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC322(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L511
.L504:
	leaq	.LC323(%rip), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	leaq	.LC324(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	leaq	.LC325(%rip), %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	movq	ctx(%rip), %rdi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC326(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1701, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L512
	movq	ctx(%rip), %rcx
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC327(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1702, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L512
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC60(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1703, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L512
	movl	$1, -44(%rbp)
	jmp	.L501
.L509:
	nop
	jmp	.L501
.L510:
	nop
	jmp	.L501
.L511:
	nop
	jmp	.L501
.L512:
	nop
.L501:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-44(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	file_modexp, .-file_modexp
	.section	.rodata
.LC328:
	.string	"Exp"
.LC329:
	.string	"exp = getBN(s, \"Exp\")"
.LC330:
	.string	"BN_exp(ret, a, e, ctx)"
.LC331:
	.string	"A ^ E"
	.text
	.type	file_exp, @function
file_exp:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	leaq	.LC182(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC183(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1724, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L520
	leaq	.LC313(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC314(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1725, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L520
	leaq	.LC328(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC329(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1726, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L520
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC188(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1727, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L520
	movq	ctx(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_exp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC330(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1730, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L521
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC331(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L521
	movl	$1, -28(%rbp)
	jmp	.L516
.L520:
	nop
	jmp	.L516
.L521:
	nop
.L516:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	file_exp, .-file_exp
	.section	.rodata
.LC332:
	.string	"P"
.LC333:
	.string	"p = getBN(s, \"P\")"
.LC334:
	.string	"ModSqrt"
	.align 8
.LC335:
	.string	"mod_sqrt = getBN(s, \"ModSqrt\")"
.LC336:
	.string	"BN_mod_sqrt(ret, a, p, ctx)"
.LC337:
	.string	"BN_sub(ret2, p, ret)"
.LC338:
	.string	"sqrt(A) (mod P)"
	.text
	.type	file_modsqrt, @function
file_modsqrt:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	leaq	.LC182(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC183(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1748, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L532
	leaq	.LC332(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC333(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1749, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L532
	leaq	.LC334(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC335(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1750, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L532
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC188(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1751, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L532
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC286(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1752, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L532
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L526
	movq	ctx(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sqrt@PLT
	movq	%rax, %rcx
	leaq	.LC336(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1757, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L533
	movl	$1, -36(%rbp)
	jmp	.L525
.L526:
	movq	ctx(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sqrt@PLT
	movq	%rax, %rcx
	leaq	.LC336(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1765, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L534
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC337(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1766, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L534
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L530
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC338(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L535
.L530:
	movl	$1, -36(%rbp)
	jmp	.L525
.L532:
	nop
	jmp	.L525
.L533:
	nop
	jmp	.L525
.L534:
	nop
	jmp	.L525
.L535:
	nop
.L525:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-36(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	file_modsqrt, .-file_modsqrt
	.section	.rodata
.LC339:
	.string	"GCD"
.LC340:
	.string	"gcd = getBN(s, \"GCD\")"
.LC341:
	.string	"BN_gcd(ret, a, b, ctx)"
.LC342:
	.string	"gcd(A,B)"
	.text
	.type	file_gcd, @function
file_gcd:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	leaq	.LC182(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC183(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1789, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L543
	leaq	.LC184(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC185(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1790, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L543
	leaq	.LC339(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getBN
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC340(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1791, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L543
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC188(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1792, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L543
	movq	ctx(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_gcd@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC341(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1795, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L544
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC342(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	equalBN
	testl	%eax, %eax
	je	.L544
	movl	$1, -28(%rbp)
	jmp	.L539
.L543:
	nop
	jmp	.L539
.L544:
	nop
.L539:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	file_gcd, .-file_gcd
	.section	.rodata
.LC343:
	.string	"(n = BN_new())"
.LC344:
	.string	"BN_bn2binpad(n, NULL, 0)"
.LC345:
	.string	"sizeof(out)"
	.align 8
.LC346:
	.string	"BN_bn2binpad(n, out, sizeof(out))"
.LC347:
	.string	"out"
.LC348:
	.string	"zeros"
	.align 8
.LC349:
	.string	"BN_rand(n, bytes * 8, TOP_BIT_ON, BOTTOM_BIT_NOTOUCH)"
.LC350:
	.string	"bytes"
.LC351:
	.string	"BN_num_bytes(n)"
.LC352:
	.string	"BN_bn2bin(n, reference)"
	.align 8
.LC353:
	.string	"BN_bn2binpad(n, out, bytes - 1)"
.LC354:
	.string	"BN_bn2binpad(n, out, bytes)"
.LC355:
	.string	"reference"
.LC356:
	.string	"bytes + 1"
	.align 8
.LC357:
	.string	"BN_bn2binpad(n, out, bytes + 1)"
.LC358:
	.string	"out + 1"
.LC359:
	.string	"out + sizeof(out) - bytes"
	.text
	.type	test_bn2padded, @function
test_bn2padded:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$680, %rsp
	.cfi_offset 3, -24
	movl	$0, -28(%rbp)
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC343(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1816, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L565
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	movl	%eax, %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC344(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1818, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L566
	leaq	-560(%rbp), %rax
	movl	$256, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-560(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	movl	%eax, %esi
	leaq	.LC345(%rip), %rcx
	leaq	.LC346(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$256, %r9d
	movl	%esi, %r8d
	movl	$1821, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L567
	leaq	-304(%rbp), %rax
	movl	$256, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-304(%rbp), %rdi
	leaq	.LC347(%rip), %rcx
	leaq	.LC348(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$256
	leaq	-560(%rbp), %rsi
	pushq	%rsi
	movl	$256, %r9d
	movq	%rdi, %r8
	movl	$1824, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L568
	movq	$121, -24(%rbp)
	jmp	.L551
.L563:
	movq	-24(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC349(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1831, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L569
	movq	-24(%rbp), %rax
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %esi
	leaq	.LC350(%rip), %rcx
	leaq	.LC351(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$1833, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L570
	movq	-24(%rbp), %rax
	movl	%eax, %ebx
	leaq	-688(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	movl	%eax, %esi
	leaq	.LC350(%rip), %rcx
	leaq	.LC352(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$1834, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L570
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	movl	%eax, %esi
	leaq	.LC178(%rip), %rcx
	leaq	.LC344(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$1837, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L571
	movq	-24(%rbp), %rax
	subl	$1, %eax
	movl	%eax, %edx
	leaq	-560(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	movl	%eax, %esi
	leaq	.LC178(%rip), %rcx
	leaq	.LC353(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$1840, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L572
	movq	-24(%rbp), %rax
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	leaq	-560(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	movl	%eax, %esi
	leaq	.LC350(%rip), %rcx
	leaq	.LC354(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$1843, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L573
	movq	-24(%rbp), %r8
	leaq	-560(%rbp), %rdi
	leaq	.LC355(%rip), %rcx
	leaq	.LC347(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	-24(%rbp)
	leaq	-688(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1844, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L573
	movq	-24(%rbp), %rax
	addl	$1, %eax
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	addl	$1, %eax
	movl	%eax, %edx
	leaq	-560(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	movl	%eax, %esi
	leaq	.LC356(%rip), %rcx
	leaq	.LC357(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$1847, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L574
	leaq	-560(%rbp), %rax
	addq	$1, %rax
	movq	-24(%rbp), %r8
	leaq	.LC355(%rip), %rcx
	leaq	.LC358(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	pushq	-24(%rbp)
	leaq	-688(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rax, %r8
	movl	$1848, %esi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L574
	leaq	-560(%rbp), %rdi
	leaq	.LC348(%rip), %rcx
	leaq	.LC347(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	$1
	leaq	-304(%rbp), %rsi
	pushq	%rsi
	movl	$1, %r9d
	movq	%rdi, %r8
	movl	$1849, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L574
	leaq	-560(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	movl	%eax, %esi
	leaq	.LC345(%rip), %rcx
	leaq	.LC346(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$256, %r9d
	movl	%esi, %r8d
	movl	$1852, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L575
	movl	$256, %eax
	subq	-24(%rbp), %rax
	leaq	-560(%rbp), %rdx
	leaq	(%rdx,%rax), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC355(%rip), %rcx
	leaq	.LC359(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	-24(%rbp)
	leaq	-688(%rbp), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$1853, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L575
	movl	$256, %eax
	subq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$256, %eax
	subq	-24(%rbp), %rax
	movq	%rax, %r8
	leaq	-560(%rbp), %rdi
	leaq	.LC348(%rip), %rcx
	leaq	.LC347(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	%rsi
	leaq	-304(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1855, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L575
	addq	$1, -24(%rbp)
.L551:
	cmpq	$128, -24(%rbp)
	jbe	.L563
	movl	$1, -28(%rbp)
	jmp	.L547
.L565:
	nop
	jmp	.L547
.L566:
	nop
	jmp	.L547
.L567:
	nop
	jmp	.L547
.L568:
	nop
	jmp	.L547
.L569:
	nop
	jmp	.L547
.L570:
	nop
	jmp	.L547
.L571:
	nop
	jmp	.L547
.L572:
	nop
	jmp	.L547
.L573:
	nop
	jmp	.L547
.L574:
	nop
	jmp	.L547
.L575:
	nop
.L547:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	test_bn2padded, .-test_bn2padded
	.section	.rodata
.LC360:
	.string	"\377"
.LC361:
	.string	""
.LC362:
	.string	"1"
.LC363:
	.string	"\001"
.LC364:
	.string	"127"
.LC365:
	.string	"\177"
.LC366:
	.string	"-127"
.LC367:
	.string	"\201"
.LC368:
	.string	"128"
.LC369:
	.base64	"AIAA"
.LC370:
	.string	"-128"
.LC371:
	.string	"\200"
.LC372:
	.string	"129"
.LC373:
	.base64	"AIEA"
.LC374:
	.string	"-129"
.LC375:
	.base64	"/38A"
.LC376:
	.string	"255"
.LC377:
	.base64	"AP8A"
.LC378:
	.string	"-255"
.LC379:
	.base64	"/wEA"
.LC380:
	.string	"256"
.LC381:
	.base64	"AQAA"
.LC382:
	.string	"-256"
.LC383:
	.base64	"/wAA"
.LC384:
	.string	"32767"
.LC385:
	.base64	"f/8A"
.LC386:
	.string	"-32767"
.LC387:
	.base64	"gAEA"
.LC388:
	.string	"32768"
.LC389:
	.base64	"AIAAAA=="
.LC390:
	.string	"-32768"
.LC391:
	.base64	"gAAA"
.LC392:
	.string	"32769"
.LC393:
	.base64	"AIABAA=="
.LC394:
	.string	"-32769"
.LC395:
	.base64	"/3//AA=="
.LC396:
	.string	"65535"
.LC397:
	.base64	"AP//AA=="
.LC398:
	.string	"-65535"
.LC399:
	.base64	"/wABAA=="
.LC400:
	.string	"65536"
.LC401:
	.base64	"AQAAAA=="
.LC402:
	.string	"-65536"
.LC403:
	.base64	"/wAAAA=="
.LC404:
	.string	"2147483647"
.LC405:
	.base64	"f////wA="
.LC406:
	.string	"-2147483647"
.LC407:
	.base64	"gAAAAQA="
.LC408:
	.string	"2147483648"
.LC409:
	.base64	"AIAAAAAA"
.LC410:
	.string	"-2147483648"
.LC411:
	.base64	"gAAAAAA="
.LC412:
	.string	"2147483649"
.LC413:
	.base64	"AIAAAAEA"
.LC414:
	.string	"-2147483649"
.LC415:
	.base64	"/3////8A"
.LC416:
	.string	"4294967295"
.LC417:
	.base64	"AP////8A"
.LC418:
	.string	"-4294967295"
.LC419:
	.base64	"/wAAAAEA"
.LC420:
	.string	"4294967296"
.LC421:
	.base64	"AQAAAAAA"
.LC422:
	.string	"-4294967296"
.LC423:
	.base64	"/wAAAAAA"
.LC424:
	.string	"9223372036854775807"
.LC425:
	.base64	"f/////////8A"
.LC426:
	.string	"-9223372036854775807"
.LC427:
	.base64	"gAAAAAAAAAEA"
.LC428:
	.string	"9223372036854775808"
.LC429:
	.base64	"AIAAAAAAAAAAAA=="
.LC430:
	.string	"-9223372036854775808"
.LC431:
	.base64	"gAAAAAAAAAAA"
.LC432:
	.string	"9223372036854775809"
.LC433:
	.base64	"AIAAAAAAAAABAA=="
.LC434:
	.string	"-9223372036854775809"
.LC435:
	.base64	"/3//////////AA=="
.LC436:
	.string	"18446744073709551615"
.LC437:
	.base64	"AP//////////AA=="
.LC438:
	.string	"-18446744073709551615"
.LC439:
	.base64	"/wAAAAAAAAABAA=="
.LC440:
	.string	"18446744073709551616"
.LC441:
	.base64	"AQAAAAAAAAAAAA=="
.LC442:
	.string	"-18446744073709551616"
.LC443:
	.base64	"/wAAAAAAAAAAAA=="
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	kSignedTests_BE, @object
	.size	kSignedTests_BE, 1032
kSignedTests_BE:
	.quad	.LC178
	.quad	.LC360
	.quad	1
	.quad	.LC28
	.quad	.LC361
	.quad	0
	.quad	.LC362
	.quad	.LC363
	.quad	1
	.quad	.LC364
	.quad	.LC365
	.quad	1
	.quad	.LC366
	.quad	.LC367
	.quad	1
	.quad	.LC368
	.quad	.LC369
	.quad	2
	.quad	.LC370
	.quad	.LC371
	.quad	1
	.quad	.LC372
	.quad	.LC373
	.quad	2
	.quad	.LC374
	.quad	.LC375
	.quad	2
	.quad	.LC376
	.quad	.LC377
	.quad	2
	.quad	.LC378
	.quad	.LC379
	.quad	2
	.quad	.LC380
	.quad	.LC381
	.quad	2
	.quad	.LC382
	.quad	.LC383
	.quad	2
	.quad	.LC384
	.quad	.LC385
	.quad	2
	.quad	.LC386
	.quad	.LC387
	.quad	2
	.quad	.LC388
	.quad	.LC389
	.quad	3
	.quad	.LC390
	.quad	.LC391
	.quad	2
	.quad	.LC392
	.quad	.LC393
	.quad	3
	.quad	.LC394
	.quad	.LC395
	.quad	3
	.quad	.LC396
	.quad	.LC397
	.quad	3
	.quad	.LC398
	.quad	.LC399
	.quad	3
	.quad	.LC400
	.quad	.LC401
	.quad	3
	.quad	.LC402
	.quad	.LC403
	.quad	3
	.quad	.LC404
	.quad	.LC405
	.quad	4
	.quad	.LC406
	.quad	.LC407
	.quad	4
	.quad	.LC408
	.quad	.LC409
	.quad	5
	.quad	.LC410
	.quad	.LC411
	.quad	4
	.quad	.LC412
	.quad	.LC413
	.quad	5
	.quad	.LC414
	.quad	.LC415
	.quad	5
	.quad	.LC416
	.quad	.LC417
	.quad	5
	.quad	.LC418
	.quad	.LC419
	.quad	5
	.quad	.LC420
	.quad	.LC421
	.quad	5
	.quad	.LC422
	.quad	.LC423
	.quad	5
	.quad	.LC424
	.quad	.LC425
	.quad	8
	.quad	.LC426
	.quad	.LC427
	.quad	8
	.quad	.LC428
	.quad	.LC429
	.quad	9
	.quad	.LC430
	.quad	.LC431
	.quad	8
	.quad	.LC432
	.quad	.LC433
	.quad	9
	.quad	.LC434
	.quad	.LC435
	.quad	9
	.quad	.LC436
	.quad	.LC437
	.quad	9
	.quad	.LC438
	.quad	.LC439
	.quad	9
	.quad	.LC440
	.quad	.LC441
	.quad	9
	.quad	.LC442
	.quad	.LC443
	.quad	9
	.text
	.type	copy_reversed, @function
copy_reversed:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	$1, %rax
	addq	%rax, -8(%rbp)
	jmp	.L577
.L578:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -16(%rbp)
	subq	$1, -8(%rbp)
	subq	$1, -24(%rbp)
.L577:
	cmpq	$0, -24(%rbp)
	jne	.L578
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	copy_reversed, .-copy_reversed
	.section	.rodata
.LC444:
	.string	"bn = BN_new()"
.LC445:
	.string	"BN_asc2bn(&bn, test->base10)"
.LC446:
	.string	"sizeof(scratch)"
	.align 8
.LC447:
	.string	"BN_signed_bn2bin(bn, scratch, sizeof(scratch))"
	.align 8
.LC448:
	.string	"copy_reversed(reversed, scratch, sizeof(scratch))"
.LC449:
	.string	"scratch + i"
.LC450:
	.string	"test->mpi"
	.align 8
.LC451:
	.string	"bn2 = BN_signed_bin2bn(scratch, sizeof(scratch), NULL)"
.LC452:
	.string	"bn2"
.LC453:
	.string	"bn"
	.align 8
.LC454:
	.string	"bn2 = BN_signed_lebin2bn(reversed, sizeof(reversed), NULL)"
	.align 8
.LC455:
	.string	"BN_signed_bn2lebin(bn, scratch, sizeof(scratch))"
.LC456:
	.string	"reversed + i"
	.align 8
.LC457:
	.string	"bn2 = BN_signed_lebin2bn(scratch, sizeof(scratch), NULL)"
	.align 8
.LC458:
	.string	"bn2 = BN_signed_bin2bn(reversed, sizeof(reversed), NULL)"
	.text
	.type	test_bn2signed, @function
test_bn2signed:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	kSignedTests_BE(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC444(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1935, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L597
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_asc2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC445(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1936, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L597
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %edx
	movl	$10, %eax
	subl	%edx, %eax
	movl	%eax, -68(%rbp)
	movq	-56(%rbp), %rax
	leaq	-34(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_signed_bn2bin@PLT
	movl	%eax, %esi
	leaq	.LC446(%rip), %rcx
	leaq	.LC447(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$10, %r9d
	movl	%esi, %r8d
	movl	$1945, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L598
	leaq	-34(%rbp), %rcx
	leaq	-44(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	copy_reversed
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC448(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1947, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L598
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	movl	-68(%rbp), %eax
	cltq
	leaq	-34(%rbp), %rdx
	leaq	(%rdx,%rax), %rdi
	movq	-24(%rbp), %rax
	movq	16(%rax), %r9
	movq	-24(%rbp), %rax
	movq	8(%rax), %r8
	leaq	.LC449(%rip), %rcx
	leaq	.LC450(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	%rsi
	pushq	%rdi
	movl	$1948, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L598
	leaq	-34(%rbp), %rax
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	BN_signed_bin2bn@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC451(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1951, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L599
	movq	-56(%rbp), %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC452(%rip), %rcx
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1952, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L599
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -8(%rbp)
	leaq	-44(%rbp), %rax
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	BN_signed_lebin2bn@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC454(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1959, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L600
	movq	-56(%rbp), %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC452(%rip), %rcx
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1960, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L600
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %edx
	movl	$10, %eax
	subl	%edx, %eax
	movl	%eax, -68(%rbp)
	movq	-56(%rbp), %rax
	leaq	-34(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_signed_bn2lebin@PLT
	movl	%eax, %esi
	leaq	.LC446(%rip), %rcx
	leaq	.LC455(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$10, %r9d
	movl	%esi, %r8d
	movl	$1972, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L601
	leaq	-34(%rbp), %rcx
	leaq	-44(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	copy_reversed
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC448(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1974, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L601
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	movl	-68(%rbp), %eax
	cltq
	leaq	-44(%rbp), %rdx
	leaq	(%rdx,%rax), %rdi
	movq	-24(%rbp), %rax
	movq	16(%rax), %r9
	movq	-24(%rbp), %rax
	movq	8(%rax), %r8
	leaq	.LC456(%rip), %rcx
	leaq	.LC450(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	%rsi
	pushq	%rdi
	movl	$1975, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L601
	leaq	-34(%rbp), %rax
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	BN_signed_lebin2bn@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC457(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1978, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L602
	movq	-56(%rbp), %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC452(%rip), %rcx
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1979, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L602
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -8(%rbp)
	leaq	-44(%rbp), %rax
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	BN_signed_bin2bn@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC458(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1986, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L603
	movq	-56(%rbp), %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC452(%rip), %rcx
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1987, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L603
	movl	$1, -12(%rbp)
	jmp	.L583
.L597:
	nop
	jmp	.L583
.L598:
	nop
	jmp	.L583
.L599:
	nop
	jmp	.L583
.L600:
	nop
	jmp	.L583
.L601:
	nop
	jmp	.L583
.L602:
	nop
	jmp	.L583
.L603:
	nop
.L583:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	test_bn2signed, .-test_bn2signed
	.section	.rodata
.LC459:
	.string	"parsedecBN(&bn, \"0\")"
.LC460:
	.string	"3"
.LC461:
	.string	"parsedecBN(&bn, \"256\")"
.LC462:
	.string	"-42"
.LC463:
	.string	"parsedecBN(&bn, \"-42\")"
.LC464:
	.string	"42"
.LC465:
	.string	"parsedecBN(&bn, \"1\")"
.LC466:
	.string	"-0"
.LC467:
	.string	"2"
.LC468:
	.string	"parsedecBN(&bn, \"-0\")"
.LC469:
	.string	"42trailing garbage is ignored"
	.align 8
.LC470:
	.string	"parsedecBN(&bn, \"42trailing garbage is ignored\")"
	.text
	.type	test_dec2bn, @function
test_dec2bn:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	leaq	.LC28(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parsedecBN
	movl	%eax, %esi
	leaq	.LC362(%rip), %rcx
	leaq	.LC459(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$2002, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L619
	movq	-16(%rbp), %rsi
	leaq	.LC28(%rip), %rcx
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$2003, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	je	.L619
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2004, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L619
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2005, %esi
	call	test_BN_le_zero@PLT
	testl	%eax, %eax
	je	.L619
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2006, %esi
	call	test_BN_ge_zero@PLT
	testl	%eax, %eax
	je	.L619
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2007, %esi
	call	test_BN_even@PLT
	testl	%eax, %eax
	je	.L619
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -16(%rbp)
	leaq	.LC380(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parsedecBN
	movl	%eax, %esi
	leaq	.LC460(%rip), %rcx
	leaq	.LC461(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$2012, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L620
	movq	-16(%rbp), %rsi
	leaq	.LC380(%rip), %rcx
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$256, %r9d
	movq	%rsi, %r8
	movl	$2013, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	je	.L620
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2014, %esi
	call	test_BN_ge_zero@PLT
	testl	%eax, %eax
	je	.L620
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2015, %esi
	call	test_BN_gt_zero@PLT
	testl	%eax, %eax
	je	.L620
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2016, %esi
	call	test_BN_ne_zero@PLT
	testl	%eax, %eax
	je	.L620
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2017, %esi
	call	test_BN_even@PLT
	testl	%eax, %eax
	je	.L620
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -16(%rbp)
	leaq	.LC462(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parsedecBN
	movl	%eax, %esi
	leaq	.LC460(%rip), %rcx
	leaq	.LC463(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$2022, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L621
	movq	-16(%rbp), %rsi
	leaq	.LC464(%rip), %rcx
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$42, %r9d
	movq	%rsi, %r8
	movl	$2023, %esi
	movq	%rax, %rdi
	call	test_BN_abs_eq_word@PLT
	testl	%eax, %eax
	je	.L621
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2024, %esi
	call	test_BN_lt_zero@PLT
	testl	%eax, %eax
	je	.L621
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2025, %esi
	call	test_BN_le_zero@PLT
	testl	%eax, %eax
	je	.L621
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2026, %esi
	call	test_BN_ne_zero@PLT
	testl	%eax, %eax
	je	.L621
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2027, %esi
	call	test_BN_even@PLT
	testl	%eax, %eax
	je	.L621
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -16(%rbp)
	leaq	.LC362(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parsedecBN
	movl	%eax, %esi
	leaq	.LC362(%rip), %rcx
	leaq	.LC465(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$2032, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L622
	movq	-16(%rbp), %rsi
	leaq	.LC362(%rip), %rcx
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$2033, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	je	.L622
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2034, %esi
	call	test_BN_ne_zero@PLT
	testl	%eax, %eax
	je	.L622
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2035, %esi
	call	test_BN_gt_zero@PLT
	testl	%eax, %eax
	je	.L622
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2036, %esi
	call	test_BN_ge_zero@PLT
	testl	%eax, %eax
	je	.L622
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2037, %esi
	call	test_BN_eq_one@PLT
	testl	%eax, %eax
	je	.L622
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2038, %esi
	call	test_BN_odd@PLT
	testl	%eax, %eax
	je	.L622
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -16(%rbp)
	leaq	.LC466(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parsedecBN
	movl	%eax, %esi
	leaq	.LC467(%rip), %rcx
	leaq	.LC468(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$2043, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L623
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2044, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L623
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2045, %esi
	call	test_BN_ge_zero@PLT
	testl	%eax, %eax
	je	.L623
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2046, %esi
	call	test_BN_le_zero@PLT
	testl	%eax, %eax
	je	.L623
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2047, %esi
	call	test_BN_even@PLT
	testl	%eax, %eax
	je	.L623
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -16(%rbp)
	leaq	.LC469(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parsedecBN
	movl	%eax, %esi
	leaq	.LC467(%rip), %rcx
	leaq	.LC470(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$2052, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L624
	movq	-16(%rbp), %rsi
	leaq	.LC464(%rip), %rcx
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$42, %r9d
	movq	%rsi, %r8
	movl	$2053, %esi
	movq	%rax, %rdi
	call	test_BN_abs_eq_word@PLT
	testl	%eax, %eax
	je	.L624
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2054, %esi
	call	test_BN_ge_zero@PLT
	testl	%eax, %eax
	je	.L624
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2055, %esi
	call	test_BN_gt_zero@PLT
	testl	%eax, %eax
	je	.L624
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2056, %esi
	call	test_BN_ne_zero@PLT
	testl	%eax, %eax
	je	.L624
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2057, %esi
	call	test_BN_even@PLT
	testl	%eax, %eax
	je	.L624
	movl	$1, -4(%rbp)
	jmp	.L607
.L619:
	nop
	jmp	.L607
.L620:
	nop
	jmp	.L607
.L621:
	nop
	jmp	.L607
.L622:
	nop
	jmp	.L607
.L623:
	nop
	jmp	.L607
.L624:
	nop
.L607:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	test_dec2bn, .-test_dec2bn
	.section	.rodata
.LC471:
	.string	"parseBN(&bn, \"0\")"
.LC472:
	.string	"parseBN(&bn, \"256\")"
.LC473:
	.string	"0x256"
.LC474:
	.string	"parseBN(&bn, \"-42\")"
.LC475:
	.string	"0x42"
.LC476:
	.string	"cb"
.LC477:
	.string	"parseBN(&bn, \"cb\")"
.LC478:
	.string	"0xCB"
.LC479:
	.string	"parseBN(&bn, \"-0\")"
	.align 8
.LC480:
	.string	"abctrailing garbage is ignored"
	.align 8
.LC481:
	.string	"parseBN(&bn, \"abctrailing garbage is ignored\")"
.LC482:
	.string	"0xabc"
	.text
	.type	test_hex2bn, @function
test_hex2bn:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	leaq	.LC28(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parseBN
	movl	%eax, %esi
	leaq	.LC362(%rip), %rcx
	leaq	.LC471(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$2071, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L640
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2072, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L640
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2073, %esi
	call	test_BN_ge_zero@PLT
	testl	%eax, %eax
	je	.L640
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2074, %esi
	call	test_BN_even@PLT
	testl	%eax, %eax
	je	.L640
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -16(%rbp)
	leaq	.LC380(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parseBN
	movl	%eax, %esi
	leaq	.LC460(%rip), %rcx
	leaq	.LC472(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$2079, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L641
	movq	-16(%rbp), %rsi
	leaq	.LC473(%rip), %rcx
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$598, %r9d
	movq	%rsi, %r8
	movl	$2080, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	je	.L641
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2081, %esi
	call	test_BN_ge_zero@PLT
	testl	%eax, %eax
	je	.L641
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2082, %esi
	call	test_BN_gt_zero@PLT
	testl	%eax, %eax
	je	.L641
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2083, %esi
	call	test_BN_ne_zero@PLT
	testl	%eax, %eax
	je	.L641
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2084, %esi
	call	test_BN_even@PLT
	testl	%eax, %eax
	je	.L641
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -16(%rbp)
	leaq	.LC462(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parseBN
	movl	%eax, %esi
	leaq	.LC460(%rip), %rcx
	leaq	.LC474(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$2089, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L642
	movq	-16(%rbp), %rsi
	leaq	.LC475(%rip), %rcx
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$66, %r9d
	movq	%rsi, %r8
	movl	$2090, %esi
	movq	%rax, %rdi
	call	test_BN_abs_eq_word@PLT
	testl	%eax, %eax
	je	.L642
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2091, %esi
	call	test_BN_lt_zero@PLT
	testl	%eax, %eax
	je	.L642
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2092, %esi
	call	test_BN_le_zero@PLT
	testl	%eax, %eax
	je	.L642
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2093, %esi
	call	test_BN_ne_zero@PLT
	testl	%eax, %eax
	je	.L642
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2094, %esi
	call	test_BN_even@PLT
	testl	%eax, %eax
	je	.L642
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -16(%rbp)
	leaq	.LC476(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parseBN
	movl	%eax, %esi
	leaq	.LC467(%rip), %rcx
	leaq	.LC477(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$2099, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L643
	movq	-16(%rbp), %rsi
	leaq	.LC478(%rip), %rcx
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$203, %r9d
	movq	%rsi, %r8
	movl	$2100, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	je	.L643
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2101, %esi
	call	test_BN_ge_zero@PLT
	testl	%eax, %eax
	je	.L643
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2102, %esi
	call	test_BN_gt_zero@PLT
	testl	%eax, %eax
	je	.L643
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2103, %esi
	call	test_BN_ne_zero@PLT
	testl	%eax, %eax
	je	.L643
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2104, %esi
	call	test_BN_odd@PLT
	testl	%eax, %eax
	je	.L643
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -16(%rbp)
	leaq	.LC466(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parseBN
	movl	%eax, %esi
	leaq	.LC467(%rip), %rcx
	leaq	.LC479(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$2109, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L644
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2110, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L644
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2111, %esi
	call	test_BN_ge_zero@PLT
	testl	%eax, %eax
	je	.L644
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2112, %esi
	call	test_BN_le_zero@PLT
	testl	%eax, %eax
	je	.L644
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2113, %esi
	call	test_BN_even@PLT
	testl	%eax, %eax
	je	.L644
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -16(%rbp)
	leaq	.LC480(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parseBN
	movl	%eax, %esi
	leaq	.LC460(%rip), %rcx
	leaq	.LC481(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$2118, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L645
	movq	-16(%rbp), %rsi
	leaq	.LC482(%rip), %rcx
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2748, %r9d
	movq	%rsi, %r8
	movl	$2119, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	je	.L645
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2120, %esi
	call	test_BN_ge_zero@PLT
	testl	%eax, %eax
	je	.L645
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2121, %esi
	call	test_BN_gt_zero@PLT
	testl	%eax, %eax
	je	.L645
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2122, %esi
	call	test_BN_ne_zero@PLT
	testl	%eax, %eax
	je	.L645
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2123, %esi
	call	test_BN_even@PLT
	testl	%eax, %eax
	je	.L645
	movl	$1, -4(%rbp)
	jmp	.L628
.L640:
	nop
	jmp	.L628
.L641:
	nop
	jmp	.L628
.L642:
	nop
	jmp	.L628
.L643:
	nop
	jmp	.L628
.L644:
	nop
	jmp	.L628
.L645:
	nop
.L628:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	test_hex2bn, .-test_hex2bn
	.section	.rodata
.LC483:
	.string	"BN_asc2bn(&bn, \"0\")"
.LC484:
	.string	"BN_asc2bn(&bn, \"256\")"
.LC485:
	.string	"BN_asc2bn(&bn, \"-42\")"
.LC486:
	.string	"0x1234"
.LC487:
	.string	"BN_asc2bn(&bn, \"0x1234\")"
.LC488:
	.string	"0X1234"
.LC489:
	.string	"BN_asc2bn(&bn, \"0X1234\")"
.LC490:
	.string	"-0xabcd"
.LC491:
	.string	"BN_asc2bn(&bn, \"-0xabcd\")"
.LC492:
	.string	"0xabcd"
.LC493:
	.string	"BN_asc2bn(&bn, \"-0\")"
	.align 8
.LC494:
	.string	"123trailing garbage is ignored"
	.align 8
.LC495:
	.string	"BN_asc2bn(&bn, \"123trailing garbage is ignored\")"
.LC496:
	.string	"123"
	.text
	.type	test_asc2bn, @function
test_asc2bn:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC444(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2137, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L666
	leaq	.LC28(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_asc2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC483(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2140, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L667
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2141, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L667
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2142, %esi
	call	test_BN_ge_zero@PLT
	testl	%eax, %eax
	je	.L667
	leaq	.LC380(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_asc2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC484(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2145, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L668
	movq	-16(%rbp), %rsi
	leaq	.LC380(%rip), %rcx
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$256, %r9d
	movq	%rsi, %r8
	movl	$2146, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	je	.L668
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2147, %esi
	call	test_BN_ge_zero@PLT
	testl	%eax, %eax
	je	.L668
	leaq	.LC462(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_asc2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC485(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2150, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L669
	movq	-16(%rbp), %rsi
	leaq	.LC464(%rip), %rcx
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$42, %r9d
	movq	%rsi, %r8
	movl	$2151, %esi
	movq	%rax, %rdi
	call	test_BN_abs_eq_word@PLT
	testl	%eax, %eax
	je	.L669
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2152, %esi
	call	test_BN_lt_zero@PLT
	testl	%eax, %eax
	je	.L669
	leaq	.LC486(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_asc2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC487(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2155, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L670
	movq	-16(%rbp), %rsi
	leaq	.LC486(%rip), %rcx
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$4660, %r9d
	movq	%rsi, %r8
	movl	$2156, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	je	.L670
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2157, %esi
	call	test_BN_ge_zero@PLT
	testl	%eax, %eax
	je	.L670
	leaq	.LC488(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_asc2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC489(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2160, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L671
	movq	-16(%rbp), %rsi
	leaq	.LC486(%rip), %rcx
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$4660, %r9d
	movq	%rsi, %r8
	movl	$2161, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	je	.L671
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2162, %esi
	call	test_BN_ge_zero@PLT
	testl	%eax, %eax
	je	.L671
	leaq	.LC490(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_asc2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC491(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2165, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L672
	movq	-16(%rbp), %rsi
	leaq	.LC492(%rip), %rcx
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$43981, %r9d
	movq	%rsi, %r8
	movl	$2166, %esi
	movq	%rax, %rdi
	call	test_BN_abs_eq_word@PLT
	testl	%eax, %eax
	je	.L672
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2167, %esi
	call	test_BN_lt_zero@PLT
	testl	%eax, %eax
	je	.L672
	leaq	.LC466(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_asc2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC493(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2170, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L673
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2171, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L673
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2172, %esi
	call	test_BN_ge_zero@PLT
	testl	%eax, %eax
	je	.L673
	leaq	.LC494(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_asc2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC495(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2175, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L674
	movq	-16(%rbp), %rsi
	leaq	.LC496(%rip), %rcx
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$123, %r9d
	movq	%rsi, %r8
	movl	$2176, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	je	.L674
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2177, %esi
	call	test_BN_ge_zero@PLT
	testl	%eax, %eax
	je	.L674
	movl	$1, -4(%rbp)
	jmp	.L648
.L666:
	nop
	jmp	.L648
.L667:
	nop
	jmp	.L648
.L668:
	nop
	jmp	.L648
.L669:
	nop
	jmp	.L648
.L670:
	nop
	jmp	.L648
.L671:
	nop
	jmp	.L648
.L672:
	nop
	jmp	.L648
.L673:
	nop
	jmp	.L648
.L674:
	nop
.L648:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	test_asc2bn, .-test_asc2bn
	.section	.rodata
.LC497:
	.base64	"AAAAAAA="
.LC498:
	.base64	"AAAAAQEA"
.LC499:
	.base64	"AAAAAYEA"
.LC500:
	.base64	"AAAAAgCAAA=="
.LC501:
	.base64	"AAAAAgEAAA=="
.LC502:
	.base64	"AAAAAoEAAA=="
	.section	.data.rel.ro.local
	.align 32
	.type	kMPITests, @object
	.size	kMPITests, 144
kMPITests:
	.quad	.LC28
	.quad	.LC497
	.quad	4
	.quad	.LC362
	.quad	.LC498
	.quad	5
	.quad	.LC178
	.quad	.LC499
	.quad	5
	.quad	.LC368
	.quad	.LC500
	.quad	6
	.quad	.LC380
	.quad	.LC501
	.quad	6
	.quad	.LC382
	.quad	.LC502
	.quad	6
	.section	.rodata
.LC503:
	.string	"mpi_len"
	.align 8
.LC504:
	.string	"mpi_len2 = BN_bn2mpi(bn, scratch)"
.LC505:
	.string	"scratch"
	.align 8
.LC506:
	.string	"bn2 = BN_mpi2bn(scratch, mpi_len, NULL)"
	.text
	.type	test_mpi, @function
test_mpi:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	kMPITests(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC444(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2204, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L685
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_asc2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC445(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2205, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L685
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_bn2mpi@PLT
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rsi
	leaq	.LC446(%rip), %rcx
	leaq	.LC503(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$8, %r9d
	movq	%rsi, %r8
	movl	$2208, %esi
	movq	%rax, %rdi
	call	test_size_t_le@PLT
	testl	%eax, %eax
	je	.L686
	movq	-56(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2mpi@PLT
	cltq
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC503(%rip), %rcx
	leaq	.LC504(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2211, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L687
	movq	-16(%rbp), %rax
	movq	16(%rax), %r8
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	.LC505(%rip), %rcx
	leaq	.LC450(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	-32(%rbp)
	leaq	-48(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$2212, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L687
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	leaq	-48(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_mpi2bn@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC506(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2215, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L688
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC452(%rip), %rcx
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2218, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	jne	.L683
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L678
.L683:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	$1, -4(%rbp)
	jmp	.L678
.L685:
	nop
	jmp	.L678
.L686:
	nop
	jmp	.L678
.L687:
	nop
	jmp	.L678
.L688:
	nop
.L678:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	test_mpi, .-test_mpi
	.section	.rodata
.LC507:
	.string	"zbn = BN_new()"
.LC508:
	.string	"BN_bin2bn(input, 1, zbn)"
.LC509:
	.string	"BN_is_zero(zbn)"
.LC510:
	.string	"BN_bin2bn(input, 0, zbn)"
.LC511:
	.string	"BN_bin2bn(NULL, 0, zbn)"
	.align 8
.LC512:
	.string	"BN_signed_bin2bn(input, 1, zbn)"
	.align 8
.LC513:
	.string	"BN_signed_bin2bn(input, 0, zbn)"
	.align 8
.LC514:
	.string	"BN_signed_bin2bn(NULL, 0, zbn)"
.LC515:
	.string	"BN_lebin2bn(input, 1, zbn)"
.LC516:
	.string	"BN_lebin2bn(input, 0, zbn)"
.LC517:
	.string	"BN_lebin2bn(NULL, 0, zbn)"
	.align 8
.LC518:
	.string	"BN_signed_lebin2bn(input, 1, zbn)"
	.align 8
.LC519:
	.string	"BN_signed_lebin2bn(input, 0, zbn)"
	.align 8
.LC520:
	.string	"BN_signed_lebin2bn(NULL, 0, zbn)"
	.text
	.type	test_bin2zero, @function
test_bin2zero:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movb	$0, -17(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC507(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2236, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L701
	movq	-16(%rbp), %rdx
	leaq	-17(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC508(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2248, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L702
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC509(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2248, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L702
	movq	-16(%rbp), %rdx
	leaq	-17(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC510(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2248, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L702
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC509(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2248, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L702
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	BN_bin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC511(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2248, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L702
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC509(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2248, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L702
	movq	-16(%rbp), %rdx
	leaq	-17(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_signed_bin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC512(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2249, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L703
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC509(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2249, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L703
	movq	-16(%rbp), %rdx
	leaq	-17(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_signed_bin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC513(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2249, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L703
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC509(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2249, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L703
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	BN_signed_bin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC514(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2249, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L703
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC509(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2249, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L703
	movq	-16(%rbp), %rdx
	leaq	-17(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_lebin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC515(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2250, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L704
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC509(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2250, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L704
	movq	-16(%rbp), %rdx
	leaq	-17(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_lebin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC516(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2250, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L704
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC509(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2250, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L704
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	BN_lebin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC517(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2250, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L704
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC509(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2250, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L704
	movq	-16(%rbp), %rdx
	leaq	-17(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_signed_lebin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC518(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2251, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L705
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC509(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2251, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L705
	movq	-16(%rbp), %rdx
	leaq	-17(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_signed_lebin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC519(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2251, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L705
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC509(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2251, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L705
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	BN_signed_lebin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC520(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2251, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L705
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC509(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2251, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L705
	movl	$1, -4(%rbp)
	jmp	.L691
.L701:
	nop
	jmp	.L691
.L702:
	nop
	jmp	.L691
.L703:
	nop
	jmp	.L691
.L704:
	nop
	jmp	.L691
.L705:
	nop
.L691:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	test_bin2zero, .-test_bin2zero
	.section	.rodata
.LC521:
	.string	"bn_be = BN_new()"
.LC522:
	.string	"bn_expected_be = BN_new()"
	.align 8
.LC523:
	.string	"BN_set_word(bn_expected_be, 0x102)"
.LC524:
	.string	"bn_le = BN_new()"
.LC525:
	.string	"bn_expected_le = BN_new()"
	.align 8
.LC526:
	.string	"BN_set_word(bn_expected_le, 0x201)"
.LC527:
	.string	"BN_bin2bn(input, -1, bn_be)"
.LC528:
	.string	"BN_bin2bn(input, 0, bn_be)"
.LC529:
	.string	"BN_is_zero(bn_be)"
.LC530:
	.string	"BN_bin2bn(input, 2, bn_be)"
.LC531:
	.string	"BN_cmp(bn_be, bn_expected_be)"
	.align 8
.LC532:
	.string	"BN_signed_bin2bn(input, -1, bn_be)"
	.align 8
.LC533:
	.string	"BN_signed_bin2bn(input, 0, bn_be)"
	.align 8
.LC534:
	.string	"BN_signed_bin2bn(input, 2, bn_be)"
.LC535:
	.string	"BN_lebin2bn(input, -1, bn_le)"
.LC536:
	.string	"BN_lebin2bn(input, 0, bn_le)"
.LC537:
	.string	"BN_is_zero(bn_le)"
.LC538:
	.string	"BN_lebin2bn(input, 2, bn_le)"
.LC539:
	.string	"BN_cmp(bn_le, bn_expected_le)"
	.align 8
.LC540:
	.string	"BN_signed_lebin2bn(input, -1, bn_le)"
	.align 8
.LC541:
	.string	"BN_signed_lebin2bn(input, 0, bn_le)"
	.align 8
.LC542:
	.string	"BN_signed_lebin2bn(input, 2, bn_le)"
	.text
	.type	test_bin2bn_lengths, @function
test_bin2bn_lengths:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movw	$513, -42(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC521(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2267, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L719
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC522(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2268, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L719
	movq	-8(%rbp), %rax
	movl	$258, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC523(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2269, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L719
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC524(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2270, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L719
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC525(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2271, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L719
	movq	-24(%rbp), %rax
	movl	$513, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC526(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2272, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L719
	movq	-40(%rbp), %rdx
	leaq	-42(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC527(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2283, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L720
	movq	-40(%rbp), %rdx
	leaq	-42(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC528(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2283, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L720
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC529(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2283, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L720
	movq	-40(%rbp), %rdx
	leaq	-42(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC530(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2283, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L720
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	movl	%eax, %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC531(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2283, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L720
	movq	-40(%rbp), %rdx
	leaq	-42(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	BN_signed_bin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC532(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2284, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L721
	movq	-40(%rbp), %rdx
	leaq	-42(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_signed_bin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC533(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2284, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L721
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC529(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2284, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L721
	movq	-40(%rbp), %rdx
	leaq	-42(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_signed_bin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC534(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2284, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L721
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	movl	%eax, %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC531(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2284, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L721
	movq	-16(%rbp), %rdx
	leaq	-42(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	BN_lebin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC535(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2285, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L722
	movq	-16(%rbp), %rdx
	leaq	-42(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_lebin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC536(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2285, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L722
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC537(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2285, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L722
	movq	-16(%rbp), %rdx
	leaq	-42(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_lebin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC538(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2285, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L722
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	movl	%eax, %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC539(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2285, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L722
	movq	-16(%rbp), %rdx
	leaq	-42(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	BN_signed_lebin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC540(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2286, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L723
	movq	-16(%rbp), %rdx
	leaq	-42(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_signed_lebin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC541(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2286, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L723
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC537(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2286, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L723
	movq	-16(%rbp), %rdx
	leaq	-42(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_signed_lebin2bn@PLT
	movq	%rax, %rcx
	leaq	.LC542(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2286, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L723
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	movl	%eax, %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC539(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2286, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L723
	movl	$1, -28(%rbp)
	jmp	.L709
.L719:
	nop
	jmp	.L709
.L720:
	nop
	jmp	.L709
.L721:
	nop
	jmp	.L709
.L722:
	nop
	jmp	.L709
.L723:
	nop
.L709:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	test_bin2bn_lengths, .-test_bin2bn_lengths
	.section	.rodata
.LC543:
	.string	"BN_rand(bn, 0, 0 , 0 )"
.LC544:
	.string	"BN_rand(bn, 0, 1 , 1 )"
.LC545:
	.string	"BN_rand(bn, 1, 0 , 0 )"
.LC546:
	.string	"BN_rand(bn, 1, 1 , 0 )"
.LC547:
	.string	"BN_rand(bn, 1, -1 , 1 )"
.LC548:
	.string	"BN_rand(bn, 2, 1 , 0 )"
	.text
	.type	test_rand, @function
test_rand:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC444(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2303, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L725
	movl	$0, %eax
	jmp	.L726
.L725:
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC543(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2307, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L730
	movq	-16(%rbp), %rax
	movl	$1, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC544(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2308, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L730
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC545(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2309, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L730
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2310, %esi
	call	test_BN_eq_one@PLT
	testl	%eax, %eax
	je	.L730
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC546(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2311, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L730
	movq	-16(%rbp), %rax
	movl	$1, %ecx
	movl	$-1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC547(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2312, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L730
	movq	-16(%rbp), %rax
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2313, %esi
	call	test_BN_eq_one@PLT
	testl	%eax, %eax
	je	.L730
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC548(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2314, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L730
	movq	-16(%rbp), %rsi
	leaq	.LC460(%rip), %rcx
	leaq	.LC453(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3, %r9d
	movq	%rsi, %r8
	movl	$2315, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	je	.L730
	movl	$1, -4(%rbp)
	jmp	.L729
.L730:
	nop
.L729:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
.L726:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	test_rand, .-test_rand
	.section	.rodata
	.align 32
	.type	rand_range_cases, @object
	.size	rand_range_cases, 592
rand_range_cases:
	.long	2
	.long	200
	.long	-617650657
	.long	1074707278
	.long	3
	.long	300
	.long	-1713863750
	.long	1075312450
	.long	4
	.long	400
	.long	244091581
	.long	1075790408
	.long	5
	.long	500
	.long	-1651466465
	.long	1076033975
	.long	6
	.long	600
	.long	1348001256
	.long	1076241432
	.long	7
	.long	700
	.long	2109962814
	.long	1076440804
	.long	8
	.long	800
	.long	747667907
	.long	1076634208
	.long	9
	.long	900
	.long	-2020627494
	.long	1076822974
	.long	10
	.long	1000
	.long	610778709
	.long	1076947778
	.long	11
	.long	1100
	.long	181969174
	.long	1077038746
	.long	12
	.long	1200
	.long	-670152337
	.long	1077128405
	.long	13
	.long	1300
	.long	-2046466017
	.long	1077216940
	.long	14
	.long	1400
	.long	554703616
	.long	1077304494
	.long	15
	.long	1500
	.long	1988466779
	.long	1077391182
	.long	16
	.long	1600
	.long	401321744
	.long	1077477100
	.long	17
	.long	1700
	.long	-1725683500
	.long	1077562325
	.long	18
	.long	1800
	.long	-120121645
	.long	1077646924
	.long	19
	.long	1900
	.long	1628926477
	.long	1077730954
	.long	20
	.long	2000
	.long	796596174
	.long	1077814462
	.long	30
	.long	3000
	.long	-1170705006
	.long	1078282058
	.long	40
	.long	4000
	.long	-1000280703
	.long	1078675774
	.long	50
	.long	5000
	.long	1826288814
	.long	1079023020
	.long	60
	.long	6000
	.long	-1266087639
	.long	1079212941
	.long	70
	.long	7000
	.long	-1924695104
	.long	1079400713
	.long	80
	.long	8000
	.long	1605012099
	.long	1079586793
	.long	90
	.long	9000
	.long	938982930
	.long	1079771496
	.long	100
	.long	10000
	.long	89610198
	.long	1079955050
	.long	1000
	.long	10000
	.long	320507639
	.long	1083229842
	.long	2000
	.long	20000
	.long	-1504681663
	.long	1084256321
	.long	3000
	.long	30000
	.long	-424411488
	.long	1084780295
	.long	4000
	.long	40000
	.long	-502201936
	.long	1085289274
	.long	5000
	.long	50000
	.long	453823424
	.long	1085549721
	.long	6000
	.long	60000
	.long	-1393356110
	.long	1085809740
	.long	7000
	.long	70000
	.long	-110226041
	.long	1086069436
	.long	8000
	.long	80000
	.long	-1390057575
	.long	1086326806
	.long	9000
	.long	90000
	.long	1264988128
	.long	1086456422
	.long	10000
	.long	100000
	.long	1589344058
	.long	1086585950
	.align 4
	.type	binomial_critical, @object
	.size	binomial_critical, 4
binomial_critical:
	.long	29
	.align 8
.LC550:
	.string	"counts = OPENSSL_zalloc(sizeof(*counts) * range)"
.LC551:
	.string	"rng = BN_new()"
.LC552:
	.string	"val = BN_new()"
.LC553:
	.string	"BN_set_word(rng, range)"
.LC554:
	.string	"BN_rand_range(val, rng)"
.LC555:
	.string	"range"
	.align 8
.LC556:
	.string	"v = (unsigned int)BN_get_word(val)"
	.align 8
.LC557:
	.string	"Chi^2 test negative %.4f > %4.f"
	.align 8
.LC558:
	.string	"test case %zu  range %u  iterations %u"
	.text
	.type	test_rand_range_single, @function
test_rand_range_single:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	rand_range_cases(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-88(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	4+rand_range_cases(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-88(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+rand_range_cases(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-40(%rbp), %eax
	testq	%rax, %rax
	js	.L732
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L733
.L732:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L733:
	movl	-36(%rbp), %eax
	testq	%rax, %rax
	js	.L734
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	jmp	.L735
.L734:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
.L735:
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -32(%rbp)
	movl	-36(%rbp), %eax
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$2358, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC550(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2358, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L752
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC551(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2359, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L752
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC552(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2360, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L752
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC553(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2361, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L752
	movl	$0, -28(%rbp)
	jmp	.L739
.L742:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_rand_range@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC554(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2364, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L753
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_get_word@PLT
	movl	%eax, -76(%rbp)
	movl	-36(%rbp), %edi
	movl	-76(%rbp), %esi
	leaq	.LC555(%rip), %rcx
	leaq	.LC556(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$2365, %esi
	movq	%rax, %rdi
	call	test_uint_lt@PLT
	testl	%eax, %eax
	je	.L753
	movl	-76(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	addl	$1, -28(%rbp)
.L739:
	movl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jb	.L742
	movl	$0, -28(%rbp)
	jmp	.L743
.L746:
	movl	-28(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	js	.L744
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L745
.L744:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L745:
	subsd	-56(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$1, -28(%rbp)
.L743:
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L746
	movsd	-8(%rbp), %xmm0
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	comisd	-48(%rbp), %xmm0
	jbe	.L751
	movsd	-48(%rbp), %xmm0
	movq	-8(%rbp), %rax
	leaq	.LC557(%rip), %rdx
	leaq	.LC0(%rip), %rcx
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movl	$2377, %esi
	movq	%rcx, %rdi
	movl	$2, %eax
	call	test_info@PLT
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rsi
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	leaq	.LC558(%rip), %rdi
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$0, %eax
	call	test_note@PLT
	jmp	.L738
.L751:
	movl	$1, -32(%rbp)
	jmp	.L738
.L752:
	nop
	jmp	.L738
.L753:
	nop
.L738:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$2387, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-32(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	test_rand_range_single, .-test_rand_range_single
	.section	.rodata
.LC559:
	.string	"binomial_critical"
.LC560:
	.string	"n_success"
	.align 8
.LC561:
	.string	"This test is expected to fail by chance 0.01%% of the time."
	.text
	.type	test_rand_range, @function
test_rand_range:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L755
.L756:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	test_rand_range_single
	addl	%eax, -4(%rbp)
	addq	$1, -16(%rbp)
.L755:
	cmpq	$36, -16(%rbp)
	jbe	.L756
	movl	$29, %edi
	movl	-4(%rbp), %esi
	leaq	.LC559(%rip), %rcx
	leaq	.LC560(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$2398, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L757
	movl	$1, %eax
	jmp	.L758
.L757:
	leaq	.LC561(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
.L758:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	test_rand_range, .-test_rand_range
	.section	.rodata
.LC562:
	.string	"BN_set_word(a, 1)"
.LC563:
	.string	"BN_mul(c, a, b, ctx)"
.LC564:
	.string	"numerator = BN_new()"
.LC565:
	.string	"denominator = BN_new()"
.LC566:
	.string	"BN_set_word(numerator, 1)"
.LC567:
	.string	"BN_set_word(denominator, 2)"
	.align 8
.LC568:
	.string	"BN_div(a, b, numerator, denominator, ctx)"
.LC569:
	.string	"BN_set_word(denominator, 1)"
	.text
	.type	test_negzero, @function
test_negzero:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -48(%rbp)
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2410, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L780
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2411, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L780
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2412, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L780
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2413, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L780
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC562(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2417, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L781
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	ctx(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC563(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2421, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L782
	movq	-16(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2423, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L783
	movq	-16(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2424, %esi
	call	test_BN_ge_zero@PLT
	testl	%eax, %eax
	je	.L783
	movl	$0, -44(%rbp)
	jmp	.L767
.L777:
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC564(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2428, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L784
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC565(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2429, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L784
	cmpl	$0, -44(%rbp)
	je	.L770
	movq	-32(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-40(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
.L770:
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC566(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2436, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L785
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC567(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2437, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L785
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	ctx(%rip), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC568(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2440, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L786
	movq	-56(%rbp), %rax
	leaq	.LC53(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2441, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L786
	movq	-56(%rbp), %rax
	leaq	.LC53(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2442, %esi
	call	test_BN_ge_zero@PLT
	testl	%eax, %eax
	je	.L786
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC569(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2446, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L787
	movq	ctx(%rip), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC568(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2447, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L787
	movq	-8(%rbp), %rax
	leaq	.LC54(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2448, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L787
	movq	-8(%rbp), %rax
	leaq	.LC54(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2449, %esi
	call	test_BN_ge_zero@PLT
	testl	%eax, %eax
	je	.L787
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	addl	$1, -44(%rbp)
.L767:
	cmpl	$1, -44(%rbp)
	jle	.L777
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L788
	movl	$1, -48(%rbp)
	jmp	.L762
.L780:
	nop
	jmp	.L762
.L781:
	nop
	jmp	.L762
.L782:
	nop
	jmp	.L762
.L783:
	nop
	jmp	.L762
.L784:
	nop
	jmp	.L762
.L785:
	nop
	jmp	.L762
.L786:
	nop
	jmp	.L762
.L787:
	nop
	jmp	.L762
.L788:
	nop
.L762:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-48(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	test_negzero, .-test_negzero
	.section	.rodata
	.align 8
.LC570:
	.string	"BN_div(a, b, BN_value_one(), zero, ctx)"
	.align 8
.LC571:
	.string	"BN_mod_mul(a, BN_value_one(), BN_value_one(), zero, ctx)"
	.align 8
.LC572:
	.string	"BN_mod_exp(a, BN_value_one(), BN_value_one(), zero, ctx)"
	.align 8
.LC573:
	.string	"BN_mod_exp_mont(a, BN_value_one(), BN_value_one(), zero, ctx, NULL)"
	.align 8
.LC574:
	.string	"BN_mod_exp_mont_consttime(a, BN_value_one(), BN_value_one(), zero, ctx, NULL)"
	.align 8
.LC575:
	.string	"BN_MONT_CTX_set(mont, zero, ctx)"
.LC576:
	.string	"BN_set_word(b, 16)"
.LC577:
	.string	"BN_MONT_CTX_set(mont, b, ctx)"
	.align 8
.LC578:
	.string	"BN_mod_exp_mont(a, BN_value_one(), BN_value_one(), b, ctx, NULL)"
	.align 8
.LC579:
	.string	"BN_mod_exp_mont_consttime(a, BN_value_one(), BN_value_one(), b, ctx, NULL)"
	.text
	.type	test_badmod, @function
test_badmod:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	$0, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2479, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L804
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2480, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L804
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC232(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2481, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L804
	call	BN_MONT_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2482, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L804
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	ctx(%rip), %rbx
	call	BN_value_one@PLT
	movq	%rax, %rdi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rbx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC570(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2486, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L805
	call	ERR_clear_error@PLT
	movq	ctx(%rip), %r12
	call	BN_value_one@PLT
	movq	%rax, %rbx
	call	BN_value_one@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%r12, %r8
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC571(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2490, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L806
	call	ERR_clear_error@PLT
	movq	ctx(%rip), %r12
	call	BN_value_one@PLT
	movq	%rax, %rbx
	call	BN_value_one@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%r12, %r8
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC572(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2494, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L807
	call	ERR_clear_error@PLT
	movq	ctx(%rip), %r12
	call	BN_value_one@PLT
	movq	%rax, %rbx
	call	BN_value_one@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movq	%r12, %r8
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	BN_mod_exp_mont@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC573(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2498, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L808
	call	ERR_clear_error@PLT
	movq	ctx(%rip), %r12
	call	BN_value_one@PLT
	movq	%rax, %rbx
	call	BN_value_one@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movq	%r12, %r8
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	BN_mod_exp_mont_consttime@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC574(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2503, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L809
	call	ERR_clear_error@PLT
	movq	ctx(%rip), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC575(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2508, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L810
	call	ERR_clear_error@PLT
	movq	-24(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC576(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2513, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L811
	movq	ctx(%rip), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC577(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2516, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L812
	call	ERR_clear_error@PLT
	movq	ctx(%rip), %r12
	call	BN_value_one@PLT
	movq	%rax, %rbx
	call	BN_value_one@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movq	%r12, %r8
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	BN_mod_exp_mont@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC578(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2520, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L813
	call	ERR_clear_error@PLT
	movq	ctx(%rip), %r12
	call	BN_value_one@PLT
	movq	%rax, %rbx
	call	BN_value_one@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movq	%r12, %r8
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	BN_mod_exp_mont_consttime@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC579(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2525, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L814
	call	ERR_clear_error@PLT
	movl	$1, -44(%rbp)
	jmp	.L792
.L804:
	nop
	jmp	.L792
.L805:
	nop
	jmp	.L792
.L806:
	nop
	jmp	.L792
.L807:
	nop
	jmp	.L792
.L808:
	nop
	jmp	.L792
.L809:
	nop
	jmp	.L792
.L810:
	nop
	jmp	.L792
.L811:
	nop
	jmp	.L792
.L812:
	nop
	jmp	.L792
.L813:
	nop
	jmp	.L792
.L814:
	nop
.L792:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movl	-44(%rbp), %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	test_badmod, .-test_badmod
	.section	.rodata
	.align 8
.LC580:
	.string	"BN_mod_exp(r, a, zero, BN_value_one(), NULL)"
.LC581:
	.string	"r"
	.align 8
.LC582:
	.string	"BN_mod_exp_mont(r, a, zero, BN_value_one(), NULL, NULL)"
	.align 8
.LC583:
	.string	"BN_mod_exp_mont_consttime(r, a, zero, BN_value_one(), NULL, NULL)"
	.align 8
.LC584:
	.string	"BN_mod_exp_mont_word(r, 42, zero, BN_value_one(), NULL, NULL)"
	.text
	.type	test_expmodzero, @function
test_expmodzero:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -20(%rbp)
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC232(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2544, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L822
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2545, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L822
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC168(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2546, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L822
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	call	BN_value_one@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC580(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2550, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L823
	movq	-16(%rbp), %rax
	leaq	.LC581(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2551, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L823
	call	BN_value_one@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	BN_mod_exp_mont@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC582(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2552, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L823
	movq	-16(%rbp), %rax
	leaq	.LC581(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2554, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L823
	call	BN_value_one@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	BN_mod_exp_mont_consttime@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC583(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2555, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L823
	movq	-16(%rbp), %rax
	leaq	.LC581(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2558, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L823
	call	BN_value_one@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$42, %esi
	movq	%rax, %rdi
	call	BN_mod_exp_mont_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC584(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2559, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L823
	movq	-16(%rbp), %rax
	leaq	.LC581(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2561, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L823
	movl	$1, -20(%rbp)
	jmp	.L818
.L822:
	nop
	jmp	.L818
.L823:
	nop
.L818:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	test_expmodzero, .-test_expmodzero
	.section	.rodata
.LC585:
	.string	"p"
.LC586:
	.string	"m"
.LC587:
	.string	"BN_set_word(p, 0)"
.LC588:
	.string	"BN_set_word(m, 1)"
.LC589:
	.string	"BN_mod_exp(r, a, p, m, NULL)"
	.align 8
.LC590:
	.string	"BN_mod_exp_mont(r, a, p, m, NULL, NULL)"
	.align 8
.LC591:
	.string	"BN_mod_exp_mont_consttime(r, a, p, m, NULL, NULL)"
	.align 8
.LC592:
	.string	"BN_mod_exp_mont_word(r, 1, p, m, NULL, NULL)"
	.align 8
.LC593:
	.string	"BN_mod_exp_simple(r, a, p, m, NULL)"
	.align 8
.LC594:
	.string	"BN_mod_exp_recp(r, a, p, m, NULL)"
	.text
	.type	test_expmodone, @function
test_expmodone:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC581(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2580, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L834
	movq	-24(%rbp), %rax
	leaq	.LC53(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2581, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L834
	movq	-32(%rbp), %rax
	leaq	.LC585(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2582, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L834
	movq	-32(%rbp), %rax
	leaq	.LC585(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2583, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L834
	movq	-40(%rbp), %rax
	leaq	.LC586(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2584, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L834
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC562(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2585, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L834
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC587(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2586, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L834
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC588(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2587, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L834
	movl	$0, -8(%rbp)
	jmp	.L828
.L832:
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC589(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2592, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L835
	movq	-16(%rbp), %rax
	leaq	.LC581(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2593, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L835
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	BN_mod_exp_mont@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC590(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2594, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L835
	movq	-16(%rbp), %rax
	leaq	.LC581(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2595, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L835
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	BN_mod_exp_mont_consttime@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC591(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2596, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L835
	movq	-16(%rbp), %rax
	leaq	.LC581(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2597, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L835
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_mod_exp_mont_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC592(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2598, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L835
	movq	-16(%rbp), %rax
	leaq	.LC581(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2599, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L835
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	BN_mod_exp_simple@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC593(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2600, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L835
	movq	-16(%rbp), %rax
	leaq	.LC581(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2601, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L835
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	BN_mod_exp_recp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC594(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2602, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L835
	movq	-16(%rbp), %rax
	leaq	.LC581(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2603, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L835
	cmpl	$0, -8(%rbp)
	jne	.L831
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
.L831:
	addl	$1, -8(%rbp)
.L828:
	cmpl	$1, -8(%rbp)
	jle	.L832
	movl	$1, -4(%rbp)
	jmp	.L827
.L834:
	nop
	jmp	.L827
.L835:
	nop
.L827:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	test_expmodone, .-test_expmodone
	.section	.rodata
	.align 8
.LC595:
	.string	"BN_generate_prime_ex(r, kBits, 0, NULL, NULL, NULL)"
.LC596:
	.string	"kBits"
.LC597:
	.string	"BN_num_bits(r)"
	.text
	.type	test_smallprime, @function
test_smallprime:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC168(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2624, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L843
	cmpl	$1, -20(%rbp)
	jg	.L839
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_generate_prime_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC595(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2628, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L840
	jmp	.L838
.L839:
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_generate_prime_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC595(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2632, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L844
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %esi
	movl	-20(%rbp), %edi
	leaq	.LC596(%rip), %rcx
	leaq	.LC597(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$2634, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L844
.L840:
	movl	$1, -4(%rbp)
	jmp	.L838
.L843:
	nop
	jmp	.L838
.L844:
	nop
.L838:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	test_smallprime, .-test_smallprime
	.section	.rodata
	.align 8
.LC598:
	.string	"BN_generate_prime_ex(r, kBits, 1, NULL, NULL, NULL)"
	.text
	.type	test_smallsafeprime, @function
test_smallsafeprime:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC168(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2649, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L853
	cmpl	$5, -20(%rbp)
	jg	.L848
	cmpl	$3, -20(%rbp)
	je	.L848
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	BN_generate_prime_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC598(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2653, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L850
	jmp	.L847
.L848:
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	BN_generate_prime_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC598(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2657, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L854
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %esi
	movl	-20(%rbp), %edi
	leaq	.LC596(%rip), %rcx
	leaq	.LC597(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$2659, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L854
.L850:
	movl	$1, -4(%rbp)
	jmp	.L847
.L853:
	nop
	jmp	.L847
.L854:
	nop
.L847:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	test_smallsafeprime, .-test_smallsafeprime
	.data
	.align 16
	.type	primes, @object
	.size	primes, 20
primes:
	.long	2
	.long	3
	.long	5
	.long	7
	.long	17863
	.section	.rodata
.LC599:
	.string	"BN_set_word(r, primes[i])"
.LC600:
	.string	"BN_check_prime(r, ctx, NULL)"
	.text
	.type	test_is_prime, @function
test_is_prime:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC168(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2677, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L863
	movl	$0, -8(%rbp)
	jmp	.L858
.L861:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	primes(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC599(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2681, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L864
	movq	ctx(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	movl	%eax, %esi
	leaq	.LC362(%rip), %rcx
	leaq	.LC600(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$2682, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L864
	addl	$1, -8(%rbp)
.L858:
	cmpl	$1, -8(%rbp)
	jle	.L861
	movl	$1, -4(%rbp)
	jmp	.L857
.L863:
	nop
	jmp	.L857
.L864:
	nop
.L857:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	test_is_prime, .-test_is_prime
	.data
	.align 16
	.type	not_primes, @object
	.size	not_primes, 16
not_primes:
	.long	-1
	.long	0
	.long	1
	.long	4
	.section	.rodata
.LC601:
	.string	"BN_set_word(r, not_primes[i])"
	.text
	.type	test_not_prime, @function
test_not_prime:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC168(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2701, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L873
	movl	$0, -8(%rbp)
	jmp	.L868
.L871:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	not_primes(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC601(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2705, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L874
	movq	ctx(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC600(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2706, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L874
	addl	$1, -8(%rbp)
.L868:
	cmpl	$1, -8(%rbp)
	jle	.L871
	movl	$1, -4(%rbp)
	jmp	.L867
.L873:
	nop
	jmp	.L867
.L874:
	nop
.L867:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	test_not_prime, .-test_not_prime
	.section	.rodata
.LC602:
	.string	"b[i] = BN_CTX_get(c)"
	.text
	.type	test_ctx_set_ct_flag, @function
test_ctx_set_ct_flag:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movl	$0, -4(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	$0, -16(%rbp)
	jmp	.L876
.L880:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, -144(%rbp,%rdx,8)
	movq	-16(%rbp), %rax
	movq	-144(%rbp,%rax,8), %rax
	leaq	.LC602(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2724, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L882
	movq	-16(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L879
	movq	-16(%rbp), %rax
	movq	-144(%rbp,%rax,8), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
.L879:
	addq	$1, -16(%rbp)
.L876:
	cmpq	$14, -16(%rbp)
	jbe	.L880
	movl	$1, -4(%rbp)
	jmp	.L878
.L882:
	nop
.L878:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	test_ctx_set_ct_flag, .-test_ctx_set_ct_flag
	.section	.rodata
	.align 8
.LC603:
	.string	"BN_get_flags(b[i], BN_FLG_CONSTTIME)"
	.text
	.type	test_ctx_check_ct_flag, @function
test_ctx_check_ct_flag:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -264(%rbp)
	movl	$0, -4(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	$0, -16(%rbp)
	jmp	.L884
.L888:
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, -256(%rbp,%rdx,8)
	movq	-16(%rbp), %rax
	movq	-256(%rbp,%rax,8), %rax
	leaq	.LC602(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2744, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L890
	movq	-16(%rbp), %rax
	movq	-256(%rbp,%rax,8), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC603(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2746, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L891
	addq	$1, -16(%rbp)
.L884:
	cmpq	$29, -16(%rbp)
	jbe	.L888
	movl	$1, -4(%rbp)
	jmp	.L886
.L890:
	nop
	jmp	.L886
.L891:
	nop
.L886:
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	test_ctx_check_ct_flag, .-test_ctx_check_ct_flag
	.section	.rodata
.LC604:
	.string	"nctx = BN_CTX_new()"
.LC605:
	.string	"sctx = BN_CTX_secure_new()"
.LC606:
	.string	"test_ctx_set_ct_flag(c)"
.LC607:
	.string	"test_ctx_check_ct_flag(c)"
	.text
	.type	test_ctx_consttime_flag, @function
test_ctx_consttime_flag:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	call	BN_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC604(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2784, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L903
	call	BN_CTX_secure_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC605(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2785, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L903
	movq	$0, -16(%rbp)
	jmp	.L896
.L901:
	cmpq	$0, -16(%rbp)
	jne	.L897
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L898
.L897:
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.L898:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	test_ctx_set_ct_flag
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC606(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2790, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L904
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	test_ctx_check_ct_flag
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC607(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2791, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L904
	addq	$1, -16(%rbp)
.L896:
	cmpq	$1, -16(%rbp)
	jbe	.L901
	movl	$1, -20(%rbp)
	jmp	.L895
.L903:
	nop
	jmp	.L895
.L904:
	nop
.L895:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	test_ctx_consttime_flag, .-test_ctx_consttime_flag
	.section	.rodata
.LC608:
	.string	"BN_set_word(a, 66)"
.LC609:
	.string	"BN_set_word(b, 99)"
.LC610:
	.string	"BN_are_coprime(a, b, ctx)"
.LC611:
	.string	"BN_are_coprime(b, a, ctx)"
.LC612:
	.string	"BN_set_word(a, 67)"
	.text
	.type	test_coprime, @function
test_coprime:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -20(%rbp)
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2807, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L906
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2808, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L906
	movq	-16(%rbp), %rax
	movl	$66, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC608(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2809, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L906
	movq	-8(%rbp), %rax
	movl	$99, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC609(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2810, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L906
	movq	ctx(%rip), %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_are_coprime@PLT
	movl	%eax, %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC610(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2811, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L906
	movq	ctx(%rip), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_are_coprime@PLT
	movl	%eax, %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC611(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2812, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L906
	movq	-16(%rbp), %rax
	movl	$67, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC612(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2813, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L906
	movq	ctx(%rip), %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_are_coprime@PLT
	movl	%eax, %esi
	leaq	.LC362(%rip), %rcx
	leaq	.LC610(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$2814, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L906
	movq	ctx(%rip), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_are_coprime@PLT
	movl	%eax, %esi
	leaq	.LC362(%rip), %rcx
	leaq	.LC611(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$2815, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L906
	movl	$1, %eax
	jmp	.L907
.L906:
	movl	$0, %eax
.L907:
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	test_coprime, .-test_coprime
	.section	.rodata
.LC613:
	.string	"gcd = BN_new()"
	.align 8
.LC614:
	.string	"BN_generate_prime_ex(a, 1024, 0, NULL, NULL, NULL)"
	.align 8
.LC615:
	.string	"BN_generate_prime_ex(b, 1024, 0, NULL, NULL, NULL)"
.LC616:
	.string	"BN_gcd(gcd, a, b, ctx)"
.LC617:
	.string	"BN_is_one(gcd)"
	.text
	.type	test_gcd_prime, @function
test_gcd_prime:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -24(%rbp)
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2826, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L919
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2827, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L919
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC613(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$2828, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L919
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	BN_generate_prime_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC614(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2831, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L920
	movl	$0, -20(%rbp)
	jmp	.L914
.L917:
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	BN_generate_prime_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC615(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2834, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L921
	movq	ctx(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_gcd@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC616(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2836, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L921
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC617(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2837, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L921
	movq	ctx(%rip), %rdx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_are_coprime@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC610(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$2838, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L921
	addl	$1, -20(%rbp)
.L914:
	movl	$20, %eax
	cmpl	%eax, -20(%rbp)
	jl	.L917
	movl	$1, -24(%rbp)
	jmp	.L912
.L919:
	nop
	jmp	.L912
.L920:
	nop
	jmp	.L912
.L921:
	nop
.L912:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-24(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	test_gcd_prime, .-test_gcd_prime
	.section	.rodata
	.align 8
.LC618:
	.string	"11661802380018791130421822926261696211062555589140005959993120844627946820899490684928760491249738643524880720584249698100907201002086675047927600340800371"
	.align 8
.LC619:
	.string	"8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
	.align 8
.LC620:
	.string	"13407807926845237209807376456131917626043958556151178674833163543294276330515137663421134775482798690129946803802212663956180562088664022929883876655300863"
	.align 8
.LC621:
	.string	"8243904058268085430037326628480645845409758077568738532059032482829411441589060359473015812042675626645792847533045025133977349826758407619521544102068438"
	.align 8
.LC622:
	.string	"49742700414108038220788666961595869469958776189870102193128447260284386121835740784990869050050504348861513337232530490826340663197278031692737429054"
	.align 8
.LC623:
	.string	"49742700414108038220788666961595869469958774281887549950411485391663243362592271353668158565195557417149981094324650322556843202946445882670777892608"
	.align 8
.LC624:
	.string	"13407807165114202272155928309714524828153774826272517255370990284429769497230131760206012644403029349547320953206103351725462999947509743623340557059752191"
	.align 8
.LC625:
	.string	"5296244594780707015616522701706118082963369547253192207884519362176786998494754269566542021902852281553955919479361968433490044249304558011362360473525933"
	.align 8
.LC626:
	.string	"5148719036160389201525610950887605325980251964889646556085286545393154880917882341316935963597876203651239711308098807067785803336463909753993540214027190"
	.align 8
.LC627:
	.string	"6703903964971298549787012499102923063739682910296196688861780721860882015036773488400937149083451713845015929093243025426876941405973284973216824503042158"
	.align 8
.LC628:
	.string	"6703903964971298549787012499102923063739682910296196688861780721860882015036773488400937149083451713845015929093243025426876941405973284973216824503042159"
	.align 8
.LC629:
	.string	"890834085435375257741967877133046082794237143485305415862263654481513601097228909494719125666494654362966596010917307450870141892672764191218875181826063"
	.align 8
.LC630:
	.string	"3427446396505596330634350984901719674479522569002785244080234738428874363543574613629729936644454873653305371741673537907318534426985272974404612945608761"
	.align 8
.LC631:
	.string	"347274304491756456407885782611187456004533123731559738386965298569198700288908959884783511336015173659084450584054338327182069024088133164805266956353542"
	.align 8
.LC632:
	.string	"3608632990153469264412378349742339216742409743898601587274768025011077203298564355519276771734494617412284225520408258675349965114483434992887431333675068"
	.align 8
.LC633:
	.string	"845537437023407024291050822694198152023570976726072321216526487786890643880175215245684343282644317726448025670286639629620257469283458217850119569539086"
	.align 8
.LC634:
	.string	"5155371529688532178421209781159131443543419764974688878527112131744651820560942741233618315791898103806663680731773331932325760304416292040754017461076359"
	.align 8
.LC635:
	.string	"10055855947456947824680518748654384595609524365444295033292671082791323022555160232601405723625177570767523893639864538140315412108959927459825236754563832"
	.align 8
.LC636:
	.string	"10055855947456947824680518748654384595609524365444295033292671082791323022555160232601405723625177570767523893639864538140315412108959927459825236754563833"
	.align 8
.LC637:
	.string	"3155666506033786929967309937640790361084670559125912405342594979434514281852895628549089784140633802237856597253350882057776006558494345853302083699912572"
	.align 8
.LC638:
	.string	"3789819583801342198190405714582958759005991915505282362397087750421354472464482309884313568513392719866881818533879437723959004941019388529192775771488319"
	.align 8
.LC639:
	.string	"4695752552040706867080542538786056470322165281761525158189220280402554744766748475920074276424690564764466205012296891227919906548065034299166336940507214"
	.align 8
.LC640:
	.string	"2159140240970485794188159431017382878636879856244045329971239574891969113356066116282803432319645738605981983280459398974026896474502911811812651475927076"
	.align 8
.LC641:
	.string	"5239312332984325668414624633307915097111691815000872662334695514543653352139236244355716342933680820813722132244478049043787190399972784701334569424519255"
	.align 8
.LC642:
	.string	"1977953647322612860406858017869125467496941904523063466791308891117279673905853192947053975836177456987550529342885618109390409133788264851714311303725089"
	.align 8
.LC643:
	.string	"6456987954117763835533395796948878140715006860263624787492985786851463021696673830592391568882152644949976371994399712030236821104813318117996225041943964"
	.align 8
.LC644:
	.string	"13407807929942597099574024998205846127479365820592393377723561443721764030073546976801874298166903427690031858186486050853753882811946551499689575296532556"
	.align 8
.LC645:
	.string	"13407807929942597099574024998205846127479365820592393377723561443721764030073546976801874298166903427690031858186486050853753882811946551499689575296532557"
	.section	.data.rel.ro.local
	.align 32
	.type	ModExpTests, @object
	.size	ModExpTests, 512
ModExpTests:
	.quad	.LC618
	.quad	.LC619
	.quad	.LC620
	.quad	.LC621
	.quad	.LC622
	.quad	.LC623
	.quad	.LC624
	.quad	.LC625
	.quad	.LC626
	.quad	.LC627
	.quad	.LC628
	.quad	.LC362
	.quad	.LC629
	.quad	.LC627
	.quad	.LC628
	.quad	.LC362
	.quad	.LC630
	.quad	.LC627
	.quad	.LC628
	.quad	.LC362
	.quad	.LC631
	.quad	.LC627
	.quad	.LC628
	.quad	.LC362
	.quad	.LC632
	.quad	.LC627
	.quad	.LC628
	.quad	.LC362
	.quad	.LC633
	.quad	.LC627
	.quad	.LC628
	.quad	.LC362
	.quad	.LC634
	.quad	.LC635
	.quad	.LC636
	.quad	.LC362
	.quad	.LC637
	.quad	.LC627
	.quad	.LC628
	.quad	.LC362
	.quad	.LC638
	.quad	.LC627
	.quad	.LC628
	.quad	.LC362
	.quad	.LC639
	.quad	.LC627
	.quad	.LC628
	.quad	.LC362
	.quad	.LC640
	.quad	.LC627
	.quad	.LC628
	.quad	.LC362
	.quad	.LC641
	.quad	.LC627
	.quad	.LC628
	.quad	.LC362
	.quad	.LC642
	.quad	.LC627
	.quad	.LC628
	.quad	.LC362
	.quad	.LC643
	.quad	.LC644
	.quad	.LC645
	.quad	.LC362
	.section	.rodata
.LC646:
	.string	"result = BN_new()"
.LC647:
	.string	"BN_dec2bn(&base, test->base)"
	.align 8
.LC648:
	.string	"BN_dec2bn(&exponent, test->exp)"
.LC649:
	.string	"BN_dec2bn(&modulo, test->mod)"
	.align 8
.LC650:
	.string	"BN_mod_exp(result, base, exponent, modulo, ctx)"
.LC651:
	.string	"s = BN_bn2dec(result)"
.LC652:
	.string	"test->res"
	.text
	.type	test_mod_exp, @function
test_mod_exp:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -84(%rbp)
	movl	-84(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	ModExpTests(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -32(%rbp)
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC646(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$3068, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L930
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_dec2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC647(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$3069, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L930
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_dec2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC648(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$3070, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L930
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_dec2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC649(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$3071, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L930
	movq	ctx(%rip), %rdi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	movl	%eax, %esi
	leaq	.LC362(%rip), %rcx
	leaq	.LC650(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$3074, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L931
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_bn2dec@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC651(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$3077, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L932
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	24(%rax), %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC652(%rip), %rcx
	leaq	.LC166(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	%rbx
	pushq	%r12
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$3080, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L933
	movl	$1, -20(%rbp)
	jmp	.L925
.L930:
	nop
	jmp	.L925
.L931:
	nop
	jmp	.L925
.L932:
	nop
	jmp	.L925
.L933:
	nop
.L925:
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$3086, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-20(%rbp), %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	test_mod_exp, .-test_mod_exp
	.type	test_mod_exp_consttime, @function
test_mod_exp_consttime:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -84(%rbp)
	movl	-84(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	ModExpTests(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -32(%rbp)
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC646(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$3102, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L942
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_dec2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC647(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$3103, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L942
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_dec2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC648(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$3104, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L942
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_dec2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC649(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$3105, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L942
	movq	-56(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-64(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-72(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	ctx(%rip), %rdi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	movl	%eax, %esi
	leaq	.LC362(%rip), %rcx
	leaq	.LC650(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$3112, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L943
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_bn2dec@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC651(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$3115, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L944
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	24(%rax), %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC652(%rip), %rcx
	leaq	.LC166(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	%rbx
	pushq	%r12
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$3118, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L945
	movl	$1, -20(%rbp)
	jmp	.L937
.L942:
	nop
	jmp	.L937
.L943:
	nop
	jmp	.L937
.L944:
	nop
	jmp	.L937
.L945:
	nop
.L937:
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$3124, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-20(%rbp), %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	test_mod_exp_consttime, .-test_mod_exp_consttime
	.section	.rodata
.LC653:
	.string	"exp_result = BN_new()"
.LC654:
	.string	"exp_a1 = BN_new()"
.LC655:
	.string	"exp_p1 = BN_new()"
.LC656:
	.string	"exp_a2 = BN_new()"
.LC657:
	.string	"exp_p2 = BN_new()"
.LC658:
	.string	"exp_m = BN_new()"
.LC659:
	.string	"BN_one(exp_a1)"
.LC660:
	.string	"BN_one(exp_p1)"
.LC661:
	.string	"BN_one(exp_a2)"
.LC662:
	.string	"BN_one(exp_p2)"
	.align 8
.LC663:
	.string	"BN_mod_exp2_mont(exp_result, exp_a1, exp_p1, exp_a2, exp_p2, exp_m, ctx, NULL)"
	.text
	.type	test_mod_exp2_mont, @function
test_mod_exp2_mont:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC653(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$3143, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L954
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC654(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$3144, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L954
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC655(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$3145, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L954
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC656(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$3146, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L954
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC657(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$3147, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L954
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC658(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$3148, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L954
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC659(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$3151, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L955
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC660(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$3152, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L955
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC661(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$3153, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L955
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC662(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$3154, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L955
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	ctx(%rip), %rdi
	movq	-48(%rbp), %r9
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rax
	pushq	$0
	pushq	%rdi
	movq	%rax, %rdi
	call	BN_mod_exp2_mont@PLT
	addq	$16, %rsp
	movl	%eax, %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC663(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3160, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L956
	movl	$1, -4(%rbp)
	jmp	.L949
.L954:
	nop
	jmp	.L949
.L955:
	nop
	jmp	.L949
.L956:
	nop
.L949:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	test_mod_exp2_mont, .-test_mod_exp2_mont
	.section	.rodata
.LC664:
	.string	"5193817943"
.LC665:
	.string	"BN_dec2bn(&a, \"5193817943\")"
.LC666:
	.string	"3259122431"
.LC667:
	.string	"BN_dec2bn(&b, \"3259122431\")"
.LC668:
	.string	"BN_mod_inverse(r, a, b, ctx)"
.LC669:
	.string	"NULL"
.LC670:
	.string	"str = BN_bn2dec(r)"
.LC671:
	.string	"2609653924"
.LC672:
	.string	"strcmp(str, \"2609653924\")"
.LC673:
	.string	"BN_mod_inverse(b, a, b, ctx)"
	.text
	.type	test_mod_inverse, @function
test_mod_inverse:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	leaq	.LC664(%rip), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_dec2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC665(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$3184, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L967
	leaq	.LC666(%rip), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_dec2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC667(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$3186, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L968
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC168(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$3188, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L969
	movq	ctx(%rip), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_inverse@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC581(%rip), %rcx
	leaq	.LC668(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$3190, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L970
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_bn2dec@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rsi
	leaq	.LC669(%rip), %rcx
	leaq	.LC670(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$3192, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	testl	%eax, %eax
	je	.L971
	leaq	.LC671(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movl	%eax, %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC672(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3194, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L972
	movq	ctx(%rip), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_inverse@PLT
	movq	%rax, %rcx
	leaq	.LC673(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3198, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L973
	movl	$1, -4(%rbp)
	jmp	.L959
.L967:
	nop
	jmp	.L959
.L968:
	nop
	jmp	.L959
.L969:
	nop
	jmp	.L959
.L970:
	nop
	jmp	.L959
.L971:
	nop
	jmp	.L959
.L972:
	nop
	jmp	.L959
.L973:
	nop
.L959:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$3207, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	test_mod_inverse, .-test_mod_inverse
	.section	.rodata
.LC674:
	.string	"15"
.LC675:
	.string	"BN_dec2bn(&a, \"15\")"
.LC676:
	.string	"10"
.LC677:
	.string	"BN_dec2bn(&b, \"10\")"
.LC678:
	.string	"39"
.LC679:
	.string	"BN_dec2bn(&c, \"39\")"
	.align 8
.LC680:
	.string	"(idx == 0 ? BN_mod_exp_simple : BN_mod_exp_recp)(r, a, b, c, ctx)"
.LC681:
	.string	"36"
.LC682:
	.string	"\"36\""
.LC683:
	.string	"str"
	.align 8
.LC684:
	.string	"(idx == 0 ? BN_mod_exp_simple : BN_mod_exp_recp)(r, a, r, c, ctx)"
	.align 8
.LC685:
	.string	"BN_mod_exp_simple(c, a, b, c, ctx)"
	.align 8
.LC686:
	.string	"BN_mod_exp_recp(c, a, b, c, ctx)"
.LC687:
	.string	"str = BN_bn2dec(c)"
	.text
	.type	test_mod_exp_alias, @function
test_mod_exp_alias:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -24(%rbp)
	leaq	.LC674(%rip), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_dec2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC675(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$3220, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L995
	leaq	.LC676(%rip), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_dec2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC677(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$3222, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L996
	leaq	.LC678(%rip), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_dec2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC679(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$3224, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L997
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC168(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$3226, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L998
	cmpl	$0, -52(%rbp)
	jne	.L980
	movq	BN_mod_exp_simple@GOTPCREL(%rip), %rax
	movq	%rax, %r9
	jmp	.L981
.L980:
	movq	BN_mod_exp_recp@GOTPCREL(%rip), %rax
	movq	%rax, %r9
.L981:
	movq	ctx(%rip), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movl	%eax, %esi
	leaq	.LC362(%rip), %rcx
	leaq	.LC680(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$3229, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L999
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_bn2dec@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rsi
	leaq	.LC669(%rip), %rcx
	leaq	.LC670(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$3232, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	testl	%eax, %eax
	je	.L1000
	leaq	.LC681(%rip), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC682(%rip), %rcx
	leaq	.LC683(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$3234, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L1001
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$3237, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	cmpl	$0, -52(%rbp)
	jne	.L985
	movq	BN_mod_exp_simple@GOTPCREL(%rip), %rax
	movq	%rax, %r9
	jmp	.L986
.L985:
	movq	BN_mod_exp_recp@GOTPCREL(%rip), %rax
	movq	%rax, %r9
.L986:
	movq	ctx(%rip), %rdi
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movl	%eax, %esi
	leaq	.LC362(%rip), %rcx
	leaq	.LC684(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$3243, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L1002
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_bn2dec@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rsi
	leaq	.LC669(%rip), %rcx
	leaq	.LC670(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$3246, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	testl	%eax, %eax
	je	.L1003
	leaq	.LC681(%rip), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC682(%rip), %rcx
	leaq	.LC683(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$3248, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L1004
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$3251, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -16(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L990
	movq	ctx(%rip), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_simple@PLT
	movl	%eax, %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC685(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3256, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L991
	jmp	.L976
.L990:
	movq	ctx(%rip), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_recp@PLT
	movl	%eax, %esi
	leaq	.LC362(%rip), %rcx
	leaq	.LC686(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$3259, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L1005
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_bn2dec@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rsi
	leaq	.LC669(%rip), %rcx
	leaq	.LC687(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$3261, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	testl	%eax, %eax
	je	.L1006
	leaq	.LC681(%rip), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC682(%rip), %rcx
	leaq	.LC683(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$3263, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L1007
.L991:
	movl	$1, -4(%rbp)
	jmp	.L976
.L995:
	nop
	jmp	.L976
.L996:
	nop
	jmp	.L976
.L997:
	nop
	jmp	.L976
.L998:
	nop
	jmp	.L976
.L999:
	nop
	jmp	.L976
.L1000:
	nop
	jmp	.L976
.L1001:
	nop
	jmp	.L976
.L1002:
	nop
	jmp	.L976
.L1003:
	nop
	jmp	.L976
.L1004:
	nop
	jmp	.L976
.L1005:
	nop
	jmp	.L976
.L1006:
	nop
	jmp	.L976
.L1007:
	nop
.L976:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$3274, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	test_mod_exp_alias, .-test_mod_exp_alias
	.section	.rodata
.LC688:
	.string	"%s:%d: Failed %s test"
.LC689:
	.string	"%s:%d: Unknown test"
	.text
	.type	file_test_run, @function
file_test_run:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$12, -4(%rbp)
	leaq	filetests.1(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L1009
.L1013:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	findattr
	testq	%rax, %rax
	je	.L1010
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L1011
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC688(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$3300, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L1012
.L1011:
	movl	$1, %eax
	jmp	.L1012
.L1010:
	addq	$16, -16(%rbp)
.L1009:
	subl	$1, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L1013
	movq	-24(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC689(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$3307, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
.L1012:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	file_test_run, .-file_test_run
	.section	.rodata
	.align 8
.LC690:
	.string	"s = OPENSSL_zalloc(sizeof(*s))"
	.text
	.type	run_file_tests, @function
run_file_tests:
.LFB537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	$0, -8(%rbp)
	movl	-36(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	test_get_argument@PLT
	movq	%rax, -16(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$3317, %edx
	movq	%rax, %rsi
	movl	$6544, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC690(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$3317, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L1015
	movl	$0, %eax
	jmp	.L1016
.L1015:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_start_file@PLT
	testl	%eax, %eax
	jne	.L1018
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$3320, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L1016
.L1022:
	movq	-8(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jne	.L1019
	jmp	.L1018
.L1019:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	file_test_run
	testl	%eax, %eax
	jne	.L1020
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 24(%rax)
.L1020:
	movq	-8(%rbp), %rax
	movl	28(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	test_clearstanza@PLT
.L1018:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jne	.L1021
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	test_readstanza@PLT
	testl	%eax, %eax
	jne	.L1022
.L1021:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	test_end_file@PLT
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -20(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$3335, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpl	$0, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
.L1016:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	run_file_tests, .-run_file_tests
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB538:
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
.LFE538:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC691:
	.string	"ctx = BN_CTX_new()"
.LC692:
	.string	"test_sub"
.LC693:
	.string	"test_div_recip"
.LC694:
	.string	"test_signed_mod_replace_ab"
.LC695:
	.string	"test_signed_mod_replace_ba"
.LC696:
	.string	"test_mod"
.LC697:
	.string	"test_mod_inverse"
.LC698:
	.string	"test_mod_exp_alias"
.LC699:
	.string	"test_modexp_mont5"
.LC700:
	.string	"test_kronecker"
.LC701:
	.string	"test_rand"
.LC702:
	.string	"test_bn2padded"
.LC703:
	.string	"test_dec2bn"
.LC704:
	.string	"test_hex2bn"
.LC705:
	.string	"test_asc2bn"
.LC706:
	.string	"test_bin2zero"
.LC707:
	.string	"test_bin2bn_lengths"
.LC708:
	.string	"test_mpi"
.LC709:
	.string	"test_bn2signed"
.LC710:
	.string	"test_negzero"
.LC711:
	.string	"test_badmod"
.LC712:
	.string	"test_expmodzero"
.LC713:
	.string	"test_expmodone"
.LC714:
	.string	"test_smallprime"
.LC715:
	.string	"test_smallsafeprime"
.LC716:
	.string	"test_swap"
.LC717:
	.string	"test_ctx_consttime_flag"
.LC718:
	.string	"test_gf2m_add"
.LC719:
	.string	"test_gf2m_mod"
.LC720:
	.string	"test_gf2m_mul"
.LC721:
	.string	"test_gf2m_sqr"
.LC722:
	.string	"test_gf2m_modinv"
.LC723:
	.string	"test_gf2m_moddiv"
.LC724:
	.string	"test_gf2m_modexp"
.LC725:
	.string	"test_gf2m_modsqrt"
.LC726:
	.string	"test_gf2m_modsolvequad"
.LC727:
	.string	"test_is_prime"
.LC728:
	.string	"test_not_prime"
.LC729:
	.string	"test_gcd_prime"
.LC730:
	.string	"test_coprime"
.LC731:
	.string	"test_mod_exp"
.LC732:
	.string	"test_mod_exp_consttime"
.LC733:
	.string	"test_mod_exp2_mont"
.LC734:
	.string	"test_rand_range"
.LC735:
	.string	"run_file_tests"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	.L1026
.L1031:
	cmpl	$1, -8(%rbp)
	je	.L1027
	cmpl	$0, -8(%rbp)
	jle	.L1028
	movl	-8(%rbp), %eax
	subl	$500, %eax
	cmpl	$5, %eax
	ja	.L1028
	jmp	.L1035
.L1027:
	movl	$1, -4(%rbp)
	jmp	.L1026
.L1035:
	jmp	.L1026
.L1028:
	movl	$0, %eax
	jmp	.L1030
.L1026:
	call	opt_next@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L1031
	call	test_get_argument_count@PLT
	movl	%eax, -12(%rbp)
	call	BN_CTX_new@PLT
	movq	%rax, ctx(%rip)
	movq	ctx(%rip), %rax
	leaq	.LC691(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$3378, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L1032
	movl	$0, %eax
	jmp	.L1030
.L1032:
	cmpl	$0, -12(%rbp)
	jne	.L1033
	leaq	test_sub(%rip), %rdx
	leaq	.LC692(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_div_recip(%rip), %rdx
	leaq	.LC693(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_signed_mod_replace_ab(%rip), %rsi
	leaq	.LC694(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_signed_mod_replace_ba(%rip), %rsi
	leaq	.LC695(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_mod(%rip), %rdx
	leaq	.LC696(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_mod_inverse(%rip), %rdx
	leaq	.LC697(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_mod_exp_alias(%rip), %rsi
	leaq	.LC698(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_modexp_mont5(%rip), %rdx
	leaq	.LC699(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_kronecker(%rip), %rdx
	leaq	.LC700(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_rand(%rip), %rdx
	leaq	.LC701(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_bn2padded(%rip), %rdx
	leaq	.LC702(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_dec2bn(%rip), %rdx
	leaq	.LC703(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_hex2bn(%rip), %rdx
	leaq	.LC704(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_asc2bn(%rip), %rdx
	leaq	.LC705(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_bin2zero(%rip), %rdx
	leaq	.LC706(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_bin2bn_lengths(%rip), %rdx
	leaq	.LC707(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_mpi(%rip), %rsi
	leaq	.LC708(%rip), %rax
	movl	$1, %ecx
	movl	$6, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_bn2signed(%rip), %rsi
	leaq	.LC709(%rip), %rax
	movl	$1, %ecx
	movl	$43, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_negzero(%rip), %rdx
	leaq	.LC710(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_badmod(%rip), %rdx
	leaq	.LC711(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_expmodzero(%rip), %rdx
	leaq	.LC712(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_expmodone(%rip), %rdx
	leaq	.LC713(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_smallprime(%rip), %rsi
	leaq	.LC714(%rip), %rax
	movl	$1, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_smallsafeprime(%rip), %rsi
	leaq	.LC715(%rip), %rax
	movl	$1, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_swap(%rip), %rdx
	leaq	.LC716(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ctx_consttime_flag(%rip), %rdx
	leaq	.LC717(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_gf2m_add(%rip), %rdx
	leaq	.LC718(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_gf2m_mod(%rip), %rdx
	leaq	.LC719(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_gf2m_mul(%rip), %rdx
	leaq	.LC720(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_gf2m_sqr(%rip), %rdx
	leaq	.LC721(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_gf2m_modinv(%rip), %rdx
	leaq	.LC722(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_gf2m_moddiv(%rip), %rdx
	leaq	.LC723(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_gf2m_modexp(%rip), %rdx
	leaq	.LC724(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_gf2m_modsqrt(%rip), %rdx
	leaq	.LC725(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_gf2m_modsolvequad(%rip), %rdx
	leaq	.LC726(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_is_prime(%rip), %rsi
	leaq	.LC727(%rip), %rax
	movl	$1, %ecx
	movl	$5, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_not_prime(%rip), %rsi
	leaq	.LC728(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_gcd_prime(%rip), %rdx
	leaq	.LC729(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_coprime(%rip), %rdx
	leaq	.LC730(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_mod_exp(%rip), %rsi
	leaq	.LC731(%rip), %rax
	movl	$1, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_mod_exp_consttime(%rip), %rsi
	leaq	.LC732(%rip), %rax
	movl	$1, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_mod_exp2_mont(%rip), %rdx
	leaq	.LC733(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	cmpl	$0, -4(%rbp)
	je	.L1034
	leaq	test_rand_range(%rip), %rdx
	leaq	.LC734(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	jmp	.L1034
.L1033:
	movl	-12(%rbp), %eax
	leaq	run_file_tests(%rip), %rsi
	leaq	.LC735(%rip), %rdi
	movl	$1, %ecx
	movl	%eax, %edx
	call	add_all_tests@PLT
.L1034:
	movl	$1, %eax
.L1030:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	ctx(%rip), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	cleanup_tests, .-cleanup_tests
	.local	neg.8
	.comm	neg.8,4,4
	.data
	.align 32
	.type	sign.7, @object
	.size	sign.7, 32
sign.7:
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	1
	.long	1
	.section	.rodata
	.align 8
.LC736:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
	.align 8
.LC737:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFEADBCFC4DAE7FFF908E92820306B"
	.align 8
.LC738:
	.string	"9544D954000000006C0000000000000000000000000000000000000000000000"
	.align 8
.LC739:
	.string	"00000000000000000000FF030202FFFFF8FFEBDBCFC4DAE7FFF908E92820306B"
	.align 8
.LC740:
	.string	"9544D954000000006C000000FF0302030000000000FFFFFFFFFFFFFFFFFFFFFF"
	.align 8
.LC741:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FC00FF02FFFFFFFF"
	.align 8
.LC742:
	.string	"00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FCFD"
	.align 8
.LC743:
	.string	"FCFFFFFFFFFF000000000000000000FF0302030000000000FFFFFFFFFFFFFFFF"
	.align 8
.LC744:
	.string	"FF00FCFDFDFF030202FF00000000FFFFFFFFFFFFFFFFFF00FCFDFCFFFFFFFFFF"
	.section	.data.rel.local
	.align 32
	.type	ahex.6, @object
	.size	ahex.6, 104
ahex.6:
	.quad	.LC736
	.quad	.LC63
	.quad	.LC63
	.quad	.LC63
	.quad	.LC737
	.quad	.LC738
	.quad	.LC739
	.quad	.LC740
	.quad	.LC741
	.quad	.LC742
	.quad	.LC743
	.quad	.LC744
	.quad	0
	.section	.rodata
	.align 8
.LC745:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F8000000"
	.align 8
.LC746:
	.string	"00000010000000006C0000000000000000000000000000000000000000000000"
	.align 8
.LC747:
	.string	"00000000000000000000000000000000000000FFFFFFFFFFFFF8F8F8F8000000"
	.align 8
.LC748:
	.string	"00000010000000006C000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF"
	.align 8
.LC749:
	.string	"00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
	.align 8
.LC750:
	.string	"FFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFFFFFF"
	.align 8
.LC751:
	.string	"FFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
	.section	.data.rel.local
	.align 32
	.type	nhex.5, @object
	.size	nhex.5, 104
nhex.5:
	.quad	.LC736
	.quad	.LC63
	.quad	.LC63
	.quad	.LC63
	.quad	.LC745
	.quad	.LC746
	.quad	.LC747
	.quad	.LC748
	.quad	.LC63
	.quad	.LC749
	.quad	.LC750
	.quad	.LC751
	.quad	0
	.section	.rodata
	.align 8
.LC752:
	.string	"95564994a96c45954227b845a1e99cb939d5a1da99ee91acc962396ae999a9ee"
	.align 8
.LC753:
	.string	"38603790448f2f7694c242a875f0cad0aae658eba085f312d2febbbd128dd2b5"
	.align 8
.LC754:
	.string	"8f7d1149f03724215d704344d0d62c587ae3c5939cba4b9b5f3dc5e8e911ef9a"
	.align 8
.LC755:
	.string	"5ce1a5a749a4989d0d8368f6e1f8cdf3a362a6c97fb02047ff152b480a4ad985"
	.align 8
.LC756:
	.string	"2d45efdf0770542992afca6a0590d52930434bba96017afbc9f99e112950a8b1"
	.align 8
.LC757:
	.string	"a359473ec376f329bdae6a19f503be6d4be7393c4e43468831234e27e3838680"
	.align 8
.LC758:
	.string	"b949390d2e416a3f9759e5349ab4c253f6f29f819a6fe4cbfd27ada34903300e"
	.align 8
.LC759:
	.string	"da021f62839f5878a36f1bc3085375b00fd5fa3e68d316c0fdace87a97558465"
	.section	.data.rel.local
	.align 32
	.type	ehex.4, @object
	.size	ehex.4, 72
ehex.4:
	.quad	.LC752
	.quad	.LC753
	.quad	.LC754
	.quad	.LC755
	.quad	.LC756
	.quad	.LC757
	.quad	.LC758
	.quad	.LC759
	.quad	0
	.section	.rodata
	.align 8
.LC760:
	.string	"f95dc0f980fbd22e90caa5a387cc4a369f3f830d50dd321c40db8c09a7e1a241"
	.align 8
.LC761:
	.string	"a536e096622d3280c0c1ba849c1f4a79bf490f60006d081e8cf69960189f0d31"
	.align 8
.LC762:
	.string	"2cd9e17073a3fba7881b21474a13b334116cb2f5dbf3189a6de3515d0840f053"
	.align 8
.LC763:
	.string	"c776d3982d391b6d04d642dda5cc6d1640174c09875addb70595658f89efb439"
	.align 8
.LC764:
	.string	"dc6fbd55f903aadd307982d3f659207f265e1ec6271b274521b7a5e28e8fd7a5"
	.align 8
.LC765:
	.string	"5df089292820477802a43cf5b6b94e999e8c9944ddebb0d0e95a60f88cb7e813"
	.align 8
.LC766:
	.string	"ba110d20e1024774107dd02949031864923b3cb8c3f7250d6d1287b0a40db6a4"
	.align 8
.LC767:
	.string	"7bd5a469518eb65aa207ddc47d8c6e5fc8e0c105be8fc1d4b57b2e27540471d5"
	.section	.data.rel.local
	.align 32
	.type	phex.3, @object
	.size	phex.3, 72
phex.3:
	.quad	.LC760
	.quad	.LC761
	.quad	.LC762
	.quad	.LC763
	.quad	.LC764
	.quad	.LC765
	.quad	.LC766
	.quad	.LC767
	.quad	0
	.section	.rodata
	.align 8
.LC768:
	.string	"fef15d5ce4625f1bccfbba49fc8439c72bf8202af039a2259678941b60bb4a8f"
	.align 8
.LC769:
	.string	"2987e965d58fd8cf86a856674d519763d0e1211cc9f8596971050d56d9b35db3"
	.align 8
.LC770:
	.string	"785866cfbca17cfdbed6060be3629d894f924a89fdc1efc624f80d41a22f1900"
	.align 8
.LC771:
	.string	"9503fcc3824ef62ccb9208430c26f2d8ceb2c63488ec4c07437aa4c96c43dd8b"
	.align 8
.LC772:
	.string	"9289ed00a712ff66ee195dc71f5e4ead02172b63c543d69baf495f5fd63ba7bc"
	.align 8
.LC773:
	.string	"c633bd309c016e37736da92129d0b053d4ab28d21ad7d8b6fab2a8bbdc8ee647"
	.align 8
.LC774:
	.string	"d2fbcf2cf426cf892e6f5639e0252993965dfb73ccd277407014ea784aaa280c"
	.align 8
.LC775:
	.string	"b7b03972bc8b0baa72360bdb44b82415b86b2f260f877791cd33ba8f2d65229b"
	.section	.data.rel.local
	.align 32
	.type	mhex.2, @object
	.size	mhex.2, 72
mhex.2:
	.quad	.LC768
	.quad	.LC769
	.quad	.LC770
	.quad	.LC771
	.quad	.LC772
	.quad	.LC773
	.quad	.LC774
	.quad	.LC775
	.quad	0
	.section	.data.rel.ro.local
	.align 32
	.type	filetests.1, @object
	.size	filetests.1, 192
filetests.1:
	.quad	.LC186
	.quad	file_sum
	.quad	.LC230
	.quad	file_lshift1
	.quad	.LC251
	.quad	file_lshift
	.quad	.LC258
	.quad	file_rshift
	.quad	.LC263
	.quad	file_square
	.quad	.LC272
	.quad	file_product
	.quad	.LC282
	.quad	file_quotient
	.quad	.LC302
	.quad	file_modmul
	.quad	.LC315
	.quad	file_modexp
	.quad	.LC328
	.quad	file_exp
	.quad	.LC334
	.quad	file_modsqrt
	.quad	.LC339
	.quad	file_gcd
	.section	.rodata
	.align 8
.LC776:
	.string	"Usage: %s [options] [file...]\n"
.LC777:
	.string	"Valid options are:\n"
.LC778:
	.string	"help"
.LC779:
	.string	"Display this summary"
.LC780:
	.string	"list"
	.align 8
.LC781:
	.string	"Display the list of tests available"
.LC782:
	.string	"test"
	.align 8
.LC783:
	.string	"Run a single test by id or name"
.LC784:
	.string	"iter"
	.align 8
.LC785:
	.string	"Run a single iteration of a test"
.LC786:
	.string	"indent"
	.align 8
.LC787:
	.string	"Number of tabs added to output"
.LC788:
	.string	"seed"
	.align 8
.LC789:
	.string	"Seed value to randomize tests with"
.LC790:
	.string	"stochastic"
.LC791:
	.string	"Run stochastic tests"
	.align 8
.LC792:
	.string	"file\tFile to run tests on. Normal tests are not run\n"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	test_options.0, @object
	.size	test_options.0, 264
test_options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC776
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC777
	.quad	.LC778
	.long	500
	.long	45
	.quad	.LC779
	.quad	.LC780
	.long	501
	.long	45
	.quad	.LC781
	.quad	.LC782
	.long	502
	.long	115
	.quad	.LC783
	.quad	.LC784
	.long	503
	.long	110
	.quad	.LC785
	.quad	.LC786
	.long	504
	.long	112
	.quad	.LC787
	.quad	.LC788
	.long	505
	.long	110
	.quad	.LC789
	.quad	.LC790
	.long	1
	.long	45
	.quad	.LC791
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC792
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

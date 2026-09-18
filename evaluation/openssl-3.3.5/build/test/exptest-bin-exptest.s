	.file	"exptest.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"%s failed: a ** 0 mod 1 = r (should be 0)"
.LC1:
	.string	"../test/exptest.c"
.LC2:
	.string	"a"
.LC3:
	.string	"r"
	.text
	.type	a_is_zero_mod_one, @function
a_is_zero_mod_one:
.LFB468:
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
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L2
	movq	-8(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$35, %esi
	movl	$0, %eax
	call	test_error@PLT
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-16(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movl	$0, %eax
	jmp	.L3
.L2:
	movl	$1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	a_is_zero_mod_one, .-a_is_zero_mod_one
	.section	.rodata
.LC4:
	.string	"m = BN_new()"
.LC5:
	.string	"a = BN_new()"
.LC6:
	.string	"p = BN_new()"
.LC7:
	.string	"r = BN_new()"
	.align 8
.LC8:
	.string	"BN_rand(a, 1024, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY)"
.LC9:
	.string	"BN_mod_exp(r, a, p, m, ctx)"
.LC10:
	.string	"BN_mod_exp"
	.align 8
.LC11:
	.string	"a_is_zero_mod_one(\"BN_mod_exp\", r, a)"
	.align 8
.LC12:
	.string	"BN_mod_exp_recp(r, a, p, m, ctx)"
.LC13:
	.string	"BN_mod_exp_recp"
	.align 8
.LC14:
	.string	"a_is_zero_mod_one(\"BN_mod_exp_recp\", r, a)"
	.align 8
.LC15:
	.string	"BN_mod_exp_simple(r, a, p, m, ctx)"
.LC16:
	.string	"BN_mod_exp_simple"
	.align 8
.LC17:
	.string	"a_is_zero_mod_one(\"BN_mod_exp_simple\", r, a)"
	.align 8
.LC18:
	.string	"BN_mod_exp_mont(r, a, p, m, ctx, NULL)"
.LC19:
	.string	"BN_mod_exp_mont"
	.align 8
.LC20:
	.string	"a_is_zero_mod_one(\"BN_mod_exp_mont\", r, a)"
	.align 8
.LC21:
	.string	"BN_mod_exp_mont_consttime(r, a, p, m, ctx, NULL)"
.LC22:
	.string	"BN_mod_exp_mont_consttime"
	.align 8
.LC23:
	.string	"a_is_zero_mod_one(\"BN_mod_exp_mont_consttime\", r, a)"
.LC24:
	.string	"mont = BN_MONT_CTX_new()"
	.align 8
.LC25:
	.string	"BN_mod_exp_mont_consttime(r, p, a, m, ctx, mont)"
	.align 8
.LC26:
	.string	"BN_mod_exp_mont(r, p, a, m, ctx, mont)"
.LC27:
	.string	"BN_MONT_CTX_set(mont, m, ctx)"
	.align 8
.LC28:
	.string	"BN_mod_exp_mont_word(r, one_word, p, m, ctx, NULL)"
	.align 8
.LC29:
	.string	"BN_mod_exp_mont_word failed: 1 ** 0 mod 1 = r (should be 0)"
	.text
	.type	test_mod_exp_zero, @function
test_mod_exp_zero:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$1, -56(%rbp)
	call	BN_CTX_new@PLT
	movq	%rax, -64(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$55, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L30
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$56, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L30
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$57, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L30
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$58, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L30
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	BN_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$65, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L31
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$68, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC10(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	a_is_zero_mod_one
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$71, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L10
	movl	$1, -32(%rbp)
.L10:
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_recp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$74, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L33
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC13(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	a_is_zero_mod_one
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$77, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L12
	movl	$1, -32(%rbp)
.L12:
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_simple@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$80, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L34
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC16(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	a_is_zero_mod_one
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$83, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L14
	movl	$1, -32(%rbp)
.L14:
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$86, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L35
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC19(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	a_is_zero_mod_one
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$89, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L16
	movl	$1, -32(%rbp)
.L16:
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont_consttime@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$92, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L36
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC22(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	a_is_zero_mod_one
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$95, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L18
	movl	$1, -32(%rbp)
.L18:
	call	BN_MONT_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$98, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L37
	call	ERR_set_mark@PLT
	movq	-40(%rbp), %r8
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont_consttime@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$103, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L38
	movq	-40(%rbp), %r8
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$105, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L39
	call	ERR_pop_to_mark@PLT
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$109, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L40
	movq	-40(%rbp), %r8
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont_consttime@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$113, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC22(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	a_is_zero_mod_one
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$116, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L24
	movl	$1, -32(%rbp)
.L24:
	movq	-40(%rbp), %r8
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$119, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC19(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	a_is_zero_mod_one
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$122, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L26
	movl	$1, -32(%rbp)
.L26:
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$129, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L43
	movq	-24(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$132, %esi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	jne	.L28
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$133, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	-24(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	jmp	.L7
.L28:
	cmpl	$0, -32(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	jmp	.L7
.L30:
	nop
	jmp	.L7
.L31:
	nop
	jmp	.L7
.L32:
	nop
	jmp	.L7
.L33:
	nop
	jmp	.L7
.L34:
	nop
	jmp	.L7
.L35:
	nop
	jmp	.L7
.L36:
	nop
	jmp	.L7
.L37:
	nop
	jmp	.L7
.L38:
	nop
	jmp	.L7
.L39:
	nop
	jmp	.L7
.L40:
	nop
	jmp	.L7
.L41:
	nop
	jmp	.L7
.L42:
	nop
	jmp	.L7
.L43:
	nop
.L7:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_mod_exp_zero, .-test_mod_exp_zero
	.section	.rodata
.LC30:
	.string	"ctx = BN_CTX_new()"
.LC31:
	.string	"r_mont = BN_new()"
.LC32:
	.string	"r_mont_const = BN_new()"
.LC33:
	.string	"r_recp = BN_new()"
.LC34:
	.string	"r_simple = BN_new()"
.LC35:
	.string	"b = BN_new()"
.LC36:
	.string	"0"
.LC37:
	.string	"RAND_bytes(&c, 1)"
	.align 8
.LC38:
	.string	"BN_rand(a, NUM_BITS + c, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY)"
	.align 8
.LC39:
	.string	"BN_rand(b, NUM_BITS + c, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY)"
	.align 8
.LC40:
	.string	"BN_rand(m, NUM_BITS + c, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ODD)"
.LC41:
	.string	"BN_mod(a, a, m, ctx)"
.LC42:
	.string	"BN_mod(b, b, m, ctx)"
	.align 8
.LC43:
	.string	"BN_mod_exp_mont(r_mont, a, b, m, ctx, NULL)"
	.align 8
.LC44:
	.string	"BN_mod_exp_recp(r_recp, a, b, m, ctx)"
	.align 8
.LC45:
	.string	"BN_mod_exp_simple(r_simple, a, b, m, ctx)"
	.align 8
.LC46:
	.string	"BN_mod_exp_mont_consttime(r_mont_const, a, b, m, ctx, NULL)"
.LC47:
	.string	"r_mont"
.LC48:
	.string	"r_simple"
.LC49:
	.string	"r_recp"
.LC50:
	.string	"r_mont_const"
	.align 8
.LC51:
	.string	"simple and mont results differ"
	.align 8
.LC52:
	.string	"simple and mont const time results differ"
	.align 8
.LC53:
	.string	"simple and recp results differ"
.LC54:
	.string	"b"
.LC55:
	.string	"m"
	.text
	.type	test_mod_exp, @function
test_mod_exp:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -84(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	call	BN_CTX_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$164, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L63
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$167, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L64
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$168, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L64
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$169, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L64
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$170, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L64
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$171, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L64
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$172, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L64
	call	BN_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$173, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L64
	leaq	-73(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	movl	%eax, %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$176, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L65
	movzbl	-73(%rbp), %eax
	andl	$127, %eax
	subl	$64, %eax
	movb	%al, -73(%rbp)
	movzbl	-73(%rbp), %eax
	movzbl	%al, %eax
	leal	256(%rax), %esi
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$179, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L66
	leaq	-73(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	movl	%eax, %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$183, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L67
	movzbl	-73(%rbp), %eax
	andl	$127, %eax
	subl	$64, %eax
	movb	%al, -73(%rbp)
	movzbl	-73(%rbp), %eax
	movzbl	%al, %eax
	leal	256(%rax), %esi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$186, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L68
	leaq	-73(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	movl	%eax, %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$190, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L69
	movzbl	-73(%rbp), %eax
	andl	$127, %eax
	subl	$64, %eax
	movb	%al, -73(%rbp)
	movzbl	-73(%rbp), %eax
	movzbl	%al, %eax
	leal	256(%rax), %esi
	movq	-64(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$193, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L70
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$197, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L71
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$198, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L71
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC43(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$199, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L71
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_recp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$200, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L71
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_simple@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC45(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$201, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L71
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont_consttime@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$202, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L71
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC47(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$205, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L57
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC49(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$206, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L57
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC50(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$207, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	jne	.L58
.L57:
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L59
	leaq	.LC51(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$209, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
.L59:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L60
	leaq	.LC52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$211, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
.L60:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L61
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$213, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
.L61:
	movq	-48(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-56(%rbp), %rax
	leaq	.LC54(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-64(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-40(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-32(%rbp), %rax
	leaq	.LC49(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-16(%rbp), %rax
	leaq	.LC47(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-24(%rbp), %rax
	leaq	.LC50(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	jmp	.L46
.L58:
	movl	$1, -4(%rbp)
	jmp	.L46
.L63:
	nop
	jmp	.L46
.L64:
	nop
	jmp	.L46
.L65:
	nop
	jmp	.L46
.L66:
	nop
	jmp	.L46
.L67:
	nop
	jmp	.L46
.L68:
	nop
	jmp	.L46
.L69:
	nop
	jmp	.L46
.L70:
	nop
	jmp	.L46
.L71:
	nop
.L46:
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
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_mod_exp, .-test_mod_exp
	.section	.rodata
.LC56:
	.string	"r_mont_const_x2_1 = BN_new()"
.LC57:
	.string	"r_mont_const_x2_2 = BN_new()"
.LC58:
	.string	"r_simple1 = BN_new()"
.LC59:
	.string	"r_simple2 = BN_new()"
.LC60:
	.string	"a1 = BN_new()"
.LC61:
	.string	"b1 = BN_new()"
.LC62:
	.string	"m1 = BN_new()"
.LC63:
	.string	"a2 = BN_new()"
.LC64:
	.string	"b2 = BN_new()"
.LC65:
	.string	"m2 = BN_new()"
.LC66:
	.string	"BN_mod(a1, a1, m1, ctx)"
.LC67:
	.string	"BN_mod(b1, b1, m1, ctx)"
.LC68:
	.string	"BN_mod(a2, a2, m2, ctx)"
.LC69:
	.string	"BN_mod(b2, b2, m2, ctx)"
	.align 8
.LC70:
	.string	"BN_mod_exp_simple(r_simple1, a1, b1, m1, ctx)"
	.align 8
.LC71:
	.string	"BN_mod_exp_simple(r_simple2, a2, b2, m2, ctx)"
	.align 8
.LC72:
	.string	"BN_mod_exp_mont_consttime_x2(r_mont_const_x2_1, a1, b1, m1, NULL, r_mont_const_x2_2, a2, b2, m2, NULL, ctx)"
.LC73:
	.string	"r_mont_const_x2_1"
.LC74:
	.string	"r_simple1"
.LC75:
	.string	"r_mont_const_x2_2"
.LC76:
	.string	"r_simple2"
	.align 8
.LC77:
	.string	"simple and mont const time x2 (#1) results differ"
	.align 8
.LC78:
	.string	"simple and mont const time x2 (#2) results differ"
.LC79:
	.string	"a1"
.LC80:
	.string	"b1"
.LC81:
	.string	"m1"
.LC82:
	.string	"a2"
.LC83:
	.string	"b2"
.LC84:
	.string	"m2"
	.text
	.type	test_mod_exp_x2, @function
test_mod_exp_x2:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movl	%edi, -116(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -92(%rbp)
	cmpl	$100, -116(%rbp)
	jg	.L73
	movl	$1024, -92(%rbp)
	jmp	.L74
.L73:
	cmpl	$200, -116(%rbp)
	jg	.L75
	movl	$1536, -92(%rbp)
	jmp	.L74
.L75:
	cmpl	$300, -116(%rbp)
	jg	.L74
	movl	$2048, -92(%rbp)
.L74:
	call	BN_CTX_new@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$262, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L87
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC56(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$265, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L88
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$266, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L88
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$267, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L88
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC59(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$268, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L88
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC60(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$269, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L88
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$270, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L88
	call	BN_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC62(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$271, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L88
	call	BN_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC63(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$272, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L88
	call	BN_new@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$273, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L88
	call	BN_new@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$274, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L88
	movl	-92(%rbp), %esi
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_rand@PLT
	movl	-92(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_rand@PLT
	movl	-92(%rbp), %esi
	movq	-64(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_rand@PLT
	movl	-92(%rbp), %esi
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_rand@PLT
	movl	-92(%rbp), %esi
	movq	-80(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_rand@PLT
	movl	-92(%rbp), %esi
	movq	-88(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_rand@PLT
	movq	-104(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$284, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	movq	-104(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$285, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	movq	-104(%rbp), %rsi
	movq	-88(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC68(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$286, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	movq	-104(%rbp), %rsi
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC69(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$287, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	movq	-104(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_simple@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$288, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	movq	-104(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_simple@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC71(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$289, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-104(%rbp)
	pushq	$0
	pushq	-88(%rbp)
	pushq	-80(%rbp)
	pushq	-72(%rbp)
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	BN_mod_exp_mont_consttime_x2@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC72(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$290, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC73(%rip), %rcx
	leaq	.LC74(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$295, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L82
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC75(%rip), %rcx
	leaq	.LC76(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$296, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	jne	.L83
.L82:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L84
	leaq	.LC77(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$298, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
.L84:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L85
	leaq	.LC78(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$300, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
.L85:
	movq	-48(%rbp), %rax
	leaq	.LC79(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-56(%rbp), %rax
	leaq	.LC80(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-64(%rbp), %rax
	leaq	.LC81(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-72(%rbp), %rax
	leaq	.LC82(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-80(%rbp), %rax
	leaq	.LC83(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-88(%rbp), %rax
	leaq	.LC84(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-32(%rbp), %rax
	leaq	.LC74(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-40(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-16(%rbp), %rax
	leaq	.LC73(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-24(%rbp), %rax
	leaq	.LC75(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	jmp	.L77
.L83:
	movl	$1, -4(%rbp)
	jmp	.L77
.L87:
	nop
	jmp	.L77
.L88:
	nop
	jmp	.L77
.L89:
	nop
.L77:
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
	movq	-56(%rbp), %rax
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
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_mod_exp_x2, .-test_mod_exp_x2
	.section	.rodata
.LC85:
	.string	"test_mod_exp_zero"
.LC86:
	.string	"test_mod_exp"
.LC87:
	.string	"test_mod_exp_x2"
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
	leaq	test_mod_exp_zero(%rip), %rdx
	leaq	.LC85(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_mod_exp(%rip), %rsi
	leaq	.LC86(%rip), %rax
	movl	$1, %ecx
	movl	$200, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_mod_exp_x2(%rip), %rsi
	leaq	.LC87(%rip), %rax
	movl	$1, %ecx
	movl	$300, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

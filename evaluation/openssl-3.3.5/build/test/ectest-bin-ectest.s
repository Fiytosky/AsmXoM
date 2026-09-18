	.file	"ectest.c"
	.text
	.local	crv_len
	.comm	crv_len,8,8
	.local	curves
	.comm	curves,8,8
	.section	.rodata
.LC0:
	.string	"n1 = BN_new()"
.LC1:
	.string	"../test/ectest.c"
.LC2:
	.string	"n2 = BN_new()"
.LC3:
	.string	"order = BN_new()"
.LC4:
	.string	"ctx = BN_CTX_new()"
	.align 8
.LC5:
	.string	"G = EC_GROUP_get0_generator(group)"
.LC6:
	.string	"P = EC_POINT_new(group)"
.LC7:
	.string	"Q = EC_POINT_new(group)"
.LC8:
	.string	"R = EC_POINT_new(group)"
.LC9:
	.string	"S = EC_POINT_new(group)"
	.align 8
.LC10:
	.string	"EC_GROUP_get_order(group, order, ctx)"
	.align 8
.LC11:
	.string	"EC_POINT_mul(group, Q, order, NULL, NULL, ctx)"
	.align 8
.LC12:
	.string	"EC_POINT_is_at_infinity(group, Q)"
	.align 8
.LC13:
	.string	"EC_GROUP_precompute_mult(group, ctx)"
.LC14:
	.string	"EC_POINT_copy(P, G)"
.LC15:
	.string	"BN_one(n1)"
	.align 8
.LC16:
	.string	"EC_POINT_mul(group, Q, n1, NULL, NULL, ctx)"
	.align 8
.LC17:
	.string	"EC_POINT_cmp(group, Q, P, ctx)"
.LC18:
	.string	"0"
.LC19:
	.string	"BN_sub(n1, order, n1)"
	.align 8
.LC20:
	.string	"EC_POINT_invert(group, Q, ctx)"
.LC21:
	.string	"BN_set_word(n1, i)"
	.align 8
.LC22:
	.string	"EC_POINT_mul(group, P, n1, NULL, NULL, ctx)"
	.align 8
.LC23:
	.string	"EC_POINT_cmp(group, P, G, ctx)"
.LC24:
	.string	"BN_sub(n1, n1, order)"
	.align 8
.LC25:
	.string	"EC_POINT_mul(group, Q, NULL, P, n1, ctx)"
	.align 8
.LC26:
	.string	"BN_add(n2, order, BN_value_one())"
	.align 8
.LC27:
	.string	"EC_POINT_mul(group, Q, NULL, P, n2, ctx)"
.LC28:
	.string	"BN_mul(n2, n1, n2, ctx)"
	.align 8
.LC29:
	.string	"EC_POINT_add(group, Q, Q, P, ctx)"
	.align 8
.LC30:
	.string	"EC_POINT_is_at_infinity(group, P)"
	.align 8
.LC31:
	.string	"EC_POINTs_mul(group, R, NULL, 2, points, scalars, ctx)"
	.align 8
.LC32:
	.string	"EC_POINT_dbl(group, S, points[0], ctx)"
	.align 8
.LC33:
	.string	"EC_POINT_cmp(group, R, S, ctx)"
	.align 8
.LC34:
	.string	"EC_POINTs_mul(group, P, NULL, 6, points, scalars, ctx)"
.LC35:
	.string	"allowing precomputation"
.LC36:
	.string	"without precomputation"
	.text
	.type	group_order_tests, @function
group_order_tests:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -184(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	call	BN_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$47, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L23
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$48, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L23
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$49, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L23
	call	BN_CTX_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$50, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L23
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$51, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L23
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$52, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L23
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$53, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L23
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$54, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L23
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$55, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L23
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_get_order@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$58, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$59, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-32(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$60, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-56(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_precompute_mult@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$62, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$64, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-32(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$65, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$66, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$67, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-56(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$68, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$69, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L24
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$70, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-56(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$71, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_invert@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$72, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$73, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L24
	movl	$1, -60(%rbp)
	jmp	.L7
.L18:
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$82, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L25
	movq	-56(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$87, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L25
	cmpl	$1, -60(%rbp)
	jne	.L9
	movq	-56(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC23(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$88, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L25
.L9:
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$89, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L25
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$91, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L25
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$92, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L25
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$93, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L25
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$96, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L25
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$97, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L25
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$98, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L25
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$101, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L25
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$102, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L25
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$103, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L25
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$108, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L26
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$110, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L26
	movq	-32(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$111, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L26
	movq	-24(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$112, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L26
	call	BN_value_one@PLT
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-176(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-184(%rbp), %rax
	subq	$8, %rsp
	pushq	-56(%rbp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$2, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_POINTs_mul@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$120, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
	movq	-128(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_dbl@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$121, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC33(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$122, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L27
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-176(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-184(%rbp), %rax
	subq	$8, %rsp
	pushq	-56(%rbp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$6, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_POINTs_mul@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$137, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	movq	-24(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$138, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	addl	$1, -60(%rbp)
.L7:
	cmpl	$2, -60(%rbp)
	jle	.L18
	movl	$1, -64(%rbp)
	jmp	.L4
.L23:
	nop
	jmp	.L4
.L24:
	nop
	jmp	.L4
.L25:
	nop
	jmp	.L4
.L26:
	nop
	jmp	.L4
.L27:
	nop
	jmp	.L4
.L28:
	nop
.L4:
	cmpl	$0, -64(%rbp)
	jne	.L19
	cmpl	$0, -60(%rbp)
	je	.L19
	cmpl	$1, -60(%rbp)
	jne	.L20
	leaq	.LC35(%rip), %rax
	jmp	.L21
.L20:
	leaq	.LC36(%rip), %rax
.L21:
	leaq	.LC1(%rip), %rcx
	movq	%rax, %rdx
	movl	$146, %esi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_info@PLT
.L19:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-64(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	group_order_tests, .-group_order_tests
	.section	.rodata
.LC37:
	.string	"p = BN_new()"
.LC38:
	.string	"a = BN_new()"
.LC39:
	.string	"b = BN_new()"
.LC40:
	.string	"17"
.LC41:
	.string	"BN_hex2bn(&p, \"17\")"
.LC42:
	.string	"1"
.LC43:
	.string	"BN_hex2bn(&a, \"1\")"
.LC44:
	.string	"BN_hex2bn(&b, \"1\")"
	.align 8
.LC45:
	.string	"group = EC_GROUP_new_curve_GFp(p, a, b, ctx)"
	.align 8
.LC46:
	.string	"EC_GROUP_get_curve(group, p, a, b, ctx)"
	.align 8
.LC47:
	.string	"Curve defined by Weierstrass equation"
	.align 8
.LC48:
	.string	"     y^2 = x^3 + a*x + b (mod p)"
.LC49:
	.string	"a"
.LC50:
	.string	"b"
.LC51:
	.string	"p"
	.align 8
.LC52:
	.string	"EC_POINT_set_to_infinity(group, P)"
	.align 8
.LC53:
	.string	"EC_POINT_oct2point(group, Q, buf, 1, ctx)"
	.align 8
.LC54:
	.string	"EC_POINT_add(group, P, P, Q, ctx)"
.LC55:
	.string	"x = BN_new()"
.LC56:
	.string	"y = BN_new()"
.LC57:
	.string	"z = BN_new()"
.LC58:
	.string	"yplusone = BN_new()"
.LC59:
	.string	"D"
.LC60:
	.string	"BN_hex2bn(&x, \"D\")"
	.align 8
.LC61:
	.string	"EC_POINT_set_compressed_coordinates(group, Q, x, 1, ctx)"
	.align 8
.LC62:
	.string	"EC_POINT_is_on_curve(group, Q, ctx)"
	.align 8
.LC63:
	.string	"EC_POINT_get_affine_coordinates(group, Q, x, y, ctx)"
.LC64:
	.string	"Point is not on curve"
.LC65:
	.string	"x"
.LC66:
	.string	"y"
.LC67:
	.string	"A cyclic subgroup:"
.LC68:
	.string	"k--"
.LC69:
	.string	"     point at infinity"
	.align 8
.LC70:
	.string	"EC_POINT_get_affine_coordinates(group, P, x, y, ctx)"
.LC71:
	.string	"EC_POINT_copy(R, P)"
	.align 8
.LC72:
	.string	"EC_POINT_add(group, P, Q, R, ctx)"
.LC73:
	.string	"len"
	.align 8
.LC74:
	.string	"EC_POINT_oct2point(group, P, buf, len, ctx)"
	.align 8
.LC75:
	.string	"EC_POINT_cmp(group, P, Q, ctx)"
	.align 8
.LC76:
	.string	"Generator as octet string, compressed form:"
	.align 8
.LC77:
	.string	"Generator as octet string, uncompressed form:"
	.align 8
.LC78:
	.string	"Generator as octet string, hybrid form:"
	.align 8
.LC79:
	.string	"EC_POINT_invert(group, P, ctx)"
	.align 8
.LC80:
	.string	"EC_POINT_cmp(group, P, R, ctx)"
	.align 8
.LC81:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF"
	.align 8
.LC82:
	.string	"BN_hex2bn(&p, \"FFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF\")"
.LC83:
	.string	"BN_check_prime(p, ctx, NULL)"
	.align 8
.LC84:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFC"
	.align 8
.LC85:
	.string	"BN_hex2bn(&a, \"FFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFC\")"
	.align 8
.LC86:
	.string	"1C97BEFC54BD7A8B65ACF89F81D4D4ADC565FA45"
	.align 8
.LC87:
	.string	"BN_hex2bn(&b, \"1C97BEFC\" \"54BD7A8B65ACF89F81D4D4ADC565FA45\")"
	.align 8
.LC88:
	.string	"EC_GROUP_set_curve(group, p, a, b, ctx)"
	.align 8
.LC89:
	.string	"4A96B5688EF573284664698968C38BB913CBFC82"
	.align 8
.LC90:
	.string	"BN_hex2bn(&x, \"4A96B568\" \"8EF573284664698968C38BB913CBFC82\")"
	.align 8
.LC91:
	.string	"23a628553168947d59dcc912042351377ac5fb32"
	.align 8
.LC92:
	.string	"BN_hex2bn(&y, \"23a62855\" \"3168947d59dcc912042351377ac5fb32\")"
	.align 8
.LC93:
	.string	"BN_add(yplusone, y, BN_value_one())"
	.align 8
.LC94:
	.string	"EC_POINT_set_affine_coordinates(group, P, x, yplusone, ctx)"
	.align 8
.LC95:
	.string	"EC_POINT_set_affine_coordinates(group, P, x, y, ctx)"
	.align 8
.LC96:
	.string	"EC_POINT_is_on_curve(group, P, ctx)"
	.align 8
.LC97:
	.string	"0100000000000000000001F4C8F927AED3CA752257"
	.align 8
.LC98:
	.string	"BN_hex2bn(&z, \"0100000000\" \"000000000001F4C8F927AED3CA752257\")"
	.align 8
.LC99:
	.string	"EC_GROUP_set_generator(group, P, z, BN_value_one())"
	.align 8
.LC100:
	.string	"SEC2 curve secp160r1 -- Generator"
	.align 8
.LC101:
	.string	"BN_hex2bn(&z, \"23a62855\" \"3168947d59dcc912042351377ac5fb32\")"
.LC102:
	.string	"z"
.LC103:
	.string	"160"
.LC104:
	.string	"EC_GROUP_get_degree(group)"
	.align 8
.LC105:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFF"
	.align 8
.LC106:
	.string	"BN_hex2bn(&p, \"FFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFF\")"
	.align 8
.LC107:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFC"
	.align 8
.LC108:
	.string	"BN_hex2bn(&a, \"FFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFC\")"
	.align 8
.LC109:
	.string	"64210519E59C80E70FA7E9AB72243049FEB8DEECC146B9B1"
	.align 8
.LC110:
	.string	"BN_hex2bn(&b, \"64210519E59C80E7\" \"0FA7E9AB72243049FEB8DEECC146B9B1\")"
	.align 8
.LC111:
	.string	"188DA80EB03090F67CBF20EB43A18800F4FF0AFD82FF1012"
	.align 8
.LC112:
	.string	"BN_hex2bn(&x, \"188DA80EB03090F6\" \"7CBF20EB43A18800F4FF0AFD82FF1012\")"
	.align 8
.LC113:
	.string	"EC_POINT_set_compressed_coordinates(group, P, x, 1, ctx)"
	.align 8
.LC114:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFF99DEF836146BC9B1B4D22831"
	.align 8
.LC115:
	.string	"BN_hex2bn(&z, \"FFFFFFFFFFFFFFFF\" \"FFFFFFFF99DEF836146BC9B1B4D22831\")"
.LC116:
	.string	"NIST curve P-192 -- Generator"
	.align 8
.LC117:
	.string	"07192B95FFC8DA78631011ED6B24CDD573F977A11E794811"
	.align 8
.LC118:
	.string	"BN_hex2bn(&z, \"07192B95FFC8DA78\" \"631011ED6B24CDD573F977A11E794811\")"
.LC119:
	.string	"192"
	.align 8
.LC120:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000001"
	.align 8
.LC121:
	.string	"BN_hex2bn(&p, \"FFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFF000000000000000000000001\")"
	.align 8
.LC122:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFE"
	.align 8
.LC123:
	.string	"BN_hex2bn(&a, \"FFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFE\")"
	.align 8
.LC124:
	.string	"B4050A850C04B3ABF54132565044B0B7D7BFD8BA270B39432355FFB4"
	.align 8
.LC125:
	.string	"BN_hex2bn(&b, \"B4050A850C04B3ABF5413256\" \"5044B0B7D7BFD8BA270B39432355FFB4\")"
	.align 8
.LC126:
	.string	"B70E0CBD6BB4BF7F321390B94A03C1D356C21122343280D6115C1D21"
	.align 8
.LC127:
	.string	"BN_hex2bn(&x, \"B70E0CBD6BB4BF7F321390B9\" \"4A03C1D356C21122343280D6115C1D21\")"
	.align 8
.LC128:
	.string	"EC_POINT_set_compressed_coordinates(group, P, x, 0, ctx)"
	.align 8
.LC129:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFF16A2E0B8F03E13DD29455C5C2A3D"
	.align 8
.LC130:
	.string	"BN_hex2bn(&z, \"FFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFF16A2E0B8F03E13DD29455C5C2A3D\")"
.LC131:
	.string	"NIST curve P-224 -- Generator"
	.align 8
.LC132:
	.string	"BD376388B5F723FB4C22DFE6CD4375A05A07476444D5819985007E34"
	.align 8
.LC133:
	.string	"BN_hex2bn(&z, \"BD376388B5F723FB4C22DFE6\" \"CD4375A05A07476444D5819985007E34\")"
.LC134:
	.string	"224"
	.align 8
.LC135:
	.string	"FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"
	.align 8
.LC136:
	.string	"BN_hex2bn(&p, \"FFFFFFFF000000010000000000000000\" \"00000000FFFFFFFFFFFFFFFFFFFFFFFF\")"
	.align 8
.LC137:
	.string	"FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC"
	.align 8
.LC138:
	.string	"BN_hex2bn(&a, \"FFFFFFFF000000010000000000000000\" \"00000000FFFFFFFFFFFFFFFFFFFFFFFC\")"
	.align 8
.LC139:
	.string	"5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B"
	.align 8
.LC140:
	.string	"BN_hex2bn(&b, \"5AC635D8AA3A93E7B3EBBD55769886BC\" \"651D06B0CC53B0F63BCE3C3E27D2604B\")"
	.align 8
.LC141:
	.string	"6B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C296"
	.align 8
.LC142:
	.string	"BN_hex2bn(&x, \"6B17D1F2E12C4247F8BCE6E563A440F2\" \"77037D812DEB33A0F4A13945D898C296\")"
	.align 8
.LC143:
	.string	"FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551"
	.align 8
.LC144:
	.string	"BN_hex2bn(&z, \"FFFFFFFF00000000FFFFFFFFFFFFFFFF\" \"BCE6FAADA7179E84F3B9CAC2FC632551\")"
.LC145:
	.string	"NIST curve P-256 -- Generator"
	.align 8
.LC146:
	.string	"4FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5"
	.align 8
.LC147:
	.string	"BN_hex2bn(&z, \"4FE342E2FE1A7F9B8EE7EB4A7C0F9E16\" \"2BCE33576B315ECECBB6406837BF51F5\")"
.LC148:
	.string	"256"
	.align 8
.LC149:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFF"
	.align 8
.LC150:
	.string	"BN_hex2bn(&p, \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE\" \"FFFFFFFF0000000000000000FFFFFFFF\")"
	.align 8
.LC151:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC"
	.align 8
.LC152:
	.string	"BN_hex2bn(&a, \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE\" \"FFFFFFFF0000000000000000FFFFFFFC\")"
	.align 8
.LC153:
	.string	"B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF"
	.align 8
.LC154:
	.string	"BN_hex2bn(&b, \"B3312FA7E23EE7E4988E056BE3F82D19\" \"181D9C6EFE8141120314088F5013875A\" \"C656398D8A2ED19D2A85C8EDD3EC2AEF\")"
	.align 8
.LC155:
	.string	"AA87CA22BE8B05378EB1C71EF320AD746E1D3B628BA79B9859F741E082542A385502F25DBF55296C3A545E3872760AB7"
	.align 8
.LC156:
	.string	"BN_hex2bn(&x, \"AA87CA22BE8B05378EB1C71EF320AD74\" \"6E1D3B628BA79B9859F741E082542A38\" \"5502F25DBF55296C3A545E3872760AB7\")"
	.align 8
.LC157:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973"
	.align 8
.LC158:
	.string	"BN_hex2bn(&z, \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFFC7634D81F4372DDF\" \"581A0DB248B0A77AECEC196ACCC52973\")"
.LC159:
	.string	"NIST curve P-384 -- Generator"
	.align 8
.LC160:
	.string	"3617DE4A96262C6F5D9E98BF9292DC29F8F41DBD289A147CE9DA3113B5F0B8C00A60B1CE1D7E819D7A431D7C90EA0E5F"
	.align 8
.LC161:
	.string	"BN_hex2bn(&z, \"3617DE4A96262C6F5D9E98BF9292DC29\" \"F8F41DBD289A147CE9DA3113B5F0B8C0\" \"0A60B1CE1D7E819D7A431D7C90EA0E5F\")"
.LC162:
	.string	"384"
	.align 8
.LC163:
	.string	"1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
	.align 8
.LC164:
	.string	"BN_hex2bn(&p, \"1FF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\")"
	.align 8
.LC165:
	.string	"1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC"
	.align 8
.LC166:
	.string	"BN_hex2bn(&a, \"1FF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC\")"
	.align 8
.LC167:
	.string	"051953EB9618E1C9A1F929A21A0B68540EEA2DA725B99B315F3B8B489918EF109E156193951EC7E937B1652C0BD3BB1BF073573DF883D2C34F1EF451FD46B503F00"
	.align 8
.LC168:
	.string	"BN_hex2bn(&b, \"051\" \"953EB9618E1C9A1F929A21A0B68540EE\" \"A2DA725B99B315F3B8B489918EF109E1\" \"56193951EC7E937B1652C0BD3BB1BF07\" \"3573DF883D2C34F1EF451FD46B503F00\")"
	.align 8
.LC169:
	.string	"C6858E06B70404E9CD9E3ECB662395B4429C648139053FB521F828AF606B4D3DBAA14B5E77EFE75928FE1DC127A2FFA8DE3348B3C1856A429BF97E7E31C2E5BD66"
	.align 8
.LC170:
	.string	"BN_hex2bn(&x, \"C6\" \"858E06B70404E9CD9E3ECB662395B442\" \"9C648139053FB521F828AF606B4D3DBA\" \"A14B5E77EFE75928FE1DC127A2FFA8DE\" \"3348B3C1856A429BF97E7E31C2E5BD66\")"
	.align 8
.LC171:
	.string	"1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA51868783BF2F966B7FCC0148F709A5D03BB5C9B8899C47AEBB6FB71E91386409"
	.align 8
.LC172:
	.string	"BN_hex2bn(&z, \"1FF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\" \"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA\" \"51868783BF2F966B7FCC0148F709A5D0\" \"3BB5C9B8899C47AEBB6FB71E91386409\")"
.LC173:
	.string	"NIST curve P-521 -- Generator"
	.align 8
.LC174:
	.string	"11839296A789A3BC0045C8A5FB42C7D1BD998F54449579B446817AFBD17273E662C97EE72995EF42640C550B9013FAD0761353C7086A272C24088BE94769FD16650"
	.align 8
.LC175:
	.string	"BN_hex2bn(&z, \"118\" \"39296A789A3BC0045C8A5FB42C7D1BD9\" \"98F54449579B446817AFBD17273E662C\" \"97EE72995EF42640C550B9013FAD0761\" \"353C7086A272C24088BE94769FD16650\")"
.LC176:
	.string	"521"
.LC177:
	.string	"EC_POINT_copy(Q, P)"
	.align 8
.LC178:
	.string	"EC_POINT_dbl(group, P, P, ctx)"
	.align 8
.LC179:
	.string	"EC_POINT_add(group, R, P, Q, ctx)"
	.align 8
.LC180:
	.string	"EC_POINT_add(group, R, R, Q, ctx)"
	.align 8
.LC181:
	.string	"EC_POINT_is_at_infinity(group, R)"
.LC182:
	.string	"combined multiplication ..."
	.align 8
.LC183:
	.string	"EC_GROUP_get_order(group, z, ctx)"
.LC184:
	.string	"BN_add(y, z, BN_value_one())"
.LC185:
	.string	"BN_rshift1(y, y)"
	.align 8
.LC186:
	.string	"EC_POINTs_mul(group, P, NULL, 2, points, scalars, ctx)"
	.align 8
.LC187:
	.string	"EC_POINTs_mul(group, R, z, 2, points, scalars, ctx)"
	.align 8
.LC188:
	.string	"EC_POINT_cmp(group, R, Q, ctx)"
	.align 8
.LC189:
	.string	"BN_rand(y, BN_num_bits(y), 0, 0)"
.LC190:
	.string	"BN_add(z, z, y)"
	.align 8
.LC191:
	.string	"BN_rand(x, BN_num_bits(y) - 1, 0, 0)"
.LC192:
	.string	"BN_add(z, x, y)"
.LC193:
	.string	"scalar3 = BN_new()"
	.align 8
.LC194:
	.string	"EC_POINTs_mul(group, P, NULL, 4, points, scalars, ctx)"
.LC195:
	.string	" ok\n"
	.text
	.type	prime_field_tests, @function
prime_field_tests:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	$0, -72(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	call	BN_CTX_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$174, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L76
	call	BN_new@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$175, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L76
	call	BN_new@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$176, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L76
	call	BN_new@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$177, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L76
	leaq	.LC40(%rip), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$178, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L76
	leaq	.LC42(%rip), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC43(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$179, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L76
	leaq	.LC42(%rip), %rdx
	leaq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$180, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L76
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, %rdi
	call	EC_GROUP_new_curve_GFp@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC45(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$181, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L76
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_get_curve@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$182, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L76
	leaq	.LC47(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$185, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	.LC48(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	-96(%rbp), %rax
	leaq	.LC49(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-104(%rbp), %rax
	leaq	.LC50(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-88(%rbp), %rax
	leaq	.LC51(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movb	$0, -304(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$192, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L77
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$193, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L77
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$194, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L77
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_set_to_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC52(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$195, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L77
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$196, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L77
	movq	-72(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	EC_POINT_oct2point@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$197, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L77
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$198, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L77
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$199, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L77
	call	BN_new@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$200, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L77
	call	BN_new@PLT
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	leaq	.LC56(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$201, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L77
	call	BN_new@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$202, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L77
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$203, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L77
	leaq	.LC59(%rip), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC60(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$204, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L77
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	EC_POINT_set_compressed_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$205, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L77
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_on_curve@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC62(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$208, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L35
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC63(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$209, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L78
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$211, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-112(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-120(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	jmp	.L32
.L35:
	leaq	.LC67(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$100, -60(%rbp)
.L43:
	movl	-60(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -60(%rbp)
	leaq	.LC18(%rip), %rcx
	leaq	.LC68(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	$0, %r9d
	movl	%eax, %r8d
	movl	$220, %esi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L79
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L38
	leaq	.LC69(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	jmp	.L39
.L38:
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$226, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L80
	movq	-112(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-120(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
.L39:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC71(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$234, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L81
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$235, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L81
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L43
	movq	-72(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC72(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$240, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L82
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$241, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L82
	movq	-72(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r9
	movl	$100, %r8d
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rsi
	leaq	.LC18(%rip), %rcx
	leaq	.LC73(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$247, %esi
	movq	%rax, %rdi
	call	test_size_t_ne@PLT
	testl	%eax, %eax
	je	.L83
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_oct2point@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC74(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$248, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC75(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$249, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L83
	movq	-80(%rbp), %rdx
	leaq	-304(%rbp), %rax
	leaq	.LC76(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_output_memory@PLT
	movq	-72(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r9
	movl	$100, %r8d
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rsi
	leaq	.LC18(%rip), %rcx
	leaq	.LC73(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$256, %esi
	movq	%rax, %rdi
	call	test_size_t_ne@PLT
	testl	%eax, %eax
	je	.L84
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_oct2point@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC74(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$257, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L84
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC75(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$258, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L84
	movq	-80(%rbp), %rdx
	leaq	-304(%rbp), %rax
	leaq	.LC77(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_output_memory@PLT
	movq	-72(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r9
	movl	$100, %r8d
	movq	%rdx, %rcx
	movl	$6, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rsi
	leaq	.LC18(%rip), %rcx
	leaq	.LC73(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$265, %esi
	movq	%rax, %rdi
	call	test_size_t_ne@PLT
	testl	%eax, %eax
	je	.L85
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_oct2point@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC74(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$266, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L85
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC75(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$267, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L85
	movq	-80(%rbp), %rdx
	leaq	-304(%rbp), %rax
	leaq	.LC78(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_output_memory@PLT
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_invert@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC79(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$272, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L86
	movq	-72(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC80(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$273, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L86
	leaq	.LC81(%rip), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC82(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$280, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L86
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	movl	%eax, %esi
	leaq	.LC83(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$1, %r8d
	movl	$282, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L86
	leaq	.LC84(%rip), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC85(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$283, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L86
	leaq	.LC86(%rip), %rdx
	leaq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC87(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$285, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L86
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_set_curve@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC88(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$287, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L86
	leaq	.LC89(%rip), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC90(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$288, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L86
	leaq	.LC91(%rip), %rdx
	leaq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC92(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$290, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L86
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$292, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L86
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC94(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$297, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L86
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC95(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$299, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L86
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_on_curve@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC96(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$300, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L86
	leaq	.LC97(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC98(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$301, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L86
	call	BN_value_one@PLT
	movq	%rax, %rcx
	movq	-128(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC99(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$303, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L86
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$304, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L86
	leaq	.LC100(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$306, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-112(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-120(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	leaq	.LC91(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC101(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$310, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L87
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rsi
	leaq	.LC102(%rip), %rcx
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$312, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L87
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_degree@PLT
	movl	%eax, %esi
	leaq	.LC103(%rip), %rcx
	leaq	.LC104(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$160, %r9d
	movl	%esi, %r8d
	movl	$313, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L87
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	group_order_tests
	testl	%eax, %eax
	je	.L87
	leaq	.LC105(%rip), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC106(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$318, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L87
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	movl	%eax, %esi
	leaq	.LC83(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$1, %r8d
	movl	$320, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L87
	leaq	.LC107(%rip), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC108(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$321, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L87
	leaq	.LC109(%rip), %rdx
	leaq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC110(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$323, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L87
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_set_curve@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC88(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$325, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L87
	leaq	.LC111(%rip), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC112(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$326, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L87
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	EC_POINT_set_compressed_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC113(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$328, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L87
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_on_curve@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC96(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$329, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L87
	leaq	.LC114(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC115(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$330, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L87
	call	BN_value_one@PLT
	movq	%rax, %rcx
	movq	-128(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC99(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$332, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L87
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$333, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L87
	leaq	.LC116(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$336, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-112(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-120(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	leaq	.LC117(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC118(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$340, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L88
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rsi
	leaq	.LC102(%rip), %rcx
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$342, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L88
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$343, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L88
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC94(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$348, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L88
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_degree@PLT
	movl	%eax, %esi
	leaq	.LC119(%rip), %rcx
	leaq	.LC104(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$192, %r9d
	movl	%esi, %r8d
	movl	$350, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L88
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	group_order_tests
	testl	%eax, %eax
	je	.L88
	leaq	.LC120(%rip), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC121(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$355, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L88
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	movl	%eax, %esi
	leaq	.LC83(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$1, %r8d
	movl	$357, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L88
	leaq	.LC122(%rip), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC123(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$358, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L88
	leaq	.LC124(%rip), %rdx
	leaq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC125(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$360, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L88
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_set_curve@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC88(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$362, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L88
	leaq	.LC126(%rip), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC127(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$363, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L88
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_set_compressed_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC128(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$365, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L88
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_on_curve@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC96(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$366, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L88
	leaq	.LC129(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC130(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$367, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L88
	call	BN_value_one@PLT
	movq	%rax, %rcx
	movq	-128(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC99(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$369, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L88
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$370, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L88
	leaq	.LC131(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$373, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-112(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-120(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	leaq	.LC132(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC133(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$377, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rsi
	leaq	.LC102(%rip), %rcx
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$379, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L89
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$380, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC94(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$385, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L89
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_degree@PLT
	movl	%eax, %esi
	leaq	.LC134(%rip), %rcx
	leaq	.LC104(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$224, %r9d
	movl	%esi, %r8d
	movl	$387, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L89
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	group_order_tests
	testl	%eax, %eax
	je	.L89
	leaq	.LC135(%rip), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC136(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$392, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	movl	%eax, %esi
	leaq	.LC83(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$1, %r8d
	movl	$394, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L89
	leaq	.LC137(%rip), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC138(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$395, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	leaq	.LC139(%rip), %rdx
	leaq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC140(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$397, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_set_curve@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC88(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$399, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	leaq	.LC141(%rip), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC142(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$401, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	EC_POINT_set_compressed_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC113(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$403, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_on_curve@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC96(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$404, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L89
	leaq	.LC143(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC144(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$405, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	call	BN_value_one@PLT
	movq	%rax, %rcx
	movq	-128(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC99(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$407, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$408, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	leaq	.LC145(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$411, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-112(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-120(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	leaq	.LC146(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC147(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$415, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L90
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rsi
	leaq	.LC102(%rip), %rcx
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$417, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L90
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$418, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L90
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC94(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$423, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L90
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_degree@PLT
	movl	%eax, %esi
	leaq	.LC148(%rip), %rcx
	leaq	.LC104(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$256, %r9d
	movl	%esi, %r8d
	movl	$425, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L90
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	group_order_tests
	testl	%eax, %eax
	je	.L90
	leaq	.LC149(%rip), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC150(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$430, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L90
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	movl	%eax, %esi
	leaq	.LC83(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$1, %r8d
	movl	$433, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L90
	leaq	.LC151(%rip), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC152(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$434, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L90
	leaq	.LC153(%rip), %rdx
	leaq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC154(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$437, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L90
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_set_curve@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC88(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$440, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L90
	leaq	.LC155(%rip), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC156(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$442, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L90
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	EC_POINT_set_compressed_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC113(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$445, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L90
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_on_curve@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC96(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$446, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L90
	leaq	.LC157(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC158(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$447, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L90
	call	BN_value_one@PLT
	movq	%rax, %rcx
	movq	-128(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC99(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$450, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L90
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$451, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L90
	leaq	.LC159(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$454, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-112(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-120(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	leaq	.LC160(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC161(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$458, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rsi
	leaq	.LC102(%rip), %rcx
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$461, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L91
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$462, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC94(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$467, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L91
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_degree@PLT
	movl	%eax, %esi
	leaq	.LC162(%rip), %rcx
	leaq	.LC104(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$384, %r9d
	movl	%esi, %r8d
	movl	$469, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L91
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	group_order_tests
	testl	%eax, %eax
	je	.L91
	leaq	.LC163(%rip), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC164(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$473, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	movl	%eax, %esi
	leaq	.LC83(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$1, %r8d
	movl	$478, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L91
	leaq	.LC165(%rip), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC166(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$479, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	leaq	.LC167(%rip), %rdx
	leaq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC168(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$484, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_set_curve@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC88(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$489, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	leaq	.LC169(%rip), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC170(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$490, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_set_compressed_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC128(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$495, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_on_curve@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC96(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$496, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L91
	leaq	.LC171(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC172(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$497, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	call	BN_value_one@PLT
	movq	%rax, %rcx
	movq	-128(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC99(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$502, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$503, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	leaq	.LC173(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$506, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-112(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-120(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	leaq	.LC174(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$510, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L92
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rsi
	leaq	.LC102(%rip), %rcx
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$515, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L92
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$516, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L92
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC94(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$521, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L92
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_degree@PLT
	movl	%eax, %esi
	leaq	.LC176(%rip), %rcx
	leaq	.LC104(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$521, %r9d
	movl	%esi, %r8d
	movl	$523, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L92
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	group_order_tests
	testl	%eax, %eax
	je	.L92
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC95(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$529, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L92
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC177(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$530, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L92
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$531, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L92
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_dbl@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC178(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$532, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L92
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_on_curve@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC96(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$533, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L92
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_invert@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$534, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L92
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC179(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$535, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L92
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC180(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$536, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L92
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC181(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$537, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L92
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$538, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L92
	leaq	.LC182(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_get_order@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC183(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$548, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L93
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC184(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$549, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L93
	movq	-120(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$550, %esi
	call	test_BN_even@PLT
	testl	%eax, %eax
	je	.L93
	movq	-120(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_rshift1@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC185(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$551, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L93
	movq	-120(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-192(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-72(%rbp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$2, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_POINTs_mul@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC186(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$558, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L94
	movq	-128(%rbp), %rdx
	leaq	-192(%rbp), %rdi
	leaq	-160(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-72(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$2, %ecx
	movq	%rax, %rdi
	call	EC_POINTs_mul@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC187(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$559, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L94
	movq	-72(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC80(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$560, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L94
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC188(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$561, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L94
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %esi
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC189(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$562, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L94
	movq	-120(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC190(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$563, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L94
	movq	-128(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-120(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-192(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-72(%rbp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$2, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_POINTs_mul@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC186(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$569, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L95
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$570, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L95
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	leal	-1(%rax), %esi
	movq	-112(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC191(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$571, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L95
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC192(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$572, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L95
	movq	-128(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-112(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -176(%rbp)
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC193(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$579, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L96
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)
	leaq	-192(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-72(%rbp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$4, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_POINTs_mul@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC194(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$584, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L97
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$585, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L97
	leaq	.LC195(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	$1, -56(%rbp)
	jmp	.L32
.L76:
	nop
	jmp	.L32
.L77:
	nop
	jmp	.L32
.L78:
	nop
	jmp	.L32
.L79:
	nop
	jmp	.L32
.L80:
	nop
	jmp	.L32
.L81:
	nop
	jmp	.L32
.L82:
	nop
	jmp	.L32
.L83:
	nop
	jmp	.L32
.L84:
	nop
	jmp	.L32
.L85:
	nop
	jmp	.L32
.L86:
	nop
	jmp	.L32
.L87:
	nop
	jmp	.L32
.L88:
	nop
	jmp	.L32
.L89:
	nop
	jmp	.L32
.L90:
	nop
	jmp	.L32
.L91:
	nop
	jmp	.L32
.L92:
	nop
	jmp	.L32
.L93:
	nop
	jmp	.L32
.L94:
	nop
	jmp	.L32
.L95:
	nop
	jmp	.L32
.L96:
	nop
	jmp	.L32
.L97:
	nop
.L32:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	prime_field_tests, .-prime_field_tests
	.section	.rodata
.LC196:
	.string	"NIST curve K-163"
	.align 8
.LC197:
	.string	"0800000000000000000000000000000000000000C9"
	.align 8
.LC198:
	.string	"02FE13C0537BBC11ACAA07D793DE4E6D5E5C94EEE8"
	.align 8
.LC199:
	.string	"0289070FB05D38FF58321F2E800536D538CCDAA3D9"
	.align 8
.LC200:
	.string	"04000000000000000000020108A2E0CC0D99F8A5EF"
.LC201:
	.string	"2"
.LC202:
	.string	"NIST curve B-163"
	.align 8
.LC203:
	.string	"020A601907B8C953CA1481EB10512F78744A3205FD"
	.align 8
.LC204:
	.string	"03F0EBA16286A2D57EA0991168D4994637E8343E36"
	.align 8
.LC205:
	.string	"00D51FBC6C71A0094FA2CDD545B11C5C0C797324F1"
	.align 8
.LC206:
	.string	"040000000000000000000292FE77E70C12A4234C33"
.LC207:
	.string	"NIST curve K-233"
	.align 8
.LC208:
	.string	"020000000000000000000000000000000000000004000000000000000001"
	.align 8
.LC209:
	.string	"017232BA853A7E731AF129F22FF4149563A419C26BF50A4C9D6EEFAD6126"
	.align 8
.LC210:
	.string	"01DB537DECE819B7F70F555A67C427A8CD9BF18AEB9B56E0C11056FAE6A3"
	.align 8
.LC211:
	.string	"008000000000000000000000000000069D5BB915BCD46EFB1AD5F173ABDF"
.LC212:
	.string	"4"
.LC213:
	.string	"NIST curve B-233"
	.align 8
.LC214:
	.string	"000000000000000000000000000000000000000000000000000000000001"
	.align 8
.LC215:
	.string	"0066647EDE6C332C7F8C0923BB58213B333B20E9CE4281FE115F7D8F90AD"
	.align 8
.LC216:
	.string	"00FAC9DFCBAC8313BB2139F1BB755FEF65BC391F8B36F8F8EB7371FD558B"
	.align 8
.LC217:
	.string	"01006A08A41903350678E58528BEBF8A0BEFF867A7CA36716F7E01F81052"
	.align 8
.LC218:
	.string	"01000000000000000000000000000013E974E72F8A6922031D2603CFE0D7"
.LC219:
	.string	"NIST curve K-283"
	.align 8
.LC220:
	.string	"0800000000000000000000000000000000000000000000000000000000000000000010A1"
	.align 8
.LC221:
	.string	"0503213F78CA44883F1A3B8162F188E553CD265F23C1567A16876913B0C2AC2458492836"
	.align 8
.LC222:
	.string	"01CCDA380F1C9E318D90F95D07E5426FE87E45C0E8184698E45962364E34116177DD2259"
	.align 8
.LC223:
	.string	"01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9AE2ED07577265DFF7F94451E061E163C61"
.LC224:
	.string	"NIST curve B-283"
	.align 8
.LC225:
	.string	"000000000000000000000000000000000000000000000000000000000000000000000001"
	.align 8
.LC226:
	.string	"027B680AC8B8596DA5A4AF8A19A0303FCA97FD7645309FA2A581485AF6263E313B79A2F5"
	.align 8
.LC227:
	.string	"05F939258DB7DD90E1934F8C70B0DFEC2EED25B8557EAC9C80E2E198F8CDBECD86B12053"
	.align 8
.LC228:
	.string	"03676854FE24141CB98FE6D4B20D02B4516FF702350EDDB0826779C813F0DF45BE8112F4"
	.align 8
.LC229:
	.string	"03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF90399660FC938A90165B042A7CEFADB307"
.LC230:
	.string	"NIST curve K-409"
	.align 8
.LC231:
	.string	"02000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000000001"
	.align 8
.LC232:
	.string	"0060F05F658F49C1AD3AB1890F7184210EFD0987E307C84C27ACCFB8F9F67CC2C460189EB5AAAA62EE222EB1B35540CFE9023746"
	.align 8
.LC233:
	.string	"01E369050B7C4E42ACBA1DACBF04299C3460782F918EA427E6325165E9EA10E3DA5F6C42E9C55215AA9CA27A5863EC48D8E0286B"
	.align 8
.LC234:
	.string	"007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F83B2D4EA20400EC4557D5ED3E3E7CA5B4B5C83B8E01E5FCF"
.LC235:
	.string	"NIST curve B-409"
	.align 8
.LC236:
	.string	"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001"
	.align 8
.LC237:
	.string	"0021A5C2C8EE9FEB5C4B9A753B7B476B7FD6422EF1F3DD674761FA99D6AC27C8A9A197B272822F6CD57A55AA4F50AE317B13545F"
	.align 8
.LC238:
	.string	"015D4860D088DDB3496B0C6064756260441CDE4AF1771D4DB01FFE5B34E59703DC255A868A1180515603AEAB60794E54BB7996A7"
	.align 8
.LC239:
	.string	"0061B1CFAB6BE5F32BBFA78324ED106A7636B9C5A7BD198D0158AA4F5488D08F38514F1FDF4B4F40D2181B3681C364BA0273C706"
	.align 8
.LC240:
	.string	"010000000000000000000000000000000000000000000000000001E2AAD6A612F33307BE5FA47C3C9E052F838164CD37D9A21173"
.LC241:
	.string	"NIST curve K-571"
	.align 8
.LC242:
	.string	"80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000425"
	.align 8
.LC243:
	.string	"026EB7A859923FBC82189631F8103FE4AC9CA2970012D5D46024804801841CA44370958493B205E647DA304DB4CEB08CBBD1BA39494776FB988B47174DCA88C7E2945283A01C8972"
	.align 8
.LC244:
	.string	"0349DC807F4FBF374F4AEADE3BCA95314DD58CEC9F307A54FFC61EFC006D8A2C9D4979C0AC44AEA74FBEBBB9F772AEDCB620B01A7BA7AF1B320430C8591984F601CD4C143EF1C7A3"
	.align 8
.LC245:
	.string	"020000000000000000000000000000000000000000000000000000000000000000000000131850E1F19A63E4B391A8DB917F4138B630D84BE5D639381E91DEB45CFE778F637C1001"
.LC246:
	.string	"NIST curve B-571"
	.align 8
.LC247:
	.string	"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001"
	.align 8
.LC248:
	.string	"02F40E7E2221F295DE297117B7F3D62F5C6A97FFCB8CEFF1CD6BA8CE4A9A18AD84FFABBD8EFA59332BE7AD6756A66E294AFD185A78FF12AA520E4DE739BACA0C7FFEFF7F2955727A"
	.align 8
.LC249:
	.string	"0303001D34B856296C16C0D40D3CD7750A93D1D2955FA80AA5F40FC8DB7B2ABDBDE53950F4C0D293CDD711A35B67FB1499AE60038614F1394ABFA3B4C850D927E1E7769C8EEC2D19"
	.align 8
.LC250:
	.string	"037BF27342DA639B6DCCFFFEB73D69D78C6C27A6009CBBCA1980F8533921E8A684423E43BAB08A576291AF8F461BB2A8B3531D2F0485C19B16E2F1516E23DD3C1A4827AF1B8AC15B"
	.align 8
.LC251:
	.string	"03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE661CE18FF55987308059B186823851EC7DD9CA1161DE93D5174D66E8382E9BB2FE84E47"
	.section	.data.rel.local,"aw"
	.align 32
	.type	char2_curve_tests, @object
	.size	char2_curve_tests, 800
char2_curve_tests:
	.quad	.LC196
	.quad	.LC197
	.quad	.LC42
	.quad	.LC42
	.quad	.LC198
	.quad	.LC199
	.long	1
	.zero	4
	.quad	.LC200
	.quad	.LC201
	.long	163
	.zero	4
	.quad	.LC202
	.quad	.LC197
	.quad	.LC42
	.quad	.LC203
	.quad	.LC204
	.quad	.LC205
	.long	1
	.zero	4
	.quad	.LC206
	.quad	.LC201
	.long	163
	.zero	4
	.quad	.LC207
	.quad	.LC208
	.quad	.LC18
	.quad	.LC42
	.quad	.LC209
	.quad	.LC210
	.long	0
	.zero	4
	.quad	.LC211
	.quad	.LC212
	.long	233
	.zero	4
	.quad	.LC213
	.quad	.LC208
	.quad	.LC214
	.quad	.LC215
	.quad	.LC216
	.quad	.LC217
	.long	1
	.zero	4
	.quad	.LC218
	.quad	.LC201
	.long	233
	.zero	4
	.quad	.LC219
	.quad	.LC220
	.quad	.LC18
	.quad	.LC42
	.quad	.LC221
	.quad	.LC222
	.long	0
	.zero	4
	.quad	.LC223
	.quad	.LC212
	.long	283
	.zero	4
	.quad	.LC224
	.quad	.LC220
	.quad	.LC225
	.quad	.LC226
	.quad	.LC227
	.quad	.LC228
	.long	1
	.zero	4
	.quad	.LC229
	.quad	.LC201
	.long	283
	.zero	4
	.quad	.LC230
	.quad	.LC231
	.quad	.LC18
	.quad	.LC42
	.quad	.LC232
	.quad	.LC233
	.long	1
	.zero	4
	.quad	.LC234
	.quad	.LC212
	.long	409
	.zero	4
	.quad	.LC235
	.quad	.LC231
	.quad	.LC236
	.quad	.LC237
	.quad	.LC238
	.quad	.LC239
	.long	1
	.zero	4
	.quad	.LC240
	.quad	.LC201
	.long	409
	.zero	4
	.quad	.LC241
	.quad	.LC242
	.quad	.LC18
	.quad	.LC42
	.quad	.LC243
	.quad	.LC244
	.long	0
	.zero	4
	.quad	.LC245
	.quad	.LC212
	.long	571
	.zero	4
	.quad	.LC246
	.quad	.LC242
	.quad	.LC247
	.quad	.LC248
	.quad	.LC249
	.quad	.LC250
	.long	1
	.zero	4
	.quad	.LC251
	.quad	.LC201
	.long	571
	.zero	4
	.section	.rodata
.LC252:
	.string	"BN_hex2bn(&p, test->p)"
.LC253:
	.string	"BN_hex2bn(&a, test->a)"
.LC254:
	.string	"BN_hex2bn(&b, test->b)"
	.align 8
.LC255:
	.string	"group = EC_GROUP_new_curve_GF2m(p, a, b, ctx)"
.LC256:
	.string	"BN_hex2bn(&x, test->x)"
.LC257:
	.string	"BN_hex2bn(&y, test->y)"
.LC258:
	.string	"BN_hex2bn(&z, test->order)"
.LC259:
	.string	"BN_hex2bn(&cof, test->cof)"
	.align 8
.LC260:
	.string	"EC_GROUP_set_generator(group, P, z, cof)"
.LC261:
	.string	"%s -- Generator:"
.LC262:
	.string	"test->degree"
	.align 8
.LC263:
	.string	"EC_POINTs_mul(group, P, NULL, 3, points, scalars, ctx)"
	.text
	.type	char2_curve_test, @function
char2_curve_test:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movl	%edi, -196(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	char2_curve_tests(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	call	BN_CTX_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$793, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	call	BN_new@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$794, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	call	BN_new@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$795, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	call	BN_new@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$796, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	call	BN_new@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$797, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	call	BN_new@PLT
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	leaq	.LC56(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$798, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	call	BN_new@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$799, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$800, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC252(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$801, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L121
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC253(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$802, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L121
	movq	-80(%rbp), %rax
	movq	24(%rax), %rdx
	leaq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC254(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$803, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L121
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, %rdi
	call	EC_GROUP_new_curve_GF2m@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC255(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$804, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L121
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$805, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$806, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$807, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	movq	-80(%rbp), %rax
	movq	32(%rax), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC256(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$808, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L121
	movq	-80(%rbp), %rax
	movq	40(%rax), %rdx
	leaq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC257(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$809, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L121
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$810, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L121
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC94(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$841, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L122
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC95(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$842, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L122
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_on_curve@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC96(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$843, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L122
	movq	-80(%rbp), %rax
	movq	56(%rax), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC258(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$844, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L122
	movq	-80(%rbp), %rax
	movq	64(%rax), %rdx
	leaq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC259(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$845, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L122
	movq	-136(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC260(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$846, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L122
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC261(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$848, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-112(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-120(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-80(%rbp), %rax
	movl	72(%rax), %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_degree@PLT
	movl	%eax, %esi
	leaq	.LC262(%rip), %rcx
	leaq	.LC104(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$853, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L123
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	group_order_tests
	testl	%eax, %eax
	je	.L123
	cmpl	$9, -196(%rbp)
	jne	.L106
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC95(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$859, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L124
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC177(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$860, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L124
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$861, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L124
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_dbl@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC178(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$862, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L124
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_on_curve@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC96(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$863, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L124
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_invert@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$864, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L124
	movq	-72(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC179(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$865, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L124
	movq	-72(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC180(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$866, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L124
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC181(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$867, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L124
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$868, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L124
	leaq	.LC182(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC184(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$877, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L125
	movq	-120(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$878, %esi
	call	test_BN_even@PLT
	testl	%eax, %eax
	je	.L125
	movq	-120(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_rshift1@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC185(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$879, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L125
	movq	-120(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-192(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-72(%rbp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$2, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_POINTs_mul@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC186(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$885, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L126
	movq	-128(%rbp), %rdx
	leaq	-192(%rbp), %rdi
	leaq	-160(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-72(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$2, %ecx
	movq	%rax, %rdi
	call	EC_POINTs_mul@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC187(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$886, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L126
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC80(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$887, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L126
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC188(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$888, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L126
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %esi
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC189(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$891, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L127
	movq	-120(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC190(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$892, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L127
	movq	-128(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-120(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-192(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-72(%rbp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$2, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_POINTs_mul@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC186(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$898, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L128
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$899, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L128
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	leal	-1(%rax), %esi
	movq	-112(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC191(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$902, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L129
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC192(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$903, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L129
	movq	-128(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-112(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-192(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-72(%rbp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$3, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_POINTs_mul@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC263(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$910, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L130
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$911, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L130
.L106:
	movl	$1, -20(%rbp)
	jmp	.L101
.L121:
	nop
	jmp	.L101
.L122:
	nop
	jmp	.L101
.L123:
	nop
	jmp	.L101
.L124:
	nop
	jmp	.L101
.L125:
	nop
	jmp	.L101
.L126:
	nop
	jmp	.L101
.L127:
	nop
	jmp	.L101
.L128:
	nop
	jmp	.L101
.L129:
	nop
	jmp	.L101
.L130:
	nop
.L101:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	char2_curve_test, .-char2_curve_test
	.section	.rodata
.LC264:
	.string	"13"
.LC265:
	.string	"BN_hex2bn(&p, \"13\")"
.LC266:
	.string	"3"
.LC267:
	.string	"BN_hex2bn(&a, \"3\")"
	.align 8
.LC268:
	.string	"     y^2 + x*y = x^3 + a*x^2 + b (mod p)"
.LC269:
	.string	"cof = BN_new()"
.LC270:
	.string	"6"
.LC271:
	.string	"BN_hex2bn(&x, \"6\")"
.LC272:
	.string	"8"
.LC273:
	.string	"BN_hex2bn(&y, \"8\")"
	.align 8
.LC274:
	.string	"EC_POINT_set_affine_coordinates(group, Q, x, y, ctx)"
.LC275:
	.string	"\n"
	.text
	.type	char2_field_tests, @function
char2_field_tests:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	$0, -72(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -64(%rbp)
	call	BN_CTX_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$945, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L156
	call	BN_new@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$946, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L156
	call	BN_new@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$947, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L156
	call	BN_new@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$948, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L156
	leaq	.LC264(%rip), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC265(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$949, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	leaq	.LC266(%rip), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC267(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$950, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	leaq	.LC42(%rip), %rdx
	leaq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$951, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, %rdi
	call	EC_GROUP_new_curve_GF2m@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC255(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$954, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L157
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_get_curve@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$955, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L157
	leaq	.LC47(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$958, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	.LC268(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	-96(%rbp), %rax
	leaq	.LC49(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-104(%rbp), %rax
	leaq	.LC50(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-88(%rbp), %rax
	leaq	.LC51(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$964, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L158
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$965, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L158
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$966, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L158
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_set_to_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC52(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$967, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L158
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$968, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L158
	movb	$0, -224(%rbp)
	movq	-72(%rbp), %rcx
	leaq	-224(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	EC_POINT_oct2point@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$972, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L159
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$973, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L159
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$974, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L159
	call	BN_new@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$975, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L159
	call	BN_new@PLT
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	leaq	.LC56(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$976, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L159
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$977, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L159
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC269(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$978, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L159
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$979, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L159
	leaq	.LC270(%rip), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC271(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$980, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L159
	leaq	.LC272(%rip), %rdx
	leaq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC273(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$985, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L159
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC274(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$986, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L159
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_on_curve@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC62(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$990, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L141
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$996, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-112(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-120(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	jmp	.L134
.L141:
	leaq	.LC67(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$100, -60(%rbp)
.L148:
	movl	-60(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -60(%rbp)
	leaq	.LC18(%rip), %rcx
	leaq	.LC68(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	$0, %r9d
	movl	%eax, %r8d
	movl	$1005, %esi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L160
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L143
	leaq	.LC69(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	jmp	.L144
.L143:
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1011, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L161
	movq	-112(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-120(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
.L144:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC71(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1019, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L162
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1020, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L162
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L148
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC72(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1025, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L163
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1026, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L163
	movq	-72(%rbp), %rcx
	leaq	-224(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r9
	movl	$100, %r8d
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rsi
	leaq	.LC18(%rip), %rcx
	leaq	.LC73(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$1043, %esi
	movq	%rax, %rdi
	call	test_size_t_ne@PLT
	testl	%eax, %eax
	je	.L164
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rcx
	leaq	-224(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_oct2point@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC74(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1044, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L164
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC75(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$1045, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L164
	movq	-80(%rbp), %rdx
	leaq	-224(%rbp), %rax
	leaq	.LC77(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_output_memory@PLT
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_invert@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC79(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1063, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L165
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC80(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$1064, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L165
	leaq	.LC275(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$1, -64(%rbp)
	jmp	.L134
.L156:
	nop
	jmp	.L134
.L157:
	nop
	jmp	.L134
.L158:
	nop
	jmp	.L134
.L159:
	nop
	jmp	.L134
.L160:
	nop
	jmp	.L134
.L161:
	nop
	jmp	.L134
.L162:
	nop
	jmp	.L134
.L163:
	nop
	jmp	.L134
.L164:
	nop
	jmp	.L134
.L165:
	nop
.L134:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-120(%rbp), %rax
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
	movl	-64(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	char2_field_tests, .-char2_field_tests
	.section	.rodata
.LC276:
	.string	"BN_dec2bn(&x, \"0\")"
.LC277:
	.string	"BN_dec2bn(&y, \"1\")"
	.align 8
.LC278:
	.string	"group = EC_GROUP_new_by_curve_name(NID_sect571k1)"
.LC279:
	.string	"point = EC_POINT_new(group)"
	.align 8
.LC280:
	.string	"EC_POINT_set_affine_coordinates(group, point, x, y, NULL)"
	.align 8
.LC281:
	.string	"(len = EC_POINT_point2oct(group, point, POINT_CONVERSION_HYBRID, NULL, 0, NULL))"
.LC282:
	.string	"buf = OPENSSL_malloc(len)"
	.align 8
.LC283:
	.string	"EC_POINT_point2oct(group, point, POINT_CONVERSION_HYBRID, buf, len, NULL)"
	.align 8
.LC284:
	.string	"EC_POINT_oct2point(group, point, buf, len, NULL)"
	.text
	.type	hybrid_point_encoding_test, @function
hybrid_point_encoding_test:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	leaq	.LC18(%rip), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_dec2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC276(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1096, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L172
	leaq	.LC42(%rip), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_dec2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC277(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1097, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L172
	movl	$733, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC278(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1098, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L172
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC279(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1099, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L172
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC280(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1100, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L172
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$6, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rsi
	leaq	.LC281(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rsi, %r9
	movl	$0, %r8d
	movl	$1101, %esi
	movq	%rax, %rdi
	call	test_size_t_ne@PLT
	testl	%eax, %eax
	je	.L172
	leaq	.LC1(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1107, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC282(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1107, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L172
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$6, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movq	%rax, %rsi
	movq	-40(%rbp), %rdi
	leaq	.LC283(%rip), %rcx
	leaq	.LC73(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$1108, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L172
	movl	$1, -28(%rbp)
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EC_POINT_oct2point@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC284(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1119, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L170
	movl	$0, -28(%rbp)
.L170:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	xorl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EC_POINT_oct2point@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC284(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1124, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L173
	movl	$0, -28(%rbp)
	jmp	.L169
.L172:
	nop
	jmp	.L169
.L173:
	nop
.L169:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1132, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	hybrid_point_encoding_test, .-hybrid_point_encoding_test
	.section	.rodata
	.align 8
.LC285:
	.string	"group = EC_GROUP_new_by_curve_name(nid)"
	.align 8
.LC286:
	.string	"EC_GROUP_new_curve_name() failed with curve %s\n"
.LC287:
	.string	"EC_GROUP_check(group, NULL)"
	.align 8
.LC288:
	.string	"EC_GROUP_check() failed with curve %s\n"
	.text
	.type	internal_curve_test, @function
internal_curve_test:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	$0, -8(%rbp)
	movq	curves(%rip), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC285(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1142, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L175
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	leaq	.LC286(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1143, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L176
.L175:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_check@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC287(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1147, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L177
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	leaq	.LC288(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1148, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movl	$0, %eax
	jmp	.L176
.L177:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movl	$1, %eax
.L176:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	internal_curve_test, .-internal_curve_test
	.section	.rodata
.LC289:
	.string	"Curve %s failed\n"
	.text
	.type	internal_curve_test_method, @function
internal_curve_test_method:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	curves(%rip), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC285(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1161, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L179
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	leaq	.LC289(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1162, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L180
.L179:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	group_order_tests
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movl	-20(%rbp), %eax
.L180:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	internal_curve_test_method, .-internal_curve_test_method
	.section	.rodata
	.align 8
.LC290:
	.string	"01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
	.text
	.type	group_field_test, @function
group_field_test:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$1, -4(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	leaq	.LC290(%rip), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	leaq	.LC197(%rip), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	movl	$716, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_field@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L182
	movl	$0, -4(%rbp)
.L182:
	movl	$723, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_field@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L183
	movl	$0, -4(%rbp)
.L183:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
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
.LFE481:
	.size	group_field_test, .-group_field_test
	.section	.rodata
	.align 8
.LC291:
	.string	"E84FB0B8E7000CB657D7973CF6B42ED78B301674276DF744AF130B3E"
	.align 8
.LC292:
	.string	"4376675C6FC5612C21A0FF2D2A89D2987DF7A2BC52183B5982298555"
	.align 8
.LC293:
	.string	"3F0C488E987C80BE0FEE521F8D90BE6034EC69AE11CA72AA777481E8"
	.align 8
.LC294:
	.string	"ffffffff00000001000000000000000000000000ffffffffffffffffffffffff"
	.align 8
.LC295:
	.string	"ffffffff00000001000000000000000000000000fffffffffffffffffffffffc"
	.align 8
.LC296:
	.string	"5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b"
	.align 8
.LC297:
	.string	"b7e08afdfe94bad3f1dc8c734798ba1c62b3a0ad1e9ea2a38201cd0889bc7a19"
	.align 8
.LC298:
	.string	"3603f747959dbf7a4bb226e41928729063adc7ae43529e61b563bbc606cc5e09"
	.align 8
.LC299:
	.string	"6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"
	.align 8
.LC300:
	.string	"4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5"
	.align 8
.LC301:
	.string	"ffffffff00000000ffffffffffffffffbce6faada7179e84f3b9cac2fc632551"
	.align 8
.LC302:
	.string	"c477f9f65c22cce20657faa5b2d1d8122336f851a508a1ed04e479c34985bf96"
	.align 8
.LC303:
	.string	"1ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
	.align 8
.LC304:
	.string	"1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc"
	.align 8
.LC305:
	.string	"051953eb9618e1c9a1f929a21a0b68540eea2da725b99b315f3b8b489918ef109e156193951ec7e937b1652c0bd3bb1bf073573df883d2c34f1ef451fd46b503f00"
	.align 8
.LC306:
	.string	"0098e91eef9a68452822309c52fab453f5f117c1da8ed796b255e9ab8f6410cca16e59df403a6bdc6ca467a37056b1e54b3005d8ac030decfeb68df18b171885d5c4"
	.align 8
.LC307:
	.string	"0164350c321aecfc1cca1ba4364c9b15656150b4b78d6a48d7d28e7f31985ef17be8554376b72900712c4b83ad668327231526e313f5f092999a4632fd50d946bc2e"
	.align 8
.LC308:
	.string	"c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66"
	.align 8
.LC309:
	.string	"11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650"
	.align 8
.LC310:
	.string	"1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffa51868783bf2f966b7fcc0148f709a5d03bb5c9b8899c47aebb6fb71e91386409"
	.align 8
.LC311:
	.string	"0100085f47b8e1b8b11b7eb33028c0b2888e304bfc98501955b45bba1478dc184eeedf09b86a5f7c21994406072787205e69a63709fe35aa93ba333514b24f961722"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	nistp_tests_params, @object
	.size	nistp_tests_params, 240
nistp_tests_params:
	.long	713
	.long	224
	.quad	.LC120
	.quad	.LC122
	.quad	.LC124
	.quad	.LC291
	.quad	.LC292
	.quad	.LC126
	.quad	.LC132
	.quad	.LC129
	.quad	.LC293
	.long	415
	.long	256
	.quad	.LC294
	.quad	.LC295
	.quad	.LC296
	.quad	.LC297
	.quad	.LC298
	.quad	.LC299
	.quad	.LC300
	.quad	.LC301
	.quad	.LC302
	.long	716
	.long	521
	.quad	.LC303
	.quad	.LC304
	.quad	.LC305
	.quad	.LC306
	.quad	.LC307
	.quad	.LC308
	.quad	.LC309
	.quad	.LC310
	.quad	.LC311
	.section	.rodata
	.align 8
.LC312:
	.string	"NIST curve P-%d (optimised implementation):"
.LC313:
	.string	"m = BN_new()"
.LC314:
	.string	"n = BN_new()"
	.align 8
.LC315:
	.string	"NISTP = EC_GROUP_new_by_curve_name(test->nid)"
	.align 8
.LC316:
	.string	"EC_GROUP_set_curve(NISTP, p, a, b, ctx)"
.LC317:
	.string	"G = EC_POINT_new(NISTP)"
.LC318:
	.string	"P = EC_POINT_new(NISTP)"
.LC319:
	.string	"Q = EC_POINT_new(NISTP)"
.LC320:
	.string	"Q_CHECK = EC_POINT_new(NISTP)"
.LC321:
	.string	"BN_hex2bn(&x, test->Qx)"
.LC322:
	.string	"BN_hex2bn(&y, test->Qy)"
	.align 8
.LC323:
	.string	"EC_POINT_set_affine_coordinates(NISTP, Q_CHECK, x, yplusone, ctx)"
	.align 8
.LC324:
	.string	"EC_POINT_set_affine_coordinates(NISTP, Q_CHECK, x, y, ctx)"
.LC325:
	.string	"BN_hex2bn(&x, test->Gx)"
.LC326:
	.string	"BN_hex2bn(&y, test->Gy)"
	.align 8
.LC327:
	.string	"EC_POINT_set_affine_coordinates(NISTP, G, x, y, ctx)"
	.align 8
.LC328:
	.string	"BN_hex2bn(&order, test->order)"
	.align 8
.LC329:
	.string	"EC_GROUP_set_generator(NISTP, G, order, BN_value_one())"
.LC330:
	.string	"EC_GROUP_get_degree(NISTP)"
.LC331:
	.string	"NIST test vectors ... "
.LC332:
	.string	"BN_hex2bn(&n, test->d)"
	.align 8
.LC333:
	.string	"EC_POINT_cmp(NISTP, Q, Q_CHECK, ctx)"
	.align 8
.LC334:
	.string	"EC_POINT_dbl(NISTP, P, G, ctx)"
	.align 8
.LC335:
	.string	"EC_GROUP_set_generator(NISTP, P, order, BN_value_one())"
.LC336:
	.string	"BN_rshift(m, n, 1)"
	.align 8
.LC337:
	.string	"EC_GROUP_have_precompute_mult(NISTP)"
	.align 8
.LC338:
	.string	"EC_GROUP_precompute_mult(NISTP, ctx)"
.LC339:
	.string	"BN_set_word(m, 32)"
.LC340:
	.string	"BN_set_word(n, 31)"
	.align 8
.LC341:
	.string	"EC_POINT_invert(NISTP, P, ctx)"
	.align 8
.LC342:
	.string	"EC_POINT_mul(NISTP, Q, m, P, n, ctx)"
	.align 8
.LC343:
	.string	"EC_POINT_cmp(NISTP, Q, G, ctx)"
	.text
	.type	nistp_single_test, @function
nistp_single_test:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movl	%edi, -164(%rbp)
	movl	-164(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	nistp_tests_params(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movq	-88(%rbp), %rax
	movl	4(%rax), %eax
	leaq	.LC312(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	call	BN_CTX_new@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1324, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L204
	call	BN_new@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1325, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L204
	call	BN_new@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1326, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L204
	call	BN_new@PLT
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1327, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L204
	call	BN_new@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1328, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L204
	call	BN_new@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	leaq	.LC56(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1329, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L204
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC313(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1330, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L204
	call	BN_new@PLT
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	leaq	.LC314(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1331, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L204
	call	BN_new@PLT
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1332, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L204
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1333, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L204
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC315(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1335, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L204
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC252(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1336, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L204
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	movl	%eax, %esi
	leaq	.LC83(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$1, %r8d
	movl	$1337, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L204
	movq	-88(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC253(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1338, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L204
	movq	-88(%rbp), %rax
	movq	24(%rax), %rdx
	leaq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC254(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1339, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L204
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-96(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_set_curve@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC316(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1340, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L204
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC317(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1341, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L204
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC318(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1342, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L204
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC319(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1343, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L204
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC320(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1344, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L204
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC321(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1345, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L204
	movq	-88(%rbp), %rax
	movq	40(%rax), %rdx
	leaq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC322(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1346, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L204
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-136(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1347, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L204
	movq	-128(%rbp), %rdx
	movq	-96(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-72(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC323(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1352, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L204
	movq	-136(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	-96(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC324(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1354, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L204
	movq	-88(%rbp), %rax
	movq	48(%rax), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC325(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1356, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L204
	movq	-88(%rbp), %rax
	movq	56(%rax), %rdx
	leaq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC326(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1357, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L204
	movq	-136(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	-96(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC327(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1358, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L204
	movq	-88(%rbp), %rax
	movq	64(%rax), %rdx
	leaq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC328(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1359, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L204
	call	BN_value_one@PLT
	movq	%rax, %rcx
	movq	-152(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC329(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1360, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L204
	movq	-88(%rbp), %rax
	movl	4(%rax), %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_degree@PLT
	movl	%eax, %esi
	leaq	.LC262(%rip), %rcx
	leaq	.LC330(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$1361, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L204
	leaq	.LC331(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	-88(%rbp), %rax
	movq	72(%rax), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC332(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1365, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L205
	movq	-144(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	movq	-96(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC333(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$1369, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L206
	movq	-144(%rbp), %rcx
	movq	-96(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	movq	-96(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC333(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$1373, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L207
	movq	-96(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_dbl@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC334(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1376, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L207
	call	BN_value_one@PLT
	movq	%rax, %rcx
	movq	-152(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC335(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1377, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L207
	movq	-144(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_rshift@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC336(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1379, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L207
	movq	-96(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	movq	-96(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC333(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$1385, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L208
	movq	-96(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	movq	-96(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC333(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$1389, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L209
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_have_precompute_mult@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC337(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1392, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L209
	movq	-96(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_precompute_mult@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC338(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1394, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L209
	movq	-96(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	movq	-96(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC333(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$1401, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L210
	movq	-96(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	movq	-96(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC333(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$1405, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L211
	call	BN_value_one@PLT
	movq	%rax, %rcx
	movq	-152(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC329(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1408, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L211
	movq	-144(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	movq	-96(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC333(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$1412, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L212
	movq	-144(%rbp), %rcx
	movq	-96(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	movq	-96(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC333(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$1416, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L213
	movq	-24(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC339(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1420, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L214
	movq	-144(%rbp), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC340(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1421, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L214
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1422, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L214
	movq	-96(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_invert@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC341(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1423, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L214
	movq	-144(%rbp), %rdi
	movq	-96(%rbp), %r8
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC342(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1424, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L214
	movq	-96(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC343(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$1425, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L214
	movl	$1, -76(%rbp)
	jmp	.L188
.L204:
	nop
	jmp	.L188
.L205:
	nop
	jmp	.L188
.L206:
	nop
	jmp	.L188
.L207:
	nop
	jmp	.L188
.L208:
	nop
	jmp	.L188
.L209:
	nop
	jmp	.L188
.L210:
	nop
	jmp	.L188
.L211:
	nop
	jmp	.L188
.L212:
	nop
	jmp	.L188
.L213:
	nop
	jmp	.L188
.L214:
	nop
.L188:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-76(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	nistp_single_test, .-nistp_single_test
	.section	.rodata
	.type	p521_named, @object
	.size	p521_named, 7
p521_named:
	.base64	"BgUrgQQAIw=="
	.align 32
	.type	p521_explicit, @object
	.size	p521_explicit, 455
p521_explicit:
	.base64	"MIIBwwIBATBNBgcqhkjOPQEBAkIB//////////////////////////////////////////////////////////////////////////////////////8wgZ8EQgH//////////////////////////////////////////////////////////////////////////////////////ARCAFGVPrlhjhyaH5KaIaC2hUDuotpyW5mzFfO4tImRjvEJ4VYZOVHsfpN7FlLAvTuxvwc1c9+IPSw08e9FH9RrUD8AAxUA0J6IACkcuFOWzGcXOTKEqqDaZLoEgYUEAMaF"
	.base64	"jga3BATpzZ4+y2YjlbRCnGSBOQU/tSH4KK9ga009uqFLXnfv51ko/h3BJ6L/qN4zSLPBhWpCm/l+fjHC5b1mARg5KWp4mjvABFyKX7QsfRvZmPVESVebRGgXr70XJz5mLJfucple9CZAxVC5AT+tB2E1PHCGonLCQIi+lHaf0WZQAkIB///////////////////////////////////////////6UYaHg78vlmt/zAFI9wml0Du1ybiJnEeuu2+3HpE4ZAkCAQE="
.LC344:
	.string	"bn_ctx = BN_CTX_new()"
.LC345:
	.string	"gtest = EC_GROUP_dup(group)"
.LC346:
	.string	"group_p = BN_new()"
.LC347:
	.string	"group_a = BN_new()"
.LC348:
	.string	"group_b = BN_new()"
.LC349:
	.string	"group_cofactor = BN_new()"
	.align 8
.LC350:
	.string	"group_gen = EC_GROUP_get0_generator(group)"
	.align 8
.LC351:
	.string	"group_order = EC_GROUP_get0_order(group)"
	.align 8
.LC352:
	.string	"EC_GROUP_get_cofactor(group, group_cofactor, NULL)"
	.align 8
.LC353:
	.string	"EC_GROUP_get_curve(group, group_p, group_a, group_b, NULL)"
	.align 8
.LC354:
	.string	"other_gen = EC_POINT_dup(group_gen, group)"
	.align 8
.LC355:
	.string	"EC_POINT_add(group, other_gen, group_gen, group_gen, NULL)"
	.align 8
.LC356:
	.string	"other_order = BN_dup(group_order)"
.LC357:
	.string	"BN_add_word(other_order, 1)"
.LC358:
	.string	"other_a = BN_dup(group_a)"
.LC359:
	.string	"BN_add_word(other_a, 1)"
.LC360:
	.string	"other_b = BN_dup(group_b)"
.LC361:
	.string	"BN_add_word(other_b, 1)"
	.align 8
.LC362:
	.string	"other_cofactor = BN_dup(group_cofactor)"
	.align 8
.LC363:
	.string	"BN_add_word(other_cofactor, 1)"
.LC364:
	.string	"other_p = BN_dup(group_p)"
.LC365:
	.string	"BN_lshift1(other_p, other_p)"
	.align 8
.LC366:
	.string	"BN_copy(other_p, BN_ucmp(BN_get0_nist_prime_192(), other_p) == 0 ? BN_get0_nist_prime_256() : BN_get0_nist_prime_192())"
.LC367:
	.string	"nid"
	.align 8
.LC368:
	.string	"EC_GROUP_check_named_curve(group, 0, NULL)"
	.align 8
.LC369:
	.string	"EC_curve_nid2nist(nid) != NULL ? nid : NID_undef"
	.align 8
.LC370:
	.string	"EC_GROUP_check_named_curve(group, 1, NULL)"
.LC371:
	.string	"invalid_seed_len"
	.align 8
.LC372:
	.string	"EC_GROUP_set_seed(group, invalid_seed, invalid_seed_len)"
	.align 8
.LC373:
	.string	"EC_GROUP_set_seed(group, NULL, 0)"
	.align 8
.LC374:
	.string	"EC_GROUP_check_named_curve(gtest, 0, NULL)"
	.align 8
.LC375:
	.string	"EC_GROUP_set_generator(gtest, other_gen, group_order, group_cofactor)"
	.align 8
.LC376:
	.string	"EC_GROUP_set_generator(gtest, group_gen, other_order, group_cofactor)"
	.align 8
.LC377:
	.string	"EC_GROUP_set_generator(gtest, group_gen, NULL, group_cofactor)"
	.align 8
.LC378:
	.string	"EC_GROUP_set_generator(gtest, group_gen, group_order, other_cofactor)"
	.align 8
.LC379:
	.string	"EC_GROUP_set_generator(gtest, group_gen, group_order, NULL)"
	.align 8
.LC380:
	.string	"EC_GROUP_set_generator(gtest, group_gen, group_order, group_cofactor)"
	.align 8
.LC381:
	.string	"EC_GROUP_set_curve(gtest, group_p, group_a, group_b, NULL)"
	.text
	.type	check_named_curve_test, @function
check_named_curve_test:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movl	%edi, -164(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	curves(%rip), %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -148(%rbp)
	call	BN_CTX_new@PLT
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	leaq	.LC344(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1515, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L248
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC285(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1516, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L248
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_dup@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC345(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1517, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L248
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC346(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1518, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L248
	call	BN_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC347(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1519, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L248
	call	BN_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC348(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1520, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L248
	call	BN_new@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	leaq	.LC349(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1521, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L248
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	leaq	.LC350(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1522, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L248
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	leaq	.LC351(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1523, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L248
	movq	-104(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_get_cofactor@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC352(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1524, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L248
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EC_GROUP_get_curve@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC353(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1525, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L248
	movq	-32(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_dup@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC354(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1526, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L248
	movq	-128(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EC_POINT_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC355(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1527, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L248
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	leaq	.LC356(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1528, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L248
	movq	-120(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC357(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1529, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L248
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC358(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1530, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L248
	movq	-88(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC359(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1531, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L248
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	leaq	.LC360(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1532, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L248
	movq	-96(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC361(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1533, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L248
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC362(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1534, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L248
	movq	-112(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC363(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1535, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L248
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_seed_len@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -152(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_field_type@PLT
	movl	%eax, -156(%rbp)
	cmpl	$407, -156(%rbp)
	jne	.L219
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC364(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1542, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L249
	movq	-80(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_lshift1@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC365(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1543, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L221
	jmp	.L249
.L219:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC364(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1546, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L250
	call	BN_get0_nist_prime_192@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jne	.L223
	call	BN_get0_nist_prime_256@PLT
	jmp	.L224
.L223:
	call	BN_get0_nist_prime_192@PLT
.L224:
	movq	-80(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_copy@PLT
	movq	%rax, %rcx
	leaq	.LC366(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1553, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L251
.L221:
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_check_named_curve@PLT
	movl	%eax, %esi
	movl	-148(%rbp), %edi
	leaq	.LC367(%rip), %rcx
	leaq	.LC368(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1561, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L252
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	call	EC_curve_nid2nist@PLT
	testq	%rax, %rax
	je	.L226
	movl	-148(%rbp), %ebx
	jmp	.L227
.L226:
	movl	$0, %ebx
.L227:
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	EC_GROUP_check_named_curve@PLT
	movl	%eax, %esi
	leaq	.LC369(%rip), %rcx
	leaq	.LC370(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$1563, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L252
	movl	-148(%rbp), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_curve_name@PLT
	call	ERR_set_mark@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_check_named_curve@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC368(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1570, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L253
	call	ERR_pop_to_mark@PLT
	movl	-148(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_curve_name@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_check_named_curve@PLT
	movl	%eax, %esi
	movl	-148(%rbp), %edi
	leaq	.LC367(%rip), %rcx
	leaq	.LC368(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1576, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L254
	movq	invalid_seed_len.3(%rip), %rax
	movl	%eax, %ebx
	movq	invalid_seed_len.3(%rip), %rdx
	leaq	invalid_seed.2(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_set_seed@PLT
	movl	%eax, %esi
	leaq	.LC371(%rip), %rcx
	leaq	.LC372(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$1579, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L255
	cmpl	$0, -152(%rbp)
	je	.L232
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_check_named_curve@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC368(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1588, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L233
	jmp	.L218
.L232:
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_check_named_curve@PLT
	movl	%eax, %esi
	movl	-148(%rbp), %edi
	leaq	.LC367(%rip), %rcx
	leaq	.LC368(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1595, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L256
.L233:
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_seed@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC373(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1599, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L257
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_check_named_curve@PLT
	movl	%eax, %esi
	movl	-148(%rbp), %edi
	leaq	.LC367(%rip), %rcx
	leaq	.LC368(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1600, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L257
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_check_named_curve@PLT
	movl	%eax, %esi
	movl	-148(%rbp), %edi
	leaq	.LC367(%rip), %rcx
	leaq	.LC374(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1604, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L258
	movq	-104(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC375(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1608, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L259
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_check_named_curve@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC374(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1610, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L259
	movq	-104(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC376(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1611, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L259
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_check_named_curve@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC374(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1613, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L259
	movq	-104(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC377(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1615, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L259
	movq	-112(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC378(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1617, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L259
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_check_named_curve@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC374(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1619, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L259
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC379(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1621, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L259
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_check_named_curve@PLT
	movl	%eax, %esi
	movl	-148(%rbp), %edi
	leaq	.LC367(%rip), %rcx
	leaq	.LC374(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1623, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L259
	movq	-104(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC380(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1625, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L259
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_check_named_curve@PLT
	movl	%eax, %esi
	movl	-148(%rbp), %edi
	leaq	.LC367(%rip), %rcx
	leaq	.LC374(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1627, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L259
	call	ERR_set_mark@PLT
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EC_GROUP_set_curve@PLT
	testl	%eax, %eax
	je	.L239
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_check_named_curve@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC374(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1639, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	jne	.L240
	jmp	.L218
.L239:
	call	ERR_pop_to_mark@PLT
	call	ERR_set_mark@PLT
.L240:
	movq	-72(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EC_GROUP_set_curve@PLT
	testl	%eax, %eax
	je	.L241
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_check_named_curve@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC374(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1647, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	jne	.L242
	jmp	.L218
.L241:
	call	ERR_pop_to_mark@PLT
	call	ERR_set_mark@PLT
.L242:
	movq	-96(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EC_GROUP_set_curve@PLT
	testl	%eax, %eax
	je	.L243
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_check_named_curve@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC374(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1655, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	jne	.L244
	jmp	.L218
.L243:
	call	ERR_pop_to_mark@PLT
	call	ERR_set_mark@PLT
.L244:
	call	ERR_pop_to_mark@PLT
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EC_GROUP_set_curve@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC381(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1665, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L260
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_check_named_curve@PLT
	movl	%eax, %esi
	movl	-148(%rbp), %edi
	leaq	.LC367(%rip), %rcx
	leaq	.LC374(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1666, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L260
	movl	$1, -20(%rbp)
	jmp	.L218
.L248:
	nop
	jmp	.L218
.L249:
	nop
	jmp	.L218
.L250:
	nop
	jmp	.L218
.L251:
	nop
	jmp	.L218
.L252:
	nop
	jmp	.L218
.L253:
	nop
	jmp	.L218
.L254:
	nop
	jmp	.L218
.L255:
	nop
	jmp	.L218
.L256:
	nop
	jmp	.L218
.L257:
	nop
	jmp	.L218
.L258:
	nop
	jmp	.L218
.L259:
	nop
	jmp	.L218
.L260:
	nop
.L218:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	check_named_curve_test, .-check_named_curve_test
	.section	.rodata
	.align 8
.LC382:
	.string	"g = EC_GROUP_new_by_curve_name(nid)"
	.align 8
.LC383:
	.string	"p = EC_GROUP_get_ecparameters(g, NULL)"
	.align 8
.LC384:
	.string	"g = EC_GROUP_new_from_ecparameters(p)"
	.align 8
.LC385:
	.string	"rv = EC_GROUP_check_named_curve(g, 0, NULL)"
	.align 8
.LC386:
	.string	"ga = EC_GROUP_new_by_curve_name(rv)"
	.align 8
.LC387:
	.string	"pa = EC_GROUP_get_ecparameters(ga, NULL)"
	.align 8
.LC388:
	.string	"ga = EC_GROUP_new_from_ecparameters(pa)"
.LC389:
	.string	"EC_GROUP_cmp(g, ga, ctx)"
	.text
	.type	check_named_curve_lookup_test, @function
check_named_curve_lookup_test:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -44(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	curves(%rip), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -60(%rbp)
	call	BN_CTX_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1703, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L272
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC382(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1704, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L272
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_get_ecparameters@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC383(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1705, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L272
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_from_ecparameters@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC384(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1710, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L273
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_check_named_curve@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC385(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1713, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L274
	movl	-44(%rbp), %eax
	cmpl	-60(%rbp), %eax
	je	.L267
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC386(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1725, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L275
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_get_ecparameters@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC387(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1726, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L275
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_from_ecparameters@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC388(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1731, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L276
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_cmp@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC389(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1732, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L276
.L267:
	movl	$1, -4(%rbp)
	jmp	.L264
.L272:
	nop
	jmp	.L264
.L273:
	nop
	jmp	.L264
.L274:
	nop
	jmp	.L264
.L275:
	nop
	jmp	.L264
.L276:
	nop
.L264:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ECPARAMETERS_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ECPARAMETERS_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	check_named_curve_lookup_test, .-check_named_curve_lookup_test
	.type	are_ec_nids_compatible, @function
are_ec_nids_compatible:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$745, -20(%rbp)
	je	.L278
	cmpl	$745, -20(%rbp)
	jg	.L279
	cmpl	$744, -20(%rbp)
	je	.L280
	cmpl	$744, -20(%rbp)
	jg	.L279
	cmpl	$743, -20(%rbp)
	je	.L281
	cmpl	$743, -20(%rbp)
	jg	.L279
	cmpl	$740, -20(%rbp)
	je	.L282
	cmpl	$740, -20(%rbp)
	jg	.L279
	cmpl	$739, -20(%rbp)
	je	.L283
	cmpl	$739, -20(%rbp)
	jg	.L279
	cmpl	$738, -20(%rbp)
	je	.L284
	cmpl	$738, -20(%rbp)
	jg	.L279
	cmpl	$737, -20(%rbp)
	je	.L285
	cmpl	$737, -20(%rbp)
	jg	.L279
	cmpl	$736, -20(%rbp)
	je	.L286
	cmpl	$736, -20(%rbp)
	jg	.L279
	cmpl	$727, -20(%rbp)
	je	.L280
	cmpl	$727, -20(%rbp)
	jg	.L279
	cmpl	$726, -20(%rbp)
	je	.L281
	cmpl	$726, -20(%rbp)
	jg	.L279
	cmpl	$721, -20(%rbp)
	je	.L286
	cmpl	$721, -20(%rbp)
	jg	.L279
	cmpl	$717, -20(%rbp)
	je	.L285
	cmpl	$717, -20(%rbp)
	jg	.L279
	cmpl	$713, -20(%rbp)
	je	.L278
	cmpl	$713, -20(%rbp)
	jg	.L279
	cmpl	$710, -20(%rbp)
	je	.L282
	cmpl	$710, -20(%rbp)
	jg	.L279
	cmpl	$684, -20(%rbp)
	je	.L284
	cmpl	$704, -20(%rbp)
	je	.L283
	jmp	.L279
.L285:
	cmpl	$717, -24(%rbp)
	je	.L287
	cmpl	$737, -24(%rbp)
	jne	.L288
.L287:
	movl	$1, %eax
	jmp	.L289
.L288:
	movl	$0, %eax
.L289:
	movl	%eax, -4(%rbp)
	jmp	.L290
.L286:
	cmpl	$721, -24(%rbp)
	je	.L291
	cmpl	$736, -24(%rbp)
	jne	.L292
.L291:
	movl	$1, %eax
	jmp	.L293
.L292:
	movl	$0, %eax
.L293:
	movl	%eax, -4(%rbp)
	jmp	.L290
.L281:
	cmpl	$726, -24(%rbp)
	je	.L294
	cmpl	$743, -24(%rbp)
	jne	.L295
.L294:
	movl	$1, %eax
	jmp	.L296
.L295:
	movl	$0, %eax
.L296:
	movl	%eax, -4(%rbp)
	jmp	.L290
.L280:
	cmpl	$727, -24(%rbp)
	je	.L297
	cmpl	$744, -24(%rbp)
	jne	.L298
.L297:
	movl	$1, %eax
	jmp	.L299
.L298:
	movl	$0, %eax
.L299:
	movl	%eax, -4(%rbp)
	jmp	.L290
.L284:
	cmpl	$684, -24(%rbp)
	je	.L300
	cmpl	$738, -24(%rbp)
	jne	.L301
.L300:
	movl	$1, %eax
	jmp	.L302
.L301:
	movl	$0, %eax
.L302:
	movl	%eax, -4(%rbp)
	jmp	.L290
.L283:
	cmpl	$704, -24(%rbp)
	je	.L303
	cmpl	$739, -24(%rbp)
	jne	.L304
.L303:
	movl	$1, %eax
	jmp	.L305
.L304:
	movl	$0, %eax
.L305:
	movl	%eax, -4(%rbp)
	jmp	.L290
.L282:
	cmpl	$710, -24(%rbp)
	je	.L306
	cmpl	$740, -24(%rbp)
	jne	.L307
.L306:
	movl	$1, %eax
	jmp	.L308
.L307:
	movl	$0, %eax
.L308:
	movl	%eax, -4(%rbp)
	jmp	.L290
.L278:
	cmpl	$713, -24(%rbp)
	je	.L309
	cmpl	$745, -24(%rbp)
	jne	.L310
.L309:
	movl	$1, %eax
	jmp	.L311
.L310:
	movl	$0, %eax
.L311:
	movl	%eax, -4(%rbp)
	jmp	.L290
.L279:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.L290:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	are_ec_nids_compatible, .-are_ec_nids_compatible
	.section	.rodata
.LC390:
	.string	"Curve %s"
	.align 8
.LC391:
	.string	"group_cofactor = BN_CTX_get(bn_ctx)"
	.align 8
.LC392:
	.string	"other_gen_x = BN_CTX_get(bn_ctx)"
	.align 8
.LC393:
	.string	"other_gen_y = BN_CTX_get(bn_ctx)"
	.align 8
.LC394:
	.string	"other_order = BN_CTX_get(bn_ctx)"
	.align 8
.LC395:
	.string	"other_cofactor = BN_CTX_get(bn_ctx)"
	.align 8
.LC396:
	.string	"params = EC_GROUP_get_ecparameters(group, NULL)"
.LC397:
	.string	"tmpg = EC_GROUP_dup(group)"
	.align 8
.LC398:
	.string	"EC_POINT_get_affine_coordinates(group, other_gen, other_gen_x, other_gen_y, bn_ctx)"
	.align 8
.LC399:
	.string	"BN_copy(other_order, group_order)"
	.align 8
.LC400:
	.string	"BN_copy(other_cofactor, group_cofactor)"
	.align 8
.LC401:
	.string	"other_gen = EC_POINT_new(tmpg)"
	.align 8
.LC402:
	.string	"EC_POINT_set_affine_coordinates(tmpg, other_gen, other_gen_x, other_gen_y, bn_ctx)"
	.align 8
.LC403:
	.string	"tgroup = *g_next++ = EC_GROUP_new_from_ecparameters(params)"
.LC404:
	.string	"NID_undef"
	.align 8
.LC405:
	.string	"(tnid = EC_GROUP_get_curve_name(tgroup))"
	.align 8
.LC406:
	.string	"are_ec_nids_compatible(nid, tnid)"
.LC407:
	.string	"nid = %s, tnid = %s"
.LC408:
	.string	"OPENSSL_EC_EXPLICIT_CURVE"
	.align 8
.LC409:
	.string	"EC_GROUP_get_asn1_flag(tgroup)"
	.align 8
.LC410:
	.string	"EC_GROUP_set_seed(tmpg, invalid_seed, invalid_seed_len)"
	.align 8
.LC411:
	.string	"other_params = *p_next++ = EC_GROUP_get_ecparameters(tmpg, NULL)"
	.align 8
.LC412:
	.string	"tgroup = *g_next++ = EC_GROUP_new_from_ecparameters(other_params)"
	.align 8
.LC413:
	.string	"EC_GROUP_set_seed(tmpg, NULL, 0)"
	.align 8
.LC414:
	.string	"EC_GROUP_set_generator(tmpg, other_gen, group_order, group_cofactor)"
	.align 8
.LC415:
	.string	"EC_GROUP_set_generator(tmpg, group_gen, other_order, group_cofactor)"
	.align 8
.LC416:
	.string	"EC_GROUP_set_generator(tmpg, group_gen, NULL, group_cofactor)"
	.align 8
.LC417:
	.string	"EC_GROUP_set_generator(tmpg, group_gen, group_order, other_cofactor)"
	.align 8
.LC418:
	.string	"EC_GROUP_set_generator(tmpg, group_gen, group_order, NULL)"
	.align 8
.LC419:
	.string	"EC_GROUP_set_generator(tmpg, group_gen, group_order, group_cofactor)"
	.text
	.type	check_named_curve_from_ecparameters, @function
check_named_curve_from_ecparameters:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$296, %rsp
	.cfi_offset 3, -24
	movl	%edi, -292(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -152(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -224(%rbp)
	movaps	%xmm0, -208(%rbp)
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm0, -176(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -64(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -288(%rbp)
	movaps	%xmm0, -272(%rbp)
	movaps	%xmm0, -256(%rbp)
	movaps	%xmm0, -240(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	curves(%rip), %rax
	movl	-292(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -156(%rbp)
	movl	-156(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	leaq	.LC390(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	call	BN_CTX_new@PLT
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	leaq	.LC344(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1843, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L314
	movl	-20(%rbp), %eax
	jmp	.L335
.L314:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	leaq	.LC391(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1848, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L336
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC392(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1849, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L336
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	leaq	.LC393(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1850, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L336
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	leaq	.LC394(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1851, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L336
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	leaq	.LC395(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1852, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L336
	movl	-156(%rbp), %eax
	movl	%eax, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC285(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1854, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L336
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_get_ecparameters@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC396(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1855, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L336
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC350(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1856, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L336
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	leaq	.LC351(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1857, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L336
	movq	-96(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_get_cofactor@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC352(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1858, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L336
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_dup@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC397(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1860, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L336
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_dup@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC354(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1861, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L336
	movq	-88(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EC_POINT_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC355(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1862, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L336
	movq	-144(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC398(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1863, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L336
	movq	-128(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC399(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1865, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L336
	movq	-136(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC357(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1866, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L336
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC400(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1867, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L336
	movq	-104(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC363(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1868, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L336
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	$0, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC401(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1874, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L337
	movq	-144(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC402(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1875, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L337
	movq	-64(%rbp), %rbx
	leaq	8(%rbx), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_from_ecparameters@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC403(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1890, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L338
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %esi
	leaq	.LC404(%rip), %rcx
	leaq	.LC405(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1891, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L338
	movl	-24(%rbp), %edx
	movl	-156(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	are_ec_nids_compatible
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC406(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1897, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L323
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rbx
	movl	-156(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	leaq	.LC407(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r8
	movl	$1898, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L318
.L323:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_asn1_flag@PLT
	movl	%eax, %esi
	leaq	.LC408(%rip), %rcx
	leaq	.LC409(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1902, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L339
	movq	invalid_seed_len.1(%rip), %rax
	movl	%eax, %ebx
	movq	invalid_seed_len.1(%rip), %rdx
	leaq	invalid_seed.0(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_set_seed@PLT
	movl	%eax, %esi
	leaq	.LC371(%rip), %rcx
	leaq	.LC410(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$1909, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L325
	movq	-72(%rbp), %rbx
	leaq	8(%rbx), %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_get_ecparameters@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	leaq	.LC411(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1911, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L325
	movq	-64(%rbp), %rbx
	leaq	8(%rbx), %rax
	movq	%rax, -64(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_from_ecparameters@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC412(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1913, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L325
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %esi
	leaq	.LC404(%rip), %rcx
	leaq	.LC405(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1915, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L325
	movl	-24(%rbp), %edx
	movl	-156(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	are_ec_nids_compatible
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC406(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1916, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L325
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_asn1_flag@PLT
	movl	%eax, %esi
	leaq	.LC408(%rip), %rcx
	leaq	.LC409(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1917, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L326
.L325:
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rbx
	movl	-156(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	leaq	.LC407(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r8
	movl	$1919, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L318
.L326:
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_seed@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC413(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1927, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L327
	movq	-72(%rbp), %rbx
	leaq	8(%rbx), %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_get_ecparameters@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	leaq	.LC411(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1928, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L327
	movq	-64(%rbp), %rbx
	leaq	8(%rbx), %rax
	movq	%rax, -64(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_from_ecparameters@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC412(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1930, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L327
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %esi
	leaq	.LC404(%rip), %rcx
	leaq	.LC405(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1932, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L327
	movl	-24(%rbp), %edx
	movl	-156(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	are_ec_nids_compatible
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC406(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1933, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L327
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_asn1_flag@PLT
	movl	%eax, %esi
	leaq	.LC408(%rip), %rcx
	leaq	.LC409(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1934, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L328
.L327:
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rbx
	movl	-156(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	leaq	.LC407(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r8
	movl	$1936, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L318
.L328:
	movq	-96(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC414(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1945, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L340
	movq	-72(%rbp), %rbx
	leaq	8(%rbx), %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_get_ecparameters@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	leaq	.LC411(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1947, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L340
	movq	-64(%rbp), %rbx
	leaq	8(%rbx), %rax
	movq	%rax, -64(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_from_ecparameters@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC412(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1949, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L340
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %esi
	leaq	.LC404(%rip), %rcx
	leaq	.LC405(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1951, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L340
	movq	-96(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC415(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1953, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L340
	movq	-72(%rbp), %rbx
	leaq	8(%rbx), %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_get_ecparameters@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	leaq	.LC411(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1955, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L340
	movq	-64(%rbp), %rbx
	leaq	8(%rbx), %rax
	movq	%rax, -64(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_from_ecparameters@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC412(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1957, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L340
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %esi
	leaq	.LC404(%rip), %rcx
	leaq	.LC405(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1959, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L340
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC416(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1961, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L340
	movq	-104(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC417(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1964, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L340
	movq	-72(%rbp), %rbx
	leaq	8(%rbx), %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_get_ecparameters@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	leaq	.LC411(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1966, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L340
	movq	-64(%rbp), %rbx
	leaq	8(%rbx), %rax
	movq	%rax, -64(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_from_ecparameters@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC412(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1968, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L340
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %esi
	leaq	.LC404(%rip), %rcx
	leaq	.LC405(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1970, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L340
	movl	-24(%rbp), %edx
	movl	-156(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	are_ec_nids_compatible
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC406(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1971, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L340
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_asn1_flag@PLT
	movl	%eax, %esi
	leaq	.LC408(%rip), %rcx
	leaq	.LC409(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1972, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L340
	movq	-128(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC418(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1975, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L340
	movq	-72(%rbp), %rbx
	leaq	8(%rbx), %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_get_ecparameters@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	leaq	.LC411(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1977, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L340
	movq	-64(%rbp), %rbx
	leaq	8(%rbx), %rax
	movq	%rax, -64(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_from_ecparameters@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC412(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1979, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L340
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %esi
	leaq	.LC404(%rip), %rcx
	leaq	.LC405(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1981, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L340
	movl	-24(%rbp), %edx
	movl	-156(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	are_ec_nids_compatible
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC406(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1982, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L340
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_asn1_flag@PLT
	movl	%eax, %esi
	leaq	.LC408(%rip), %rcx
	leaq	.LC409(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1983, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L340
	movq	-96(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC419(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1986, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L340
	movq	-72(%rbp), %rbx
	leaq	8(%rbx), %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_get_ecparameters@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	leaq	.LC411(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1988, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L340
	movq	-64(%rbp), %rbx
	leaq	8(%rbx), %rax
	movq	%rax, -64(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_from_ecparameters@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC412(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1990, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L340
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %esi
	leaq	.LC404(%rip), %rcx
	leaq	.LC405(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1992, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L340
	movl	-24(%rbp), %edx
	movl	-156(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	are_ec_nids_compatible
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC406(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1993, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L340
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_asn1_flag@PLT
	movl	%eax, %esi
	leaq	.LC408(%rip), %rcx
	leaq	.LC409(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1994, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L340
	movl	$1, -20(%rbp)
	jmp	.L318
.L336:
	nop
	jmp	.L318
.L337:
	nop
	jmp	.L318
.L338:
	nop
	jmp	.L318
.L339:
	nop
	jmp	.L318
.L340:
	nop
.L318:
	leaq	-224(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L331
.L332:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	addq	$8, -64(%rbp)
.L331:
	leaq	-224(%rbp), %rax
	addq	$64, %rax
	cmpq	%rax, -64(%rbp)
	jb	.L332
	leaq	-288(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.L333
.L334:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ECPARAMETERS_free@PLT
	addq	$8, -72(%rbp)
.L333:
	leaq	-288(%rbp), %rax
	addq	$64, %rax
	cmpq	%rax, -72(%rbp)
	jb	.L334
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ECPARAMETERS_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-20(%rbp), %eax
.L335:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	check_named_curve_from_ecparameters, .-check_named_curve_from_ecparameters
	.section	.rodata
	.align 8
.LC420:
	.string	"group = EC_GROUP_new_by_curve_name(NID_secp384r1)"
	.align 8
.LC421:
	.string	"ecparameters = EC_GROUP_get_ecparameters(group, NULL)"
	.align 8
.LC422:
	.string	"group2 = EC_GROUP_new_from_ecparameters(ecparameters)"
	.align 8
.LC423:
	.string	"EC_GROUP_cmp(group, group2, NULL)"
	.align 8
.LC424:
	.string	"group = EC_GROUP_new_by_curve_name(NID_secp521r1)"
	.align 8
.LC425:
	.string	"(len = i2d_ECPKParameters(group, &buf)) >= 0"
.LC426:
	.string	"p521_named"
.LC427:
	.string	"buf"
.LC428:
	.string	"p521_explicit"
	.text
	.type	parameter_test, @function
parameter_test:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -28(%rbp)
	movl	$715, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC420(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2021, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L350
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_get_ecparameters@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC421(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2022, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L350
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_from_ecparameters@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC422(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2023, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L350
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_cmp@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC423(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2024, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L350
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	$0, -8(%rbp)
	movl	$716, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC424(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2031, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L351
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ECPKParameters@PLT
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	leaq	.LC425(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2032, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L351
	movl	-32(%rbp), %eax
	movslq	%eax, %r8
	movq	-40(%rbp), %rdi
	leaq	.LC426(%rip), %rcx
	leaq	.LC427(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$7
	leaq	p521_named(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$2033, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L351
	movq	-40(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$2036, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_asn1_flag@PLT
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ECPKParameters@PLT
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	leaq	.LC425(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2044, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L352
	movl	-32(%rbp), %eax
	movslq	%eax, %r8
	movq	-40(%rbp), %rdi
	leaq	.LC428(%rip), %rcx
	leaq	.LC427(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$455
	leaq	p521_explicit(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$2045, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L352
	movl	$1, -28(%rbp)
	jmp	.L344
.L350:
	nop
	jmp	.L344
.L351:
	nop
	jmp	.L344
.L352:
	nop
.L344:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ECPARAMETERS_free@PLT
	movq	-40(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$2053, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	parameter_test, .-parameter_test
	.section	.rodata
	.align 8
.LC429:
	.string	"group_nmd = EC_GROUP_new_by_curve_name(NID_secp384r1)"
	.align 8
.LC430:
	.string	"params_nmd = EC_GROUP_to_params( group_nmd, NULL, NULL, NULL)"
	.align 8
.LC431:
	.string	"group_nmd2 = EC_GROUP_new_from_params( params_nmd, NULL, NULL)"
	.align 8
.LC432:
	.string	"EC_GROUP_cmp(group_nmd, group_nmd2, NULL)"
	.align 8
.LC433:
	.string	"params_nmd2 = EC_GROUP_to_params( group_nmd, NULL, NULL, bn_ctx)"
	.align 8
.LC434:
	.string	"group_nmd3 = EC_GROUP_new_from_params( params_nmd2, NULL, NULL)"
	.align 8
.LC435:
	.string	"EC_GROUP_cmp(group_nmd, group_nmd3, NULL)"
.LC436:
	.string	"bld = OSSL_PARAM_BLD_new()"
	.align 8
.LC437:
	.string	"EC_GROUP_get_curve(group_nmd, p, a, b, bn_ctx)"
.LC438:
	.string	"prime-field"
.LC439:
	.string	"field-type"
	.align 8
.LC440:
	.string	"OSSL_PARAM_BLD_push_utf8_string( bld, OSSL_PKEY_PARAM_EC_FIELD_TYPE, SN_X9_62_prime_field, 0)"
	.align 8
.LC441:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_P, p)"
	.align 8
.LC442:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_A, a)"
	.align 8
.LC443:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_B, b)"
.LC444:
	.string	"seed"
	.align 8
.LC445:
	.string	"OSSL_PARAM_BLD_push_octet_string( bld, OSSL_PKEY_PARAM_EC_SEED, EC_GROUP_get0_seed(group_nmd), EC_GROUP_get_seed_len(group_nmd))"
.LC446:
	.string	"cofactor"
	.align 8
.LC447:
	.string	"OSSL_PARAM_BLD_push_BN( bld, OSSL_PKEY_PARAM_EC_COFACTOR, EC_GROUP_get0_cofactor(group_nmd))"
	.align 8
.LC448:
	.string	"group_gen = EC_GROUP_get0_generator(group_nmd)"
	.align 8
.LC449:
	.string	"bsize = EC_POINT_point2oct( group_nmd, EC_GROUP_get0_generator(group_nmd), POINT_CONVERSION_UNCOMPRESSED, NULL, 0, bn_ctx)"
.LC450:
	.string	"buf2 = OPENSSL_malloc(bsize)"
.LC451:
	.string	"bsize"
	.align 8
.LC452:
	.string	"EC_POINT_point2oct( group_nmd, EC_GROUP_get0_generator(group_nmd), POINT_CONVERSION_UNCOMPRESSED, buf2, bsize, bn_ctx)"
.LC453:
	.string	"generator"
	.align 8
.LC454:
	.string	"OSSL_PARAM_BLD_push_octet_string( bld, OSSL_PKEY_PARAM_EC_GENERATOR, buf2, bsize)"
.LC455:
	.string	"order"
	.align 8
.LC456:
	.string	"OSSL_PARAM_BLD_push_BN( bld, OSSL_PKEY_PARAM_EC_ORDER, EC_GROUP_get0_order(group_nmd))"
	.align 8
.LC457:
	.string	"params_exp = OSSL_PARAM_BLD_to_param(bld)"
	.align 8
.LC458:
	.string	"group_exp = EC_GROUP_new_from_params(params_exp, NULL, NULL)"
	.align 8
.LC459:
	.string	"params_exp2 = EC_GROUP_to_params(group_exp, NULL, NULL, NULL)"
	.align 8
.LC460:
	.string	"group_exp2 = EC_GROUP_new_from_params(params_exp2, NULL, NULL)"
	.align 8
.LC461:
	.string	"EC_GROUP_cmp(group_exp, group_exp2, NULL)"
	.text
	.type	ossl_parameter_test, @function
ossl_parameter_test:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -136(%rbp)
	movl	$0, -108(%rbp)
	call	BN_CTX_new@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	leaq	.LC344(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2075, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L368
	movl	$715, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC429(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2079, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L369
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_to_params@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC430(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2081, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L369
	movq	-64(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_new_from_params@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC431(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2083, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L369
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_cmp@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC432(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2085, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L369
	movq	-128(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_to_params@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC433(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2087, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L369
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_new_from_params@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC434(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2089, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L369
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_cmp@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC435(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2091, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L369
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	leaq	.LC436(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2095, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L370
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -144(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -152(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -160(%rbp)
	movq	-128(%rbp), %rdi
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movq	-144(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_get_curve@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC437(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2103, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L371
	leaq	.LC438(%rip), %rdx
	leaq	.LC439(%rip), %rsi
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC440(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2104, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L371
	movq	-144(%rbp), %rdx
	leaq	.LC51(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC441(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2106, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L371
	movq	-152(%rbp), %rdx
	leaq	.LC49(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC442(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2107, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L371
	movq	-160(%rbp), %rdx
	leaq	.LC50(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC443(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2108, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L371
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_seed@PLT
	testq	%rax, %rax
	je	.L361
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_seed_len@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_seed@PLT
	movq	%rax, %rdx
	leaq	.LC444(%rip), %rsi
	movq	-104(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC445(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2112, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L372
.L361:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_cofactor@PLT
	testq	%rax, %rax
	je	.L362
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_cofactor@PLT
	movq	%rax, %rdx
	leaq	.LC446(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC447(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2118, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L373
.L362:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	leaq	.LC448(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2124, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L374
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, %rsi
	movq	-128(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rsi
	leaq	.LC18(%rip), %rcx
	leaq	.LC449(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$2125, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	je	.L374
	leaq	.LC1(%rip), %rcx
	movq	-168(%rbp), %rax
	movl	$2128, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	leaq	.LC450(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2128, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L374
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, %rsi
	movq	-128(%rbp), %rdi
	movq	-168(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movq	%rax, %rsi
	movq	-168(%rbp), %rdi
	leaq	.LC451(%rip), %rcx
	leaq	.LC452(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2129, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L374
	movq	-168(%rbp), %rcx
	movq	-96(%rbp), %rdx
	leaq	.LC453(%rip), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC454(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2132, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L374
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, %rdx
	leaq	.LC455(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC456(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2134, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L374
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC457(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2138, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L375
	movq	-80(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_new_from_params@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC458(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2139, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L375
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_to_params@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC459(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2141, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L375
	movq	-88(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_new_from_params@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC460(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2143, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L375
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_cmp@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC461(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2145, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L375
	movl	$1, -108(%rbp)
	jmp	.L355
.L368:
	nop
	jmp	.L355
.L369:
	nop
	jmp	.L355
.L370:
	nop
	jmp	.L355
.L371:
	nop
	jmp	.L355
.L372:
	nop
	jmp	.L355
.L373:
	nop
	jmp	.L355
.L374:
	nop
	jmp	.L355
.L375:
	nop
.L355:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-120(%rbp), %rax
	movl	$2156, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-96(%rbp), %rax
	movl	$2162, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movl	-108(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	ossl_parameter_test, .-ossl_parameter_test
	.section	.rodata
	.align 32
	.type	params_cf_pass, @object
	.size	params_cf_pass, 208
params_cf_pass:
	.base64	"MIHNAgEBMCwGByqGSM49AQECIQDlAB/FynGdjvcHS0g3+TMtcb9559yRwv+2e8OTRIjmkTBEBCDlAB/FynGdjvcHS0g3+TMtcb9559yRwv+2e8OTRIjmjgQgGIxZV8S8hVfDZp+J1ZINfkInB2SqJu2JxAkFTccjR9oEQQQba0EL+ft3/VC3PiOj7Jo7CTFr+vbOH//rV5MkcPP0un76hm4ZieNVbVrpwD28+6+t1H6m5foaWAeejw079zjKAhEMONlqn4kriHcuwuOWFKgvTw=="
	.align 32
	.type	params_cf_fail, @object
	.size	params_cf_fail, 208
params_cf_fail:
	.base64	"MIHNAgEBMCwGByqGSM49AQECIQDIlSc36OH9zPluDKYhwX1rnURC6nNOBLasYlDQM8LqEzBEBCDIlSc36OH9zPluDKYhwX1rnURC6nNOBLasYlDQM8LqEAQgv6aoBR0JrHA5u02ykIoVQRQdEYafE6JjGtqVIk0CFQoEQQSvFnH5xMhZHaNv58NXofqfSXwRJwWgf//54OeS3Zwkjse5UnE/vH9qnzVw4SfVNYoT+qgzPtRzHBRYnscKh2WNAhEEWnXAwXIo69mxaaEONKIhAQ=="
	.align 8
.LC462:
	.string	"group = d2i_ECPKParameters(NULL, &b1, sizeof(params_cf_fail))"
.LC463:
	.string	"EC_GROUP_get0_cofactor(group)"
	.align 8
.LC464:
	.string	"group = d2i_ECPKParameters(&group, &b2, sizeof(params_cf_pass))"
	.align 8
.LC465:
	.string	"12bc94785251297abfafddf1565100da"
	.align 8
.LC466:
	.string	"BN_hex2bn(&cf, \"12bc94785251297abfafddf1565100da\")"
.LC467:
	.string	"cf"
	.text
	.type	cofactor_range_test, @function
cofactor_range_test:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	leaq	params_cf_fail(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	params_cf_pass(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	-32(%rbp), %rax
	movl	$208, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ECPKParameters@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC462(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2245, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L381
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_cofactor@PLT
	movq	%rax, %rcx
	leaq	.LC463(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2246, %esi
	movq	%rax, %rdi
	call	test_BN_eq_zero@PLT
	testl	%eax, %eax
	je	.L381
	leaq	-40(%rbp), %rcx
	leaq	-16(%rbp), %rax
	movl	$208, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_ECPKParameters@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC464(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2247, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L381
	leaq	.LC465(%rip), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC466(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2249, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L381
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_cofactor@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC463(%rip), %rcx
	leaq	.LC467(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$2250, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L381
	movl	$1, -4(%rbp)
	jmp	.L379
.L381:
	nop
.L379:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	cofactor_range_test, .-cofactor_range_test
	.section	.rodata
.LC468:
	.string	"Curve %s cardinality test"
	.align 8
.LC469:
	.string	"g1 = EC_GROUP_new_by_curve_name(nid)"
.LC470:
	.string	"g2_cf = BN_CTX_get(ctx)"
	.align 8
.LC471:
	.string	"EC_GROUP_get_curve(g1, g1_p, g1_a, g1_b, ctx)"
	.align 8
.LC472:
	.string	"EC_POINT_get_affine_coordinates(g1, EC_GROUP_get0_generator(g1), g1_x, g1_y, ctx)"
	.align 8
.LC473:
	.string	"BN_copy(g1_order, EC_GROUP_get0_order(g1))"
	.align 8
.LC474:
	.string	"EC_GROUP_get_cofactor(g1, g1_cf, ctx)"
	.align 8
.LC475:
	.string	"g2 = (is_binary) ? EC_GROUP_new_curve_GF2m(g1_p, g1_a, g1_b, ctx) : EC_GROUP_new_curve_GFp(g1_p, g1_a, g1_b, ctx)"
.LC476:
	.string	"g2_gen = EC_POINT_new(g2)"
	.align 8
.LC477:
	.string	"EC_POINT_set_affine_coordinates(g2, g2_gen, g1_x, g1_y, ctx)"
	.align 8
.LC478:
	.string	"EC_GROUP_set_generator(g2, g2_gen, g1_order, NULL)"
	.align 8
.LC479:
	.string	"EC_GROUP_get_cofactor(g2, g2_cf, ctx)"
.LC480:
	.string	"g2_cf"
.LC481:
	.string	"g1_cf"
.LC482:
	.string	"BN_set_word(g2_cf, 0)"
	.align 8
.LC483:
	.string	"EC_GROUP_set_generator(g2, g2_gen, g1_order, g2_cf)"
	.align 8
.LC484:
	.string	"BN_sub(g2_cf, g2_cf, BN_value_one())"
	.align 8
.LC485:
	.string	"EC_GROUP_set_generator(g2, g2_gen, NULL, NULL)"
.LC486:
	.string	"BN_set_word(g1_order, 0)"
.LC487:
	.string	"BN_lshift(g1_order, g1_p, 2)"
	.text
	.type	cardinality_test, @function
cardinality_test:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movl	%edi, -116(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -28(%rbp)
	movq	curves(%rip), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	leaq	.LC468(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2275, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	call	BN_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2277, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L383
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC469(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2278, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L384
.L383:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	$0, %eax
	jmp	.L385
.L384:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_field_type@PLT
	cmpl	$407, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC470(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2294, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L391
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_get_curve@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC471(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2296, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L391
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, %rsi
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC472(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2297, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L391
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC473(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2299, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L391
	movq	-40(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_get_cofactor@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC474(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2300, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L391
	cmpl	$0, -28(%rbp)
	je	.L387
	movq	-40(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_curve_GF2m@PLT
	movq	%rax, -16(%rbp)
	jmp	.L388
.L387:
	movq	-40(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_curve_GFp@PLT
	movq	%rax, -16(%rbp)
.L388:
	movq	-16(%rbp), %rax
	leaq	.LC475(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2303, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L391
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC476(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2310, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L391
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC477(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2311, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L391
	movq	-96(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC478(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2313, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L391
	movq	-40(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_get_cofactor@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC479(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2314, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L391
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rsi
	leaq	.LC480(%rip), %rcx
	leaq	.LC481(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2315, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L391
	movq	-112(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC482(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2317, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L391
	movq	-112(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC483(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2318, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L391
	movq	-40(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_get_cofactor@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC479(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2319, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L391
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rsi
	leaq	.LC480(%rip), %rcx
	leaq	.LC481(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2320, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L391
	movq	-112(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC482(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2322, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L391
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-112(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC484(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2323, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L391
	movq	-112(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC483(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2324, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L391
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC485(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2326, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L391
	movq	-96(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC486(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2328, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L391
	movq	-96(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC478(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2329, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L391
	movq	-112(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC482(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2331, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L391
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-112(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC484(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2332, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L391
	movq	-96(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC478(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2333, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L391
	movq	-56(%rbp), %rcx
	movq	-96(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_lshift@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC487(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2335, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L391
	movq	-96(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC478(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2336, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L391
	movl	$1, -4(%rbp)
	jmp	.L390
.L391:
	nop
.L390:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L385:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	cardinality_test, .-cardinality_test
	.section	.rodata
	.align 8
.LC488:
	.string	"key = EC_KEY_new_by_curve_name(curves[id].nid)"
	.align 8
.LC489:
	.string	"group = EC_KEY_get0_group(key)"
	.align 8
.LC490:
	.string	"field = EC_GROUP_get0_field(group)"
.LC491:
	.string	"EC_KEY_generate_key(key)"
.LC492:
	.string	"EC_KEY_check_key(key)"
	.align 8
.LC493:
	.string	"pub = EC_KEY_get0_public_key(key)"
	.align 8
.LC494:
	.string	"EC_POINT_get_affine_coordinates(group, pub, x, y, NULL)"
.LC495:
	.string	"BN_GF2m_add(x, x, field)"
.LC496:
	.string	"BN_add(x, x, field)"
	.align 8
.LC497:
	.string	"Unsupported EC_METHOD field_type"
	.align 8
.LC498:
	.string	"EC_KEY_set_public_key_affine_coordinates(key, x, y)"
	.text
	.type	check_ec_key_field_public_range_test, @function
check_ec_key_field_public_range_test:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	call	BN_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2357, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L401
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC56(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2358, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L401
	movq	curves(%rip), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	EC_KEY_new_by_curve_name@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC488(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2359, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L401
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC489(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2360, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L401
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_field@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC490(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2361, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L401
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_generate_key@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC491(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2362, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L401
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_check_key@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC492(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2363, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L401
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC493(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2364, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L401
	movq	-16(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC494(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2365, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L401
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_field_type@PLT
	movl	%eax, -28(%rbp)
	cmpl	$407, -28(%rbp)
	jne	.L396
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC495(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2377, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L397
	jmp	.L395
.L396:
	cmpl	$406, -28(%rbp)
	jne	.L398
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC496(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2383, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L397
	jmp	.L395
.L398:
	leaq	.LC497(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2387, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L395
.L397:
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_public_key_affine_coordinates@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC498(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2390, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L402
	movl	$1, -4(%rbp)
	jmp	.L395
.L401:
	nop
	jmp	.L395
.L402:
	nop
.L395:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	check_ec_key_field_public_range_test, .-check_ec_key_field_public_range_test
	.section	.rodata
.LC499:
	.string	"Pinf = EC_POINT_new(group)"
	.align 8
.LC500:
	.string	"EC_POINT_set_to_infinity(group, Pinf)"
	.align 8
.LC501:
	.string	"hex = EC_POINT_point2hex(group, P, form, bnctx)"
	.align 8
.LC502:
	.string	"Q = EC_POINT_hex2point(group, hex, NULL, bnctx)"
	.align 8
.LC503:
	.string	"EC_POINT_cmp(group, Q, P, bnctx)"
	.text
	.type	ec_point_hex2point_test_helper, @function
ec_point_hex2point_test_helper:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L404
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC499(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2420, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L412
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_set_to_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC500(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2421, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L412
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
.L404:
	movq	-64(%rbp), %rcx
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_point2hex@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC501(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2426, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L413
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_POINT_hex2point@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC502(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2427, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L413
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	movl	%eax, %esi
	leaq	.LC503(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$2428, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L413
	cmpq	$0, -24(%rbp)
	je	.L410
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2438, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L414
.L410:
	movl	$1, -4(%rbp)
	jmp	.L407
.L412:
	nop
	jmp	.L407
.L413:
	nop
	jmp	.L407
.L414:
	nop
.L407:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$2445, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	ec_point_hex2point_test_helper, .-ec_point_hex2point_test_helper
	.section	.rodata
.LC504:
	.string	"bnctx = BN_CTX_new()"
.LC505:
	.string	"P = EC_POINT_dup(G, group)"
	.align 8
.LC506:
	.string	"ec_point_hex2point_test_helper(group, P, POINT_CONVERSION_COMPRESSED, bnctx)"
	.align 8
.LC507:
	.string	"ec_point_hex2point_test_helper(group, NULL, POINT_CONVERSION_COMPRESSED, bnctx)"
	.align 8
.LC508:
	.string	"ec_point_hex2point_test_helper(group, P, POINT_CONVERSION_UNCOMPRESSED, bnctx)"
	.align 8
.LC509:
	.string	"ec_point_hex2point_test_helper(group, NULL, POINT_CONVERSION_UNCOMPRESSED, bnctx)"
	.align 8
.LC510:
	.string	"ec_point_hex2point_test_helper(group, P, POINT_CONVERSION_HYBRID, bnctx)"
	.align 8
.LC511:
	.string	"ec_point_hex2point_test_helper(group, NULL, POINT_CONVERSION_HYBRID, bnctx)"
	.text
	.type	ec_point_hex2point_test, @function
ec_point_hex2point_test:
.LFB493:
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
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	curves(%rip), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	call	BN_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC504(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2464, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L422
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC285(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2465, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L422
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2466, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L422
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_dup@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC505(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2467, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L422
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	ec_point_hex2point_test_helper
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC506(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2470, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L423
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ec_point_hex2point_test_helper
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC507(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2473, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L423
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	ec_point_hex2point_test_helper
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC508(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2476, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L423
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ec_point_hex2point_test_helper
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC509(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2479, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L423
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$6, %edx
	movq	%rax, %rdi
	call	ec_point_hex2point_test_helper
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC510(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2482, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L423
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ec_point_hex2point_test_helper
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC511(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2485, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L423
	movl	$1, -4(%rbp)
	jmp	.L418
.L422:
	nop
	jmp	.L418
.L423:
	nop
.L418:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	ec_point_hex2point_test, .-ec_point_hex2point_test
	.section	.rodata
.LC512:
	.string	"characteristic-two-field"
.LC513:
	.string	"tpBasis"
	.align 8
.LC514:
	.string	"EC_GROUP_get_trinomial_basis(group, &k1)"
.LC515:
	.string	"ppBasis"
	.align 8
.LC516:
	.string	"EC_GROUP_get_pentanomial_basis(group, &k1, &k2, &k3)"
	.align 8
.LC517:
	.string	"OSSL_PARAM_BLD_push_utf8_string(bld, OSSL_PKEY_PARAM_EC_FIELD_TYPE, field_name, 0)"
	.align 8
.LC518:
	.string	"OSSL_PARAM_BLD_push_octet_string(bld, OSSL_PKEY_PARAM_EC_SEED, EC_GROUP_get0_seed(group), EC_GROUP_get_seed_len(group))"
	.align 8
.LC519:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_COFACTOR, EC_GROUP_get0_cofactor(group))"
	.align 8
.LC520:
	.string	"OSSL_PARAM_BLD_push_octet_string(bld, OSSL_PKEY_PARAM_EC_GENERATOR, gen, gen_size)"
	.align 8
.LC521:
	.string	"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_ORDER, EC_GROUP_get0_order(group))"
	.align 8
.LC522:
	.string	"params = OSSL_PARAM_BLD_to_param(bld)"
.LC523:
	.string	"EC"
	.align 8
.LC524:
	.string	"pctx = EVP_PKEY_CTX_new_from_name(NULL, \"EC\", NULL)"
.LC525:
	.string	"EVP_PKEY_fromdata_init(pctx)"
	.align 8
.LC526:
	.string	"EVP_PKEY_fromdata(pctx, &pkeyparam, EVP_PKEY_KEY_PARAMETERS, params)"
.LC527:
	.string	"group"
	.align 8
.LC528:
	.string	"EVP_PKEY_get_utf8_string_param(pkeyparam, OSSL_PKEY_PARAM_GROUP_NAME, name, sizeof(name), &name_len)"
.LC529:
	.string	"encoding"
	.align 8
.LC530:
	.string	"EVP_PKEY_get_utf8_string_param(pkeyparam, OSSL_PKEY_PARAM_EC_ENCODING, name, sizeof(name), &name_len)"
.LC531:
	.string	"explicit"
	.align 8
.LC532:
	.string	"OSSL_PKEY_EC_ENCODING_EXPLICIT"
.LC533:
	.string	"name"
	.align 8
.LC534:
	.string	"EVP_PKEY_get_utf8_string_param(pkeyparam, OSSL_PKEY_PARAM_EC_FIELD_TYPE, name, sizeof(name), &name_len)"
.LC535:
	.string	"field_name"
	.align 8
.LC536:
	.string	"EVP_PKEY_get_octet_string_param(pkeyparam, OSSL_PKEY_PARAM_EC_GENERATOR, buf, sizeof(buf), &buf_len)"
.LC537:
	.string	"gen"
	.align 8
.LC538:
	.string	"EVP_PKEY_get_bn_param(pkeyparam, OSSL_PKEY_PARAM_EC_P, &p_out)"
.LC539:
	.string	"p_out"
	.align 8
.LC540:
	.string	"EVP_PKEY_get_bn_param(pkeyparam, OSSL_PKEY_PARAM_EC_A, &a_out)"
.LC541:
	.string	"a_out"
	.align 8
.LC542:
	.string	"EVP_PKEY_get_bn_param(pkeyparam, OSSL_PKEY_PARAM_EC_B, &b_out)"
.LC543:
	.string	"b_out"
	.align 8
.LC544:
	.string	"EVP_PKEY_get_bn_param(pkeyparam, OSSL_PKEY_PARAM_EC_ORDER, &order_out)"
.LC545:
	.string	"EC_GROUP_get0_order(group)"
.LC546:
	.string	"order_out"
	.align 8
.LC547:
	.string	"EVP_PKEY_get_bn_param(pkeyparam, OSSL_PKEY_PARAM_EC_COFACTOR, &cofactor_out)"
.LC548:
	.string	"cofactor_out"
	.align 8
.LC549:
	.string	"EVP_PKEY_get_octet_string_param(pkeyparam, OSSL_PKEY_PARAM_EC_SEED, buf, sizeof(buf), &buf_len)"
.LC550:
	.string	"EC_GROUP_get0_seed(group)"
.LC551:
	.string	"m"
	.align 8
.LC552:
	.string	"EVP_PKEY_get_int_param(pkeyparam, OSSL_PKEY_PARAM_EC_CHAR2_M, &i_out)"
.LC553:
	.string	"tp"
	.align 8
.LC554:
	.string	"EVP_PKEY_get_int_param(pkeyparam, OSSL_PKEY_PARAM_EC_CHAR2_TP_BASIS, &i_out)"
.LC555:
	.string	"k1"
	.align 8
.LC556:
	.string	"EVP_PKEY_get_int_param(pkeyparam, OSSL_PKEY_PARAM_EC_CHAR2_PP_K1, &i_out)"
.LC557:
	.string	"k2"
	.align 8
.LC558:
	.string	"EVP_PKEY_get_int_param(pkeyparam, OSSL_PKEY_PARAM_EC_CHAR2_PP_K2, &i_out)"
.LC559:
	.string	"k3"
	.align 8
.LC560:
	.string	"EVP_PKEY_get_int_param(pkeyparam, OSSL_PKEY_PARAM_EC_CHAR2_PP_K3, &i_out)"
.LC561:
	.string	"basis-type"
	.align 8
.LC562:
	.string	"EVP_PKEY_get_utf8_string_param(pkeyparam, OSSL_PKEY_PARAM_EC_CHAR2_TYPE, name, sizeof(name), &name_len)"
.LC563:
	.string	"i_out"
.LC564:
	.string	"basis_name"
	.align 8
.LC565:
	.string	"gettable = EVP_PKEY_gettable_params(pkeyparam)"
	.align 8
.LC566:
	.string	"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_GROUP_NAME)"
	.align 8
.LC567:
	.string	"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_ENCODING)"
	.align 8
.LC568:
	.string	"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_FIELD_TYPE)"
	.align 8
.LC569:
	.string	"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_P)"
	.align 8
.LC570:
	.string	"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_A)"
	.align 8
.LC571:
	.string	"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_B)"
	.align 8
.LC572:
	.string	"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_GENERATOR)"
	.align 8
.LC573:
	.string	"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_ORDER)"
	.align 8
.LC574:
	.string	"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_COFACTOR)"
	.align 8
.LC575:
	.string	"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_SEED)"
	.align 8
.LC576:
	.string	"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_CHAR2_M)"
	.align 8
.LC577:
	.string	"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_CHAR2_TYPE)"
	.align 8
.LC578:
	.string	"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_CHAR2_TP_BASIS)"
	.align 8
.LC579:
	.string	"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_CHAR2_PP_K1)"
	.align 8
.LC580:
	.string	"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_CHAR2_PP_K2)"
	.align 8
.LC581:
	.string	"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_CHAR2_PP_K3)"
	.text
	.type	do_test_custom_explicit_fromdata, @function
do_test_custom_explicit_fromdata:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1320, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1304(%rbp)
	movq	%rsi, -1312(%rbp)
	movq	%rdx, -1320(%rbp)
	movl	%ecx, -1324(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -152(%rbp)
	movl	$0, -1284(%rbp)
	movl	$0, -1288(%rbp)
	movl	$0, -1292(%rbp)
	movq	$0, -64(%rbp)
	movq	-1312(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -72(%rbp)
	movq	-1312(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -80(%rbp)
	movq	-1312(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC50(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2525, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L463
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC436(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2526, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L463
	movq	-1304(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_field_type@PLT
	cmpl	$406, %eax
	jne	.L428
	leaq	.LC438(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	.L429
.L428:
	leaq	.LC512(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	-1304(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_basis_type@PLT
	cmpl	$682, %eax
	jne	.L430
	leaq	.LC513(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	-1284(%rbp), %rdx
	movq	-1304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_get_trinomial_basis@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC514(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2536, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L429
	jmp	.L427
.L430:
	leaq	.LC515(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	-1292(%rbp), %rcx
	leaq	-1288(%rbp), %rdx
	leaq	-1284(%rbp), %rsi
	movq	-1304(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_pentanomial_basis@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC516(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2540, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L464
.L429:
	movq	-1312(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-1304(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_get_curve@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2545, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L465
	movq	-48(%rbp), %rdx
	leaq	.LC439(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC517(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2546, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L465
	movq	-72(%rbp), %rdx
	leaq	.LC51(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC441(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2548, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L465
	movq	-80(%rbp), %rdx
	leaq	.LC49(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC442(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2549, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L465
	movq	-88(%rbp), %rdx
	leaq	.LC50(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC443(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2550, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L465
	movq	-1304(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_seed@PLT
	testq	%rax, %rax
	je	.L433
	movq	-1304(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_seed_len@PLT
	movq	%rax, %rbx
	movq	-1304(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_seed@PLT
	movq	%rax, %rdx
	leaq	.LC444(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC518(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2554, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L466
.L433:
	movq	-1304(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_cofactor@PLT
	testq	%rax, %rax
	je	.L434
	movq	-1304(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_cofactor@PLT
	movq	%rax, %rdx
	leaq	.LC446(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC519(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2560, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L467
.L434:
	movl	-1324(%rbp), %eax
	movslq	%eax, %rcx
	movq	-1320(%rbp), %rdx
	leaq	.LC453(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC520(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2565, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L468
	movq	-1304(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, %rdx
	leaq	.LC455(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC521(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2567, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L468
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC522(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2571, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L469
	leaq	.LC523(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC524(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2572, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L469
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC525(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2573, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L469
	movq	-56(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$132, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC526(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2574, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L469
	movq	-112(%rbp), %rax
	leaq	-1280(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	.LC527(%rip), %rsi
	movq	%rcx, %r8
	movl	$80, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_utf8_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC528(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2581, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L470
	movq	-112(%rbp), %rax
	leaq	-1280(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	.LC529(%rip), %rsi
	movq	%rcx, %r8
	movl	$80, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_utf8_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC530(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2587, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L471
	leaq	.LC531(%rip), %rdi
	leaq	-240(%rbp), %rsi
	leaq	.LC532(%rip), %rcx
	leaq	.LC533(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2590, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L471
	movq	-112(%rbp), %rax
	leaq	-1280(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	.LC439(%rip), %rsi
	movq	%rcx, %r8
	movl	$80, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_utf8_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC534(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2593, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L472
	movq	-48(%rbp), %rdi
	leaq	-240(%rbp), %rsi
	leaq	.LC535(%rip), %rcx
	leaq	.LC533(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2596, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L472
	movq	-112(%rbp), %rax
	leaq	-1272(%rbp), %rcx
	leaq	-1264(%rbp), %rdx
	leaq	.LC453(%rip), %rsi
	movq	%rcx, %r8
	movl	$1024, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC536(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2599, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L473
	movl	-1324(%rbp), %eax
	movslq	%eax, %rsi
	movq	-1272(%rbp), %rax
	movslq	%eax, %r8
	leaq	-1264(%rbp), %rdi
	leaq	.LC537(%rip), %rcx
	leaq	.LC427(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	pushq	-1320(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$2601, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L473
	movq	-112(%rbp), %rax
	leaq	-120(%rbp), %rdx
	leaq	.LC51(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC538(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2604, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L474
	movq	-120(%rbp), %rsi
	movq	-72(%rbp), %rdi
	leaq	.LC51(%rip), %rcx
	leaq	.LC539(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2605, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L474
	movq	-112(%rbp), %rax
	leaq	-128(%rbp), %rdx
	leaq	.LC49(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC540(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2606, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L474
	movq	-128(%rbp), %rsi
	movq	-80(%rbp), %rdi
	leaq	.LC49(%rip), %rcx
	leaq	.LC541(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2608, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L474
	movq	-112(%rbp), %rax
	leaq	-136(%rbp), %rdx
	leaq	.LC50(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC542(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2609, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L474
	movq	-136(%rbp), %rsi
	movq	-88(%rbp), %rdi
	leaq	.LC50(%rip), %rcx
	leaq	.LC543(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2611, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L474
	movq	-112(%rbp), %rax
	leaq	-144(%rbp), %rdx
	leaq	.LC455(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC544(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2612, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L474
	movq	-1304(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, %rsi
	movq	-144(%rbp), %rdi
	leaq	.LC545(%rip), %rcx
	leaq	.LC546(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$2614, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L474
	movq	-1304(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_cofactor@PLT
	testq	%rax, %rax
	je	.L448
	movq	-112(%rbp), %rax
	leaq	-152(%rbp), %rdx
	leaq	.LC446(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC547(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2618, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L475
	movq	-1304(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_cofactor@PLT
	movq	%rax, %rsi
	movq	-152(%rbp), %rdi
	leaq	.LC463(%rip), %rcx
	leaq	.LC548(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$2620, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L475
.L448:
	movq	-1304(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_seed@PLT
	testq	%rax, %rax
	je	.L450
	movq	-112(%rbp), %rax
	leaq	-1272(%rbp), %rcx
	leaq	-1264(%rbp), %rdx
	leaq	.LC444(%rip), %rsi
	movq	%rcx, %r8
	movl	$1024, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC549(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2624, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L476
	movq	-1304(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_seed_len@PLT
	movq	%rax, %rbx
	movq	-1304(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_seed@PLT
	movq	-1272(%rbp), %r8
	leaq	-1264(%rbp), %rsi
	leaq	.LC550(%rip), %rcx
	leaq	.LC427(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	pushq	%rbx
	pushq	%rax
	movq	%r8, %r9
	movq	%rsi, %r8
	movl	$2626, %esi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L476
.L450:
	movq	-1304(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_field_type@PLT
	cmpl	$406, %eax
	jne	.L452
	movq	-112(%rbp), %rax
	leaq	-100(%rbp), %rdx
	leaq	.LC551(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC552(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2633, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L477
	movq	-112(%rbp), %rax
	leaq	-100(%rbp), %rdx
	leaq	.LC553(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC554(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2635, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L477
	movq	-112(%rbp), %rax
	leaq	-100(%rbp), %rdx
	leaq	.LC555(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC556(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2637, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L477
	movq	-112(%rbp), %rax
	leaq	-100(%rbp), %rdx
	leaq	.LC557(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC558(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2639, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L477
	movq	-112(%rbp), %rax
	leaq	-100(%rbp), %rdx
	leaq	.LC559(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC560(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2641, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L477
	movq	-112(%rbp), %rax
	leaq	-1280(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	.LC561(%rip), %rsi
	movq	%rcx, %r8
	movl	$80, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_utf8_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC562(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2643, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L454
	jmp	.L477
.L452:
	movq	-112(%rbp), %rax
	leaq	-100(%rbp), %rdx
	leaq	.LC551(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC552(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2649, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L478
	movl	-100(%rbp), %ebx
	movq	-1304(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_degree@PLT
	movl	%eax, %esi
	leaq	.LC563(%rip), %rcx
	leaq	.LC104(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$2651, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L478
	movq	-112(%rbp), %rax
	leaq	-1280(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	.LC561(%rip), %rsi
	movq	%rcx, %r8
	movl	$80, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_utf8_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC562(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2652, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L478
	movq	-64(%rbp), %rdi
	leaq	-240(%rbp), %rsi
	leaq	.LC564(%rip), %rcx
	leaq	.LC533(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2655, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L478
	movq	-1304(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_basis_type@PLT
	cmpl	$682, %eax
	jne	.L457
	movq	-112(%rbp), %rax
	leaq	-100(%rbp), %rdx
	leaq	.LC553(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC554(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2659, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L479
	movl	-100(%rbp), %esi
	movl	-1284(%rbp), %eax
	movl	%eax, %edi
	leaq	.LC563(%rip), %rcx
	leaq	.LC555(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$2661, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L479
	movq	-112(%rbp), %rax
	leaq	-100(%rbp), %rdx
	leaq	.LC555(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC556(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2662, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L479
	movq	-112(%rbp), %rax
	leaq	-100(%rbp), %rdx
	leaq	.LC557(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC558(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2664, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L479
	movq	-112(%rbp), %rax
	leaq	-100(%rbp), %rdx
	leaq	.LC559(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC560(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2666, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L454
	jmp	.L479
.L457:
	movq	-112(%rbp), %rax
	leaq	-100(%rbp), %rdx
	leaq	.LC553(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC554(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2670, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L480
	movq	-112(%rbp), %rax
	leaq	-100(%rbp), %rdx
	leaq	.LC555(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC556(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2672, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L480
	movl	-100(%rbp), %esi
	movl	-1284(%rbp), %eax
	movl	%eax, %edi
	leaq	.LC563(%rip), %rcx
	leaq	.LC555(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$2674, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L480
	movq	-112(%rbp), %rax
	leaq	-100(%rbp), %rdx
	leaq	.LC557(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC558(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2675, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L480
	movl	-100(%rbp), %esi
	movl	-1288(%rbp), %eax
	movl	%eax, %edi
	leaq	.LC563(%rip), %rcx
	leaq	.LC557(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$2677, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L480
	movq	-112(%rbp), %rax
	leaq	-100(%rbp), %rdx
	leaq	.LC559(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC560(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2678, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L480
	movl	-100(%rbp), %esi
	movl	-1292(%rbp), %eax
	movl	%eax, %edi
	leaq	.LC563(%rip), %rcx
	leaq	.LC559(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$2680, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L480
.L454:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_gettable_params@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	leaq	.LC565(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2685, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L481
	leaq	.LC527(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC566(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2686, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L481
	leaq	.LC529(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC567(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2687, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L481
	leaq	.LC439(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC568(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2688, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L481
	leaq	.LC51(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC569(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2689, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L481
	leaq	.LC49(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC570(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2690, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L481
	leaq	.LC50(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC571(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2691, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L481
	leaq	.LC453(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC572(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2692, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L481
	leaq	.LC455(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC573(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2693, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L481
	leaq	.LC446(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC574(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2694, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L481
	leaq	.LC444(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC575(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2695, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L481
	leaq	.LC551(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC576(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2697, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L481
	leaq	.LC561(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC577(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2698, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L481
	leaq	.LC553(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC578(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2699, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L481
	leaq	.LC555(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC579(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2700, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L481
	leaq	.LC557(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC580(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2701, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L481
	leaq	.LC559(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, %rcx
	leaq	.LC581(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2702, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L481
	movl	$1, -20(%rbp)
	jmp	.L427
.L463:
	nop
	jmp	.L427
.L464:
	nop
	jmp	.L427
.L465:
	nop
	jmp	.L427
.L466:
	nop
	jmp	.L427
.L467:
	nop
	jmp	.L427
.L468:
	nop
	jmp	.L427
.L469:
	nop
	jmp	.L427
.L470:
	nop
	jmp	.L427
.L471:
	nop
	jmp	.L427
.L472:
	nop
	jmp	.L427
.L473:
	nop
	jmp	.L427
.L474:
	nop
	jmp	.L427
.L475:
	nop
	jmp	.L427
.L476:
	nop
	jmp	.L427
.L477:
	nop
	jmp	.L427
.L478:
	nop
	jmp	.L427
.L479:
	nop
	jmp	.L427
.L480:
	nop
	jmp	.L427
.L481:
	nop
.L427:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	do_test_custom_explicit_fromdata, .-do_test_custom_explicit_fromdata
	.section	.rodata
.LC582:
	.string	"k = BN_CTX_get(ctx)"
	.align 8
.LC583:
	.string	"BN_rand(k, EC_GROUP_order_bits(group) - 1, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY)"
.LC584:
	.string	"BN_clear_bit(k, 0)"
.LC585:
	.string	"G2 = EC_POINT_new(group)"
.LC586:
	.string	"Q1 = EC_POINT_new(group)"
	.align 8
.LC587:
	.string	"EC_POINT_mul(group, Q1, k, NULL, NULL, ctx)"
	.align 8
.LC588:
	.string	"EC_POINT_point2oct(group, Q1, POINT_CONVERSION_UNCOMPRESSED, NULL, 0, ctx)"
.LC589:
	.string	"b1 = OPENSSL_malloc(bsize)"
	.align 8
.LC590:
	.string	"EC_POINT_point2oct(group, Q1, POINT_CONVERSION_UNCOMPRESSED, b1, bsize, ctx)"
	.align 8
.LC591:
	.string	"EC_POINT_dbl(group, G2, EC_GROUP_get0_generator(group), ctx)"
	.align 8
.LC592:
	.string	"EC_GROUP_set_generator(group, G2, EC_GROUP_get0_order(group), EC_GROUP_get0_cofactor(group))"
.LC593:
	.string	"Q2 = EC_POINT_new(group)"
.LC594:
	.string	"BN_rshift1(k, k)"
	.align 8
.LC595:
	.string	"EC_POINT_mul(group, Q2, k, NULL, NULL, ctx)"
	.align 8
.LC596:
	.string	"EC_POINT_point2oct(group, Q2, POINT_CONVERSION_UNCOMPRESSED, NULL, 0, ctx)"
.LC597:
	.string	"b2 = OPENSSL_malloc(bsize)"
	.align 8
.LC598:
	.string	"EC_POINT_point2oct(group, Q2, POINT_CONVERSION_UNCOMPRESSED, b2, bsize, ctx)"
.LC599:
	.string	"b2"
.LC600:
	.string	"b1"
	.text
	.type	custom_generator_test, @function
custom_generator_test:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movl	%edi, -100(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	curves(%rip), %rax
	movl	-100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	leaq	.LC390(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	call	BN_CTX_new@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2735, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L483
	movl	$0, %eax
	jmp	.L484
.L483:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movl	-92(%rbp), %eax
	movl	%eax, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC285(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2740, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L490
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_degree@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %eax
	addl	%eax, %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC582(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2747, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L491
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_order_bits@PLT
	leal	-1(%rax), %esi
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC583(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2749, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L491
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_clear_bit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC584(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2752, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L491
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC585(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2753, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L491
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC586(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2754, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L491
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC587(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2756, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L491
	movq	-80(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movl	%eax, %edi
	movl	-96(%rbp), %esi
	leaq	.LC451(%rip), %rcx
	leaq	.LC588(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$2758, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L491
	movl	-96(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$2761, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC589(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2761, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L491
	movl	-96(%rbp), %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movl	%eax, %edi
	movl	-96(%rbp), %esi
	leaq	.LC451(%rip), %rcx
	leaq	.LC590(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$2762, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L491
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, %rdi
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	EC_POINT_dbl@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC591(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2766, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L491
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_cofactor@PLT
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC592(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2768, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L491
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC593(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2771, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L491
	movq	-88(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_rshift1@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC594(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2772, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L491
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC595(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2774, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L491
	movq	-80(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movl	%eax, %edi
	movl	-96(%rbp), %esi
	leaq	.LC451(%rip), %rcx
	leaq	.LC596(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$2775, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L491
	movl	-96(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$2778, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC597(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2778, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L491
	movl	-96(%rbp), %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movl	%eax, %edi
	movl	-96(%rbp), %esi
	leaq	.LC451(%rip), %rcx
	leaq	.LC598(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$2779, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L491
	movl	-96(%rbp), %eax
	movslq	%eax, %rsi
	movl	-96(%rbp), %eax
	movslq	%eax, %r8
	movq	-56(%rbp), %rdi
	leaq	.LC599(%rip), %rcx
	leaq	.LC600(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	pushq	-64(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$2783, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L491
	movl	-96(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	do_test_custom_explicit_fromdata
	testl	%eax, %eax
	je	.L492
	movl	$1, -20(%rbp)
	jmp	.L486
.L490:
	nop
	jmp	.L486
.L491:
	nop
	jmp	.L486
.L492:
	nop
.L486:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$2798, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$2799, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
.L484:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	custom_generator_test, .-custom_generator_test
	.section	.rodata
	.align 8
.LC601:
	.string	"custom params not supported with SM2"
.LC602:
	.string	"p = BN_CTX_get(ctx)"
.LC603:
	.string	"a = BN_CTX_get(ctx)"
.LC604:
	.string	"b = BN_CTX_get(ctx)"
	.align 8
.LC605:
	.string	"EC_POINT_point2oct(group, G2, POINT_CONVERSION_UNCOMPRESSED, NULL, 0, ctx)"
.LC606:
	.string	"buf1 = OPENSSL_malloc(bsize)"
	.align 8
.LC607:
	.string	"EC_POINT_point2oct(group, G2, POINT_CONVERSION_UNCOMPRESSED, buf1, bsize, ctx)"
	.align 8
.LC608:
	.string	"z = EC_GROUP_get0_order(group)"
	.align 8
.LC609:
	.string	"cof = EC_GROUP_get0_cofactor(group)"
	.align 8
.LC610:
	.string	"altgroup = EC_GROUP_new_curve_GFp(p, a, b, ctx)"
	.align 8
.LC611:
	.string	"altgroup = EC_GROUP_new_curve_GF2m(p, a, b, ctx)"
.LC612:
	.string	"G2 = EC_POINT_new(altgroup)"
	.align 8
.LC613:
	.string	"EC_POINT_oct2point(altgroup, G2, buf1, bsize, ctx)"
	.align 8
.LC614:
	.string	"EC_POINT_is_on_curve(altgroup, G2, ctx)"
	.align 8
.LC615:
	.string	"EC_GROUP_set_generator(altgroup, G2, z, cof)"
.LC616:
	.string	"Q2 = EC_POINT_new(altgroup)"
	.align 8
.LC617:
	.string	"EC_POINT_point2oct(group, Q1, POINT_CONVERSION_UNCOMPRESSED, buf1, bsize, ctx)"
	.align 8
.LC618:
	.string	"EC_POINT_mul(altgroup, Q2, k, NULL, NULL, ctx)"
	.align 8
.LC619:
	.string	"EC_POINT_point2oct(altgroup, Q2, POINT_CONVERSION_UNCOMPRESSED, NULL, 0, ctx)"
	.align 8
.LC620:
	.string	"EC_POINT_point2oct(altgroup, Q2, POINT_CONVERSION_UNCOMPRESSED, buf2, bsize, ctx)"
.LC621:
	.string	"buf2"
.LC622:
	.string	"buf1"
.LC623:
	.string	"eckey1 = EC_KEY_new()"
	.align 8
.LC624:
	.string	"EC_KEY_set_group(eckey1, altgroup)"
.LC625:
	.string	"EC_KEY_generate_key(eckey1)"
.LC626:
	.string	"eckey2 = EC_KEY_new()"
	.align 8
.LC627:
	.string	"EC_KEY_set_group(eckey2, altgroup)"
.LC628:
	.string	"EC_KEY_generate_key(eckey2)"
	.align 8
.LC629:
	.string	"priv1 = EC_KEY_get0_private_key(eckey1)"
	.align 8
.LC630:
	.string	"EC_POINT_mul(group, Q1, priv1, NULL, NULL, ctx)"
.LC631:
	.string	"pub1 = OPENSSL_malloc(bsize)"
	.align 8
.LC632:
	.string	"EC_POINT_point2oct(group, Q1, POINT_CONVERSION_UNCOMPRESSED, pub1, bsize, ctx)"
	.align 8
.LC633:
	.string	"Q = EC_KEY_get0_public_key(eckey2)"
	.align 8
.LC634:
	.string	"EC_POINT_point2oct(altgroup, Q, POINT_CONVERSION_UNCOMPRESSED, NULL, 0, ctx)"
.LC635:
	.string	"pub2 = OPENSSL_malloc(bsize)"
	.align 8
.LC636:
	.string	"EC_POINT_point2oct(altgroup, Q, POINT_CONVERSION_UNCOMPRESSED, pub2, bsize, ctx)"
.LC637:
	.string	"pkey1 = EVP_PKEY_new()"
	.align 8
.LC638:
	.string	"EVP_PKEY_assign_EC_KEY(pkey1, eckey1)"
.LC639:
	.string	"pkey2 = EVP_PKEY_new()"
	.align 8
.LC640:
	.string	"EVP_PKEY_assign_EC_KEY(pkey2, eckey2)"
	.align 8
.LC641:
	.string	"pctx1 = EVP_PKEY_CTX_new(pkey1, NULL)"
.LC642:
	.string	"EVP_PKEY_derive_init(pctx1)"
	.align 8
.LC643:
	.string	"EVP_PKEY_derive_set_peer(pctx1, pkey2)"
	.align 8
.LC644:
	.string	"EVP_PKEY_derive(pctx1, NULL, &sslen)"
.LC645:
	.string	"sslen"
	.align 8
.LC646:
	.string	"EVP_PKEY_derive(pctx1, buf1, &sslen)"
	.align 8
.LC647:
	.string	"pctx2 = EVP_PKEY_CTX_new(pkey2, NULL)"
.LC648:
	.string	"EVP_PKEY_derive_init(pctx2)"
	.align 8
.LC649:
	.string	"EVP_PKEY_derive_set_peer(pctx2, pkey1)"
	.align 8
.LC650:
	.string	"EVP_PKEY_derive(pctx2, NULL, &t)"
.LC651:
	.string	"t"
	.align 8
.LC652:
	.string	"EVP_PKEY_derive(pctx2, buf2, &t)"
	.align 8
.LC653:
	.string	"param_bld = OSSL_PARAM_BLD_new()"
	.align 8
.LC654:
	.string	"OSSL_PARAM_BLD_push_utf8_string(param_bld, OSSL_PKEY_PARAM_GROUP_NAME, curve_name, 0)"
.LC655:
	.string	"pub"
	.align 8
.LC656:
	.string	"OSSL_PARAM_BLD_push_octet_string(param_bld, OSSL_PKEY_PARAM_PUB_KEY, pub1, bsize)"
.LC657:
	.string	"priv"
	.align 8
.LC658:
	.string	"OSSL_PARAM_BLD_push_BN(param_bld, OSSL_PKEY_PARAM_PRIV_KEY, priv1)"
	.align 8
.LC659:
	.string	"params1 = OSSL_PARAM_BLD_to_param(param_bld)"
	.align 8
.LC660:
	.string	"OSSL_PARAM_BLD_push_octet_string(param_bld, OSSL_PKEY_PARAM_PUB_KEY, pub2, bsize)"
	.align 8
.LC661:
	.string	"params2 = OSSL_PARAM_BLD_to_param(param_bld)"
	.align 8
.LC662:
	.string	"pctx2 = EVP_PKEY_CTX_new_from_name(NULL, \"EC\", NULL)"
.LC663:
	.string	"EVP_PKEY_fromdata_init(pctx2)"
	.align 8
.LC664:
	.string	"EVP_PKEY_fromdata(pctx2, &pkey1, EVP_PKEY_KEYPAIR, params1)"
	.align 8
.LC665:
	.string	"EVP_PKEY_fromdata(pctx2, &pkey2, EVP_PKEY_PUBLIC_KEY, params2)"
	.align 8
.LC666:
	.string	"dctx = EVP_PKEY_CTX_dup(pctx1)"
	.align 8
.LC667:
	.string	"EVP_PKEY_derive_set_peer_ex(dctx, pkey2, 1)"
	.align 8
.LC668:
	.string	"EVP_PKEY_derive(dctx, NULL, &t)"
	.align 8
.LC669:
	.string	"EVP_PKEY_derive(dctx, buf1, &t)"
	.text
	.type	custom_params_test, @function
custom_params_test:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movl	%edi, -276(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -224(%rbp)
	movl	$0, -228(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	curves(%rip), %rax
	movl	-276(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -232(%rbp)
	movl	-232(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	leaq	.LC390(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	cmpl	$1172, -232(%rbp)
	jne	.L494
	leaq	.LC601(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2834, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L533
.L494:
	call	BN_CTX_new@PLT
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2836, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L496
	movl	$0, %eax
	jmp	.L533
.L496:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	leaq	.LC602(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2840, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L534
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	leaq	.LC603(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2841, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L534
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	leaq	.LC604(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2842, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L534
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	leaq	.LC582(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2843, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L534
	movl	-232(%rbp), %eax
	movl	%eax, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC285(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2846, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L535
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_field_type@PLT
	cmpl	$406, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -228(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_degree@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -236(%rbp)
	movl	-236(%rbp), %eax
	addl	%eax, %eax
	addl	$1, %eax
	movl	%eax, -236(%rbp)
	movq	-168(%rbp), %rdi
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_get_curve@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2862, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L536
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC585(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2863, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L536
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, %rdi
	movq	-168(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	EC_POINT_dbl@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC591(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2865, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L536
	movq	-168(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movl	%eax, %edi
	movl	-236(%rbp), %esi
	leaq	.LC451(%rip), %rcx
	leaq	.LC605(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$2868, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L536
	movl	-236(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$2871, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC606(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2871, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L536
	movl	-236(%rbp), %eax
	movslq	%eax, %rcx
	movq	-168(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movl	%eax, %edi
	movl	-236(%rbp), %esi
	leaq	.LC451(%rip), %rcx
	leaq	.LC607(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$2872, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L536
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	leaq	.LC608(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2875, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L536
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_cofactor@PLT
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	leaq	.LC609(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2876, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L536
	cmpl	$0, -228(%rbp)
	je	.L503
	movq	-168(%rbp), %rcx
	movq	-224(%rbp), %rdx
	movq	-216(%rbp), %rsi
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_curve_GFp@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC610(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2882, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L504
	jmp	.L499
.L503:
	movq	-168(%rbp), %rcx
	movq	-224(%rbp), %rdx
	movq	-216(%rbp), %rsi
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_curve_GF2m@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC611(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2887, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L537
.L504:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC612(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2894, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L538
	movl	-236(%rbp), %eax
	movslq	%eax, %rcx
	movq	-168(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_oct2point@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC613(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2895, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L538
	movq	-168(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_on_curve@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC614(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$2896, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L538
	movq	-192(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC615(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2897, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L538
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC586(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2903, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L539
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC616(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2904, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L539
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_order_bits@PLT
	leal	-1(%rax), %esi
	movq	-176(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC583(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2906, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L539
	movq	-176(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_clear_bit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC584(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2909, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L539
	movq	-168(%rbp), %rcx
	movq	-176(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC587(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2911, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L539
	movq	-168(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movl	%eax, %edi
	movl	-236(%rbp), %esi
	leaq	.LC451(%rip), %rcx
	leaq	.LC588(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$2913, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L539
	movl	-236(%rbp), %eax
	movslq	%eax, %rcx
	movq	-168(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movl	%eax, %edi
	movl	-236(%rbp), %esi
	leaq	.LC451(%rip), %rcx
	leaq	.LC617(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$2916, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L539
	movq	-176(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_rshift1@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC594(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2920, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L539
	movq	-168(%rbp), %rcx
	movq	-176(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC618(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2922, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L539
	movq	-168(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movl	%eax, %edi
	movl	-236(%rbp), %esi
	leaq	.LC451(%rip), %rcx
	leaq	.LC619(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$2924, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L539
	movl	-236(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$2927, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC450(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2927, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L539
	movl	-236(%rbp), %eax
	movslq	%eax, %rcx
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movl	%eax, %edi
	movl	-236(%rbp), %esi
	leaq	.LC451(%rip), %rcx
	leaq	.LC620(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$2928, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L539
	movl	-236(%rbp), %eax
	movslq	%eax, %rsi
	movl	-236(%rbp), %eax
	movslq	%eax, %r8
	movq	-56(%rbp), %rdi
	leaq	.LC621(%rip), %rcx
	leaq	.LC622(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	pushq	-64(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$2932, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L539
	call	EC_KEY_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC623(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2936, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L540
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_group@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC624(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2937, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L540
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_generate_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC625(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2938, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L540
	call	EC_KEY_new@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC626(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2939, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L540
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_group@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC627(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2940, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L540
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_generate_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC628(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2941, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L540
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_private_key@PLT
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	leaq	.LC629(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2945, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L541
	movq	-168(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC630(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2954, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L542
	movq	-168(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movl	%eax, %edi
	movl	-236(%rbp), %esi
	leaq	.LC451(%rip), %rcx
	leaq	.LC588(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$2955, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L542
	movl	-236(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$2958, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC631(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2958, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L542
	movl	-236(%rbp), %eax
	movslq	%eax, %rcx
	movq	-168(%rbp), %rdi
	movq	-112(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movl	%eax, %edi
	movl	-236(%rbp), %esi
	leaq	.LC451(%rip), %rcx
	leaq	.LC632(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$2959, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L542
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	leaq	.LC633(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2965, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L543
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movl	%eax, %edi
	movl	-236(%rbp), %esi
	leaq	.LC451(%rip), %rcx
	leaq	.LC634(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$2966, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L543
	movl	-236(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$2969, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	leaq	.LC635(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2969, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L543
	movl	-236(%rbp), %eax
	movslq	%eax, %rcx
	movq	-168(%rbp), %rdi
	movq	-120(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movl	%eax, %edi
	movl	-236(%rbp), %esi
	leaq	.LC451(%rip), %rcx
	leaq	.LC636(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$2970, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L543
	call	EVP_PKEY_new@PLT
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	leaq	.LC637(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2976, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L544
	movq	-248(%rbp), %rax
	movq	-72(%rbp), %rdx
	movl	$408, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC638(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$2977, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L544
	movq	$0, -72(%rbp)
	call	EVP_PKEY_new@PLT
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	leaq	.LC639(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2980, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L545
	movq	-256(%rbp), %rax
	movq	-80(%rbp), %rdx
	movl	$408, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC640(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$2981, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L545
	movq	$0, -80(%rbp)
	movq	-248(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC641(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2986, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L546
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_derive_init@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC642(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$2987, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L546
	movq	-256(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive_set_peer@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC643(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$2988, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L546
	leaq	-264(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC644(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$2989, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L546
	movq	-264(%rbp), %rax
	movl	%eax, %edi
	movl	-236(%rbp), %esi
	leaq	.LC645(%rip), %rcx
	leaq	.LC451(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$2990, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L546
	leaq	-264(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC646(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$2991, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L546
	movq	-256(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	leaq	.LC647(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2993, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L547
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_derive_init@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC648(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$2994, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L547
	movq	-248(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive_set_peer@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC649(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$2995, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L547
	leaq	-272(%rbp), %rdx
	movq	-96(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC650(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$2996, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L547
	movq	-272(%rbp), %rax
	movl	%eax, %edi
	movl	-236(%rbp), %esi
	leaq	.LC651(%rip), %rcx
	leaq	.LC451(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$2997, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L547
	movq	-272(%rbp), %rax
	movl	%eax, %edi
	movq	-264(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC651(%rip), %rcx
	leaq	.LC645(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$2998, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L547
	leaq	-272(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC652(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$2999, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L547
	movq	-272(%rbp), %rsi
	movq	-264(%rbp), %r8
	movq	-56(%rbp), %rdi
	leaq	.LC621(%rip), %rcx
	leaq	.LC622(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	pushq	-64(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$3003, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L548
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	leaq	.LC653(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$3007, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L549
	movq	-152(%rbp), %rdx
	leaq	.LC527(%rip), %rsi
	movq	-128(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC654(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3008, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L549
	movl	-236(%rbp), %eax
	movslq	%eax, %rcx
	movq	-112(%rbp), %rdx
	leaq	.LC655(%rip), %rsi
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC656(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3011, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L549
	movq	-200(%rbp), %rdx
	leaq	.LC657(%rip), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC658(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3014, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L549
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	leaq	.LC659(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$3017, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L549
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	leaq	.LC653(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$3021, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L550
	movq	-152(%rbp), %rdx
	leaq	.LC527(%rip), %rsi
	movq	-128(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC654(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3022, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L550
	movl	-236(%rbp), %eax
	movslq	%eax, %rcx
	movq	-120(%rbp), %rdx
	leaq	.LC655(%rip), %rsi
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC660(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3025, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L550
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	leaq	.LC661(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$3028, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L550
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	leaq	.LC523(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	leaq	.LC662(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$3033, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L551
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC663(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$3034, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L551
	movq	-136(%rbp), %rdx
	leaq	-248(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%rdx, %rcx
	movl	$135, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC664(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$3035, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L551
	movq	-144(%rbp), %rdx
	leaq	-256(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%rdx, %rcx
	movl	$134, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC665(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$3037, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L551
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-248(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC641(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$3043, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L552
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_derive_init@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC642(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$3044, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L552
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_dup@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	leaq	.LC666(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$3045, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L552
	movq	-256(%rbp), %rcx
	movq	-104(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive_set_peer_ex@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC667(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$3046, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L552
	leaq	-272(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC668(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$3047, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L552
	movq	-272(%rbp), %rax
	movl	%eax, %edi
	movl	-236(%rbp), %esi
	leaq	.LC651(%rip), %rcx
	leaq	.LC451(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$3048, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L552
	movq	-272(%rbp), %rax
	movl	%eax, %edi
	movq	-264(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC651(%rip), %rcx
	leaq	.LC645(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$3049, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L552
	leaq	-272(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC669(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$3050, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L552
	movq	-264(%rbp), %rsi
	movq	-272(%rbp), %r8
	movq	-56(%rbp), %rdi
	leaq	.LC621(%rip), %rcx
	leaq	.LC622(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	pushq	-64(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$3052, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L552
	movl	$1, -4(%rbp)
	jmp	.L499
.L534:
	nop
	jmp	.L499
.L535:
	nop
	jmp	.L499
.L536:
	nop
	jmp	.L499
.L537:
	nop
	jmp	.L499
.L538:
	nop
	jmp	.L499
.L539:
	nop
	jmp	.L499
.L540:
	nop
	jmp	.L499
.L541:
	nop
	jmp	.L499
.L542:
	nop
	jmp	.L499
.L543:
	nop
	jmp	.L499
.L544:
	nop
	jmp	.L499
.L545:
	nop
	jmp	.L499
.L546:
	nop
	jmp	.L499
.L547:
	nop
	jmp	.L499
.L548:
	nop
	jmp	.L499
.L549:
	nop
	jmp	.L499
.L550:
	nop
	jmp	.L499
.L551:
	nop
	jmp	.L499
.L552:
	nop
.L499:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$3068, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$3069, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-112(%rbp), %rax
	movl	$3070, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-120(%rbp), %rax
	movl	$3071, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
.L533:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	custom_params_test, .-custom_params_test
	.section	.rodata
.LC670:
	.string	"P-256"
.LC671:
	.string	"gen_key = EVP_EC_gen(\"P-256\")"
	.align 8
.LC672:
	.string	"pklen = i2d_PublicKey(gen_key, &pubkey_enc)"
	.align 8
.LC673:
	.string	"EVP_PKEY_fromdata(pctx, &decoded_key, OSSL_KEYMGMT_SELECT_DOMAIN_PARAMETERS, params)"
.LC674:
	.string	"decoded_key"
	.align 8
.LC675:
	.string	"decoded_key = d2i_PublicKey(EVP_PKEY_EC, &decoded_key, &pk_enc, pklen)"
	.align 8
.LC676:
	.string	"EVP_PKEY_eq(gen_key, decoded_key)"
	.text
	.type	ec_d2i_publickey_test, @function
ec_d2i_publickey_test:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1200, %rsp
	leaq	-1040(%rbp), %rax
	movq	%rax, -1048(%rbp)
	movq	-1048(%rbp), %rax
	movq	%rax, -1056(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -1064(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	leaq	.LC670(%rip), %rdx
	leaq	.LC523(%rip), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	EVP_PKEY_Q_keygen@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC671(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$3093, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L561
	leaq	-1048(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PublicKey@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC672(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$3096, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L562
	leaq	-1200(%rbp), %rax
	leaq	.LC670(%rip), %rdx
	leaq	.LC527(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-1200(%rbp), %rax
	movq	-1192(%rbp), %rdx
	movq	%rax, -1152(%rbp)
	movq	%rdx, -1144(%rbp)
	movq	-1184(%rbp), %rax
	movq	-1176(%rbp), %rdx
	movq	%rax, -1136(%rbp)
	movq	%rdx, -1128(%rbp)
	movq	-1168(%rbp), %rax
	movq	%rax, -1120(%rbp)
	leaq	-1200(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-1200(%rbp), %rax
	movq	-1192(%rbp), %rdx
	movq	%rax, -1112(%rbp)
	movq	%rdx, -1104(%rbp)
	movq	-1184(%rbp), %rax
	movq	-1176(%rbp), %rdx
	movq	%rax, -1096(%rbp)
	movq	%rdx, -1088(%rbp)
	movq	-1168(%rbp), %rax
	movq	%rax, -1080(%rbp)
	leaq	.LC523(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC524(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$3103, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L563
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC525(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3104, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L563
	leaq	-1152(%rbp), %rdx
	leaq	-1064(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC673(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3105, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L563
	movq	-1064(%rbp), %rax
	leaq	.LC674(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$3108, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L563
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-1056(%rbp), %rdx
	leaq	-1064(%rbp), %rax
	movq	%rax, %rsi
	movl	$408, %edi
	call	d2i_PublicKey@PLT
	movq	%rax, -1064(%rbp)
	movq	-1064(%rbp), %rax
	leaq	.LC675(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$3109, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L563
	movq	-1064(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC676(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3113, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L564
	movl	$1, -12(%rbp)
	jmp	.L555
.L561:
	nop
	jmp	.L555
.L562:
	nop
	jmp	.L555
.L563:
	nop
	jmp	.L555
.L564:
	nop
.L555:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-1064(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	ec_d2i_publickey_test, .-ec_d2i_publickey_test
	.section	.rodata
	.align 8
.LC677:
	.string	"curves = OPENSSL_malloc(sizeof(*curves) * crv_len)"
	.align 8
.LC678:
	.string	"EC_get_builtin_curves(curves, crv_len)"
.LC679:
	.string	"parameter_test"
.LC680:
	.string	"ossl_parameter_test"
.LC681:
	.string	"cofactor_range_test"
.LC682:
	.string	"cardinality_test"
.LC683:
	.string	"prime_field_tests"
.LC684:
	.string	"hybrid_point_encoding_test"
.LC685:
	.string	"char2_field_tests"
.LC686:
	.string	"char2_curve_test"
.LC687:
	.string	"nistp_single_test"
.LC688:
	.string	"internal_curve_test"
.LC689:
	.string	"internal_curve_test_method"
.LC690:
	.string	"group_field_test"
.LC691:
	.string	"check_named_curve_test"
.LC692:
	.string	"check_named_curve_lookup_test"
	.align 8
.LC693:
	.string	"check_ec_key_field_public_range_test"
	.align 8
.LC694:
	.string	"check_named_curve_from_ecparameters"
.LC695:
	.string	"ec_point_hex2point_test"
.LC696:
	.string	"custom_generator_test"
.LC697:
	.string	"custom_params_test"
.LC698:
	.string	"ec_d2i_publickey_test"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %esi
	movl	$0, %edi
	call	EC_get_builtin_curves@PLT
	movq	%rax, crv_len(%rip)
	movq	crv_len(%rip), %rax
	salq	$4, %rax
	leaq	.LC1(%rip), %rcx
	movl	$3127, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, curves(%rip)
	movq	curves(%rip), %rax
	leaq	.LC677(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$3127, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L566
	movq	crv_len(%rip), %rdx
	movq	curves(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_get_builtin_curves@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC678(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3128, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L567
.L566:
	movl	$0, %eax
	jmp	.L568
.L567:
	leaq	parameter_test(%rip), %rdx
	leaq	.LC679(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	ossl_parameter_test(%rip), %rdx
	leaq	.LC680(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	cofactor_range_test(%rip), %rdx
	leaq	.LC681(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movq	crv_len(%rip), %rax
	movl	%eax, %edx
	leaq	cardinality_test(%rip), %rsi
	leaq	.LC682(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	prime_field_tests(%rip), %rdx
	leaq	.LC683(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	hybrid_point_encoding_test(%rip), %rdx
	leaq	.LC684(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	char2_field_tests(%rip), %rdx
	leaq	.LC685(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	char2_curve_test(%rip), %rsi
	leaq	.LC686(%rip), %rax
	movl	$1, %ecx
	movl	$10, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	nistp_single_test(%rip), %rsi
	leaq	.LC687(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movq	crv_len(%rip), %rax
	movl	%eax, %edx
	leaq	internal_curve_test(%rip), %rsi
	leaq	.LC688(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movq	crv_len(%rip), %rax
	movl	%eax, %edx
	leaq	internal_curve_test_method(%rip), %rsi
	leaq	.LC689(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	group_field_test(%rip), %rdx
	leaq	.LC690(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movq	crv_len(%rip), %rax
	movl	%eax, %edx
	leaq	check_named_curve_test(%rip), %rsi
	leaq	.LC691(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movq	crv_len(%rip), %rax
	movl	%eax, %edx
	leaq	check_named_curve_lookup_test(%rip), %rsi
	leaq	.LC692(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movq	crv_len(%rip), %rax
	movl	%eax, %edx
	leaq	check_ec_key_field_public_range_test(%rip), %rsi
	leaq	.LC693(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movq	crv_len(%rip), %rax
	movl	%eax, %edx
	leaq	check_named_curve_from_ecparameters(%rip), %rsi
	leaq	.LC694(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movq	crv_len(%rip), %rax
	movl	%eax, %edx
	leaq	ec_point_hex2point_test(%rip), %rsi
	leaq	.LC695(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movq	crv_len(%rip), %rax
	movl	%eax, %edx
	leaq	custom_generator_test(%rip), %rsi
	leaq	.LC696(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movq	crv_len(%rip), %rax
	movl	%eax, %edx
	leaq	custom_params_test(%rip), %rsi
	leaq	.LC697(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	ec_d2i_publickey_test(%rip), %rdx
	leaq	.LC698(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L568:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	curves(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$3158, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	cleanup_tests, .-cleanup_tests
	.data
	.align 8
	.type	invalid_seed_len.3, @object
	.size	invalid_seed_len.3, 8
invalid_seed_len.3:
	.quad	25
	.section	.rodata
	.align 16
	.type	invalid_seed.2, @object
	.size	invalid_seed.2, 25
invalid_seed.2:
	.string	"THIS IS NOT A VALID SEED"
	.data
	.align 8
	.type	invalid_seed_len.1, @object
	.size	invalid_seed_len.1, 8
invalid_seed_len.1:
	.quad	25
	.section	.rodata
	.align 16
	.type	invalid_seed.0, @object
	.size	invalid_seed.0, 25
invalid_seed.0:
	.string	"THIS IS NOT A VALID SEED"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

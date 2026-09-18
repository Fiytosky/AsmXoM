	.file	"ec_internal_test.c"
	.text
	.type	ERR_GET_LIB, @function
ERR_GET_LIB:
.LFB61:
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
	movl	$2, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	shrq	$23, %rax
	movzbl	%al, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	ERR_GET_LIB, .-ERR_GET_LIB
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB63:
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
	je	.L5
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.local	crv_len
	.comm	crv_len,8,8
	.local	curves
	.comm	curves,8,8
	.section	.rodata
.LC0:
	.string	"c = BN_CTX_get(ctx)"
.LC1:
	.string	"../test/ec_internal_test.c"
	.align 8
.LC2:
	.string	"group->meth->field_inv(group, b, BN_value_one(), ctx)"
.LC3:
	.string	"BN_is_one(b)"
	.align 8
.LC4:
	.string	"BN_rand(a, BN_num_bits(group->field) - 1, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY)"
	.align 8
.LC5:
	.string	"group->meth->field_inv(group, b, a, ctx)"
	.align 8
.LC6:
	.string	"group->meth->field_encode(group, a, a, ctx)"
	.align 8
.LC7:
	.string	"group->meth->field_encode(group, b, b, ctx)"
	.align 8
.LC8:
	.string	"group->meth->field_mul(group, c, a, b, ctx)"
	.align 8
.LC9:
	.string	"group->meth->field_decode(group, c, c, ctx)"
.LC10:
	.string	"BN_is_one(c)"
	.align 8
.LC11:
	.string	"ERR_GET_LIB(ERR_peek_last_error()) == ERR_LIB_EC"
	.align 8
.LC12:
	.string	"ERR_GET_REASON(ERR_peek_last_error()) == EC_R_CANNOT_INVERT"
	.align 8
.LC13:
	.string	"group->meth->field_inv(group, b, group->field, ctx)"
	.text
	.type	group_field_tests, @function
group_field_tests:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	272(%rax), %rax
	testq	%rax, %rax
	je	.L8
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %rax
	testq	%rax, %rax
	jne	.L9
.L8:
	movl	$1, %eax
	jmp	.L10
.L9:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$36, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L19
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	272(%rax), %rbx
	call	BN_value_one@PLT
	movq	%rax, %rdi
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	*%rbx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$38, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L19
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$39, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L19
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	leal	-1(%rax), %esi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_rand@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$41, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L19
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	272(%rax), %r8
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$43, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L19
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L12
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %r8
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$45, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L19
.L12:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L13
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %r8
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$47, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L19
.L13:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$48, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L19
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L14
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %r8
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$50, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L19
.L14:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$51, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L19
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	272(%rax), %r8
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$56, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L20
	call	ERR_peek_last_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_LIB
	cmpl	$16, %eax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$57, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L20
	call	ERR_peek_last_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$165, %eax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$58, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L20
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	272(%rax), %r8
	movq	-56(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$61, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L20
	call	ERR_peek_last_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_LIB
	cmpl	$16, %eax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$62, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L20
	call	ERR_peek_last_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$165, %eax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$63, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L20
	call	ERR_clear_error@PLT
	movl	$1, -20(%rbp)
	jmp	.L16
.L19:
	nop
	jmp	.L16
.L20:
	nop
.L16:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-20(%rbp), %eax
.L10:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	group_field_tests, .-group_field_tests
	.section	.rodata
.LC14:
	.string	"ctx = BN_CTX_new()"
.LC15:
	.string	"b = BN_CTX_get(ctx)"
.LC16:
	.string	"group = EC_GROUP_new(meth)"
.LC17:
	.string	"BN_bin2bn(params, len, p)"
	.align 8
.LC18:
	.string	"BN_bin2bn(params + len, len, a)"
	.align 8
.LC19:
	.string	"BN_bin2bn(params + 2 * len, len, b)"
	.align 8
.LC20:
	.string	"EC_GROUP_set_curve(group, p, a, b, ctx)"
	.text
	.type	field_tests, @function
field_tests:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	call	BN_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$83, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L22
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$89, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L28
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$90, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L28
	movq	-32(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$91, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rdx
	movl	-68(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$92, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	movl	-68(%rbp), %eax
	addl	%eax, %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rdx
	movl	-68(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$93, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_set_curve@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$94, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	group_field_tests
	testl	%eax, %eax
	je	.L28
	movl	$1, -12(%rbp)
	jmp	.L26
.L28:
	nop
.L26:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	cmpq	$0, -8(%rbp)
	je	.L27
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
.L27:
	movl	-12(%rbp), %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	field_tests, .-field_tests
	.section	.rodata
	.align 32
	.type	params_p256, @object
	.size	params_p256, 96
params_p256:
	.base64	"/////wAAAAEAAAAAAAAAAAAAAAD/////////////////////AAAAAQAAAAAAAAAAAAAAAP///////////////FrGNdiqOpPns+u9VXaYhrxlHQawzFOw9jvOPD4n0mBL"
	.align 32
	.type	params_b283, @object
	.size	params_b283, 108
params_b283:
	.string	"\b"
	.zero	32
	.string	"\020\241"
	.zero	34
	.ascii	"\001\002{h\n\310\270Ym\245\244\257\212\031\2400?\312\227\375"
	.ascii	"vE0\237\242\245\201HZ\366&>1;y\242\365"
	.align 8
.LC21:
	.string	"Testing EC_GFp_simple_method()\n"
	.text
	.type	field_tests_ecp_simple, @function
field_tests_ecp_simple:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$144, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	call	EC_GFp_simple_method@PLT
	movq	%rax, %rcx
	leaq	params_p256(%rip), %rax
	movl	$32, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	field_tests
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	field_tests_ecp_simple, .-field_tests_ecp_simple
	.section	.rodata
.LC22:
	.string	"Testing EC_GFp_mont_method()\n"
	.text
	.type	field_tests_ecp_mont, @function
field_tests_ecp_mont:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$152, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	call	EC_GFp_mont_method@PLT
	movq	%rax, %rcx
	leaq	params_p256(%rip), %rax
	movl	$32, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	field_tests
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	field_tests_ecp_mont, .-field_tests_ecp_mont
	.section	.rodata
.LC23:
	.string	"Testing GF2m hardening\n"
.LC24:
	.string	"BN_one(a)"
.LC25:
	.string	"BN_one(b)"
.LC26:
	.string	"BN_set_word(p, 0xf2)"
	.align 8
.LC27:
	.string	"group1 = EC_GROUP_new_curve_GF2m(p, a, b, ctx)"
	.align 8
.LC28:
	.string	"Zero constant term accepted in GF2m polynomial"
.LC29:
	.string	"BN_set_word(p, 0xf3)"
	.align 8
.LC30:
	.string	"group2 = EC_GROUP_new_curve_GF2m(p, a, b, ctx)"
	.align 8
.LC31:
	.string	"Hexanomial accepted as GF2m polynomial"
.LC32:
	.string	"BN_set_word(p, 0x71)"
	.align 8
.LC33:
	.string	"BN_set_bit(p, OPENSSL_ECC_MAX_FIELD_BITS + 1)"
	.align 8
.LC34:
	.string	"group3 = EC_GROUP_new_curve_GF2m(p, a, b, ctx)"
	.align 8
.LC35:
	.string	"GF2m polynomial degree > %d accepted"
	.text
	.type	ec2m_field_sanity, @function
ec2m_field_sanity:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	call	BN_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$166, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$171, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L47
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$172, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L47
	movq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$173, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L47
	movq	-48(%rbp), %rax
	movl	$242, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$177, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L48
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_curve_GF2m@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$179, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L38
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$180, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
.L38:
	movq	-48(%rbp), %rax
	movl	$243, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$183, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L49
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_curve_GF2m@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$185, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L40
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$186, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
.L40:
	movq	-48(%rbp), %rax
	movl	$113, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$189, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L50
	movq	-48(%rbp), %rax
	movl	$662, %esi
	movq	%rax, %rdi
	call	BN_set_bit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$190, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L50
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_curve_GF2m@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$192, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L43
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$661, %ecx
	movl	$193, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
.L43:
	cmpq	$0, -16(%rbp)
	jne	.L44
	cmpq	$0, -24(%rbp)
	jne	.L44
	cmpq	$0, -32(%rbp)
	jne	.L44
	movl	$1, %eax
	jmp	.L45
.L44:
	movl	$0, %eax
.L45:
	movl	%eax, -4(%rbp)
	jmp	.L36
.L47:
	nop
	jmp	.L36
.L48:
	nop
	jmp	.L36
.L49:
	nop
	jmp	.L36
.L50:
	nop
.L36:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	ec2m_field_sanity, .-ec2m_field_sanity
	.section	.rodata
	.align 8
.LC36:
	.string	"Testing EC_GF2m_simple_method()\n"
	.text
	.type	field_tests_ec2_simple, @function
field_tests_ec2_simple:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$211, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	call	EC_GF2m_simple_method@PLT
	movq	%rax, %rcx
	leaq	params_b283(%rip), %rax
	movl	$36, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	field_tests
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	field_tests_ec2_simple, .-field_tests_ec2_simple
	.section	.rodata
.LC37:
	.string	"Testing curve %s\n"
	.align 8
.LC38:
	.string	"group = EC_GROUP_new_by_curve_name(nid)"
	.text
	.type	field_tests_default, @function
field_tests_default:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	curves(%rip), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	$0, -12(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$225, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$227, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L60
	call	BN_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$228, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L60
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	group_field_tests
	testl	%eax, %eax
	je	.L60
	movl	$1, -12(%rbp)
	jmp	.L56
.L60:
	nop
.L56:
	cmpq	$0, -24(%rbp)
	je	.L57
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
.L57:
	cmpq	$0, -8(%rbp)
	je	.L58
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
.L58:
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	field_tests_default, .-field_tests_default
	.section	.rodata
.LC39:
	.string	"key"
.LC40:
	.string	"aux_key"
.LC41:
	.string	"1"
.LC42:
	.string	"EC_KEY_generate_key(key)"
.LC43:
	.string	"EC_KEY_generate_key(aux_key)"
	.align 8
.LC44:
	.string	"EC_KEY_set_private_key(key, aux_key->priv_key)"
.LC45:
	.string	"0"
	.align 8
.LC46:
	.string	"EC_KEY_set_private_key(key, NULL)"
.LC47:
	.string	"key->priv_key"
	.text
	.type	set_private_key, @function
set_private_key:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	$713, %edi
	call	EC_KEY_new_by_curve_name@PLT
	movq	%rax, -16(%rbp)
	movl	$713, %edi
	call	EC_KEY_new_by_curve_name@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$322, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L69
	movq	-24(%rbp), %rax
	leaq	.LC40(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$323, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L69
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_generate_key@PLT
	movl	%eax, %esi
	leaq	.LC41(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$324, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L69
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_generate_key@PLT
	movl	%eax, %esi
	leaq	.LC41(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$325, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L69
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_private_key@PLT
	movl	%eax, %esi
	leaq	.LC41(%rip), %rcx
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$329, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L70
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_KEY_set_private_key@PLT
	movl	%eax, %esi
	leaq	.LC45(%rip), %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$333, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L71
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$334, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L71
	movl	$1, -4(%rbp)
	jmp	.L64
.L69:
	nop
	jmp	.L64
.L70:
	nop
	jmp	.L64
.L71:
	nop
.L64:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	set_private_key, .-set_private_key
	.section	.rodata
.LC48:
	.string	"grp"
	.align 8
.LC49:
	.string	"grp->decoded_from_explicit_params"
	.align 8
.LC50:
	.string	"ecparams = EC_GROUP_get_ecparameters(grp, NULL)"
	.align 8
.LC51:
	.string	"grp_copy = EC_GROUP_new_from_ecparameters(ecparams)"
	.align 8
.LC52:
	.string	"grp_copy->decoded_from_explicit_params"
.LC53:
	.string	"OPENSSL_EC_NAMED_CURVE"
.LC54:
	.string	"EC_GROUP_get_asn1_flag(grp)"
	.align 8
.LC55:
	.string	"ecpkparams = EC_GROUP_get_ecpkparameters(grp, NULL)"
	.align 8
.LC56:
	.string	"grp_copy = EC_GROUP_new_from_ecpkparameters(ecpkparams)"
.LC57:
	.string	"key = EC_KEY_new()"
.LC58:
	.string	"-1"
	.align 8
.LC59:
	.string	"EC_KEY_decoded_from_explicit_params(key)"
	.align 8
.LC60:
	.string	"EC_KEY_set_group(key, grp_copy)"
	.align 8
.LC61:
	.string	"encodedlen = i2d_ECPKParameters(grp, &encodedparams)"
.LC62:
	.string	"encp = encodedparams"
	.align 8
.LC63:
	.string	"grp_copy = d2i_ECPKParameters(NULL, &encp, encodedlen)"
.LC64:
	.string	"OPENSSL_EC_EXPLICIT_CURVE"
	.align 8
.LC65:
	.string	"EC_GROUP_get_asn1_flag(grp_copy)"
	.text
	.type	decoded_flag_test, @function
decoded_flag_test:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -44(%rbp)
	call	EC_GFp_simple_method@PLT
	movq	%rax, %rdi
	call	EC_GROUP_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$362, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L89
	movq	-8(%rbp), %rax
	movl	40(%rax), %esi
	leaq	.LC45(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$363, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L89
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movl	$415, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$369, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L90
	movq	-8(%rbp), %rax
	movl	40(%rax), %esi
	leaq	.LC45(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$370, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L90
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_get_ecparameters@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC50(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$374, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L91
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_from_ecparameters@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC51(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$375, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L91
	movq	-16(%rbp), %rax
	movl	40(%rax), %esi
	leaq	.LC45(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$376, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L91
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ECPARAMETERS_free@PLT
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_asn1_flag@PLT
	movl	%eax, %esi
	leaq	.LC53(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$384, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L92
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_get_ecpkparameters@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$385, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L92
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_from_ecpkparameters@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC56(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$386, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L92
	movq	-16(%rbp), %rax
	movl	40(%rax), %esi
	leaq	.LC45(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$387, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L92
	call	EC_KEY_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$388, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L92
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_decoded_from_explicit_params@PLT
	movl	%eax, %esi
	leaq	.LC58(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$390, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L92
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_group@PLT
	movl	%eax, %esi
	leaq	.LC41(%rip), %rcx
	leaq	.LC60(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$391, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L92
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_decoded_from_explicit_params@PLT
	movl	%eax, %esi
	leaq	.LC45(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$393, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L92
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	$0, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ECPKPARAMETERS_free@PLT
	movq	$0, -32(%rbp)
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ECPKParameters@PLT
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %esi
	leaq	.LC45(%rip), %rcx
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$401, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L93
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC62(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$402, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L93
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ECPKParameters@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC63(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$403, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L93
	movq	-16(%rbp), %rax
	movl	40(%rax), %esi
	leaq	.LC45(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$404, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L93
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$408, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -56(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_asn1_flag@PLT
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_get_ecpkparameters@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$413, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L94
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_from_ecpkparameters@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC56(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$414, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L94
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_asn1_flag@PLT
	movl	%eax, %esi
	leaq	.LC64(%rip), %rcx
	leaq	.LC65(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$415, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L94
	movq	-16(%rbp), %rax
	movl	40(%rax), %esi
	leaq	.LC45(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$416, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L94
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	$0, -16(%rbp)
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ECPKParameters@PLT
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %esi
	leaq	.LC45(%rip), %rcx
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$422, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L95
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC62(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$423, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L95
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ECPKParameters@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC63(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$424, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L95
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_asn1_flag@PLT
	movl	%eax, %esi
	leaq	.LC64(%rip), %rcx
	leaq	.LC65(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$425, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L95
	movq	-16(%rbp), %rax
	movl	40(%rax), %esi
	leaq	.LC41(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$426, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L95
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_group@PLT
	movl	%eax, %esi
	leaq	.LC41(%rip), %rcx
	leaq	.LC60(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$427, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L95
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_decoded_from_explicit_params@PLT
	movl	%eax, %esi
	leaq	.LC41(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$429, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L95
	movl	$1, -44(%rbp)
	jmp	.L75
.L89:
	nop
	jmp	.L75
.L90:
	nop
	jmp	.L75
.L91:
	nop
	jmp	.L75
.L92:
	nop
	jmp	.L75
.L93:
	nop
	jmp	.L75
.L94:
	nop
	jmp	.L75
.L95:
	nop
.L75:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ECPARAMETERS_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ECPKPARAMETERS_free@PLT
	movq	-56(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$440, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-44(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	decoded_flag_test, .-decoded_flag_test
	.section	.rodata
	.align 8
.LC66:
	.string	"g1 = EC_GROUP_new_by_curve_name(nid)"
.LC67:
	.string	"wb"
.LC68:
	.string	"params.der"
	.align 8
.LC69:
	.string	"fp = fopen(\"params.der\", \"wb\")"
.LC70:
	.string	"i2d_ECPKParameters_fp(fp, g1)"
.LC71:
	.string	"fclose(fp)"
.LC72:
	.string	"rb"
	.align 8
.LC73:
	.string	"fp = fopen(\"params.der\", \"rb\")"
	.align 8
.LC74:
	.string	"g2 = d2i_ECPKParameters_fp(fp, NULL)"
	.text
	.type	ecpkparams_i2d2i_test, @function
ecpkparams_i2d2i_test:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	curves(%rip), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -20(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$454, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L106
	leaq	.LC67(%rip), %rdx
	leaq	.LC68(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC69(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$458, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L107
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	i2d_ECPKParameters@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_fp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$459, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L107
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	%eax, %esi
	leaq	.LC45(%rip), %rcx
	leaq	.LC71(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$463, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L101
	movq	$0, -16(%rbp)
	jmp	.L98
.L101:
	movq	$0, -16(%rbp)
	leaq	.LC72(%rip), %rdx
	leaq	.LC68(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC73(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$470, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L108
	movq	-16(%rbp), %rax
	movq	d2i_ECPKParameters@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movl	$0, %ecx
	movq	%rax, %rdx
	movl	$0, %edi
	call	ASN1_d2i_fp@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC74(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$471, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L108
	movl	$1, -20(%rbp)
	jmp	.L98
.L106:
	nop
	jmp	.L98
.L107:
	nop
	jmp	.L98
.L108:
	nop
.L98:
	cmpq	$0, -16(%rbp)
	je	.L104
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L104:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	ecpkparams_i2d2i_test, .-ecpkparams_i2d2i_test
	.section	.rodata
	.align 8
.LC75:
	.string	"curves = OPENSSL_malloc(sizeof(*curves) * crv_len)"
	.align 8
.LC76:
	.string	"EC_get_builtin_curves(curves, crv_len)"
.LC77:
	.string	"field_tests_ecp_simple"
.LC78:
	.string	"field_tests_ecp_mont"
.LC79:
	.string	"ec2m_field_sanity"
.LC80:
	.string	"field_tests_ec2_simple"
.LC81:
	.string	"field_tests_default"
.LC82:
	.string	"set_private_key"
.LC83:
	.string	"decoded_flag_test"
.LC84:
	.string	"ecpkparams_i2d2i_test"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB487:
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
	movl	$489, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, curves(%rip)
	movq	curves(%rip), %rax
	leaq	.LC75(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$489, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L110
	movq	crv_len(%rip), %rdx
	movq	curves(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_get_builtin_curves@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC76(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$490, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L111
.L110:
	movl	$0, %eax
	jmp	.L112
.L111:
	leaq	field_tests_ecp_simple(%rip), %rdx
	leaq	.LC77(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	field_tests_ecp_mont(%rip), %rdx
	leaq	.LC78(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	ec2m_field_sanity(%rip), %rdx
	leaq	.LC79(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	field_tests_ec2_simple(%rip), %rdx
	leaq	.LC80(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movq	crv_len(%rip), %rax
	movl	%eax, %edx
	leaq	field_tests_default(%rip), %rsi
	leaq	.LC81(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	set_private_key(%rip), %rdx
	leaq	.LC82(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	decoded_flag_test(%rip), %rdx
	leaq	.LC83(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movq	crv_len(%rip), %rax
	movl	%eax, %edx
	leaq	ecpkparams_i2d2i_test(%rip), %rsi
	leaq	.LC84(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L112:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	curves(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$512, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	cleanup_tests, .-cleanup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

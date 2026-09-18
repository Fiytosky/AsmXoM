	.file	"params_api_test.c"
	.text
	.type	swap_copy, @function
swap_copy:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L2
.L3:
	movq	-40(%rbp), %rax
	subq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -8(%rbp)
.L2:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L3
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	swap_copy, .-swap_copy
	.type	le_copy, @function
le_copy:
.LFB469:
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
	movq	%rcx, -48(%rbp)
	movl	$1, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L5
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L4
.L5:
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L7
	movq	-48(%rbp), %rax
	subq	-32(%rbp), %rax
	addq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
.L7:
	movq	-32(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	setnb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L9
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	swap_copy
	jmp	.L4
.L9:
	nop
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	le_copy, .-le_copy
	.section	.rodata
	.align 32
	.type	raw_values, @object
	.size	raw_values, 448
raw_values:
	.quad	1
	.string	"G"
	.zero	18
	.zero	4
	.quad	1
	.string	"\320"
	.zero	18
	.zero	4
	.quad	2
	.base64	"AekA"
	.zero	17
	.zero	4
	.quad	2
	.base64	"/1MA"
	.zero	17
	.zero	4
	.quad	3
	.base64	"Fv98AA=="
	.zero	16
	.zero	4
	.quad	3
	.base64	"qJwOAA=="
	.zero	16
	.zero	4
	.quad	4
	.string	"8'\277;"
	.zero	15
	.zero	4
	.quad	4
	.string	"\237&H\""
	.zero	15
	.zero	4
	.quad	5
	.base64	"MGX65IEA"
	.zero	14
	.zero	4
	.quad	5
	.base64	"0XYBG80A"
	.zero	14
	.zero	4
	.quad	8
	.base64	"WbIa6SrYRkAA"
	.zero	11
	.zero	4
	.quad	8
	.base64	"tK69tN0EsUwA"
	.zero	11
	.zero	4
	.quad	16
	.base64	"Yeh+Mekzgz2HmcfYXamLQgA="
	.zero	3
	.zero	4
	.quad	16
	.base64	"7m6Lw+zPN8yJZ/JoM6AUsAA="
	.zero	3
	.zero	4
	.text
	.type	test_param_type_null, @function
test_param_type_null:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$7, %eax
	ja	.L11
	cmpl	$4, %eax
	jnb	.L12
	cmpl	$3, %eax
	je	.L13
	cmpl	$3, %eax
	ja	.L11
	cmpl	$1, %eax
	je	.L14
	cmpl	$2, %eax
	je	.L15
	jmp	.L11
.L14:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	jne	.L16
	leaq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int32@PLT
	movl	%eax, -4(%rbp)
	jmp	.L11
.L16:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$8, %rax
	jne	.L18
	leaq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int64@PLT
	movl	%eax, -4(%rbp)
	jmp	.L11
.L18:
	movl	$1, %eax
	jmp	.L23
.L15:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	jne	.L20
	leaq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint32@PLT
	movl	%eax, -4(%rbp)
	jmp	.L11
.L20:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$8, %rax
	jne	.L22
	leaq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint64@PLT
	movl	%eax, -4(%rbp)
	jmp	.L11
.L22:
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	movl	%eax, -4(%rbp)
	jmp	.L11
.L13:
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_double@PLT
	movl	%eax, -4(%rbp)
	jmp	.L11
.L12:
	movl	$1, %eax
	jmp	.L23
.L11:
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_param_type_null, .-test_param_type_null
	.section	.rodata
	.align 8
.LC0:
	.string	"OSSL_PARAM_get_int32(param, &i32)"
.LC1:
	.string	"../test/params_api_test.c"
	.align 8
.LC2:
	.string	"OSSL_PARAM_get_int64(param, &i64)"
	.align 8
.LC3:
	.string	"OSSL_PARAM_get_uint32(param, (uint32_t *)&i32)"
	.align 8
.LC4:
	.string	"OSSL_PARAM_get_uint64(param, (uint64_t *)&i64)"
	.align 8
.LC5:
	.string	"OSSL_PARAM_get_size_t(param, &s)"
.LC6:
	.string	"OSSL_PARAM_modified(param)"
.LC7:
	.string	"cmp"
.LC8:
	.string	"buf"
	.align 8
.LC9:
	.string	"OSSL_PARAM_set_int32(param, 12345)"
.LC10:
	.string	"12345"
.LC11:
	.string	"(size_t)i64"
	.align 8
.LC12:
	.string	"OSSL_PARAM_set_uint32(param, 12345)"
	.text
	.type	test_param_type_extra, @function
test_param_type_extra:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	setbe	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$8, %rax
	setbe	%al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	movq	-88(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-88(%rbp), %rax
	movq	$-1, 32(%rax)
	cmpl	$0, -12(%rbp)
	je	.L25
	cmpl	$0, -4(%rbp)
	je	.L26
	leaq	-28(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$137, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
.L26:
	leaq	-40(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$138, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L28
.L27:
	movl	$0, %eax
	jmp	.L41
.L25:
	cmpl	$0, -4(%rbp)
	je	.L30
	leaq	-28(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$142, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L31
.L30:
	leaq	-40(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$143, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L31
	cmpl	$0, -8(%rbp)
	je	.L28
	leaq	-48(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$144, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L28
.L31:
	movl	$0, %eax
	jmp	.L41
.L28:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$147, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L32
	movl	$0, %eax
	jmp	.L41
.L32:
	cmpl	$0, -4(%rbp)
	je	.L33
	leaq	-28(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$4, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	le_copy
	movq	-104(%rbp), %rax
	movl	$4, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-24(%rbp)
	pushq	-96(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$154, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L33
	movl	$0, %eax
	jmp	.L41
.L33:
	leaq	-40(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$8, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	le_copy
	movq	-104(%rbp), %rax
	movl	$8, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-24(%rbp)
	pushq	-96(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$159, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L34
	movl	$0, %eax
	jmp	.L41
.L34:
	cmpl	$0, -8(%rbp)
	je	.L35
	cmpl	$0, -12(%rbp)
	jne	.L35
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$8, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	le_copy
	movq	-104(%rbp), %rax
	movl	$8, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-24(%rbp)
	pushq	-96(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$164, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L35
	movl	$0, %eax
	jmp	.L41
.L35:
	cmpq	$7, -104(%rbp)
	ja	.L36
	cmpl	$0, -12(%rbp)
	je	.L37
	movq	-88(%rbp), %rax
	movl	$12345, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$171, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	leaq	-40(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$172, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$12345, %r9d
	movq	%rsi, %r8
	movl	$173, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L39
.L38:
	movl	$0, %eax
	jmp	.L41
.L37:
	movq	-88(%rbp), %rax
	movl	$12345, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$176, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L40
	leaq	-40(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$177, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L40
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$12345, %r9d
	movq	%rsi, %r8
	movl	$178, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L39
.L40:
	movl	$0, %eax
	jmp	.L41
.L39:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$181, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L36
	movl	$0, %eax
	jmp	.L41
.L36:
	movl	$1, %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_param_type_extra, .-test_param_type_extra
	.section	.rodata
.LC13:
	.string	"a"
.LC14:
	.string	"1"
.LC15:
	.string	"test_param_type_null(&param)"
	.align 8
.LC16:
	.string	"OSSL_PARAM_set_int(&param, in)"
.LC17:
	.string	"raw_values[n].value"
	.align 8
.LC18:
	.string	"OSSL_PARAM_get_int(&param, &in)"
	.text
	.type	test_param_int, @function
test_param_int:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	$4, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movq	%rax, -8(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -96(%rbp)
	movl	$1, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$4, -72(%rbp)
	movq	$-1, -64(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	test_param_type_null
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$207, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L43
	movl	$0, %eax
	jmp	.L49
.L43:
	leaq	-48(%rbp), %rax
	movl	$20, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	leaq	-48(%rbp), %rax
	movl	$4, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-48(%rbp), %eax
	movl	%eax, -12(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-12(%rbp), %edx
	leaq	-96(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$214, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L45
	movl	$0, %eax
	jmp	.L49
.L45:
	leaq	-16(%rbp), %rdx
	leaq	-52(%rbp), %rax
	movl	$4, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rsi
	movq	-8(%rbp), %r8
	leaq	-52(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-8(%rbp)
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$217, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L46
	movl	$0, %eax
	jmp	.L49
.L46:
	movl	$0, -12(%rbp)
	leaq	-12(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$220, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L47
	movl	$0, %eax
	jmp	.L49
.L47:
	leaq	-12(%rbp), %rdx
	leaq	-52(%rbp), %rax
	movl	$4, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rsi
	leaq	-52(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$4
	pushq	%rsi
	movl	$4, %r9d
	movq	%rdi, %r8
	movl	$223, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L48
	movl	$0, %eax
	jmp	.L49
.L48:
	leaq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rcx
	leaq	-96(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_param_type_extra
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_param_int, .-test_param_int
	.section	.rodata
	.align 8
.LC19:
	.string	"OSSL_PARAM_set_long(&param, in)"
	.align 8
.LC20:
	.string	"OSSL_PARAM_get_long(&param, &in)"
	.text
	.type	test_param_long, @function
test_param_long:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	$8, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movq	%rax, -8(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -96(%rbp)
	movl	$1, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$8, -72(%rbp)
	movq	$-1, -64(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	test_param_type_null
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$237, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L51
	movl	$0, %eax
	jmp	.L57
.L51:
	leaq	-48(%rbp), %rax
	movl	$20, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	leaq	-48(%rbp), %rax
	movl	$8, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	le_copy
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_long@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$244, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L53
	movl	$0, %eax
	jmp	.L57
.L53:
	leaq	-24(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movl	$8, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rsi
	movq	-8(%rbp), %r8
	leaq	-56(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-8(%rbp)
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$247, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L54
	movl	$0, %eax
	jmp	.L57
.L54:
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_long@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$250, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L55
	movl	$0, %eax
	jmp	.L57
.L55:
	leaq	-16(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movl	$8, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rsi
	leaq	-56(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$8
	pushq	%rsi
	movl	$8, %r9d
	movq	%rdi, %r8
	movl	$253, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L56
	movl	$0, %eax
	jmp	.L57
.L56:
	leaq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rcx
	leaq	-96(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_param_type_extra
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	test_param_long, .-test_param_long
	.section	.rodata
	.align 8
.LC21:
	.string	"OSSL_PARAM_set_uint(&param, in)"
	.align 8
.LC22:
	.string	"OSSL_PARAM_get_uint(&param, &in)"
	.text
	.type	test_param_uint, @function
test_param_uint:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	$4, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movq	%rax, -8(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -96(%rbp)
	movl	$2, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$4, -72(%rbp)
	movq	$-1, -64(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	test_param_type_null
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$266, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L59
	movl	$0, %eax
	jmp	.L65
.L59:
	leaq	-48(%rbp), %rax
	movl	$20, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	leaq	-48(%rbp), %rax
	movl	$4, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-48(%rbp), %eax
	movl	%eax, -12(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-12(%rbp), %edx
	leaq	-96(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$273, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L61
	movl	$0, %eax
	jmp	.L65
.L61:
	leaq	-16(%rbp), %rdx
	leaq	-52(%rbp), %rax
	movl	$4, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rsi
	movq	-8(%rbp), %r8
	leaq	-52(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-8(%rbp)
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$276, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L62
	movl	$0, %eax
	jmp	.L65
.L62:
	movl	$0, -12(%rbp)
	leaq	-12(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$279, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L63
	movl	$0, %eax
	jmp	.L65
.L63:
	leaq	-12(%rbp), %rdx
	leaq	-52(%rbp), %rax
	movl	$4, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rsi
	leaq	-52(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$4
	pushq	%rsi
	movl	$4, %r9d
	movq	%rdi, %r8
	movl	$282, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L64
	movl	$0, %eax
	jmp	.L65
.L64:
	leaq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rcx
	leaq	-96(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_param_type_extra
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_param_uint, .-test_param_uint
	.section	.rodata
	.align 8
.LC23:
	.string	"OSSL_PARAM_set_ulong(&param, in)"
	.align 8
.LC24:
	.string	"OSSL_PARAM_get_ulong(&param, &in)"
	.text
	.type	test_param_ulong, @function
test_param_ulong:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	$8, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movq	%rax, -8(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -96(%rbp)
	movl	$2, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$8, -72(%rbp)
	movq	$-1, -64(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	test_param_type_null
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$296, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L67
	movl	$0, %eax
	jmp	.L73
.L67:
	leaq	-48(%rbp), %rax
	movl	$20, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	leaq	-48(%rbp), %rax
	movl	$8, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	le_copy
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_ulong@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$303, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L69
	movl	$0, %eax
	jmp	.L73
.L69:
	leaq	-24(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movl	$8, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rsi
	movq	-8(%rbp), %r8
	leaq	-56(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-8(%rbp)
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$306, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L70
	movl	$0, %eax
	jmp	.L73
.L70:
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_ulong@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$309, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L71
	movl	$0, %eax
	jmp	.L73
.L71:
	leaq	-16(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movl	$8, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rsi
	leaq	-56(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$8
	pushq	%rsi
	movl	$8, %r9d
	movq	%rdi, %r8
	movl	$312, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L72
	movl	$0, %eax
	jmp	.L73
.L72:
	leaq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rcx
	leaq	-96(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_param_type_extra
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_param_ulong, .-test_param_ulong
	.section	.rodata
	.align 8
.LC25:
	.string	"OSSL_PARAM_set_int32(&param, in)"
	.align 8
.LC26:
	.string	"OSSL_PARAM_get_int32(&param, &in)"
	.text
	.type	test_param_int32, @function
test_param_int32:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	$4, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movq	%rax, -8(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -96(%rbp)
	movl	$1, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$4, -72(%rbp)
	movq	$-1, -64(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	test_param_type_null
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$326, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L75
	movl	$0, %eax
	jmp	.L81
.L75:
	leaq	-48(%rbp), %rax
	movl	$20, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	leaq	-48(%rbp), %rax
	movl	$4, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-48(%rbp), %eax
	movl	%eax, -12(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-12(%rbp), %edx
	leaq	-96(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$333, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L77
	movl	$0, %eax
	jmp	.L81
.L77:
	leaq	-16(%rbp), %rdx
	leaq	-52(%rbp), %rax
	movl	$4, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rsi
	movq	-8(%rbp), %r8
	leaq	-52(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-8(%rbp)
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$336, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L78
	movl	$0, %eax
	jmp	.L81
.L78:
	movl	$0, -12(%rbp)
	leaq	-12(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$339, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L79
	movl	$0, %eax
	jmp	.L81
.L79:
	leaq	-12(%rbp), %rdx
	leaq	-52(%rbp), %rax
	movl	$4, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rsi
	leaq	-52(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$4
	pushq	%rsi
	movl	$4, %r9d
	movq	%rdi, %r8
	movl	$342, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L80
	movl	$0, %eax
	jmp	.L81
.L80:
	leaq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rcx
	leaq	-96(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_param_type_extra
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	test_param_int32, .-test_param_int32
	.section	.rodata
	.align 8
.LC27:
	.string	"OSSL_PARAM_set_uint32(&param, in)"
	.align 8
.LC28:
	.string	"OSSL_PARAM_get_uint32(&param, &in)"
	.text
	.type	test_param_uint32, @function
test_param_uint32:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	$4, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movq	%rax, -8(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -96(%rbp)
	movl	$2, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$4, -72(%rbp)
	movq	$-1, -64(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	test_param_type_null
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$356, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L83
	movl	$0, %eax
	jmp	.L89
.L83:
	leaq	-48(%rbp), %rax
	movl	$20, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	leaq	-48(%rbp), %rax
	movl	$4, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-48(%rbp), %eax
	movl	%eax, -12(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-12(%rbp), %edx
	leaq	-96(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$363, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L85
	movl	$0, %eax
	jmp	.L89
.L85:
	leaq	-16(%rbp), %rdx
	leaq	-52(%rbp), %rax
	movl	$4, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rsi
	movq	-8(%rbp), %r8
	leaq	-52(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-8(%rbp)
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$366, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L86
	movl	$0, %eax
	jmp	.L89
.L86:
	movl	$0, -12(%rbp)
	leaq	-12(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$369, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L87
	movl	$0, %eax
	jmp	.L89
.L87:
	leaq	-12(%rbp), %rdx
	leaq	-52(%rbp), %rax
	movl	$4, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rsi
	leaq	-52(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$4
	pushq	%rsi
	movl	$4, %r9d
	movq	%rdi, %r8
	movl	$372, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L88
	movl	$0, %eax
	jmp	.L89
.L88:
	leaq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rcx
	leaq	-96(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_param_type_extra
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	test_param_uint32, .-test_param_uint32
	.section	.rodata
	.align 8
.LC29:
	.string	"OSSL_PARAM_set_int64(&param, in)"
	.align 8
.LC30:
	.string	"OSSL_PARAM_get_int64(&param, &in)"
	.text
	.type	test_param_int64, @function
test_param_int64:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	$8, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movq	%rax, -8(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -96(%rbp)
	movl	$1, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$8, -72(%rbp)
	movq	$-1, -64(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	test_param_type_null
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$386, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L91
	movl	$0, %eax
	jmp	.L97
.L91:
	leaq	-48(%rbp), %rax
	movl	$20, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	leaq	-48(%rbp), %rax
	movl	$8, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	le_copy
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$393, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L93
	movl	$0, %eax
	jmp	.L97
.L93:
	leaq	-24(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movl	$8, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rsi
	movq	-8(%rbp), %r8
	leaq	-56(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-8(%rbp)
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$396, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L94
	movl	$0, %eax
	jmp	.L97
.L94:
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$399, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L95
	movl	$0, %eax
	jmp	.L97
.L95:
	leaq	-16(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movl	$8, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rsi
	leaq	-56(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$8
	pushq	%rsi
	movl	$8, %r9d
	movq	%rdi, %r8
	movl	$402, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L96
	movl	$0, %eax
	jmp	.L97
.L96:
	leaq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rcx
	leaq	-96(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_param_type_extra
.L97:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	test_param_int64, .-test_param_int64
	.section	.rodata
	.align 8
.LC31:
	.string	"OSSL_PARAM_set_uint64(&param, in)"
	.align 8
.LC32:
	.string	"OSSL_PARAM_get_uint64(&param, &in)"
	.text
	.type	test_param_uint64, @function
test_param_uint64:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	$8, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movq	%rax, -8(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -96(%rbp)
	movl	$2, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$8, -72(%rbp)
	movq	$-1, -64(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	test_param_type_null
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$416, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L99
	movl	$0, %eax
	jmp	.L105
.L99:
	leaq	-48(%rbp), %rax
	movl	$20, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	leaq	-48(%rbp), %rax
	movl	$8, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	le_copy
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$423, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L101
	movl	$0, %eax
	jmp	.L105
.L101:
	leaq	-24(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movl	$8, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rsi
	movq	-8(%rbp), %r8
	leaq	-56(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-8(%rbp)
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$426, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L102
	movl	$0, %eax
	jmp	.L105
.L102:
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$429, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L103
	movl	$0, %eax
	jmp	.L105
.L103:
	leaq	-16(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movl	$8, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rsi
	leaq	-56(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$8
	pushq	%rsi
	movl	$8, %r9d
	movq	%rdi, %r8
	movl	$432, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L104
	movl	$0, %eax
	jmp	.L105
.L104:
	leaq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rcx
	leaq	-96(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_param_type_extra
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	test_param_uint64, .-test_param_uint64
	.section	.rodata
	.align 8
.LC33:
	.string	"OSSL_PARAM_set_size_t(&param, in)"
	.align 8
.LC34:
	.string	"OSSL_PARAM_get_size_t(&param, &in)"
	.text
	.type	test_param_size_t, @function
test_param_size_t:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	$8, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movq	%rax, -8(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -96(%rbp)
	movl	$2, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$8, -72(%rbp)
	movq	$-1, -64(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	test_param_type_null
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$446, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L107
	movl	$0, %eax
	jmp	.L113
.L107:
	leaq	-48(%rbp), %rax
	movl	$20, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	leaq	-48(%rbp), %rax
	movl	$8, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	le_copy
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$453, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L109
	movl	$0, %eax
	jmp	.L113
.L109:
	leaq	-24(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movl	$8, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rsi
	movq	-8(%rbp), %r8
	leaq	-56(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-8(%rbp)
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$456, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L110
	movl	$0, %eax
	jmp	.L113
.L110:
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$459, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L111
	movl	$0, %eax
	jmp	.L113
.L111:
	leaq	-16(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movl	$8, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rsi
	leaq	-56(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$8
	pushq	%rsi
	movl	$8, %r9d
	movq	%rdi, %r8
	movl	$462, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L112
	movl	$0, %eax
	jmp	.L113
.L112:
	leaq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rcx
	leaq	-96(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_param_type_extra
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	test_param_size_t, .-test_param_size_t
	.section	.rodata
	.align 8
.LC35:
	.string	"OSSL_PARAM_set_time_t(&param, in)"
	.align 8
.LC36:
	.string	"OSSL_PARAM_get_time_t(&param, &in)"
	.text
	.type	test_param_time_t, @function
test_param_time_t:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	$8, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movq	%rax, -8(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -96(%rbp)
	movl	$1, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$8, -72(%rbp)
	movq	$-1, -64(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	test_param_type_null
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$476, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L115
	movl	$0, %eax
	jmp	.L121
.L115:
	leaq	-48(%rbp), %rax
	movl	$20, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	leaq	-48(%rbp), %rax
	movl	$8, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	le_copy
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_time_t@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$483, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L117
	movl	$0, %eax
	jmp	.L121
.L117:
	leaq	-24(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movl	$8, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rsi
	movq	-8(%rbp), %r8
	leaq	-56(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-8(%rbp)
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$486, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L118
	movl	$0, %eax
	jmp	.L121
.L118:
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_time_t@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$489, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L119
	movl	$0, %eax
	jmp	.L121
.L119:
	leaq	-16(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movl	$8, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	le_copy
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rsi
	leaq	-56(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$8
	pushq	%rsi
	movl	$8, %r9d
	movq	%rdi, %r8
	movl	$492, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L120
	movl	$0, %eax
	jmp	.L121
.L120:
	leaq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rcx
	leaq	-96(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_param_type_extra
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	test_param_time_t, .-test_param_time_t
	.section	.rodata
.LC37:
	.string	"bn"
	.align 8
.LC38:
	.string	"b = BN_lebin2bn(raw_values[n].value, (int)len, NULL)"
.LC39:
	.string	"OSSL_PARAM_set_BN(&param, b)"
.LC40:
	.string	"OSSL_PARAM_get_BN(&param, &c)"
.LC41:
	.string	"c"
.LC42:
	.string	"b"
	.text
	.type	test_param_bignum, @function
test_param_bignum:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movl	%edi, -132(%rbp)
	movl	-132(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -88(%rbp)
	leaq	.LC37(%rip), %rax
	movq	%rax, -128(%rbp)
	movl	$2, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$-1, -96(%rbp)
	movl	$0, -4(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	test_param_type_null
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$507, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L123
	movl	$0, %eax
	jmp	.L131
.L123:
	leaq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$20, -104(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	movl	-132(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_lebin2bn@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$513, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L132
	movq	-24(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$516, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L133
	leaq	-80(%rbp), %rdx
	movq	-16(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movl	$20, %ecx
	movq	%rax, %rdi
	call	le_copy
	movl	-132(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %r8
	movq	-16(%rbp), %rdi
	leaq	.LC8(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-16(%rbp)
	leaq	-48(%rbp), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$519, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L134
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-88(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$522, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L135
	movq	-88(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC41(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$523, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L135
	movl	$1, -4(%rbp)
	jmp	.L126
.L132:
	nop
	jmp	.L126
.L133:
	nop
	jmp	.L126
.L134:
	nop
	jmp	.L126
.L135:
	nop
.L126:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	test_param_bignum, .-test_param_bignum
	.section	.rodata
	.align 8
.LC43:
	.string	"b = BN_signed_lebin2bn(raw_values[n].value, (int)len, NULL)"
	.align 8
.LC44:
	.string	"!!(raw_values[n].value[len - 1] & 0x80) ^ BN_is_negative(b)"
	.text
	.type	test_param_signed_bignum, @function
test_param_signed_bignum:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movl	%edi, -148(%rbp)
	movl	-148(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -104(%rbp)
	leaq	.LC37(%rip), %rax
	movq	%rax, -144(%rbp)
	movl	$1, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$-1, -112(%rbp)
	movl	$0, -20(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	test_param_type_null
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$541, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L137
	movl	$0, %eax
	jmp	.L146
.L137:
	leaq	-96(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	$20, -120(%rbp)
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movl	-148(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_signed_lebin2bn@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$547, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L147
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movl	-148(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rax, %rdx
	leaq	8+raw_values(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	shrb	$7, %al
	movzbl	%al, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	cmpl	%eax, %ebx
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$551, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L148
	movq	-40(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$553, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L149
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movl	$20, %ecx
	movq	%rax, %rdi
	call	le_copy
	movl	-148(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	raw_values(%rip), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %r8
	movq	-32(%rbp), %rdi
	leaq	.LC8(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-32(%rbp)
	leaq	-64(%rbp), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$556, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L150
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-104(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$559, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L144
	movq	-104(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC41(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$560, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	jne	.L145
.L144:
	movq	-104(%rbp), %rdx
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_print_fp@PLT
	jmp	.L140
.L145:
	movl	$1, -20(%rbp)
	jmp	.L140
.L147:
	nop
	jmp	.L140
.L148:
	nop
	jmp	.L140
.L149:
	nop
	jmp	.L140
.L150:
	nop
.L140:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-20(%rbp), %eax
.L146:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	test_param_signed_bignum, .-test_param_signed_bignum
	.section	.rodata
.LC45:
	.string	"r"
	.align 8
.LC47:
	.string	"OSSL_PARAM_set_double(&param, 3.14159)"
.LC48:
	.string	"3.14159"
.LC49:
	.string	"p"
	.text
	.type	test_param_real, @function
test_param_real:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	leaq	.LC45(%rip), %rax
	movq	%rax, -48(%rbp)
	movl	$3, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$8, -24(%rbp)
	movq	$-1, -16(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	test_param_type_null
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$577, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L152
	movl	$0, %eax
	jmp	.L156
.L152:
	leaq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	.LC46(%rip), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	call	OSSL_PARAM_set_double@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC47(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$581, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L154
	movq	-8(%rbp), %rax
	movsd	.LC46(%rip), %xmm0
	leaq	.LC48(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movl	$582, %esi
	call	test_double_eq@PLT
	testl	%eax, %eax
	je	.L154
	movl	$1, %eax
	jmp	.L156
.L154:
	movl	$0, %eax
.L156:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	test_param_real, .-test_param_real
	.section	.rodata
.LC50:
	.string	"int"
.LC51:
	.string	"uint"
.LC52:
	.string	"long"
.LC53:
	.string	"ulong"
.LC54:
	.string	"int32"
.LC55:
	.string	"int64"
.LC56:
	.string	"uint32"
.LC57:
	.string	"uint64"
.LC58:
	.string	"size_t"
.LC59:
	.string	"double"
.LC60:
	.string	"bignum"
.LC61:
	.string	"utf8str"
.LC62:
	.string	"octstr"
.LC63:
	.string	"utf8ptr"
.LC64:
	.string	"octptr"
.LC65:
	.string	"fnord"
.LC66:
	.string	"OSSL_PARAM_locate(p, \"fnord\")"
	.align 8
.LC67:
	.string	"cp = OSSL_PARAM_locate(p, int_names[j])"
	.align 8
.LC68:
	.string	"OSSL_PARAM_set_int32(cp, (int32_t)(3 + j))"
	.align 8
.LC69:
	.string	"OSSL_PARAM_get_int64(cp, &i64)"
.LC70:
	.string	"cp->return_size"
.LC71:
	.string	"cp->data_size"
.LC72:
	.string	"3 + j"
.LC73:
	.string	"iteration %zu var %s"
	.align 8
.LC74:
	.string	"cp = OSSL_PARAM_locate(p, uint_names[j])"
	.align 8
.LC75:
	.string	"OSSL_PARAM_set_uint32(cp, (uint32_t)(3 + j))"
	.align 8
.LC76:
	.string	"OSSL_PARAM_get_uint64(cp, &u64)"
.LC77:
	.string	"(size_t)u64"
	.align 8
.LC78:
	.string	"cp = OSSL_PARAM_locate(p, \"double\")"
	.align 8
.LC80:
	.string	"OSSL_PARAM_set_double(cp, 3.14)"
	.align 8
.LC81:
	.string	"OSSL_PARAM_get_double(cp, &d2)"
.LC82:
	.string	"sizeof(double)"
.LC83:
	.string	"3.14"
.LC84:
	.string	"d2"
.LC85:
	.string	"d"
	.align 8
.LC86:
	.string	"cp = OSSL_PARAM_locate(p, \"utf8str\")"
.LC87:
	.string	"abcdef"
	.align 8
.LC88:
	.string	"OSSL_PARAM_set_utf8_string(cp, \"abcdef\")"
.LC89:
	.string	"sizeof(\"abcdef\") - 1"
	.align 8
.LC90:
	.string	"OSSL_PARAM_get_utf8_string(cp, &bufp, 0)"
.LC91:
	.string	"\"abcdef\""
.LC92:
	.string	"bufp"
	.align 8
.LC93:
	.string	"OSSL_PARAM_get_utf8_string(cp, &bufp, sizeof(buf2))"
.LC94:
	.string	"buf2"
	.align 8
.LC95:
	.string	"cp = OSSL_PARAM_locate(p, \"utf8ptr\")"
.LC96:
	.string	"tuvwxyz"
	.align 8
.LC97:
	.string	"OSSL_PARAM_set_utf8_ptr(cp, \"tuvwxyz\")"
.LC98:
	.string	"sizeof(\"tuvwxyz\") - 1"
	.align 8
.LC99:
	.string	"OSSL_PARAM_get_utf8_ptr(cp, (const char **)&bufp2)"
.LC100:
	.string	"\"tuvwxyz\""
.LC101:
	.string	"bufp2"
	.align 8
.LC102:
	.string	"cp = OSSL_PARAM_locate(p, \"octstr\")"
.LC103:
	.string	"abcdefghi"
	.align 8
.LC104:
	.string	"OSSL_PARAM_set_octet_string(cp, \"abcdefghi\", sizeof(\"abcdefghi\"))"
.LC105:
	.string	"sizeof(\"abcdefghi\")"
	.align 8
.LC106:
	.string	"OSSL_PARAM_get_octet_string(cp, &vpn, 0, &s)"
.LC107:
	.string	"s"
.LC108:
	.string	"\"abcdefghi\""
.LC109:
	.string	"vpn"
	.align 8
.LC110:
	.string	"OSSL_PARAM_get_octet_string(cp, &vp, sizeof(buf2), &s)"
.LC111:
	.string	"vp"
	.align 8
.LC112:
	.string	"cp = OSSL_PARAM_locate(p, \"octptr\")"
	.align 8
.LC113:
	.string	"OSSL_PARAM_set_octet_ptr(cp, &ul, sizeof(ul))"
.LC114:
	.string	"sizeof(ul)"
.LC115:
	.string	"&ul"
	.align 8
.LC116:
	.string	"OSSL_PARAM_get_octet_ptr(cp, (const void **)&vp2, &k)"
.LC117:
	.string	"k"
.LC118:
	.string	"vp2"
	.align 8
.LC119:
	.string	"cp = OSSL_PARAM_locate(p, \"bignum\")"
	.align 8
.LC120:
	.string	"bn = BN_lebin2bn(bn_val, (int)sizeof(bn_val), NULL)"
.LC121:
	.string	"OSSL_PARAM_set_BN(cp, bn)"
.LC122:
	.string	"OSSL_PARAM_get_BN(cp, &bn2)"
.LC123:
	.string	"bn2"
	.text
	.type	test_param_construct, @function
test_param_construct:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1400, %rsp
	.cfi_offset 3, -24
	movl	%edi, -1348(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -1248(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -1344(%rbp)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-864(%rax), %rbx
	leaq	-1408(%rbp), %rax
	leaq	-1260(%rbp), %rdx
	leaq	.LC50(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-1408(%rbp), %rax
	movq	-1400(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1392(%rbp), %rax
	movq	-1384(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1376(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-864(%rax), %rbx
	leaq	-1408(%rbp), %rax
	leaq	-1264(%rbp), %rdx
	leaq	.LC51(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-1408(%rbp), %rax
	movq	-1400(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1392(%rbp), %rax
	movq	-1384(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1376(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-864(%rax), %rbx
	leaq	-1408(%rbp), %rax
	leaq	-1272(%rbp), %rdx
	leaq	.LC52(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_long@PLT
	movq	-1408(%rbp), %rax
	movq	-1400(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1392(%rbp), %rax
	movq	-1384(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1376(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-864(%rax), %rbx
	leaq	-1408(%rbp), %rax
	leaq	-1280(%rbp), %rdx
	leaq	.LC53(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_ulong@PLT
	movq	-1408(%rbp), %rax
	movq	-1400(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1392(%rbp), %rax
	movq	-1384(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1376(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-864(%rax), %rbx
	leaq	-1408(%rbp), %rax
	leaq	-1284(%rbp), %rdx
	leaq	.LC54(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int32@PLT
	movq	-1408(%rbp), %rax
	movq	-1400(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1392(%rbp), %rax
	movq	-1384(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1376(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-864(%rax), %rbx
	leaq	-1408(%rbp), %rax
	leaq	-1296(%rbp), %rdx
	leaq	.LC55(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int64@PLT
	movq	-1408(%rbp), %rax
	movq	-1400(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1392(%rbp), %rax
	movq	-1384(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1376(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-864(%rax), %rbx
	leaq	-1408(%rbp), %rax
	leaq	-1288(%rbp), %rdx
	leaq	.LC56(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint32@PLT
	movq	-1408(%rbp), %rax
	movq	-1400(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1392(%rbp), %rax
	movq	-1384(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1376(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-864(%rax), %rbx
	leaq	-1408(%rbp), %rax
	leaq	-1304(%rbp), %rdx
	leaq	.LC57(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint64@PLT
	movq	-1408(%rbp), %rax
	movq	-1400(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1392(%rbp), %rax
	movq	-1384(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1376(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-864(%rax), %rbx
	leaq	-1408(%rbp), %rax
	leaq	-1320(%rbp), %rdx
	leaq	.LC58(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-1408(%rbp), %rax
	movq	-1400(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1392(%rbp), %rax
	movq	-1384(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1376(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-864(%rax), %rbx
	leaq	-1408(%rbp), %rax
	leaq	-1328(%rbp), %rdx
	leaq	.LC59(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_double@PLT
	movq	-1408(%rbp), %rax
	movq	-1400(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1392(%rbp), %rax
	movq	-1384(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1376(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-864(%rax), %rbx
	leaq	-1408(%rbp), %rax
	leaq	-1232(%rbp), %rdx
	leaq	.LC60(%rip), %rsi
	movl	$100, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_BN@PLT
	movq	-1408(%rbp), %rax
	movq	-1400(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1392(%rbp), %rax
	movq	-1384(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1376(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-864(%rax), %rbx
	leaq	-1408(%rbp), %rax
	leaq	-992(%rbp), %rdx
	leaq	.LC61(%rip), %rsi
	movl	$100, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-1408(%rbp), %rax
	movq	-1400(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1392(%rbp), %rax
	movq	-1384(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1376(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-864(%rax), %rbx
	leaq	-1408(%rbp), %rax
	leaq	-992(%rbp), %rdx
	leaq	.LC62(%rip), %rsi
	movl	$100, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-1408(%rbp), %rax
	movq	-1400(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1392(%rbp), %rax
	movq	-1384(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1376(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-864(%rax), %rbx
	leaq	-1408(%rbp), %rax
	leaq	-1112(%rbp), %rdx
	leaq	.LC63(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_ptr@PLT
	movq	-1408(%rbp), %rax
	movq	-1400(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1392(%rbp), %rax
	movq	-1384(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1376(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-864(%rax), %rbx
	leaq	-1408(%rbp), %rax
	leaq	-1240(%rbp), %rdx
	leaq	.LC64(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_ptr@PLT
	movq	-1408(%rbp), %rax
	movq	-1400(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1392(%rbp), %rax
	movq	-1384(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1376(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-864(%rax), %rbx
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-1408(%rbp), %rax
	movq	-1400(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1392(%rbp), %rax
	movq	-1384(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1376(%rbp), %rax
	movq	%rax, 32(%rbx)
	cmpl	$2, -1348(%rbp)
	je	.L158
	cmpl	$2, -1348(%rbp)
	jg	.L159
	cmpl	$0, -1348(%rbp)
	je	.L160
	cmpl	$1, -1348(%rbp)
	je	.L161
	jmp	.L159
.L160:
	leaq	-880(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L162
.L161:
	leaq	params_empty.3(%rip), %rdx
	leaq	-880(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_merge@PLT
	movq	%rax, -24(%rbp)
	jmp	.L162
.L158:
	leaq	-880(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_dup@PLT
	movq	%rax, -24(%rbp)
	jmp	.L162
.L159:
	leaq	-880(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_dup@PLT
	movq	%rax, -32(%rbp)
	leaq	params_empty.3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_merge@PLT
	movq	%rax, -24(%rbp)
	nop
.L162:
	leaq	.LC65(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, %rcx
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$652, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L197
	movq	$0, -48(%rbp)
	jmp	.L165
.L168:
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	int_names.2(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC67(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$657, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	movq	-48(%rbp), %rax
	addl	$3, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC68(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$658, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L166
	leaq	-1296(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC69(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$659, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L166
	movq	-72(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC70(%rip), %rcx
	leaq	.LC71(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$660, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L166
	movq	-48(%rbp), %rax
	leaq	3(%rax), %rsi
	movq	-1296(%rbp), %rax
	movq	%rax, %rdi
	leaq	.LC72(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$661, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L167
.L166:
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	int_names.2(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-48(%rbp), %rdx
	leaq	1(%rdx), %rsi
	leaq	.LC73(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	jmp	.L164
.L167:
	addq	$1, -48(%rbp)
.L165:
	cmpq	$3, -48(%rbp)
	jbe	.L168
	movq	$0, -48(%rbp)
	jmp	.L169
.L172:
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	uint_names.1(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC74(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$668, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L170
	movq	-48(%rbp), %rax
	leal	3(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC75(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$669, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L170
	leaq	-1304(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC76(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$670, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L170
	movq	-72(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC70(%rip), %rcx
	leaq	.LC71(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$671, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L170
	movq	-48(%rbp), %rax
	leaq	3(%rax), %rdi
	movq	-1304(%rbp), %rsi
	leaq	.LC72(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$672, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L171
.L170:
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	uint_names.1(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-48(%rbp), %rdx
	leaq	1(%rdx), %rsi
	leaq	.LC73(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	jmp	.L164
.L171:
	addq	$1, -48(%rbp)
.L169:
	cmpq	$4, -48(%rbp)
	jbe	.L172
	leaq	.LC59(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC78(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$678, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L198
	movq	.LC79(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	call	OSSL_PARAM_set_double@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC80(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$679, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L198
	leaq	-1336(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_double@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$680, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L198
	movq	-72(%rbp), %rax
	movq	32(%rax), %rsi
	leaq	.LC82(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movq	%rsi, %r8
	movl	$681, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L198
	movq	-1336(%rbp), %rax
	movsd	.LC79(%rip), %xmm0
	leaq	.LC83(%rip), %rcx
	leaq	.LC84(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movl	$682, %esi
	call	test_double_eq@PLT
	testl	%eax, %eax
	je	.L198
	cmpl	$1, -1348(%rbp)
	jg	.L174
	movsd	-1336(%rbp), %xmm0
	movq	-1328(%rbp), %rax
	leaq	.LC84(%rip), %rcx
	leaq	.LC85(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movl	$683, %esi
	call	test_double_eq@PLT
	testl	%eax, %eax
	je	.L198
.L174:
	movq	$0, -1112(%rbp)
	leaq	.LC61(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC86(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$687, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L175
	leaq	.LC87(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC88(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$688, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L175
	movq	-72(%rbp), %rax
	movq	32(%rax), %rsi
	leaq	.LC89(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6, %r9d
	movq	%rsi, %r8
	movl	$689, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L175
	leaq	-1112(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC90(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$690, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L175
	movq	-1112(%rbp), %rsi
	leaq	.LC87(%rip), %rdi
	leaq	.LC91(%rip), %rcx
	leaq	.LC92(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$691, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L176
.L175:
	movq	-1112(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$692, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L164
.L176:
	movq	-1112(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$695, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, -1112(%rbp)
	leaq	-1112(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$100, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$697, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L199
	leaq	.LC87(%rip), %rdi
	leaq	-1104(%rbp), %rsi
	leaq	.LC91(%rip), %rcx
	leaq	.LC94(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$698, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L199
	leaq	-992(%rbp), %rax
	movq	%rax, -1112(%rbp)
	leaq	.LC63(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC95(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$703, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L200
	leaq	.LC96(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_ptr@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC97(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$704, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L200
	movq	-72(%rbp), %rax
	movq	32(%rax), %rsi
	leaq	.LC98(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7, %r9d
	movq	%rsi, %r8
	movl	$705, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L200
	leaq	-1120(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_ptr@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC99(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$706, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L200
	movq	-1120(%rbp), %rsi
	leaq	.LC96(%rip), %rdi
	leaq	.LC100(%rip), %rcx
	leaq	.LC101(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$707, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L200
	cmpl	$1, -1348(%rbp)
	jg	.L180
	movq	-1112(%rbp), %rdi
	movq	-1120(%rbp), %rsi
	leaq	.LC92(%rip), %rcx
	leaq	.LC101(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$708, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L200
.L180:
	leaq	.LC62(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC102(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$711, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L201
	leaq	.LC103(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC104(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$712, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L201
	movq	-72(%rbp), %rax
	movq	32(%rax), %rsi
	leaq	.LC105(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$10, %r9d
	movq	%rsi, %r8
	movl	$714, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L201
	movq	-72(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 24(%rax)
	leaq	-1320(%rbp), %rdx
	leaq	-1248(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC106(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$718, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L202
	movq	-1320(%rbp), %rsi
	leaq	.LC105(%rip), %rcx
	leaq	.LC107(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$10, %r9d
	movq	%rsi, %r8
	movl	$719, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L202
	movq	-1248(%rbp), %rdi
	leaq	.LC108(%rip), %rcx
	leaq	.LC109(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$10
	leaq	.LC103(%rip), %rsi
	pushq	%rsi
	movl	$10, %r9d
	movq	%rdi, %r8
	movl	$720, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L202
	leaq	-1104(%rbp), %rax
	movq	%rax, -1240(%rbp)
	leaq	-1320(%rbp), %rdx
	leaq	-1240(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$100, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC110(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$724, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L203
	movq	-1320(%rbp), %rsi
	leaq	.LC105(%rip), %rcx
	leaq	.LC107(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$10, %r9d
	movq	%rsi, %r8
	movl	$725, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L203
	movq	-1240(%rbp), %rdi
	leaq	.LC108(%rip), %rcx
	leaq	.LC111(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$10
	leaq	.LC103(%rip), %rsi
	pushq	%rsi
	movl	$10, %r9d
	movq	%rdi, %r8
	movl	$726, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L203
	leaq	-1272(%rbp), %rax
	movq	%rax, -1240(%rbp)
	leaq	.LC64(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC112(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$731, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L204
	leaq	-1280(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_ptr@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC113(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$732, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L204
	movq	-72(%rbp), %rax
	movq	32(%rax), %rsi
	leaq	.LC114(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movq	%rsi, %r8
	movl	$733, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L204
	cmpl	$1, -1348(%rbp)
	jg	.L188
	movq	-1240(%rbp), %rsi
	leaq	-1280(%rbp), %rdi
	leaq	.LC115(%rip), %rcx
	leaq	.LC111(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$734, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L204
.L188:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 24(%rax)
	leaq	-1312(%rbp), %rdx
	leaq	-1256(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_ptr@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC116(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$738, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L205
	movq	-1312(%rbp), %rsi
	leaq	.LC114(%rip), %rcx
	leaq	.LC117(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movq	%rsi, %r8
	movl	$739, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L205
	cmpl	$1, -1348(%rbp)
	jg	.L190
	movq	-1240(%rbp), %rdi
	movq	-1256(%rbp), %rsi
	leaq	.LC111(%rip), %rcx
	leaq	.LC118(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$740, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L205
.L190:
	leaq	.LC60(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC119(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$743, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L206
	leaq	bn_val.0(%rip), %rax
	movl	$0, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	BN_lebin2bn@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC120(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$744, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L206
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC121(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$745, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L206
	movq	-72(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC70(%rip), %rcx
	leaq	.LC71(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$746, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L206
	movq	-72(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 24(%rax)
	leaq	-1344(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC122(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$750, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L207
	movq	-1344(%rbp), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC123(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$751, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L207
	movl	$1, -36(%rbp)
	jmp	.L164
.L197:
	nop
	jmp	.L164
.L198:
	nop
	jmp	.L164
.L199:
	nop
	jmp	.L164
.L200:
	nop
	jmp	.L164
.L201:
	nop
	jmp	.L164
.L202:
	nop
	jmp	.L164
.L203:
	nop
	jmp	.L164
.L204:
	nop
	jmp	.L164
.L205:
	nop
	jmp	.L164
.L206:
	nop
	jmp	.L164
.L207:
	nop
.L164:
	leaq	-880(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	je	.L195
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$756, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L195:
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$757, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-1248(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$758, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-1344(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	test_param_construct, .-test_param_construct
	.section	.rodata
	.align 8
.LC124:
	.string	"OSSL_PARAM_set_int32(param, 1234)"
	.align 8
.LC125:
	.string	"OSSL_PARAM_modified(param + 1)"
	.align 8
.LC126:
	.string	"OSSL_PARAM_set_int32(param + 1, 1)"
	.align 8
.LC127:
	.string	"OSSL_PARAM_set_int32(param, 4321)"
	.align 8
.LC128:
	.string	"OSSL_PARAM_set_int32(param + 1, 2)"
	.text
	.type	test_param_modified, @function
test_param_modified:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	leaq	.LC13(%rip), %rax
	movq	%rax, -128(%rbp)
	movl	$1, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$4, -104(%rbp)
	movq	$-1, -96(%rbp)
	leaq	.LC42(%rip), %rax
	movq	%rax, -88(%rbp)
	movl	$1, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$4, -64(%rbp)
	movq	$-1, -56(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	leaq	-132(%rbp), %rax
	movq	%rax, -112(%rbp)
	leaq	-136(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$773, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L209
	leaq	-128(%rbp), %rax
	movl	$1234, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC124(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$774, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L209
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$775, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L209
	leaq	-128(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC125(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$776, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L209
	leaq	-128(%rbp), %rax
	addq	$40, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC126(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$777, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L209
	leaq	-128(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC125(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$778, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L209
	movl	$0, %eax
	jmp	.L212
.L209:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_set_all_unmodified@PLT
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$781, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L211
	leaq	-128(%rbp), %rax
	movl	$4321, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC127(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$782, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L211
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$783, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L211
	leaq	-128(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC125(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$784, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L211
	leaq	-128(%rbp), %rax
	addq	$40, %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC128(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$785, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L211
	leaq	-128(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC125(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$786, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L211
	movl	$0, %eax
	jmp	.L212
.L211:
	movl	$1, %eax
.L212:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	test_param_modified, .-test_param_modified
	.section	.rodata
.LC129:
	.string	"OSSL_PARAM_dup(NULL)"
	.align 8
.LC130:
	.string	"cp1 = OSSL_PARAM_merge(NULL, param)"
	.align 8
.LC131:
	.string	"p = OSSL_PARAM_locate(cp1, \"a\")"
.LC132:
	.string	"OSSL_PARAM_get_int(p, &val)"
.LC133:
	.string	"val"
	.align 8
.LC134:
	.string	"p = OSSL_PARAM_locate(cp1, \"b\")"
.LC135:
	.string	"2"
	.align 8
.LC136:
	.string	"cp2 = OSSL_PARAM_merge(param, NULL)"
	.align 8
.LC137:
	.string	"p = OSSL_PARAM_locate(cp2, \"a\")"
	.align 8
.LC138:
	.string	"p = OSSL_PARAM_locate(cp2, \"b\")"
.LC139:
	.string	"OSSL_PARAM_merge(NULL, NULL)"
	.text
	.type	test_param_copy_null, @function
test_param_copy_null:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 3, -24
	movl	$1, -60(%rbp)
	movl	$2, -64(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-176(%rax), %rbx
	leaq	-240(%rbp), %rax
	leaq	-60(%rbp), %rdx
	leaq	.LC13(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-208(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-176(%rax), %rbx
	leaq	-240(%rbp), %rax
	leaq	-64(%rbp), %rdx
	leaq	.LC42(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-208(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-176(%rax), %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-208(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	$0, %edi
	call	OSSL_PARAM_dup@PLT
	movq	%rax, %rcx
	leaq	.LC129(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$802, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L214
	leaq	-192(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PARAM_merge@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC130(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$803, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L214
	leaq	.LC13(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC131(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$804, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L214
	leaq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC132(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$805, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L214
	movl	-56(%rbp), %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC133(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$806, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L214
	leaq	.LC42(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC134(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$807, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L214
	leaq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC132(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$808, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L214
	movl	-56(%rbp), %esi
	leaq	.LC135(%rip), %rcx
	leaq	.LC133(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$809, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L214
	leaq	-192(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_merge@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC136(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$810, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L214
	leaq	.LC13(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC137(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$811, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L214
	leaq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC132(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$812, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L214
	movl	-56(%rbp), %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC133(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$813, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L214
	leaq	.LC42(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC138(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$814, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L214
	leaq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC132(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$815, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L214
	movl	-56(%rbp), %esi
	leaq	.LC135(%rip), %rcx
	leaq	.LC133(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$816, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L214
	movl	$0, %esi
	movl	$0, %edi
	call	OSSL_PARAM_merge@PLT
	movq	%rax, %rcx
	leaq	.LC139(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$817, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L214
	movl	$1, %eax
	jmp	.L215
.L214:
	movl	$0, %eax
.L215:
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	test_param_copy_null, .-test_param_copy_null
	.section	.rodata
.LC140:
	.string	"diff1"
.LC141:
	.string	"same"
.LC142:
	.string	"diff2"
	.align 8
.LC143:
	.string	"p = OSSL_PARAM_merge(param, param1)"
	.align 8
.LC144:
	.string	"cp = OSSL_PARAM_locate(p, \"diff1\")"
.LC145:
	.string	"values[0]"
	.align 8
.LC146:
	.string	"cp = OSSL_PARAM_locate(p, \"diff2\")"
.LC147:
	.string	"OSSL_PARAM_get_int(cp, &val)"
.LC148:
	.string	"values[2]"
	.align 8
.LC149:
	.string	"cp = OSSL_PARAM_locate(p, \"same\")"
.LC150:
	.string	"values[3]"
	.text
	.type	test_param_merge, @function
test_param_merge:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$352, %rsp
	movl	$1, -48(%rbp)
	movl	$2, -44(%rbp)
	movl	$3, -40(%rbp)
	movl	$4, -36(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	leaq	-352(%rbp), %rax
	leaq	-48(%rbp), %rdx
	leaq	.LC140(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-352(%rbp), %rax
	leaq	-48(%rbp), %rdx
	addq	$4, %rdx
	leaq	.LC141(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, -136(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-352(%rbp), %rax
	leaq	-48(%rbp), %rdx
	addq	$8, %rdx
	leaq	.LC142(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, -304(%rbp)
	movq	%rdx, -296(%rbp)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -272(%rbp)
	leaq	-352(%rbp), %rax
	leaq	-48(%rbp), %rdx
	addq	$12, %rdx
	leaq	.LC141(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, -264(%rbp)
	movq	%rdx, -256(%rbp)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -248(%rbp)
	movq	%rdx, -240(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -232(%rbp)
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-304(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_merge@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC143(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$836, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L218
	leaq	.LC140(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC144(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$837, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L218
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC132(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$838, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L218
	movl	-48(%rbp), %edi
	movl	-24(%rbp), %esi
	leaq	.LC145(%rip), %rcx
	leaq	.LC133(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$839, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L218
	leaq	.LC142(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC146(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$840, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L218
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC147(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$841, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L218
	movl	-40(%rbp), %edi
	movl	-24(%rbp), %esi
	leaq	.LC148(%rip), %rcx
	leaq	.LC133(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$842, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L218
	leaq	.LC141(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC149(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$843, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L218
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC147(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$844, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L218
	movl	-36(%rbp), %edi
	movl	-24(%rbp), %esi
	leaq	.LC150(%rip), %rcx
	leaq	.LC133(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$845, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L218
	movl	$1, %eax
	jmp	.L219
.L218:
	movl	$0, %eax
.L219:
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	test_param_merge, .-test_param_merge
	.section	.rodata
.LC151:
	.string	"test_param_int"
.LC152:
	.string	"test_param_long"
.LC153:
	.string	"test_param_uint"
.LC154:
	.string	"test_param_ulong"
.LC155:
	.string	"test_param_int32"
.LC156:
	.string	"test_param_uint32"
.LC157:
	.string	"test_param_size_t"
.LC158:
	.string	"test_param_time_t"
.LC159:
	.string	"test_param_int64"
.LC160:
	.string	"test_param_uint64"
.LC161:
	.string	"test_param_bignum"
.LC162:
	.string	"test_param_signed_bignum"
.LC163:
	.string	"test_param_real"
.LC164:
	.string	"test_param_construct"
.LC165:
	.string	"test_param_modified"
.LC166:
	.string	"test_param_copy_null"
.LC167:
	.string	"test_param_merge"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_param_int(%rip), %rsi
	leaq	.LC151(%rip), %rax
	movl	$1, %ecx
	movl	$14, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_param_long(%rip), %rsi
	leaq	.LC152(%rip), %rax
	movl	$1, %ecx
	movl	$14, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_param_uint(%rip), %rsi
	leaq	.LC153(%rip), %rax
	movl	$1, %ecx
	movl	$14, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_param_ulong(%rip), %rsi
	leaq	.LC154(%rip), %rax
	movl	$1, %ecx
	movl	$14, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_param_int32(%rip), %rsi
	leaq	.LC155(%rip), %rax
	movl	$1, %ecx
	movl	$14, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_param_uint32(%rip), %rsi
	leaq	.LC156(%rip), %rax
	movl	$1, %ecx
	movl	$14, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_param_size_t(%rip), %rsi
	leaq	.LC157(%rip), %rax
	movl	$1, %ecx
	movl	$14, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_param_time_t(%rip), %rsi
	leaq	.LC158(%rip), %rax
	movl	$1, %ecx
	movl	$14, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_param_int64(%rip), %rsi
	leaq	.LC159(%rip), %rax
	movl	$1, %ecx
	movl	$14, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_param_uint64(%rip), %rsi
	leaq	.LC160(%rip), %rax
	movl	$1, %ecx
	movl	$14, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_param_bignum(%rip), %rsi
	leaq	.LC161(%rip), %rax
	movl	$1, %ecx
	movl	$14, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_param_signed_bignum(%rip), %rsi
	leaq	.LC162(%rip), %rax
	movl	$1, %ecx
	movl	$14, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_param_real(%rip), %rdx
	leaq	.LC163(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_param_construct(%rip), %rsi
	leaq	.LC164(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_param_modified(%rip), %rdx
	leaq	.LC165(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_param_copy_null(%rip), %rdx
	leaq	.LC166(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_param_merge(%rip), %rdx
	leaq	.LC167(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 32
	.type	params_empty.3, @object
	.size	params_empty.3, 40
params_empty.3:
	.zero	40
	.section	.data.rel.local,"aw"
	.align 32
	.type	int_names.2, @object
	.size	int_names.2, 32
int_names.2:
	.quad	.LC50
	.quad	.LC52
	.quad	.LC54
	.quad	.LC55
	.align 32
	.type	uint_names.1, @object
	.size	uint_names.1, 40
uint_names.1:
	.quad	.LC51
	.quad	.LC53
	.quad	.LC56
	.quad	.LC57
	.quad	.LC58
	.section	.rodata
	.align 16
	.type	bn_val.0, @object
	.size	bn_val.0, 16
bn_val.0:
	.base64	"rHUifYEGeiOm7YfHq/RzIg=="
	.align 8
.LC46:
	.long	-266631570
	.long	1074340345
	.align 8
.LC79:
	.long	1374389535
	.long	1074339512
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

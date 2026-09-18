	.file	"params_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"../test/params_test.c"
	.text
	.type	cleanup_object, @function
cleanup_object:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$94, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$96, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	cleanup_object, .-cleanup_object
	.section	.rodata
	.align 8
.LC1:
	.string	"obj = OPENSSL_zalloc(sizeof(*obj))"
	.align 8
.LC3:
	.string	"4142434445464748494a4b4c4d4e4f505152535455565758595a6162636465666768696a6b6c6d6e6f707172737475767778797a30313233343536373839"
.LC4:
	.string	"BN_hex2bn(&obj->p3, p3_init)"
.LC5:
	.string	"BLAKE2s256"
	.align 8
.LC6:
	.string	"obj->p4 = OPENSSL_strdup(p4_init)"
.LC7:
	.string	"3.3.5"
	.text
	.type	init_object, @function
init_object:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$103, %edx
	movq	%rax, %rsi
	movl	$320, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$103, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L3
	movl	$0, %eax
	jmp	.L4
.L3:
	movq	-8(%rbp), %rax
	movl	$42, (%rax)
	movq	-8(%rbp), %rax
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$108, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	leaq	.LC0(%rip), %rcx
	leaq	.LC5(%rip), %rax
	movl	$110, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$110, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L9
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movabsq	$6278149200998589768, %rcx
	movq	%rcx, (%rax)
	movabsq	$28266736421118071, %rsi
	movq	%rsi, 5(%rax)
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, 304(%rax)
	movq	-8(%rbp), %rax
	jmp	.L4
.L8:
	nop
	jmp	.L6
.L9:
	nop
.L6:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup_object
	movq	$0, -8(%rbp)
	movl	$0, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	init_object, .-init_object
	.section	.rodata
.LC8:
	.string	"p1"
.LC9:
	.string	"p2"
.LC10:
	.string	"p3"
	.align 8
.LC11:
	.string	"obj->p3 = BN_native2bn(params->data, params->data_size, NULL)"
.LC12:
	.string	"p4"
	.align 8
.LC13:
	.string	"obj->p4 = OPENSSL_strndup(params->data, params->data_size)"
.LC14:
	.string	"p5"
.LC15:
	.string	"sizeof(obj->p5)"
.LC16:
	.string	"data_length"
.LC17:
	.string	"p6"
	.text
	.type	raw_set_params, @function
raw_set_params:
.LFB470:
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
	movq	%rax, -8(%rbp)
	jmp	.L11
.L21:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L12
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L13
.L12:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L14
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movsd	(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	jmp	.L13
.L14:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L15
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_native2bn@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$141, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L17
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$145, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$146, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$146, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L18
	movl	$0, %eax
	jmp	.L16
.L18:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	jmp	.L13
.L17:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L19
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strnlen@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rsi
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$256, %r9d
	movq	%rsi, %r8
	movl	$158, %esi
	movq	%rax, %rdi
	call	test_size_t_lt@PLT
	testl	%eax, %eax
	jne	.L20
	movl	$0, %eax
	jmp	.L16
.L20:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	40(%rdx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy@PLT
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	addq	$40, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 296(%rdx)
	jmp	.L13
.L19:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC17(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L13
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 304(%rax)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 312(%rax)
.L13:
	addq	$40, -32(%rbp)
.L11:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L21
	movl	$1, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	raw_set_params, .-raw_set_params
	.section	.rodata
.LC18:
	.string	"params->return_size"
.LC19:
	.string	"params->data_size"
	.text
	.type	raw_get_params, @function
raw_get_params:
.LFB471:
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
	movq	%rax, -8(%rbp)
	jmp	.L23
.L34:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L24
	movq	-32(%rbp), %rax
	movq	$4, 32(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	jmp	.L25
.L24:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L26
	movq	-32(%rbp), %rax
	movq	$8, 32(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movsd	8(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L25
.L26:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L27
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC18(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$184, %esi
	movq	%rax, %rdi
	call	test_size_t_ge@PLT
	testl	%eax, %eax
	jne	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2nativepad@PLT
	jmp	.L25
.L27:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L30
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC18(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$189, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	jne	.L31
	movl	$0, %eax
	jmp	.L29
.L31:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L25
.L30:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L32
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC18(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$194, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	jne	.L33
	movl	$0, %eax
	jmp	.L29
.L33:
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L25
.L32:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC17(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L25
	movq	-8(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	304(%rdx), %rdx
	movq	%rdx, (%rax)
.L25:
	addq	$40, -32(%rbp)
.L23:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L34
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	raw_get_params, .-raw_get_params
	.section	.rodata
	.align 8
.LC20:
	.string	"OSSL_PARAM_get_int(p, &obj->p1)"
	.align 8
.LC21:
	.string	"OSSL_PARAM_get_double(p, &obj->p2)"
	.align 8
.LC22:
	.string	"OSSL_PARAM_get_BN(p, &obj->p3)"
	.align 8
.LC23:
	.string	"OSSL_PARAM_get_utf8_string(p, &obj->p4, 0)"
	.align 8
.LC24:
	.string	"OSSL_PARAM_get_utf8_string(p, &p5_ptr, sizeof(obj->p5))"
	.align 8
.LC25:
	.string	"OSSL_PARAM_get_utf8_ptr(p, &obj->p6)"
	.text
	.type	api_set_params, @function
api_set_params:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC8(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L36
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$215, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L36
	movl	$0, %eax
	jmp	.L37
.L36:
	leaq	.LC9(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L38
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_double@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$218, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L38
	movl	$0, %eax
	jmp	.L37
.L38:
	leaq	.LC10(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L39
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$221, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L39
	movl	$0, %eax
	jmp	.L37
.L39:
	leaq	.LC12(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L40
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$224, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$227, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L40
	movl	$0, %eax
	jmp	.L37
.L40:
	leaq	.LC14(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L41
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$232, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L42
	movl	$0, %eax
	jmp	.L37
.L42:
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 296(%rdx)
.L41:
	leaq	.LC17(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L43
	movq	-8(%rbp), %rax
	leaq	304(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_ptr@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$237, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L44
	movl	$0, %eax
	jmp	.L37
.L44:
	movq	-8(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 312(%rdx)
.L43:
	movl	$1, %eax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	api_set_params, .-api_set_params
	.section	.rodata
	.align 8
.LC26:
	.string	"OSSL_PARAM_set_int(p, obj->p1)"
	.align 8
.LC27:
	.string	"OSSL_PARAM_set_double(p, obj->p2)"
.LC28:
	.string	"OSSL_PARAM_set_BN(p, obj->p3)"
	.align 8
.LC29:
	.string	"OSSL_PARAM_set_utf8_string(p, obj->p4)"
	.align 8
.LC30:
	.string	"OSSL_PARAM_set_utf8_string(p, obj->p5)"
	.align 8
.LC31:
	.string	"OSSL_PARAM_set_utf8_ptr(p, obj->p6)"
	.text
	.type	api_get_params, @function
api_get_params:
.LFB473:
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
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC8(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L46
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$251, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	leaq	.LC9(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L48
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	call	OSSL_PARAM_set_double@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$254, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L48
	movl	$0, %eax
	jmp	.L47
.L48:
	leaq	.LC10(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L49
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$257, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L49
	movl	$0, %eax
	jmp	.L47
.L49:
	leaq	.LC12(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L50
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$260, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L50
	movl	$0, %eax
	jmp	.L47
.L50:
	leaq	.LC14(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L51
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$263, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L51
	movl	$0, %eax
	jmp	.L47
.L51:
	leaq	.LC17(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L52
	movq	-8(%rbp), %rax
	movq	304(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_ptr@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$266, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L52
	movl	$0, %eax
	jmp	.L47
.L52:
	movl	$1, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	api_get_params, .-api_get_params
	.section	.data.rel.ro.local,"aw"
	.align 16
	.type	provider_raw, @object
	.size	provider_raw, 16
provider_raw:
	.quad	raw_set_params
	.quad	raw_get_params
	.align 16
	.type	provider_api, @object
	.size	provider_api, 16
provider_api:
	.quad	api_set_params
	.quad	api_get_params
	.local	app_p1
	.comm	app_p1,4,4
	.local	app_p2
	.comm	app_p2,8,8
	.local	app_p3
	.comm	app_p3,8,8
	.local	bignumbin
	.comm	bignumbin,4096,32
	.local	app_p4
	.comm	app_p4,256,32
	.local	app_p5
	.comm	app_p5,256,32
	.local	app_p6
	.comm	app_p6,8,8
	.local	foo
	.comm	foo,1,1
	.text
	.type	cleanup_app_variables, @function
cleanup_app_variables:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	app_p3(%rip), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, app_p3(%rip)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	cleanup_app_variables, .-cleanup_app_variables
	.section	.rodata
.LC33:
	.string	"deadbeef"
.LC34:
	.string	"Cookie"
	.text
	.type	init_app_variables, @function
init_app_variables:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	call	cleanup_app_variables
	movl	$17, app_p1(%rip)
	movsd	.LC32(%rip), %xmm0
	movsd	%xmm0, app_p2(%rip)
	leaq	.LC33(%rip), %rdx
	leaq	app_p3(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	je	.L56
	movq	app_p3(%rip), %rax
	leaq	bignumbin(%rip), %rcx
	movl	$4096, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2nativepad@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L57
.L56:
	movl	$0, %eax
	jmp	.L58
.L57:
	movl	$1819043144, app_p4(%rip)
	movw	$111, 4+app_p4(%rip)
	movl	$1819438935, app_p5(%rip)
	movw	$100, 4+app_p5(%rip)
	leaq	.LC34(%rip), %rax
	movq	%rax, app_p6(%rip)
	movb	$122, foo(%rip)
	movl	$1, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	init_app_variables, .-init_app_variables
	.section	.rodata
.LC35:
	.string	"foo"
	.section	.data.rel.local,"aw"
	.align 32
	.type	static_raw_params, @object
	.size	static_raw_params, 280
static_raw_params:
	.quad	.LC8
	.long	1
	.zero	4
	.quad	app_p1
	.quad	4
	.quad	0
	.quad	.LC10
	.long	2
	.zero	4
	.quad	bignumbin
	.quad	4096
	.quad	0
	.quad	.LC12
	.long	4
	.zero	4
	.quad	app_p4
	.quad	256
	.quad	0
	.quad	.LC14
	.long	4
	.zero	4
	.quad	app_p5
	.quad	256
	.quad	0
	.quad	.LC17
	.long	6
	.zero	4
	.quad	app_p6
	.quad	6
	.quad	0
	.quad	.LC35
	.long	5
	.zero	4
	.quad	foo
	.quad	1
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.align 32
	.type	static_api_params, @object
	.size	static_api_params, 280
static_api_params:
	.quad	.LC8
	.long	1
	.zero	4
	.quad	app_p1
	.quad	4
	.quad	-1
	.quad	.LC10
	.long	2
	.zero	4
	.quad	bignumbin
	.quad	4096
	.quad	-1
	.quad	.LC12
	.long	4
	.zero	4
	.quad	app_p4
	.quad	256
	.quad	-1
	.quad	.LC14
	.long	4
	.zero	4
	.quad	app_p5
	.quad	256
	.quad	-1
	.quad	.LC17
	.long	6
	.zero	4
	.quad	app_p6
	.quad	6
	.quad	-1
	.quad	.LC35
	.long	5
	.zero	4
	.quad	foo
	.quad	1
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	construct_api_params, @function
construct_api_params:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	$0, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %r12
	leaq	params.1(%rip), %rbx
	leaq	-80(%rbp), %rax
	leaq	app_p1(%rip), %rdx
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%r12,%rbx)
	movq	%rdx, 8(%r12,%rbx)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 16(%r12,%rbx)
	movq	%rdx, 24(%r12,%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%r12,%rbx)
	movq	-24(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %r12
	leaq	params.1(%rip), %rbx
	leaq	-80(%rbp), %rax
	leaq	bignumbin(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	movl	$4096, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_BN@PLT
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%r12,%rbx)
	movq	%rdx, 8(%r12,%rbx)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 16(%r12,%rbx)
	movq	%rdx, 24(%r12,%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%r12,%rbx)
	movq	-24(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %r12
	leaq	params.1(%rip), %rbx
	leaq	-80(%rbp), %rax
	leaq	app_p4(%rip), %rdx
	leaq	.LC12(%rip), %rsi
	movl	$256, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%r12,%rbx)
	movq	%rdx, 8(%r12,%rbx)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 16(%r12,%rbx)
	movq	%rdx, 24(%r12,%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%r12,%rbx)
	movq	-24(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %r12
	leaq	params.1(%rip), %rbx
	leaq	-80(%rbp), %rax
	leaq	app_p5(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	movl	$256, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%r12,%rbx)
	movq	%rdx, 8(%r12,%rbx)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 16(%r12,%rbx)
	movq	%rdx, 24(%r12,%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%r12,%rbx)
	movq	-24(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %r12
	leaq	params.1(%rip), %rbx
	leaq	-80(%rbp), %rax
	leaq	app_p6(%rip), %rdx
	leaq	.LC17(%rip), %rsi
	movl	$7, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_ptr@PLT
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%r12,%rbx)
	movq	%rdx, 8(%r12,%rbx)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 16(%r12,%rbx)
	movq	%rdx, 24(%r12,%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%r12,%rbx)
	movq	-24(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %r12
	leaq	params.1(%rip), %rbx
	leaq	-80(%rbp), %rax
	leaq	foo(%rip), %rdx
	leaq	.LC35(%rip), %rsi
	movl	$1, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%r12,%rbx)
	movq	%rdx, 8(%r12,%rbx)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 16(%r12,%rbx)
	movq	%rdx, 24(%r12,%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%r12,%rbx)
	movq	-24(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %r12
	leaq	params.1(%rip), %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%r12,%rbx)
	movq	%rdx, 8(%r12,%rbx)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 16(%r12,%rbx)
	movq	%rdx, 24(%r12,%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%r12,%rbx)
	leaq	params.1(%rip), %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	construct_api_params, .-construct_api_params
	.section	.data.rel.ro.local
	.align 16
	.type	raw_params, @object
	.size	raw_params, 16
raw_params:
	.quad	static_raw_params
	.quad	0
	.align 16
	.type	api_params, @object
	.size	api_params, 16
api_params:
	.quad	static_api_params
	.quad	construct_api_params
	.section	.rodata
.LC36:
	.string	"raw provider vs raw params"
.LC37:
	.string	"api provider vs api params"
.LC38:
	.string	"raw provider vs api params"
.LC39:
	.string	"api provider vs raw params"
	.section	.data.rel.local
	.align 32
	.type	test_cases, @object
	.size	test_cases, 96
test_cases:
	.quad	provider_raw
	.quad	raw_params
	.quad	.LC36
	.quad	provider_api
	.quad	api_params
	.quad	.LC37
	.quad	provider_raw
	.quad	api_params
	.quad	.LC38
	.quad	provider_api
	.quad	raw_params
	.quad	.LC39
	.section	.rodata
.LC40:
	.string	"obj = init_object()"
	.align 8
.LC41:
	.string	"BN_hex2bn(&verify_p3, p3_init)"
.LC42:
	.string	"prov->get_params(obj, params)"
.LC43:
	.string	"p1_init"
.LC44:
	.string	"app_p1"
.LC45:
	.string	"app_p2_init"
.LC46:
	.string	"app_p2"
	.align 8
.LC47:
	.string	"p = OSSL_PARAM_locate(params, \"p3\")"
	.align 8
.LC48:
	.string	"BN_native2bn(bignumbin, p->return_size, app_p3)"
.LC49:
	.string	"verify_p3"
.LC50:
	.string	"app_p3"
.LC51:
	.string	"p4_init"
.LC52:
	.string	"app_p4"
	.align 8
.LC53:
	.string	"p = OSSL_PARAM_locate(params, \"p5\")"
.LC54:
	.string	"sizeof(p5_init) - 1"
.LC55:
	.string	"p->return_size"
.LC56:
	.string	"Hellow World"
.LC57:
	.string	"p5_init"
.LC58:
	.string	"app_p5"
	.align 8
.LC59:
	.string	"p = OSSL_PARAM_locate(params, \"p6\")"
.LC60:
	.string	"sizeof(p6_init) - 1"
.LC61:
	.string	"p6_init"
.LC62:
	.string	"app_p6"
.LC63:
	.string	"app_foo_init"
.LC64:
	.string	"foo[0]"
	.align 8
.LC65:
	.string	"p = OSSL_PARAM_locate(params, \"foo\")"
.LC66:
	.string	"prov->set_params(obj, params)"
.LC67:
	.string	"sneakpeek->p1"
.LC68:
	.string	"p2_init"
.LC69:
	.string	"sneakpeek->p2"
.LC70:
	.string	"sneakpeek->p3"
.LC71:
	.string	"sneakpeek->p4"
.LC72:
	.string	"sneakpeek->p5"
.LC73:
	.string	"sneakpeek->p6"
	.align 8
.LC74:
	.string	"BN_hex2bn(&verify_p3, app_p3_init)"
.LC75:
	.string	"app_p1_init"
.LC76:
	.string	"Hello"
.LC77:
	.string	"app_p4_init"
.LC78:
	.string	"sizeof(app_p5_init) - 1"
.LC79:
	.string	"World"
.LC80:
	.string	"app_p5_init"
.LC81:
	.string	"sizeof(app_p6_init) - 1"
.LC82:
	.string	"app_p6_init"
	.text
	.type	test_case_variant, @function
test_case_variant:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	call	init_object
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC40(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$447, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L62
	leaq	.LC3(%rip), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$448, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L63
.L62:
	addl	$1, -4(%rbp)
	jmp	.L64
.L63:
	call	init_app_variables
	movq	-64(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$459, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L65
	movl	app_p1(%rip), %esi
	leaq	.LC43(%rip), %rcx
	leaq	.LC44(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$42, %r9d
	movl	%esi, %r8d
	movl	$460, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L65
	movq	app_p2(%rip), %rax
	movsd	.LC32(%rip), %xmm0
	leaq	.LC45(%rip), %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movl	$461, %esi
	call	test_double_eq@PLT
	testl	%eax, %eax
	je	.L65
	leaq	.LC10(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$462, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L65
	movq	app_p3(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	%edx, %esi
	leaq	bignumbin(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	BN_native2bn@PLT
	movq	%rax, %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$463, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L65
	movq	-40(%rbp), %rdi
	movq	app_p3(%rip), %rsi
	leaq	.LC49(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$464, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L65
	leaq	.LC5(%rip), %rdi
	leaq	app_p4(%rip), %rsi
	leaq	.LC51(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$465, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L65
	leaq	.LC14(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC53(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$466, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L65
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	leaq	.LC54(%rip), %rcx
	leaq	.LC55(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$12, %r9d
	movq	%rsi, %r8
	movl	$467, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L65
	leaq	.LC56(%rip), %rdi
	leaq	app_p5(%rip), %rsi
	leaq	.LC57(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$469, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L65
	leaq	.LC17(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC59(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$470, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L65
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	leaq	.LC60(%rip), %rcx
	leaq	.LC55(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$5, %r9d
	movq	%rsi, %r8
	movl	$471, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L65
	movq	app_p6(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	leaq	.LC61(%rip), %rcx
	leaq	.LC62(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$473, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L65
	movzbl	foo(%rip), %eax
	movsbl	%al, %esi
	leaq	.LC63(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$122, %r9d
	movl	%esi, %r8d
	movl	$474, %esi
	movq	%rax, %rdi
	call	test_char_eq@PLT
	testl	%eax, %eax
	je	.L65
	leaq	.LC35(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$475, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L66
.L65:
	addl	$1, -4(%rbp)
.L66:
	call	init_app_variables
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC66(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$484, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L67
	addl	$1, -4(%rbp)
	jmp	.L68
.L67:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	app_p1(%rip), %edi
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	leaq	.LC44(%rip), %rcx
	leaq	.LC67(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$489, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L69
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movsd	.LC2(%rip), %xmm0
	leaq	.LC68(%rip), %rcx
	leaq	.LC69(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movl	$490, %esi
	call	test_double_eq@PLT
	testl	%eax, %eax
	je	.L69
	movq	app_p3(%rip), %rdi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rsi
	leaq	.LC50(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$491, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L69
	movq	-32(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	app_p4(%rip), %rdi
	leaq	.LC52(%rip), %rcx
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$492, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L69
	movq	-32(%rbp), %rax
	leaq	40(%rax), %rsi
	leaq	app_p5(%rip), %rdi
	leaq	.LC58(%rip), %rcx
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$493, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L69
	movq	app_p6(%rip), %rdi
	movq	-32(%rbp), %rax
	movq	304(%rax), %rsi
	leaq	.LC62(%rip), %rcx
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$494, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L68
.L69:
	addl	$1, -4(%rbp)
.L68:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -40(%rbp)
	leaq	.LC33(%rip), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$505, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L70
	addl	$1, -4(%rbp)
	jmp	.L64
.L70:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$510, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L71
	movl	app_p1(%rip), %esi
	leaq	.LC75(%rip), %rcx
	leaq	.LC44(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$17, %r9d
	movl	%esi, %r8d
	movl	$511, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L71
	movq	app_p2(%rip), %rax
	movsd	.LC32(%rip), %xmm0
	leaq	.LC45(%rip), %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movl	$512, %esi
	call	test_double_eq@PLT
	testl	%eax, %eax
	je	.L71
	leaq	.LC10(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$513, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L71
	movq	app_p3(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	%edx, %esi
	leaq	bignumbin(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	BN_native2bn@PLT
	movq	%rax, %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$514, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L71
	movq	-40(%rbp), %rdi
	movq	app_p3(%rip), %rsi
	leaq	.LC49(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$515, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L71
	leaq	.LC76(%rip), %rdi
	leaq	app_p4(%rip), %rsi
	leaq	.LC77(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$516, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L71
	leaq	.LC14(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC53(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$517, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L71
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	leaq	.LC78(%rip), %rcx
	leaq	.LC55(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$5, %r9d
	movq	%rsi, %r8
	movl	$518, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L71
	leaq	.LC79(%rip), %rdi
	leaq	app_p5(%rip), %rsi
	leaq	.LC80(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$520, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L71
	leaq	.LC17(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC59(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$521, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L71
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	leaq	.LC81(%rip), %rcx
	leaq	.LC55(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$6, %r9d
	movq	%rsi, %r8
	movl	$522, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L71
	movq	app_p6(%rip), %rsi
	leaq	.LC34(%rip), %rdi
	leaq	.LC82(%rip), %rcx
	leaq	.LC62(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$524, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L71
	movzbl	foo(%rip), %eax
	movsbl	%al, %esi
	leaq	.LC63(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$122, %r9d
	movl	%esi, %r8d
	movl	$525, %esi
	movq	%rax, %rdi
	call	test_char_eq@PLT
	testl	%eax, %eax
	je	.L71
	leaq	.LC35(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$526, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L73
.L71:
	addl	$1, -4(%rbp)
	jmp	.L64
.L73:
	nop
.L64:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -40(%rbp)
	call	cleanup_app_variables
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup_object
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	test_case_variant, .-test_case_variant
	.section	.rodata
.LC83:
	.string	"Case: %s"
	.text
	.type	test_case, @function
test_case:
.LFB478:
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
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+test_cases(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$540, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	test_cases(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+test_cases(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_case_variant
	testl	%eax, %eax
	je	.L75
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+test_cases(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L76
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	test_cases(%rip), %rax
	movq	(%rdx,%rax), %rbx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+test_cases(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	8(%rax), %rax
	call	*%rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	test_case_variant
	testl	%eax, %eax
	je	.L75
.L76:
	movl	$1, %eax
	jmp	.L78
.L75:
	movl	$0, %eax
.L78:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	test_case, .-test_case
	.section	.rodata
.LC84:
	.string	"int"
.LC85:
	.string	"short"
.LC86:
	.string	"ushort"
.LC87:
	.string	"num"
.LC88:
	.string	"unum"
.LC89:
	.string	"octets"
	.section	.data.rel.ro.local
	.align 32
	.type	params_from_text, @object
	.size	params_from_text, 280
params_from_text:
	.quad	.LC84
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC85
	.long	1
	.zero	4
	.quad	0
	.quad	2
	.quad	-1
	.quad	.LC86
	.long	2
	.zero	4
	.quad	0
	.quad	2
	.quad	-1
	.quad	.LC87
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC88
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC89
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
.LC90:
	.string	""
.LC91:
	.string	"0"
.LC92:
	.string	"101"
.LC93:
	.string	"-102"
.LC94:
	.string	"12A"
.LC95:
	.string	"0x12B"
.LC96:
	.string	"hexint"
.LC97:
	.string	"12C"
.LC98:
	.string	"0x12D"
.LC99:
	.string	"0x7fffffff"
.LC100:
	.string	"2147483647"
.LC101:
	.string	"2147483648"
.LC102:
	.string	"-2147483648"
.LC103:
	.string	"-2147483649"
.LC104:
	.string	"0x7fff"
.LC105:
	.string	"32767"
.LC106:
	.string	"32768"
.LC107:
	.string	"0xffff"
.LC108:
	.string	"65535"
.LC109:
	.string	"65536"
.LC110:
	.string	"0xff"
.LC111:
	.string	"-0xff"
.LC112:
	.string	"0x7f"
.LC113:
	.string	"-0x7f"
.LC114:
	.string	"0x80"
.LC115:
	.string	"-0x80"
.LC116:
	.string	"0x81"
.LC117:
	.string	"-0x81"
	.section	.data.rel.local
	.align 32
	.type	int_from_text_test_cases, @object
	.size	int_from_text_test_cases, 1480
int_from_text_test_cases:
	.quad	.LC84
	.quad	.LC90
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	.LC84
	.quad	.LC91
	.quad	0
	.long	1
	.zero	4
	.quad	4
	.quad	.LC84
	.quad	.LC92
	.quad	101
	.long	1
	.zero	4
	.quad	4
	.quad	.LC84
	.quad	.LC93
	.quad	-102
	.long	1
	.zero	4
	.quad	4
	.quad	.LC84
	.quad	.LC94
	.quad	12
	.long	1
	.zero	4
	.quad	4
	.quad	.LC84
	.quad	.LC95
	.quad	299
	.long	1
	.zero	4
	.quad	4
	.quad	.LC96
	.quad	.LC97
	.quad	300
	.long	1
	.zero	4
	.quad	4
	.quad	.LC96
	.quad	.LC98
	.quad	0
	.long	1
	.zero	4
	.quad	4
	.quad	.LC84
	.quad	.LC99
	.quad	2147483647
	.long	1
	.zero	4
	.quad	4
	.quad	.LC84
	.quad	.LC100
	.quad	2147483647
	.long	1
	.zero	4
	.quad	4
	.quad	.LC84
	.quad	.LC101
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	.LC84
	.quad	.LC102
	.quad	-2147483648
	.long	1
	.zero	4
	.quad	4
	.quad	.LC84
	.quad	.LC103
	.quad	0
	.long	0
	.zero	4
	.quad	4
	.quad	.LC85
	.quad	.LC104
	.quad	32767
	.long	1
	.zero	4
	.quad	2
	.quad	.LC85
	.quad	.LC105
	.quad	32767
	.long	1
	.zero	4
	.quad	2
	.quad	.LC85
	.quad	.LC106
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	.LC86
	.quad	.LC107
	.quad	65535
	.long	1
	.zero	4
	.quad	2
	.quad	.LC86
	.quad	.LC108
	.quad	65535
	.long	1
	.zero	4
	.quad	2
	.quad	.LC86
	.quad	.LC109
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	.LC87
	.quad	.LC91
	.quad	0
	.long	1
	.zero	4
	.quad	1
	.quad	.LC87
	.quad	.LC91
	.quad	0
	.long	1
	.zero	4
	.quad	1
	.quad	.LC87
	.quad	.LC110
	.quad	255
	.long	1
	.zero	4
	.quad	2
	.quad	.LC87
	.quad	.LC111
	.quad	-255
	.long	1
	.zero	4
	.quad	2
	.quad	.LC87
	.quad	.LC112
	.quad	127
	.long	1
	.zero	4
	.quad	1
	.quad	.LC87
	.quad	.LC113
	.quad	-127
	.long	1
	.zero	4
	.quad	1
	.quad	.LC87
	.quad	.LC114
	.quad	128
	.long	1
	.zero	4
	.quad	2
	.quad	.LC87
	.quad	.LC115
	.quad	-128
	.long	1
	.zero	4
	.quad	1
	.quad	.LC87
	.quad	.LC116
	.quad	129
	.long	1
	.zero	4
	.quad	2
	.quad	.LC87
	.quad	.LC117
	.quad	-129
	.long	1
	.zero	4
	.quad	2
	.quad	.LC88
	.quad	.LC110
	.quad	255
	.long	1
	.zero	4
	.quad	1
	.quad	.LC88
	.quad	.LC111
	.quad	-255
	.long	0
	.zero	4
	.quad	0
	.quad	.LC88
	.quad	.LC112
	.quad	127
	.long	1
	.zero	4
	.quad	1
	.quad	.LC88
	.quad	.LC113
	.quad	-127
	.long	0
	.zero	4
	.quad	0
	.quad	.LC88
	.quad	.LC114
	.quad	128
	.long	1
	.zero	4
	.quad	1
	.quad	.LC88
	.quad	.LC115
	.quad	-128
	.long	0
	.zero	4
	.quad	0
	.quad	.LC88
	.quad	.LC116
	.quad	129
	.long	1
	.zero	4
	.quad	1
	.quad	.LC88
	.quad	.LC117
	.quad	-129
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
.LC118:
	.string	"unexpected OSSL_PARAM_allocate_from_text() return for %s \"%s\""
	.align 8
.LC119:
	.string	"unexpected zero size for %s \"%s\""
	.align 8
.LC120:
	.string	"unexpected OSSL_PARAM_get_long() return for %s \"%s\": %d != %d"
	.align 8
.LC121:
	.string	"unexpected result for %s \"%s\":  %li != %li"
	.align 8
.LC122:
	.string	"unexpected size for %s \"%s\":  %d != %d"
	.text
	.type	check_int_from_text, @function
check_int_from_text:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -56(%rbp)
	movq	24(%rbp), %rcx
	movq	16(%rbp), %rdx
	leaq	params_from_text(%rip), %rsi
	leaq	-48(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	OSSL_PARAM_allocate_from_text@PLT
	testl	%eax, %eax
	jne	.L80
	movl	40(%rbp), %eax
	testl	%eax, %eax
	je	.L81
	movq	24(%rbp), %rcx
	movq	16(%rbp), %rax
	leaq	.LC118(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$625, %esi
	movl	$0, %eax
	call	test_error@PLT
.L81:
	movl	40(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L87
.L80:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L83
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$632, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	24(%rbp), %rcx
	movq	16(%rbp), %rax
	leaq	.LC119(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$633, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L87
.L83:
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_long@PLT
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$638, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	40(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	je	.L84
	movl	40(%rbp), %r8d
	movq	24(%rbp), %rsi
	movq	16(%rbp), %rax
	leaq	.LC120(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	subq	$8, %rsp
	movl	-4(%rbp), %ecx
	pushq	%rcx
	movl	%r8d, %r9d
	movq	%rsi, %r8
	movq	%rax, %rcx
	movl	$641, %esi
	movl	$0, %eax
	call	test_error@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L87
.L84:
	movq	32(%rbp), %rdx
	movq	-56(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L85
	movq	-56(%rbp), %rcx
	movq	32(%rbp), %r8
	movq	24(%rbp), %rsi
	movq	16(%rbp), %rax
	leaq	.LC121(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rsi, %r8
	movq	%rax, %rcx
	movl	$646, %esi
	movl	$0, %eax
	call	test_error@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L87
.L85:
	movq	-24(%rbp), %rdx
	movq	48(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L86
	movq	-24(%rbp), %rax
	movl	%eax, %esi
	movq	48(%rbp), %rax
	movl	%eax, %r8d
	movq	24(%rbp), %rcx
	movq	16(%rbp), %rax
	leaq	.LC122(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	subq	$8, %rsp
	pushq	%rsi
	movl	%r8d, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$651, %esi
	movl	$0, %eax
	call	test_error@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L87
.L86:
	movl	40(%rbp), %eax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	check_int_from_text, .-check_int_from_text
	.section	.rodata
.LC123:
	.string	"hexoctets"
	.align 8
.LC124:
	.string	"OSSL_PARAM_allocate_from_text(&param, params_from_text, \"hexoctets\", values[i], 0, NULL)"
.LC125:
	.string	"failure"
.LC126:
	.string	"success"
	.align 8
.LC127:
	.string	"unexpected OSSL_PARAM_allocate_from_text() %s for 'octets' \"%s\""
	.text
	.type	check_octetstr_from_hexstr, @function
check_octetstr_from_hexstr:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L89
.L95:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	values.0(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	andl	$1, %eax
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	call	ERR_clear_error@PLT
	leaq	-64(%rbp), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	cmpl	$0, -16(%rbp)
	je	.L90
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	values.0(%rip), %rax
	movq	(%rdx,%rax), %rdx
	leaq	.LC123(%rip), %rdi
	leaq	params_from_text(%rip), %rsi
	leaq	-64(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	OSSL_PARAM_allocate_from_text@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC124(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$676, %esi
	call	test_true@PLT
	movl	%eax, -12(%rbp)
	jmp	.L91
.L90:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	values.0(%rip), %rax
	movq	(%rdx,%rax), %rdx
	leaq	.LC123(%rip), %rdi
	leaq	params_from_text(%rip), %rsi
	leaq	-64(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	OSSL_PARAM_allocate_from_text@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC124(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$682, %esi
	call	test_false@PLT
	movl	%eax, -12(%rbp)
.L91:
	cmpl	$0, -12(%rbp)
	jne	.L92
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	values.0(%rip), %rax
	movq	(%rdx,%rax), %rcx
	cmpl	$0, -16(%rbp)
	je	.L93
	leaq	.LC125(%rip), %rax
	jmp	.L94
.L93:
	leaq	.LC126(%rip), %rax
.L94:
	leaq	.LC127(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$687, %esi
	movl	$0, %eax
	call	test_error@PLT
	addl	$1, -8(%rbp)
.L92:
	movq	-48(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$691, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addl	$1, -4(%rbp)
.L89:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	values.0(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	jne	.L95
	cmpl	$0, -8(%rbp)
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	check_octetstr_from_hexstr, .-check_octetstr_from_hexstr
	.type	test_allocate_from_text, @function
test_allocate_from_text:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	subq	$8, %rsp
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	int_from_text_test_cases(%rip), %rax
	subq	$40, %rsp
	movq	%rsp, %rdx
	movq	(%rcx,%rax), %rsi
	movq	8(%rcx,%rax), %rdi
	movq	%rsi, (%rdx)
	movq	%rdi, 8(%rdx)
	movq	16(%rcx,%rax), %rsi
	movq	24(%rcx,%rax), %rdi
	movq	%rsi, 16(%rdx)
	movq	%rdi, 24(%rdx)
	movq	32(%rcx,%rax), %rax
	movq	%rax, 32(%rdx)
	call	check_int_from_text
	addq	$48, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	test_allocate_from_text, .-test_allocate_from_text
	.type	test_more_allocate_from_text, @function
test_more_allocate_from_text:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	check_octetstr_from_hexstr
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	test_more_allocate_from_text, .-test_more_allocate_from_text
	.section	.rodata
.LC128:
	.string	"test_case"
.LC129:
	.string	"test_allocate_from_text"
.LC130:
	.string	"test_more_allocate_from_text"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_case(%rip), %rsi
	leaq	.LC128(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_allocate_from_text(%rip), %rsi
	leaq	.LC129(%rip), %rax
	movl	$1, %ecx
	movl	$37, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_more_allocate_from_text(%rip), %rdx
	leaq	.LC130(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	setup_tests, .-setup_tests
	.local	params.1
	.comm	params.1,400,32
	.section	.rodata
.LC131:
	.string	"F"
.LC132:
	.string	"FF"
.LC133:
	.string	"FFF"
.LC134:
	.string	"FFFF"
	.section	.data.rel.local
	.align 32
	.type	values.0, @object
	.size	values.0, 48
values.0:
	.quad	.LC90
	.quad	.LC131
	.quad	.LC132
	.quad	.LC133
	.quad	.LC134
	.quad	0
	.section	.rodata
	.align 8
.LC2:
	.long	-1065151889
	.long	1075388874
	.align 8
.LC32:
	.long	2061584302
	.long	1078431252
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

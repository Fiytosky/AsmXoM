	.file	"ssl_ctx_test.c"
	.text
	.section	.rodata
	.align 32
	.type	version_testdata, @object
	.size	version_testdata, 700
version_testdata:
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	768
	.long	772
	.long	1
	.long	1
	.long	768
	.long	772
	.long	0
	.long	769
	.long	772
	.long	1
	.long	1
	.long	769
	.long	772
	.long	0
	.long	769
	.long	771
	.long	1
	.long	1
	.long	769
	.long	771
	.long	0
	.long	771
	.long	771
	.long	1
	.long	1
	.long	771
	.long	771
	.long	0
	.long	771
	.long	770
	.long	1
	.long	1
	.long	771
	.long	770
	.long	0
	.long	767
	.long	772
	.long	0
	.long	1
	.long	0
	.long	772
	.long	0
	.long	768
	.long	773
	.long	1
	.long	0
	.long	768
	.long	0
	.long	0
	.long	65279
	.long	65277
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	7
	.long	42
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	1
	.long	65279
	.long	65277
	.long	1
	.long	1
	.long	65279
	.long	65277
	.long	1
	.long	65277
	.long	65277
	.long	1
	.long	1
	.long	65277
	.long	65277
	.long	1
	.long	65279
	.long	65279
	.long	1
	.long	1
	.long	65279
	.long	65279
	.long	1
	.long	65277
	.long	65279
	.long	1
	.long	1
	.long	65277
	.long	65279
	.long	1
	.long	65280
	.long	65277
	.long	0
	.long	1
	.long	0
	.long	65277
	.long	1
	.long	65279
	.long	65276
	.long	1
	.long	0
	.long	65279
	.long	0
	.long	1
	.long	769
	.long	772
	.long	1
	.long	1
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	2
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	1
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	769
	.long	772
	.long	1
	.long	1
	.long	0
	.long	0
	.long	2
	.long	65279
	.long	65277
	.long	1
	.long	1
	.long	0
	.long	0
.LC0:
	.string	"Protocol not supported"
.LC1:
	.string	"../test/ssl_ctx_test.c"
.LC2:
	.string	"t.min_ok"
	.align 8
.LC3:
	.string	"SSL_CTX_set_min_proto_version(ctx, t.min_version)"
.LC4:
	.string	"t.max_ok"
	.align 8
.LC5:
	.string	"SSL_CTX_set_max_proto_version(ctx, t.max_version)"
.LC6:
	.string	"t.expected_min"
	.align 8
.LC7:
	.string	"SSL_CTX_get_min_proto_version(ctx)"
.LC8:
	.string	"t.expected_max"
	.align 8
.LC9:
	.string	"SSL_CTX_get_max_proto_version(ctx)"
	.align 8
.LC10:
	.string	"SSL_set_min_proto_version(ssl, t.min_version)"
	.align 8
.LC11:
	.string	"SSL_set_max_proto_version(ssl, t.max_version)"
	.align 8
.LC12:
	.string	"SSL_get_min_proto_version(ssl)"
	.align 8
.LC13:
	.string	"SSL_get_max_proto_version(ssl)"
	.text
	.type	test_set_min_max_version, @function
test_set_min_max_version:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movl	%edi, -84(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	-84(%rbp), %eax
	cltq
	imulq	$28, %rax, %rcx
	leaq	version_testdata(%rip), %rsi
	movq	(%rcx,%rsi), %rax
	movq	8(%rcx,%rsi), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	12(%rcx,%rsi), %rax
	movq	20(%rcx,%rsi), %rdx
	movq	%rax, -68(%rbp)
	movq	%rdx, -60(%rbp)
	movq	$0, -40(%rbp)
	movl	-80(%rbp), %eax
	cmpl	$2, %eax
	je	.L2
	cmpl	$2, %eax
	jg	.L3
	testl	%eax, %eax
	je	.L4
	cmpl	$1, %eax
	je	.L5
	jmp	.L3
.L4:
	call	TLS_client_method@PLT
	movq	%rax, -40(%rbp)
	jmp	.L3
.L5:
	call	DTLS_client_method@PLT
	movq	%rax, -40(%rbp)
	jmp	.L3
.L2:
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, -40(%rbp)
	nop
.L3:
	cmpq	$0, -40(%rbp)
	jne	.L6
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L19
.L6:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L20
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L21
	movl	-68(%rbp), %ebx
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$123, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$110, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L22
	movl	-64(%rbp), %ebx
	movl	-72(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$112, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L23
	movl	-60(%rbp), %ebx
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$130, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$114, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L24
	movl	-56(%rbp), %ebx
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$131, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$116, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L25
	movl	-68(%rbp), %ebx
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$123, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$119, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L26
	movl	-64(%rbp), %ebx
	movl	-72(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$121, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L27
	movl	-60(%rbp), %ebx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$130, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$123, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L28
	movl	-56(%rbp), %ebx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$131, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$125, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L29
	movl	$1, -28(%rbp)
	jmp	.L9
.L20:
	nop
	jmp	.L9
.L21:
	nop
	jmp	.L9
.L22:
	nop
	jmp	.L9
.L23:
	nop
	jmp	.L9
.L24:
	nop
	jmp	.L9
.L25:
	nop
	jmp	.L9
.L26:
	nop
	jmp	.L9
.L27:
	nop
	jmp	.L9
.L28:
	nop
	jmp	.L9
.L29:
	nop
.L9:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-28(%rbp), %eax
.L19:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	test_set_min_max_version, .-test_set_min_max_version
	.section	.rodata
.LC14:
	.string	"test_set_min_max_version"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_set_min_max_version(%rip), %rsi
	leaq	.LC14(%rip), %rax
	movl	$1, %ecx
	movl	$25, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

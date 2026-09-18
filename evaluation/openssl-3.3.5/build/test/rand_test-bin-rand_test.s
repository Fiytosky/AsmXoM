	.file	"rand_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"test_entropy"
	.align 8
.LC1:
	.string	"privctx = RAND_get0_private(NULL)"
.LC2:
	.string	"../test/rand_test.c"
	.align 8
.LC3:
	.string	"EVP_RAND_CTX_set_params(privctx, params)"
.LC4:
	.string	"0"
	.align 8
.LC5:
	.string	"RAND_priv_bytes(outbuf, sizeof(outbuf))"
.LC6:
	.string	"entropy1"
.LC7:
	.string	"outbuf"
	.align 8
.LC8:
	.string	"RAND_priv_bytes(outbuf, sizeof(outbuf) + 1)"
.LC9:
	.string	"entropy1 + sizeof(outbuf)"
.LC10:
	.string	"entropy2"
.LC11:
	.string	"test_nonce"
	.align 8
.LC12:
	.string	"EVP_RAND_nonce(privctx, outbuf, sizeof(outbuf))"
.LC13:
	.string	"nonce"
	.text
	.type	test_rand, @function
test_rand:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	leaq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$50462976, -118(%rbp)
	movw	$1284, -114(%rbp)
	movw	$-257, -121(%rbp)
	movb	$-3, -119(%rbp)
	movl	$50462976, -126(%rbp)
	movb	$4, -122(%rbp)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-192(%rbp), %rax
	leaq	-118(%rbp), %rdx
	leaq	.LC0(%rip), %rsi
	movl	$6, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	$0, %edi
	call	RAND_get0_private@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$30, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L2
	leaq	-112(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$31, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L2
	leaq	-129(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	RAND_priv_bytes@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$32, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L2
	leaq	-129(%rbp), %rdi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$3
	leaq	-118(%rbp), %rsi
	pushq	%rsi
	movl	$3, %r9d
	movq	%rdi, %r8
	movl	$33, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L2
	leaq	-129(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	RAND_priv_bytes@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$34, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L2
	leaq	-129(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	RAND_priv_bytes@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$35, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L2
	leaq	-118(%rbp), %rax
	addq	$3, %rax
	leaq	-129(%rbp), %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	pushq	$3
	pushq	%rax
	movl	$3, %r9d
	movq	%rsi, %r8
	movl	$36, %esi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L3
.L2:
	movl	$0, %eax
	jmp	.L9
.L3:
	leaq	-192(%rbp), %rax
	leaq	-121(%rbp), %rdx
	leaq	.LC0(%rip), %rsi
	movl	$3, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-112(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$42, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L5
	leaq	-129(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	RAND_priv_bytes@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$43, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L5
	leaq	-129(%rbp), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$3
	leaq	-121(%rbp), %rsi
	pushq	%rsi
	movl	$3, %r9d
	movq	%rdi, %r8
	movl	$44, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L6
.L5:
	movl	$0, %eax
	jmp	.L9
.L6:
	leaq	-192(%rbp), %rax
	leaq	-126(%rbp), %rdx
	leaq	.LC11(%rip), %rsi
	movl	$5, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-112(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$49, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L7
	leaq	-129(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_nonce@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$50, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L7
	leaq	-129(%rbp), %rdi
	leaq	.LC13(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$3
	leaq	-126(%rbp), %rsi
	pushq	%rsi
	movl	$3, %r9d
	movq	%rdi, %r8
	movl	$51, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L8
.L7:
	movl	$0, %eax
	jmp	.L9
.L8:
	movl	$1, %eax
.L9:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_rand, .-test_rand
	.section	.rodata
.LC14:
	.string	"err"
.LC15:
	.string	"x"
.LC16:
	.string	"i"
.LC17:
	.string	"j"
	.text
	.type	test_rand_uniform, @function
test_rand_uniform:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -20(%rbp)
	movl	$0, -12(%rbp)
	leaq	-32(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	test_get_libctx@PLT
	testl	%eax, %eax
	je	.L25
	movl	$1, -4(%rbp)
	jmp	.L13
.L17:
	movq	-32(%rbp), %rax
	leaq	-20(%rbp), %rdx
	movl	-4(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_rand_uniform_uint32@PLT
	movl	%eax, -16(%rbp)
	movl	-20(%rbp), %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$67, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L14
	movl	-16(%rbp), %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$68, %esi
	movq	%rax, %rdi
	call	test_uint_ge@PLT
	testl	%eax, %eax
	je	.L14
	movl	-4(%rbp), %edi
	movl	-16(%rbp), %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$69, %esi
	movq	%rax, %rdi
	call	test_uint_lt@PLT
	testl	%eax, %eax
	jne	.L15
.L14:
	movl	$0, %eax
	jmp	.L24
.L15:
	addl	$13, -4(%rbp)
.L13:
	cmpl	$99, -4(%rbp)
	jbe	.L17
	movl	$1, -4(%rbp)
	jmp	.L18
.L23:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.L19
.L22:
	movq	-32(%rbp), %rax
	leaq	-20(%rbp), %rcx
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %esi
	movq	%rax, %rdi
	call	ossl_rand_range_uint32@PLT
	movl	%eax, -16(%rbp)
	movl	-20(%rbp), %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$75, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L20
	movl	-4(%rbp), %edi
	movl	-16(%rbp), %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$76, %esi
	movq	%rax, %rdi
	call	test_uint_ge@PLT
	testl	%eax, %eax
	je	.L20
	movl	-8(%rbp), %edi
	movl	-16(%rbp), %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$77, %esi
	movq	%rax, %rdi
	call	test_uint_lt@PLT
	testl	%eax, %eax
	jne	.L21
.L20:
	movl	$0, %eax
	jmp	.L24
.L21:
	addl	$11, -8(%rbp)
.L19:
	cmpl	$149, -8(%rbp)
	jbe	.L22
	addl	$17, -4(%rbp)
.L18:
	cmpl	$99, -4(%rbp)
	jbe	.L23
	movl	$1, -12(%rbp)
	jmp	.L12
.L25:
	nop
.L12:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-12(%rbp), %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_rand_uniform, .-test_rand_uniform
	.section	.rodata
.LC18:
	.string	"TEST-RAND"
	.align 8
.LC19:
	.string	"RAND_set_DRBG_type(NULL, \"TEST-RAND\", NULL, NULL, NULL)"
.LC20:
	.string	"test_rand"
.LC21:
	.string	"test_rand_uniform"
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
	leaq	.LC18(%rip), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	RAND_set_DRBG_type@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$89, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	leaq	test_rand(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_rand_uniform(%rip), %rdx
	leaq	.LC21(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L28:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"sm4_internal_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"expected"
.LC1:
	.string	"block"
.LC2:
	.string	"../test/sm4_internal_test.c"
.LC3:
	.string	"expected_iter"
.LC4:
	.string	"input"
	.text
	.type	test_sm4_ecb, @function
test_sm4_ecb:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	leaq	-144(%rbp), %rax
	leaq	k.3(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_sm4_set_key@PLT
	movq	input.2(%rip), %rax
	movq	8+input.2(%rip), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	leaq	-144(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sm4_encrypt@PLT
	leaq	-160(%rbp), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$16
	leaq	expected.1(%rip), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$61, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L2
	movl	$0, %eax
	jmp	.L10
.L2:
	movl	$0, -4(%rbp)
	jmp	.L4
.L5:
	leaq	-144(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sm4_encrypt@PLT
	addl	$1, -4(%rbp)
.L4:
	cmpl	$999999, -4(%rbp)
	jne	.L5
	leaq	-160(%rbp), %rdi
	leaq	.LC3(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$16
	leaq	expected_iter.0(%rip), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$67, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L10
.L6:
	movl	$0, -4(%rbp)
	jmp	.L7
.L8:
	leaq	-144(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sm4_decrypt@PLT
	addl	$1, -4(%rbp)
.L7:
	cmpl	$1000000, -4(%rbp)
	jne	.L8
	leaq	-160(%rbp), %rdi
	leaq	.LC4(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$16
	leaq	input.2(%rip), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$73, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	movl	$1, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_sm4_ecb, .-test_sm4_ecb
	.section	.rodata
.LC5:
	.string	"test_sm4_ecb"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_sm4_ecb(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 16
	.type	k.3, @object
	.size	k.3, 16
k.3:
	.base64	"ASNFZ4mrze/+3LqYdlQyEA=="
	.align 16
	.type	input.2, @object
	.size	input.2, 16
input.2:
	.base64	"ASNFZ4mrze/+3LqYdlQyEA=="
	.align 16
	.type	expected.1, @object
	.size	expected.1, 16
expected.1:
	.base64	"aB7fNNIGll6Gs+lPU25CRg=="
	.align 16
	.type	expected_iter.0, @object
	.size	expected_iter.0, 16
expected_iter.0:
	.base64	"WVKYx8b9Jx8EAvgEwz0/Zg=="
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

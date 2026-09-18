	.file	"sm3_internal_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"ossl_sm3_init(&ctx1)"
.LC1:
	.string	"../test/sm3_internal_test.c"
	.align 8
.LC2:
	.string	"ossl_sm3_update(&ctx1, input1, sizeof(input1))"
.LC3:
	.string	"ossl_sm3_final(md1, &ctx1)"
.LC4:
	.string	"expected1"
.LC5:
	.string	"md1"
.LC6:
	.string	"ossl_sm3_init(&ctx2)"
	.align 8
.LC7:
	.string	"ossl_sm3_update(&ctx2, input2, sizeof(input2))"
.LC8:
	.string	"ossl_sm3_final(md2, &ctx2)"
.LC9:
	.string	"expected2"
.LC10:
	.string	"md2"
	.text
	.type	test_sm3, @function
test_sm3:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_sm3_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$62, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L2
	leaq	input1.3(%rip), %rcx
	leaq	-112(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sm3_update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$63, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L2
	leaq	-112(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_sm3_final@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$64, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L2
	leaq	-256(%rbp), %rdi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$32
	leaq	expected1.2(%rip), %rsi
	pushq	%rsi
	movl	$32, %r9d
	movq	%rdi, %r8
	movl	$65, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L3
.L2:
	movl	$0, %eax
	jmp	.L7
.L3:
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_sm3_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$68, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L5
	leaq	input2.1(%rip), %rcx
	leaq	-224(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sm3_update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$69, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L5
	leaq	-224(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_sm3_final@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$70, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L5
	leaq	-288(%rbp), %rdi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$32
	leaq	expected2.0(%rip), %rsi
	pushq	%rsi
	movl	$32, %r9d
	movq	%rdi, %r8
	movl	$71, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L6
.L5:
	movl	$0, %eax
	jmp	.L7
.L6:
	movl	$1, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_sm3, .-test_sm3
	.section	.rodata
.LC11:
	.string	"test_sm3"
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
	leaq	test_sm3(%rip), %rdx
	leaq	.LC11(%rip), %rax
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
	.type	input1.3, @object
	.size	input1.3, 3
input1.3:
	.ascii	"abc"
	.align 32
	.type	expected1.2, @object
	.size	expected1.2, 32
expected1.2:
	.base64	"Zsfw9GLu7dnR8tRr3BDk4kFnxIdc8veiKX2gK49LqOA="
	.align 32
	.type	input2.1, @object
	.size	input2.1, 64
input2.1:
	.ascii	"abcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcd"
	.ascii	"abcd"
	.align 32
	.type	expected2.0, @object
	.size	expected2.0, 32
expected2.0:
	.base64	"3r6f+SJ1uKE4YEiJwY5aTW/bcOU4fldlKT3Lo5wMVzI="
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

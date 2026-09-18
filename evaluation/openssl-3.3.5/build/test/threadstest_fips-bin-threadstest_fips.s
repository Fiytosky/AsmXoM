	.file	"threadstest_fips.c"
	.text
	.type	thread_run, @function
thread_run:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	call	*%rax
	call	OPENSSL_thread_stop@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	thread_run, .-thread_run
	.type	run_thread, @function
run_thread:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	(%rax), %rdx
	leaq	thread_run(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	run_thread, .-run_thread
	.type	wait_for_thread, @function
wait_for_thread:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_join@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	wait_for_thread, .-wait_for_thread
	.local	success
	.comm	success,4,4
	.section	.rodata
.LC0:
	.string	"SHA2-256"
	.align 8
.LC1:
	.string	"md = EVP_MD_fetch(NULL, \"SHA2-256\", NULL)"
.LC2:
	.string	"../test/threadstest_fips.c"
	.text
	.type	thread_fips_rand_fetch, @function
thread_fips_rand_fetch:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$23, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$0, success(%rip)
.L8:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	thread_fips_rand_fetch, .-thread_fips_rand_fetch
	.section	.rodata
	.align 8
.LC3:
	.string	"run_thread(&thread, thread_fips_rand_fetch)"
.LC4:
	.string	"wait_for_thread(thread)"
.LC5:
	.string	"success"
	.text
	.type	test_fips_rand_leak, @function
test_fips_rand_leak:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$1, success(%rip)
	leaq	thread_fips_rand_fetch(%rip), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	run_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$34, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L10
	movl	$0, %eax
	jmp	.L13
.L10:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	wait_for_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$36, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movl	success(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$38, %esi
	call	test_true@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_fips_rand_leak, .-test_fips_rand_leak
	.section	.rodata
.LC6:
	.string	"test_fips_rand_leak"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_fips_rand_leak(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

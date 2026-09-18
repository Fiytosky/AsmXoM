	.file	"mdc2_internal_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"Now is the time for all "
	.section	.data.rel.local,"aw"
	.align 16
	.type	tests, @object
	.size	tests, 24
tests:
	.quad	.LC0
	.base64	"QuUM0iS6zrp2C90r1AkoGg=="
	.section	.rodata
.LC1:
	.string	"md"
.LC2:
	.string	"testdata.expected"
.LC3:
	.string	"../test/mdc2_internal_test.c"
	.align 8
.LC4:
	.string	"mdc2 test %d: unexpected output"
	.text
	.type	test_mdc2, @function
test_mdc2:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -84(%rbp)
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	leaq	tests(%rip), %rcx
	movq	(%rsi,%rcx), %rax
	movq	8(%rsi,%rcx), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	16(%rsi,%rcx), %rax
	movq	%rax, -64(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	MDC2_Init@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	MDC2_Update@PLT
	leaq	-48(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MDC2_Final@PLT
	leaq	-80(%rbp), %rax
	leaq	8(%rax), %rdi
	leaq	.LC1(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	pushq	$16
	leaq	-16(%rbp), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$64, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L2
	movl	-84(%rbp), %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$66, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L4
.L2:
	movl	$1, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_mdc2, .-test_mdc2
	.section	.rodata
.LC5:
	.string	"test_mdc2"
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
	leaq	test_mdc2(%rip), %rsi
	leaq	.LC5(%rip), %rax
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"main.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Global init failed - aborting\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1, -4(%rbp)
	call	test_open_streams@PLT
	call	global_init@PLT
	testl	%eax, %eax
	jne	.L2
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	movl	-4(%rbp), %eax
	jmp	.L3
.L2:
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	setup_test_framework@PLT
	testl	%eax, %eax
	je	.L7
	call	setup_tests@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jle	.L6
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	run_tests@PLT
	movl	%eax, -4(%rbp)
	call	cleanup_tests@PLT
	call	opt_check_usage@PLT
	jmp	.L5
.L6:
	cmpl	$0, -8(%rbp)
	jne	.L8
	call	test_get_options@PLT
	movq	%rax, %rdi
	call	opt_help@PLT
	jmp	.L5
.L7:
	nop
	jmp	.L5
.L8:
	nop
.L5:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	pulldown_test_framework@PLT
	movl	%eax, -4(%rbp)
	call	test_close_streams@PLT
	movl	-4(%rbp), %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

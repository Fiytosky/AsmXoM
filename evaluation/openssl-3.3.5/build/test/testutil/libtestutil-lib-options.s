	.file	"options.c"
	.text
	.local	used
	.comm	used,400,32
	.globl	test_skip_common_options
	.type	test_skip_common_options, @function
test_skip_common_options:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	jmp	.L2
.L5:
	movl	-4(%rbp), %eax
	subl	$500, %eax
	cmpl	$5, %eax
	ja	.L3
	jmp	.L2
.L3:
	movl	$0, %eax
	jmp	.L4
.L2:
	call	opt_next@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L5
	movl	$1, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_skip_common_options, .-test_skip_common_options
	.globl	test_get_argument_count
	.type	test_get_argument_count, @function
test_get_argument_count:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	opt_num_rest@PLT
	cltq
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_get_argument_count, .-test_get_argument_count
	.section	.rodata
.LC0:
	.string	"../test/testutil/options.c"
	.align 8
.LC1:
	.string	"assertion failed: n < sizeof(used)"
	.text
	.globl	test_get_argument
	.type	test_get_argument, @function
test_get_argument:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	call	opt_rest@PLT
	movq	%rax, -24(%rbp)
	cmpq	$399, -40(%rbp)
	jbe	.L9
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$43, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L9:
	movq	-40(%rbp), %rax
	movl	%eax, %ebx
	call	opt_num_rest@PLT
	cmpl	%eax, %ebx
	jge	.L10
	cmpq	$0, -24(%rbp)
	jne	.L11
.L10:
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-40(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	leaq	used(%rip), %rax
	movl	$1, (%rdx,%rax)
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
.L12:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_get_argument, .-test_get_argument
	.section	.rodata
	.align 8
.LC2:
	.string	"Warning ignored command-line argument %d: %s\n"
	.align 8
.LC3:
	.string	"Warning arguments %d and later unchecked\n"
	.text
	.globl	opt_check_usage
	.type	opt_check_usage, @function
opt_check_usage:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	call	opt_rest@PLT
	movq	%rax, -16(%rbp)
	call	opt_num_rest@PLT
	movl	%eax, -20(%rbp)
	cmpl	$100, -20(%rbp)
	jle	.L14
	movl	$100, -8(%rbp)
	jmp	.L15
.L14:
	movl	-20(%rbp), %eax
	movl	%eax, -8(%rbp)
.L15:
	movl	$0, -4(%rbp)
	jmp	.L16
.L18:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	used(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L17
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	leaq	.LC2(%rip), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
.L17:
	addl	$1, -4(%rbp)
.L16:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L18
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.L20
	movl	-4(%rbp), %eax
	leaq	.LC3(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
.L20:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	opt_check_usage, .-opt_check_usage
	.globl	opt_printf_stderr
	.type	opt_printf_stderr, @function
opt_printf_stderr:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L24
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L24:
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_vprintf_stderr@PLT
	movl	%eax, -180(%rbp)
	movl	-180(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	opt_printf_stderr, .-opt_printf_stderr
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

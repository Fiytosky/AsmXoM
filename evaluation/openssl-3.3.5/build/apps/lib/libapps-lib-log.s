	.file	"log.c"
	.text
	.data
	.align 4
	.type	verbosity, @object
	.size	verbosity, 4
verbosity:
	.long	6
	.section	.rodata
.LC0:
	.string	"Invalid verbosity level %d"
	.text
	.globl	log_set_verbosity
	.type	log_set_verbosity, @function
log_set_verbosity:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L2
	cmpl	$8, -12(%rbp)
	jle	.L3
.L2:
	movl	-12(%rbp), %ecx
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rsi
	movl	$-1, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	movl	$0, %eax
	jmp	.L4
.L3:
	movl	-12(%rbp), %eax
	movl	%eax, verbosity(%rip)
	movl	$1, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	log_set_verbosity, .-log_set_verbosity
	.globl	log_get_verbosity
	.type	log_get_verbosity, @function
log_get_verbosity:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	verbosity(%rip), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	log_get_verbosity, .-log_get_verbosity
	.section	.rodata
.LC1:
	.string	"%s: "
.LC2:
	.string	"\n"
	.text
	.type	log_with_prefix, @function
log_with_prefix:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	call	BIO_f_prefix@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	movq	-104(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	leaq	-96(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-96(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$79, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -16(%rbp)
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_vprintf@PLT
	leaq	.LC2(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_pop@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	log_with_prefix, .-log_with_prefix
	.globl	trace_log_message
	.type	trace_log_message, @function
trace_log_message:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movl	%edi, -244(%rbp)
	movq	%rsi, -256(%rbp)
	movl	%edx, -248(%rbp)
	movq	%rcx, -264(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L13
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L13:
	movl	$32, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	cmpl	$0, -244(%rbp)
	js	.L10
	movl	-244(%rbp), %eax
	movl	%eax, %edi
	call	OSSL_trace_enabled@PLT
	testl	%eax, %eax
	je	.L10
	movl	-244(%rbp), %eax
	movl	%eax, %edi
	call	OSSL_trace_begin@PLT
	movq	%rax, -184(%rbp)
	leaq	-232(%rbp), %rcx
	leaq	-208(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rcx)
	leaq	-232(%rbp), %rdx
	movq	-264(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_vprintf@PLT
	leaq	.LC2(%rip), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-184(%rbp), %rdx
	movl	-244(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	OSSL_trace_end@PLT
.L10:
	movl	verbosity(%rip), %eax
	cmpl	%eax, -248(%rbp)
	jg	.L14
	leaq	-208(%rbp), %rdx
	movq	-264(%rbp), %rcx
	movq	-256(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	log_with_prefix
	jmp	.L8
.L14:
	nop
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	trace_log_message, .-trace_log_message
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

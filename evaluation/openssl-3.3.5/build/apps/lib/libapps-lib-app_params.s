	.file	"app_params.c"
	.text
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"unsigned "
.LC2:
	.string	"integer"
.LC3:
	.string	"pointer to a "
.LC4:
	.string	"UTF8 encoded string"
.LC5:
	.string	"pointer to an "
.LC6:
	.string	"octet string"
.LC7:
	.string	"unknown type"
.LC8:
	.string	"%s: "
.LC9:
	.string	"%s%s"
.LC10:
	.string	" [%d]"
.LC11:
	.string	" (arbitrary size)"
.LC12:
	.string	" (max %zu bytes large)"
	.text
	.type	describe_param_type, @function
describe_param_type:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$7, %eax
	je	.L2
	cmpl	$7, %eax
	ja	.L3
	cmpl	$6, %eax
	je	.L4
	cmpl	$6, %eax
	ja	.L3
	cmpl	$5, %eax
	je	.L5
	cmpl	$5, %eax
	ja	.L3
	cmpl	$4, %eax
	je	.L6
	cmpl	$4, %eax
	ja	.L3
	cmpl	$1, %eax
	je	.L7
	cmpl	$2, %eax
	jne	.L3
	leaq	.LC1(%rip), %rax
	movq	%rax, -8(%rbp)
.L7:
	leaq	.LC2(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L8
.L4:
	leaq	.LC3(%rip), %rax
	movq	%rax, -8(%rbp)
.L6:
	leaq	.LC4(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L8
.L2:
	leaq	.LC5(%rip), %rax
	movq	%rax, -8(%rbp)
.L5:
	leaq	.LC6(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L8
.L3:
	leaq	.LC7(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	$1, -20(%rbp)
	nop
.L8:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	leaq	.LC8(%rip), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jle	.L9
	movl	-24(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
	movl	-24(%rbp), %eax
	cltq
	subq	%rax, -48(%rbp)
.L9:
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	leaq	.LC9(%rip), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jle	.L10
	movl	-24(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
	movl	-24(%rbp), %eax
	cltq
	subq	%rax, -48(%rbp)
.L10:
	cmpl	$0, -20(%rbp)
	je	.L11
	movq	-56(%rbp), %rax
	movl	8(%rax), %edx
	leaq	.LC10(%rip), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jle	.L11
	movl	-24(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
	movl	-24(%rbp), %eax
	cltq
	subq	%rax, -48(%rbp)
.L11:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L12
	leaq	.LC11(%rip), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -24(%rbp)
	jmp	.L13
.L12:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	leaq	.LC12(%rip), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -24(%rbp)
.L13:
	cmpl	$0, -24(%rbp)
	jle	.L14
	movl	-24(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
	movl	-24(%rbp), %eax
	cltq
	subq	%rax, -48(%rbp)
.L14:
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	describe_param_type, .-describe_param_type
	.section	.rodata
.LC13:
	.string	"%*sEmpty list of %s (!!!)\n"
.LC14:
	.string	"%*s%s:\n"
.LC15:
	.string	"%*s  %s\n"
	.text
	.globl	print_param_types
	.type	print_param_types, @function
print_param_types:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movl	%edx, -228(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.L17
	movl	$1, %eax
	jmp	.L18
.L17:
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L19
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-216(%rbp), %rdi
	leaq	.LC0(%rip), %rcx
	movl	-228(%rbp), %edx
	leaq	.LC13(%rip), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L20
.L19:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-216(%rbp), %rdi
	leaq	.LC0(%rip), %rcx
	movl	-228(%rbp), %edx
	leaq	.LC14(%rip), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L21
.L22:
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movl	$200, %esi
	movq	%rax, %rdi
	call	describe_param_type
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	-208(%rbp), %rdi
	leaq	.LC0(%rip), %rcx
	movl	-228(%rbp), %edx
	leaq	.LC15(%rip), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$40, -224(%rbp)
.L21:
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L22
.L20:
	movl	$1, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	print_param_types, .-print_param_types
	.section	.rodata
.LC16:
	.string	"%*s%s: "
.LC17:
	.string	"%llu\n"
.LC18:
	.string	"error getting value\n"
.LC19:
	.string	"%lld\n"
.LC20:
	.string	"'%s'\n"
.LC21:
	.string	"<%zu bytes>\n"
	.align 8
.LC22:
	.string	"unknown type (%u) of %zu bytes\n"
	.text
	.globl	print_param_value
	.type	print_param_value, @function
print_param_value:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	leaq	.LC0(%rip), %rsi
	movl	-28(%rbp), %eax
	leaq	.LC16(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$0, %eax
	call	printf@PLT
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$7, %eax
	je	.L24
	cmpl	$7, %eax
	ja	.L25
	cmpl	$6, %eax
	je	.L26
	cmpl	$6, %eax
	ja	.L25
	cmpl	$5, %eax
	je	.L24
	cmpl	$5, %eax
	ja	.L25
	cmpl	$4, %eax
	je	.L27
	cmpl	$4, %eax
	ja	.L25
	cmpl	$1, %eax
	je	.L28
	cmpl	$2, %eax
	jne	.L25
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint64@PLT
	testl	%eax, %eax
	je	.L29
	movq	-16(%rbp), %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC17(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L31
.L29:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC18(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L31
.L28:
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int64@PLT
	testl	%eax, %eax
	je	.L32
	movq	-8(%rbp), %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC19(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L31
.L32:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC18(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L31
.L26:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC20(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L31
.L27:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC20(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L31
.L24:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC21(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L31
.L25:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	nop
.L31:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	print_param_value, .-print_param_value
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

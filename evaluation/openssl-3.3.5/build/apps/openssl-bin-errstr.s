	.file	"errstr.c"
	.text
	.type	lh_FUNCTION_hfn_thunk, @function
lh_FUNCTION_hfn_thunk:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	lh_FUNCTION_hfn_thunk, .-lh_FUNCTION_hfn_thunk
	.type	lh_FUNCTION_cfn_thunk, @function
lh_FUNCTION_cfn_thunk:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	lh_FUNCTION_cfn_thunk, .-lh_FUNCTION_cfn_thunk
	.globl	errstr_options
	.section	.rodata
	.align 8
.LC0:
	.string	"Usage: %s [options] errnum...\n"
.LC1:
	.string	"General options:\n"
.LC2:
	.string	"help"
.LC3:
	.string	"Display this summary"
.LC4:
	.string	"Parameters:\n"
.LC5:
	.string	"errnum"
.LC6:
	.string	"Error number(s) to decode"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	errstr_options, @object
	.size	errstr_options, 144
errstr_options:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC1
	.quad	.LC2
	.long	1
	.long	45
	.quad	.LC3
	.quad	OPT_PARAM_STR
	.long	1
	.long	45
	.quad	.LC4
	.quad	.LC5
	.long	0
	.long	0
	.quad	.LC6
	.quad	0
	.zero	16
	.section	.rodata
.LC7:
	.string	"%s: Use -help for summary.\n"
.LC8:
	.string	"%lx"
.LC9:
	.string	"%s\n"
	.text
	.globl	errstr_main
	.type	errstr_main, @function
errstr_main:
.LFB678:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movl	%edi, -308(%rbp)
	movq	%rsi, -320(%rbp)
	movl	$1, -4(%rbp)
	movq	errstr_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-320(%rbp), %rcx
	movl	-308(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -16(%rbp)
	jmp	.L6
.L11:
	cmpl	$0, -20(%rbp)
	jg	.L7
	cmpl	$-1, -20(%rbp)
	jge	.L8
	jmp	.L6
.L7:
	cmpl	$1, -20(%rbp)
	je	.L9
	jmp	.L6
.L8:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L10
.L9:
	movq	errstr_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -4(%rbp)
	jmp	.L10
.L6:
	call	opt_next@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L11
	movl	$0, %esi
	movl	$2097154, %edi
	call	OPENSSL_init_ssl@PLT
	movl	$0, -4(%rbp)
	call	opt_rest@PLT
	movq	%rax, -320(%rbp)
	jmp	.L12
.L15:
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	leaq	-296(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	testl	%eax, %eax
	jg	.L13
	addl	$1, -4(%rbp)
	jmp	.L14
.L13:
	movq	-296(%rbp), %rax
	leaq	-288(%rbp), %rcx
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ERR_error_string_n@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	-288(%rbp), %rdx
	leaq	.LC9(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L14:
	addq	$8, -320(%rbp)
.L12:
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L15
	nop
.L10:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	errstr_main, .-errstr_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

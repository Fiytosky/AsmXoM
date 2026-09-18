	.file	"info.c"
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
	.globl	info_options
	.section	.rodata
.LC0:
	.string	"General options:\n"
.LC1:
	.string	"help"
.LC2:
	.string	"Display this summary"
.LC3:
	.string	"Output options:\n"
.LC4:
	.string	"configdir"
	.align 8
.LC5:
	.string	"Default configuration file directory"
.LC6:
	.string	"enginesdir"
	.align 8
.LC7:
	.string	"Default engine module directory"
.LC8:
	.string	"modulesdir"
	.align 8
.LC9:
	.string	"Default module directory (other than engine modules)"
.LC10:
	.string	"dsoext"
	.align 8
.LC11:
	.string	"Configured extension for modules"
.LC12:
	.string	"dirnamesep"
.LC13:
	.string	"Directory-filename separator"
.LC14:
	.string	"listsep"
.LC15:
	.string	"List separator character"
.LC16:
	.string	"seeds"
.LC17:
	.string	"Seed sources"
.LC18:
	.string	"cpusettings"
.LC19:
	.string	"CPU settings info"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	info_options, @object
	.size	info_options, 288
info_options:
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	.LC1
	.long	1
	.long	45
	.quad	.LC2
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC3
	.quad	.LC4
	.long	2
	.long	45
	.quad	.LC5
	.quad	.LC6
	.long	3
	.long	45
	.quad	.LC7
	.quad	.LC8
	.long	4
	.long	45
	.quad	.LC9
	.quad	.LC10
	.long	5
	.long	45
	.quad	.LC11
	.quad	.LC12
	.long	6
	.long	45
	.quad	.LC13
	.quad	.LC14
	.long	7
	.long	45
	.quad	.LC15
	.quad	.LC16
	.long	8
	.long	45
	.quad	.LC17
	.quad	.LC18
	.long	9
	.long	45
	.quad	.LC19
	.quad	0
	.zero	16
	.section	.rodata
.LC20:
	.string	"%s: Use -help for summary.\n"
.LC21:
	.string	"%s: Only one item allowed\n"
.LC22:
	.string	"%s: No items chosen\n"
.LC23:
	.string	"%s\n"
	.text
	.globl	info_main
	.type	info_main, @function
info_main:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$1, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	info_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -24(%rbp)
	jmp	.L6
.L18:
	cmpl	$9, -28(%rbp)
	je	.L7
	cmpl	$9, -28(%rbp)
	jg	.L8
	cmpl	$8, -28(%rbp)
	je	.L9
	cmpl	$8, -28(%rbp)
	jg	.L8
	cmpl	$7, -28(%rbp)
	je	.L10
	cmpl	$7, -28(%rbp)
	jg	.L8
	cmpl	$6, -28(%rbp)
	je	.L11
	cmpl	$6, -28(%rbp)
	jg	.L8
	cmpl	$5, -28(%rbp)
	je	.L12
	cmpl	$5, -28(%rbp)
	jg	.L8
	cmpl	$4, -28(%rbp)
	je	.L13
	cmpl	$4, -28(%rbp)
	jg	.L8
	cmpl	$3, -28(%rbp)
	je	.L14
	cmpl	$3, -28(%rbp)
	jg	.L8
	cmpl	$1, -28(%rbp)
	je	.L15
	cmpl	$2, -28(%rbp)
	je	.L16
	jmp	.L8
.L23:
	nop
.L8:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC20(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L17
.L15:
	movq	info_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -4(%rbp)
	jmp	.L17
.L16:
	movl	$1001, -12(%rbp)
	addl	$1, -8(%rbp)
	jmp	.L6
.L14:
	movl	$1002, -12(%rbp)
	addl	$1, -8(%rbp)
	jmp	.L6
.L13:
	movl	$1003, -12(%rbp)
	addl	$1, -8(%rbp)
	jmp	.L6
.L12:
	movl	$1004, -12(%rbp)
	addl	$1, -8(%rbp)
	jmp	.L6
.L11:
	movl	$1005, -12(%rbp)
	addl	$1, -8(%rbp)
	jmp	.L6
.L10:
	movl	$1006, -12(%rbp)
	addl	$1, -8(%rbp)
	jmp	.L6
.L9:
	movl	$1007, -12(%rbp)
	addl	$1, -8(%rbp)
	jmp	.L6
.L7:
	movl	$1008, -12(%rbp)
	addl	$1, -8(%rbp)
	nop
.L6:
	call	opt_next@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L18
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L23
	cmpl	$1, -8(%rbp)
	jle	.L20
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC21(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L8
.L20:
	cmpl	$0, -8(%rbp)
	jne	.L21
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC22(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L8
.L21:
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	OPENSSL_info@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC23(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -4(%rbp)
.L17:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	info_main, .-info_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

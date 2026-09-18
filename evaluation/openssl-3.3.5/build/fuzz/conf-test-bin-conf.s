	.file	"conf.c"
	.text
	.globl	FuzzerInitialize
	.type	FuzzerInitialize, @function
FuzzerInitialize:
.LFB91:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, %esi
	movl	$2, %edi
	call	OPENSSL_init_crypto@PLT
	call	ERR_clear_error@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	FuzzerInitialize, .-FuzzerInitialize
	.section	.rodata
.LC0:
	.string	"../fuzz/conf.c"
	.align 8
.LC1:
	.string	"assertion failed: (size_t)BIO_write(in, buf, len) == len"
	.text
	.globl	FuzzerTestOneInput
	.type	FuzzerTestOneInput, @function
FuzzerTestOneInput:
.LFB92:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L7
.L4:
	movl	$0, %edi
	call	NCONF_new@PLT
	movq	%rax, -8(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cltq
	cmpq	%rax, -48(%rbp)
	je	.L6
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$37, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L6:
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_load_bio@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	call	ERR_clear_error@PLT
	movl	$0, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	FuzzerTestOneInput, .-FuzzerTestOneInput
	.globl	FuzzerCleanup
	.type	FuzzerCleanup, @function
FuzzerCleanup:
.LFB93:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	FuzzerCleanup, .-FuzzerCleanup
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

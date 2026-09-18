	.file	"test-corpus.c"
	.text
	.section	.rodata
.LC0:
	.string	"# %s\n"
.LC1:
	.string	"rb"
.LC2:
	.string	"../fuzz/test-corpus.c"
	.align 8
.LC3:
	.string	"assertion failed: s == (size_t)st.st_size"
	.text
	.type	testfile, @function
testfile:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -184(%rbp)
	leaq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	testl	%eax, %eax
	js	.L9
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	cmpl	$32768, %eax
	jne	.L9
	movq	-184(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	leaq	.LC1(%rip), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L10
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L6
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	%rax, -24(%rbp)
	movq	-128(%rbp), %rdx
	movq	-24(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L7
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rax
	movl	$54, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L7:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	FuzzerTestOneInput@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L6:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	jmp	.L1
.L9:
	nop
	jmp	.L1
.L10:
	nop
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	testfile, .-testfile
	.globl	main
	.type	main, @function
main:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-52(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	FuzzerInitialize@PLT
	movl	$1, -4(%rbp)
	jmp	.L12
.L19:
	movq	-64(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L13
.L17:
	movl	$1, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L14
	movl	$4096, %edi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L21
	movq	-64(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	movb	$47, (%rax)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L14:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	testfile
.L13:
	movq	-64(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_DIR_read@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L17
	jmp	.L16
.L21:
	nop
.L16:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_DIR_end@PLT
	cmpl	$0, -28(%rbp)
	jne	.L18
	movq	-64(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	testfile
.L18:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -4(%rbp)
.L12:
	movl	-52(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L19
	call	FuzzerCleanup@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

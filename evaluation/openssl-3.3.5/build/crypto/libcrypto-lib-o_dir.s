	.file	"o_dir.c"
	.text
	.globl	OPENSSL_DIR_read
	.type	OPENSSL_DIR_read, @function
OPENSSL_DIR_read:
.LFB30:
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
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L2
	cmpq	$0, -48(%rbp)
	jne	.L3
.L2:
	call	__errno_location@PLT
	movl	$22, (%rax)
	movl	$0, %eax
	jmp	.L4
.L3:
	call	__errno_location@PLT
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L5
	movl	$4112, %edi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L6
	call	__errno_location@PLT
	movl	$12, (%rax)
	movl	$0, %eax
	jmp	.L4
.L6:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$4112, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-40(%rbp), %rax
	movq	(%rax), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	opendir@PLT
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L5
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	call	__errno_location@PLT
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L4
.L5:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	readdir@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L7
	movl	$0, %eax
	jmp	.L4
.L7:
	movq	-24(%rbp), %rax
	leaq	19(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	$4097, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
.L4:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	OPENSSL_DIR_read, .-OPENSSL_DIR_read
	.globl	OPENSSL_DIR_end
	.type	OPENSSL_DIR_end, @function
OPENSSL_DIR_end:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L9
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L9
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	closedir@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	cmpl	$-1, -4(%rbp)
	je	.L10
	cmpl	$0, -4(%rbp)
	jne	.L13
	movl	$1, %eax
	jmp	.L12
.L10:
	movl	$0, %eax
	jmp	.L12
.L13:
	nop
.L9:
	call	__errno_location@PLT
	movl	$22, (%rax)
	movl	$0, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	OPENSSL_DIR_end, .-OPENSSL_DIR_end
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

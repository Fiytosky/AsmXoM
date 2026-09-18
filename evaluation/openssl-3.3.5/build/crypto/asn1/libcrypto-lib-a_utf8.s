	.file	"a_utf8.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
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
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
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
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	is_unicode_surrogate, @function
is_unicode_surrogate:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$55295, -8(%rbp)
	jbe	.L6
	cmpq	$57343, -8(%rbp)
	ja	.L6
	movl	$1, %eax
	jmp	.L8
.L6:
	movl	$0, %eax
.L8:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	is_unicode_surrogate, .-is_unicode_surrogate
	.globl	UTF8_getc
	.type	UTF8_getc, @function
UTF8_getc:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	cmpl	$0, -44(%rbp)
	jg	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	js	.L12
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$127, %eax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L13
.L12:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$224, %eax
	cmpl	$192, %eax
	jne	.L14
	cmpl	$1, -44(%rbp)
	jg	.L15
	movl	$-1, %eax
	jmp	.L11
.L15:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$192, %eax
	cmpl	$128, %eax
	je	.L16
	movl	$-3, %eax
	jmp	.L11
.L16:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$6, %eax
	cltq
	andl	$1984, %eax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$63, %eax
	cltq
	orq	%rax, -8(%rbp)
	cmpq	$127, -8(%rbp)
	ja	.L17
	movl	$-4, %eax
	jmp	.L11
.L17:
	movl	$2, -12(%rbp)
	jmp	.L13
.L14:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$240, %eax
	cmpl	$224, %eax
	jne	.L18
	cmpl	$2, -44(%rbp)
	jg	.L19
	movl	$-1, %eax
	jmp	.L11
.L19:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$192, %eax
	cmpl	$128, %eax
	jne	.L20
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$192, %eax
	cmpl	$128, %eax
	je	.L21
.L20:
	movl	$-3, %eax
	jmp	.L11
.L21:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$12, %eax
	cltq
	andl	$61440, %eax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$6, %eax
	andl	$4032, %eax
	cltq
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$63, %eax
	cltq
	orq	%rax, -8(%rbp)
	cmpq	$2047, -8(%rbp)
	ja	.L22
	movl	$-4, %eax
	jmp	.L11
.L22:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	is_unicode_surrogate
	testl	%eax, %eax
	je	.L23
	movl	$-2, %eax
	jmp	.L11
.L23:
	movl	$3, -12(%rbp)
	jmp	.L13
.L18:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$248, %eax
	cmpl	$240, %eax
	jne	.L24
	cmpl	$3, -44(%rbp)
	jg	.L25
	movl	$-1, %eax
	jmp	.L11
.L25:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$192, %eax
	cmpl	$128, %eax
	jne	.L26
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$192, %eax
	cmpl	$128, %eax
	jne	.L26
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$192, %eax
	cmpl	$128, %eax
	je	.L27
.L26:
	movl	$-3, %eax
	jmp	.L11
.L27:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$18, %rax
	andl	$1835008, %eax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$12, %eax
	andl	$258048, %eax
	cltq
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$6, %eax
	andl	$4032, %eax
	cltq
	orq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$63, %eax
	cltq
	orq	%rax, -8(%rbp)
	cmpq	$65535, -8(%rbp)
	ja	.L28
	movl	$-4, %eax
	jmp	.L11
.L28:
	movl	$4, -12(%rbp)
	jmp	.L13
.L24:
	movl	$-2, %eax
	jmp	.L11
.L13:
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	UTF8_getc, .-UTF8_getc
	.globl	UTF8_putc
	.type	UTF8_putc, @function
UTF8_putc:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L30
	movl	$4, -12(%rbp)
	jmp	.L31
.L30:
	cmpl	$0, -12(%rbp)
	jg	.L31
	movl	$-1, %eax
	jmp	.L32
.L31:
	cmpq	$127, -24(%rbp)
	ja	.L33
	cmpq	$0, -8(%rbp)
	je	.L34
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
.L34:
	movl	$1, %eax
	jmp	.L32
.L33:
	cmpq	$2047, -24(%rbp)
	ja	.L35
	cmpl	$1, -12(%rbp)
	jg	.L36
	movl	$-1, %eax
	jmp	.L32
.L36:
	cmpq	$0, -8(%rbp)
	je	.L37
	movq	-24(%rbp), %rax
	shrq	$6, %rax
	andl	$31, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	orl	$-64, %ecx
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	andl	$63, %eax
	orl	$-128, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
.L37:
	movl	$2, %eax
	jmp	.L32
.L35:
	cmpq	$65535, -24(%rbp)
	ja	.L38
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_unicode_surrogate
	testl	%eax, %eax
	je	.L39
	movl	$-2, %eax
	jmp	.L32
.L39:
	cmpl	$2, -12(%rbp)
	jg	.L40
	movl	$-1, %eax
	jmp	.L32
.L40:
	cmpq	$0, -8(%rbp)
	je	.L41
	movq	-24(%rbp), %rax
	shrq	$12, %rax
	andl	$15, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	orl	$-32, %ecx
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$6, %rax
	andl	$63, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	orl	$-128, %ecx
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	andl	$63, %eax
	orl	$-128, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
.L41:
	movl	$3, %eax
	jmp	.L32
.L38:
	cmpq	$1114111, -24(%rbp)
	ja	.L42
	cmpl	$3, -12(%rbp)
	jg	.L43
	movl	$-1, %eax
	jmp	.L32
.L43:
	cmpq	$0, -8(%rbp)
	je	.L44
	movq	-24(%rbp), %rax
	shrq	$18, %rax
	andl	$7, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	orl	$-16, %ecx
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$12, %rax
	andl	$63, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	orl	$-128, %ecx
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$6, %rax
	andl	$63, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	orl	$-128, %ecx
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	andl	$63, %eax
	orl	$-128, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
.L44:
	movl	$4, %eax
	jmp	.L32
.L42:
	movl	$-2, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	UTF8_putc, .-UTF8_putc
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

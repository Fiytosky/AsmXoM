	.file	"a_print.c"
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
	.globl	ASN1_PRINTABLE_type
	.type	ASN1_PRINTABLE_type, @function
ASN1_PRINTABLE_type:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L6
	movl	$19, %eax
	jmp	.L7
.L6:
	cmpl	$0, -28(%rbp)
	jns	.L9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -28(%rbp)
	jmp	.L9
.L11:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2048, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L10
	movl	$1, -4(%rbp)
.L10:
	movl	-12(%rbp), %eax
	cmpl	$127, %eax
	jbe	.L9
	movl	$1, -8(%rbp)
.L9:
	movl	-28(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -28(%rbp)
	testl	%eax, %eax
	jg	.L11
	cmpl	$0, -8(%rbp)
	je	.L12
	movl	$20, %eax
	jmp	.L7
.L12:
	cmpl	$0, -4(%rbp)
	je	.L13
	movl	$22, %eax
	jmp	.L7
.L13:
	movl	$19, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	ASN1_PRINTABLE_type, .-ASN1_PRINTABLE_type
	.globl	ASN1_UNIVERSALSTRING_to_string
	.type	ASN1_UNIVERSALSTRING_to_string, @function
ASN1_UNIVERSALSTRING_to_string:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$28, %eax
	je	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L17
	movl	$0, %eax
	jmp	.L16
.L17:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L18
.L20:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L19
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L19
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L19
	addq	$4, -16(%rbp)
	addl	$4, -4(%rbp)
.L18:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L20
.L19:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L21
	movl	$0, %eax
	jmp	.L16
.L21:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$3, -4(%rbp)
	jmp	.L22
.L23:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rcx), %edx
	movb	%dl, (%rax)
	addl	$4, -4(%rbp)
.L22:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L23
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ASN1_PRINTABLE_type@PLT
	movq	-24(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movl	$1, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	ASN1_UNIVERSALSTRING_to_string, .-ASN1_UNIVERSALSTRING_to_string
	.globl	ASN1_STRING_print
	.type	ASN1_STRING_print, @function
ASN1_STRING_print:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.L25
	movl	$0, %eax
	jmp	.L35
.L25:
	movl	$0, -8(%rbp)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L27
.L33:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$127, %al
	je	.L28
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$31, %al
	jg	.L29
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L29
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	je	.L29
.L28:
	movl	-8(%rbp), %eax
	cltq
	movb	$46, -96(%rbp,%rax)
	jmp	.L30
.L29:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-8(%rbp), %eax
	cltq
	movb	%dl, -96(%rbp,%rax)
.L30:
	addl	$1, -8(%rbp)
	cmpl	$79, -8(%rbp)
	jle	.L31
	movl	-8(%rbp), %edx
	leaq	-96(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jg	.L32
	movl	$0, %eax
	jmp	.L35
.L32:
	movl	$0, -8(%rbp)
.L31:
	addl	$1, -4(%rbp)
.L27:
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L33
	cmpl	$0, -8(%rbp)
	jle	.L34
	movl	-8(%rbp), %edx
	leaq	-96(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jg	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
	movl	$1, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	ASN1_STRING_print, .-ASN1_STRING_print
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

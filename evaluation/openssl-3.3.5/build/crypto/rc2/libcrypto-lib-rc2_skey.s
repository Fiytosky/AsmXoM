	.file	"rc2_skey.c"
	.text
	.section	.rodata
	.align 32
	.type	key_table, @object
	.size	key_table, 256
key_table:
	.base64	"2Xj5xBndte0o6f15SqDYncZ+N4MrdlOOYkxkiESL+6IXmln1h7NPE2FFbY0JgX0yvY9A64a3ewvwlSEiXGtOglTWZZPOYLIcc1bAFKeM8dwSdcofO77k0UI91DCjPLYmb78O2kZpB1cn8h2bvJRDA/gRx/aQ7z7nBsPVL8hmHtcI6OregFLu94Sqcqw1TWoqlhrScVoVSXRLn9BeBBik7MLgQW4PUcvMJJGvUKH0cDmZfDqFI7i0evwCNlslVZcxLV36mOOKkq4F3ykQZ2y6ydMA5s/hnqgsYxYBP1jiiakNODQbqzP/sLtIDF+5sc0uxfPbR+WlnHcKpiBo/n/B"
	.ascii	"\255"
	.text
	.globl	RC2_set_key
	.type	RC2_set_key, @function
RC2_set_key:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	cmpl	$128, -60(%rbp)
	jle	.L2
	movl	$128, -60(%rbp)
.L2:
	cmpl	$0, -64(%rbp)
	jg	.L3
	movl	$1024, -64(%rbp)
.L3:
	cmpl	$1024, -64(%rbp)
	jle	.L4
	movl	$1024, -64(%rbp)
.L4:
	movl	$0, -4(%rbp)
	jmp	.L5
.L6:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -4(%rbp)
.L5:
	movl	-4(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L6
	movl	-60(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	$0, -8(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L7
.L8:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	leaq	key_table(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	-20(%rbp), %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
	addl	$1, -8(%rbp)
.L7:
	cmpl	$127, -4(%rbp)
	jle	.L8
	movl	-64(%rbp), %eax
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, -8(%rbp)
	movl	$128, %eax
	subl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-64(%rbp), %eax
	negl	%eax
	andl	$7, %eax
	movl	$255, %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %edx
	leaq	key_table(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	-20(%rbp), %edx
	movb	%dl, (%rax)
	jmp	.L9
.L10:
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	xorl	-20(%rbp), %eax
	movl	%eax, %edx
	leaq	key_table(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	-20(%rbp), %edx
	movb	%dl, (%rax)
.L9:
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -4(%rbp)
	testl	%eax, %eax
	jne	.L10
	movq	-56(%rbp), %rax
	addq	$252, %rax
	movq	%rax, -16(%rbp)
	movl	$127, -4(%rbp)
	jmp	.L11
.L12:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	-4(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzwl	%cx, %edx
	movl	%edx, (%rax)
	subl	$2, -4(%rbp)
.L11:
	cmpl	$0, -4(%rbp)
	jns	.L12
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	RC2_set_key, .-RC2_set_key
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

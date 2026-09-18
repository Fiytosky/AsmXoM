	.file	"fcrypt.c"
	.text
	.section	.rodata
	.align 32
	.type	con_salt, @object
	.size	con_salt, 128
con_salt:
	.base64	"0tPU1dbX2Nna29zd3t/g4eLj5OXm5+jp6uvs7e7v8PHy8/T19vf4+fr7/P3+/wABAgMEBQYHCAkKCwUGBwgJCgsMDQ4PEBESExQVFhcYGRobHB0eHyAhIiMkJSAhIiMkJSYnKCkqKywtLi8wMTIzNDU2Nzg5Ojs8PT4/QEFCQ0Q="
	.align 32
	.type	cov_2char, @object
	.size	cov_2char, 64
cov_2char:
	.ascii	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuv"
	.ascii	"wxyz"
	.text
	.globl	DES_crypt
	.type	DES_crypt, @function
DES_crypt:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	buff.0(%rip), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DES_fcrypt@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	DES_crypt, .-DES_crypt
	.globl	DES_fcrypt
	.type	DES_fcrypt, @function
DES_fcrypt:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -232(%rbp)
	leaq	-201(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-224(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-232(%rbp), %rax
	movb	%dl, (%rax)
	movq	-232(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L4
	cmpl	$127, -28(%rbp)
	jbe	.L5
.L4:
	movl	$0, %eax
	jmp	.L21
.L5:
	movl	-28(%rbp), %eax
	leaq	con_salt(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%eax, -32(%rbp)
	movq	-224(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-232(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L7
	cmpl	$127, -28(%rbp)
	jbe	.L8
.L7:
	movl	$0, %eax
	jmp	.L21
.L8:
	movl	-28(%rbp), %eax
	leaq	con_salt(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	sall	$6, %eax
	movl	%eax, -36(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L9
.L12:
	movq	-216(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -216(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -13(%rbp)
	cmpb	$0, -13(%rbp)
	je	.L22
	movzbl	-13(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-4(%rbp), %eax
	movb	%dl, -56(%rbp,%rax)
	addl	$1, -4(%rbp)
.L9:
	cmpl	$7, -4(%rbp)
	jbe	.L12
	jmp	.L13
.L22:
	nop
	jmp	.L13
.L14:
	movl	-4(%rbp), %eax
	movb	$0, -56(%rbp,%rax)
	addl	$1, -4(%rbp)
.L13:
	cmpl	$7, -4(%rbp)
	jbe	.L14
	leaq	-192(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DES_set_key_unchecked@PLT
	movl	-36(%rbp), %ecx
	movl	-32(%rbp), %edx
	leaq	-192(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	fcrypt_body@PLT
	movl	-48(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	-40(%rbp), %edx
	movb	%dl, (%rax)
	movl	-40(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-40(%rbp), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-40(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-44(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	-40(%rbp), %edx
	movb	%dl, (%rax)
	movl	-40(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-40(%rbp), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-40(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	$0, -12(%rbp)
	movb	$-128, -14(%rbp)
	movb	$0, -193(%rbp)
	movl	$2, -4(%rbp)
	jmp	.L15
.L20:
	movb	$0, -13(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L16
.L19:
	salb	-13(%rbp)
	movl	-12(%rbp), %eax
	movzbl	-201(%rbp,%rax), %eax
	andb	-14(%rbp), %al
	testb	%al, %al
	je	.L17
	orb	$1, -13(%rbp)
.L17:
	shrb	-14(%rbp)
	cmpb	$0, -14(%rbp)
	jne	.L18
	addl	$1, -12(%rbp)
	movb	$-128, -14(%rbp)
.L18:
	addl	$1, -8(%rbp)
.L16:
	cmpl	$5, -8(%rbp)
	jbe	.L19
	movzbl	-13(%rbp), %eax
	cltq
	leaq	cov_2char(%rip), %rdx
	movzbl	(%rax,%rdx), %ecx
	movl	-4(%rbp), %edx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L15:
	cmpl	$12, -4(%rbp)
	jbe	.L20
	movq	-232(%rbp), %rax
	addq	$13, %rax
	movb	$0, (%rax)
	movq	-232(%rbp), %rax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	DES_fcrypt, .-DES_fcrypt
	.local	buff.0
	.comm	buff.0,14,8
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

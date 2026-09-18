	.file	"quic_types.c"
	.text
	.section	.rodata
.LC0:
	.string	"../ssl/quic/quic_types.c"
	.text
	.globl	ossl_quic_gen_rand_conn_id
	.type	ossl_quic_gen_rand_conn_id, @function
ossl_quic_gen_rand_conn_id:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$20, -16(%rbp)
	jbe	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	leal	0(,%rax,8), %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	cmpl	$1, %eax
	je	.L4
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$23, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524324, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, %eax
	jmp	.L3
.L4:
	movl	$1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	ossl_quic_gen_rand_conn_id, .-ossl_quic_gen_rand_conn_id
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 27
__func__.0:
	.string	"ossl_quic_gen_rand_conn_id"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

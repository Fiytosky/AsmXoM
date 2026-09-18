	.file	"kem_util.c"
	.text
	.section	.rodata
.LC0:
	.string	"DHKEM"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	eckem_modename_id_map, @object
	.size	eckem_modename_id_map, 32
eckem_modename_id_map:
	.long	1
	.zero	4
	.quad	.LC0
	.long	0
	.zero	4
	.quad	0
	.text
	.globl	ossl_eckem_modename2id
	.type	ossl_eckem_modename2id, @function
ossl_eckem_modename2id:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	$0, -8(%rbp)
	jmp	.L4
.L6:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+eckem_modename_id_map(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L5
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	eckem_modename_id_map(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L3
.L5:
	addq	$1, -8(%rbp)
.L4:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+eckem_modename_id_map(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	jne	.L6
	movl	$0, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	ossl_eckem_modename2id, .-ossl_eckem_modename2id
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

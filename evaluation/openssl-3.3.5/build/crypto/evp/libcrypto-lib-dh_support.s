	.file	"dh_support.c"
	.text
	.section	.rodata
.LC0:
	.string	"group"
.LC1:
	.string	"generator"
.LC2:
	.string	"fips186_4"
.LC3:
	.string	"fips186_2"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	dhtype2id, @object
	.size	dhtype2id, 64
dhtype2id:
	.quad	.LC0
	.long	3
	.long	-1
	.quad	.LC1
	.long	0
	.long	0
	.quad	.LC2
	.long	2
	.long	4096
	.quad	.LC3
	.long	1
	.long	4096
	.text
	.globl	ossl_dh_gen_type_id2name
	.type	ossl_dh_gen_type_id2name, @function
ossl_dh_gen_type_id2name:
.LFB320:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L2
.L5:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+dhtype2id(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L3
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	dhtype2id(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L4
.L3:
	addq	$1, -8(%rbp)
.L2:
	cmpq	$3, -8(%rbp)
	jbe	.L5
	movl	$0, %eax
.L4:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	ossl_dh_gen_type_id2name, .-ossl_dh_gen_type_id2name
	.globl	ossl_dh_gen_type_name2id
	.type	ossl_dh_gen_type_name2id, @function
ossl_dh_gen_type_name2id:
.LFB321:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L7
.L11:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	12+dhtype2id(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$-1, %eax
	je	.L8
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	12+dhtype2id(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L9
.L8:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	dhtype2id(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L9
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+dhtype2id(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L10
.L9:
	addq	$1, -8(%rbp)
.L7:
	cmpq	$3, -8(%rbp)
	jbe	.L11
	movl	$-1, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	ossl_dh_gen_type_name2id, .-ossl_dh_gen_type_name2id
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"legacy_ripemd.c"
	.text
	.type	ripe_init, @function
ripe_init:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rdi
	call	RIPEMD160_Init@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	ripe_init, .-ripe_init
	.type	ripe_update, @function
ripe_update:
.LFB414:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	RIPEMD160_Update@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	ripe_update, .-ripe_update
	.type	ripe_final, @function
ripe_final:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	RIPEMD160_Final@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	ripe_final, .-ripe_final
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ripemd160_md, @object
	.size	ripemd160_md, 240
ripemd160_md:
	.long	117
	.long	119
	.long	20
	.zero	4
	.quad	0
	.long	1
	.zero	4
	.quad	ripe_init
	.quad	ripe_update
	.quad	ripe_final
	.quad	0
	.quad	0
	.long	64
	.long	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_ripemd160
	.type	EVP_ripemd160, @function
EVP_ripemd160:
.LFB416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ripemd160_md(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	EVP_ripemd160, .-EVP_ripemd160
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

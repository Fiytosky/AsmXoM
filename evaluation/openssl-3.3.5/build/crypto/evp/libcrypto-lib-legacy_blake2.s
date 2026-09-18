	.file	"legacy_blake2.c"
	.text
	.type	blake2s_init, @function
blake2s_init:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_blake2s_param_init@PLT
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_blake2s_init@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	blake2s_init, .-blake2s_init
	.type	blake2b_init, @function
blake2b_init:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_blake2b_param_init@PLT
	leaq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_blake2b_init@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	blake2b_init, .-blake2b_init
	.type	blake2s_int_init, @function
blake2s_int_init:
.LFB415:
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
	call	blake2s_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	blake2s_int_init, .-blake2s_int_init
	.type	blake2s_int_update, @function
blake2s_int_update:
.LFB416:
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
	call	ossl_blake2s_update@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	blake2s_int_update, .-blake2s_int_update
	.type	blake2s_int_final, @function
blake2s_int_final:
.LFB417:
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
	call	ossl_blake2s_final@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	blake2s_int_final, .-blake2s_int_final
	.type	blake2b_int_init, @function
blake2b_int_init:
.LFB418:
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
	call	blake2b_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	blake2b_int_init, .-blake2b_int_init
	.type	blake2b_int_update, @function
blake2b_int_update:
.LFB419:
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
	call	ossl_blake2b_update@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	blake2b_int_update, .-blake2b_int_update
	.type	blake2b_int_final, @function
blake2b_int_final:
.LFB420:
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
	call	ossl_blake2b_final@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	blake2b_int_final, .-blake2b_int_final
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	blake2b_md, @object
	.size	blake2b_md, 240
blake2b_md:
	.long	1056
	.long	0
	.long	64
	.zero	4
	.quad	0
	.long	1
	.zero	4
	.quad	blake2b_int_init
	.quad	blake2b_int_update
	.quad	blake2b_int_final
	.quad	0
	.quad	0
	.long	128
	.long	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_blake2b512
	.type	EVP_blake2b512, @function
EVP_blake2b512:
.LFB421:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	blake2b_md(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	EVP_blake2b512, .-EVP_blake2b512
	.section	.data.rel.ro.local
	.align 32
	.type	blake2s_md, @object
	.size	blake2s_md, 240
blake2s_md:
	.long	1057
	.long	0
	.long	32
	.zero	4
	.quad	0
	.long	1
	.zero	4
	.quad	blake2s_int_init
	.quad	blake2s_int_update
	.quad	blake2s_int_final
	.quad	0
	.quad	0
	.long	64
	.long	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_blake2s256
	.type	EVP_blake2s256, @function
EVP_blake2s256:
.LFB422:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	blake2s_md(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	EVP_blake2s256, .-EVP_blake2s256
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

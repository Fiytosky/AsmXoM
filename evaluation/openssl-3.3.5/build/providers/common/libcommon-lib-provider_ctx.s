	.file	"provider_ctx.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/common/provider_ctx.c"
	.text
	.globl	ossl_prov_ctx_new
	.type	ossl_prov_ctx_new, @function
ossl_prov_ctx_new:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rax
	movl	$16, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	ossl_prov_ctx_new, .-ossl_prov_ctx_new
	.globl	ossl_prov_ctx_free
	.type	ossl_prov_ctx_free, @function
ossl_prov_ctx_free:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$21, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	ossl_prov_ctx_free, .-ossl_prov_ctx_free
	.globl	ossl_prov_ctx_set0_libctx
	.type	ossl_prov_ctx_set0_libctx, @function
ossl_prov_ctx_set0_libctx:
.LFB38:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L6
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L6:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	ossl_prov_ctx_set0_libctx, .-ossl_prov_ctx_set0_libctx
	.globl	ossl_prov_ctx_set0_handle
	.type	ossl_prov_ctx_set0_handle, @function
ossl_prov_ctx_set0_handle:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L9
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L9:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	ossl_prov_ctx_set0_handle, .-ossl_prov_ctx_set0_handle
	.globl	ossl_prov_ctx_set0_core_bio_method
	.type	ossl_prov_ctx_set0_core_bio_method, @function
ossl_prov_ctx_set0_core_bio_method:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L12
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L12:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	ossl_prov_ctx_set0_core_bio_method, .-ossl_prov_ctx_set0_core_bio_method
	.globl	ossl_prov_ctx_get0_libctx
	.type	ossl_prov_ctx_get0_libctx, @function
ossl_prov_ctx_get0_libctx:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L15:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	ossl_prov_ctx_get0_libctx, .-ossl_prov_ctx_get0_libctx
	.globl	ossl_prov_ctx_get0_handle
	.type	ossl_prov_ctx_get0_handle, @function
ossl_prov_ctx_get0_handle:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
.L18:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	ossl_prov_ctx_get0_handle, .-ossl_prov_ctx_get0_handle
	.globl	ossl_prov_ctx_get0_core_bio_method
	.type	ossl_prov_ctx_get0_core_bio_method, @function
ossl_prov_ctx_get0_core_bio_method:
.LFB43:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L20
	movl	$0, %eax
	jmp	.L21
.L20:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
.L21:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	ossl_prov_ctx_get0_core_bio_method, .-ossl_prov_ctx_get0_core_bio_method
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

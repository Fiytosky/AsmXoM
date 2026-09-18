	.file	"cipher_sm4_xts_hw.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB386:
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
.LFE386:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB387:
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
.LFE387:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	cipher_hw_sm4_xts_generic_initkey, @function
cipher_hw_sm4_xts_generic_initkey:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	shrq	%rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L6
	movq	-8(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_sm4_set_key@PLT
	movq	-8(%rbp), %rax
	movq	ossl_sm4_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 472(%rax)
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_sm4_set_key@PLT
	movq	-8(%rbp), %rax
	movq	ossl_sm4_decrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 472(%rax)
.L7:
	movq	-8(%rbp), %rax
	leaq	320(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_sm4_set_key@PLT
	movq	-8(%rbp), %rax
	movq	ossl_sm4_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 480(%rax)
	movq	-8(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 456(%rax)
	movq	-8(%rbp), %rax
	leaq	320(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 464(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 496(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 488(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	cipher_hw_sm4_xts_generic_initkey, .-cipher_hw_sm4_xts_generic_initkey
	.type	cipher_hw_sm4_xts_copyctx, @function
cipher_hw_sm4_xts_copyctx:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$63, %eax
	movq	%rdx, %rdi
	movq	%rax, %rcx
	rep movsq
	movq	-16(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 456(%rax)
	movq	-16(%rbp), %rax
	leaq	320(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 464(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	cipher_hw_sm4_xts_copyctx, .-cipher_hw_sm4_xts_copyctx
	.section	.data.rel.ro.local,"aw"
	.align 16
	.type	sm4_generic_xts, @object
	.size	sm4_generic_xts, 24
sm4_generic_xts:
	.quad	cipher_hw_sm4_xts_generic_initkey
	.quad	0
	.quad	cipher_hw_sm4_xts_copyctx
	.text
	.globl	ossl_prov_cipher_hw_sm4_xts
	.type	ossl_prov_cipher_hw_sm4_xts, @function
ossl_prov_cipher_hw_sm4_xts:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	sm4_generic_xts(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	ossl_prov_cipher_hw_sm4_xts, .-ossl_prov_cipher_hw_sm4_xts
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

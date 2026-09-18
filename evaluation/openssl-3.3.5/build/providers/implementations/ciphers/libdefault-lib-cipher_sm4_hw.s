	.file	"cipher_sm4_hw.c"
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
	.type	cipher_hw_sm4_initkey, @function
cipher_hw_sm4_initkey:
.LFB402:
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
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$192, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 176(%rax)
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L6
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$1, %eax
	je	.L7
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$2, %eax
	je	.L7
.L6:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_sm4_set_key@PLT
	movq	-24(%rbp), %rax
	movq	ossl_sm4_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 48(%rax)
	jmp	.L8
.L7:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_sm4_set_key@PLT
	movq	-24(%rbp), %rax
	movq	ossl_sm4_decrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 48(%rax)
.L8:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	cipher_hw_sm4_initkey, .-cipher_hw_sm4_initkey
	.type	cipher_hw_sm4_copyctx, @function
cipher_hw_sm4_copyctx:
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
	movl	$40, %eax
	movq	%rdx, %rdi
	movq	%rax, %rcx
	rep movsq
	movq	-16(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 176(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	cipher_hw_sm4_copyctx, .-cipher_hw_sm4_copyctx
	.section	.data.rel.ro,"aw"
	.align 16
	.type	sm4_cbc, @object
	.size	sm4_cbc, 24
sm4_cbc:
	.quad	cipher_hw_sm4_initkey
	.quad	ossl_cipher_hw_generic_cbc
	.quad	cipher_hw_sm4_copyctx
	.text
	.globl	ossl_prov_cipher_hw_sm4_cbc
	.type	ossl_prov_cipher_hw_sm4_cbc, @function
ossl_prov_cipher_hw_sm4_cbc:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	sm4_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	ossl_prov_cipher_hw_sm4_cbc, .-ossl_prov_cipher_hw_sm4_cbc
	.section	.data.rel.ro
	.align 16
	.type	sm4_ecb, @object
	.size	sm4_ecb, 24
sm4_ecb:
	.quad	cipher_hw_sm4_initkey
	.quad	ossl_cipher_hw_generic_ecb
	.quad	cipher_hw_sm4_copyctx
	.text
	.globl	ossl_prov_cipher_hw_sm4_ecb
	.type	ossl_prov_cipher_hw_sm4_ecb, @function
ossl_prov_cipher_hw_sm4_ecb:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	sm4_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	ossl_prov_cipher_hw_sm4_ecb, .-ossl_prov_cipher_hw_sm4_ecb
	.section	.data.rel.ro
	.align 16
	.type	sm4_ofb128, @object
	.size	sm4_ofb128, 24
sm4_ofb128:
	.quad	cipher_hw_sm4_initkey
	.quad	ossl_cipher_hw_generic_ofb128
	.quad	cipher_hw_sm4_copyctx
	.text
	.globl	ossl_prov_cipher_hw_sm4_ofb128
	.type	ossl_prov_cipher_hw_sm4_ofb128, @function
ossl_prov_cipher_hw_sm4_ofb128:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	sm4_ofb128(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	ossl_prov_cipher_hw_sm4_ofb128, .-ossl_prov_cipher_hw_sm4_ofb128
	.section	.data.rel.ro
	.align 16
	.type	sm4_cfb128, @object
	.size	sm4_cfb128, 24
sm4_cfb128:
	.quad	cipher_hw_sm4_initkey
	.quad	ossl_cipher_hw_generic_cfb128
	.quad	cipher_hw_sm4_copyctx
	.text
	.globl	ossl_prov_cipher_hw_sm4_cfb128
	.type	ossl_prov_cipher_hw_sm4_cfb128, @function
ossl_prov_cipher_hw_sm4_cfb128:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	sm4_cfb128(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	ossl_prov_cipher_hw_sm4_cfb128, .-ossl_prov_cipher_hw_sm4_cfb128
	.section	.data.rel.ro
	.align 16
	.type	sm4_ctr, @object
	.size	sm4_ctr, 24
sm4_ctr:
	.quad	cipher_hw_sm4_initkey
	.quad	ossl_cipher_hw_generic_ctr
	.quad	cipher_hw_sm4_copyctx
	.text
	.globl	ossl_prov_cipher_hw_sm4_ctr
	.type	ossl_prov_cipher_hw_sm4_ctr, @function
ossl_prov_cipher_hw_sm4_ctr:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	sm4_ctr(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ossl_prov_cipher_hw_sm4_ctr, .-ossl_prov_cipher_hw_sm4_ctr
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

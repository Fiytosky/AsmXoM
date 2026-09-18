	.file	"cipher_desx_hw.c"
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
	.type	cipher_hw_desx_cbc_initkey, @function
cipher_hw_desx_cbc_initkey:
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
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DES_set_key_unchecked@PLT
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-8(%rbp), %rdx
	addq	$320, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	-8(%rbp), %rdx
	addq	$448, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	cipher_hw_desx_cbc_initkey, .-cipher_hw_desx_cbc_initkey
	.type	cipher_hw_desx_copyctx, @function
cipher_hw_desx_copyctx:
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
	movl	$73, %eax
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
	.size	cipher_hw_desx_copyctx, .-cipher_hw_desx_copyctx
	.type	cipher_hw_desx_cbc, @function
cipher_hw_desx_cbc:
.LFB404:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L9
.L10:
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %ecx
	movq	-8(%rbp), %rax
	leaq	448(%rax), %rdi
	movq	-8(%rbp), %rax
	leaq	320(%rax), %r9
	movq	-24(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-8(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	%rcx
	pushq	%rdi
	movq	%rdx, %rcx
	movl	$1073741824, %edx
	movq	%rax, %rdi
	call	DES_xcbc_encrypt@PLT
	addq	$16, %rsp
	subq	$1073741824, -48(%rbp)
	addq	$1073741824, -40(%rbp)
	addq	$1073741824, -32(%rbp)
.L9:
	cmpq	$1073741823, -48(%rbp)
	ja	.L10
	cmpq	$0, -48(%rbp)
	je	.L11
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edi
	movq	-8(%rbp), %rax
	leaq	448(%rax), %r8
	movq	-8(%rbp), %rax
	leaq	320(%rax), %r9
	movq	-24(%rbp), %rax
	leaq	32(%rax), %r10
	movq	-8(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	%rdi
	pushq	%r8
	movq	%r10, %r8
	movq	%rax, %rdi
	call	DES_xcbc_encrypt@PLT
	addq	$16, %rsp
.L11:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	cipher_hw_desx_cbc, .-cipher_hw_desx_cbc
	.section	.data.rel.ro.local,"aw"
	.align 16
	.type	desx_cbc, @object
	.size	desx_cbc, 24
desx_cbc:
	.quad	cipher_hw_desx_cbc_initkey
	.quad	cipher_hw_desx_cbc
	.quad	cipher_hw_desx_copyctx
	.text
	.globl	ossl_prov_cipher_hw_tdes_desx_cbc
	.type	ossl_prov_cipher_hw_tdes_desx_cbc, @function
ossl_prov_cipher_hw_tdes_desx_cbc:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	desx_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	ossl_prov_cipher_hw_tdes_desx_cbc, .-ossl_prov_cipher_hw_tdes_desx_cbc
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

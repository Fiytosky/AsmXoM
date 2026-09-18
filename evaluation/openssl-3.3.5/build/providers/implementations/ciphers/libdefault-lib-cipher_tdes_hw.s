	.file	"cipher_tdes_hw.c"
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
	.globl	ossl_cipher_hw_tdes_ede3_initkey
	.type	ossl_cipher_hw_tdes_ede3_initkey, @function
ossl_cipher_hw_tdes_ede3_initkey:
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
	movq	$0, 576(%rax)
	movq	-8(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DES_set_key_unchecked@PLT
	movq	-8(%rbp), %rax
	leaq	320(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DES_set_key_unchecked@PLT
	movq	-8(%rbp), %rax
	leaq	448(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DES_set_key_unchecked@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	ossl_cipher_hw_tdes_ede3_initkey, .-ossl_cipher_hw_tdes_ede3_initkey
	.globl	ossl_cipher_hw_tdes_copyctx
	.type	ossl_cipher_hw_tdes_copyctx, @function
ossl_cipher_hw_tdes_copyctx:
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
	.size	ossl_cipher_hw_tdes_copyctx, .-ossl_cipher_hw_tdes_copyctx
	.globl	ossl_cipher_hw_tdes_cbc
	.type	ossl_cipher_hw_tdes_cbc, @function
ossl_cipher_hw_tdes_cbc:
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
	movq	-8(%rbp), %rax
	movq	576(%rax), %rax
	testq	%rax, %rax
	je	.L11
	movq	-8(%rbp), %rax
	movq	576(%rax), %r9
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movl	$1, %eax
	jmp	.L10
.L12:
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %ecx
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	leaq	448(%rax), %r9
	movq	-8(%rbp), %rax
	leaq	320(%rax), %r8
	movq	-8(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	%rcx
	pushq	%rdi
	movq	%rdx, %rcx
	movl	$1073741824, %edx
	movq	%rax, %rdi
	call	DES_ede3_cbc_encrypt@PLT
	addq	$16, %rsp
	subq	$1073741824, -48(%rbp)
	addq	$1073741824, -40(%rbp)
	addq	$1073741824, -32(%rbp)
.L11:
	cmpq	$1073741823, -48(%rbp)
	ja	.L12
	cmpq	$0, -48(%rbp)
	je	.L13
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edi
	movq	-24(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-8(%rbp), %rax
	leaq	448(%rax), %r9
	movq	-8(%rbp), %rax
	leaq	320(%rax), %r10
	movq	-8(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	%rdi
	pushq	%r8
	movq	%r10, %r8
	movq	%rax, %rdi
	call	DES_ede3_cbc_encrypt@PLT
	addq	$16, %rsp
.L13:
	movl	$1, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	ossl_cipher_hw_tdes_cbc, .-ossl_cipher_hw_tdes_cbc
	.globl	ossl_cipher_hw_tdes_ecb
	.type	ossl_cipher_hw_tdes_ecb, @function
ossl_cipher_hw_tdes_ecb:
.LFB405:
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
	movq	%rax, -16(%rbp)
	cmpq	$7, -48(%rbp)
	ja	.L15
	movl	$1, %eax
	jmp	.L16
.L15:
	movq	$0, -8(%rbp)
	subq	$8, -48(%rbp)
	jmp	.L17
.L18:
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %r8d
	movq	-16(%rbp), %rax
	leaq	448(%rax), %r10
	movq	-16(%rbp), %rax
	leaq	320(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	addq	%rax, %rsi
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	addq	%rdi, %rax
	movl	%r8d, %r9d
	movq	%r10, %r8
	movq	%rax, %rdi
	call	DES_ecb3_encrypt@PLT
	addq	$8, -8(%rbp)
.L17:
	movq	-8(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L18
	movl	$1, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	ossl_cipher_hw_tdes_ecb, .-ossl_cipher_hw_tdes_ecb
	.section	.data.rel.ro,"aw"
	.align 16
	.type	ede3_ecb, @object
	.size	ede3_ecb, 24
ede3_ecb:
	.quad	ossl_cipher_hw_tdes_ede3_initkey
	.quad	ossl_cipher_hw_tdes_ecb
	.quad	ossl_cipher_hw_tdes_copyctx
	.text
	.globl	ossl_prov_cipher_hw_tdes_ede3_ecb
	.type	ossl_prov_cipher_hw_tdes_ede3_ecb, @function
ossl_prov_cipher_hw_tdes_ede3_ecb:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ede3_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	ossl_prov_cipher_hw_tdes_ede3_ecb, .-ossl_prov_cipher_hw_tdes_ede3_ecb
	.section	.data.rel.ro
	.align 16
	.type	ede3_cbc, @object
	.size	ede3_cbc, 24
ede3_cbc:
	.quad	ossl_cipher_hw_tdes_ede3_initkey
	.quad	ossl_cipher_hw_tdes_cbc
	.quad	ossl_cipher_hw_tdes_copyctx
	.text
	.globl	ossl_prov_cipher_hw_tdes_ede3_cbc
	.type	ossl_prov_cipher_hw_tdes_ede3_cbc, @function
ossl_prov_cipher_hw_tdes_ede3_cbc:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ede3_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	ossl_prov_cipher_hw_tdes_ede3_cbc, .-ossl_prov_cipher_hw_tdes_ede3_cbc
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

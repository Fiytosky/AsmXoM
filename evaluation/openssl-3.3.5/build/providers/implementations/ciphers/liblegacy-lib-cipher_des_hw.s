	.file	"cipher_des_hw.c"
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
	.type	cipher_hw_des_initkey, @function
cipher_hw_des_initkey:
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
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	addq	$192, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 320(%rax)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DES_set_key_unchecked@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	cipher_hw_des_initkey, .-cipher_hw_des_initkey
	.type	cipher_hw_des_copyctx, @function
cipher_hw_des_copyctx:
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
	movl	$41, %eax
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
	.size	cipher_hw_des_copyctx, .-cipher_hw_des_copyctx
	.type	cipher_hw_des_ecb_cipher, @function
cipher_hw_des_ecb_cipher:
.LFB404:
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
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	addq	$192, %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L9
	movl	$1, %eax
	jmp	.L10
.L9:
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -64(%rbp)
	jmp	.L11
.L12:
	movq	-40(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edx
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rax
	leaq	(%rcx,%rax), %rdi
	movq	-24(%rbp), %rax
	movl	%edx, %ecx
	movq	%rax, %rdx
	call	DES_ecb_encrypt@PLT
	movq	-16(%rbp), %rax
	addq	%rax, -8(%rbp)
.L11:
	movq	-8(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	jnb	.L12
	movl	$1, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	cipher_hw_des_ecb_cipher, .-cipher_hw_des_ecb_cipher
	.type	cipher_hw_des_cbc_cipher, @function
cipher_hw_des_cbc_cipher:
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
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$192, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	320(%rax), %rax
	testq	%rax, %rax
	je	.L16
	movq	-8(%rbp), %rax
	movq	320(%rax), %r9
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movl	$1, %eax
	jmp	.L15
.L17:
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %ecx
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%ecx, %r9d
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$1073741824, %edx
	movq	%rax, %rdi
	call	DES_ncbc_encrypt@PLT
	subq	$1073741824, -48(%rbp)
	addq	$1073741824, -40(%rbp)
	addq	$1073741824, -32(%rbp)
.L16:
	cmpq	$1073741823, -48(%rbp)
	ja	.L17
	cmpq	$0, -48(%rbp)
	je	.L18
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edi
	movq	-24(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r9d
	movq	%rax, %rdi
	call	DES_ncbc_encrypt@PLT
.L18:
	movl	$1, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	cipher_hw_des_cbc_cipher, .-cipher_hw_des_cbc_cipher
	.type	cipher_hw_des_ofb64_cipher, @function
cipher_hw_des_ofb64_cipher:
.LFB406:
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
	movl	160(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	addq	$192, %rax
	movq	%rax, -8(%rbp)
	jmp	.L20
.L21:
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdi
	leaq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$1073741824, %edx
	movq	%rax, %rdi
	call	DES_ofb64_encrypt@PLT
	subq	$1073741824, -48(%rbp)
	addq	$1073741824, -40(%rbp)
	addq	$1073741824, -32(%rbp)
.L20:
	cmpq	$1073741823, -48(%rbp)
	ja	.L21
	cmpq	$0, -48(%rbp)
	je	.L22
	movq	-24(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-48(%rbp), %rdx
	leaq	-12(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	DES_ofb64_encrypt@PLT
.L22:
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 160(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	cipher_hw_des_ofb64_cipher, .-cipher_hw_des_ofb64_cipher
	.type	cipher_hw_des_cfb64_cipher, @function
cipher_hw_des_cfb64_cipher:
.LFB407:
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
	movq	%rcx, -64(%rbp)
	movq	$1073741824, -8(%rbp)
	movq	-40(%rbp), %rax
	addq	$192, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	160(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L26
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L26
.L28:
	movq	-40(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edi
	movq	-40(%rbp), %rax
	leaq	32(%rax), %r10
	movq	-8(%rbp), %rdx
	leaq	-20(%rbp), %r8
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%r8, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	DES_cfb64_encrypt@PLT
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	subq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L26
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.L26:
	cmpq	$0, -64(%rbp)
	je	.L27
	movq	-64(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L28
.L27:
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 160(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	cipher_hw_des_cfb64_cipher, .-cipher_hw_des_cfb64_cipher
	.type	cipher_hw_des_cfb1_cipher, @function
cipher_hw_des_cfb1_cipher:
.LFB408:
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
	movq	%rcx, -64(%rbp)
	movq	$134217728, -16(%rbp)
	movq	-40(%rbp), %rax
	addq	$192, %rax
	movq	%rax, -24(%rbp)
	movb	$0, -26(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L32
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L32
.L36:
	movq	$0, -8(%rbp)
	jmp	.L33
.L34:
	movq	-8(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	notl	%eax
	andl	$7, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	sall	$7, %eax
	movb	%al, -25(%rbp)
	movq	-40(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-24(%rbp), %rcx
	leaq	-26(%rbp), %rsi
	leaq	-25(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	DES_cfb_encrypt@PLT
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	andl	$7, %eax
	movl	$-129, %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	%eax, %esi
	movzbl	-26(%rbp), %eax
	movzbl	%al, %eax
	andl	$128, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	andl	$7, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	orl	%eax, %esi
	movl	%esi, %ecx
	movq	-8(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L33:
	movq	-16(%rbp), %rax
	salq	$3, %rax
	cmpq	%rax, -8(%rbp)
	jb	.L34
	movq	-16(%rbp), %rax
	subq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	addq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L32
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
.L32:
	cmpq	$0, -64(%rbp)
	je	.L35
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L36
.L35:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	cipher_hw_des_cfb1_cipher, .-cipher_hw_des_cfb1_cipher
	.type	cipher_hw_des_cfb8_cipher, @function
cipher_hw_des_cfb8_cipher:
.LFB409:
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
	addq	$192, %rax
	movq	%rax, -8(%rbp)
	jmp	.L39
.L40:
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$1073741824, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	DES_cfb_encrypt@PLT
	addq	$16, %rsp
	subq	$1073741824, -48(%rbp)
	addq	$1073741824, -40(%rbp)
	addq	$1073741824, -32(%rbp)
.L39:
	cmpq	$1073741823, -48(%rbp)
	ja	.L40
	cmpq	$0, -48(%rbp)
	je	.L41
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %ecx
	movq	-24(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	DES_cfb_encrypt@PLT
	addq	$16, %rsp
.L41:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	cipher_hw_des_cfb8_cipher, .-cipher_hw_des_cfb8_cipher
	.section	.data.rel.ro.local,"aw"
	.align 16
	.type	des_ecb, @object
	.size	des_ecb, 24
des_ecb:
	.quad	cipher_hw_des_initkey
	.quad	cipher_hw_des_ecb_cipher
	.quad	cipher_hw_des_copyctx
	.text
	.globl	ossl_prov_cipher_hw_des_ecb
	.type	ossl_prov_cipher_hw_des_ecb, @function
ossl_prov_cipher_hw_des_ecb:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	ossl_prov_cipher_hw_des_ecb, .-ossl_prov_cipher_hw_des_ecb
	.section	.data.rel.ro.local
	.align 16
	.type	des_cbc, @object
	.size	des_cbc, 24
des_cbc:
	.quad	cipher_hw_des_initkey
	.quad	cipher_hw_des_cbc_cipher
	.quad	cipher_hw_des_copyctx
	.text
	.globl	ossl_prov_cipher_hw_des_cbc
	.type	ossl_prov_cipher_hw_des_cbc, @function
ossl_prov_cipher_hw_des_cbc:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	ossl_prov_cipher_hw_des_cbc, .-ossl_prov_cipher_hw_des_cbc
	.section	.data.rel.ro.local
	.align 16
	.type	des_ofb64, @object
	.size	des_ofb64, 24
des_ofb64:
	.quad	cipher_hw_des_initkey
	.quad	cipher_hw_des_ofb64_cipher
	.quad	cipher_hw_des_copyctx
	.text
	.globl	ossl_prov_cipher_hw_des_ofb64
	.type	ossl_prov_cipher_hw_des_ofb64, @function
ossl_prov_cipher_hw_des_ofb64:
.LFB412:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_ofb64(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	ossl_prov_cipher_hw_des_ofb64, .-ossl_prov_cipher_hw_des_ofb64
	.section	.data.rel.ro.local
	.align 16
	.type	des_cfb64, @object
	.size	des_cfb64, 24
des_cfb64:
	.quad	cipher_hw_des_initkey
	.quad	cipher_hw_des_cfb64_cipher
	.quad	cipher_hw_des_copyctx
	.text
	.globl	ossl_prov_cipher_hw_des_cfb64
	.type	ossl_prov_cipher_hw_des_cfb64, @function
ossl_prov_cipher_hw_des_cfb64:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_cfb64(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	ossl_prov_cipher_hw_des_cfb64, .-ossl_prov_cipher_hw_des_cfb64
	.section	.data.rel.ro.local
	.align 16
	.type	des_cfb1, @object
	.size	des_cfb1, 24
des_cfb1:
	.quad	cipher_hw_des_initkey
	.quad	cipher_hw_des_cfb1_cipher
	.quad	cipher_hw_des_copyctx
	.text
	.globl	ossl_prov_cipher_hw_des_cfb1
	.type	ossl_prov_cipher_hw_des_cfb1, @function
ossl_prov_cipher_hw_des_cfb1:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_cfb1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	ossl_prov_cipher_hw_des_cfb1, .-ossl_prov_cipher_hw_des_cfb1
	.section	.data.rel.ro.local
	.align 16
	.type	des_cfb8, @object
	.size	des_cfb8, 24
des_cfb8:
	.quad	cipher_hw_des_initkey
	.quad	cipher_hw_des_cfb8_cipher
	.quad	cipher_hw_des_copyctx
	.text
	.globl	ossl_prov_cipher_hw_des_cfb8
	.type	ossl_prov_cipher_hw_des_cfb8, @function
ossl_prov_cipher_hw_des_cfb8:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_cfb8(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	ossl_prov_cipher_hw_des_cfb8, .-ossl_prov_cipher_hw_des_cfb8
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

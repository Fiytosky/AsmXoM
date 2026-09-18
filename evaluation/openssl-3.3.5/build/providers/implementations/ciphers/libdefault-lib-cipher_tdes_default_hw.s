	.file	"cipher_tdes_default_hw.c"
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
	.type	ossl_cipher_hw_tdes_ede2_initkey, @function
ossl_cipher_hw_tdes_ede2_initkey:
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
	leaq	192(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	$448, %rax
	movl	$128, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	ossl_cipher_hw_tdes_ede2_initkey, .-ossl_cipher_hw_tdes_ede2_initkey
	.type	ossl_cipher_hw_tdes_ofb, @function
ossl_cipher_hw_tdes_ofb:
.LFB403:
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
	movq	-24(%rbp), %rax
	movl	160(%rax), %eax
	movl	%eax, -12(%rbp)
	jmp	.L8
.L9:
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
	leaq	-12(%rbp), %rcx
	pushq	%rcx
	pushq	%rdi
	movq	%rdx, %rcx
	movl	$1073741824, %edx
	movq	%rax, %rdi
	call	DES_ede3_ofb64_encrypt@PLT
	addq	$16, %rsp
	subq	$1073741824, -48(%rbp)
	addq	$1073741824, -40(%rbp)
	addq	$1073741824, -32(%rbp)
.L8:
	cmpq	$1073741823, -48(%rbp)
	ja	.L9
	cmpq	$0, -48(%rbp)
	je	.L10
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
	leaq	-12(%rbp), %rdi
	pushq	%rdi
	pushq	%r8
	movq	%r10, %r8
	movq	%rax, %rdi
	call	DES_ede3_ofb64_encrypt@PLT
	addq	$16, %rsp
.L10:
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 160(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	ossl_cipher_hw_tdes_ofb, .-ossl_cipher_hw_tdes_ofb
	.type	ossl_cipher_hw_tdes_cfb, @function
ossl_cipher_hw_tdes_cfb:
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
	movq	-24(%rbp), %rax
	movl	160(%rax), %eax
	movl	%eax, -12(%rbp)
	jmp	.L13
.L14:
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
	subq	$8, %rsp
	pushq	%rcx
	leaq	-12(%rbp), %rcx
	pushq	%rcx
	pushq	%rdi
	movq	%rdx, %rcx
	movl	$1073741824, %edx
	movq	%rax, %rdi
	call	DES_ede3_cfb64_encrypt@PLT
	addq	$32, %rsp
	subq	$1073741824, -48(%rbp)
	addq	$1073741824, -40(%rbp)
	addq	$1073741824, -32(%rbp)
.L13:
	cmpq	$1073741823, -48(%rbp)
	ja	.L14
	cmpq	$0, -48(%rbp)
	je	.L15
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
	subq	$8, %rsp
	pushq	%rdi
	leaq	-12(%rbp), %rdi
	pushq	%rdi
	pushq	%r8
	movq	%r10, %r8
	movq	%rax, %rdi
	call	DES_ede3_cfb64_encrypt@PLT
	addq	$32, %rsp
.L15:
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 160(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	ossl_cipher_hw_tdes_cfb, .-ossl_cipher_hw_tdes_cfb
	.type	ossl_cipher_hw_tdes_cfb1, @function
ossl_cipher_hw_tdes_cfb1:
.LFB405:
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
	movq	%rax, -16(%rbp)
	movb	$0, -18(%rbp)
	movq	-40(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L18
	salq	$3, -64(%rbp)
.L18:
	movq	$0, -8(%rbp)
	jmp	.L19
.L20:
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
	movb	%al, -17(%rbp)
	movq	-40(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	leaq	448(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	320(%rax), %r9
	movq	-16(%rbp), %rax
	leaq	192(%rax), %r8
	leaq	-18(%rbp), %rsi
	leaq	-17(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	pushq	%rdi
	pushq	%rcx
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	DES_ede3_cfb_encrypt@PLT
	addq	$32, %rsp
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
	movzbl	-18(%rbp), %eax
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
.L19:
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L20
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	ossl_cipher_hw_tdes_cfb1, .-ossl_cipher_hw_tdes_cfb1
	.type	ossl_cipher_hw_tdes_cfb8, @function
ossl_cipher_hw_tdes_cfb8:
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
	movq	%rax, -8(%rbp)
	jmp	.L23
.L24:
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	leaq	448(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	320(%rax), %r9
	movq	-8(%rbp), %rax
	leaq	192(%rax), %r8
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	pushq	%rdi
	pushq	%rcx
	movl	$1073741824, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	DES_ede3_cfb_encrypt@PLT
	addq	$32, %rsp
	subq	$1073741824, -48(%rbp)
	addq	$1073741824, -40(%rbp)
	addq	$1073741824, -32(%rbp)
.L23:
	cmpq	$1073741823, -48(%rbp)
	ja	.L24
	cmpq	$0, -48(%rbp)
	je	.L25
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %ecx
	movq	-24(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-8(%rbp), %rax
	leaq	448(%rax), %rdi
	movq	-8(%rbp), %rax
	leaq	320(%rax), %r9
	movq	-8(%rbp), %rax
	leaq	192(%rax), %r10
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	pushq	%r8
	pushq	%rdi
	movq	%r10, %r8
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	DES_ede3_cfb_encrypt@PLT
	addq	$32, %rsp
.L25:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	ossl_cipher_hw_tdes_cfb8, .-ossl_cipher_hw_tdes_cfb8
	.section	.data.rel.ro,"aw"
	.align 16
	.type	ede3_ofb, @object
	.size	ede3_ofb, 24
ede3_ofb:
	.quad	ossl_cipher_hw_tdes_ede3_initkey
	.quad	ossl_cipher_hw_tdes_ofb
	.quad	ossl_cipher_hw_tdes_copyctx
	.text
	.globl	ossl_prov_cipher_hw_tdes_ede3_ofb
	.type	ossl_prov_cipher_hw_tdes_ede3_ofb, @function
ossl_prov_cipher_hw_tdes_ede3_ofb:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ede3_ofb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	ossl_prov_cipher_hw_tdes_ede3_ofb, .-ossl_prov_cipher_hw_tdes_ede3_ofb
	.section	.data.rel.ro
	.align 16
	.type	ede3_cfb, @object
	.size	ede3_cfb, 24
ede3_cfb:
	.quad	ossl_cipher_hw_tdes_ede3_initkey
	.quad	ossl_cipher_hw_tdes_cfb
	.quad	ossl_cipher_hw_tdes_copyctx
	.text
	.globl	ossl_prov_cipher_hw_tdes_ede3_cfb
	.type	ossl_prov_cipher_hw_tdes_ede3_cfb, @function
ossl_prov_cipher_hw_tdes_ede3_cfb:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ede3_cfb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ossl_prov_cipher_hw_tdes_ede3_cfb, .-ossl_prov_cipher_hw_tdes_ede3_cfb
	.section	.data.rel.ro
	.align 16
	.type	ede3_cfb1, @object
	.size	ede3_cfb1, 24
ede3_cfb1:
	.quad	ossl_cipher_hw_tdes_ede3_initkey
	.quad	ossl_cipher_hw_tdes_cfb1
	.quad	ossl_cipher_hw_tdes_copyctx
	.text
	.globl	ossl_prov_cipher_hw_tdes_ede3_cfb1
	.type	ossl_prov_cipher_hw_tdes_ede3_cfb1, @function
ossl_prov_cipher_hw_tdes_ede3_cfb1:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ede3_cfb1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	ossl_prov_cipher_hw_tdes_ede3_cfb1, .-ossl_prov_cipher_hw_tdes_ede3_cfb1
	.section	.data.rel.ro
	.align 16
	.type	ede3_cfb8, @object
	.size	ede3_cfb8, 24
ede3_cfb8:
	.quad	ossl_cipher_hw_tdes_ede3_initkey
	.quad	ossl_cipher_hw_tdes_cfb8
	.quad	ossl_cipher_hw_tdes_copyctx
	.text
	.globl	ossl_prov_cipher_hw_tdes_ede3_cfb8
	.type	ossl_prov_cipher_hw_tdes_ede3_cfb8, @function
ossl_prov_cipher_hw_tdes_ede3_cfb8:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ede3_cfb8(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	ossl_prov_cipher_hw_tdes_ede3_cfb8, .-ossl_prov_cipher_hw_tdes_ede3_cfb8
	.section	.data.rel.ro
	.align 16
	.type	ede2_ecb, @object
	.size	ede2_ecb, 24
ede2_ecb:
	.quad	ossl_cipher_hw_tdes_ede2_initkey
	.quad	ossl_cipher_hw_tdes_ecb
	.quad	ossl_cipher_hw_tdes_copyctx
	.text
	.globl	ossl_prov_cipher_hw_tdes_ede2_ecb
	.type	ossl_prov_cipher_hw_tdes_ede2_ecb, @function
ossl_prov_cipher_hw_tdes_ede2_ecb:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ede2_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	ossl_prov_cipher_hw_tdes_ede2_ecb, .-ossl_prov_cipher_hw_tdes_ede2_ecb
	.section	.data.rel.ro
	.align 16
	.type	ede2_cbc, @object
	.size	ede2_cbc, 24
ede2_cbc:
	.quad	ossl_cipher_hw_tdes_ede2_initkey
	.quad	ossl_cipher_hw_tdes_cbc
	.quad	ossl_cipher_hw_tdes_copyctx
	.text
	.globl	ossl_prov_cipher_hw_tdes_ede2_cbc
	.type	ossl_prov_cipher_hw_tdes_ede2_cbc, @function
ossl_prov_cipher_hw_tdes_ede2_cbc:
.LFB412:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ede2_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	ossl_prov_cipher_hw_tdes_ede2_cbc, .-ossl_prov_cipher_hw_tdes_ede2_cbc
	.section	.data.rel.ro
	.align 16
	.type	ede2_ofb, @object
	.size	ede2_ofb, 24
ede2_ofb:
	.quad	ossl_cipher_hw_tdes_ede2_initkey
	.quad	ossl_cipher_hw_tdes_ofb
	.quad	ossl_cipher_hw_tdes_copyctx
	.text
	.globl	ossl_prov_cipher_hw_tdes_ede2_ofb
	.type	ossl_prov_cipher_hw_tdes_ede2_ofb, @function
ossl_prov_cipher_hw_tdes_ede2_ofb:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ede2_ofb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	ossl_prov_cipher_hw_tdes_ede2_ofb, .-ossl_prov_cipher_hw_tdes_ede2_ofb
	.section	.data.rel.ro
	.align 16
	.type	ede2_cfb, @object
	.size	ede2_cfb, 24
ede2_cfb:
	.quad	ossl_cipher_hw_tdes_ede2_initkey
	.quad	ossl_cipher_hw_tdes_cfb
	.quad	ossl_cipher_hw_tdes_copyctx
	.text
	.globl	ossl_prov_cipher_hw_tdes_ede2_cfb
	.type	ossl_prov_cipher_hw_tdes_ede2_cfb, @function
ossl_prov_cipher_hw_tdes_ede2_cfb:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ede2_cfb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	ossl_prov_cipher_hw_tdes_ede2_cfb, .-ossl_prov_cipher_hw_tdes_ede2_cfb
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

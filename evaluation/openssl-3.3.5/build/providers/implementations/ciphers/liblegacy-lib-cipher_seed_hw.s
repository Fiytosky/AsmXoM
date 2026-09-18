	.file	"cipher_seed_hw.c"
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
	.type	cipher_hw_seed_initkey, @function
cipher_hw_seed_initkey:
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
	leaq	192(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SEED_set_key@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	cipher_hw_seed_initkey, .-cipher_hw_seed_initkey
	.type	cipher_hw_seed_cbc_cipher, @function
cipher_hw_seed_cbc_cipher:
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
	addq	$192, %rax
	movq	%rax, -8(%rbp)
	jmp	.L8
.L9:
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %ecx
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%ecx, %r9d
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$1073741824, %edx
	movq	%rax, %rdi
	call	SEED_cbc_encrypt@PLT
	subq	$1073741824, -48(%rbp)
	addq	$1073741824, -40(%rbp)
	addq	$1073741824, -32(%rbp)
.L8:
	cmpq	$1073741823, -48(%rbp)
	ja	.L9
	cmpq	$0, -48(%rbp)
	je	.L10
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edi
	movq	-24(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r9d
	movq	%rax, %rdi
	call	SEED_cbc_encrypt@PLT
.L10:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	cipher_hw_seed_cbc_cipher, .-cipher_hw_seed_cbc_cipher
	.section	.data.rel.ro.local,"aw"
	.align 16
	.type	seed_cbc, @object
	.size	seed_cbc, 24
seed_cbc:
	.quad	cipher_hw_seed_initkey
	.quad	cipher_hw_seed_cbc_cipher
	.zero	8
	.text
	.globl	ossl_prov_cipher_hw_seed_cbc
	.type	ossl_prov_cipher_hw_seed_cbc, @function
ossl_prov_cipher_hw_seed_cbc:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	seed_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	ossl_prov_cipher_hw_seed_cbc, .-ossl_prov_cipher_hw_seed_cbc
	.type	cipher_hw_seed_ecb_cipher, @function
cipher_hw_seed_ecb_cipher:
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
	movq	88(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	addq	$192, %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L15
	movl	$1, %eax
	jmp	.L16
.L15:
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -64(%rbp)
	jmp	.L17
.L18:
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
	call	SEED_ecb_encrypt@PLT
	movq	-16(%rbp), %rax
	addq	%rax, -8(%rbp)
.L17:
	movq	-8(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	jnb	.L18
	movl	$1, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	cipher_hw_seed_ecb_cipher, .-cipher_hw_seed_ecb_cipher
	.section	.data.rel.ro.local
	.align 16
	.type	seed_ecb, @object
	.size	seed_ecb, 24
seed_ecb:
	.quad	cipher_hw_seed_initkey
	.quad	cipher_hw_seed_ecb_cipher
	.zero	8
	.text
	.globl	ossl_prov_cipher_hw_seed_ecb
	.type	ossl_prov_cipher_hw_seed_ecb, @function
ossl_prov_cipher_hw_seed_ecb:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	seed_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	ossl_prov_cipher_hw_seed_ecb, .-ossl_prov_cipher_hw_seed_ecb
	.type	cipher_hw_seed_ofb128_cipher, @function
cipher_hw_seed_ofb128_cipher:
.LFB407:
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
	jmp	.L22
.L23:
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
	call	SEED_ofb128_encrypt@PLT
	subq	$1073741824, -48(%rbp)
	addq	$1073741824, -40(%rbp)
	addq	$1073741824, -32(%rbp)
.L22:
	cmpq	$1073741823, -48(%rbp)
	ja	.L23
	cmpq	$0, -48(%rbp)
	je	.L24
	movq	-24(%rbp), %rax
	leaq	32(%rax), %r8
	leaq	-12(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	SEED_ofb128_encrypt@PLT
.L24:
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 160(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	cipher_hw_seed_ofb128_cipher, .-cipher_hw_seed_ofb128_cipher
	.section	.data.rel.ro.local
	.align 16
	.type	seed_ofb128, @object
	.size	seed_ofb128, 24
seed_ofb128:
	.quad	cipher_hw_seed_initkey
	.quad	cipher_hw_seed_ofb128_cipher
	.zero	8
	.text
	.globl	ossl_prov_cipher_hw_seed_ofb128
	.type	ossl_prov_cipher_hw_seed_ofb128, @function
ossl_prov_cipher_hw_seed_ofb128:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	seed_ofb128(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ossl_prov_cipher_hw_seed_ofb128, .-ossl_prov_cipher_hw_seed_ofb128
	.type	cipher_hw_seed_cfb128_cipher, @function
cipher_hw_seed_cfb128_cipher:
.LFB409:
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
	jnb	.L30
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L30
.L32:
	movq	-40(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edi
	movq	-40(%rbp), %rax
	leaq	32(%rax), %r10
	leaq	-20(%rbp), %r8
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%r8, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	SEED_cfb128_encrypt@PLT
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	subq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L30
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.L30:
	cmpq	$0, -64(%rbp)
	je	.L31
	movq	-64(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L32
.L31:
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 160(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	cipher_hw_seed_cfb128_cipher, .-cipher_hw_seed_cfb128_cipher
	.section	.data.rel.ro.local
	.align 16
	.type	seed_cfb128, @object
	.size	seed_cfb128, 24
seed_cfb128:
	.quad	cipher_hw_seed_initkey
	.quad	cipher_hw_seed_cfb128_cipher
	.zero	8
	.text
	.globl	ossl_prov_cipher_hw_seed_cfb128
	.type	ossl_prov_cipher_hw_seed_cfb128, @function
ossl_prov_cipher_hw_seed_cfb128:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	seed_cfb128(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	ossl_prov_cipher_hw_seed_cfb128, .-ossl_prov_cipher_hw_seed_cfb128
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

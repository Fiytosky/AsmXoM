	.file	"cipher_idea_hw.c"
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
	.type	cipher_hw_idea_initkey, @function
cipher_hw_idea_initkey:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$192, %rax
	movq	%rax, -16(%rbp)
	movq	-248(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L6
	movq	-248(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$4, %eax
	je	.L6
	movq	-248(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$3, %eax
	jne	.L7
.L6:
	movq	-16(%rbp), %rdx
	movq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	IDEA_set_encrypt_key@PLT
	jmp	.L8
.L7:
	leaq	-240(%rbp), %rdx
	movq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	IDEA_set_encrypt_key@PLT
	movq	-16(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	IDEA_set_decrypt_key@PLT
	leaq	-240(%rbp), %rax
	movl	$216, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L8:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	cipher_hw_idea_initkey, .-cipher_hw_idea_initkey
	.type	cipher_hw_idea_cbc_cipher, @function
cipher_hw_idea_cbc_cipher:
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
	jmp	.L11
.L12:
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
	call	IDEA_cbc_encrypt@PLT
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
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r9d
	movq	%rax, %rdi
	call	IDEA_cbc_encrypt@PLT
.L13:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	cipher_hw_idea_cbc_cipher, .-cipher_hw_idea_cbc_cipher
	.section	.data.rel.ro.local,"aw"
	.align 16
	.type	idea_cbc, @object
	.size	idea_cbc, 24
idea_cbc:
	.quad	cipher_hw_idea_initkey
	.quad	cipher_hw_idea_cbc_cipher
	.zero	8
	.text
	.globl	ossl_prov_cipher_hw_idea_cbc
	.type	ossl_prov_cipher_hw_idea_cbc, @function
ossl_prov_cipher_hw_idea_cbc:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	idea_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	ossl_prov_cipher_hw_idea_cbc, .-ossl_prov_cipher_hw_idea_cbc
	.type	cipher_hw_idea_ofb64_cipher, @function
cipher_hw_idea_ofb64_cipher:
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
	movl	160(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	addq	$192, %rax
	movq	%rax, -8(%rbp)
	jmp	.L18
.L19:
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
	call	IDEA_ofb64_encrypt@PLT
	subq	$1073741824, -48(%rbp)
	addq	$1073741824, -40(%rbp)
	addq	$1073741824, -32(%rbp)
.L18:
	cmpq	$1073741823, -48(%rbp)
	ja	.L19
	cmpq	$0, -48(%rbp)
	je	.L20
	movq	-24(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-48(%rbp), %rdx
	leaq	-12(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	IDEA_ofb64_encrypt@PLT
.L20:
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 160(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	cipher_hw_idea_ofb64_cipher, .-cipher_hw_idea_ofb64_cipher
	.section	.data.rel.ro.local
	.align 16
	.type	idea_ofb64, @object
	.size	idea_ofb64, 24
idea_ofb64:
	.quad	cipher_hw_idea_initkey
	.quad	cipher_hw_idea_ofb64_cipher
	.zero	8
	.text
	.globl	ossl_prov_cipher_hw_idea_ofb64
	.type	ossl_prov_cipher_hw_idea_ofb64, @function
ossl_prov_cipher_hw_idea_ofb64:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	idea_ofb64(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	ossl_prov_cipher_hw_idea_ofb64, .-ossl_prov_cipher_hw_idea_ofb64
	.type	cipher_hw_idea_cfb64_cipher, @function
cipher_hw_idea_cfb64_cipher:
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
	call	IDEA_cfb64_encrypt@PLT
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
	.size	cipher_hw_idea_cfb64_cipher, .-cipher_hw_idea_cfb64_cipher
	.section	.data.rel.ro.local
	.align 16
	.type	idea_cfb64, @object
	.size	idea_cfb64, 24
idea_cfb64:
	.quad	cipher_hw_idea_initkey
	.quad	cipher_hw_idea_cfb64_cipher
	.zero	8
	.text
	.globl	ossl_prov_cipher_hw_idea_cfb64
	.type	ossl_prov_cipher_hw_idea_cfb64, @function
ossl_prov_cipher_hw_idea_cfb64:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	idea_cfb64(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ossl_prov_cipher_hw_idea_cfb64, .-ossl_prov_cipher_hw_idea_cfb64
	.type	cipher_hw_idea_ecb_cipher, @function
cipher_hw_idea_ecb_cipher:
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
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	addq	$192, %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L33
	movl	$1, %eax
	jmp	.L34
.L33:
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -64(%rbp)
	jmp	.L35
.L36:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	IDEA_ecb_encrypt@PLT
	movq	-16(%rbp), %rax
	addq	%rax, -8(%rbp)
.L35:
	movq	-8(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	jnb	.L36
	movl	$1, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	cipher_hw_idea_ecb_cipher, .-cipher_hw_idea_ecb_cipher
	.section	.data.rel.ro.local
	.align 16
	.type	idea_ecb, @object
	.size	idea_ecb, 24
idea_ecb:
	.quad	cipher_hw_idea_initkey
	.quad	cipher_hw_idea_ecb_cipher
	.zero	8
	.text
	.globl	ossl_prov_cipher_hw_idea_ecb
	.type	ossl_prov_cipher_hw_idea_ecb, @function
ossl_prov_cipher_hw_idea_ecb:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	idea_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	ossl_prov_cipher_hw_idea_ecb, .-ossl_prov_cipher_hw_idea_ecb
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

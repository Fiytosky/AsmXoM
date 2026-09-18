	.file	"e_idea.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
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
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
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
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	idea_ecb_cipher, @function
idea_ecb_cipher:
.LFB482:
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
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movl	4(%rax), %eax
	cltq
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L6
	movl	$1, %eax
	jmp	.L7
.L6:
	movq	-16(%rbp), %rax
	subq	%rax, -48(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L8
.L9:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	IDEA_ecb_encrypt@PLT
	movq	-16(%rbp), %rax
	addq	%rax, -8(%rbp)
.L8:
	movq	-8(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L9
	movl	$1, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	idea_ecb_cipher, .-idea_ecb_cipher
	.type	idea_cbc_cipher, @function
idea_cbc_cipher:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	jmp	.L11
.L12:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	leaq	40(%rax), %r12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%ebx, %r9d
	movq	%r12, %r8
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
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	leaq	40(%rax), %r12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%ebx, %r9d
	movq	%r12, %r8
	movq	%rax, %rdi
	call	IDEA_cbc_encrypt@PLT
.L13:
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	idea_cbc_cipher, .-idea_cbc_cipher
	.type	idea_ofb_cipher, @function
idea_ofb_cipher:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	jmp	.L16
.L17:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rcx
	leaq	-20(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdx, %r9
	movq	%rbx, %r8
	movl	$1073741824, %edx
	movq	%rax, %rdi
	call	IDEA_ofb64_encrypt@PLT
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	subq	$1073741824, -64(%rbp)
	addq	$1073741824, -56(%rbp)
	addq	$1073741824, -48(%rbp)
.L16:
	cmpq	$1073741823, -64(%rbp)
	ja	.L17
	cmpq	$0, -64(%rbp)
	je	.L18
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdi
	movq	-64(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rcx, %r9
	movq	%rbx, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	IDEA_ofb64_encrypt@PLT
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
.L18:
	movl	$1, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	idea_ofb_cipher, .-idea_ofb_cipher
	.type	idea_cfb64_cipher, @function
idea_cfb64_cipher:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	$1073741824, -24(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L22
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L22
.L25:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	40(%rax), %r12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdi
	movq	-24(%rbp), %rdx
	leaq	-28(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%rcx, %r9
	movq	%r12, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	IDEA_cfb64_encrypt@PLT
	addq	$16, %rsp
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	movq	-24(%rbp), %rax
	subq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	addq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L22
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
.L22:
	cmpq	$0, -64(%rbp)
	je	.L24
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L25
.L24:
	movl	$1, %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	idea_cfb64_cipher, .-idea_cfb64_cipher
	.section	.data.rel.ro,"aw"
	.align 32
	.type	idea_cbc, @object
	.size	idea_cbc, 248
idea_cbc:
	.long	34
	.long	8
	.long	16
	.long	8
	.quad	2
	.long	1
	.zero	4
	.quad	idea_init_key
	.quad	idea_cbc_cipher
	.quad	0
	.long	216
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_idea_cbc
	.type	EVP_idea_cbc, @function
EVP_idea_cbc:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	idea_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	EVP_idea_cbc, .-EVP_idea_cbc
	.section	.data.rel.ro
	.align 32
	.type	idea_cfb64, @object
	.size	idea_cfb64, 248
idea_cfb64:
	.long	35
	.long	1
	.long	16
	.long	8
	.quad	3
	.long	1
	.zero	4
	.quad	idea_init_key
	.quad	idea_cfb64_cipher
	.quad	0
	.long	216
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_idea_cfb64
	.type	EVP_idea_cfb64, @function
EVP_idea_cfb64:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	idea_cfb64(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	EVP_idea_cfb64, .-EVP_idea_cfb64
	.section	.data.rel.ro
	.align 32
	.type	idea_ofb, @object
	.size	idea_ofb, 248
idea_ofb:
	.long	46
	.long	1
	.long	16
	.long	8
	.quad	4
	.long	1
	.zero	4
	.quad	idea_init_key
	.quad	idea_ofb_cipher
	.quad	0
	.long	216
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_idea_ofb
	.type	EVP_idea_ofb, @function
EVP_idea_ofb:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	idea_ofb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	EVP_idea_ofb, .-EVP_idea_ofb
	.section	.data.rel.ro
	.align 32
	.type	idea_ecb, @object
	.size	idea_ecb, 248
idea_ecb:
	.long	36
	.long	8
	.long	16
	.long	0
	.quad	1
	.long	1
	.zero	4
	.quad	idea_init_key
	.quad	idea_ecb_cipher
	.quad	0
	.long	216
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_idea_ecb
	.type	EVP_idea_ecb, @function
EVP_idea_ecb:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	idea_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	EVP_idea_ecb, .-EVP_idea_ecb
	.type	idea_init_key, @function
idea_init_key:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movl	%ecx, -252(%rbp)
	cmpl	$0, -252(%rbp)
	jne	.L36
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$4, %eax
	jne	.L37
	movl	$1, -252(%rbp)
	jmp	.L36
.L37:
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$3, %eax
	jne	.L36
	movl	$1, -252(%rbp)
.L36:
	cmpl	$0, -252(%rbp)
	je	.L38
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	IDEA_set_encrypt_key@PLT
	jmp	.L39
.L38:
	leaq	-224(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	IDEA_set_encrypt_key@PLT
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	IDEA_set_decrypt_key@PLT
	leaq	-224(%rbp), %rax
	movl	$216, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L39:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	idea_init_key, .-idea_init_key
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

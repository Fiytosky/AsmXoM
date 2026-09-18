	.file	"e_sm4.c"
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
	.type	sm4_init_key, @function
sm4_init_key:
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
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	movl	%eax, -12(%rbp)
	cmpl	$1, -12(%rbp)
	je	.L6
	cmpl	$2, -12(%rbp)
	jne	.L7
.L6:
	cmpl	$0, -44(%rbp)
	jne	.L7
	movq	-8(%rbp), %rax
	movq	ossl_sm4_decrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 128(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_sm4_set_key@PLT
	jmp	.L8
.L7:
	movq	-8(%rbp), %rax
	movq	ossl_sm4_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 128(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_sm4_set_key@PLT
.L8:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	sm4_init_key, .-sm4_init_key
	.type	sm4_cbc_cipher, @function
sm4_cbc_cipher:
.LFB483:
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
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L11
	movq	-24(%rbp), %rax
	movq	136(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %edi
	movq	-40(%rbp), %rax
	leaq	40(%rax), %r8
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	%edi, %r9d
	movq	%rax, %rdi
	call	*%rbx
	jmp	.L12
.L11:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L13
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-40(%rbp), %rax
	leaq	40(%rax), %r8
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	CRYPTO_cbc128_encrypt@PLT
	jmp	.L12
.L13:
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-40(%rbp), %rax
	leaq	40(%rax), %r8
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	CRYPTO_cbc128_decrypt@PLT
.L12:
	movl	$1, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	sm4_cbc_cipher, .-sm4_cbc_cipher
	.type	sm4_cfb_cipher, @function
sm4_cfb_cipher:
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
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %edi
	movq	-40(%rbp), %rax
	leaq	40(%rax), %r10
	movq	-24(%rbp), %rcx
	leaq	-28(%rbp), %r8
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	pushq	%rbx
	pushq	%rdi
	movq	%r8, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	CRYPTO_cfb128_encrypt@PLT
	addq	$16, %rsp
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	movl	$1, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	sm4_cfb_cipher, .-sm4_cfb_cipher
	.type	sm4_ecb_cipher, @function
sm4_ecb_cipher:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_block_size@PLT
	cltq
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L18
	movl	$1, %eax
	jmp	.L19
.L18:
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L20
	movq	-40(%rbp), %rax
	movq	136(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	*%rbx
	jmp	.L21
.L20:
	movq	$0, -24(%rbp)
	movq	-32(%rbp), %rax
	subq	%rax, -80(%rbp)
	jmp	.L22
.L23:
	movq	-40(%rbp), %rax
	movq	128(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdx
	addq	%rdx, %rsi
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rdx
	addq	%rdx, %rdi
	movq	%rax, %rdx
	call	*%rcx
	movq	-32(%rbp), %rax
	addq	%rax, -24(%rbp)
.L22:
	movq	-24(%rbp), %rax
	cmpq	%rax, -80(%rbp)
	jnb	.L23
.L21:
	movl	$1, %eax
.L19:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	sm4_ecb_cipher, .-sm4_ecb_cipher
	.type	sm4_ofb_cipher, @function
sm4_ofb_cipher:
.LFB486:
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
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-24(%rbp), %rax
	leaq	40(%rax), %r10
	movq	-8(%rbp), %rcx
	leaq	-12(%rbp), %r8
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%r8, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	CRYPTO_ofb128_encrypt@PLT
	addq	$16, %rsp
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	sm4_ofb_cipher, .-sm4_ofb_cipher
	.type	sm4_ctr_cipher, @function
sm4_ctr_cipher:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -32(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L27
	movl	$0, %eax
	jmp	.L31
.L27:
	movl	-20(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L29
	movq	-32(%rbp), %rax
	movq	136(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movq	%rax, %r8
	movq	-56(%rbp), %rax
	leaq	40(%rax), %r10
	movq	-32(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	pushq	%rbx
	leaq	-36(%rbp), %rdi
	pushq	%rdi
	movq	%r8, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	CRYPTO_ctr128_encrypt_ctr32@PLT
	addq	$16, %rsp
	jmp	.L30
.L29:
	movq	-32(%rbp), %rax
	movq	128(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movq	%rax, %r8
	movq	-56(%rbp), %rax
	leaq	40(%rax), %r10
	movq	-32(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	pushq	%rbx
	leaq	-36(%rbp), %rdi
	pushq	%rdi
	movq	%r8, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	CRYPTO_ctr128_encrypt@PLT
	addq	$16, %rsp
.L30:
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	movl	$1, %eax
.L31:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	sm4_ctr_cipher, .-sm4_ctr_cipher
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	sm4_cbc, @object
	.size	sm4_cbc, 248
sm4_cbc:
	.long	1134
	.long	16
	.long	16
	.long	16
	.quad	2
	.long	1
	.zero	4
	.quad	sm4_init_key
	.quad	sm4_cbc_cipher
	.quad	0
	.long	144
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_sm4_cbc
	.type	EVP_sm4_cbc, @function
EVP_sm4_cbc:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	sm4_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	EVP_sm4_cbc, .-EVP_sm4_cbc
	.section	.data.rel.ro.local
	.align 32
	.type	sm4_ecb, @object
	.size	sm4_ecb, 248
sm4_ecb:
	.long	1133
	.long	16
	.long	16
	.long	0
	.quad	1
	.long	1
	.zero	4
	.quad	sm4_init_key
	.quad	sm4_ecb_cipher
	.quad	0
	.long	144
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_sm4_ecb
	.type	EVP_sm4_ecb, @function
EVP_sm4_ecb:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	sm4_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	EVP_sm4_ecb, .-EVP_sm4_ecb
	.section	.data.rel.ro.local
	.align 32
	.type	sm4_ofb, @object
	.size	sm4_ofb, 248
sm4_ofb:
	.long	1135
	.long	1
	.long	16
	.long	16
	.quad	4
	.long	1
	.zero	4
	.quad	sm4_init_key
	.quad	sm4_ofb_cipher
	.quad	0
	.long	144
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_sm4_ofb
	.type	EVP_sm4_ofb, @function
EVP_sm4_ofb:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	sm4_ofb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	EVP_sm4_ofb, .-EVP_sm4_ofb
	.section	.data.rel.ro.local
	.align 32
	.type	sm4_cfb, @object
	.size	sm4_cfb, 248
sm4_cfb:
	.long	1137
	.long	1
	.long	16
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	sm4_init_key
	.quad	sm4_cfb_cipher
	.quad	0
	.long	144
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_sm4_cfb128
	.type	EVP_sm4_cfb128, @function
EVP_sm4_cfb128:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	sm4_cfb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	EVP_sm4_cfb128, .-EVP_sm4_cfb128
	.section	.data.rel.ro.local
	.align 32
	.type	sm4_ctr, @object
	.size	sm4_ctr, 248
sm4_ctr:
	.long	1139
	.long	1
	.long	16
	.long	16
	.quad	5
	.long	1
	.zero	4
	.quad	sm4_init_key
	.quad	sm4_ctr_cipher
	.quad	0
	.long	144
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_sm4_ctr
	.type	EVP_sm4_ctr, @function
EVP_sm4_ctr:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	sm4_ctr(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	EVP_sm4_ctr, .-EVP_sm4_ctr
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"e_aria.c"
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
	.section	.rodata
.LC0:
	.string	"../crypto/evp/e_aria.c"
	.text
	.type	aria_init_key, @function
aria_init_key:
.LFB482:
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
	movl	%ecx, -60(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L6
	cmpl	$1, -24(%rbp)
	je	.L7
	cmpl	$2, -24(%rbp)
	je	.L7
.L6:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	leal	0(,%rax,8), %ecx
	movq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_aria_set_encrypt_key@PLT
	movl	%eax, -20(%rbp)
	jmp	.L8
.L7:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	leal	0(,%rax,8), %ecx
	movq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_aria_set_decrypt_key@PLT
	movl	%eax, -20(%rbp)
.L8:
	cmpl	$0, -20(%rbp)
	jns	.L9
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$76, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$176, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L10
.L9:
	movl	$1, %eax
.L10:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	aria_init_key, .-aria_init_key
	.type	aria_cbc_encrypt, @function
aria_cbc_encrypt:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L12
	movq	ossl_aria_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_cbc128_encrypt@PLT
	jmp	.L14
.L12:
	movq	ossl_aria_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_cbc128_decrypt@PLT
.L14:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	aria_cbc_encrypt, .-aria_cbc_encrypt
	.type	aria_cfb128_encrypt, @function
aria_cfb128_encrypt:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r9
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	ossl_aria_encrypt@GOTPCREL(%rip), %rdi
	pushq	%rdi
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	CRYPTO_cfb128_encrypt@PLT
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	aria_cfb128_encrypt, .-aria_cfb128_encrypt
	.type	aria_cfb1_encrypt, @function
aria_cfb1_encrypt:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r9
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	ossl_aria_encrypt@GOTPCREL(%rip), %rdi
	pushq	%rdi
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	CRYPTO_cfb128_1_encrypt@PLT
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	aria_cfb1_encrypt, .-aria_cfb1_encrypt
	.type	aria_cfb8_encrypt, @function
aria_cfb8_encrypt:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r9
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	ossl_aria_encrypt@GOTPCREL(%rip), %rdi
	pushq	%rdi
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	CRYPTO_cfb128_8_encrypt@PLT
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	aria_cfb8_encrypt, .-aria_cfb8_encrypt
	.type	aria_ecb_encrypt, @function
aria_ecb_encrypt:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_aria_encrypt@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	aria_ecb_encrypt, .-aria_ecb_encrypt
	.type	aria_ofb128_encrypt, @function
aria_ofb128_encrypt:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	ossl_aria_encrypt@GOTPCREL(%rip), %r9
	pushq	%r9
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_ofb128_encrypt@PLT
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	aria_ofb128_encrypt, .-aria_ofb128_encrypt
	.type	aria_128_cbc_cipher, @function
aria_128_cbc_cipher:
.LFB489:
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
	jmp	.L21
.L22:
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
	call	aria_cbc_encrypt
	subq	$1073741824, -48(%rbp)
	addq	$1073741824, -40(%rbp)
	addq	$1073741824, -32(%rbp)
.L21:
	cmpq	$1073741823, -48(%rbp)
	ja	.L22
	cmpq	$0, -48(%rbp)
	je	.L23
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
	call	aria_cbc_encrypt
.L23:
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	aria_128_cbc_cipher, .-aria_128_cbc_cipher
	.type	aria_128_cfb128_cipher, @function
aria_128_cfb128_cipher:
.LFB490:
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
	jnb	.L27
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L27
.L30:
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
	leaq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%rcx, %r9
	movq	%r12, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	aria_cfb128_encrypt
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
	jnb	.L27
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
.L27:
	cmpq	$0, -64(%rbp)
	je	.L29
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L30
.L29:
	movl	$1, %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	aria_128_cfb128_cipher, .-aria_128_cfb128_cipher
	.type	aria_128_ecb_cipher, @function
aria_128_ecb_cipher:
.LFB491:
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
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movl	4(%rax), %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L33
	movl	$1, %eax
	jmp	.L34
.L33:
	movq	-32(%rbp), %rax
	subq	%rax, -64(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L35
.L36:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ebx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	aria_ecb_encrypt
	movq	-32(%rbp), %rax
	addq	%rax, -24(%rbp)
.L35:
	movq	-24(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	jnb	.L36
	movl	$1, %eax
.L34:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	aria_128_ecb_cipher, .-aria_128_ecb_cipher
	.type	aria_128_ofb_cipher, @function
aria_128_ofb_cipher:
.LFB492:
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
	jmp	.L38
.L39:
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
	call	aria_ofb128_encrypt
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	subq	$1073741824, -64(%rbp)
	addq	$1073741824, -56(%rbp)
	addq	$1073741824, -48(%rbp)
.L38:
	cmpq	$1073741823, -64(%rbp)
	ja	.L39
	cmpq	$0, -64(%rbp)
	je	.L40
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
	leaq	-24(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rcx, %r9
	movq	%rbx, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	aria_ofb128_encrypt
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
.L40:
	movl	$1, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	aria_128_ofb_cipher, .-aria_128_ofb_cipher
	.section	.data.rel.ro,"aw"
	.align 32
	.type	aria_128_cbc, @object
	.size	aria_128_cbc, 248
aria_128_cbc:
	.long	1066
	.long	16
	.long	16
	.long	16
	.quad	2
	.long	1
	.zero	4
	.quad	aria_init_key
	.quad	aria_128_cbc_cipher
	.quad	0
	.long	276
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_128_cbc
	.type	EVP_aria_128_cbc, @function
EVP_aria_128_cbc:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_128_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	EVP_aria_128_cbc, .-EVP_aria_128_cbc
	.section	.data.rel.ro
	.align 32
	.type	aria_128_cfb128, @object
	.size	aria_128_cfb128, 248
aria_128_cfb128:
	.long	1067
	.long	1
	.long	16
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aria_init_key
	.quad	aria_128_cfb128_cipher
	.quad	0
	.long	276
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_128_cfb128
	.type	EVP_aria_128_cfb128, @function
EVP_aria_128_cfb128:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_128_cfb128(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	EVP_aria_128_cfb128, .-EVP_aria_128_cfb128
	.section	.data.rel.ro
	.align 32
	.type	aria_128_ofb, @object
	.size	aria_128_ofb, 248
aria_128_ofb:
	.long	1068
	.long	1
	.long	16
	.long	16
	.quad	4
	.long	1
	.zero	4
	.quad	aria_init_key
	.quad	aria_128_ofb_cipher
	.quad	0
	.long	276
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_128_ofb
	.type	EVP_aria_128_ofb, @function
EVP_aria_128_ofb:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_128_ofb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	EVP_aria_128_ofb, .-EVP_aria_128_ofb
	.section	.data.rel.ro
	.align 32
	.type	aria_128_ecb, @object
	.size	aria_128_ecb, 248
aria_128_ecb:
	.long	1065
	.long	16
	.long	16
	.long	0
	.quad	1
	.long	1
	.zero	4
	.quad	aria_init_key
	.quad	aria_128_ecb_cipher
	.quad	0
	.long	276
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_128_ecb
	.type	EVP_aria_128_ecb, @function
EVP_aria_128_ecb:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_128_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	EVP_aria_128_ecb, .-EVP_aria_128_ecb
	.type	aria_192_cbc_cipher, @function
aria_192_cbc_cipher:
.LFB497:
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
	jmp	.L51
.L52:
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
	call	aria_cbc_encrypt
	subq	$1073741824, -48(%rbp)
	addq	$1073741824, -40(%rbp)
	addq	$1073741824, -32(%rbp)
.L51:
	cmpq	$1073741823, -48(%rbp)
	ja	.L52
	cmpq	$0, -48(%rbp)
	je	.L53
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
	call	aria_cbc_encrypt
.L53:
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	aria_192_cbc_cipher, .-aria_192_cbc_cipher
	.type	aria_192_cfb128_cipher, @function
aria_192_cfb128_cipher:
.LFB498:
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
	jnb	.L57
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L57
.L60:
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
	leaq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%rcx, %r9
	movq	%r12, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	aria_cfb128_encrypt
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
	jnb	.L57
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
.L57:
	cmpq	$0, -64(%rbp)
	je	.L59
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L60
.L59:
	movl	$1, %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	aria_192_cfb128_cipher, .-aria_192_cfb128_cipher
	.type	aria_192_ecb_cipher, @function
aria_192_ecb_cipher:
.LFB499:
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
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movl	4(%rax), %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L63
	movl	$1, %eax
	jmp	.L64
.L63:
	movq	-32(%rbp), %rax
	subq	%rax, -64(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L65
.L66:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ebx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	aria_ecb_encrypt
	movq	-32(%rbp), %rax
	addq	%rax, -24(%rbp)
.L65:
	movq	-24(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	jnb	.L66
	movl	$1, %eax
.L64:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	aria_192_ecb_cipher, .-aria_192_ecb_cipher
	.type	aria_192_ofb_cipher, @function
aria_192_ofb_cipher:
.LFB500:
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
	jmp	.L68
.L69:
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
	call	aria_ofb128_encrypt
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	subq	$1073741824, -64(%rbp)
	addq	$1073741824, -56(%rbp)
	addq	$1073741824, -48(%rbp)
.L68:
	cmpq	$1073741823, -64(%rbp)
	ja	.L69
	cmpq	$0, -64(%rbp)
	je	.L70
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
	leaq	-24(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rcx, %r9
	movq	%rbx, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	aria_ofb128_encrypt
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
.L70:
	movl	$1, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	aria_192_ofb_cipher, .-aria_192_ofb_cipher
	.section	.data.rel.ro
	.align 32
	.type	aria_192_cbc, @object
	.size	aria_192_cbc, 248
aria_192_cbc:
	.long	1071
	.long	16
	.long	24
	.long	16
	.quad	2
	.long	1
	.zero	4
	.quad	aria_init_key
	.quad	aria_192_cbc_cipher
	.quad	0
	.long	276
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_192_cbc
	.type	EVP_aria_192_cbc, @function
EVP_aria_192_cbc:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_192_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	EVP_aria_192_cbc, .-EVP_aria_192_cbc
	.section	.data.rel.ro
	.align 32
	.type	aria_192_cfb128, @object
	.size	aria_192_cfb128, 248
aria_192_cfb128:
	.long	1072
	.long	1
	.long	24
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aria_init_key
	.quad	aria_192_cfb128_cipher
	.quad	0
	.long	276
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_192_cfb128
	.type	EVP_aria_192_cfb128, @function
EVP_aria_192_cfb128:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_192_cfb128(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	EVP_aria_192_cfb128, .-EVP_aria_192_cfb128
	.section	.data.rel.ro
	.align 32
	.type	aria_192_ofb, @object
	.size	aria_192_ofb, 248
aria_192_ofb:
	.long	1073
	.long	1
	.long	24
	.long	16
	.quad	4
	.long	1
	.zero	4
	.quad	aria_init_key
	.quad	aria_192_ofb_cipher
	.quad	0
	.long	276
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_192_ofb
	.type	EVP_aria_192_ofb, @function
EVP_aria_192_ofb:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_192_ofb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	EVP_aria_192_ofb, .-EVP_aria_192_ofb
	.section	.data.rel.ro
	.align 32
	.type	aria_192_ecb, @object
	.size	aria_192_ecb, 248
aria_192_ecb:
	.long	1070
	.long	16
	.long	24
	.long	0
	.quad	1
	.long	1
	.zero	4
	.quad	aria_init_key
	.quad	aria_192_ecb_cipher
	.quad	0
	.long	276
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_192_ecb
	.type	EVP_aria_192_ecb, @function
EVP_aria_192_ecb:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_192_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	EVP_aria_192_ecb, .-EVP_aria_192_ecb
	.type	aria_256_cbc_cipher, @function
aria_256_cbc_cipher:
.LFB505:
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
	jmp	.L81
.L82:
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
	call	aria_cbc_encrypt
	subq	$1073741824, -48(%rbp)
	addq	$1073741824, -40(%rbp)
	addq	$1073741824, -32(%rbp)
.L81:
	cmpq	$1073741823, -48(%rbp)
	ja	.L82
	cmpq	$0, -48(%rbp)
	je	.L83
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
	call	aria_cbc_encrypt
.L83:
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	aria_256_cbc_cipher, .-aria_256_cbc_cipher
	.type	aria_256_cfb128_cipher, @function
aria_256_cfb128_cipher:
.LFB506:
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
	jnb	.L87
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L87
.L90:
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
	leaq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%rcx, %r9
	movq	%r12, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	aria_cfb128_encrypt
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
	jnb	.L87
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
.L87:
	cmpq	$0, -64(%rbp)
	je	.L89
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L90
.L89:
	movl	$1, %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	aria_256_cfb128_cipher, .-aria_256_cfb128_cipher
	.type	aria_256_ecb_cipher, @function
aria_256_ecb_cipher:
.LFB507:
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
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movl	4(%rax), %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L93
	movl	$1, %eax
	jmp	.L94
.L93:
	movq	-32(%rbp), %rax
	subq	%rax, -64(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L95
.L96:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ebx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	aria_ecb_encrypt
	movq	-32(%rbp), %rax
	addq	%rax, -24(%rbp)
.L95:
	movq	-24(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	jnb	.L96
	movl	$1, %eax
.L94:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	aria_256_ecb_cipher, .-aria_256_ecb_cipher
	.type	aria_256_ofb_cipher, @function
aria_256_ofb_cipher:
.LFB508:
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
	jmp	.L98
.L99:
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
	call	aria_ofb128_encrypt
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	subq	$1073741824, -64(%rbp)
	addq	$1073741824, -56(%rbp)
	addq	$1073741824, -48(%rbp)
.L98:
	cmpq	$1073741823, -64(%rbp)
	ja	.L99
	cmpq	$0, -64(%rbp)
	je	.L100
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
	leaq	-24(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rcx, %r9
	movq	%rbx, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	aria_ofb128_encrypt
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
.L100:
	movl	$1, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	aria_256_ofb_cipher, .-aria_256_ofb_cipher
	.section	.data.rel.ro
	.align 32
	.type	aria_256_cbc, @object
	.size	aria_256_cbc, 248
aria_256_cbc:
	.long	1076
	.long	16
	.long	32
	.long	16
	.quad	2
	.long	1
	.zero	4
	.quad	aria_init_key
	.quad	aria_256_cbc_cipher
	.quad	0
	.long	276
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_256_cbc
	.type	EVP_aria_256_cbc, @function
EVP_aria_256_cbc:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_256_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	EVP_aria_256_cbc, .-EVP_aria_256_cbc
	.section	.data.rel.ro
	.align 32
	.type	aria_256_cfb128, @object
	.size	aria_256_cfb128, 248
aria_256_cfb128:
	.long	1077
	.long	1
	.long	32
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aria_init_key
	.quad	aria_256_cfb128_cipher
	.quad	0
	.long	276
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_256_cfb128
	.type	EVP_aria_256_cfb128, @function
EVP_aria_256_cfb128:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_256_cfb128(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	EVP_aria_256_cfb128, .-EVP_aria_256_cfb128
	.section	.data.rel.ro
	.align 32
	.type	aria_256_ofb, @object
	.size	aria_256_ofb, 248
aria_256_ofb:
	.long	1078
	.long	1
	.long	32
	.long	16
	.quad	4
	.long	1
	.zero	4
	.quad	aria_init_key
	.quad	aria_256_ofb_cipher
	.quad	0
	.long	276
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_256_ofb
	.type	EVP_aria_256_ofb, @function
EVP_aria_256_ofb:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_256_ofb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	EVP_aria_256_ofb, .-EVP_aria_256_ofb
	.section	.data.rel.ro
	.align 32
	.type	aria_256_ecb, @object
	.size	aria_256_ecb, 248
aria_256_ecb:
	.long	1075
	.long	16
	.long	32
	.long	0
	.quad	1
	.long	1
	.zero	4
	.quad	aria_init_key
	.quad	aria_256_ecb_cipher
	.quad	0
	.long	276
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_256_ecb
	.type	EVP_aria_256_ecb, @function
EVP_aria_256_ecb:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_256_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	EVP_aria_256_ecb, .-EVP_aria_256_ecb
	.type	aria_128_cfb1_cipher, @function
aria_128_cfb1_cipher:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	$1073741824, -40(%rbp)
	shrq	$3, -40(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L112
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L112
.L117:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -44(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	leaq	40(%rax), %r12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_test_flags@PLT
	testl	%eax, %eax
	jne	.L113
	movq	-40(%rbp), %rax
	salq	$3, %rax
	jmp	.L114
.L113:
	movq	-40(%rbp), %rax
.L114:
	leaq	-44(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdi
	subq	$8, %rsp
	pushq	%rbx
	movq	%rdx, %r9
	movq	%r12, %r8
	movq	%r13, %rcx
	movq	%rax, %rdx
	call	aria_cfb1_encrypt
	addq	$16, %rsp
	movl	-44(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	movq	-40(%rbp), %rax
	subq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L112
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
.L112:
	cmpq	$0, -80(%rbp)
	je	.L116
	movq	-80(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L117
.L116:
	movl	$1, %eax
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	aria_128_cfb1_cipher, .-aria_128_cfb1_cipher
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	aria_128_cfb1, @object
	.size	aria_128_cfb1, 248
aria_128_cfb1:
	.long	1080
	.long	1
	.long	16
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aria_init_key
	.quad	aria_128_cfb1_cipher
	.quad	0
	.long	276
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_128_cfb1
	.type	EVP_aria_128_cfb1, @function
EVP_aria_128_cfb1:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_128_cfb1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	EVP_aria_128_cfb1, .-EVP_aria_128_cfb1
	.type	aria_192_cfb1_cipher, @function
aria_192_cfb1_cipher:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	$1073741824, -40(%rbp)
	shrq	$3, -40(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L123
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L123
.L128:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -44(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	leaq	40(%rax), %r12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_test_flags@PLT
	testl	%eax, %eax
	jne	.L124
	movq	-40(%rbp), %rax
	salq	$3, %rax
	jmp	.L125
.L124:
	movq	-40(%rbp), %rax
.L125:
	leaq	-44(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdi
	subq	$8, %rsp
	pushq	%rbx
	movq	%rdx, %r9
	movq	%r12, %r8
	movq	%r13, %rcx
	movq	%rax, %rdx
	call	aria_cfb1_encrypt
	addq	$16, %rsp
	movl	-44(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	movq	-40(%rbp), %rax
	subq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L123
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
.L123:
	cmpq	$0, -80(%rbp)
	je	.L127
	movq	-80(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L128
.L127:
	movl	$1, %eax
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	aria_192_cfb1_cipher, .-aria_192_cfb1_cipher
	.section	.data.rel.ro.local
	.align 32
	.type	aria_192_cfb1, @object
	.size	aria_192_cfb1, 248
aria_192_cfb1:
	.long	1081
	.long	1
	.long	24
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aria_init_key
	.quad	aria_192_cfb1_cipher
	.quad	0
	.long	276
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_192_cfb1
	.type	EVP_aria_192_cfb1, @function
EVP_aria_192_cfb1:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_192_cfb1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	EVP_aria_192_cfb1, .-EVP_aria_192_cfb1
	.type	aria_256_cfb1_cipher, @function
aria_256_cfb1_cipher:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	$1073741824, -40(%rbp)
	shrq	$3, -40(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L134
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L134
.L139:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -44(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	leaq	40(%rax), %r12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_test_flags@PLT
	testl	%eax, %eax
	jne	.L135
	movq	-40(%rbp), %rax
	salq	$3, %rax
	jmp	.L136
.L135:
	movq	-40(%rbp), %rax
.L136:
	leaq	-44(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdi
	subq	$8, %rsp
	pushq	%rbx
	movq	%rdx, %r9
	movq	%r12, %r8
	movq	%r13, %rcx
	movq	%rax, %rdx
	call	aria_cfb1_encrypt
	addq	$16, %rsp
	movl	-44(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	movq	-40(%rbp), %rax
	subq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L134
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
.L134:
	cmpq	$0, -80(%rbp)
	je	.L138
	movq	-80(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L139
.L138:
	movl	$1, %eax
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	aria_256_cfb1_cipher, .-aria_256_cfb1_cipher
	.section	.data.rel.ro.local
	.align 32
	.type	aria_256_cfb1, @object
	.size	aria_256_cfb1, 248
aria_256_cfb1:
	.long	1082
	.long	1
	.long	32
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aria_init_key
	.quad	aria_256_cfb1_cipher
	.quad	0
	.long	276
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_256_cfb1
	.type	EVP_aria_256_cfb1, @function
EVP_aria_256_cfb1:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_256_cfb1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	EVP_aria_256_cfb1, .-EVP_aria_256_cfb1
	.type	aria_128_cfb8_cipher, @function
aria_128_cfb8_cipher:
.LFB519:
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
	jnb	.L145
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L145
.L148:
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
	leaq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%rcx, %r9
	movq	%r12, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	aria_cfb8_encrypt
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
	jnb	.L145
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
.L145:
	cmpq	$0, -64(%rbp)
	je	.L147
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L148
.L147:
	movl	$1, %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	aria_128_cfb8_cipher, .-aria_128_cfb8_cipher
	.section	.data.rel.ro.local
	.align 32
	.type	aria_128_cfb8, @object
	.size	aria_128_cfb8, 248
aria_128_cfb8:
	.long	1083
	.long	1
	.long	16
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aria_init_key
	.quad	aria_128_cfb8_cipher
	.quad	0
	.long	276
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_128_cfb8
	.type	EVP_aria_128_cfb8, @function
EVP_aria_128_cfb8:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_128_cfb8(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	EVP_aria_128_cfb8, .-EVP_aria_128_cfb8
	.type	aria_192_cfb8_cipher, @function
aria_192_cfb8_cipher:
.LFB521:
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
	jnb	.L154
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L154
.L157:
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
	leaq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%rcx, %r9
	movq	%r12, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	aria_cfb8_encrypt
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
	jnb	.L154
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
.L154:
	cmpq	$0, -64(%rbp)
	je	.L156
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L157
.L156:
	movl	$1, %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	aria_192_cfb8_cipher, .-aria_192_cfb8_cipher
	.section	.data.rel.ro.local
	.align 32
	.type	aria_192_cfb8, @object
	.size	aria_192_cfb8, 248
aria_192_cfb8:
	.long	1084
	.long	1
	.long	24
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aria_init_key
	.quad	aria_192_cfb8_cipher
	.quad	0
	.long	276
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_192_cfb8
	.type	EVP_aria_192_cfb8, @function
EVP_aria_192_cfb8:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_192_cfb8(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	EVP_aria_192_cfb8, .-EVP_aria_192_cfb8
	.type	aria_256_cfb8_cipher, @function
aria_256_cfb8_cipher:
.LFB523:
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
	jnb	.L163
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L163
.L166:
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
	leaq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%rcx, %r9
	movq	%r12, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	aria_cfb8_encrypt
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
	jnb	.L163
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
.L163:
	cmpq	$0, -64(%rbp)
	je	.L165
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L166
.L165:
	movl	$1, %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	aria_256_cfb8_cipher, .-aria_256_cfb8_cipher
	.section	.data.rel.ro.local
	.align 32
	.type	aria_256_cfb8, @object
	.size	aria_256_cfb8, 248
aria_256_cfb8:
	.long	1085
	.long	1
	.long	32
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aria_init_key
	.quad	aria_256_cfb8_cipher
	.quad	0
	.long	276
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_256_cfb8
	.type	EVP_aria_256_cfb8, @function
EVP_aria_256_cfb8:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_256_cfb8(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	EVP_aria_256_cfb8, .-EVP_aria_256_cfb8
	.type	aria_ctr_cipher, @function
aria_ctr_cipher:
.LFB525:
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
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L171
	movl	$0, %eax
	jmp	.L173
.L171:
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movq	%rax, %r8
	movq	-40(%rbp), %rax
	leaq	40(%rax), %r10
	movq	-16(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	ossl_aria_encrypt@GOTPCREL(%rip), %rdi
	pushq	%rdi
	leaq	-20(%rbp), %rdi
	pushq	%rdi
	movq	%r8, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	CRYPTO_ctr128_encrypt@PLT
	addq	$16, %rsp
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	movl	$1, %eax
.L173:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	aria_ctr_cipher, .-aria_ctr_cipher
	.section	.data.rel.ro.local
	.align 32
	.type	aria_128_ctr, @object
	.size	aria_128_ctr, 248
aria_128_ctr:
	.long	1069
	.long	1
	.long	16
	.long	16
	.quad	5
	.long	1
	.zero	4
	.quad	aria_init_key
	.quad	aria_ctr_cipher
	.quad	0
	.long	276
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_128_ctr
	.type	EVP_aria_128_ctr, @function
EVP_aria_128_ctr:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_128_ctr(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	EVP_aria_128_ctr, .-EVP_aria_128_ctr
	.section	.data.rel.ro.local
	.align 32
	.type	aria_192_ctr, @object
	.size	aria_192_ctr, 248
aria_192_ctr:
	.long	1074
	.long	1
	.long	24
	.long	16
	.quad	5
	.long	1
	.zero	4
	.quad	aria_init_key
	.quad	aria_ctr_cipher
	.quad	0
	.long	276
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_192_ctr
	.type	EVP_aria_192_ctr, @function
EVP_aria_192_ctr:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_192_ctr(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	EVP_aria_192_ctr, .-EVP_aria_192_ctr
	.section	.data.rel.ro.local
	.align 32
	.type	aria_256_ctr, @object
	.size	aria_256_ctr, 248
aria_256_ctr:
	.long	1079
	.long	1
	.long	32
	.long	16
	.quad	5
	.long	1
	.zero	4
	.quad	aria_init_key
	.quad	aria_ctr_cipher
	.quad	0
	.long	276
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_256_ctr
	.type	EVP_aria_256_ctr, @function
EVP_aria_256_ctr:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_256_ctr(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	EVP_aria_256_ctr, .-EVP_aria_256_ctr
	.type	ctr64_inc, @function
ctr64_inc:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$8, -4(%rbp)
.L183:
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -5(%rbp)
	addb	$1, -5(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-5(%rbp), %eax
	movb	%al, (%rdx)
	cmpb	$0, -5(%rbp)
	jne	.L184
	cmpl	$0, -4(%rbp)
	jne	.L183
	jmp	.L180
.L184:
	nop
.L180:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	ctr64_inc, .-ctr64_inc
	.type	aria_gcm_init_key, @function
aria_gcm_init_key:
.LFB530:
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
	movl	%ecx, -60(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L186
	cmpq	$0, -48(%rbp)
	jne	.L186
	movl	$1, %eax
	jmp	.L187
.L186:
	cmpq	$0, -48(%rbp)
	je	.L188
	movq	-24(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	leal	0(,%rax,8), %ecx
	movq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_aria_set_encrypt_key@PLT
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	leaq	288(%rdx), %rcx
	movq	ossl_aria_encrypt@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_init@PLT
	cmpl	$0, -28(%rbp)
	jns	.L189
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$230, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$176, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L187
.L189:
	cmpq	$0, -56(%rbp)
	jne	.L190
	movq	-24(%rbp), %rax
	movl	284(%rax), %eax
	testl	%eax, %eax
	je	.L190
	movq	-24(%rbp), %rax
	movq	736(%rax), %rax
	movq	%rax, -56(%rbp)
.L190:
	cmpq	$0, -56(%rbp)
	je	.L191
	movq	-24(%rbp), %rax
	movl	744(%rax), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	288(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_setiv@PLT
	movq	-24(%rbp), %rax
	movl	$1, 284(%rax)
.L191:
	movq	-24(%rbp), %rax
	movl	$1, 280(%rax)
	jmp	.L192
.L188:
	movq	-24(%rbp), %rax
	movl	280(%rax), %eax
	testl	%eax, %eax
	je	.L193
	movq	-24(%rbp), %rax
	movl	744(%rax), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	288(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_setiv@PLT
	jmp	.L194
.L193:
	movq	-24(%rbp), %rax
	movl	744(%rax), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	736(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L194:
	movq	-24(%rbp), %rax
	movl	$1, 284(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 752(%rax)
.L192:
	movl	$1, %eax
.L187:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	aria_gcm_init_key, .-aria_gcm_init_key
	.type	aria_gcm_ctrl, @function
aria_gcm_ctrl:
.LFB531:
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
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -32(%rbp)
	cmpl	$37, -60(%rbp)
	je	.L196
	cmpl	$37, -60(%rbp)
	jg	.L197
	cmpl	$24, -60(%rbp)
	je	.L198
	cmpl	$24, -60(%rbp)
	jg	.L197
	cmpl	$22, -60(%rbp)
	je	.L199
	cmpl	$22, -60(%rbp)
	jg	.L197
	cmpl	$19, -60(%rbp)
	je	.L200
	cmpl	$19, -60(%rbp)
	jg	.L197
	cmpl	$18, -60(%rbp)
	je	.L201
	cmpl	$18, -60(%rbp)
	jg	.L197
	cmpl	$17, -60(%rbp)
	je	.L202
	cmpl	$17, -60(%rbp)
	jg	.L197
	cmpl	$16, -60(%rbp)
	je	.L203
	cmpl	$16, -60(%rbp)
	jg	.L197
	cmpl	$9, -60(%rbp)
	je	.L204
	cmpl	$9, -60(%rbp)
	jg	.L197
	cmpl	$0, -60(%rbp)
	je	.L205
	cmpl	$8, -60(%rbp)
	je	.L206
	jmp	.L197
.L205:
	movq	-32(%rbp), %rax
	movl	$0, 280(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 284(%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movq	-32(%rbp), %rdx
	movl	%eax, 744(%rdx)
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 736(%rax)
	movq	-32(%rbp), %rax
	movl	$-1, 748(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 752(%rax)
	movq	-32(%rbp), %rax
	movl	$-1, 756(%rax)
	movl	$1, %eax
	jmp	.L207
.L196:
	movq	-32(%rbp), %rax
	movl	744(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L207
.L204:
	cmpl	$0, -64(%rbp)
	jg	.L208
	movl	$0, %eax
	jmp	.L207
.L208:
	cmpl	$16, -64(%rbp)
	jle	.L209
	movq	-32(%rbp), %rax
	movl	744(%rax), %eax
	cmpl	%eax, -64(%rbp)
	jle	.L209
	movq	-32(%rbp), %rax
	movq	736(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$40, %rax
	cmpq	%rax, %rdx
	je	.L210
	movq	-32(%rbp), %rax
	movq	736(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$281, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L210:
	movl	-64(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$282, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 736(%rax)
	movq	-32(%rbp), %rax
	movq	736(%rax), %rax
	testq	%rax, %rax
	jne	.L209
	movl	$0, %eax
	jmp	.L207
.L209:
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movl	%edx, 744(%rax)
	movl	$1, %eax
	jmp	.L207
.L202:
	cmpl	$0, -64(%rbp)
	jle	.L211
	cmpl	$16, -64(%rbp)
	jg	.L211
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L212
.L211:
	movl	$0, %eax
	jmp	.L207
.L212:
	movl	-64(%rbp), %eax
	movslq	%eax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movl	%edx, 748(%rax)
	movl	$1, %eax
	jmp	.L207
.L203:
	cmpl	$0, -64(%rbp)
	jle	.L213
	cmpl	$16, -64(%rbp)
	jg	.L213
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L213
	movq	-32(%rbp), %rax
	movl	748(%rax), %eax
	testl	%eax, %eax
	jns	.L214
.L213:
	movl	$0, %eax
	jmp	.L207
.L214:
	movl	-64(%rbp), %eax
	movslq	%eax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
	jmp	.L207
.L201:
	cmpl	$-1, -64(%rbp)
	jne	.L215
	movq	-32(%rbp), %rax
	movl	744(%rax), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	736(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movl	$1, 752(%rax)
	movl	$1, %eax
	jmp	.L207
.L215:
	cmpl	$3, -64(%rbp)
	jle	.L216
	movq	-32(%rbp), %rax
	movl	744(%rax), %eax
	subl	-64(%rbp), %eax
	cmpl	$7, %eax
	jg	.L217
.L216:
	movl	$0, %eax
	jmp	.L207
.L217:
	cmpl	$0, -64(%rbp)
	je	.L218
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	736(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L218:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L219
	movq	-32(%rbp), %rax
	movl	744(%rax), %eax
	subl	-64(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	736(%rdx), %rcx
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	RAND_bytes@PLT
	testl	%eax, %eax
	jg	.L219
	movl	$0, %eax
	jmp	.L207
.L219:
	movq	-32(%rbp), %rax
	movl	$1, 752(%rax)
	movl	$1, %eax
	jmp	.L207
.L200:
	movq	-32(%rbp), %rax
	movl	752(%rax), %eax
	testl	%eax, %eax
	je	.L220
	movq	-32(%rbp), %rax
	movl	280(%rax), %eax
	testl	%eax, %eax
	jne	.L221
.L220:
	movl	$0, %eax
	jmp	.L207
.L221:
	movq	-32(%rbp), %rax
	movl	744(%rax), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	736(%rax), %rax
	movq	-32(%rbp), %rcx
	addq	$288, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_setiv@PLT
	cmpl	$0, -64(%rbp)
	jle	.L222
	movq	-32(%rbp), %rax
	movl	744(%rax), %eax
	cmpl	%eax, -64(%rbp)
	jle	.L223
.L222:
	movq	-32(%rbp), %rax
	movl	744(%rax), %eax
	movl	%eax, -64(%rbp)
.L223:
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	736(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	744(%rax), %eax
	movslq	%eax, %rsi
	movl	-64(%rbp), %eax
	cltq
	subq	%rax, %rsi
	addq	%rsi, %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movq	736(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	744(%rax), %eax
	cltq
	subq	$8, %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	ctr64_inc
	movq	-32(%rbp), %rax
	movl	$1, 284(%rax)
	movl	$1, %eax
	jmp	.L207
.L198:
	movq	-32(%rbp), %rax
	movl	752(%rax), %eax
	testl	%eax, %eax
	je	.L224
	movq	-32(%rbp), %rax
	movl	280(%rax), %eax
	testl	%eax, %eax
	je	.L224
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L225
.L224:
	movl	$0, %eax
	jmp	.L207
.L225:
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	736(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	744(%rax), %eax
	movslq	%eax, %rsi
	movl	-64(%rbp), %eax
	cltq
	subq	%rax, %rsi
	addq	%rsi, %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movl	744(%rax), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	736(%rax), %rax
	movq	-32(%rbp), %rcx
	addq	$288, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_setiv@PLT
	movq	-32(%rbp), %rax
	movl	$1, 284(%rax)
	movl	$1, %eax
	jmp	.L207
.L199:
	cmpl	$13, -64(%rbp)
	je	.L226
	movl	$0, %eax
	jmp	.L207
.L226:
	movl	-64(%rbp), %eax
	movslq	%eax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movl	%edx, 756(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	subq	$2, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%ebx, %eax
	movl	%eax, -20(%rbp)
	cmpl	$7, -20(%rbp)
	ja	.L227
	movl	$0, %eax
	jmp	.L207
.L227:
	subl	$8, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	jne	.L228
	cmpl	$15, -20(%rbp)
	ja	.L229
	movl	$0, %eax
	jmp	.L207
.L229:
	subl	$16, -20(%rbp)
.L228:
	movl	-20(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	subq	$2, %rdx
	addq	%rdx, %rax
	movl	%ebx, %edx
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movl	-20(%rbp), %edx
	movb	%dl, (%rax)
	movl	$16, %eax
	jmp	.L207
.L206:
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	je	.L230
	movq	-32(%rbp), %rax
	movq	680(%rax), %rdx
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L231
	movl	$0, %eax
	jmp	.L207
.L231:
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 680(%rax)
.L230:
	movq	-32(%rbp), %rax
	movq	736(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$40, %rax
	cmpq	%rax, %rdx
	jne	.L232
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 736(%rax)
	jmp	.L233
.L232:
	movq	-32(%rbp), %rax
	movl	744(%rax), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$385, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 736(%rax)
	movq	-48(%rbp), %rax
	movq	736(%rax), %rax
	testq	%rax, %rax
	jne	.L234
	movl	$0, %eax
	jmp	.L207
.L234:
	movq	-32(%rbp), %rax
	movl	744(%rax), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	736(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	736(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L233:
	movl	$1, %eax
	jmp	.L207
.L197:
	movl	$-1, %eax
.L207:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	aria_gcm_ctrl, .-aria_gcm_ctrl
	.type	aria_gcm_tls_cipher, @function
aria_gcm_tls_cipher:
.LFB532:
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
	movq	%rax, -32(%rbp)
	movl	$-1, -20(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.L236
	cmpq	$23, -64(%rbp)
	ja	.L237
.L236:
	movl	$-1, %eax
	jmp	.L238
.L237:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L239
	movl	$19, %esi
	jmp	.L240
.L239:
	movl	$24, %esi
.L240:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jle	.L248
	movq	-32(%rbp), %rax
	movl	756(%rax), %eax
	movslq	%eax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	addq	$288, %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_gcm128_aad@PLT
	testl	%eax, %eax
	jne	.L249
	addq	$8, -56(%rbp)
	addq	$8, -48(%rbp)
	subq	$24, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L244
	movq	-32(%rbp), %rax
	leaq	288(%rax), %rdi
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_gcm128_encrypt@PLT
	testl	%eax, %eax
	jne	.L250
	movq	-64(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	leaq	288(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	$16, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_tag@PLT
	movq	-64(%rbp), %rax
	addl	$24, %eax
	movl	%eax, -20(%rbp)
	jmp	.L242
.L244:
	movq	-32(%rbp), %rax
	leaq	288(%rax), %rdi
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_gcm128_decrypt@PLT
	testl	%eax, %eax
	jne	.L251
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	addq	$288, %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_gcm128_tag@PLT
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movl	$16, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L247
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	jmp	.L242
.L247:
	movq	-64(%rbp), %rax
	movl	%eax, -20(%rbp)
	jmp	.L242
.L248:
	nop
	jmp	.L242
.L249:
	nop
	jmp	.L242
.L250:
	nop
	jmp	.L242
.L251:
	nop
.L242:
	movq	-32(%rbp), %rax
	movl	$0, 284(%rax)
	movq	-32(%rbp), %rax
	movl	$-1, 756(%rax)
	movl	-20(%rbp), %eax
.L238:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	aria_gcm_tls_cipher, .-aria_gcm_tls_cipher
	.type	aria_gcm_cipher, @function
aria_gcm_cipher:
.LFB533:
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
	movl	280(%rax), %eax
	testl	%eax, %eax
	jne	.L253
	movl	$-1, %eax
	jmp	.L254
.L253:
	movq	-24(%rbp), %rax
	movl	756(%rax), %eax
	testl	%eax, %eax
	js	.L255
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	aria_gcm_tls_cipher
	jmp	.L254
.L255:
	movq	-24(%rbp), %rax
	movl	284(%rax), %eax
	testl	%eax, %eax
	jne	.L256
	movl	$-1, %eax
	jmp	.L254
.L256:
	cmpq	$0, -56(%rbp)
	je	.L257
	cmpq	$0, -48(%rbp)
	jne	.L258
	movq	-24(%rbp), %rax
	leaq	288(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_aad@PLT
	testl	%eax, %eax
	je	.L259
	movl	$-1, %eax
	jmp	.L254
.L258:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L260
	movq	-24(%rbp), %rax
	leaq	288(%rax), %rdi
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_gcm128_encrypt@PLT
	testl	%eax, %eax
	je	.L259
	movl	$-1, %eax
	jmp	.L254
.L260:
	movq	-24(%rbp), %rax
	leaq	288(%rax), %rdi
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_gcm128_decrypt@PLT
	testl	%eax, %eax
	je	.L259
	movl	$-1, %eax
	jmp	.L254
.L259:
	movq	-64(%rbp), %rax
	jmp	.L254
.L257:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	jne	.L261
	movq	-24(%rbp), %rax
	movl	748(%rax), %eax
	testl	%eax, %eax
	jns	.L262
	movl	$-1, %eax
	jmp	.L254
.L262:
	movq	-24(%rbp), %rax
	movl	748(%rax), %eax
	movslq	%eax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	addq	$288, %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_gcm128_finish@PLT
	testl	%eax, %eax
	je	.L263
	movl	$-1, %eax
	jmp	.L254
.L263:
	movq	-24(%rbp), %rax
	movl	$0, 284(%rax)
	movl	$0, %eax
	jmp	.L254
.L261:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	addq	$288, %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_gcm128_tag@PLT
	movq	-24(%rbp), %rax
	movl	$16, 748(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 284(%rax)
	movl	$0, %eax
.L254:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	aria_gcm_cipher, .-aria_gcm_cipher
	.type	aria_gcm_cleanup, @function
aria_gcm_cleanup:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	736(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$40, %rax
	cmpq	%rax, %rdx
	je	.L265
	movq	-8(%rbp), %rax
	movq	736(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$503, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L265:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	aria_gcm_cleanup, .-aria_gcm_cleanup
	.type	aria_ccm_init_key, @function
aria_ccm_init_key:
.LFB535:
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
	movl	%ecx, -60(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L268
	cmpq	$0, -48(%rbp)
	jne	.L268
	movl	$1, %eax
	jmp	.L269
.L268:
	cmpq	$0, -48(%rbp)
	je	.L270
	movq	-24(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	leal	0(,%rax,8), %ecx
	movq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_aria_set_encrypt_key@PLT
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	movl	296(%rdx), %edx
	movl	%edx, %r9d
	movq	-24(%rbp), %rdx
	movl	300(%rdx), %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rdx
	leaq	312(%rdx), %rdi
	movq	ossl_aria_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	%r9d, %edx
	call	CRYPTO_ccm128_init@PLT
	cmpl	$0, -28(%rbp)
	jns	.L271
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$524, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$176, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L269
.L271:
	movq	-24(%rbp), %rax
	movq	$0, 368(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 280(%rax)
.L270:
	cmpq	$0, -56(%rbp)
	je	.L272
	movq	-24(%rbp), %rax
	movl	296(%rax), %eax
	movl	$15, %edx
	subl	%eax, %edx
	movslq	%edx, %rdx
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movl	$1, 284(%rax)
.L272:
	movl	$1, %eax
.L269:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	aria_ccm_init_key, .-aria_ccm_init_key
	.type	aria_ccm_ctrl, @function
aria_ccm_ctrl:
.LFB536:
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
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -32(%rbp)
	cmpl	$37, -60(%rbp)
	je	.L274
	cmpl	$37, -60(%rbp)
	jg	.L275
	cmpl	$22, -60(%rbp)
	je	.L276
	cmpl	$22, -60(%rbp)
	jg	.L275
	cmpl	$20, -60(%rbp)
	je	.L277
	cmpl	$20, -60(%rbp)
	jg	.L275
	cmpl	$18, -60(%rbp)
	je	.L278
	cmpl	$18, -60(%rbp)
	jg	.L275
	cmpl	$17, -60(%rbp)
	je	.L279
	cmpl	$17, -60(%rbp)
	jg	.L275
	cmpl	$16, -60(%rbp)
	je	.L280
	cmpl	$16, -60(%rbp)
	jg	.L275
	cmpl	$9, -60(%rbp)
	je	.L281
	cmpl	$9, -60(%rbp)
	jg	.L275
	cmpl	$0, -60(%rbp)
	je	.L282
	cmpl	$8, -60(%rbp)
	je	.L283
	jmp	.L275
.L282:
	movq	-32(%rbp), %rax
	movl	$0, 280(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 284(%rax)
	movq	-32(%rbp), %rax
	movl	$8, 296(%rax)
	movq	-32(%rbp), %rax
	movl	$12, 300(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 288(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 292(%rax)
	movq	-32(%rbp), %rax
	movl	$-1, 304(%rax)
	movl	$1, %eax
	jmp	.L284
.L274:
	movq	-32(%rbp), %rax
	movl	296(%rax), %eax
	movl	$15, %edx
	subl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L284
.L276:
	cmpl	$13, -64(%rbp)
	je	.L285
	movl	$0, %eax
	jmp	.L284
.L285:
	movl	-64(%rbp), %eax
	movslq	%eax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movl	%edx, 304(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	subq	$2, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%ebx, %eax
	movw	%ax, -18(%rbp)
	cmpw	$7, -18(%rbp)
	ja	.L286
	movl	$0, %eax
	jmp	.L284
.L286:
	subw	$8, -18(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	jne	.L287
	movzwl	-18(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	300(%rax), %eax
	cmpl	%eax, %edx
	jge	.L288
	movl	$0, %eax
	jmp	.L284
.L288:
	movq	-32(%rbp), %rax
	movl	300(%rax), %eax
	subw	%ax, -18(%rbp)
.L287:
	movzwl	-18(%rbp), %eax
	shrw	$8, %ax
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	subq	$2, %rdx
	addq	%rdx, %rax
	movl	%ebx, %edx
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzwl	-18(%rbp), %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	movl	300(%rax), %eax
	jmp	.L284
.L278:
	cmpl	$4, -64(%rbp)
	je	.L289
	movl	$0, %eax
	jmp	.L284
.L289:
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	$1, %eax
	jmp	.L284
.L281:
	movl	$15, %eax
	subl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
.L277:
	cmpl	$1, -64(%rbp)
	jle	.L290
	cmpl	$8, -64(%rbp)
	jle	.L291
.L290:
	movl	$0, %eax
	jmp	.L284
.L291:
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movl	%edx, 296(%rax)
	movl	$1, %eax
	jmp	.L284
.L279:
	movl	-64(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L292
	cmpl	$3, -64(%rbp)
	jle	.L292
	cmpl	$16, -64(%rbp)
	jle	.L293
.L292:
	movl	$0, %eax
	jmp	.L284
.L293:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L294
	cmpq	$0, -72(%rbp)
	je	.L294
	movl	$0, %eax
	jmp	.L284
.L294:
	cmpq	$0, -72(%rbp)
	je	.L295
	movq	-32(%rbp), %rax
	movl	$1, 288(%rax)
	movl	-64(%rbp), %eax
	movslq	%eax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L295:
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movl	%edx, 300(%rax)
	movl	$1, %eax
	jmp	.L284
.L280:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L296
	movq	-32(%rbp), %rax
	movl	288(%rax), %eax
	testl	%eax, %eax
	jne	.L297
.L296:
	movl	$0, %eax
	jmp	.L284
.L297:
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	leaq	312(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_ccm128_tag@PLT
	testq	%rax, %rax
	jne	.L298
	movl	$0, %eax
	jmp	.L284
.L298:
	movq	-32(%rbp), %rax
	movl	$0, 288(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 284(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 292(%rax)
	movl	$1, %eax
	jmp	.L284
.L283:
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	je	.L299
	movq	-32(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L300
	movl	$0, %eax
	jmp	.L284
.L300:
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 360(%rax)
.L299:
	movl	$1, %eax
	jmp	.L284
.L275:
	movl	$-1, %eax
.L284:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	aria_ccm_ctrl, .-aria_ccm_ctrl
	.type	aria_ccm_tls_cipher, @function
aria_ccm_tls_cipher:
.LFB537:
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
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$312, %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L302
	movq	-24(%rbp), %rax
	movl	300(%rax), %eax
	cltq
	addq	$8, %rax
	cmpq	%rax, -80(%rbp)
	jnb	.L303
.L302:
	movl	$-1, %eax
	jmp	.L304
.L303:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L305
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
.L305:
	movq	-56(%rbp), %rax
	addq	$40, %rax
	leaq	4(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movl	300(%rax), %eax
	addl	$8, %eax
	cltq
	subq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movl	296(%rax), %eax
	movl	$15, %edx
	subl	%eax, %edx
	movslq	%edx, %rdx
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rsi
	movq	-80(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_ccm128_setiv@PLT
	testl	%eax, %eax
	je	.L306
	movl	$-1, %eax
	jmp	.L304
.L306:
	movq	-24(%rbp), %rax
	movl	304(%rax), %eax
	movslq	%eax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_ccm128_aad@PLT
	addq	$8, -72(%rbp)
	addq	$8, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L307
	movq	-24(%rbp), %rax
	movq	368(%rax), %rax
	testq	%rax, %rax
	je	.L308
	movq	-24(%rbp), %rax
	movq	368(%rax), %rdi
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_ccm128_encrypt_ccm64@PLT
	testl	%eax, %eax
	setne	%al
	jmp	.L309
.L308:
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_ccm128_encrypt@PLT
	testl	%eax, %eax
	setne	%al
.L309:
	testb	%al, %al
	je	.L310
	movl	$-1, %eax
	jmp	.L304
.L310:
	movq	-24(%rbp), %rax
	movl	300(%rax), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rcx
	movq	-80(%rbp), %rax
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_ccm128_tag@PLT
	testq	%rax, %rax
	jne	.L311
	movl	$-1, %eax
	jmp	.L304
.L311:
	movq	-24(%rbp), %rax
	movl	300(%rax), %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	addl	%edx, %eax
	addl	$8, %eax
	jmp	.L304
.L307:
	movq	-24(%rbp), %rax
	movq	368(%rax), %rax
	testq	%rax, %rax
	je	.L312
	movq	-24(%rbp), %rax
	movq	368(%rax), %rdi
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_ccm128_decrypt_ccm64@PLT
	testl	%eax, %eax
	sete	%al
	jmp	.L313
.L312:
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_ccm128_decrypt@PLT
	testl	%eax, %eax
	sete	%al
.L313:
	testb	%al, %al
	je	.L314
	movq	-24(%rbp), %rax
	movl	300(%rax), %eax
	movslq	%eax, %rdx
	leaq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_ccm128_tag@PLT
	testq	%rax, %rax
	je	.L314
	movq	-24(%rbp), %rax
	movl	300(%rax), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rax
	addq	%rax, %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	jne	.L314
	movq	-80(%rbp), %rax
	jmp	.L304
.L314:
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$-1, %eax
.L304:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	aria_ccm_tls_cipher, .-aria_ccm_tls_cipher
	.type	aria_ccm_cipher, @function
aria_ccm_cipher:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$312, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	280(%rax), %eax
	testl	%eax, %eax
	jne	.L317
	movl	$-1, %eax
	jmp	.L318
.L317:
	movq	-32(%rbp), %rax
	movl	304(%rax), %eax
	testl	%eax, %eax
	js	.L319
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	aria_ccm_tls_cipher
	jmp	.L318
.L319:
	cmpq	$0, -88(%rbp)
	jne	.L320
	cmpq	$0, -80(%rbp)
	je	.L320
	movl	$0, %eax
	jmp	.L318
.L320:
	movq	-32(%rbp), %rax
	movl	284(%rax), %eax
	testl	%eax, %eax
	jne	.L321
	movl	$-1, %eax
	jmp	.L318
.L321:
	cmpq	$0, -80(%rbp)
	jne	.L322
	cmpq	$0, -88(%rbp)
	jne	.L323
	movq	-32(%rbp), %rax
	movl	296(%rax), %eax
	movl	$15, %edx
	subl	%eax, %edx
	movslq	%edx, %rdx
	movq	-72(%rbp), %rax
	leaq	40(%rax), %rsi
	movq	-96(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_ccm128_setiv@PLT
	testl	%eax, %eax
	je	.L324
	movl	$-1, %eax
	jmp	.L318
.L324:
	movq	-32(%rbp), %rax
	movl	$1, 292(%rax)
	movq	-96(%rbp), %rax
	jmp	.L318
.L323:
	movq	-32(%rbp), %rax
	movl	292(%rax), %eax
	testl	%eax, %eax
	jne	.L325
	cmpq	$0, -96(%rbp)
	je	.L325
	movl	$-1, %eax
	jmp	.L318
.L325:
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_ccm128_aad@PLT
	movq	-96(%rbp), %rax
	jmp	.L318
.L322:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	jne	.L326
	movq	-32(%rbp), %rax
	movl	288(%rax), %eax
	testl	%eax, %eax
	jne	.L326
	movl	$-1, %eax
	jmp	.L318
.L326:
	movq	-32(%rbp), %rax
	movl	292(%rax), %eax
	testl	%eax, %eax
	jne	.L327
	movq	-32(%rbp), %rax
	movl	296(%rax), %eax
	movl	$15, %edx
	subl	%eax, %edx
	movslq	%edx, %rdx
	movq	-72(%rbp), %rax
	leaq	40(%rax), %rsi
	movq	-96(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_ccm128_setiv@PLT
	testl	%eax, %eax
	je	.L328
	movl	$-1, %eax
	jmp	.L318
.L328:
	movq	-32(%rbp), %rax
	movl	$1, 292(%rax)
.L327:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L329
	movq	-32(%rbp), %rax
	movq	368(%rax), %rax
	testq	%rax, %rax
	je	.L330
	movq	-32(%rbp), %rax
	movq	368(%rax), %rdi
	movq	-96(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_ccm128_encrypt_ccm64@PLT
	testl	%eax, %eax
	setne	%al
	jmp	.L331
.L330:
	movq	-96(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_ccm128_encrypt@PLT
	testl	%eax, %eax
	setne	%al
.L331:
	testb	%al, %al
	je	.L332
	movl	$-1, %eax
	jmp	.L318
.L332:
	movq	-32(%rbp), %rax
	movl	$1, 288(%rax)
	movq	-96(%rbp), %rax
	jmp	.L318
.L329:
	movl	$-1, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	368(%rax), %rax
	testq	%rax, %rax
	je	.L333
	movq	-32(%rbp), %rax
	movq	368(%rax), %rdi
	movq	-96(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_ccm128_decrypt_ccm64@PLT
	testl	%eax, %eax
	sete	%al
	jmp	.L334
.L333:
	movq	-96(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_ccm128_decrypt@PLT
	testl	%eax, %eax
	sete	%al
.L334:
	testb	%al, %al
	je	.L335
	movq	-32(%rbp), %rax
	movl	300(%rax), %eax
	movslq	%eax, %rdx
	leaq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_ccm128_tag@PLT
	testq	%rax, %rax
	je	.L335
	movq	-32(%rbp), %rax
	movl	300(%rax), %eax
	movslq	%eax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movq	%rax, %rcx
	leaq	-64(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	jne	.L335
	movq	-96(%rbp), %rax
	movl	%eax, -20(%rbp)
.L335:
	cmpl	$-1, -20(%rbp)
	jne	.L337
	movq	-96(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L337:
	movq	-32(%rbp), %rax
	movl	$0, 284(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 288(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 292(%rax)
	movl	-20(%rbp), %eax
.L318:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	aria_ccm_cipher, .-aria_ccm_cipher
	.section	.data.rel.ro.local
	.align 32
	.type	aria_128_gcm, @object
	.size	aria_128_gcm, 248
aria_128_gcm:
	.long	1123
	.long	1
	.long	16
	.long	12
	.quad	3148918
	.long	1
	.zero	4
	.quad	aria_gcm_init_key
	.quad	aria_gcm_cipher
	.quad	aria_gcm_cleanup
	.long	760
	.zero	4
	.quad	0
	.quad	0
	.quad	aria_gcm_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_128_gcm
	.type	EVP_aria_128_gcm, @function
EVP_aria_128_gcm:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_128_gcm(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	EVP_aria_128_gcm, .-EVP_aria_128_gcm
	.section	.data.rel.ro.local
	.align 32
	.type	aria_192_gcm, @object
	.size	aria_192_gcm, 248
aria_192_gcm:
	.long	1124
	.long	1
	.long	24
	.long	12
	.quad	3148918
	.long	1
	.zero	4
	.quad	aria_gcm_init_key
	.quad	aria_gcm_cipher
	.quad	aria_gcm_cleanup
	.long	760
	.zero	4
	.quad	0
	.quad	0
	.quad	aria_gcm_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_192_gcm
	.type	EVP_aria_192_gcm, @function
EVP_aria_192_gcm:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_192_gcm(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	EVP_aria_192_gcm, .-EVP_aria_192_gcm
	.section	.data.rel.ro.local
	.align 32
	.type	aria_256_gcm, @object
	.size	aria_256_gcm, 248
aria_256_gcm:
	.long	1125
	.long	1
	.long	32
	.long	12
	.quad	3148918
	.long	1
	.zero	4
	.quad	aria_gcm_init_key
	.quad	aria_gcm_cipher
	.quad	aria_gcm_cleanup
	.long	760
	.zero	4
	.quad	0
	.quad	0
	.quad	aria_gcm_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_256_gcm
	.type	EVP_aria_256_gcm, @function
EVP_aria_256_gcm:
.LFB541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_256_gcm(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	EVP_aria_256_gcm, .-EVP_aria_256_gcm
	.section	.data.rel.ro.local
	.align 32
	.type	aria_128_ccm, @object
	.size	aria_128_ccm, 248
aria_128_ccm:
	.long	1120
	.long	1
	.long	16
	.long	12
	.quad	3148919
	.long	1
	.zero	4
	.quad	aria_ccm_init_key
	.quad	aria_ccm_cipher
	.quad	0
	.long	376
	.zero	4
	.quad	0
	.quad	0
	.quad	aria_ccm_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_128_ccm
	.type	EVP_aria_128_ccm, @function
EVP_aria_128_ccm:
.LFB542:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_128_ccm(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	EVP_aria_128_ccm, .-EVP_aria_128_ccm
	.section	.data.rel.ro.local
	.align 32
	.type	aria_192_ccm, @object
	.size	aria_192_ccm, 248
aria_192_ccm:
	.long	1121
	.long	1
	.long	24
	.long	12
	.quad	3148919
	.long	1
	.zero	4
	.quad	aria_ccm_init_key
	.quad	aria_ccm_cipher
	.quad	0
	.long	376
	.zero	4
	.quad	0
	.quad	0
	.quad	aria_ccm_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_192_ccm
	.type	EVP_aria_192_ccm, @function
EVP_aria_192_ccm:
.LFB543:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_192_ccm(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	EVP_aria_192_ccm, .-EVP_aria_192_ccm
	.section	.data.rel.ro.local
	.align 32
	.type	aria_256_ccm, @object
	.size	aria_256_ccm, 248
aria_256_ccm:
	.long	1122
	.long	1
	.long	32
	.long	12
	.quad	3148919
	.long	1
	.zero	4
	.quad	aria_ccm_init_key
	.quad	aria_ccm_cipher
	.quad	0
	.long	376
	.zero	4
	.quad	0
	.quad	0
	.quad	aria_ccm_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_aria_256_ccm
	.type	EVP_aria_256_ccm, @function
EVP_aria_256_ccm:
.LFB544:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aria_256_ccm(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	EVP_aria_256_ccm, .-EVP_aria_256_ccm
	.section	.rodata
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 14
__func__.2:
	.string	"aria_init_key"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"aria_gcm_init_key"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"aria_ccm_init_key"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

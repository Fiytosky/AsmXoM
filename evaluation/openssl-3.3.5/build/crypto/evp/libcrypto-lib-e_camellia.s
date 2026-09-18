	.file	"e_camellia.c"
	.text
	.section	.rodata
.LC0:
	.string	"../crypto/evp/e_camellia.c"
	.text
	.type	camellia_init_key, @function
camellia_init_key:
.LFB438:
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
	movq	-24(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	leal	0(,%rax,8), %ecx
	movq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	Camellia_set_key@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L2
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$201, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$157, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	movl	%eax, -32(%rbp)
	cmpl	$1, -32(%rbp)
	je	.L4
	cmpl	$2, -32(%rbp)
	jne	.L5
.L4:
	cmpl	$0, -60(%rbp)
	jne	.L5
	movq	-24(%rbp), %rax
	movq	Camellia_decrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 280(%rax)
	cmpl	$2, -32(%rbp)
	jne	.L6
	movq	Camellia_cbc_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	jmp	.L7
.L6:
	movl	$0, %edx
.L7:
	movq	-24(%rbp), %rax
	movq	%rdx, 288(%rax)
	jmp	.L8
.L5:
	movq	-24(%rbp), %rax
	movq	Camellia_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 280(%rax)
	cmpl	$2, -32(%rbp)
	jne	.L9
	movq	Camellia_cbc_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	jmp	.L10
.L9:
	movl	$0, %edx
.L10:
	movq	-24(%rbp), %rax
	movq	%rdx, 288(%rax)
.L8:
	movl	$1, %eax
.L3:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE438:
	.size	camellia_init_key, .-camellia_init_key
	.type	camellia_cbc_cipher, @function
camellia_cbc_cipher:
.LFB439:
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
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L12
	movq	-24(%rbp), %rax
	movq	288(%rax), %rbx
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
	jmp	.L13
.L12:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L14
	movq	-24(%rbp), %rax
	movq	280(%rax), %rdi
	movq	-40(%rbp), %rax
	leaq	40(%rax), %r8
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	CRYPTO_cbc128_encrypt@PLT
	jmp	.L13
.L14:
	movq	-24(%rbp), %rax
	movq	280(%rax), %rdi
	movq	-40(%rbp), %rax
	leaq	40(%rax), %r8
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	CRYPTO_cbc128_decrypt@PLT
.L13:
	movl	$1, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE439:
	.size	camellia_cbc_cipher, .-camellia_cbc_cipher
	.type	camellia_ecb_cipher, @function
camellia_ecb_cipher:
.LFB440:
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
	call	EVP_CIPHER_CTX_get_block_size@PLT
	cltq
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L17
	movl	$1, %eax
	jmp	.L18
.L17:
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -64(%rbp)
	jmp	.L19
.L20:
	movq	-24(%rbp), %rax
	movq	280(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdx
	addq	%rdx, %rsi
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rdx
	addq	%rdx, %rdi
	movq	%rax, %rdx
	call	*%rcx
	movq	-16(%rbp), %rax
	addq	%rax, -8(%rbp)
.L19:
	movq	-8(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	jnb	.L20
	movl	$1, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE440:
	.size	camellia_ecb_cipher, .-camellia_ecb_cipher
	.type	camellia_ofb_cipher, @function
camellia_ofb_cipher:
.LFB441:
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
	movq	280(%rax), %rdi
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
.LFE441:
	.size	camellia_ofb_cipher, .-camellia_ofb_cipher
	.type	camellia_cfb_cipher, @function
camellia_cfb_cipher:
.LFB442:
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
	movq	280(%rax), %rbx
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
.LFE442:
	.size	camellia_cfb_cipher, .-camellia_cfb_cipher
	.type	camellia_cfb8_cipher, @function
camellia_cfb8_cipher:
.LFB443:
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
	movq	280(%rax), %rbx
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
	call	CRYPTO_cfb128_8_encrypt@PLT
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
.LFE443:
	.size	camellia_cfb8_cipher, .-camellia_cfb8_cipher
	.type	camellia_cfb1_cipher, @function
camellia_cfb1_cipher:
.LFB444:
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
	movq	-56(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_test_flags@PLT
	testl	%eax, %eax
	je	.L30
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	280(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %edi
	movq	-56(%rbp), %rax
	leaq	40(%rax), %r10
	movq	-24(%rbp), %rcx
	leaq	-28(%rbp), %r8
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	pushq	%rbx
	pushq	%rdi
	movq	%r8, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	CRYPTO_cfb128_1_encrypt@PLT
	addq	$16, %rsp
	movl	-28(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	movl	$1, %eax
	jmp	.L29
.L31:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	280(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	leaq	40(%rax), %r10
	movq	-24(%rbp), %rdx
	leaq	-32(%rbp), %r8
	movabsq	$-9223372036854775808, %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	pushq	%rbx
	pushq	%rcx
	movq	%r8, %r9
	movq	%r10, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	CRYPTO_cfb128_1_encrypt@PLT
	addq	$16, %rsp
	movl	-32(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	movabsq	$-1152921504606846976, %rax
	addq	%rax, -80(%rbp)
	movabsq	$1152921504606846976, %rax
	addq	%rax, -64(%rbp)
	movabsq	$1152921504606846976, %rax
	addq	%rax, -72(%rbp)
.L30:
	movabsq	$1152921504606846975, %rax
	cmpq	-80(%rbp), %rax
	jb	.L31
	cmpq	$0, -80(%rbp)
	je	.L32
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	280(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	leaq	40(%rax), %r10
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rax
	leaq	0(,%rax,8), %rdi
	leaq	-36(%rbp), %r8
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	pushq	%rbx
	pushq	%rcx
	movq	%r8, %r9
	movq	%r10, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	CRYPTO_cfb128_1_encrypt@PLT
	addq	$16, %rsp
	movl	-36(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
.L32:
	movl	$1, %eax
.L29:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE444:
	.size	camellia_cfb1_cipher, .-camellia_cfb1_cipher
	.type	camellia_ctr_cipher, @function
camellia_ctr_cipher:
.LFB445:
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
	jns	.L34
	movl	$0, %eax
	jmp	.L38
.L34:
	movl	-20(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-32(%rbp), %rax
	movq	288(%rax), %rbx
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
	jmp	.L37
.L36:
	movq	-32(%rbp), %rax
	movq	280(%rax), %rbx
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
.L37:
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	movl	$1, %eax
.L38:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE445:
	.size	camellia_ctr_cipher, .-camellia_ctr_cipher
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	camellia_128_cbc, @object
	.size	camellia_128_cbc, 248
camellia_128_cbc:
	.long	751
	.long	16
	.long	16
	.long	16
	.quad	2
	.long	1
	.zero	4
	.quad	camellia_init_key
	.quad	camellia_cbc_cipher
	.quad	0
	.long	296
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_camellia_128_cbc
	.type	EVP_camellia_128_cbc, @function
EVP_camellia_128_cbc:
.LFB446:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	camellia_128_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE446:
	.size	EVP_camellia_128_cbc, .-EVP_camellia_128_cbc
	.section	.data.rel.ro.local
	.align 32
	.type	camellia_128_ecb, @object
	.size	camellia_128_ecb, 248
camellia_128_ecb:
	.long	754
	.long	16
	.long	16
	.long	0
	.quad	1
	.long	1
	.zero	4
	.quad	camellia_init_key
	.quad	camellia_ecb_cipher
	.quad	0
	.long	296
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_camellia_128_ecb
	.type	EVP_camellia_128_ecb, @function
EVP_camellia_128_ecb:
.LFB447:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	camellia_128_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE447:
	.size	EVP_camellia_128_ecb, .-EVP_camellia_128_ecb
	.section	.data.rel.ro.local
	.align 32
	.type	camellia_128_ofb, @object
	.size	camellia_128_ofb, 248
camellia_128_ofb:
	.long	766
	.long	1
	.long	16
	.long	16
	.quad	4
	.long	1
	.zero	4
	.quad	camellia_init_key
	.quad	camellia_ofb_cipher
	.quad	0
	.long	296
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_camellia_128_ofb
	.type	EVP_camellia_128_ofb, @function
EVP_camellia_128_ofb:
.LFB448:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	camellia_128_ofb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE448:
	.size	EVP_camellia_128_ofb, .-EVP_camellia_128_ofb
	.section	.data.rel.ro.local
	.align 32
	.type	camellia_128_cfb, @object
	.size	camellia_128_cfb, 248
camellia_128_cfb:
	.long	757
	.long	1
	.long	16
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	camellia_init_key
	.quad	camellia_cfb_cipher
	.quad	0
	.long	296
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_camellia_128_cfb128
	.type	EVP_camellia_128_cfb128, @function
EVP_camellia_128_cfb128:
.LFB449:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	camellia_128_cfb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE449:
	.size	EVP_camellia_128_cfb128, .-EVP_camellia_128_cfb128
	.section	.data.rel.ro.local
	.align 32
	.type	camellia_128_cfb1, @object
	.size	camellia_128_cfb1, 248
camellia_128_cfb1:
	.long	760
	.long	1
	.long	16
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	camellia_init_key
	.quad	camellia_cfb1_cipher
	.quad	0
	.long	296
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_camellia_128_cfb1
	.type	EVP_camellia_128_cfb1, @function
EVP_camellia_128_cfb1:
.LFB450:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	camellia_128_cfb1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE450:
	.size	EVP_camellia_128_cfb1, .-EVP_camellia_128_cfb1
	.section	.data.rel.ro.local
	.align 32
	.type	camellia_128_cfb8, @object
	.size	camellia_128_cfb8, 248
camellia_128_cfb8:
	.long	763
	.long	1
	.long	16
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	camellia_init_key
	.quad	camellia_cfb8_cipher
	.quad	0
	.long	296
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_camellia_128_cfb8
	.type	EVP_camellia_128_cfb8, @function
EVP_camellia_128_cfb8:
.LFB451:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	camellia_128_cfb8(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE451:
	.size	EVP_camellia_128_cfb8, .-EVP_camellia_128_cfb8
	.section	.data.rel.ro.local
	.align 32
	.type	camellia_128_ctr, @object
	.size	camellia_128_ctr, 248
camellia_128_ctr:
	.long	963
	.long	1
	.long	16
	.long	16
	.quad	5
	.long	1
	.zero	4
	.quad	camellia_init_key
	.quad	camellia_ctr_cipher
	.quad	0
	.long	296
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_camellia_128_ctr
	.type	EVP_camellia_128_ctr, @function
EVP_camellia_128_ctr:
.LFB452:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	camellia_128_ctr(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE452:
	.size	EVP_camellia_128_ctr, .-EVP_camellia_128_ctr
	.section	.data.rel.ro.local
	.align 32
	.type	camellia_192_cbc, @object
	.size	camellia_192_cbc, 248
camellia_192_cbc:
	.long	752
	.long	16
	.long	24
	.long	16
	.quad	2
	.long	1
	.zero	4
	.quad	camellia_init_key
	.quad	camellia_cbc_cipher
	.quad	0
	.long	296
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_camellia_192_cbc
	.type	EVP_camellia_192_cbc, @function
EVP_camellia_192_cbc:
.LFB453:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	camellia_192_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE453:
	.size	EVP_camellia_192_cbc, .-EVP_camellia_192_cbc
	.section	.data.rel.ro.local
	.align 32
	.type	camellia_192_ecb, @object
	.size	camellia_192_ecb, 248
camellia_192_ecb:
	.long	755
	.long	16
	.long	24
	.long	0
	.quad	1
	.long	1
	.zero	4
	.quad	camellia_init_key
	.quad	camellia_ecb_cipher
	.quad	0
	.long	296
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_camellia_192_ecb
	.type	EVP_camellia_192_ecb, @function
EVP_camellia_192_ecb:
.LFB454:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	camellia_192_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE454:
	.size	EVP_camellia_192_ecb, .-EVP_camellia_192_ecb
	.section	.data.rel.ro.local
	.align 32
	.type	camellia_192_ofb, @object
	.size	camellia_192_ofb, 248
camellia_192_ofb:
	.long	767
	.long	1
	.long	24
	.long	16
	.quad	4
	.long	1
	.zero	4
	.quad	camellia_init_key
	.quad	camellia_ofb_cipher
	.quad	0
	.long	296
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_camellia_192_ofb
	.type	EVP_camellia_192_ofb, @function
EVP_camellia_192_ofb:
.LFB455:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	camellia_192_ofb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE455:
	.size	EVP_camellia_192_ofb, .-EVP_camellia_192_ofb
	.section	.data.rel.ro.local
	.align 32
	.type	camellia_192_cfb, @object
	.size	camellia_192_cfb, 248
camellia_192_cfb:
	.long	758
	.long	1
	.long	24
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	camellia_init_key
	.quad	camellia_cfb_cipher
	.quad	0
	.long	296
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_camellia_192_cfb128
	.type	EVP_camellia_192_cfb128, @function
EVP_camellia_192_cfb128:
.LFB456:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	camellia_192_cfb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE456:
	.size	EVP_camellia_192_cfb128, .-EVP_camellia_192_cfb128
	.section	.data.rel.ro.local
	.align 32
	.type	camellia_192_cfb1, @object
	.size	camellia_192_cfb1, 248
camellia_192_cfb1:
	.long	761
	.long	1
	.long	24
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	camellia_init_key
	.quad	camellia_cfb1_cipher
	.quad	0
	.long	296
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_camellia_192_cfb1
	.type	EVP_camellia_192_cfb1, @function
EVP_camellia_192_cfb1:
.LFB457:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	camellia_192_cfb1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE457:
	.size	EVP_camellia_192_cfb1, .-EVP_camellia_192_cfb1
	.section	.data.rel.ro.local
	.align 32
	.type	camellia_192_cfb8, @object
	.size	camellia_192_cfb8, 248
camellia_192_cfb8:
	.long	764
	.long	1
	.long	24
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	camellia_init_key
	.quad	camellia_cfb8_cipher
	.quad	0
	.long	296
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_camellia_192_cfb8
	.type	EVP_camellia_192_cfb8, @function
EVP_camellia_192_cfb8:
.LFB458:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	camellia_192_cfb8(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	EVP_camellia_192_cfb8, .-EVP_camellia_192_cfb8
	.section	.data.rel.ro.local
	.align 32
	.type	camellia_192_ctr, @object
	.size	camellia_192_ctr, 248
camellia_192_ctr:
	.long	967
	.long	1
	.long	24
	.long	16
	.quad	5
	.long	1
	.zero	4
	.quad	camellia_init_key
	.quad	camellia_ctr_cipher
	.quad	0
	.long	296
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_camellia_192_ctr
	.type	EVP_camellia_192_ctr, @function
EVP_camellia_192_ctr:
.LFB459:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	camellia_192_ctr(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	EVP_camellia_192_ctr, .-EVP_camellia_192_ctr
	.section	.data.rel.ro.local
	.align 32
	.type	camellia_256_cbc, @object
	.size	camellia_256_cbc, 248
camellia_256_cbc:
	.long	753
	.long	16
	.long	32
	.long	16
	.quad	2
	.long	1
	.zero	4
	.quad	camellia_init_key
	.quad	camellia_cbc_cipher
	.quad	0
	.long	296
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_camellia_256_cbc
	.type	EVP_camellia_256_cbc, @function
EVP_camellia_256_cbc:
.LFB460:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	camellia_256_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	EVP_camellia_256_cbc, .-EVP_camellia_256_cbc
	.section	.data.rel.ro.local
	.align 32
	.type	camellia_256_ecb, @object
	.size	camellia_256_ecb, 248
camellia_256_ecb:
	.long	756
	.long	16
	.long	32
	.long	0
	.quad	1
	.long	1
	.zero	4
	.quad	camellia_init_key
	.quad	camellia_ecb_cipher
	.quad	0
	.long	296
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_camellia_256_ecb
	.type	EVP_camellia_256_ecb, @function
EVP_camellia_256_ecb:
.LFB461:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	camellia_256_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE461:
	.size	EVP_camellia_256_ecb, .-EVP_camellia_256_ecb
	.section	.data.rel.ro.local
	.align 32
	.type	camellia_256_ofb, @object
	.size	camellia_256_ofb, 248
camellia_256_ofb:
	.long	768
	.long	1
	.long	32
	.long	16
	.quad	4
	.long	1
	.zero	4
	.quad	camellia_init_key
	.quad	camellia_ofb_cipher
	.quad	0
	.long	296
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_camellia_256_ofb
	.type	EVP_camellia_256_ofb, @function
EVP_camellia_256_ofb:
.LFB462:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	camellia_256_ofb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE462:
	.size	EVP_camellia_256_ofb, .-EVP_camellia_256_ofb
	.section	.data.rel.ro.local
	.align 32
	.type	camellia_256_cfb, @object
	.size	camellia_256_cfb, 248
camellia_256_cfb:
	.long	759
	.long	1
	.long	32
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	camellia_init_key
	.quad	camellia_cfb_cipher
	.quad	0
	.long	296
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_camellia_256_cfb128
	.type	EVP_camellia_256_cfb128, @function
EVP_camellia_256_cfb128:
.LFB463:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	camellia_256_cfb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE463:
	.size	EVP_camellia_256_cfb128, .-EVP_camellia_256_cfb128
	.section	.data.rel.ro.local
	.align 32
	.type	camellia_256_cfb1, @object
	.size	camellia_256_cfb1, 248
camellia_256_cfb1:
	.long	762
	.long	1
	.long	32
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	camellia_init_key
	.quad	camellia_cfb1_cipher
	.quad	0
	.long	296
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_camellia_256_cfb1
	.type	EVP_camellia_256_cfb1, @function
EVP_camellia_256_cfb1:
.LFB464:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	camellia_256_cfb1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE464:
	.size	EVP_camellia_256_cfb1, .-EVP_camellia_256_cfb1
	.section	.data.rel.ro.local
	.align 32
	.type	camellia_256_cfb8, @object
	.size	camellia_256_cfb8, 248
camellia_256_cfb8:
	.long	765
	.long	1
	.long	32
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	camellia_init_key
	.quad	camellia_cfb8_cipher
	.quad	0
	.long	296
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_camellia_256_cfb8
	.type	EVP_camellia_256_cfb8, @function
EVP_camellia_256_cfb8:
.LFB465:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	camellia_256_cfb8(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	EVP_camellia_256_cfb8, .-EVP_camellia_256_cfb8
	.section	.data.rel.ro.local
	.align 32
	.type	camellia_256_ctr, @object
	.size	camellia_256_ctr, 248
camellia_256_ctr:
	.long	971
	.long	1
	.long	32
	.long	16
	.quad	5
	.long	1
	.zero	4
	.quad	camellia_init_key
	.quad	camellia_ctr_cipher
	.quad	0
	.long	296
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_camellia_256_ctr
	.type	EVP_camellia_256_ctr, @function
EVP_camellia_256_ctr:
.LFB466:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	camellia_256_ctr(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	EVP_camellia_256_ctr, .-EVP_camellia_256_ctr
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"camellia_init_key"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

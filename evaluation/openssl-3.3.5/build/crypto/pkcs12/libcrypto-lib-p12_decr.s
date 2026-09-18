	.file	"p12_decr.c"
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
	.string	"../crypto/pkcs12/p12_decr.c"
.LC1:
	.string	"empty password"
.LC2:
	.string	"maybe wrong password"
	.text
	.globl	PKCS12_pbe_crypt_ex
	.type	PKCS12_pbe_crypt_ex, @function
PKCS12_pbe_crypt_ex:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -72(%rbp)
	movq	%r9, -88(%rbp)
	movq	$0, -8(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -36(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L6
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L6:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rbp), %r8d
	movq	-24(%rbp), %rdi
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rsi
	pushq	40(%rbp)
	pushq	32(%rbp)
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PBE_CipherInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L23
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_block_size@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L9
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$50, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L9:
	movl	-72(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$33554432, %eax
	testq	%rax, %rax
	je	.L10
	leaq	-36(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jns	.L11
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L11:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L12
	movl	-36(%rbp), %eax
	addl	%eax, -16(%rbp)
	jmp	.L10
.L12:
	movl	-36(%rbp), %eax
	cmpl	%eax, -72(%rbp)
	jge	.L13
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$66, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$119, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L13:
	movl	-36(%rbp), %eax
	subl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	$17, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jns	.L10
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$72, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L10:
	movl	-16(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$78, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L24
	movl	-72(%rbp), %edi
	movq	-80(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	jne	.L15
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$82, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -8(%rbp)
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$84, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L15:
	movl	-32(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CipherFinal_ex@PLT
	testl	%eax, %eax
	jne	.L16
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$90, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -8(%rbp)
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$92, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	cmpl	$0, -68(%rbp)
	jne	.L17
	leaq	.LC1(%rip), %rax
	jmp	.L18
.L17:
	leaq	.LC2(%rip), %rax
.L18:
	movq	%rax, %rdx
	movl	$116, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L16:
	movl	-32(%rbp), %eax
	addl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$33554432, %eax
	testq	%rax, %rax
	je	.L19
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L19
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jns	.L20
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$103, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -8(%rbp)
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$105, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L20:
	movl	-36(%rbp), %eax
	addl	%eax, -12(%rbp)
.L19:
	cmpq	$0, 16(%rbp)
	je	.L21
	movq	16(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
.L21:
	cmpq	$0, -88(%rbp)
	je	.L25
	movq	-88(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L7
.L23:
	nop
	jmp	.L7
.L24:
	nop
	jmp	.L7
.L25:
	nop
.L7:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	PKCS12_pbe_crypt_ex, .-PKCS12_pbe_crypt_ex
	.globl	PKCS12_pbe_crypt
	.type	PKCS12_pbe_crypt, @function
PKCS12_pbe_crypt:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -40(%rbp)
	movq	-40(%rbp), %r9
	movl	-24(%rbp), %r8d
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	movl	24(%rbp), %edi
	pushq	%rdi
	pushq	16(%rbp)
	movq	%rax, %rdi
	call	PKCS12_pbe_crypt_ex@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	PKCS12_pbe_crypt, .-PKCS12_pbe_crypt
	.globl	PKCS12_item_decrypt_d2i_ex
	.type	PKCS12_item_decrypt_d2i_ex, @function
PKCS12_item_decrypt_d2i_ex:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movq	%r8, -88(%rbp)
	movl	%r9d, -80(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -36(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %r8d
	movq	-88(%rbp), %rax
	movq	8(%rax), %rcx
	leaq	-24(%rbp), %r9
	movl	-76(%rbp), %edx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	pushq	24(%rbp)
	pushq	16(%rbp)
	pushq	$0
	leaq	-36(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	PKCS12_pbe_crypt_ex@PLT
	addq	$32, %rsp
	testq	%rax, %rax
	jne	.L29
	movl	$0, %eax
	jmp	.L33
.L29:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_item_d2i@PLT
	movq	%rax, -16(%rbp)
	cmpl	$0, -80(%rbp)
	je	.L31
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L31:
	cmpq	$0, -16(%rbp)
	jne	.L32
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$159, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L32:
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$160, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	PKCS12_item_decrypt_d2i_ex, .-PKCS12_item_decrypt_d2i_ex
	.globl	PKCS12_item_decrypt_d2i
	.type	PKCS12_item_decrypt_d2i, @function
PKCS12_item_decrypt_d2i:
.LFB518:
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
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -32(%rbp)
	movl	-32(%rbp), %r8d
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PKCS12_item_decrypt_d2i_ex@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	PKCS12_item_decrypt_d2i, .-PKCS12_item_decrypt_d2i
	.globl	PKCS12_item_i2d_encrypt_ex
	.type	PKCS12_item_i2d_encrypt_ex, @function
PKCS12_item_i2d_encrypt_ex:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movq	%r8, -72(%rbp)
	movl	%r9d, -64(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L37
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$189, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L38
.L37:
	movq	-48(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L39
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$194, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L38
.L39:
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	leaq	8(%rax), %r9
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %r8d
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	24(%rbp)
	pushq	16(%rbp)
	pushq	$1
	pushq	%rdi
	movq	%rax, %rdi
	call	PKCS12_pbe_crypt_ex@PLT
	addq	$32, %rsp
	testq	%rax, %rax
	jne	.L40
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$199, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$200, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L38
.L40:
	cmpl	$0, -64(%rbp)
	je	.L41
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L41:
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$205, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	jmp	.L43
.L38:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movl	$0, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	PKCS12_item_i2d_encrypt_ex, .-PKCS12_item_i2d_encrypt_ex
	.globl	PKCS12_item_i2d_encrypt
	.type	PKCS12_item_i2d_encrypt, @function
PKCS12_item_i2d_encrypt:
.LFB520:
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
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -32(%rbp)
	movl	-32(%rbp), %r8d
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PKCS12_item_i2d_encrypt_ex@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	PKCS12_item_i2d_encrypt, .-PKCS12_item_i2d_encrypt
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 20
__func__.2:
	.string	"PKCS12_pbe_crypt_ex"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 27
__func__.1:
	.string	"PKCS12_item_decrypt_d2i_ex"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 27
__func__.0:
	.string	"PKCS12_item_i2d_encrypt_ex"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"e_aes.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB441:
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
.LFE441:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB442:
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
.LFE442:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
	.align 4
	.type	allow_insecure_decrypt, @object
	.size	allow_insecure_decrypt, 4
allow_insecure_decrypt:
	.long	1
	.text
	.type	ctr64_inc, @function
ctr64_inc:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$8, -4(%rbp)
.L8:
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
	jne	.L9
	cmpl	$0, -4(%rbp)
	jne	.L8
	jmp	.L5
.L9:
	nop
.L5:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	ctr64_inc, .-ctr64_inc
	.section	.rodata
.LC0:
	.string	"../crypto/evp/e_aes.c"
	.text
	.type	aesni_init_key, @function
aesni_init_key:
.LFB483:
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
	movl	%ecx, -60(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	sall	$3, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L11
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$152, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	movl	%eax, -24(%rbp)
	cmpl	$1, -24(%rbp)
	je	.L13
	cmpl	$2, -24(%rbp)
	jne	.L14
.L13:
	cmpl	$0, -60(%rbp)
	jne	.L14
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_decrypt_key@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	aesni_decrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 248(%rax)
	cmpl	$2, -24(%rbp)
	jne	.L15
	movq	aesni_cbc_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	jmp	.L16
.L15:
	movl	$0, %edx
.L16:
	movq	-16(%rbp), %rax
	movq	%rdx, 256(%rax)
	jmp	.L17
.L14:
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_encrypt_key@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	aesni_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 248(%rax)
	cmpl	$2, -24(%rbp)
	jne	.L18
	movq	-16(%rbp), %rax
	movq	aesni_cbc_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 256(%rax)
	jmp	.L17
.L18:
	cmpl	$5, -24(%rbp)
	jne	.L19
	movq	-16(%rbp), %rax
	movq	aesni_ctr32_encrypt_blocks@GOTPCREL(%rip), %rdx
	movq	%rdx, 256(%rax)
	jmp	.L17
.L19:
	movq	-16(%rbp), %rax
	movq	$0, 256(%rax)
.L17:
	cmpl	$0, -4(%rbp)
	jns	.L20
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$174, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L12
.L20:
	movl	$1, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	aesni_init_key, .-aesni_init_key
	.type	aesni_cbc_cipher, @function
aesni_cbc_cipher:
.LFB484:
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
	call	aesni_cbc_encrypt@PLT
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	aesni_cbc_cipher, .-aesni_cbc_cipher
	.type	aesni_ecb_cipher, @function
aesni_ecb_cipher:
.LFB485:
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
	call	EVP_CIPHER_CTX_get_block_size@PLT
	cltq
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L24
	movl	$1, %eax
	jmp	.L25
.L24:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	%ebx, %r8d
	movq	%rax, %rdi
	call	aesni_ecb_encrypt@PLT
	movl	$1, %eax
.L25:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	aesni_ecb_cipher, .-aesni_ecb_cipher
	.type	aesni_gcm_init_key, @function
aesni_gcm_init_key:
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
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L27
	cmpq	$0, -32(%rbp)
	jne	.L27
	movl	$1, %eax
	jmp	.L28
.L27:
	cmpq	$0, -32(%rbp)
	je	.L29
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	sall	$3, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L30
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$236, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L28
.L30:
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rdx
	leaq	256(%rdx), %rcx
	movq	aesni_encrypt@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_init@PLT
	movq	-8(%rbp), %rax
	movq	aesni_ctr32_encrypt_blocks@GOTPCREL(%rip), %rdx
	movq	%rdx, 744(%rax)
	cmpq	$0, -40(%rbp)
	jne	.L31
	movq	-8(%rbp), %rax
	movl	252(%rax), %eax
	testl	%eax, %eax
	je	.L31
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movq	%rax, -40(%rbp)
.L31:
	cmpq	$0, -40(%rbp)
	je	.L32
	movq	-8(%rbp), %rax
	movl	712(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	leaq	256(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_setiv@PLT
	movq	-8(%rbp), %rax
	movl	$1, 252(%rax)
.L32:
	movq	-8(%rbp), %rax
	movl	$1, 248(%rax)
	jmp	.L33
.L29:
	movq	-8(%rbp), %rax
	movl	248(%rax), %eax
	testl	%eax, %eax
	je	.L34
	movq	-8(%rbp), %rax
	movl	712(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	leaq	256(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_setiv@PLT
	jmp	.L35
.L34:
	movq	-8(%rbp), %rax
	movl	712(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L35:
	movq	-8(%rbp), %rax
	movl	$1, 252(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 720(%rax)
.L33:
	movl	$1, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	aesni_gcm_init_key, .-aesni_gcm_init_key
	.type	aesni_xts_init_key, @function
aesni_xts_init_key:
.LFB487:
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
	movl	%ecx, -60(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L37
	cmpq	$0, -48(%rbp)
	jne	.L37
	movl	$1, %eax
	jmp	.L38
.L37:
	cmpq	$0, -48(%rbp)
	je	.L39
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	sall	$3, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L40
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$283, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L40:
	movl	$1, %eax
	testl	%eax, %eax
	je	.L41
	cmpl	$0, -60(%rbp)
	je	.L42
.L41:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movl	-16(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rax
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	jne	.L42
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$294, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$192, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L42:
	cmpl	$0, -60(%rbp)
	je	.L43
	movq	-8(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	movq	aesni_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 512(%rax)
	movq	-8(%rbp), %rax
	movq	aesni_xts_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 528(%rax)
	jmp	.L44
.L43:
	movq	-8(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_decrypt_key@PLT
	movq	-8(%rbp), %rax
	movq	aesni_decrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 512(%rax)
	movq	-8(%rbp), %rax
	movq	aesni_xts_decrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 528(%rax)
.L44:
	movq	-8(%rbp), %rax
	leaq	248(%rax), %rdx
	movl	-16(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rax
	addq	%rax, %rcx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	aesni_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	movq	aesni_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 520(%rax)
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 496(%rax)
.L39:
	cmpq	$0, -56(%rbp)
	je	.L45
	movq	-8(%rbp), %rax
	leaq	248(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 504(%rax)
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
.L45:
	movl	$1, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	aesni_xts_init_key, .-aesni_xts_init_key
	.type	aesni_ccm_init_key, @function
aesni_ccm_init_key:
.LFB488:
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
	cmpq	$0, -40(%rbp)
	jne	.L47
	cmpq	$0, -32(%rbp)
	jne	.L47
	movl	$1, %eax
	jmp	.L48
.L47:
	cmpq	$0, -32(%rbp)
	je	.L49
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	sall	$3, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L50
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$339, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L50:
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rdx
	movl	264(%rdx), %edx
	movl	%edx, %r9d
	movq	-8(%rbp), %rdx
	movl	268(%rdx), %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rdx
	leaq	280(%rdx), %rdi
	movq	aesni_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	%r9d, %edx
	call	CRYPTO_ccm128_init@PLT
	cmpl	$0, -44(%rbp)
	je	.L51
	movq	aesni_ccm64_encrypt_blocks@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	jmp	.L52
.L51:
	movq	aesni_ccm64_decrypt_blocks@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
.L52:
	movq	-8(%rbp), %rax
	movq	%rdx, 336(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 248(%rax)
.L49:
	cmpq	$0, -40(%rbp)
	je	.L53
	movq	-8(%rbp), %rax
	movl	264(%rax), %eax
	movl	$15, %edx
	subl	%eax, %edx
	movslq	%edx, %rdx
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movl	$1, 252(%rax)
.L53:
	movl	$1, %eax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	aesni_ccm_init_key, .-aesni_ccm_init_key
	.type	aesni_ocb_init_key, @function
aesni_ocb_init_key:
.LFB489:
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
	cmpq	$0, -40(%rbp)
	jne	.L55
	cmpq	$0, -32(%rbp)
	jne	.L55
	movl	$1, %eax
	jmp	.L56
.L55:
	cmpq	$0, -32(%rbp)
	je	.L57
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	sall	$3, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L58
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$373, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L56
.L58:
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	leaq	248(%rax), %rdx
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_decrypt_key@PLT
	cmpl	$0, -44(%rbp)
	je	.L59
	movq	aesni_ocb_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	jmp	.L60
.L59:
	movq	aesni_ocb_decrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
.L60:
	movq	-8(%rbp), %rax
	leaq	248(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	leaq	504(%rcx), %rdi
	movq	aesni_decrypt@GOTPCREL(%rip), %rcx
	movq	%rcx, %r8
	movq	aesni_encrypt@GOTPCREL(%rip), %rcx
	movq	%rsi, %r9
	movq	%rax, %rsi
	call	CRYPTO_ocb128_init@PLT
	testl	%eax, %eax
	jne	.L61
	movl	$0, %eax
	jmp	.L56
.L61:
	cmpq	$0, -40(%rbp)
	jne	.L62
	movq	-8(%rbp), %rax
	movl	500(%rax), %eax
	testl	%eax, %eax
	je	.L62
	movq	-8(%rbp), %rax
	movq	680(%rax), %rax
	movq	%rax, -40(%rbp)
.L62:
	cmpq	$0, -40(%rbp)
	je	.L63
	movq	-8(%rbp), %rax
	movl	748(%rax), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rax
	movl	744(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	leaq	504(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_ocb128_setiv@PLT
	cmpl	$1, %eax
	je	.L64
	movl	$0, %eax
	jmp	.L56
.L64:
	movq	-8(%rbp), %rax
	movl	$1, 500(%rax)
.L63:
	movq	-8(%rbp), %rax
	movl	$1, 496(%rax)
	jmp	.L65
.L57:
	movq	-8(%rbp), %rax
	movl	496(%rax), %eax
	testl	%eax, %eax
	je	.L66
	movq	-8(%rbp), %rax
	movl	748(%rax), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rax
	movl	744(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	leaq	504(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_ocb128_setiv@PLT
	jmp	.L67
.L66:
	movq	-8(%rbp), %rax
	movl	744(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	680(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L67:
	movq	-8(%rbp), %rax
	movl	$1, 500(%rax)
.L65:
	movl	$1, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	aesni_ocb_init_key, .-aesni_ocb_init_key
	.type	aes_init_key, @function
aes_init_key:
.LFB490:
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
	movl	%ecx, -60(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	sall	$3, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L69
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2411, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L70
.L69:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	movl	%eax, -24(%rbp)
	cmpl	$1, -24(%rbp)
	je	.L71
	cmpl	$2, -24(%rbp)
	jne	.L72
.L71:
	cmpl	$0, -60(%rbp)
	jne	.L72
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L73
	cmpl	$2, -24(%rbp)
	jne	.L73
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_decrypt_key@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	AES_decrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 248(%rax)
	movq	-16(%rbp), %rax
	movq	ossl_bsaes_cbc_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 256(%rax)
	jmp	.L80
.L73:
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L75
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	vpaes_set_decrypt_key@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	vpaes_decrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 248(%rax)
	cmpl	$2, -24(%rbp)
	jne	.L76
	movq	vpaes_cbc_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	jmp	.L77
.L76:
	movl	$0, %edx
.L77:
	movq	-16(%rbp), %rax
	movq	%rdx, 256(%rax)
	jmp	.L80
.L75:
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_decrypt_key@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	AES_decrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 248(%rax)
	cmpl	$2, -24(%rbp)
	jne	.L78
	movq	AES_cbc_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	jmp	.L79
.L78:
	movl	$0, %edx
.L79:
	movq	-16(%rbp), %rax
	movq	%rdx, 256(%rax)
	jmp	.L80
.L72:
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L81
	cmpl	$5, -24(%rbp)
	jne	.L81
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_encrypt_key@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	AES_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 248(%rax)
	movq	-16(%rbp), %rax
	movq	ossl_bsaes_ctr32_encrypt_blocks@GOTPCREL(%rip), %rdx
	movq	%rdx, 256(%rax)
	jmp	.L80
.L81:
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L82
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	vpaes_set_encrypt_key@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	vpaes_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 248(%rax)
	cmpl	$2, -24(%rbp)
	jne	.L83
	movq	vpaes_cbc_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	jmp	.L84
.L83:
	movl	$0, %edx
.L84:
	movq	-16(%rbp), %rax
	movq	%rdx, 256(%rax)
	jmp	.L80
.L82:
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_encrypt_key@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	AES_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 248(%rax)
	cmpl	$2, -24(%rbp)
	jne	.L85
	movq	AES_cbc_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	jmp	.L86
.L85:
	movl	$0, %edx
.L86:
	movq	-16(%rbp), %rax
	movq	%rdx, 256(%rax)
.L80:
	cmpl	$0, -4(%rbp)
	jns	.L87
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2496, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L70
.L87:
	movl	$1, %eax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	aes_init_key, .-aes_init_key
	.type	aes_cbc_cipher, @function
aes_cbc_cipher:
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
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	256(%rax), %rax
	testq	%rax, %rax
	je	.L89
	movq	-24(%rbp), %rax
	movq	256(%rax), %rbx
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
	jmp	.L90
.L89:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L91
	movq	-24(%rbp), %rax
	movq	248(%rax), %rdi
	movq	-40(%rbp), %rax
	leaq	40(%rax), %r8
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	CRYPTO_cbc128_encrypt@PLT
	jmp	.L90
.L91:
	movq	-24(%rbp), %rax
	movq	248(%rax), %rdi
	movq	-40(%rbp), %rax
	leaq	40(%rax), %r8
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	CRYPTO_cbc128_decrypt@PLT
.L90:
	movl	$1, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	aes_cbc_cipher, .-aes_cbc_cipher
	.type	aes_ecb_cipher, @function
aes_ecb_cipher:
.LFB492:
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
	jnb	.L94
	movl	$1, %eax
	jmp	.L95
.L94:
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -64(%rbp)
	jmp	.L96
.L97:
	movq	-24(%rbp), %rax
	movq	248(%rax), %rcx
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
.L96:
	movq	-8(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	jnb	.L97
	movl	$1, %eax
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	aes_ecb_cipher, .-aes_ecb_cipher
	.type	aes_ofb_cipher, @function
aes_ofb_cipher:
.LFB493:
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
	movq	248(%rax), %rdi
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
.LFE493:
	.size	aes_ofb_cipher, .-aes_ofb_cipher
	.type	aes_cfb_cipher, @function
aes_cfb_cipher:
.LFB494:
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
	movq	248(%rax), %rbx
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
.LFE494:
	.size	aes_cfb_cipher, .-aes_cfb_cipher
	.type	aes_cfb8_cipher, @function
aes_cfb8_cipher:
.LFB495:
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
	movq	248(%rax), %rbx
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
.LFE495:
	.size	aes_cfb8_cipher, .-aes_cfb8_cipher
	.type	aes_cfb1_cipher, @function
aes_cfb1_cipher:
.LFB496:
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
	je	.L107
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rbx
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
	jmp	.L106
.L108:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rbx
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
.L107:
	movabsq	$1152921504606846975, %rax
	cmpq	-80(%rbp), %rax
	jb	.L108
	cmpq	$0, -80(%rbp)
	je	.L109
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rbx
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
.L109:
	movl	$1, %eax
.L106:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	aes_cfb1_cipher, .-aes_cfb1_cipher
	.type	aes_ctr_cipher, @function
aes_ctr_cipher:
.LFB497:
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
	jns	.L111
	movl	$0, %eax
	jmp	.L115
.L111:
	movl	-20(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	256(%rax), %rax
	testq	%rax, %rax
	je	.L113
	movq	-32(%rbp), %rax
	movq	256(%rax), %rbx
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
	jmp	.L114
.L113:
	movq	-32(%rbp), %rax
	movq	248(%rax), %rbx
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
.L114:
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	movl	$1, %eax
.L115:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	aes_ctr_cipher, .-aes_ctr_cipher
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	aesni_128_cbc, @object
	.size	aesni_128_cbc, 248
aesni_128_cbc:
	.long	419
	.long	16
	.long	16
	.long	16
	.quad	2
	.long	1
	.zero	4
	.quad	aesni_init_key
	.quad	aesni_cbc_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.align 32
	.type	aes_128_cbc, @object
	.size	aes_128_cbc, 248
aes_128_cbc:
	.long	419
	.long	16
	.long	16
	.long	16
	.quad	2
	.long	1
	.zero	4
	.quad	aes_init_key
	.quad	aes_cbc_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_128_cbc
	.type	EVP_aes_128_cbc, @function
EVP_aes_128_cbc:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L117
	leaq	aesni_128_cbc(%rip), %rax
	jmp	.L119
.L117:
	leaq	aes_128_cbc(%rip), %rax
.L119:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	EVP_aes_128_cbc, .-EVP_aes_128_cbc
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_128_ecb, @object
	.size	aesni_128_ecb, 248
aesni_128_ecb:
	.long	418
	.long	16
	.long	16
	.long	0
	.quad	1
	.long	1
	.zero	4
	.quad	aesni_init_key
	.quad	aesni_ecb_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.align 32
	.type	aes_128_ecb, @object
	.size	aes_128_ecb, 248
aes_128_ecb:
	.long	418
	.long	16
	.long	16
	.long	0
	.quad	1
	.long	1
	.zero	4
	.quad	aes_init_key
	.quad	aes_ecb_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_128_ecb
	.type	EVP_aes_128_ecb, @function
EVP_aes_128_ecb:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L121
	leaq	aesni_128_ecb(%rip), %rax
	jmp	.L123
.L121:
	leaq	aes_128_ecb(%rip), %rax
.L123:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	EVP_aes_128_ecb, .-EVP_aes_128_ecb
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_128_ofb, @object
	.size	aesni_128_ofb, 248
aesni_128_ofb:
	.long	420
	.long	1
	.long	16
	.long	16
	.quad	4
	.long	1
	.zero	4
	.quad	aesni_init_key
	.quad	aes_ofb_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.align 32
	.type	aes_128_ofb, @object
	.size	aes_128_ofb, 248
aes_128_ofb:
	.long	420
	.long	1
	.long	16
	.long	16
	.quad	4
	.long	1
	.zero	4
	.quad	aes_init_key
	.quad	aes_ofb_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_128_ofb
	.type	EVP_aes_128_ofb, @function
EVP_aes_128_ofb:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L125
	leaq	aesni_128_ofb(%rip), %rax
	jmp	.L127
.L125:
	leaq	aes_128_ofb(%rip), %rax
.L127:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	EVP_aes_128_ofb, .-EVP_aes_128_ofb
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_128_cfb, @object
	.size	aesni_128_cfb, 248
aesni_128_cfb:
	.long	421
	.long	1
	.long	16
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aesni_init_key
	.quad	aes_cfb_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.align 32
	.type	aes_128_cfb, @object
	.size	aes_128_cfb, 248
aes_128_cfb:
	.long	421
	.long	1
	.long	16
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aes_init_key
	.quad	aes_cfb_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_128_cfb128
	.type	EVP_aes_128_cfb128, @function
EVP_aes_128_cfb128:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L129
	leaq	aesni_128_cfb(%rip), %rax
	jmp	.L131
.L129:
	leaq	aes_128_cfb(%rip), %rax
.L131:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	EVP_aes_128_cfb128, .-EVP_aes_128_cfb128
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_128_cfb1, @object
	.size	aesni_128_cfb1, 248
aesni_128_cfb1:
	.long	650
	.long	1
	.long	16
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aesni_init_key
	.quad	aes_cfb1_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.align 32
	.type	aes_128_cfb1, @object
	.size	aes_128_cfb1, 248
aes_128_cfb1:
	.long	650
	.long	1
	.long	16
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aes_init_key
	.quad	aes_cfb1_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_128_cfb1
	.type	EVP_aes_128_cfb1, @function
EVP_aes_128_cfb1:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L133
	leaq	aesni_128_cfb1(%rip), %rax
	jmp	.L135
.L133:
	leaq	aes_128_cfb1(%rip), %rax
.L135:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	EVP_aes_128_cfb1, .-EVP_aes_128_cfb1
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_128_cfb8, @object
	.size	aesni_128_cfb8, 248
aesni_128_cfb8:
	.long	653
	.long	1
	.long	16
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aesni_init_key
	.quad	aes_cfb8_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.align 32
	.type	aes_128_cfb8, @object
	.size	aes_128_cfb8, 248
aes_128_cfb8:
	.long	653
	.long	1
	.long	16
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aes_init_key
	.quad	aes_cfb8_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_128_cfb8
	.type	EVP_aes_128_cfb8, @function
EVP_aes_128_cfb8:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L137
	leaq	aesni_128_cfb8(%rip), %rax
	jmp	.L139
.L137:
	leaq	aes_128_cfb8(%rip), %rax
.L139:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	EVP_aes_128_cfb8, .-EVP_aes_128_cfb8
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_128_ctr, @object
	.size	aesni_128_ctr, 248
aesni_128_ctr:
	.long	904
	.long	1
	.long	16
	.long	16
	.quad	5
	.long	1
	.zero	4
	.quad	aesni_init_key
	.quad	aes_ctr_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.align 32
	.type	aes_128_ctr, @object
	.size	aes_128_ctr, 248
aes_128_ctr:
	.long	904
	.long	1
	.long	16
	.long	16
	.quad	5
	.long	1
	.zero	4
	.quad	aes_init_key
	.quad	aes_ctr_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_128_ctr
	.type	EVP_aes_128_ctr, @function
EVP_aes_128_ctr:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L141
	leaq	aesni_128_ctr(%rip), %rax
	jmp	.L143
.L141:
	leaq	aes_128_ctr(%rip), %rax
.L143:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	EVP_aes_128_ctr, .-EVP_aes_128_ctr
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_192_cbc, @object
	.size	aesni_192_cbc, 248
aesni_192_cbc:
	.long	423
	.long	16
	.long	24
	.long	16
	.quad	2
	.long	1
	.zero	4
	.quad	aesni_init_key
	.quad	aesni_cbc_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.align 32
	.type	aes_192_cbc, @object
	.size	aes_192_cbc, 248
aes_192_cbc:
	.long	423
	.long	16
	.long	24
	.long	16
	.quad	2
	.long	1
	.zero	4
	.quad	aes_init_key
	.quad	aes_cbc_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_192_cbc
	.type	EVP_aes_192_cbc, @function
EVP_aes_192_cbc:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L145
	leaq	aesni_192_cbc(%rip), %rax
	jmp	.L147
.L145:
	leaq	aes_192_cbc(%rip), %rax
.L147:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	EVP_aes_192_cbc, .-EVP_aes_192_cbc
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_192_ecb, @object
	.size	aesni_192_ecb, 248
aesni_192_ecb:
	.long	422
	.long	16
	.long	24
	.long	0
	.quad	1
	.long	1
	.zero	4
	.quad	aesni_init_key
	.quad	aesni_ecb_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.align 32
	.type	aes_192_ecb, @object
	.size	aes_192_ecb, 248
aes_192_ecb:
	.long	422
	.long	16
	.long	24
	.long	0
	.quad	1
	.long	1
	.zero	4
	.quad	aes_init_key
	.quad	aes_ecb_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_192_ecb
	.type	EVP_aes_192_ecb, @function
EVP_aes_192_ecb:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L149
	leaq	aesni_192_ecb(%rip), %rax
	jmp	.L151
.L149:
	leaq	aes_192_ecb(%rip), %rax
.L151:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	EVP_aes_192_ecb, .-EVP_aes_192_ecb
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_192_ofb, @object
	.size	aesni_192_ofb, 248
aesni_192_ofb:
	.long	424
	.long	1
	.long	24
	.long	16
	.quad	4
	.long	1
	.zero	4
	.quad	aesni_init_key
	.quad	aes_ofb_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.align 32
	.type	aes_192_ofb, @object
	.size	aes_192_ofb, 248
aes_192_ofb:
	.long	424
	.long	1
	.long	24
	.long	16
	.quad	4
	.long	1
	.zero	4
	.quad	aes_init_key
	.quad	aes_ofb_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_192_ofb
	.type	EVP_aes_192_ofb, @function
EVP_aes_192_ofb:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L153
	leaq	aesni_192_ofb(%rip), %rax
	jmp	.L155
.L153:
	leaq	aes_192_ofb(%rip), %rax
.L155:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	EVP_aes_192_ofb, .-EVP_aes_192_ofb
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_192_cfb, @object
	.size	aesni_192_cfb, 248
aesni_192_cfb:
	.long	425
	.long	1
	.long	24
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aesni_init_key
	.quad	aes_cfb_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.align 32
	.type	aes_192_cfb, @object
	.size	aes_192_cfb, 248
aes_192_cfb:
	.long	425
	.long	1
	.long	24
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aes_init_key
	.quad	aes_cfb_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_192_cfb128
	.type	EVP_aes_192_cfb128, @function
EVP_aes_192_cfb128:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L157
	leaq	aesni_192_cfb(%rip), %rax
	jmp	.L159
.L157:
	leaq	aes_192_cfb(%rip), %rax
.L159:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	EVP_aes_192_cfb128, .-EVP_aes_192_cfb128
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_192_cfb1, @object
	.size	aesni_192_cfb1, 248
aesni_192_cfb1:
	.long	651
	.long	1
	.long	24
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aesni_init_key
	.quad	aes_cfb1_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.align 32
	.type	aes_192_cfb1, @object
	.size	aes_192_cfb1, 248
aes_192_cfb1:
	.long	651
	.long	1
	.long	24
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aes_init_key
	.quad	aes_cfb1_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_192_cfb1
	.type	EVP_aes_192_cfb1, @function
EVP_aes_192_cfb1:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L161
	leaq	aesni_192_cfb1(%rip), %rax
	jmp	.L163
.L161:
	leaq	aes_192_cfb1(%rip), %rax
.L163:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	EVP_aes_192_cfb1, .-EVP_aes_192_cfb1
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_192_cfb8, @object
	.size	aesni_192_cfb8, 248
aesni_192_cfb8:
	.long	654
	.long	1
	.long	24
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aesni_init_key
	.quad	aes_cfb8_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.align 32
	.type	aes_192_cfb8, @object
	.size	aes_192_cfb8, 248
aes_192_cfb8:
	.long	654
	.long	1
	.long	24
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aes_init_key
	.quad	aes_cfb8_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_192_cfb8
	.type	EVP_aes_192_cfb8, @function
EVP_aes_192_cfb8:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L165
	leaq	aesni_192_cfb8(%rip), %rax
	jmp	.L167
.L165:
	leaq	aes_192_cfb8(%rip), %rax
.L167:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	EVP_aes_192_cfb8, .-EVP_aes_192_cfb8
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_192_ctr, @object
	.size	aesni_192_ctr, 248
aesni_192_ctr:
	.long	905
	.long	1
	.long	24
	.long	16
	.quad	5
	.long	1
	.zero	4
	.quad	aesni_init_key
	.quad	aes_ctr_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.align 32
	.type	aes_192_ctr, @object
	.size	aes_192_ctr, 248
aes_192_ctr:
	.long	905
	.long	1
	.long	24
	.long	16
	.quad	5
	.long	1
	.zero	4
	.quad	aes_init_key
	.quad	aes_ctr_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_192_ctr
	.type	EVP_aes_192_ctr, @function
EVP_aes_192_ctr:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L169
	leaq	aesni_192_ctr(%rip), %rax
	jmp	.L171
.L169:
	leaq	aes_192_ctr(%rip), %rax
.L171:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	EVP_aes_192_ctr, .-EVP_aes_192_ctr
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_256_cbc, @object
	.size	aesni_256_cbc, 248
aesni_256_cbc:
	.long	427
	.long	16
	.long	32
	.long	16
	.quad	2
	.long	1
	.zero	4
	.quad	aesni_init_key
	.quad	aesni_cbc_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.align 32
	.type	aes_256_cbc, @object
	.size	aes_256_cbc, 248
aes_256_cbc:
	.long	427
	.long	16
	.long	32
	.long	16
	.quad	2
	.long	1
	.zero	4
	.quad	aes_init_key
	.quad	aes_cbc_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_256_cbc
	.type	EVP_aes_256_cbc, @function
EVP_aes_256_cbc:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L173
	leaq	aesni_256_cbc(%rip), %rax
	jmp	.L175
.L173:
	leaq	aes_256_cbc(%rip), %rax
.L175:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	EVP_aes_256_cbc, .-EVP_aes_256_cbc
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_256_ecb, @object
	.size	aesni_256_ecb, 248
aesni_256_ecb:
	.long	426
	.long	16
	.long	32
	.long	0
	.quad	1
	.long	1
	.zero	4
	.quad	aesni_init_key
	.quad	aesni_ecb_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.align 32
	.type	aes_256_ecb, @object
	.size	aes_256_ecb, 248
aes_256_ecb:
	.long	426
	.long	16
	.long	32
	.long	0
	.quad	1
	.long	1
	.zero	4
	.quad	aes_init_key
	.quad	aes_ecb_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_256_ecb
	.type	EVP_aes_256_ecb, @function
EVP_aes_256_ecb:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L177
	leaq	aesni_256_ecb(%rip), %rax
	jmp	.L179
.L177:
	leaq	aes_256_ecb(%rip), %rax
.L179:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	EVP_aes_256_ecb, .-EVP_aes_256_ecb
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_256_ofb, @object
	.size	aesni_256_ofb, 248
aesni_256_ofb:
	.long	428
	.long	1
	.long	32
	.long	16
	.quad	4
	.long	1
	.zero	4
	.quad	aesni_init_key
	.quad	aes_ofb_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.align 32
	.type	aes_256_ofb, @object
	.size	aes_256_ofb, 248
aes_256_ofb:
	.long	428
	.long	1
	.long	32
	.long	16
	.quad	4
	.long	1
	.zero	4
	.quad	aes_init_key
	.quad	aes_ofb_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_256_ofb
	.type	EVP_aes_256_ofb, @function
EVP_aes_256_ofb:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L181
	leaq	aesni_256_ofb(%rip), %rax
	jmp	.L183
.L181:
	leaq	aes_256_ofb(%rip), %rax
.L183:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	EVP_aes_256_ofb, .-EVP_aes_256_ofb
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_256_cfb, @object
	.size	aesni_256_cfb, 248
aesni_256_cfb:
	.long	429
	.long	1
	.long	32
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aesni_init_key
	.quad	aes_cfb_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.align 32
	.type	aes_256_cfb, @object
	.size	aes_256_cfb, 248
aes_256_cfb:
	.long	429
	.long	1
	.long	32
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aes_init_key
	.quad	aes_cfb_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_256_cfb128
	.type	EVP_aes_256_cfb128, @function
EVP_aes_256_cfb128:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L185
	leaq	aesni_256_cfb(%rip), %rax
	jmp	.L187
.L185:
	leaq	aes_256_cfb(%rip), %rax
.L187:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	EVP_aes_256_cfb128, .-EVP_aes_256_cfb128
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_256_cfb1, @object
	.size	aesni_256_cfb1, 248
aesni_256_cfb1:
	.long	652
	.long	1
	.long	32
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aesni_init_key
	.quad	aes_cfb1_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.align 32
	.type	aes_256_cfb1, @object
	.size	aes_256_cfb1, 248
aes_256_cfb1:
	.long	652
	.long	1
	.long	32
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aes_init_key
	.quad	aes_cfb1_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_256_cfb1
	.type	EVP_aes_256_cfb1, @function
EVP_aes_256_cfb1:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L189
	leaq	aesni_256_cfb1(%rip), %rax
	jmp	.L191
.L189:
	leaq	aes_256_cfb1(%rip), %rax
.L191:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	EVP_aes_256_cfb1, .-EVP_aes_256_cfb1
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_256_cfb8, @object
	.size	aesni_256_cfb8, 248
aesni_256_cfb8:
	.long	655
	.long	1
	.long	32
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aesni_init_key
	.quad	aes_cfb8_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.align 32
	.type	aes_256_cfb8, @object
	.size	aes_256_cfb8, 248
aes_256_cfb8:
	.long	655
	.long	1
	.long	32
	.long	16
	.quad	3
	.long	1
	.zero	4
	.quad	aes_init_key
	.quad	aes_cfb8_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_256_cfb8
	.type	EVP_aes_256_cfb8, @function
EVP_aes_256_cfb8:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L193
	leaq	aesni_256_cfb8(%rip), %rax
	jmp	.L195
.L193:
	leaq	aes_256_cfb8(%rip), %rax
.L195:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	EVP_aes_256_cfb8, .-EVP_aes_256_cfb8
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_256_ctr, @object
	.size	aesni_256_ctr, 248
aesni_256_ctr:
	.long	906
	.long	1
	.long	32
	.long	16
	.quad	5
	.long	1
	.zero	4
	.quad	aesni_init_key
	.quad	aes_ctr_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.align 32
	.type	aes_256_ctr, @object
	.size	aes_256_ctr, 248
aes_256_ctr:
	.long	906
	.long	1
	.long	32
	.long	16
	.quad	5
	.long	1
	.zero	4
	.quad	aes_init_key
	.quad	aes_ctr_cipher
	.quad	0
	.long	264
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_256_ctr
	.type	EVP_aes_256_ctr, @function
EVP_aes_256_ctr:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L197
	leaq	aesni_256_ctr(%rip), %rax
	jmp	.L199
.L197:
	leaq	aes_256_ctr(%rip), %rax
.L199:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	EVP_aes_256_ctr, .-EVP_aes_256_ctr
	.type	aes_gcm_cleanup, @function
aes_gcm_cleanup:
.LFB519:
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
	cmpq	$0, -8(%rbp)
	jne	.L201
	movl	$0, %eax
	jmp	.L202
.L201:
	movq	-8(%rbp), %rax
	addq	$256, %rax
	movl	$448, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
	movq	704(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$40, %rax
	cmpq	%rax, %rdx
	je	.L203
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$2646, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L203:
	movl	$1, %eax
.L202:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	aes_gcm_cleanup, .-aes_gcm_cleanup
	.type	aes_gcm_ctrl, @function
aes_gcm_ctrl:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -16(%rbp)
	cmpl	$37, -44(%rbp)
	je	.L205
	cmpl	$37, -44(%rbp)
	jg	.L206
	cmpl	$24, -44(%rbp)
	je	.L207
	cmpl	$24, -44(%rbp)
	jg	.L206
	cmpl	$22, -44(%rbp)
	je	.L208
	cmpl	$22, -44(%rbp)
	jg	.L206
	cmpl	$19, -44(%rbp)
	je	.L209
	cmpl	$19, -44(%rbp)
	jg	.L206
	cmpl	$18, -44(%rbp)
	je	.L210
	cmpl	$18, -44(%rbp)
	jg	.L206
	cmpl	$17, -44(%rbp)
	je	.L211
	cmpl	$17, -44(%rbp)
	jg	.L206
	cmpl	$16, -44(%rbp)
	je	.L212
	cmpl	$16, -44(%rbp)
	jg	.L206
	cmpl	$9, -44(%rbp)
	je	.L213
	cmpl	$9, -44(%rbp)
	jg	.L206
	cmpl	$0, -44(%rbp)
	je	.L214
	cmpl	$8, -44(%rbp)
	je	.L215
	jmp	.L206
.L214:
	movq	-16(%rbp), %rax
	movl	$0, 248(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 252(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movq	-16(%rbp), %rdx
	movl	%eax, 712(%rdx)
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 704(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 716(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 720(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 728(%rax)
	movl	$1, %eax
	jmp	.L216
.L205:
	movq	-16(%rbp), %rax
	movl	712(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L216
.L213:
	cmpl	$0, -48(%rbp)
	jg	.L217
	movl	$0, %eax
	jmp	.L216
.L217:
	cmpl	$16, -48(%rbp)
	jle	.L218
	movq	-16(%rbp), %rax
	movl	712(%rax), %eax
	cmpl	%eax, -48(%rbp)
	jle	.L218
	movq	-16(%rbp), %rax
	movq	704(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$40, %rax
	cmpq	%rax, %rdx
	je	.L219
	movq	-16(%rbp), %rax
	movq	704(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$2674, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L219:
	movl	-48(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$2675, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 704(%rax)
	movq	-16(%rbp), %rax
	movq	704(%rax), %rax
	testq	%rax, %rax
	jne	.L218
	movl	$0, %eax
	jmp	.L216
.L218:
	movq	-16(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, 712(%rax)
	movl	$1, %eax
	jmp	.L216
.L211:
	cmpl	$0, -48(%rbp)
	jle	.L220
	cmpl	$16, -48(%rbp)
	jg	.L220
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L221
.L220:
	movl	$0, %eax
	jmp	.L216
.L221:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	leaq	56(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, 716(%rax)
	movl	$1, %eax
	jmp	.L216
.L212:
	cmpl	$0, -48(%rbp)
	jle	.L222
	cmpl	$16, -48(%rbp)
	jg	.L222
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L222
	movq	-16(%rbp), %rax
	movl	716(%rax), %eax
	testl	%eax, %eax
	jns	.L223
.L222:
	movl	$0, %eax
	jmp	.L216
.L223:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	leaq	56(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
	jmp	.L216
.L210:
	cmpl	$-1, -48(%rbp)
	jne	.L224
	movq	-16(%rbp), %rax
	movl	712(%rax), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	704(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movl	$1, 720(%rax)
	movl	$1, %eax
	jmp	.L216
.L224:
	cmpl	$3, -48(%rbp)
	jle	.L225
	movq	-16(%rbp), %rax
	movl	712(%rax), %eax
	subl	-48(%rbp), %eax
	cmpl	$7, %eax
	jg	.L226
.L225:
	movl	$0, %eax
	jmp	.L216
.L226:
	cmpl	$0, -48(%rbp)
	je	.L227
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	704(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L227:
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L228
	movq	-16(%rbp), %rax
	movl	712(%rax), %eax
	subl	-48(%rbp), %eax
	movq	-16(%rbp), %rdx
	movq	704(%rdx), %rcx
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	RAND_bytes@PLT
	testl	%eax, %eax
	jg	.L228
	movl	$0, %eax
	jmp	.L216
.L228:
	movq	-16(%rbp), %rax
	movl	$1, 720(%rax)
	movl	$1, %eax
	jmp	.L216
.L209:
	movq	-16(%rbp), %rax
	movl	720(%rax), %eax
	testl	%eax, %eax
	je	.L229
	movq	-16(%rbp), %rax
	movl	248(%rax), %eax
	testl	%eax, %eax
	jne	.L230
.L229:
	movl	$0, %eax
	jmp	.L216
.L230:
	movq	-16(%rbp), %rax
	movl	712(%rax), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	704(%rax), %rax
	movq	-16(%rbp), %rcx
	addq	$256, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_setiv@PLT
	cmpl	$0, -48(%rbp)
	jle	.L231
	movq	-16(%rbp), %rax
	movl	712(%rax), %eax
	cmpl	%eax, -48(%rbp)
	jle	.L232
.L231:
	movq	-16(%rbp), %rax
	movl	712(%rax), %eax
	movl	%eax, -48(%rbp)
.L232:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	704(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	712(%rax), %eax
	movslq	%eax, %rsi
	movl	-48(%rbp), %eax
	cltq
	subq	%rax, %rsi
	addq	%rsi, %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movq	704(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	712(%rax), %eax
	cltq
	subq	$8, %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	ctr64_inc
	movq	-16(%rbp), %rax
	movl	$1, 252(%rax)
	movl	$1, %eax
	jmp	.L216
.L207:
	movq	-16(%rbp), %rax
	movl	720(%rax), %eax
	testl	%eax, %eax
	je	.L233
	movq	-16(%rbp), %rax
	movl	248(%rax), %eax
	testl	%eax, %eax
	je	.L233
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L234
.L233:
	movl	$0, %eax
	jmp	.L216
.L234:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	704(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	712(%rax), %eax
	movslq	%eax, %rsi
	movl	-48(%rbp), %eax
	cltq
	subq	%rax, %rsi
	addq	%rsi, %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movl	712(%rax), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	704(%rax), %rax
	movq	-16(%rbp), %rcx
	addq	$256, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_setiv@PLT
	movq	-16(%rbp), %rax
	movl	$1, 252(%rax)
	movl	$1, %eax
	jmp	.L216
.L208:
	cmpl	$13, -48(%rbp)
	je	.L235
	movl	$0, %eax
	jmp	.L216
.L235:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	leaq	56(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, 728(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 736(%rax)
	movl	-48(%rbp), %eax
	subl	$2, %eax
	movq	-40(%rbp), %rdx
	cltq
	movzbl	56(%rdx,%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movq	-40(%rbp), %rdx
	cltq
	movzbl	56(%rdx,%rax), %eax
	movzbl	%al, %eax
	orl	%ecx, %eax
	movl	%eax, -4(%rbp)
	cmpl	$7, -4(%rbp)
	ja	.L236
	movl	$0, %eax
	jmp	.L216
.L236:
	subl	$8, -4(%rbp)
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L237
	cmpl	$15, -4(%rbp)
	ja	.L238
	movl	$0, %eax
	jmp	.L216
.L238:
	subl	$16, -4(%rbp)
.L237:
	movl	-4(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	subl	$2, %eax
	movl	%edx, %ecx
	movq	-40(%rbp), %rdx
	cltq
	movb	%cl, 56(%rdx,%rax)
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movl	-4(%rbp), %edx
	movl	%edx, %ecx
	movq	-40(%rbp), %rdx
	cltq
	movb	%cl, 56(%rdx,%rax)
	movl	$16, %eax
	jmp	.L216
.L215:
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	648(%rax), %rax
	testq	%rax, %rax
	je	.L239
	movq	-16(%rbp), %rax
	movq	648(%rax), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L240
	movl	$0, %eax
	jmp	.L216
.L240:
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 648(%rax)
.L239:
	movq	-16(%rbp), %rax
	movq	704(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$40, %rax
	cmpq	%rax, %rdx
	jne	.L241
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 704(%rax)
	jmp	.L242
.L241:
	movq	-16(%rbp), %rax
	movl	712(%rax), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$2775, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 704(%rax)
	movq	-32(%rbp), %rax
	movq	704(%rax), %rax
	testq	%rax, %rax
	jne	.L243
	movl	$0, %eax
	jmp	.L216
.L243:
	movq	-16(%rbp), %rax
	movl	712(%rax), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	704(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	704(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L242:
	movl	$1, %eax
	jmp	.L216
.L206:
	movl	$-1, %eax
.L216:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	aes_gcm_ctrl, .-aes_gcm_ctrl
	.type	aes_gcm_init_key, @function
aes_gcm_init_key:
.LFB521:
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
	cmpq	$0, -40(%rbp)
	jne	.L245
	cmpq	$0, -32(%rbp)
	jne	.L245
	movl	$1, %eax
	jmp	.L246
.L245:
	cmpq	$0, -32(%rbp)
	je	.L247
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	sall	$3, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L248
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2800, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L246
.L248:
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L249
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rdx
	leaq	256(%rdx), %rcx
	movq	AES_encrypt@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_init@PLT
	movq	-8(%rbp), %rax
	movq	ossl_bsaes_ctr32_encrypt_blocks@GOTPCREL(%rip), %rdx
	movq	%rdx, 744(%rax)
	jmp	.L250
.L249:
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L251
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	vpaes_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rdx
	leaq	256(%rdx), %rcx
	movq	vpaes_encrypt@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_init@PLT
	movq	-8(%rbp), %rax
	movq	$0, 744(%rax)
	jmp	.L250
.L251:
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rdx
	leaq	256(%rdx), %rcx
	movq	AES_encrypt@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_init@PLT
	movq	-8(%rbp), %rax
	movq	$0, 744(%rax)
.L250:
	cmpq	$0, -40(%rbp)
	jne	.L252
	movq	-8(%rbp), %rax
	movl	252(%rax), %eax
	testl	%eax, %eax
	je	.L252
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movq	%rax, -40(%rbp)
.L252:
	cmpq	$0, -40(%rbp)
	je	.L253
	movq	-8(%rbp), %rax
	movl	712(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	leaq	256(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_setiv@PLT
	movq	-8(%rbp), %rax
	movl	$1, 252(%rax)
.L253:
	movq	-8(%rbp), %rax
	movl	$1, 248(%rax)
	jmp	.L254
.L247:
	movq	-8(%rbp), %rax
	movl	248(%rax), %eax
	testl	%eax, %eax
	je	.L255
	movq	-8(%rbp), %rax
	movl	712(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	leaq	256(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_setiv@PLT
	jmp	.L256
.L255:
	movq	-8(%rbp), %rax
	movl	712(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L256:
	movq	-8(%rbp), %rax
	movl	$1, 252(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 720(%rax)
.L254:
	movl	$1, %eax
.L246:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	aes_gcm_init_key, .-aes_gcm_init_key
	.type	aes_gcm_tls_cipher, @function
aes_gcm_tls_cipher:
.LFB522:
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
	movq	%rax, -48(%rbp)
	movl	$-1, -20(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.L258
	cmpq	$23, -96(%rbp)
	ja	.L259
.L258:
	movl	$-1, %eax
	jmp	.L260
.L259:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L261
	movq	-48(%rbp), %rax
	movq	736(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 736(%rax)
	movq	-48(%rbp), %rax
	movq	736(%rax), %rax
	testq	%rax, %rax
	jne	.L261
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2893, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$183, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L262
.L261:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L263
	movl	$19, %esi
	jmp	.L264
.L263:
	movl	$24, %esi
.L264:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jle	.L277
	movq	-48(%rbp), %rax
	movl	728(%rax), %eax
	movslq	%eax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	addq	$256, %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_gcm128_aad@PLT
	testl	%eax, %eax
	jne	.L278
	addq	$8, -88(%rbp)
	addq	$8, -80(%rbp)
	subq	$24, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L267
	movq	-48(%rbp), %rax
	movq	744(%rax), %rax
	testq	%rax, %rax
	je	.L268
	movq	$0, -32(%rbp)
	cmpq	$31, -96(%rbp)
	jbe	.L269
	movq	-48(%rbp), %rax
	movq	744(%rax), %rax
	movq	aesni_ctr32_encrypt_blocks@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L269
	movq	-48(%rbp), %rax
	movq	616(%rax), %rax
	movq	gcm_ghash_avx@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L269
	movq	-48(%rbp), %rax
	addq	$256, %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_gcm128_encrypt@PLT
	testl	%eax, %eax
	je	.L270
	movl	$-1, %eax
	jmp	.L260
.L270:
	movq	-48(%rbp), %rax
	leaq	320(%rax), %r8
	movq	-48(%rbp), %rax
	leaq	256(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	648(%rax), %rcx
	movq	-96(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	aesni_gcm_encrypt@PLT
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	312(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 312(%rax)
.L269:
	movq	-48(%rbp), %rax
	movq	744(%rax), %r8
	movq	-96(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movq	-88(%rbp), %rsi
	movq	-32(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-48(%rbp), %rcx
	leaq	256(%rcx), %rdi
	movq	%rax, %rcx
	call	CRYPTO_gcm128_encrypt_ctr32@PLT
	testl	%eax, %eax
	je	.L271
	jmp	.L262
.L268:
	movq	$0, -64(%rbp)
	movq	-96(%rbp), %rax
	subq	-64(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	addq	%rcx, %rdx
	movq	-88(%rbp), %rsi
	movq	-64(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-48(%rbp), %rcx
	leaq	256(%rcx), %rdi
	movq	%rax, %rcx
	call	CRYPTO_gcm128_encrypt@PLT
	testl	%eax, %eax
	jne	.L279
.L271:
	movq	-96(%rbp), %rax
	addq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	leaq	256(%rax), %rcx
	movq	-80(%rbp), %rax
	movl	$16, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_tag@PLT
	movq	-96(%rbp), %rax
	addl	$24, %eax
	movl	%eax, -20(%rbp)
	jmp	.L262
.L267:
	movq	-48(%rbp), %rax
	movq	744(%rax), %rax
	testq	%rax, %rax
	je	.L272
	movq	$0, -40(%rbp)
	cmpq	$15, -96(%rbp)
	jbe	.L273
	movq	-48(%rbp), %rax
	movq	744(%rax), %rax
	movq	aesni_ctr32_encrypt_blocks@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L273
	movq	-48(%rbp), %rax
	movq	616(%rax), %rax
	movq	gcm_ghash_avx@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L273
	movq	-48(%rbp), %rax
	addq	$256, %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_gcm128_decrypt@PLT
	testl	%eax, %eax
	je	.L274
	movl	$-1, %eax
	jmp	.L260
.L274:
	movq	-48(%rbp), %rax
	leaq	320(%rax), %r8
	movq	-48(%rbp), %rax
	leaq	256(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	648(%rax), %rcx
	movq	-96(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	aesni_gcm_decrypt@PLT
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	312(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 312(%rax)
.L273:
	movq	-48(%rbp), %rax
	movq	744(%rax), %r8
	movq	-96(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movq	-88(%rbp), %rsi
	movq	-40(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-48(%rbp), %rcx
	leaq	256(%rcx), %rdi
	movq	%rax, %rcx
	call	CRYPTO_gcm128_decrypt_ctr32@PLT
	testl	%eax, %eax
	je	.L275
	jmp	.L262
.L272:
	movq	$0, -56(%rbp)
	movq	-96(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movq	-88(%rbp), %rsi
	movq	-56(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-48(%rbp), %rcx
	leaq	256(%rcx), %rdi
	movq	%rax, %rcx
	call	CRYPTO_gcm128_decrypt@PLT
	testl	%eax, %eax
	jne	.L280
.L275:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	addq	$256, %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_gcm128_tag@PLT
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movl	$16, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L276
	movq	-96(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	jmp	.L262
.L276:
	movq	-96(%rbp), %rax
	movl	%eax, -20(%rbp)
	jmp	.L262
.L277:
	nop
	jmp	.L262
.L278:
	nop
	jmp	.L262
.L279:
	nop
	jmp	.L262
.L280:
	nop
.L262:
	movq	-48(%rbp), %rax
	movl	$0, 252(%rax)
	movq	-48(%rbp), %rax
	movl	$-1, 728(%rax)
	movl	-20(%rbp), %eax
.L260:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	aes_gcm_tls_cipher, .-aes_gcm_tls_cipher
	.type	aes_gcm_cipher, @function
aes_gcm_cipher:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	248(%rax), %eax
	testl	%eax, %eax
	jne	.L282
	movl	$-1, %eax
	jmp	.L283
.L282:
	movq	-40(%rbp), %rax
	movl	728(%rax), %eax
	testl	%eax, %eax
	js	.L284
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	aes_gcm_tls_cipher
	jmp	.L283
.L284:
	movq	-40(%rbp), %rax
	movl	252(%rax), %eax
	testl	%eax, %eax
	jne	.L285
	movl	$-1, %eax
	jmp	.L283
.L285:
	cmpq	$0, -104(%rbp)
	je	.L286
	cmpq	$0, -96(%rbp)
	jne	.L287
	movq	-40(%rbp), %rax
	leaq	256(%rax), %rcx
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_aad@PLT
	testl	%eax, %eax
	je	.L288
	movl	$-1, %eax
	jmp	.L283
.L287:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L289
	movq	-40(%rbp), %rax
	movq	744(%rax), %rax
	testq	%rax, %rax
	je	.L290
	movq	$0, -24(%rbp)
	cmpq	$31, -112(%rbp)
	jbe	.L291
	movq	-40(%rbp), %rax
	movq	744(%rax), %rax
	movq	aesni_ctr32_encrypt_blocks@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L291
	movq	-40(%rbp), %rax
	movq	616(%rax), %rax
	movq	gcm_ghash_avx@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L291
	movq	-40(%rbp), %rax
	movl	632(%rax), %eax
	negl	%eax
	movl	%eax, %eax
	andl	$15, %eax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	leaq	256(%rax), %rdi
	movq	-72(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_gcm128_encrypt@PLT
	testl	%eax, %eax
	je	.L292
	movl	$-1, %eax
	jmp	.L283
.L292:
	movq	-40(%rbp), %rax
	leaq	320(%rax), %r9
	movq	-40(%rbp), %rax
	leaq	256(%rax), %r8
	movq	-40(%rbp), %rax
	movq	648(%rax), %rdx
	movq	-112(%rbp), %rax
	subq	-72(%rbp), %rax
	movq	-96(%rbp), %rsi
	movq	-72(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-104(%rbp), %rdi
	movq	-72(%rbp), %rcx
	addq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	aesni_gcm_encrypt@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	312(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 312(%rax)
	movq	-72(%rbp), %rax
	addq	%rax, -24(%rbp)
.L291:
	movq	-40(%rbp), %rax
	movq	744(%rax), %r8
	movq	-112(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movq	-104(%rbp), %rsi
	movq	-24(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-40(%rbp), %rcx
	leaq	256(%rcx), %rdi
	movq	%rax, %rcx
	call	CRYPTO_gcm128_encrypt_ctr32@PLT
	testl	%eax, %eax
	je	.L288
	movl	$-1, %eax
	jmp	.L283
.L290:
	movq	$0, -64(%rbp)
	movq	-112(%rbp), %rax
	subq	-64(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	-64(%rbp), %rdx
	addq	%rcx, %rdx
	movq	-104(%rbp), %rsi
	movq	-64(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-40(%rbp), %rcx
	leaq	256(%rcx), %rdi
	movq	%rax, %rcx
	call	CRYPTO_gcm128_encrypt@PLT
	testl	%eax, %eax
	je	.L288
	movl	$-1, %eax
	jmp	.L283
.L289:
	movq	-40(%rbp), %rax
	movq	744(%rax), %rax
	testq	%rax, %rax
	je	.L293
	movq	$0, -32(%rbp)
	cmpq	$15, -112(%rbp)
	jbe	.L294
	movq	-40(%rbp), %rax
	movq	744(%rax), %rax
	movq	aesni_ctr32_encrypt_blocks@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L294
	movq	-40(%rbp), %rax
	movq	616(%rax), %rax
	movq	gcm_ghash_avx@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L294
	movq	-40(%rbp), %rax
	movl	632(%rax), %eax
	negl	%eax
	movl	%eax, %eax
	andl	$15, %eax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	leaq	256(%rax), %rdi
	movq	-56(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_gcm128_decrypt@PLT
	testl	%eax, %eax
	je	.L295
	movl	$-1, %eax
	jmp	.L283
.L295:
	movq	-40(%rbp), %rax
	leaq	320(%rax), %r9
	movq	-40(%rbp), %rax
	leaq	256(%rax), %r8
	movq	-40(%rbp), %rax
	movq	648(%rax), %rdx
	movq	-112(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-96(%rbp), %rsi
	movq	-56(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-104(%rbp), %rdi
	movq	-56(%rbp), %rcx
	addq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	aesni_gcm_decrypt@PLT
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	312(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 312(%rax)
	movq	-56(%rbp), %rax
	addq	%rax, -32(%rbp)
.L294:
	movq	-40(%rbp), %rax
	movq	744(%rax), %r8
	movq	-112(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movq	-104(%rbp), %rsi
	movq	-32(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-40(%rbp), %rcx
	leaq	256(%rcx), %rdi
	movq	%rax, %rcx
	call	CRYPTO_gcm128_decrypt_ctr32@PLT
	testl	%eax, %eax
	je	.L288
	movl	$-1, %eax
	jmp	.L283
.L293:
	movq	$0, -48(%rbp)
	movq	-112(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	movq	-104(%rbp), %rsi
	movq	-48(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-40(%rbp), %rcx
	leaq	256(%rcx), %rdi
	movq	%rax, %rcx
	call	CRYPTO_gcm128_decrypt@PLT
	testl	%eax, %eax
	je	.L288
	movl	$-1, %eax
	jmp	.L283
.L288:
	movq	-112(%rbp), %rax
	jmp	.L283
.L286:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	jne	.L296
	movq	-40(%rbp), %rax
	movl	716(%rax), %eax
	testl	%eax, %eax
	jns	.L297
	movl	$-1, %eax
	jmp	.L283
.L297:
	movq	-40(%rbp), %rax
	movl	716(%rax), %eax
	movslq	%eax, %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	addq	$256, %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_gcm128_finish@PLT
	testl	%eax, %eax
	je	.L298
	movl	$-1, %eax
	jmp	.L283
.L298:
	movq	-40(%rbp), %rax
	movl	$0, 252(%rax)
	movl	$0, %eax
	jmp	.L283
.L296:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	addq	$256, %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_gcm128_tag@PLT
	movq	-40(%rbp), %rax
	movl	$16, 716(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 252(%rax)
	movl	$0, %eax
.L283:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	aes_gcm_cipher, .-aes_gcm_cipher
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_128_gcm, @object
	.size	aesni_128_gcm, 248
aesni_128_gcm:
	.long	895
	.long	1
	.long	16
	.long	12
	.quad	3148918
	.long	1
	.zero	4
	.quad	aesni_gcm_init_key
	.quad	aes_gcm_cipher
	.quad	aes_gcm_cleanup
	.long	752
	.zero	4
	.quad	0
	.quad	0
	.quad	aes_gcm_ctrl
	.quad	0
	.zero	152
	.align 32
	.type	aes_128_gcm, @object
	.size	aes_128_gcm, 248
aes_128_gcm:
	.long	895
	.long	1
	.long	16
	.long	12
	.quad	3148918
	.long	1
	.zero	4
	.quad	aes_gcm_init_key
	.quad	aes_gcm_cipher
	.quad	aes_gcm_cleanup
	.long	752
	.zero	4
	.quad	0
	.quad	0
	.quad	aes_gcm_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_128_gcm
	.type	EVP_aes_128_gcm, @function
EVP_aes_128_gcm:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L300
	leaq	aesni_128_gcm(%rip), %rax
	jmp	.L302
.L300:
	leaq	aes_128_gcm(%rip), %rax
.L302:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	EVP_aes_128_gcm, .-EVP_aes_128_gcm
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_192_gcm, @object
	.size	aesni_192_gcm, 248
aesni_192_gcm:
	.long	898
	.long	1
	.long	24
	.long	12
	.quad	3148918
	.long	1
	.zero	4
	.quad	aesni_gcm_init_key
	.quad	aes_gcm_cipher
	.quad	aes_gcm_cleanup
	.long	752
	.zero	4
	.quad	0
	.quad	0
	.quad	aes_gcm_ctrl
	.quad	0
	.zero	152
	.align 32
	.type	aes_192_gcm, @object
	.size	aes_192_gcm, 248
aes_192_gcm:
	.long	898
	.long	1
	.long	24
	.long	12
	.quad	3148918
	.long	1
	.zero	4
	.quad	aes_gcm_init_key
	.quad	aes_gcm_cipher
	.quad	aes_gcm_cleanup
	.long	752
	.zero	4
	.quad	0
	.quad	0
	.quad	aes_gcm_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_192_gcm
	.type	EVP_aes_192_gcm, @function
EVP_aes_192_gcm:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L304
	leaq	aesni_192_gcm(%rip), %rax
	jmp	.L306
.L304:
	leaq	aes_192_gcm(%rip), %rax
.L306:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	EVP_aes_192_gcm, .-EVP_aes_192_gcm
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_256_gcm, @object
	.size	aesni_256_gcm, 248
aesni_256_gcm:
	.long	901
	.long	1
	.long	32
	.long	12
	.quad	3148918
	.long	1
	.zero	4
	.quad	aesni_gcm_init_key
	.quad	aes_gcm_cipher
	.quad	aes_gcm_cleanup
	.long	752
	.zero	4
	.quad	0
	.quad	0
	.quad	aes_gcm_ctrl
	.quad	0
	.zero	152
	.align 32
	.type	aes_256_gcm, @object
	.size	aes_256_gcm, 248
aes_256_gcm:
	.long	901
	.long	1
	.long	32
	.long	12
	.quad	3148918
	.long	1
	.zero	4
	.quad	aes_gcm_init_key
	.quad	aes_gcm_cipher
	.quad	aes_gcm_cleanup
	.long	752
	.zero	4
	.quad	0
	.quad	0
	.quad	aes_gcm_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_256_gcm
	.type	EVP_aes_256_gcm, @function
EVP_aes_256_gcm:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L308
	leaq	aesni_256_gcm(%rip), %rax
	jmp	.L310
.L308:
	leaq	aes_256_gcm(%rip), %rax
.L310:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	EVP_aes_256_gcm, .-EVP_aes_256_gcm
	.type	aes_xts_ctrl, @function
aes_xts_ctrl:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -8(%rbp)
	cmpl	$8, -44(%rbp)
	jne	.L312
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	496(%rax), %rax
	testq	%rax, %rax
	je	.L313
	movq	-8(%rbp), %rax
	movq	496(%rax), %rdx
	movq	-8(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L314
	movl	$0, %eax
	jmp	.L315
.L314:
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 496(%rax)
.L313:
	movq	-8(%rbp), %rax
	movq	504(%rax), %rax
	testq	%rax, %rax
	je	.L316
	movq	-8(%rbp), %rax
	movq	504(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$248, %rax
	cmpq	%rax, %rdx
	je	.L317
	movl	$0, %eax
	jmp	.L315
.L317:
	movq	-24(%rbp), %rax
	leaq	248(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 504(%rax)
.L316:
	movl	$1, %eax
	jmp	.L315
.L312:
	cmpl	$0, -44(%rbp)
	je	.L318
	movl	$-1, %eax
	jmp	.L315
.L318:
	movq	-8(%rbp), %rax
	movq	$0, 496(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 504(%rax)
	movl	$1, %eax
.L315:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	aes_xts_ctrl, .-aes_xts_ctrl
	.type	aes_xts_init_key, @function
aes_xts_init_key:
.LFB528:
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
	movl	%ecx, -60(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L320
	cmpq	$0, -48(%rbp)
	jne	.L320
	movl	$1, %eax
	jmp	.L321
.L320:
	cmpq	$0, -48(%rbp)
	je	.L322
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	sall	$3, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L323
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3234, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L321
.L323:
	movl	$1, %eax
	testl	%eax, %eax
	je	.L324
	cmpl	$0, -60(%rbp)
	je	.L325
.L324:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movl	-16(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rax
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	jne	.L325
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3255, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$192, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L321
.L325:
	movq	-8(%rbp), %rax
	movq	$0, 528(%rax)
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L326
	cmpl	$0, -60(%rbp)
	je	.L327
	movq	ossl_bsaes_xts_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	jmp	.L328
.L327:
	movq	ossl_bsaes_xts_decrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
.L328:
	movq	-8(%rbp), %rax
	movq	%rdx, 528(%rax)
	jmp	.L329
.L326:
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L329
	cmpl	$0, -60(%rbp)
	je	.L330
	movq	-8(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	vpaes_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	movq	vpaes_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 512(%rax)
	jmp	.L331
.L330:
	movq	-8(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	vpaes_set_decrypt_key@PLT
	movq	-8(%rbp), %rax
	movq	vpaes_decrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 512(%rax)
.L331:
	movq	-8(%rbp), %rax
	leaq	248(%rax), %rdx
	movl	-16(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rax
	addq	%rax, %rcx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	vpaes_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	movq	vpaes_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 520(%rax)
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 496(%rax)
	jmp	.L322
.L329:
	cmpl	$0, -60(%rbp)
	je	.L332
	movq	-8(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	movq	AES_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 512(%rax)
	jmp	.L333
.L332:
	movq	-8(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_decrypt_key@PLT
	movq	-8(%rbp), %rax
	movq	AES_decrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 512(%rax)
.L333:
	movq	-8(%rbp), %rax
	leaq	248(%rax), %rdx
	movl	-16(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rax
	addq	%rax, %rcx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	AES_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	movq	AES_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 520(%rax)
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 496(%rax)
.L322:
	cmpq	$0, -56(%rbp)
	je	.L334
	movq	-8(%rbp), %rax
	leaq	248(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 504(%rax)
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
.L334:
	movl	$1, %eax
.L321:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	aes_xts_init_key, .-aes_xts_init_key
	.type	aes_xts_cipher, @function
aes_xts_cipher:
.LFB529:
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
	movq	-8(%rbp), %rax
	movq	496(%rax), %rax
	testq	%rax, %rax
	je	.L336
	movq	-8(%rbp), %rax
	movq	504(%rax), %rax
	testq	%rax, %rax
	je	.L336
	cmpq	$0, -32(%rbp)
	je	.L336
	cmpq	$0, -40(%rbp)
	je	.L336
	cmpq	$15, -48(%rbp)
	ja	.L337
.L336:
	movl	$0, %eax
	jmp	.L338
.L337:
	cmpq	$16777216, -48(%rbp)
	jbe	.L339
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3354, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$191, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L338
.L339:
	movq	-8(%rbp), %rax
	movq	528(%rax), %rax
	testq	%rax, %rax
	je	.L340
	movq	-8(%rbp), %rax
	movq	528(%rax), %r10
	movq	-24(%rbp), %rax
	leaq	40(%rax), %r8
	movq	-8(%rbp), %rax
	movq	504(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	496(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	jmp	.L341
.L340:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	496(%rax), %rdi
	movq	-48(%rbp), %r8
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%ecx, %r9d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	CRYPTO_xts128_encrypt@PLT
	testl	%eax, %eax
	je	.L341
	movl	$0, %eax
	jmp	.L338
.L341:
	movl	$1, %eax
.L338:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	aes_xts_cipher, .-aes_xts_cipher
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_128_xts, @object
	.size	aesni_128_xts, 248
aesni_128_xts:
	.long	913
	.long	1
	.long	32
	.long	16
	.quad	66673
	.long	1
	.zero	4
	.quad	aesni_xts_init_key
	.quad	aes_xts_cipher
	.quad	0
	.long	536
	.zero	4
	.quad	0
	.quad	0
	.quad	aes_xts_ctrl
	.quad	0
	.zero	152
	.align 32
	.type	aes_128_xts, @object
	.size	aes_128_xts, 248
aes_128_xts:
	.long	913
	.long	1
	.long	32
	.long	16
	.quad	66673
	.long	1
	.zero	4
	.quad	aes_xts_init_key
	.quad	aes_xts_cipher
	.quad	0
	.long	536
	.zero	4
	.quad	0
	.quad	0
	.quad	aes_xts_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_128_xts
	.type	EVP_aes_128_xts, @function
EVP_aes_128_xts:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L343
	leaq	aesni_128_xts(%rip), %rax
	jmp	.L345
.L343:
	leaq	aes_128_xts(%rip), %rax
.L345:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	EVP_aes_128_xts, .-EVP_aes_128_xts
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_256_xts, @object
	.size	aesni_256_xts, 248
aesni_256_xts:
	.long	914
	.long	1
	.long	64
	.long	16
	.quad	66673
	.long	1
	.zero	4
	.quad	aesni_xts_init_key
	.quad	aes_xts_cipher
	.quad	0
	.long	536
	.zero	4
	.quad	0
	.quad	0
	.quad	aes_xts_ctrl
	.quad	0
	.zero	152
	.align 32
	.type	aes_256_xts, @object
	.size	aes_256_xts, 248
aes_256_xts:
	.long	914
	.long	1
	.long	64
	.long	16
	.quad	66673
	.long	1
	.zero	4
	.quad	aes_xts_init_key
	.quad	aes_xts_cipher
	.quad	0
	.long	536
	.zero	4
	.quad	0
	.quad	0
	.quad	aes_xts_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_256_xts
	.type	EVP_aes_256_xts, @function
EVP_aes_256_xts:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L347
	leaq	aesni_256_xts(%rip), %rax
	jmp	.L349
.L347:
	leaq	aes_256_xts(%rip), %rax
.L349:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	EVP_aes_256_xts, .-EVP_aes_256_xts
	.type	aes_ccm_ctrl, @function
aes_ccm_ctrl:
.LFB532:
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
	je	.L351
	cmpl	$37, -60(%rbp)
	jg	.L352
	cmpl	$22, -60(%rbp)
	je	.L353
	cmpl	$22, -60(%rbp)
	jg	.L352
	cmpl	$20, -60(%rbp)
	je	.L354
	cmpl	$20, -60(%rbp)
	jg	.L352
	cmpl	$18, -60(%rbp)
	je	.L355
	cmpl	$18, -60(%rbp)
	jg	.L352
	cmpl	$17, -60(%rbp)
	je	.L356
	cmpl	$17, -60(%rbp)
	jg	.L352
	cmpl	$16, -60(%rbp)
	je	.L357
	cmpl	$16, -60(%rbp)
	jg	.L352
	cmpl	$9, -60(%rbp)
	je	.L358
	cmpl	$9, -60(%rbp)
	jg	.L352
	cmpl	$0, -60(%rbp)
	je	.L359
	cmpl	$8, -60(%rbp)
	je	.L360
	jmp	.L352
.L359:
	movq	-32(%rbp), %rax
	movl	$0, 248(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 252(%rax)
	movq	-32(%rbp), %rax
	movl	$8, 264(%rax)
	movq	-32(%rbp), %rax
	movl	$12, 268(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 256(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 260(%rax)
	movq	-32(%rbp), %rax
	movl	$-1, 272(%rax)
	movl	$1, %eax
	jmp	.L361
.L351:
	movq	-32(%rbp), %rax
	movl	264(%rax), %eax
	movl	$15, %edx
	subl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L361
.L353:
	cmpl	$13, -64(%rbp)
	je	.L362
	movl	$0, %eax
	jmp	.L361
.L362:
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
	movl	%edx, 272(%rax)
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
	ja	.L363
	movl	$0, %eax
	jmp	.L361
.L363:
	subw	$8, -18(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	jne	.L364
	movzwl	-18(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	268(%rax), %eax
	cmpl	%eax, %edx
	jge	.L365
	movl	$0, %eax
	jmp	.L361
.L365:
	movq	-32(%rbp), %rax
	movl	268(%rax), %eax
	subw	%ax, -18(%rbp)
.L364:
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
	movl	268(%rax), %eax
	jmp	.L361
.L355:
	cmpl	$4, -64(%rbp)
	je	.L366
	movl	$0, %eax
	jmp	.L361
.L366:
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	$1, %eax
	jmp	.L361
.L358:
	movl	$15, %eax
	subl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
.L354:
	cmpl	$1, -64(%rbp)
	jle	.L367
	cmpl	$8, -64(%rbp)
	jle	.L368
.L367:
	movl	$0, %eax
	jmp	.L361
.L368:
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movl	%edx, 264(%rax)
	movl	$1, %eax
	jmp	.L361
.L356:
	movl	-64(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L369
	cmpl	$3, -64(%rbp)
	jle	.L369
	cmpl	$16, -64(%rbp)
	jle	.L370
.L369:
	movl	$0, %eax
	jmp	.L361
.L370:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L371
	cmpq	$0, -72(%rbp)
	je	.L371
	movl	$0, %eax
	jmp	.L361
.L371:
	cmpq	$0, -72(%rbp)
	je	.L372
	movq	-32(%rbp), %rax
	movl	$1, 256(%rax)
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
.L372:
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movl	%edx, 268(%rax)
	movl	$1, %eax
	jmp	.L361
.L357:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L373
	movq	-32(%rbp), %rax
	movl	256(%rax), %eax
	testl	%eax, %eax
	jne	.L374
.L373:
	movl	$0, %eax
	jmp	.L361
.L374:
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	leaq	280(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_ccm128_tag@PLT
	testq	%rax, %rax
	jne	.L375
	movl	$0, %eax
	jmp	.L361
.L375:
	movq	-32(%rbp), %rax
	movl	$0, 256(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 252(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 260(%rax)
	movl	$1, %eax
	jmp	.L361
.L360:
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	328(%rax), %rax
	testq	%rax, %rax
	je	.L376
	movq	-32(%rbp), %rax
	movq	328(%rax), %rdx
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L377
	movl	$0, %eax
	jmp	.L361
.L377:
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 328(%rax)
.L376:
	movl	$1, %eax
	jmp	.L361
.L352:
	movl	$-1, %eax
.L361:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	aes_ccm_ctrl, .-aes_ccm_ctrl
	.type	aes_ccm_init_key, @function
aes_ccm_init_key:
.LFB533:
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
	cmpq	$0, -40(%rbp)
	jne	.L379
	cmpq	$0, -32(%rbp)
	jne	.L379
	movl	$1, %eax
	jmp	.L380
.L379:
	cmpq	$0, -32(%rbp)
	je	.L381
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	sall	$3, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L382
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3490, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L380
.L382:
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L383
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	vpaes_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rdx
	movl	264(%rdx), %edx
	movl	%edx, %r9d
	movq	-8(%rbp), %rdx
	movl	268(%rdx), %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rdx
	leaq	280(%rdx), %rdi
	movq	vpaes_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	%r9d, %edx
	call	CRYPTO_ccm128_init@PLT
	movq	-8(%rbp), %rax
	movq	$0, 336(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 248(%rax)
	jmp	.L381
.L383:
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rdx
	movl	264(%rdx), %edx
	movl	%edx, %r9d
	movq	-8(%rbp), %rdx
	movl	268(%rdx), %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rdx
	leaq	280(%rdx), %rdi
	movq	AES_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	%r9d, %edx
	call	CRYPTO_ccm128_init@PLT
	movq	-8(%rbp), %rax
	movq	$0, 336(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 248(%rax)
.L381:
	cmpq	$0, -40(%rbp)
	je	.L384
	movq	-8(%rbp), %rax
	movl	264(%rax), %eax
	movl	$15, %edx
	subl	%eax, %edx
	movslq	%edx, %rdx
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movl	$1, 252(%rax)
.L384:
	movl	$1, %eax
.L380:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	aes_ccm_init_key, .-aes_ccm_init_key
	.type	aes_ccm_tls_cipher, @function
aes_ccm_tls_cipher:
.LFB534:
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
	addq	$280, %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L386
	movq	-24(%rbp), %rax
	movl	268(%rax), %eax
	cltq
	addq	$8, %rax
	cmpq	%rax, -80(%rbp)
	jnb	.L387
.L386:
	movl	$-1, %eax
	jmp	.L388
.L387:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L389
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
.L389:
	movq	-56(%rbp), %rax
	addq	$40, %rax
	leaq	4(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movl	268(%rax), %eax
	addl	$8, %eax
	cltq
	subq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movl	264(%rax), %eax
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
	je	.L390
	movl	$-1, %eax
	jmp	.L388
.L390:
	movq	-24(%rbp), %rax
	movl	272(%rax), %eax
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
	je	.L391
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	testq	%rax, %rax
	je	.L392
	movq	-24(%rbp), %rax
	movq	336(%rax), %rdi
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_ccm128_encrypt_ccm64@PLT
	testl	%eax, %eax
	setne	%al
	jmp	.L393
.L392:
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_ccm128_encrypt@PLT
	testl	%eax, %eax
	setne	%al
.L393:
	testb	%al, %al
	je	.L394
	movl	$-1, %eax
	jmp	.L388
.L394:
	movq	-24(%rbp), %rax
	movl	268(%rax), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rcx
	movq	-80(%rbp), %rax
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_ccm128_tag@PLT
	testq	%rax, %rax
	jne	.L395
	movl	$-1, %eax
	jmp	.L388
.L395:
	movq	-24(%rbp), %rax
	movl	268(%rax), %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	addl	%edx, %eax
	addl	$8, %eax
	jmp	.L388
.L391:
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	testq	%rax, %rax
	je	.L396
	movq	-24(%rbp), %rax
	movq	336(%rax), %rdi
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_ccm128_decrypt_ccm64@PLT
	testl	%eax, %eax
	sete	%al
	jmp	.L397
.L396:
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_ccm128_decrypt@PLT
	testl	%eax, %eax
	sete	%al
.L397:
	testb	%al, %al
	je	.L398
	movq	-24(%rbp), %rax
	movl	268(%rax), %eax
	movslq	%eax, %rdx
	leaq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_ccm128_tag@PLT
	testq	%rax, %rax
	je	.L398
	movq	-24(%rbp), %rax
	movl	268(%rax), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rax
	addq	%rax, %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	jne	.L398
	movq	-80(%rbp), %rax
	jmp	.L388
.L398:
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$-1, %eax
.L388:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	aes_ccm_tls_cipher, .-aes_ccm_tls_cipher
	.type	aes_ccm_cipher, @function
aes_ccm_cipher:
.LFB535:
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
	addq	$280, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	248(%rax), %eax
	testl	%eax, %eax
	jne	.L401
	movl	$-1, %eax
	jmp	.L402
.L401:
	movq	-32(%rbp), %rax
	movl	272(%rax), %eax
	testl	%eax, %eax
	js	.L403
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	aes_ccm_tls_cipher
	jmp	.L402
.L403:
	cmpq	$0, -88(%rbp)
	jne	.L404
	cmpq	$0, -80(%rbp)
	je	.L404
	movl	$0, %eax
	jmp	.L402
.L404:
	movq	-32(%rbp), %rax
	movl	252(%rax), %eax
	testl	%eax, %eax
	jne	.L405
	movl	$-1, %eax
	jmp	.L402
.L405:
	cmpq	$0, -80(%rbp)
	jne	.L406
	cmpq	$0, -88(%rbp)
	jne	.L407
	movq	-32(%rbp), %rax
	movl	264(%rax), %eax
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
	je	.L408
	movl	$-1, %eax
	jmp	.L402
.L408:
	movq	-32(%rbp), %rax
	movl	$1, 260(%rax)
	movq	-96(%rbp), %rax
	jmp	.L402
.L407:
	movq	-32(%rbp), %rax
	movl	260(%rax), %eax
	testl	%eax, %eax
	jne	.L409
	cmpq	$0, -96(%rbp)
	je	.L409
	movl	$-1, %eax
	jmp	.L402
.L409:
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_ccm128_aad@PLT
	movq	-96(%rbp), %rax
	jmp	.L402
.L406:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	jne	.L410
	movq	-32(%rbp), %rax
	movl	256(%rax), %eax
	testl	%eax, %eax
	jne	.L410
	movl	$-1, %eax
	jmp	.L402
.L410:
	movq	-32(%rbp), %rax
	movl	260(%rax), %eax
	testl	%eax, %eax
	jne	.L411
	movq	-32(%rbp), %rax
	movl	264(%rax), %eax
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
	je	.L412
	movl	$-1, %eax
	jmp	.L402
.L412:
	movq	-32(%rbp), %rax
	movl	$1, 260(%rax)
.L411:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L413
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	testq	%rax, %rax
	je	.L414
	movq	-32(%rbp), %rax
	movq	336(%rax), %rdi
	movq	-96(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_ccm128_encrypt_ccm64@PLT
	testl	%eax, %eax
	setne	%al
	jmp	.L415
.L414:
	movq	-96(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_ccm128_encrypt@PLT
	testl	%eax, %eax
	setne	%al
.L415:
	testb	%al, %al
	je	.L416
	movl	$-1, %eax
	jmp	.L402
.L416:
	movq	-32(%rbp), %rax
	movl	$1, 256(%rax)
	movq	-96(%rbp), %rax
	jmp	.L402
.L413:
	movl	$-1, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	testq	%rax, %rax
	je	.L417
	movq	-32(%rbp), %rax
	movq	336(%rax), %rdi
	movq	-96(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_ccm128_decrypt_ccm64@PLT
	testl	%eax, %eax
	sete	%al
	jmp	.L418
.L417:
	movq	-96(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_ccm128_decrypt@PLT
	testl	%eax, %eax
	sete	%al
.L418:
	testb	%al, %al
	je	.L419
	movq	-32(%rbp), %rax
	movl	268(%rax), %eax
	movslq	%eax, %rdx
	leaq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_ccm128_tag@PLT
	testq	%rax, %rax
	je	.L419
	movq	-32(%rbp), %rax
	movl	268(%rax), %eax
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
	jne	.L419
	movq	-96(%rbp), %rax
	movl	%eax, -20(%rbp)
.L419:
	cmpl	$-1, -20(%rbp)
	jne	.L421
	movq	-96(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L421:
	movq	-32(%rbp), %rax
	movl	$0, 252(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 256(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 260(%rax)
	movl	-20(%rbp), %eax
.L402:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	aes_ccm_cipher, .-aes_ccm_cipher
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_128_ccm, @object
	.size	aesni_128_ccm, 248
aesni_128_ccm:
	.long	896
	.long	1
	.long	16
	.long	12
	.quad	3148919
	.long	1
	.zero	4
	.quad	aesni_ccm_init_key
	.quad	aes_ccm_cipher
	.quad	0
	.long	344
	.zero	4
	.quad	0
	.quad	0
	.quad	aes_ccm_ctrl
	.quad	0
	.zero	152
	.align 32
	.type	aes_128_ccm, @object
	.size	aes_128_ccm, 248
aes_128_ccm:
	.long	896
	.long	1
	.long	16
	.long	12
	.quad	3148919
	.long	1
	.zero	4
	.quad	aes_ccm_init_key
	.quad	aes_ccm_cipher
	.quad	0
	.long	344
	.zero	4
	.quad	0
	.quad	0
	.quad	aes_ccm_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_128_ccm
	.type	EVP_aes_128_ccm, @function
EVP_aes_128_ccm:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L423
	leaq	aesni_128_ccm(%rip), %rax
	jmp	.L425
.L423:
	leaq	aes_128_ccm(%rip), %rax
.L425:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	EVP_aes_128_ccm, .-EVP_aes_128_ccm
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_192_ccm, @object
	.size	aesni_192_ccm, 248
aesni_192_ccm:
	.long	899
	.long	1
	.long	24
	.long	12
	.quad	3148919
	.long	1
	.zero	4
	.quad	aesni_ccm_init_key
	.quad	aes_ccm_cipher
	.quad	0
	.long	344
	.zero	4
	.quad	0
	.quad	0
	.quad	aes_ccm_ctrl
	.quad	0
	.zero	152
	.align 32
	.type	aes_192_ccm, @object
	.size	aes_192_ccm, 248
aes_192_ccm:
	.long	899
	.long	1
	.long	24
	.long	12
	.quad	3148919
	.long	1
	.zero	4
	.quad	aes_ccm_init_key
	.quad	aes_ccm_cipher
	.quad	0
	.long	344
	.zero	4
	.quad	0
	.quad	0
	.quad	aes_ccm_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_192_ccm
	.type	EVP_aes_192_ccm, @function
EVP_aes_192_ccm:
.LFB537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L427
	leaq	aesni_192_ccm(%rip), %rax
	jmp	.L429
.L427:
	leaq	aes_192_ccm(%rip), %rax
.L429:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	EVP_aes_192_ccm, .-EVP_aes_192_ccm
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_256_ccm, @object
	.size	aesni_256_ccm, 248
aesni_256_ccm:
	.long	902
	.long	1
	.long	32
	.long	12
	.quad	3148919
	.long	1
	.zero	4
	.quad	aesni_ccm_init_key
	.quad	aes_ccm_cipher
	.quad	0
	.long	344
	.zero	4
	.quad	0
	.quad	0
	.quad	aes_ccm_ctrl
	.quad	0
	.zero	152
	.align 32
	.type	aes_256_ccm, @object
	.size	aes_256_ccm, 248
aes_256_ccm:
	.long	902
	.long	1
	.long	32
	.long	12
	.quad	3148919
	.long	1
	.zero	4
	.quad	aes_ccm_init_key
	.quad	aes_ccm_cipher
	.quad	0
	.long	344
	.zero	4
	.quad	0
	.quad	0
	.quad	aes_ccm_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_256_ccm
	.type	EVP_aes_256_ccm, @function
EVP_aes_256_ccm:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L431
	leaq	aesni_256_ccm(%rip), %rax
	jmp	.L433
.L431:
	leaq	aes_256_ccm(%rip), %rax
.L433:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	EVP_aes_256_ccm, .-EVP_aes_256_ccm
	.type	aes_wrap_init_key, @function
aes_wrap_init_key:
.LFB539:
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
	cmpq	$0, -40(%rbp)
	jne	.L435
	cmpq	$0, -32(%rbp)
	jne	.L435
	movl	$1, %eax
	jmp	.L436
.L435:
	cmpq	$0, -32(%rbp)
	je	.L437
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	sall	$3, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L438
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3680, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L436
.L438:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L439
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_encrypt_key@PLT
	jmp	.L440
.L439:
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_decrypt_key@PLT
.L440:
	cmpq	$0, -40(%rbp)
	jne	.L437
	movq	-8(%rbp), %rax
	movq	$0, 248(%rax)
.L437:
	cmpq	$0, -40(%rbp)
	je	.L441
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_iv_length@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jns	.L442
	movl	$0, %eax
	jmp	.L436
.L442:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 248(%rax)
.L441:
	movl	$1, %eax
.L436:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	aes_wrap_init_key, .-aes_wrap_init_key
	.type	aes_wrap_cipher, @function
aes_wrap_cipher:
.LFB540:
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
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_iv_length@PLT
	cmpl	$4, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L444
	movl	$0, %eax
	jmp	.L445
.L444:
	cmpq	$0, -64(%rbp)
	jne	.L446
	movl	$-1, %eax
	jmp	.L445
.L446:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	jne	.L447
	cmpq	$15, -64(%rbp)
	jbe	.L448
	movq	-64(%rbp), %rax
	andl	$7, %eax
	testq	%rax, %rax
	je	.L447
.L448:
	movl	$-1, %eax
	jmp	.L445
.L447:
	cmpl	$0, -20(%rbp)
	jne	.L449
	movq	-64(%rbp), %rax
	andl	$7, %eax
	testq	%rax, %rax
	je	.L449
	movl	$-1, %eax
	jmp	.L445
.L449:
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_is_partially_overlapping@PLT
	testl	%eax, %eax
	je	.L450
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3719, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$162, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L445
.L450:
	cmpq	$0, -48(%rbp)
	jne	.L451
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L452
	cmpl	$0, -20(%rbp)
	je	.L453
	movq	-64(%rbp), %rax
	addq	$7, %rax
	andq	$-8, %rax
	movq	%rax, -64(%rbp)
.L453:
	movq	-64(%rbp), %rax
	addl	$8, %eax
	jmp	.L445
.L452:
	movq	-64(%rbp), %rax
	subl	$8, %eax
	jmp	.L445
.L451:
	cmpl	$0, -20(%rbp)
	je	.L454
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L455
	movq	-16(%rbp), %rax
	movq	248(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	AES_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, %r8
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_128_wrap_pad@PLT
	movq	%rax, -8(%rbp)
	jmp	.L456
.L455:
	movq	-16(%rbp), %rax
	movq	248(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	AES_decrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, %r8
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_128_unwrap_pad@PLT
	movq	%rax, -8(%rbp)
	jmp	.L456
.L454:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L457
	movq	-16(%rbp), %rax
	movq	248(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	AES_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, %r8
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_128_wrap@PLT
	movq	%rax, -8(%rbp)
	jmp	.L456
.L457:
	movq	-16(%rbp), %rax
	movq	248(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	AES_decrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, %r8
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_128_unwrap@PLT
	movq	%rax, -8(%rbp)
.L456:
	cmpq	$0, -8(%rbp)
	je	.L458
	movq	-8(%rbp), %rax
	jmp	.L445
.L458:
	movl	$-1, %eax
.L445:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	aes_wrap_cipher, .-aes_wrap_cipher
	.section	.data.rel.ro.local
	.align 32
	.type	aes_128_wrap, @object
	.size	aes_128_wrap, 248
aes_128_wrap:
	.long	788
	.long	8
	.long	16
	.long	8
	.quad	1114162
	.long	1
	.zero	4
	.quad	aes_wrap_init_key
	.quad	aes_wrap_cipher
	.quad	0
	.long	256
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_128_wrap
	.type	EVP_aes_128_wrap, @function
EVP_aes_128_wrap:
.LFB541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aes_128_wrap(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	EVP_aes_128_wrap, .-EVP_aes_128_wrap
	.section	.data.rel.ro.local
	.align 32
	.type	aes_192_wrap, @object
	.size	aes_192_wrap, 248
aes_192_wrap:
	.long	789
	.long	8
	.long	24
	.long	8
	.quad	1114162
	.long	1
	.zero	4
	.quad	aes_wrap_init_key
	.quad	aes_wrap_cipher
	.quad	0
	.long	256
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_192_wrap
	.type	EVP_aes_192_wrap, @function
EVP_aes_192_wrap:
.LFB542:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aes_192_wrap(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	EVP_aes_192_wrap, .-EVP_aes_192_wrap
	.section	.data.rel.ro.local
	.align 32
	.type	aes_256_wrap, @object
	.size	aes_256_wrap, 248
aes_256_wrap:
	.long	790
	.long	8
	.long	32
	.long	8
	.quad	1114162
	.long	1
	.zero	4
	.quad	aes_wrap_init_key
	.quad	aes_wrap_cipher
	.quad	0
	.long	256
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_256_wrap
	.type	EVP_aes_256_wrap, @function
EVP_aes_256_wrap:
.LFB543:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aes_256_wrap(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	EVP_aes_256_wrap, .-EVP_aes_256_wrap
	.section	.data.rel.ro.local
	.align 32
	.type	aes_128_wrap_pad, @object
	.size	aes_128_wrap_pad, 248
aes_128_wrap_pad:
	.long	897
	.long	8
	.long	16
	.long	4
	.quad	1114162
	.long	1
	.zero	4
	.quad	aes_wrap_init_key
	.quad	aes_wrap_cipher
	.quad	0
	.long	256
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_128_wrap_pad
	.type	EVP_aes_128_wrap_pad, @function
EVP_aes_128_wrap_pad:
.LFB544:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aes_128_wrap_pad(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	EVP_aes_128_wrap_pad, .-EVP_aes_128_wrap_pad
	.section	.data.rel.ro.local
	.align 32
	.type	aes_192_wrap_pad, @object
	.size	aes_192_wrap_pad, 248
aes_192_wrap_pad:
	.long	900
	.long	8
	.long	24
	.long	4
	.quad	1114162
	.long	1
	.zero	4
	.quad	aes_wrap_init_key
	.quad	aes_wrap_cipher
	.quad	0
	.long	256
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_192_wrap_pad
	.type	EVP_aes_192_wrap_pad, @function
EVP_aes_192_wrap_pad:
.LFB545:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aes_192_wrap_pad(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	EVP_aes_192_wrap_pad, .-EVP_aes_192_wrap_pad
	.section	.data.rel.ro.local
	.align 32
	.type	aes_256_wrap_pad, @object
	.size	aes_256_wrap_pad, 248
aes_256_wrap_pad:
	.long	903
	.long	8
	.long	32
	.long	4
	.quad	1114162
	.long	1
	.zero	4
	.quad	aes_wrap_init_key
	.quad	aes_wrap_cipher
	.quad	0
	.long	256
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_256_wrap_pad
	.type	EVP_aes_256_wrap_pad, @function
EVP_aes_256_wrap_pad:
.LFB546:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	aes_256_wrap_pad(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	EVP_aes_256_wrap_pad, .-EVP_aes_256_wrap_pad
	.type	aes_ocb_ctrl, @function
aes_ocb_ctrl:
.LFB547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -8(%rbp)
	cmpl	$37, -44(%rbp)
	je	.L473
	cmpl	$37, -44(%rbp)
	jg	.L474
	cmpl	$17, -44(%rbp)
	je	.L475
	cmpl	$17, -44(%rbp)
	jg	.L474
	cmpl	$16, -44(%rbp)
	je	.L476
	cmpl	$16, -44(%rbp)
	jg	.L474
	cmpl	$9, -44(%rbp)
	je	.L477
	cmpl	$9, -44(%rbp)
	jg	.L474
	cmpl	$0, -44(%rbp)
	je	.L478
	cmpl	$8, -44(%rbp)
	je	.L479
	jmp	.L474
.L478:
	movq	-8(%rbp), %rax
	movl	$0, 496(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 500(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movq	-8(%rbp), %rdx
	movl	%eax, 744(%rdx)
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 680(%rax)
	movq	-8(%rbp), %rax
	movl	$16, 748(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 736(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 740(%rax)
	movl	$1, %eax
	jmp	.L480
.L473:
	movq	-8(%rbp), %rax
	movl	744(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L480
.L477:
	cmpl	$0, -48(%rbp)
	jle	.L481
	cmpl	$15, -48(%rbp)
	jle	.L482
.L481:
	movl	$0, %eax
	jmp	.L480
.L482:
	movq	-8(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, 744(%rax)
	movl	$1, %eax
	jmp	.L480
.L475:
	cmpq	$0, -56(%rbp)
	jne	.L483
	cmpl	$0, -48(%rbp)
	js	.L484
	cmpl	$16, -48(%rbp)
	jle	.L485
.L484:
	movl	$0, %eax
	jmp	.L480
.L485:
	movq	-8(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, 748(%rax)
	movl	$1, %eax
	jmp	.L480
.L483:
	movq	-8(%rbp), %rax
	movl	748(%rax), %eax
	cmpl	%eax, -48(%rbp)
	jne	.L486
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L487
.L486:
	movl	$0, %eax
	jmp	.L480
.L487:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	leaq	688(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	$1, %eax
	jmp	.L480
.L476:
	movq	-8(%rbp), %rax
	movl	748(%rax), %eax
	cmpl	%eax, -48(%rbp)
	jne	.L488
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	jne	.L489
.L488:
	movl	$0, %eax
	jmp	.L480
.L489:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	leaq	688(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
	jmp	.L480
.L479:
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	248(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	leaq	504(%rcx), %rsi
	movq	-24(%rbp), %rcx
	leaq	504(%rcx), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	CRYPTO_ocb128_copy_ctx@PLT
	jmp	.L480
.L474:
	movl	$-1, %eax
.L480:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	aes_ocb_ctrl, .-aes_ocb_ctrl
	.type	aes_ocb_init_key, @function
aes_ocb_init_key:
.LFB548:
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
	cmpq	$0, -40(%rbp)
	jne	.L491
	cmpq	$0, -32(%rbp)
	jne	.L491
	movl	$1, %eax
	jmp	.L492
.L491:
	cmpq	$0, -32(%rbp)
	je	.L493
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	sall	$3, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L494
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3922, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L492
.L494:
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L495
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	vpaes_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	leaq	248(%rax), %rdx
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	vpaes_set_decrypt_key@PLT
	movq	-8(%rbp), %rax
	leaq	248(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	leaq	504(%rcx), %rdi
	movq	vpaes_decrypt@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	vpaes_encrypt@GOTPCREL(%rip), %rcx
	movl	$0, %r9d
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	CRYPTO_ocb128_init@PLT
	testl	%eax, %eax
	jne	.L504
	movl	$0, %eax
	jmp	.L492
.L495:
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	leaq	248(%rax), %rdx
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_decrypt_key@PLT
	movq	-8(%rbp), %rax
	leaq	248(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	leaq	504(%rcx), %rdi
	movq	AES_decrypt@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	AES_encrypt@GOTPCREL(%rip), %rcx
	movl	$0, %r9d
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	CRYPTO_ocb128_init@PLT
	testl	%eax, %eax
	jne	.L497
	movl	$0, %eax
	jmp	.L492
.L504:
	nop
.L497:
	cmpq	$0, -40(%rbp)
	jne	.L498
	movq	-8(%rbp), %rax
	movl	500(%rax), %eax
	testl	%eax, %eax
	je	.L498
	movq	-8(%rbp), %rax
	movq	680(%rax), %rax
	movq	%rax, -40(%rbp)
.L498:
	cmpq	$0, -40(%rbp)
	je	.L499
	movq	-8(%rbp), %rax
	movl	748(%rax), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rax
	movl	744(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	leaq	504(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_ocb128_setiv@PLT
	cmpl	$1, %eax
	je	.L500
	movl	$0, %eax
	jmp	.L492
.L500:
	movq	-8(%rbp), %rax
	movl	$1, 500(%rax)
.L499:
	movq	-8(%rbp), %rax
	movl	$1, 496(%rax)
	jmp	.L501
.L493:
	movq	-8(%rbp), %rax
	movl	496(%rax), %eax
	testl	%eax, %eax
	je	.L502
	movq	-8(%rbp), %rax
	movl	748(%rax), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rax
	movl	744(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	leaq	504(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_ocb128_setiv@PLT
	jmp	.L503
.L502:
	movq	-8(%rbp), %rax
	movl	744(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	680(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L503:
	movq	-8(%rbp), %rax
	movl	$1, 500(%rax)
.L501:
	movl	$1, %eax
.L492:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	aes_ocb_init_key, .-aes_ocb_init_key
	.type	aes_ocb_cipher, @function
aes_ocb_cipher:
.LFB549:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	$0, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	500(%rax), %eax
	testl	%eax, %eax
	jne	.L506
	movl	$-1, %eax
	jmp	.L507
.L506:
	movq	-32(%rbp), %rax
	movl	496(%rax), %eax
	testl	%eax, %eax
	jne	.L508
	movl	$-1, %eax
	jmp	.L507
.L508:
	cmpq	$0, -72(%rbp)
	je	.L509
	cmpq	$0, -64(%rbp)
	jne	.L510
	movq	-32(%rbp), %rax
	addq	$720, %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	addq	$740, %rax
	movq	%rax, -16(%rbp)
	jmp	.L511
.L510:
	movq	-32(%rbp), %rax
	addq	$704, %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	addq	$736, %rax
	movq	%rax, -16(%rbp)
	movq	-80(%rbp), %rax
	movl	%eax, %esi
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rax
	movl	%esi, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_is_partially_overlapping@PLT
	testl	%eax, %eax
	je	.L511
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$4025, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$162, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L507
.L511:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L512
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	$16, %edx
	subl	%eax, %edx
	movl	%edx, -36(%rbp)
	movl	-36(%rbp), %eax
	cmpq	%rax, -80(%rbp)
	jnb	.L513
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	addl	%edx, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L507
.L513:
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rax
	addq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-36(%rbp), %eax
	subq	%rax, -80(%rbp)
	movl	-36(%rbp), %eax
	addq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L514
	movq	-32(%rbp), %rax
	leaq	504(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	$16, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_ocb128_aad@PLT
	testl	%eax, %eax
	jne	.L515
	movl	$-1, %eax
	jmp	.L507
.L514:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L516
	movq	-32(%rbp), %rax
	leaq	504(%rax), %rdi
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rsi
	call	CRYPTO_ocb128_encrypt@PLT
	testl	%eax, %eax
	jne	.L515
	movl	$-1, %eax
	jmp	.L507
.L516:
	movq	-32(%rbp), %rax
	leaq	504(%rax), %rdi
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rsi
	call	CRYPTO_ocb128_decrypt@PLT
	testl	%eax, %eax
	jne	.L515
	movl	$-1, %eax
	jmp	.L507
.L515:
	movl	$16, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	cmpq	$0, -64(%rbp)
	je	.L512
	addq	$16, -64(%rbp)
.L512:
	movq	-80(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L517
	cmpq	$0, -64(%rbp)
	jne	.L518
	movq	-80(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	leaq	504(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_ocb128_aad@PLT
	testl	%eax, %eax
	jne	.L519
	movl	$-1, %eax
	jmp	.L507
.L518:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L520
	movq	-80(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	leaq	504(%rax), %rdi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_ocb128_encrypt@PLT
	testl	%eax, %eax
	jne	.L519
	movl	$-1, %eax
	jmp	.L507
.L520:
	movq	-80(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	leaq	504(%rax), %rdi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_ocb128_decrypt@PLT
	testl	%eax, %eax
	jne	.L519
	movl	$-1, %eax
	jmp	.L507
.L519:
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	subl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movq	-80(%rbp), %rax
	subq	-48(%rbp), %rax
	addq	%rax, -72(%rbp)
.L517:
	cmpq	$0, -48(%rbp)
	je	.L521
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.L521:
	movl	-20(%rbp), %eax
	jmp	.L507
.L509:
	movq	-32(%rbp), %rax
	movl	736(%rax), %eax
	testl	%eax, %eax
	jle	.L522
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L523
	movq	-32(%rbp), %rax
	movl	736(%rax), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	leaq	704(%rax), %rsi
	movq	-32(%rbp), %rax
	leaq	504(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	CRYPTO_ocb128_encrypt@PLT
	testl	%eax, %eax
	jne	.L524
	movl	$-1, %eax
	jmp	.L507
.L523:
	movq	-32(%rbp), %rax
	movl	736(%rax), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	leaq	704(%rax), %rsi
	movq	-32(%rbp), %rax
	leaq	504(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	CRYPTO_ocb128_decrypt@PLT
	testl	%eax, %eax
	jne	.L524
	movl	$-1, %eax
	jmp	.L507
.L524:
	movq	-32(%rbp), %rax
	movl	736(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, 736(%rax)
.L522:
	movq	-32(%rbp), %rax
	movl	740(%rax), %eax
	testl	%eax, %eax
	jle	.L525
	movq	-32(%rbp), %rax
	movl	740(%rax), %eax
	cltq
	movq	-32(%rbp), %rdx
	leaq	720(%rdx), %rsi
	movq	-32(%rbp), %rdx
	leaq	504(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	CRYPTO_ocb128_aad@PLT
	testl	%eax, %eax
	jne	.L526
	movl	$-1, %eax
	jmp	.L507
.L526:
	movq	-32(%rbp), %rax
	movl	$0, 740(%rax)
.L525:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	jne	.L527
	movq	-32(%rbp), %rax
	movl	748(%rax), %eax
	testl	%eax, %eax
	jns	.L528
	movl	$-1, %eax
	jmp	.L507
.L528:
	movq	-32(%rbp), %rax
	movl	748(%rax), %eax
	cltq
	movq	-32(%rbp), %rdx
	leaq	688(%rdx), %rsi
	movq	-32(%rbp), %rdx
	leaq	504(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	CRYPTO_ocb128_finish@PLT
	testl	%eax, %eax
	je	.L529
	movl	$-1, %eax
	jmp	.L507
.L529:
	movq	-32(%rbp), %rax
	movl	$0, 500(%rax)
	movl	-20(%rbp), %eax
	jmp	.L507
.L527:
	movq	-32(%rbp), %rax
	leaq	688(%rax), %rcx
	movq	-32(%rbp), %rax
	addq	$504, %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_ocb128_tag@PLT
	cmpl	$1, %eax
	je	.L530
	movl	$-1, %eax
	jmp	.L507
.L530:
	movq	-32(%rbp), %rax
	movl	$0, 500(%rax)
	movl	-20(%rbp), %eax
.L507:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	aes_ocb_cipher, .-aes_ocb_cipher
	.type	aes_ocb_cleanup, @function
aes_ocb_cleanup:
.LFB550:
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
	addq	$504, %rax
	movq	%rax, %rdi
	call	CRYPTO_ocb128_cleanup@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE550:
	.size	aes_ocb_cleanup, .-aes_ocb_cleanup
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_128_ocb, @object
	.size	aesni_128_ocb, 248
aesni_128_ocb:
	.long	958
	.long	16
	.long	16
	.long	12
	.quad	3214451
	.long	1
	.zero	4
	.quad	aesni_ocb_init_key
	.quad	aes_ocb_cipher
	.quad	aes_ocb_cleanup
	.long	752
	.zero	4
	.quad	0
	.quad	0
	.quad	aes_ocb_ctrl
	.quad	0
	.zero	152
	.align 32
	.type	aes_128_ocb, @object
	.size	aes_128_ocb, 248
aes_128_ocb:
	.long	958
	.long	16
	.long	16
	.long	12
	.quad	3214451
	.long	1
	.zero	4
	.quad	aes_ocb_init_key
	.quad	aes_ocb_cipher
	.quad	aes_ocb_cleanup
	.long	752
	.zero	4
	.quad	0
	.quad	0
	.quad	aes_ocb_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_128_ocb
	.type	EVP_aes_128_ocb, @function
EVP_aes_128_ocb:
.LFB551:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L534
	leaq	aesni_128_ocb(%rip), %rax
	jmp	.L536
.L534:
	leaq	aes_128_ocb(%rip), %rax
.L536:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE551:
	.size	EVP_aes_128_ocb, .-EVP_aes_128_ocb
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_192_ocb, @object
	.size	aesni_192_ocb, 248
aesni_192_ocb:
	.long	959
	.long	16
	.long	24
	.long	12
	.quad	3214451
	.long	1
	.zero	4
	.quad	aesni_ocb_init_key
	.quad	aes_ocb_cipher
	.quad	aes_ocb_cleanup
	.long	752
	.zero	4
	.quad	0
	.quad	0
	.quad	aes_ocb_ctrl
	.quad	0
	.zero	152
	.align 32
	.type	aes_192_ocb, @object
	.size	aes_192_ocb, 248
aes_192_ocb:
	.long	959
	.long	16
	.long	24
	.long	12
	.quad	3214451
	.long	1
	.zero	4
	.quad	aes_ocb_init_key
	.quad	aes_ocb_cipher
	.quad	aes_ocb_cleanup
	.long	752
	.zero	4
	.quad	0
	.quad	0
	.quad	aes_ocb_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_192_ocb
	.type	EVP_aes_192_ocb, @function
EVP_aes_192_ocb:
.LFB552:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L538
	leaq	aesni_192_ocb(%rip), %rax
	jmp	.L540
.L538:
	leaq	aes_192_ocb(%rip), %rax
.L540:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	EVP_aes_192_ocb, .-EVP_aes_192_ocb
	.section	.data.rel.ro.local
	.align 32
	.type	aesni_256_ocb, @object
	.size	aesni_256_ocb, 248
aesni_256_ocb:
	.long	960
	.long	16
	.long	32
	.long	12
	.quad	3214451
	.long	1
	.zero	4
	.quad	aesni_ocb_init_key
	.quad	aes_ocb_cipher
	.quad	aes_ocb_cleanup
	.long	752
	.zero	4
	.quad	0
	.quad	0
	.quad	aes_ocb_ctrl
	.quad	0
	.zero	152
	.align 32
	.type	aes_256_ocb, @object
	.size	aes_256_ocb, 248
aes_256_ocb:
	.long	960
	.long	16
	.long	32
	.long	12
	.quad	3214451
	.long	1
	.zero	4
	.quad	aes_ocb_init_key
	.quad	aes_ocb_cipher
	.quad	aes_ocb_cleanup
	.long	752
	.zero	4
	.quad	0
	.quad	0
	.quad	aes_ocb_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_256_ocb
	.type	EVP_aes_256_ocb, @function
EVP_aes_256_ocb:
.LFB553:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L542
	leaq	aesni_256_ocb(%rip), %rax
	jmp	.L544
.L542:
	leaq	aes_256_ocb(%rip), %rax
.L544:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	EVP_aes_256_ocb, .-EVP_aes_256_ocb
	.section	.rodata
	.align 8
	.type	__func__.14, @object
	.size	__func__.14, 15
__func__.14:
	.string	"aesni_init_key"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 19
__func__.13:
	.string	"aesni_gcm_init_key"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 19
__func__.12:
	.string	"aesni_xts_init_key"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 19
__func__.11:
	.string	"aesni_ccm_init_key"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 19
__func__.10:
	.string	"aesni_ocb_init_key"
	.align 8
	.type	__func__.9, @object
	.size	__func__.9, 13
__func__.9:
	.string	"aes_init_key"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 17
__func__.8:
	.string	"aes_gcm_init_key"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 19
__func__.7:
	.string	"aes_gcm_tls_cipher"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 17
__func__.6:
	.string	"aes_xts_init_key"
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 15
__func__.5:
	.string	"aes_xts_cipher"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 17
__func__.4:
	.string	"aes_ccm_init_key"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 18
__func__.3:
	.string	"aes_wrap_init_key"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 16
__func__.2:
	.string	"aes_wrap_cipher"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"aes_ocb_init_key"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"aes_ocb_cipher"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"cipher_aes_gcm_siv_hw.c"
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
	.type	GSWAP4, @function
GSWAP4:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$24, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-4(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-4(%rbp), %eax
	shrl	$24, %eax
	orl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	GSWAP4, .-GSWAP4
	.type	GSWAP8, @function
GSWAP8:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	%eax, %edi
	call	GSWAP4
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
	salq	$32, -8(%rbp)
	movq	-24(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %edi
	call	GSWAP4
	movl	%eax, %eax
	orq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	GSWAP8, .-GSWAP8
	.section	.rodata
.LC0:
	.string	"AES-128-ECB"
.LC1:
	.string	"AES-192-ECB"
.LC2:
	.string	"AES-256-ECB"
	.text
	.type	aes_gcm_siv_initkey, @function
aes_gcm_siv_initkey:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movl	$1, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	$32, %rax
	je	.L10
	cmpq	$32, %rax
	ja	.L31
	cmpq	$16, %rax
	je	.L12
	cmpq	$24, %rax
	je	.L13
	jmp	.L31
.L12:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -24(%rbp)
	jmp	.L14
.L13:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -24(%rbp)
	jmp	.L14
.L10:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -24(%rbp)
	nop
.L14:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L16
	call	EVP_CIPHER_CTX_new@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L32
.L16:
	movq	-32(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rsi
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex2@PLT
	testl	%eax, %eax
	je	.L33
	leaq	-80(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-32(%rbp), %rax
	leaq	168(%rax), %rcx
	leaq	-80(%rbp), %rax
	addq	$4, %rax
	movl	$12, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	$0, -16(%rbp)
	jmp	.L18
.L22:
	cmpl	$0, -36(%rbp)
	je	.L19
	movl	-4(%rbp), %eax
	movl	%eax, -80(%rbp)
	jmp	.L20
.L19:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	GSWAP4
	movl	%eax, -80(%rbp)
.L20:
	movl	$16, -84(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	-80(%rbp), %rcx
	leaq	-84(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movl	$16, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	je	.L34
	movq	-16(%rbp), %rax
	leaq	112(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, (%rdx)
	addl	$1, -4(%rbp)
	addq	$8, -16(%rbp)
.L18:
	cmpq	$15, -16(%rbp)
	jbe	.L22
	movq	$0, -16(%rbp)
	jmp	.L23
.L27:
	cmpl	$0, -36(%rbp)
	je	.L24
	movl	-4(%rbp), %eax
	movl	%eax, -80(%rbp)
	jmp	.L25
.L24:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	GSWAP4
	movl	%eax, -80(%rbp)
.L25:
	movl	$16, -84(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	-80(%rbp), %rcx
	leaq	-84(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movl	$16, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	je	.L35
	movq	-16(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, (%rdx)
	addl	$1, -4(%rbp)
	addq	$8, -16(%rbp)
.L23:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L27
	movq	-32(%rbp), %rax
	leaq	88(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rsi
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex2@PLT
	testl	%eax, %eax
	je	.L36
	movq	-32(%rbp), %rax
	movzbl	440(%rax), %edx
	andl	$-9, %edx
	movb	%dl, 440(%rax)
	movq	-32(%rbp), %rax
	movzbl	440(%rax), %edx
	andl	$-17, %edx
	movb	%dl, 440(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	$1, %eax
	jmp	.L30
.L31:
	nop
	jmp	.L15
.L32:
	nop
	jmp	.L15
.L33:
	nop
	jmp	.L15
.L34:
	nop
	jmp	.L15
.L35:
	nop
	jmp	.L15
.L36:
	nop
.L15:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	aes_gcm_siv_initkey, .-aes_gcm_siv_initkey
	.section	.rodata
	.align 8
.LC3:
	.string	"../providers/implementations/ciphers/cipher_aes_gcm_siv_hw.c"
	.text
	.type	aes_gcm_siv_aad, @function
aes_gcm_siv_aad:
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
	cmpq	$0, -56(%rbp)
	jne	.L38
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$116, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 40(%rax)
	movl	$1, %eax
	jmp	.L39
.L38:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movabsq	$68719476736, %rax
	cmpq	-16(%rbp), %rax
	jnb	.L40
	movl	$0, %eax
	jmp	.L39
.L40:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	-8(%rbp), %rsi
	movl	$126, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L41
	movl	$0, %eax
	jmp	.L39
.L41:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L42
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L42:
	movl	$1, %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	aes_gcm_siv_aad, .-aes_gcm_siv_aad
	.type	aes_gcm_siv_finish, @function
aes_gcm_siv_finish:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movzbl	440(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L44
	movq	-24(%rbp), %rax
	movzbl	440(%rax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	jmp	.L45
.L44:
	movq	-24(%rbp), %rax
	leaq	152(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	$136, %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movzbl	440(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	andl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	aes_gcm_siv_finish, .-aes_gcm_siv_finish
	.type	aes_gcm_siv_encrypt, @function
aes_gcm_siv_encrypt:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$1, -24(%rbp)
	movq	-120(%rbp), %rax
	movzbl	440(%rax), %edx
	andl	$-5, %edx
	movb	%dl, 440(%rax)
	movq	-120(%rbp), %rax
	movzbl	440(%rax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L47
	movq	-120(%rbp), %rax
	movzbl	440(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L47
	movl	$0, %eax
	jmp	.L58
.L47:
	movabsq	$68719476736, %rax
	cmpq	%rax, -16(%rbp)
	jg	.L49
	cmpq	$0, -144(%rbp)
	jne	.L50
.L49:
	movl	$0, %eax
	jmp	.L58
.L50:
	cmpl	$0, -24(%rbp)
	je	.L51
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	salq	$3, %rax
	movq	%rax, -48(%rbp)
	movq	-144(%rbp), %rax
	salq	$3, %rax
	movq	%rax, -40(%rbp)
	jmp	.L52
.L51:
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	GSWAP8
	movq	%rax, -48(%rbp)
	movq	-144(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	GSWAP8
	movq	%rax, -40(%rbp)
.L52:
	leaq	-64(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-120(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-120(%rbp), %rax
	addq	$184, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_polyval_ghash_init@PLT
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L53
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rax, %rcx
	movq	-120(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-120(%rbp), %rax
	leaq	184(%rax), %rdi
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	call	ossl_polyval_ghash_hash@PLT
.L53:
	cmpq	$15, -144(%rbp)
	jbe	.L54
	movq	-144(%rbp), %rax
	andq	$-16, %rax
	movq	%rax, %rcx
	movq	-120(%rbp), %rax
	leaq	184(%rax), %rdi
	movq	-128(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	call	ossl_polyval_ghash_hash@PLT
.L54:
	movq	-144(%rbp), %rax
	andl	$15, %eax
	testq	%rax, %rax
	je	.L55
	leaq	-96(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-144(%rbp), %rax
	andl	$15, %eax
	movq	%rax, %rdx
	movq	-144(%rbp), %rax
	andq	$-16, %rax
	movq	%rax, %rcx
	movq	-128(%rbp), %rax
	addq	%rax, %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-120(%rbp), %rax
	leaq	184(%rax), %rdi
	leaq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rsi
	call	ossl_polyval_ghash_hash@PLT
.L55:
	movq	-120(%rbp), %rax
	leaq	184(%rax), %rdi
	leaq	-48(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rsi
	call	ossl_polyval_ghash_hash@PLT
	movq	$0, -8(%rbp)
	jmp	.L56
.L57:
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-120(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$168, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	leaq	-64(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L56:
	cmpq	$11, -8(%rbp)
	jbe	.L57
	movzbl	-49(%rbp), %eax
	andl	$127, %eax
	movb	%al, -49(%rbp)
	movl	$16, -100(%rbp)
	movq	-120(%rbp), %rax
	leaq	136(%rax), %rsi
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	leaq	-64(%rbp), %rcx
	leaq	-100(%rbp), %rdx
	movl	$16, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, -20(%rbp)
	movq	-120(%rbp), %rax
	addq	$136, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movzbl	-65(%rbp), %eax
	orl	$-128, %eax
	movb	%al, -65(%rbp)
	movq	-144(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movq	-136(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-120(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	aes_gcm_siv_ctr32
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	sete	%dl
	movq	-120(%rbp), %rax
	andl	$1, %edx
	leal	0(,%rdx,4), %ecx
	movzbl	440(%rax), %edx
	andl	$-5, %edx
	orl	%ecx, %edx
	movb	%dl, 440(%rax)
	movq	-120(%rbp), %rax
	movzbl	440(%rax), %edx
	orl	$8, %edx
	movb	%dl, 440(%rax)
	cmpl	$0, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	aes_gcm_siv_encrypt, .-aes_gcm_siv_encrypt
	.type	aes_gcm_siv_decrypt, @function
aes_gcm_siv_decrypt:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$1, -24(%rbp)
	movq	-120(%rbp), %rax
	movzbl	440(%rax), %edx
	andl	$-5, %edx
	movb	%dl, 440(%rax)
	movq	-120(%rbp), %rax
	movzbl	440(%rax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L60
	movq	-120(%rbp), %rax
	movzbl	440(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L60
	movl	$0, %eax
	jmp	.L71
.L60:
	movabsq	$68719476736, %rax
	cmpq	%rax, -16(%rbp)
	jg	.L62
	cmpq	$0, -144(%rbp)
	jne	.L63
.L62:
	movl	$0, %eax
	jmp	.L71
.L63:
	movq	-120(%rbp), %rax
	addq	$152, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movzbl	-33(%rbp), %eax
	orl	$-128, %eax
	movb	%al, -33(%rbp)
	movq	-144(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movq	-136(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-120(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	aes_gcm_siv_ctr32
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, -20(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L64
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	salq	$3, %rax
	movq	%rax, -64(%rbp)
	movq	-144(%rbp), %rax
	salq	$3, %rax
	movq	%rax, -56(%rbp)
	jmp	.L65
.L64:
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	GSWAP8
	movq	%rax, -64(%rbp)
	movq	-144(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	GSWAP8
	movq	%rax, -56(%rbp)
.L65:
	leaq	-80(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-120(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-120(%rbp), %rax
	addq	$184, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_polyval_ghash_init@PLT
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L66
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rax, %rcx
	movq	-120(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-120(%rbp), %rax
	leaq	184(%rax), %rdi
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	call	ossl_polyval_ghash_hash@PLT
.L66:
	cmpq	$15, -144(%rbp)
	jbe	.L67
	movq	-144(%rbp), %rax
	andq	$-16, %rax
	movq	%rax, %rcx
	movq	-120(%rbp), %rax
	leaq	184(%rax), %rdi
	movq	-136(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	call	ossl_polyval_ghash_hash@PLT
.L67:
	movq	-144(%rbp), %rax
	andl	$15, %eax
	testq	%rax, %rax
	je	.L68
	movq	$0, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-144(%rbp), %rax
	andl	$15, %eax
	movq	%rax, %rdx
	movq	-144(%rbp), %rax
	andq	$-16, %rax
	movq	%rax, %rcx
	movq	-136(%rbp), %rax
	addq	%rax, %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-120(%rbp), %rax
	leaq	184(%rax), %rdi
	leaq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rsi
	call	ossl_polyval_ghash_hash@PLT
.L68:
	movq	-120(%rbp), %rax
	leaq	184(%rax), %rdi
	leaq	-64(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rsi
	call	ossl_polyval_ghash_hash@PLT
	movq	$0, -8(%rbp)
	jmp	.L69
.L70:
	leaq	-80(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-120(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$168, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	leaq	-80(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L69:
	cmpq	$11, -8(%rbp)
	jbe	.L70
	movzbl	-65(%rbp), %eax
	andl	$127, %eax
	movb	%al, -65(%rbp)
	movl	$16, -100(%rbp)
	movq	-120(%rbp), %rax
	leaq	136(%rax), %rsi
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	leaq	-80(%rbp), %rcx
	leaq	-100(%rbp), %rdx
	movl	$16, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	sete	%dl
	movq	-120(%rbp), %rax
	andl	$1, %edx
	leal	0(,%rdx,4), %ecx
	movzbl	440(%rax), %edx
	andl	$-5, %edx
	orl	%ecx, %edx
	movb	%dl, 440(%rax)
	movq	-120(%rbp), %rax
	movzbl	440(%rax), %edx
	orl	$16, %edx
	movb	%dl, 440(%rax)
	cmpl	$0, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	aes_gcm_siv_decrypt, .-aes_gcm_siv_decrypt
	.type	aes_gcm_siv_cipher, @function
aes_gcm_siv_cipher:
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
	movq	%rax, -8(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L73
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	aes_gcm_siv_finish
	jmp	.L74
.L73:
	cmpq	$0, -32(%rbp)
	jne	.L75
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	aes_gcm_siv_aad
	jmp	.L74
.L75:
	movq	-8(%rbp), %rax
	movzbl	440(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L76
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	aes_gcm_siv_encrypt
	jmp	.L74
.L76:
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	aes_gcm_siv_decrypt
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	aes_gcm_siv_cipher, .-aes_gcm_siv_cipher
	.type	aes_gcm_siv_clean_ctx, @function
aes_gcm_siv_clean_ctx:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	aes_gcm_siv_clean_ctx, .-aes_gcm_siv_clean_ctx
	.type	aes_gcm_siv_dup_ctx, @function
aes_gcm_siv_dup_ctx:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L79
	call	EVP_CIPHER_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L83
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_copy@PLT
	testl	%eax, %eax
	je	.L84
.L79:
	movl	$1, %eax
	jmp	.L82
.L83:
	nop
	jmp	.L81
.L84:
	nop
.L81:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	aes_gcm_siv_dup_ctx, .-aes_gcm_siv_dup_ctx
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	aes_gcm_siv_hw, @object
	.size	aes_gcm_siv_hw, 32
aes_gcm_siv_hw:
	.quad	aes_gcm_siv_initkey
	.quad	aes_gcm_siv_cipher
	.quad	aes_gcm_siv_dup_ctx
	.quad	aes_gcm_siv_clean_ctx
	.text
	.globl	ossl_prov_cipher_hw_aes_gcm_siv
	.type	ossl_prov_cipher_hw_aes_gcm_siv, @function
ossl_prov_cipher_hw_aes_gcm_siv:
.LFB412:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	aes_gcm_siv_hw(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	ossl_prov_cipher_hw_aes_gcm_siv, .-ossl_prov_cipher_hw_aes_gcm_siv
	.type	aes_gcm_siv_ctr32, @function
aes_gcm_siv_ctr32:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movl	$0, -32(%rbp)
	movl	$1, -36(%rbp)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L88
	movl	-96(%rbp), %eax
	movl	%eax, %edi
	call	GSWAP4
	movl	%eax, -28(%rbp)
.L88:
	movq	$0, -8(%rbp)
	jmp	.L89
.L95:
	movl	$16, -68(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	leaq	-96(%rbp), %rcx
	leaq	-68(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movl	$16, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, -32(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L90
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.L91
.L90:
	addl	$1, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	GSWAP4
	movl	%eax, -96(%rbp)
.L91:
	movq	-136(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$16, -24(%rbp)
	jbe	.L92
	movq	$16, -24(%rbp)
.L92:
	movq	$0, -16(%rbp)
	jmp	.L93
.L94:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addq	$1, -16(%rbp)
.L93:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L94
	addq	$16, -8(%rbp)
.L89:
	movq	-8(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.L95
	cmpl	$0, -32(%rbp)
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	aes_gcm_siv_ctr32, .-aes_gcm_siv_ctr32
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"siv128.c"
	.text
	.type	rotl8, @function
rotl8:
.LFB320:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	roll	$8, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	rotl8, .-rotl8
	.type	rotr8, @function
rotr8:
.LFB321:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	rorl	$8, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	rotr8, .-rotr8
	.type	byteswap8, @function
byteswap8:
.LFB322:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, -12(%rbp)
	movq	-32(%rbp), %rax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	rotl8
	andl	$16711935, %eax
	movl	%eax, %ebx
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	rotr8
	andl	$-16711936, %eax
	orl	%ebx, %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	rotl8
	andl	$16711935, %eax
	movl	%eax, %ebx
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	rotr8
	andl	$-16711936, %eax
	orl	%ebx, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	salq	$32, %rax
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	orq	%rdx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE322:
	.size	byteswap8, .-byteswap8
	.type	siv128_getword, @function
siv128_getword:
.LFB323:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L8
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	byteswap8
	jmp	.L9
.L8:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	siv128_getword, .-siv128_getword
	.type	siv128_putword, @function
siv128_putword:
.LFB324:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$1, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L11
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	byteswap8
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rax, (%rdx,%rcx,8)
	jmp	.L13
.L11:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rcx, (%rax,%rdx,8)
.L13:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE324:
	.size	siv128_putword, .-siv128_putword
	.type	siv128_xorblock, @function
siv128_xorblock:
.LFB325:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	xorq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	xorq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE325:
	.size	siv128_xorblock, .-siv128_xorblock
	.type	siv128_dbl, @function
siv128_dbl:
.LFB326:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	siv128_getword
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	siv128_getword
	movq	%rax, -16(%rbp)
	movabsq	$-9223372036854775808, %rax
	andq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$-9223372036854775808, %rax
	andq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	sarq	$63, %rax
	andl	$135, %eax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	shrq	$63, %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, %rax
	orq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	siv128_putword
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	siv128_putword
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE326:
	.size	siv128_dbl, .-siv128_dbl
	.type	siv128_do_s2v_p, @function
siv128_do_s2v_p:
.LFB327:
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
	movq	$16, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_dup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L17
	movl	$0, %eax
	jmp	.L25
.L17:
	cmpq	$15, -80(%rbp)
	jbe	.L19
	movq	-80(%rbp), %rax
	leaq	-16(%rax), %rdx
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L26
	movq	-80(%rbp), %rax
	leaq	-16(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	siv128_xorblock
	leaq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	jne	.L22
	jmp	.L21
.L19:
	leaq	-32(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	leaq	-32(%rbp), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movb	$-128, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	siv128_dbl
	movq	-56(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	siv128_xorblock
	leaq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L27
.L22:
	movq	-64(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	je	.L28
	movq	-40(%rbp), %rax
	cmpq	$16, %rax
	jne	.L28
	movl	$1, -4(%rbp)
	jmp	.L21
.L26:
	nop
	jmp	.L21
.L27:
	nop
	jmp	.L21
.L28:
	nop
.L21:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movl	-4(%rbp), %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE327:
	.size	siv128_do_s2v_p, .-siv128_do_s2v_p
	.type	siv128_do_encrypt, @function
siv128_do_encrypt:
.LFB328:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-48(%rbp), %rax
	movl	%eax, -4(%rbp)
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L30
	movl	$0, %eax
	jmp	.L32
.L30:
	movl	-4(%rbp), %edi
	movq	-40(%rbp), %rcx
	leaq	-4(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE328:
	.size	siv128_do_encrypt, .-siv128_do_encrypt
	.section	.rodata
.LC0:
	.string	"../crypto/modes/siv128.c"
	.text
	.globl	ossl_siv128_new
	.type	ossl_siv128_new, @function
ossl_siv128_new:
.LFB329:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$150, %edx
	movq	%rax, %rsi
	movl	$64, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L34
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-64(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_siv128_init@PLT
	addq	$16, %rsp
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L35
	movq	-8(%rbp), %rax
	jmp	.L36
.L35:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$154, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L34:
	movl	$0, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE329:
	.size	ossl_siv128_new, .-ossl_siv128_new
	.section	.rodata
.LC1:
	.string	"cipher"
.LC2:
	.string	"key"
.LC3:
	.string	"CMAC"
	.text
	.globl	ossl_siv128_init
	.type	ossl_siv128_init, @function
ossl_siv128_init:
.LFB330:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movl	%edx, -164(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%r8, -184(%rbp)
	movq	%r9, -192(%rbp)
	movq	$16, -24(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.L38
	movl	$0, %eax
	jmp	.L44
.L38:
	movq	-152(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-152(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-152(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	movq	-152(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-152(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-152(%rbp), %rax
	movq	$0, 48(%rax)
	cmpq	$0, -160(%rbp)
	je	.L40
	cmpq	$0, -176(%rbp)
	je	.L40
	cmpq	$0, -184(%rbp)
	jne	.L41
.L40:
	movl	$0, %eax
	jmp	.L44
.L41:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, -16(%rbp)
	leaq	-240(%rbp), %rax
	movq	-16(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	-164(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-240(%rbp), %rax
	movq	-160(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -32(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	-152(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	16(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	-192(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_fetch@PLT
	movq	-152(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-152(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-152(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_new@PLT
	movq	-152(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-152(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-152(%rbp), %rax
	movq	48(%rax), %rax
	leaq	-144(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_CTX_set_params@PLT
	testl	%eax, %eax
	je	.L42
	movl	-164(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	movq	-184(%rbp), %rsi
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	je	.L42
	movq	-152(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L42
	leaq	zero.0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L42
	movq	-152(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	jne	.L43
.L42:
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-152(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-152(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-152(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-152(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	movq	-152(%rbp), %rax
	movq	$0, 40(%rax)
	movl	$0, %eax
	jmp	.L44
.L43:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-152(%rbp), %rax
	movl	$-1, 56(%rax)
	movq	-152(%rbp), %rax
	movl	$1, 60(%rax)
	movl	$1, %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE330:
	.size	ossl_siv128_init, .-ossl_siv128_init
	.globl	ossl_siv128_copy_ctx
	.type	ossl_siv128_copy_ctx, @function
ossl_siv128_copy_ctx:
.LFB331:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L46
	call	EVP_CIPHER_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_copy@PLT
	testl	%eax, %eax
	jne	.L48
	movl	$0, %eax
	jmp	.L47
.L48:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L49
	movl	$0, %eax
	jmp	.L47
.L49:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L50
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_up_ref@PLT
.L50:
	movl	$1, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE331:
	.size	ossl_siv128_copy_ctx, .-ossl_siv128_copy_ctx
	.globl	ossl_siv128_aad
	.type	ossl_siv128_aad, @function
ossl_siv128_aad:
.LFB332:
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
	movq	$16, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	siv128_dbl
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L52
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L52
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	je	.L52
	movq	-40(%rbp), %rax
	cmpq	$16, %rax
	je	.L53
.L52:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movl	$0, %eax
	jmp	.L55
.L53:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-56(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	siv128_xorblock
	movl	$1, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE332:
	.size	ossl_siv128_aad, .-ossl_siv128_aad
	.globl	ossl_siv128_encrypt
	.type	ossl_siv128_encrypt, @function
ossl_siv128_encrypt:
.LFB333:
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
	movl	60(%rax), %eax
	testl	%eax, %eax
	jne	.L57
	movl	$0, %eax
	jmp	.L61
.L57:
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	siv128_do_s2v_p
	testl	%eax, %eax
	jne	.L59
	movl	$0, %eax
	jmp	.L61
.L59:
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movzbl	-8(%rbp), %eax
	andl	$127, %eax
	movb	%al, -8(%rbp)
	movzbl	-4(%rbp), %eax
	andl	$127, %eax
	movb	%al, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	-16(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	siv128_do_encrypt
	testl	%eax, %eax
	jne	.L60
	movl	$0, %eax
	jmp	.L61
.L60:
	movq	-24(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-48(%rbp), %rax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE333:
	.size	ossl_siv128_encrypt, .-ossl_siv128_encrypt
	.globl	ossl_siv128_decrypt
	.type	ossl_siv128_decrypt, @function
ossl_siv128_decrypt:
.LFB334:
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
	movq	-56(%rbp), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	jne	.L63
	movl	$0, %eax
	jmp	.L70
.L63:
	movq	-56(%rbp), %rax
	movl	60(%rax), %eax
	leal	-1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movzbl	-40(%rbp), %eax
	andl	$127, %eax
	movb	%al, -40(%rbp)
	movzbl	-36(%rbp), %eax
	andl	$127, %eax
	movb	%al, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	leaq	-48(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	siv128_do_encrypt
	testl	%eax, %eax
	je	.L65
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	siv128_do_s2v_p
	testl	%eax, %eax
	jne	.L66
.L65:
	movl	$0, %eax
	jmp	.L70
.L66:
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L67
.L68:
	movl	-4(%rbp), %eax
	cltq
	movzbl	-32(%rbp,%rax), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -32(%rbp,%rax)
	addl	$1, -4(%rbp)
.L67:
	cmpl	$15, -4(%rbp)
	jle	.L68
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	orq	%rdx, %rax
	testq	%rax, %rax
	je	.L69
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$0, %eax
	jmp	.L70
.L69:
	movq	-56(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-80(%rbp), %rax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE334:
	.size	ossl_siv128_decrypt, .-ossl_siv128_decrypt
	.globl	ossl_siv128_finish
	.type	ossl_siv128_finish, @function
ossl_siv128_finish:
.LFB335:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE335:
	.size	ossl_siv128_finish, .-ossl_siv128_finish
	.globl	ossl_siv128_set_tag
	.type	ossl_siv128_set_tag, @function
ossl_siv128_set_tag:
.LFB336:
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
	cmpq	$16, -24(%rbp)
	je	.L74
	movl	$0, %eax
	jmp	.L75
.L74:
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE336:
	.size	ossl_siv128_set_tag, .-ossl_siv128_set_tag
	.globl	ossl_siv128_get_tag
	.type	ossl_siv128_get_tag, @function
ossl_siv128_get_tag:
.LFB337:
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
	cmpq	$16, -24(%rbp)
	je	.L77
	movl	$0, %eax
	jmp	.L78
.L77:
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE337:
	.size	ossl_siv128_get_tag, .-ossl_siv128_get_tag
	.globl	ossl_siv128_cleanup
	.type	ossl_siv128_cleanup, @function
ossl_siv128_cleanup:
.LFB338:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L80
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
	movl	$-1, 56(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 60(%rax)
.L80:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE338:
	.size	ossl_siv128_cleanup, .-ossl_siv128_cleanup
	.globl	ossl_siv128_speed
	.type	ossl_siv128_speed, @function
ossl_siv128_speed:
.LFB339:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$1, -12(%rbp)
	jne	.L83
	movl	$-1, %edx
	jmp	.L84
.L83:
	movl	$1, %edx
.L84:
	movq	-8(%rbp), %rax
	movl	%edx, 60(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE339:
	.size	ossl_siv128_speed, .-ossl_siv128_speed
	.section	.rodata
	.align 16
	.type	zero.0, @object
	.size	zero.0, 16
zero.0:
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"cipher_aes_wrp.c"
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
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/ciphers/cipher_aes_wrp.c"
	.text
	.type	aes_wrap_newctx, @function
aes_wrap_newctx:
.LFB402:
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
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	leaq	.LC0(%rip), %rax
	movl	$59, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L8
	movq	-56(%rbp), %r8
	movl	-44(%rbp), %edi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	pushq	$0
	pushq	$0
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	$4, %rax
	sete	%dl
	movq	-16(%rbp), %rax
	movl	%edx, %ecx
	andl	$1, %ecx
	movzbl	108(%rax), %edx
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, 108(%rax)
.L8:
	movq	-8(%rbp), %rax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	aes_wrap_newctx, .-aes_wrap_newctx
	.type	aes_wrap_dupctx, @function
aes_wrap_dupctx:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	leaq	.LC0(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$76, %ecx
	movl	$448, %esi
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L12
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L12
	movq	-8(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	je	.L12
	movq	-8(%rbp), %rax
	movq	136(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$79, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 120(%rdx)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L12
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$82, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -8(%rbp)
.L12:
	movq	-8(%rbp), %rax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	aes_wrap_dupctx, .-aes_wrap_dupctx
	.type	aes_wrap_freectx, @function
aes_wrap_freectx:
.LFB404:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cipher_generic_reset_ctx@PLT
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$94, %ecx
	movl	$448, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	aes_wrap_freectx, .-aes_wrap_freectx
	.type	aes_wrap_init, @function
aes_wrap_init:
.LFB405:
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
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movl	16(%rbp), %eax
	andl	$1, %eax
	movq	-16(%rbp), %rdx
	andl	$1, %eax
	leal	(%rax,%rax), %ecx
	movzbl	108(%rdx), %eax
	andl	$-3, %eax
	orl	%ecx, %eax
	movb	%al, 108(%rdx)
	movq	-16(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L17
	cmpl	$0, 16(%rbp)
	je	.L18
	movq	CRYPTO_128_wrap_pad@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	jmp	.L19
.L18:
	movq	CRYPTO_128_unwrap_pad@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
.L19:
	movq	-24(%rbp), %rax
	movq	%rdx, 440(%rax)
	jmp	.L20
.L17:
	cmpl	$0, 16(%rbp)
	je	.L21
	movq	CRYPTO_128_wrap@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	jmp	.L22
.L21:
	movq	CRYPTO_128_unwrap@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
.L22:
	movq	-24(%rbp), %rax
	movq	%rdx, 440(%rax)
.L20:
	cmpq	$0, -64(%rbp)
	je	.L23
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initiv@PLT
	testl	%eax, %eax
	jne	.L23
	movl	$0, %eax
	jmp	.L16
.L23:
	cmpq	$0, -48(%rbp)
	je	.L24
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	%rax, -56(%rbp)
	je	.L25
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$121, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L16
.L25:
	movq	-16(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L26
	movq	-16(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.L27
.L26:
	movq	-16(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	shrb	%al
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.L27:
	cmpl	$0, -4(%rbp)
	je	.L28
	movq	-24(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-56(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_encrypt_key@PLT
	movq	-16(%rbp), %rax
	movq	AES_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 48(%rax)
	jmp	.L24
.L28:
	movq	-24(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-56(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_decrypt_key@PLT
	movq	-16(%rbp), %rax
	movq	AES_decrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 48(%rax)
.L24:
	movq	-80(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	aes_wrap_set_ctx_params
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	aes_wrap_init, .-aes_wrap_init
	.type	aes_wrap_einit, @function
aes_wrap_einit:
.LFB406:
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
	pushq	$1
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	aes_wrap_init
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	aes_wrap_einit, .-aes_wrap_einit
	.type	aes_wrap_dinit, @function
aes_wrap_dinit:
.LFB407:
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
	pushq	$0
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	aes_wrap_init
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	aes_wrap_dinit, .-aes_wrap_dinit
	.type	aes_wrap_cipher_internal, @function
aes_wrap_cipher_internal:
.LFB408:
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
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
	cmpq	$0, -64(%rbp)
	jne	.L36
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$176, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$230, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L35
.L36:
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L37
	cmpq	$15, -64(%rbp)
	jbe	.L38
	movq	-64(%rbp), %rax
	andl	$7, %eax
	testq	%rax, %rax
	je	.L37
.L38:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$182, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$230, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L35
.L37:
	cmpl	$0, -20(%rbp)
	jne	.L39
	movq	-64(%rbp), %rax
	andl	$7, %eax
	testq	%rax, %rax
	je	.L39
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$188, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$230, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L35
.L39:
	cmpq	$0, -48(%rbp)
	jne	.L40
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L41
	cmpl	$0, -20(%rbp)
	je	.L42
	movq	-64(%rbp), %rax
	addq	$7, %rax
	andq	$-8, %rax
	movq	%rax, -64(%rbp)
.L42:
	movq	-64(%rbp), %rax
	addl	$8, %eax
	jmp	.L35
.L41:
	movq	-64(%rbp), %rax
	subl	$8, %eax
	jmp	.L35
.L40:
	movq	-16(%rbp), %rax
	movq	440(%rax), %r10
	movq	-8(%rbp), %rax
	movq	48(%rax), %r8
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L43
	movq	-8(%rbp), %rax
	addq	$32, %rax
	jmp	.L44
.L43:
	movl	$0, %eax
.L44:
	movq	-16(%rbp), %rdx
	leaq	192(%rdx), %rdi
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%r8, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	*%r10
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L45
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$212, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L35
.L45:
	cmpq	$2147483647, -32(%rbp)
	jbe	.L46
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$216, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$217, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L35
.L46:
	movq	-32(%rbp), %rax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	aes_wrap_cipher_internal, .-aes_wrap_cipher_internal
	.type	aes_wrap_final, @function
aes_wrap_final:
.LFB409:
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
	movq	%rcx, -32(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L48
	movl	$0, %eax
	jmp	.L49
.L48:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	aes_wrap_final, .-aes_wrap_final
	.type	aes_wrap_cipher, @function
aes_wrap_cipher:
.LFB410:
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
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L51
	movl	$0, %eax
	jmp	.L52
.L51:
	cmpq	$0, -64(%rbp)
	jne	.L53
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L52
.L53:
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L54
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$248, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L52
.L54:
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	aes_wrap_cipher_internal
	cltq
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L55
	movl	$0, %eax
	jmp	.L52
.L55:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	aes_wrap_cipher, .-aes_wrap_cipher
	.section	.rodata
.LC1:
	.string	"keylen"
	.text
	.type	aes_wrap_set_ctx_params, @function
aes_wrap_set_ctx_params:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L57
	movl	$1, %eax
	jmp	.L61
.L57:
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L59
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L60
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$272, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L61
.L60:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L59
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$276, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L61
.L59:
	movl	$1, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	aes_wrap_set_ctx_params, .-aes_wrap_set_ctx_params
	.type	aes_256_wrap_get_params, @function
aes_256_wrap_get_params:
.LFB412:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$64, %r9d
	movl	$64, %r8d
	movl	$256, %ecx
	movl	$2, %edx
	movl	$65538, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	aes_256_wrap_get_params, .-aes_256_wrap_get_params
	.type	aes_256wrap_newctx, @function
aes_256wrap_newctx:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$2, %r8d
	movl	$65538, %ecx
	movl	$64, %edx
	movl	$64, %esi
	movl	$256, %edi
	call	aes_wrap_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	aes_256wrap_newctx, .-aes_256wrap_newctx
	.globl	ossl_aes256wrap_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_aes256wrap_functions, @object
	.size	ossl_aes256wrap_functions, 224
ossl_aes256wrap_functions:
	.long	1
	.zero	4
	.quad	aes_256wrap_newctx
	.long	2
	.zero	4
	.quad	aes_wrap_einit
	.long	3
	.zero	4
	.quad	aes_wrap_dinit
	.long	4
	.zero	4
	.quad	aes_wrap_cipher
	.long	5
	.zero	4
	.quad	aes_wrap_final
	.long	7
	.zero	4
	.quad	aes_wrap_freectx
	.long	8
	.zero	4
	.quad	aes_wrap_dupctx
	.long	9
	.zero	4
	.quad	aes_256_wrap_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	aes_wrap_set_ctx_params
	.long	13
	.zero	4
	.quad	ossl_cipher_generic_gettable_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_generic_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_192_wrap_get_params, @function
aes_192_wrap_get_params:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$64, %r9d
	movl	$64, %r8d
	movl	$192, %ecx
	movl	$2, %edx
	movl	$65538, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	aes_192_wrap_get_params, .-aes_192_wrap_get_params
	.type	aes_192wrap_newctx, @function
aes_192wrap_newctx:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$2, %r8d
	movl	$65538, %ecx
	movl	$64, %edx
	movl	$64, %esi
	movl	$192, %edi
	call	aes_wrap_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	aes_192wrap_newctx, .-aes_192wrap_newctx
	.globl	ossl_aes192wrap_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes192wrap_functions, @object
	.size	ossl_aes192wrap_functions, 224
ossl_aes192wrap_functions:
	.long	1
	.zero	4
	.quad	aes_192wrap_newctx
	.long	2
	.zero	4
	.quad	aes_wrap_einit
	.long	3
	.zero	4
	.quad	aes_wrap_dinit
	.long	4
	.zero	4
	.quad	aes_wrap_cipher
	.long	5
	.zero	4
	.quad	aes_wrap_final
	.long	7
	.zero	4
	.quad	aes_wrap_freectx
	.long	8
	.zero	4
	.quad	aes_wrap_dupctx
	.long	9
	.zero	4
	.quad	aes_192_wrap_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	aes_wrap_set_ctx_params
	.long	13
	.zero	4
	.quad	ossl_cipher_generic_gettable_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_generic_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_128_wrap_get_params, @function
aes_128_wrap_get_params:
.LFB416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$64, %r9d
	movl	$64, %r8d
	movl	$128, %ecx
	movl	$2, %edx
	movl	$65538, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	aes_128_wrap_get_params, .-aes_128_wrap_get_params
	.type	aes_128wrap_newctx, @function
aes_128wrap_newctx:
.LFB417:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$2, %r8d
	movl	$65538, %ecx
	movl	$64, %edx
	movl	$64, %esi
	movl	$128, %edi
	call	aes_wrap_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	aes_128wrap_newctx, .-aes_128wrap_newctx
	.globl	ossl_aes128wrap_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes128wrap_functions, @object
	.size	ossl_aes128wrap_functions, 224
ossl_aes128wrap_functions:
	.long	1
	.zero	4
	.quad	aes_128wrap_newctx
	.long	2
	.zero	4
	.quad	aes_wrap_einit
	.long	3
	.zero	4
	.quad	aes_wrap_dinit
	.long	4
	.zero	4
	.quad	aes_wrap_cipher
	.long	5
	.zero	4
	.quad	aes_wrap_final
	.long	7
	.zero	4
	.quad	aes_wrap_freectx
	.long	8
	.zero	4
	.quad	aes_wrap_dupctx
	.long	9
	.zero	4
	.quad	aes_128_wrap_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	aes_wrap_set_ctx_params
	.long	13
	.zero	4
	.quad	ossl_cipher_generic_gettable_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_generic_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_256_wrappad_get_params, @function
aes_256_wrappad_get_params:
.LFB418:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$32, %r9d
	movl	$64, %r8d
	movl	$256, %ecx
	movl	$2, %edx
	movl	$65538, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	aes_256_wrappad_get_params, .-aes_256_wrappad_get_params
	.type	aes_256wrappad_newctx, @function
aes_256wrappad_newctx:
.LFB419:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$2, %r8d
	movl	$65538, %ecx
	movl	$32, %edx
	movl	$64, %esi
	movl	$256, %edi
	call	aes_wrap_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	aes_256wrappad_newctx, .-aes_256wrappad_newctx
	.globl	ossl_aes256wrappad_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes256wrappad_functions, @object
	.size	ossl_aes256wrappad_functions, 224
ossl_aes256wrappad_functions:
	.long	1
	.zero	4
	.quad	aes_256wrappad_newctx
	.long	2
	.zero	4
	.quad	aes_wrap_einit
	.long	3
	.zero	4
	.quad	aes_wrap_dinit
	.long	4
	.zero	4
	.quad	aes_wrap_cipher
	.long	5
	.zero	4
	.quad	aes_wrap_final
	.long	7
	.zero	4
	.quad	aes_wrap_freectx
	.long	8
	.zero	4
	.quad	aes_wrap_dupctx
	.long	9
	.zero	4
	.quad	aes_256_wrappad_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	aes_wrap_set_ctx_params
	.long	13
	.zero	4
	.quad	ossl_cipher_generic_gettable_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_generic_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_192_wrappad_get_params, @function
aes_192_wrappad_get_params:
.LFB420:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$32, %r9d
	movl	$64, %r8d
	movl	$192, %ecx
	movl	$2, %edx
	movl	$65538, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	aes_192_wrappad_get_params, .-aes_192_wrappad_get_params
	.type	aes_192wrappad_newctx, @function
aes_192wrappad_newctx:
.LFB421:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$2, %r8d
	movl	$65538, %ecx
	movl	$32, %edx
	movl	$64, %esi
	movl	$192, %edi
	call	aes_wrap_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	aes_192wrappad_newctx, .-aes_192wrappad_newctx
	.globl	ossl_aes192wrappad_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes192wrappad_functions, @object
	.size	ossl_aes192wrappad_functions, 224
ossl_aes192wrappad_functions:
	.long	1
	.zero	4
	.quad	aes_192wrappad_newctx
	.long	2
	.zero	4
	.quad	aes_wrap_einit
	.long	3
	.zero	4
	.quad	aes_wrap_dinit
	.long	4
	.zero	4
	.quad	aes_wrap_cipher
	.long	5
	.zero	4
	.quad	aes_wrap_final
	.long	7
	.zero	4
	.quad	aes_wrap_freectx
	.long	8
	.zero	4
	.quad	aes_wrap_dupctx
	.long	9
	.zero	4
	.quad	aes_192_wrappad_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	aes_wrap_set_ctx_params
	.long	13
	.zero	4
	.quad	ossl_cipher_generic_gettable_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_generic_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_128_wrappad_get_params, @function
aes_128_wrappad_get_params:
.LFB422:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$32, %r9d
	movl	$64, %r8d
	movl	$128, %ecx
	movl	$2, %edx
	movl	$65538, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	aes_128_wrappad_get_params, .-aes_128_wrappad_get_params
	.type	aes_128wrappad_newctx, @function
aes_128wrappad_newctx:
.LFB423:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$2, %r8d
	movl	$65538, %ecx
	movl	$32, %edx
	movl	$64, %esi
	movl	$128, %edi
	call	aes_wrap_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE423:
	.size	aes_128wrappad_newctx, .-aes_128wrappad_newctx
	.globl	ossl_aes128wrappad_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes128wrappad_functions, @object
	.size	ossl_aes128wrappad_functions, 224
ossl_aes128wrappad_functions:
	.long	1
	.zero	4
	.quad	aes_128wrappad_newctx
	.long	2
	.zero	4
	.quad	aes_wrap_einit
	.long	3
	.zero	4
	.quad	aes_wrap_dinit
	.long	4
	.zero	4
	.quad	aes_wrap_cipher
	.long	5
	.zero	4
	.quad	aes_wrap_final
	.long	7
	.zero	4
	.quad	aes_wrap_freectx
	.long	8
	.zero	4
	.quad	aes_wrap_dupctx
	.long	9
	.zero	4
	.quad	aes_128_wrappad_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	aes_wrap_set_ctx_params
	.long	13
	.zero	4
	.quad	ossl_cipher_generic_gettable_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_generic_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_256_wrapinv_get_params, @function
aes_256_wrapinv_get_params:
.LFB424:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$64, %r9d
	movl	$64, %r8d
	movl	$256, %ecx
	movl	$514, %edx
	movl	$65538, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE424:
	.size	aes_256_wrapinv_get_params, .-aes_256_wrapinv_get_params
	.type	aes_256wrapinv_newctx, @function
aes_256wrapinv_newctx:
.LFB425:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$514, %r8d
	movl	$65538, %ecx
	movl	$64, %edx
	movl	$64, %esi
	movl	$256, %edi
	call	aes_wrap_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE425:
	.size	aes_256wrapinv_newctx, .-aes_256wrapinv_newctx
	.globl	ossl_aes256wrapinv_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes256wrapinv_functions, @object
	.size	ossl_aes256wrapinv_functions, 224
ossl_aes256wrapinv_functions:
	.long	1
	.zero	4
	.quad	aes_256wrapinv_newctx
	.long	2
	.zero	4
	.quad	aes_wrap_einit
	.long	3
	.zero	4
	.quad	aes_wrap_dinit
	.long	4
	.zero	4
	.quad	aes_wrap_cipher
	.long	5
	.zero	4
	.quad	aes_wrap_final
	.long	7
	.zero	4
	.quad	aes_wrap_freectx
	.long	8
	.zero	4
	.quad	aes_wrap_dupctx
	.long	9
	.zero	4
	.quad	aes_256_wrapinv_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	aes_wrap_set_ctx_params
	.long	13
	.zero	4
	.quad	ossl_cipher_generic_gettable_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_generic_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_192_wrapinv_get_params, @function
aes_192_wrapinv_get_params:
.LFB426:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$64, %r9d
	movl	$64, %r8d
	movl	$192, %ecx
	movl	$514, %edx
	movl	$65538, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE426:
	.size	aes_192_wrapinv_get_params, .-aes_192_wrapinv_get_params
	.type	aes_192wrapinv_newctx, @function
aes_192wrapinv_newctx:
.LFB427:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$514, %r8d
	movl	$65538, %ecx
	movl	$64, %edx
	movl	$64, %esi
	movl	$192, %edi
	call	aes_wrap_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE427:
	.size	aes_192wrapinv_newctx, .-aes_192wrapinv_newctx
	.globl	ossl_aes192wrapinv_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes192wrapinv_functions, @object
	.size	ossl_aes192wrapinv_functions, 224
ossl_aes192wrapinv_functions:
	.long	1
	.zero	4
	.quad	aes_192wrapinv_newctx
	.long	2
	.zero	4
	.quad	aes_wrap_einit
	.long	3
	.zero	4
	.quad	aes_wrap_dinit
	.long	4
	.zero	4
	.quad	aes_wrap_cipher
	.long	5
	.zero	4
	.quad	aes_wrap_final
	.long	7
	.zero	4
	.quad	aes_wrap_freectx
	.long	8
	.zero	4
	.quad	aes_wrap_dupctx
	.long	9
	.zero	4
	.quad	aes_192_wrapinv_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	aes_wrap_set_ctx_params
	.long	13
	.zero	4
	.quad	ossl_cipher_generic_gettable_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_generic_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_128_wrapinv_get_params, @function
aes_128_wrapinv_get_params:
.LFB428:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$64, %r9d
	movl	$64, %r8d
	movl	$128, %ecx
	movl	$514, %edx
	movl	$65538, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE428:
	.size	aes_128_wrapinv_get_params, .-aes_128_wrapinv_get_params
	.type	aes_128wrapinv_newctx, @function
aes_128wrapinv_newctx:
.LFB429:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$514, %r8d
	movl	$65538, %ecx
	movl	$64, %edx
	movl	$64, %esi
	movl	$128, %edi
	call	aes_wrap_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	aes_128wrapinv_newctx, .-aes_128wrapinv_newctx
	.globl	ossl_aes128wrapinv_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes128wrapinv_functions, @object
	.size	ossl_aes128wrapinv_functions, 224
ossl_aes128wrapinv_functions:
	.long	1
	.zero	4
	.quad	aes_128wrapinv_newctx
	.long	2
	.zero	4
	.quad	aes_wrap_einit
	.long	3
	.zero	4
	.quad	aes_wrap_dinit
	.long	4
	.zero	4
	.quad	aes_wrap_cipher
	.long	5
	.zero	4
	.quad	aes_wrap_final
	.long	7
	.zero	4
	.quad	aes_wrap_freectx
	.long	8
	.zero	4
	.quad	aes_wrap_dupctx
	.long	9
	.zero	4
	.quad	aes_128_wrapinv_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	aes_wrap_set_ctx_params
	.long	13
	.zero	4
	.quad	ossl_cipher_generic_gettable_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_generic_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_256_wrappadinv_get_params, @function
aes_256_wrappadinv_get_params:
.LFB430:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$32, %r9d
	movl	$64, %r8d
	movl	$256, %ecx
	movl	$514, %edx
	movl	$65538, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE430:
	.size	aes_256_wrappadinv_get_params, .-aes_256_wrappadinv_get_params
	.type	aes_256wrappadinv_newctx, @function
aes_256wrappadinv_newctx:
.LFB431:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$514, %r8d
	movl	$65538, %ecx
	movl	$32, %edx
	movl	$64, %esi
	movl	$256, %edi
	call	aes_wrap_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE431:
	.size	aes_256wrappadinv_newctx, .-aes_256wrappadinv_newctx
	.globl	ossl_aes256wrappadinv_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes256wrappadinv_functions, @object
	.size	ossl_aes256wrappadinv_functions, 224
ossl_aes256wrappadinv_functions:
	.long	1
	.zero	4
	.quad	aes_256wrappadinv_newctx
	.long	2
	.zero	4
	.quad	aes_wrap_einit
	.long	3
	.zero	4
	.quad	aes_wrap_dinit
	.long	4
	.zero	4
	.quad	aes_wrap_cipher
	.long	5
	.zero	4
	.quad	aes_wrap_final
	.long	7
	.zero	4
	.quad	aes_wrap_freectx
	.long	8
	.zero	4
	.quad	aes_wrap_dupctx
	.long	9
	.zero	4
	.quad	aes_256_wrappadinv_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	aes_wrap_set_ctx_params
	.long	13
	.zero	4
	.quad	ossl_cipher_generic_gettable_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_generic_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_192_wrappadinv_get_params, @function
aes_192_wrappadinv_get_params:
.LFB432:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$32, %r9d
	movl	$64, %r8d
	movl	$192, %ecx
	movl	$514, %edx
	movl	$65538, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE432:
	.size	aes_192_wrappadinv_get_params, .-aes_192_wrappadinv_get_params
	.type	aes_192wrappadinv_newctx, @function
aes_192wrappadinv_newctx:
.LFB433:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$514, %r8d
	movl	$65538, %ecx
	movl	$32, %edx
	movl	$64, %esi
	movl	$192, %edi
	call	aes_wrap_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	aes_192wrappadinv_newctx, .-aes_192wrappadinv_newctx
	.globl	ossl_aes192wrappadinv_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes192wrappadinv_functions, @object
	.size	ossl_aes192wrappadinv_functions, 224
ossl_aes192wrappadinv_functions:
	.long	1
	.zero	4
	.quad	aes_192wrappadinv_newctx
	.long	2
	.zero	4
	.quad	aes_wrap_einit
	.long	3
	.zero	4
	.quad	aes_wrap_dinit
	.long	4
	.zero	4
	.quad	aes_wrap_cipher
	.long	5
	.zero	4
	.quad	aes_wrap_final
	.long	7
	.zero	4
	.quad	aes_wrap_freectx
	.long	8
	.zero	4
	.quad	aes_wrap_dupctx
	.long	9
	.zero	4
	.quad	aes_192_wrappadinv_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	aes_wrap_set_ctx_params
	.long	13
	.zero	4
	.quad	ossl_cipher_generic_gettable_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_generic_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_128_wrappadinv_get_params, @function
aes_128_wrappadinv_get_params:
.LFB434:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$32, %r9d
	movl	$64, %r8d
	movl	$128, %ecx
	movl	$514, %edx
	movl	$65538, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE434:
	.size	aes_128_wrappadinv_get_params, .-aes_128_wrappadinv_get_params
	.type	aes_128wrappadinv_newctx, @function
aes_128wrappadinv_newctx:
.LFB435:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$514, %r8d
	movl	$65538, %ecx
	movl	$32, %edx
	movl	$64, %esi
	movl	$128, %edi
	call	aes_wrap_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE435:
	.size	aes_128wrappadinv_newctx, .-aes_128wrappadinv_newctx
	.globl	ossl_aes128wrappadinv_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes128wrappadinv_functions, @object
	.size	ossl_aes128wrappadinv_functions, 224
ossl_aes128wrappadinv_functions:
	.long	1
	.zero	4
	.quad	aes_128wrappadinv_newctx
	.long	2
	.zero	4
	.quad	aes_wrap_einit
	.long	3
	.zero	4
	.quad	aes_wrap_dinit
	.long	4
	.zero	4
	.quad	aes_wrap_cipher
	.long	5
	.zero	4
	.quad	aes_wrap_final
	.long	7
	.zero	4
	.quad	aes_wrap_freectx
	.long	8
	.zero	4
	.quad	aes_wrap_dupctx
	.long	9
	.zero	4
	.quad	aes_128_wrappadinv_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	aes_wrap_set_ctx_params
	.long	13
	.zero	4
	.quad	ossl_cipher_generic_gettable_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_generic_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 14
__func__.3:
	.string	"aes_wrap_init"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 25
__func__.2:
	.string	"aes_wrap_cipher_internal"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"aes_wrap_cipher"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 24
__func__.0:
	.string	"aes_wrap_set_ctx_params"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

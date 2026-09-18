	.file	"cipher_aes_gcm_siv.c"
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
	.string	"../providers/implementations/ciphers/cipher_aes_gcm_siv.c"
	.text
	.type	ossl_aes_gcm_siv_newctx, @function
ossl_aes_gcm_siv_newctx:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	leaq	.LC0(%rip), %rax
	movl	$34, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L8
	movq	-32(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_cipher_hw_aes_gcm_siv@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 32(%rax)
.L8:
	movq	-8(%rbp), %rax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	ossl_aes_gcm_siv_newctx, .-ossl_aes_gcm_siv_newctx
	.type	ossl_aes_gcm_siv_freectx, @function
ossl_aes_gcm_siv_freectx:
.LFB405:
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
	cmpq	$0, -8(%rbp)
	je	.L12
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$51, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$53, %ecx
	movl	$448, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	jmp	.L9
.L12:
	nop
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	ossl_aes_gcm_siv_freectx, .-ossl_aes_gcm_siv_freectx
	.type	ossl_aes_gcm_siv_dupctx, @function
ossl_aes_gcm_siv_dupctx:
.LFB406:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L16
	movl	$0, %eax
	jmp	.L15
.L16:
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$67, %ecx
	movl	$448, %esi
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L17
	movl	$0, %eax
	jmp	.L15
.L17:
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$75, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L22
.L18:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	je	.L23
	movq	-16(%rbp), %rax
	jmp	.L15
.L22:
	nop
	jmp	.L19
.L23:
	nop
.L19:
	cmpq	$0, -16(%rbp)
	je	.L21
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$85, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$86, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L21:
	movl	$0, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	ossl_aes_gcm_siv_dupctx, .-ossl_aes_gcm_siv_dupctx
	.type	ossl_aes_gcm_siv_init, @function
ossl_aes_gcm_siv_init:
.LFB407:
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
	jne	.L25
	movl	$0, %eax
	jmp	.L26
.L25:
	movl	16(%rbp), %eax
	andl	$1, %eax
	movq	-8(%rbp), %rdx
	andl	$1, %eax
	movl	%eax, %ecx
	movzbl	440(%rdx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 440(%rdx)
	cmpq	$0, -32(%rbp)
	je	.L27
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	%rax, -40(%rbp)
	je	.L28
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L26
.L28:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	56(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L27:
	cmpq	$0, -48(%rbp)
	je	.L29
	cmpq	$12, -56(%rbp)
	je	.L30
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L26
.L30:
	movq	-8(%rbp), %rax
	leaq	168(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	$12, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L29:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L31
	movl	$0, %eax
	jmp	.L26
.L31:
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_aes_gcm_siv_set_ctx_params
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	ossl_aes_gcm_siv_init, .-ossl_aes_gcm_siv_init
	.type	ossl_aes_gcm_siv_einit, @function
ossl_aes_gcm_siv_einit:
.LFB408:
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
	call	ossl_aes_gcm_siv_init
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ossl_aes_gcm_siv_einit, .-ossl_aes_gcm_siv_einit
	.type	ossl_aes_gcm_siv_dinit, @function
ossl_aes_gcm_siv_dinit:
.LFB409:
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
	call	ossl_aes_gcm_siv_init
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	ossl_aes_gcm_siv_dinit, .-ossl_aes_gcm_siv_dinit
	.type	ossl_aes_gcm_siv_cipher, @function
ossl_aes_gcm_siv_cipher:
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
	movl	$0, -12(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	cmpq	$0, -64(%rbp)
	jne	.L39
	cmpq	$0, -40(%rbp)
	je	.L40
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
.L40:
	movl	$1, %eax
	jmp	.L38
.L39:
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L41
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$155, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L41:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %r8
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, -12(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L42
	cmpl	$0, -12(%rbp)
	jne	.L42
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
.L42:
	cmpl	$0, -12(%rbp)
	sete	%al
	movzbl	%al, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	ossl_aes_gcm_siv_cipher, .-ossl_aes_gcm_siv_cipher
	.type	ossl_aes_gcm_siv_stream_final, @function
ossl_aes_gcm_siv_stream_final:
.LFB411:
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
	movl	$0, -12(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L44
	movl	$0, %eax
	jmp	.L45
.L44:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %r8
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, -12(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L46
	cmpl	$0, -12(%rbp)
	jne	.L46
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
.L46:
	cmpl	$0, -12(%rbp)
	sete	%al
	movzbl	%al, %eax
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	ossl_aes_gcm_siv_stream_final, .-ossl_aes_gcm_siv_stream_final
	.section	.rodata
.LC1:
	.string	"tag"
.LC2:
	.string	"taglen"
.LC3:
	.string	"keylen"
	.text
	.type	ossl_aes_gcm_siv_get_ctx_params, @function
ossl_aes_gcm_siv_get_ctx_params:
.LFB412:
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
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L48
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L48
	movq	-8(%rbp), %rax
	movzbl	440(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L49
	movq	-8(%rbp), %rax
	movzbl	440(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L49
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$16, %rax
	jne	.L49
	movq	-8(%rbp), %rax
	leaq	136(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L48
.L49:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$192, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L50
.L48:
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L51
	movq	-16(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L51
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$198, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L50
.L51:
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L52
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L52
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$203, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L50
.L52:
	movl	$1, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	ossl_aes_gcm_siv_get_ctx_params, .-ossl_aes_gcm_siv_get_ctx_params
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	aes_gcm_siv_known_gettable_ctx_params, @object
	.size	aes_gcm_siv_known_gettable_ctx_params, 160
aes_gcm_siv_known_gettable_ctx_params:
	.quad	.LC3
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC2
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC1
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	ossl_aes_gcm_siv_gettable_ctx_params, @function
ossl_aes_gcm_siv_gettable_ctx_params:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	aes_gcm_siv_known_gettable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	ossl_aes_gcm_siv_gettable_ctx_params, .-ossl_aes_gcm_siv_gettable_ctx_params
	.section	.rodata
.LC4:
	.string	"speed"
	.text
	.type	ossl_aes_gcm_siv_set_ctx_params, @function
ossl_aes_gcm_siv_set_ctx_params:
.LFB414:
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
	movl	$0, -20(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L56
	movl	$1, %eax
	jmp	.L67
.L56:
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L58
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L59
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$16, %rax
	je	.L60
.L59:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$235, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L67
.L60:
	movq	-8(%rbp), %rax
	movzbl	440(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L58
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	152(%rdx), %rcx
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-8(%rbp), %rax
	movzbl	440(%rax), %edx
	orl	$2, %edx
	movb	%dl, 440(%rax)
.L58:
	leaq	.LC4(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L61
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L62
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$246, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L67
.L62:
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	setne	%dl
	movq	-8(%rbp), %rax
	andl	$1, %edx
	movl	%edx, %ecx
	sall	$5, %ecx
	movzbl	440(%rax), %edx
	andl	$-33, %edx
	orl	%ecx, %edx
	movb	%dl, 440(%rax)
.L61:
	leaq	.LC3(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L63
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L64
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L67
.L64:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L63
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$261, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L67
.L63:
	movl	$1, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	ossl_aes_gcm_siv_set_ctx_params, .-ossl_aes_gcm_siv_set_ctx_params
	.section	.data.rel.ro.local
	.align 32
	.type	aes_gcm_siv_known_settable_ctx_params, @object
	.size	aes_gcm_siv_known_settable_ctx_params, 160
aes_gcm_siv_known_settable_ctx_params:
	.quad	.LC3
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC4
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC1
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	ossl_aes_gcm_siv_settable_ctx_params, @function
ossl_aes_gcm_siv_settable_ctx_params:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	aes_gcm_siv_known_settable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	ossl_aes_gcm_siv_settable_ctx_params, .-ossl_aes_gcm_siv_settable_ctx_params
	.type	ossl_aes_128_gcm_siv_get_params, @function
ossl_aes_128_gcm_siv_get_params:
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
	movl	$96, %r9d
	movl	$8, %r8d
	movl	$128, %ecx
	movl	$3, %edx
	movl	$65541, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	ossl_aes_128_gcm_siv_get_params, .-ossl_aes_128_gcm_siv_get_params
	.type	ossl_aes128_gcm_siv_newctx, @function
ossl_aes128_gcm_siv_newctx:
.LFB417:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	ossl_aes_gcm_siv_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	ossl_aes128_gcm_siv_newctx, .-ossl_aes128_gcm_siv_newctx
	.globl	ossl_aes128gcm_siv_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_aes128gcm_siv_functions, @object
	.size	ossl_aes128gcm_siv_functions, 240
ossl_aes128gcm_siv_functions:
	.long	1
	.zero	4
	.quad	ossl_aes128_gcm_siv_newctx
	.long	7
	.zero	4
	.quad	ossl_aes_gcm_siv_freectx
	.long	8
	.zero	4
	.quad	ossl_aes_gcm_siv_dupctx
	.long	2
	.zero	4
	.quad	ossl_aes_gcm_siv_einit
	.long	3
	.zero	4
	.quad	ossl_aes_gcm_siv_dinit
	.long	4
	.zero	4
	.quad	ossl_aes_gcm_siv_cipher
	.long	5
	.zero	4
	.quad	ossl_aes_gcm_siv_stream_final
	.long	6
	.zero	4
	.quad	ossl_aes_gcm_siv_cipher
	.long	9
	.zero	4
	.quad	ossl_aes_128_gcm_siv_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_aes_gcm_siv_get_ctx_params
	.long	13
	.zero	4
	.quad	ossl_aes_gcm_siv_gettable_ctx_params
	.long	11
	.zero	4
	.quad	ossl_aes_gcm_siv_set_ctx_params
	.long	14
	.zero	4
	.quad	ossl_aes_gcm_siv_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ossl_aes_192_gcm_siv_get_params, @function
ossl_aes_192_gcm_siv_get_params:
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
	movl	$96, %r9d
	movl	$8, %r8d
	movl	$192, %ecx
	movl	$3, %edx
	movl	$65541, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	ossl_aes_192_gcm_siv_get_params, .-ossl_aes_192_gcm_siv_get_params
	.type	ossl_aes192_gcm_siv_newctx, @function
ossl_aes192_gcm_siv_newctx:
.LFB419:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$192, %esi
	movq	%rax, %rdi
	call	ossl_aes_gcm_siv_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	ossl_aes192_gcm_siv_newctx, .-ossl_aes192_gcm_siv_newctx
	.globl	ossl_aes192gcm_siv_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes192gcm_siv_functions, @object
	.size	ossl_aes192gcm_siv_functions, 240
ossl_aes192gcm_siv_functions:
	.long	1
	.zero	4
	.quad	ossl_aes192_gcm_siv_newctx
	.long	7
	.zero	4
	.quad	ossl_aes_gcm_siv_freectx
	.long	8
	.zero	4
	.quad	ossl_aes_gcm_siv_dupctx
	.long	2
	.zero	4
	.quad	ossl_aes_gcm_siv_einit
	.long	3
	.zero	4
	.quad	ossl_aes_gcm_siv_dinit
	.long	4
	.zero	4
	.quad	ossl_aes_gcm_siv_cipher
	.long	5
	.zero	4
	.quad	ossl_aes_gcm_siv_stream_final
	.long	6
	.zero	4
	.quad	ossl_aes_gcm_siv_cipher
	.long	9
	.zero	4
	.quad	ossl_aes_192_gcm_siv_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_aes_gcm_siv_get_ctx_params
	.long	13
	.zero	4
	.quad	ossl_aes_gcm_siv_gettable_ctx_params
	.long	11
	.zero	4
	.quad	ossl_aes_gcm_siv_set_ctx_params
	.long	14
	.zero	4
	.quad	ossl_aes_gcm_siv_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ossl_aes_256_gcm_siv_get_params, @function
ossl_aes_256_gcm_siv_get_params:
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
	movl	$96, %r9d
	movl	$8, %r8d
	movl	$256, %ecx
	movl	$3, %edx
	movl	$65541, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	ossl_aes_256_gcm_siv_get_params, .-ossl_aes_256_gcm_siv_get_params
	.type	ossl_aes256_gcm_siv_newctx, @function
ossl_aes256_gcm_siv_newctx:
.LFB421:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	ossl_aes_gcm_siv_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	ossl_aes256_gcm_siv_newctx, .-ossl_aes256_gcm_siv_newctx
	.globl	ossl_aes256gcm_siv_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes256gcm_siv_functions, @object
	.size	ossl_aes256gcm_siv_functions, 240
ossl_aes256gcm_siv_functions:
	.long	1
	.zero	4
	.quad	ossl_aes256_gcm_siv_newctx
	.long	7
	.zero	4
	.quad	ossl_aes_gcm_siv_freectx
	.long	8
	.zero	4
	.quad	ossl_aes_gcm_siv_dupctx
	.long	2
	.zero	4
	.quad	ossl_aes_gcm_siv_einit
	.long	3
	.zero	4
	.quad	ossl_aes_gcm_siv_dinit
	.long	4
	.zero	4
	.quad	ossl_aes_gcm_siv_cipher
	.long	5
	.zero	4
	.quad	ossl_aes_gcm_siv_stream_final
	.long	6
	.zero	4
	.quad	ossl_aes_gcm_siv_cipher
	.long	9
	.zero	4
	.quad	ossl_aes_256_gcm_siv_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_aes_gcm_siv_get_ctx_params
	.long	13
	.zero	4
	.quad	ossl_aes_gcm_siv_gettable_ctx_params
	.long	11
	.zero	4
	.quad	ossl_aes_gcm_siv_set_ctx_params
	.long	14
	.zero	4
	.quad	ossl_aes_gcm_siv_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 22
__func__.3:
	.string	"ossl_aes_gcm_siv_init"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 24
__func__.2:
	.string	"ossl_aes_gcm_siv_cipher"
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 32
__func__.1:
	.string	"ossl_aes_gcm_siv_get_ctx_params"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 32
__func__.0:
	.string	"ossl_aes_gcm_siv_set_ctx_params"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

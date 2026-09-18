	.file	"cipher_aes_ocb.c"
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
	.type	aes_generic_ocb_setiv, @function
aes_generic_ocb_setiv:
.LFB402:
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
	movq	-8(%rbp), %rax
	leaq	688(%rax), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_ocb128_setiv@PLT
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	aes_generic_ocb_setiv, .-aes_generic_ocb_setiv
	.type	aes_generic_ocb_setaad, @function
aes_generic_ocb_setaad:
.LFB403:
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
	movq	-8(%rbp), %rax
	leaq	688(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_ocb128_aad@PLT
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	aes_generic_ocb_setaad, .-aes_generic_ocb_setaad
	.type	aes_generic_ocb_gettag, @function
aes_generic_ocb_gettag:
.LFB404:
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
	movq	-8(%rbp), %rax
	leaq	688(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_ocb128_tag@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	aes_generic_ocb_gettag, .-aes_generic_ocb_gettag
	.type	aes_generic_ocb_final, @function
aes_generic_ocb_final:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	872(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	896(%rdx), %rsi
	movq	-8(%rbp), %rdx
	leaq	688(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	CRYPTO_ocb128_finish@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	aes_generic_ocb_final, .-aes_generic_ocb_final
	.type	aes_generic_ocb_cleanup, @function
aes_generic_ocb_cleanup:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$688, %rax
	movq	%rax, %rdi
	call	CRYPTO_ocb128_cleanup@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	aes_generic_ocb_cleanup, .-aes_generic_ocb_cleanup
	.type	aes_generic_ocb_cipher, @function
aes_generic_ocb_cipher:
.LFB407:
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
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L15
	movq	-8(%rbp), %rax
	leaq	688(%rax), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_ocb128_encrypt@PLT
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L15:
	movq	-8(%rbp), %rax
	leaq	688(%rax), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_ocb128_decrypt@PLT
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	aes_generic_ocb_cipher, .-aes_generic_ocb_cipher
	.type	aes_generic_ocb_copy_ctx, @function
aes_generic_ocb_copy_ctx:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	440(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	688(%rax), %rsi
	movq	-8(%rbp), %rax
	addq	$688, %rax
	movq	%rax, %rdi
	call	CRYPTO_ocb128_copy_ctx@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	aes_generic_ocb_copy_ctx, .-aes_generic_ocb_copy_ctx
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/ciphers/cipher_aes_ocb.c"
	.text
	.type	aes_ocb_init, @function
aes_ocb_init:
.LFB409:
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
	jne	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
	movq	-8(%rbp), %rax
	movq	$0, 888(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 880(%rax)
	movl	16(%rbp), %eax
	andl	$1, %eax
	movq	-8(%rbp), %rdx
	andl	$1, %eax
	leal	(%rax,%rax), %ecx
	movzbl	108(%rdx), %eax
	andl	$-3, %eax
	orl	%ecx, %eax
	movb	%al, 108(%rdx)
	cmpq	$0, -48(%rbp)
	je	.L23
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	%rax, -56(%rbp)
	je	.L24
	cmpq	$0, -56(%rbp)
	je	.L25
	cmpq	$15, -56(%rbp)
	jbe	.L26
.L25:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$121, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L22
.L26:
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 80(%rax)
.L24:
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initiv@PLT
	testl	%eax, %eax
	jne	.L27
	movl	$0, %eax
	jmp	.L22
.L27:
	movq	-8(%rbp), %rax
	movl	$1, 864(%rax)
.L23:
	cmpq	$0, -32(%rbp)
	je	.L28
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	%rax, -40(%rbp)
	je	.L29
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$132, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L22
.L29:
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	(%rax), %r8
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L28
	movl	$0, %eax
	jmp	.L22
.L28:
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	aes_ocb_set_ctx_params
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	aes_ocb_init, .-aes_ocb_init
	.type	aes_ocb_einit, @function
aes_ocb_einit:
.LFB410:
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
	call	aes_ocb_init
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	aes_ocb_einit, .-aes_ocb_einit
	.type	aes_ocb_dinit, @function
aes_ocb_dinit:
.LFB411:
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
	call	aes_ocb_init
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	aes_ocb_dinit, .-aes_ocb_dinit
	.type	aes_ocb_block_update_internal, @function
aes_ocb_block_update_internal:
.LFB412:
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
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L35
	leaq	24(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %r8
	leaq	16(%rbp), %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	ossl_cipher_fillblock@PLT
	movq	%rax, -8(%rbp)
	jmp	.L36
.L35:
	movq	24(%rbp), %rax
	andq	$-16, %rax
	movq	%rax, -8(%rbp)
.L36:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$16, %rax
	jne	.L37
	cmpq	$15, -64(%rbp)
	ja	.L38
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$175, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L39
.L38:
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	32(%rbp), %r8
	movl	$16, %ecx
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L40
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$179, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L39
.L40:
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	$16, -16(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L37
	addq	$16, -48(%rbp)
.L37:
	cmpq	$0, -8(%rbp)
	je	.L41
	movq	-8(%rbp), %rax
	addq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L42
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$190, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L39
.L42:
	movq	16(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	32(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L43
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$194, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L39
.L43:
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, 16(%rbp)
	movq	24(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, 24(%rbp)
.L41:
	movq	24(%rbp), %rax
	testq	%rax, %rax
	je	.L44
	leaq	24(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %r8
	leaq	16(%rbp), %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	ossl_cipher_trailingdata@PLT
	testl	%eax, %eax
	jne	.L44
	movl	$0, %eax
	jmp	.L39
.L44:
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	24(%rbp), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	aes_ocb_block_update_internal, .-aes_ocb_block_update_internal
	.type	cipher_updateaad, @function
cipher_updateaad:
.LFB413:
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
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	aes_generic_ocb_setaad
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	cipher_updateaad, .-cipher_updateaad
	.type	update_iv, @function
update_iv:
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
	movl	864(%rax), %eax
	cmpl	$3, %eax
	je	.L48
	movq	-8(%rbp), %rax
	movl	864(%rax), %eax
	testl	%eax, %eax
	jne	.L49
.L48:
	movl	$0, %eax
	jmp	.L50
.L49:
	movq	-8(%rbp), %rax
	movl	864(%rax), %eax
	cmpl	$1, %eax
	jne	.L51
	movq	-8(%rbp), %rax
	movq	872(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	aes_generic_ocb_setiv
	testl	%eax, %eax
	jne	.L52
	movl	$0, %eax
	jmp	.L50
.L52:
	movq	-8(%rbp), %rax
	movl	$2, 864(%rax)
.L51:
	movl	$1, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	update_iv, .-update_iv
	.type	aes_ocb_block_update, @function
aes_ocb_block_update:
.LFB415:
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
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	868(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L54
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	update_iv
	testl	%eax, %eax
	jne	.L55
.L54:
	movl	$0, %eax
	jmp	.L56
.L55:
	cmpq	$0, -80(%rbp)
	jne	.L57
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L56
.L57:
	cmpq	$0, -48(%rbp)
	jne	.L58
	movq	-32(%rbp), %rax
	addq	$928, %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	addq	$888, %rax
	movq	%rax, -16(%rbp)
	leaq	cipher_updateaad(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L59
.L58:
	movq	-32(%rbp), %rax
	addq	$912, %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	addq	$880, %rax
	movq	%rax, -16(%rbp)
	leaq	aes_generic_ocb_cipher(%rip), %rax
	movq	%rax, -24(%rbp)
.L59:
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	-24(%rbp)
	pushq	-80(%rbp)
	pushq	-72(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	aes_ocb_block_update_internal
	addq	$32, %rsp
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	aes_ocb_block_update, .-aes_ocb_block_update
	.type	aes_ocb_block_final, @function
aes_ocb_block_final:
.LFB416:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L61
	movl	$0, %eax
	jmp	.L62
.L61:
	movq	-8(%rbp), %rax
	movzbl	868(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L63
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	update_iv
	testl	%eax, %eax
	jne	.L64
.L63:
	movl	$0, %eax
	jmp	.L62
.L64:
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	880(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	-8(%rbp), %rax
	movq	880(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	912(%rax), %rsi
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	aes_generic_ocb_cipher
	testl	%eax, %eax
	jne	.L66
	movl	$0, %eax
	jmp	.L62
.L66:
	movq	-8(%rbp), %rax
	movq	880(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 880(%rax)
.L65:
	movq	-8(%rbp), %rax
	movq	888(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-8(%rbp), %rax
	movq	888(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	928(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	aes_generic_ocb_setaad
	testl	%eax, %eax
	jne	.L68
	movl	$0, %eax
	jmp	.L62
.L68:
	movq	-8(%rbp), %rax
	movq	$0, 888(%rax)
.L67:
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L69
	movq	-8(%rbp), %rax
	movq	872(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	896(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	aes_generic_ocb_gettag
	testl	%eax, %eax
	jne	.L70
	movl	$0, %eax
	jmp	.L62
.L69:
	movq	-8(%rbp), %rax
	movq	872(%rax), %rax
	testq	%rax, %rax
	jne	.L71
	movl	$0, %eax
	jmp	.L62
.L71:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	aes_generic_ocb_final
	testl	%eax, %eax
	jne	.L70
	movl	$0, %eax
	jmp	.L62
.L70:
	movq	-8(%rbp), %rax
	movl	$3, 864(%rax)
	movl	$1, %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	aes_ocb_block_final, .-aes_ocb_block_final
	.type	aes_ocb_newctx, @function
aes_ocb_newctx:
.LFB417:
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
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L73
	movl	$0, %eax
	jmp	.L74
.L73:
	leaq	.LC0(%rip), %rax
	movl	$314, %edx
	movq	%rax, %rsi
	movl	$944, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L75
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_cipher_hw_aes_ocb@PLT
	movq	%rax, %rdi
	movq	-64(%rbp), %r9
	movl	-52(%rbp), %r8d
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	movq	$16, 872(%rax)
.L75:
	movq	-8(%rbp), %rax
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	aes_ocb_newctx, .-aes_ocb_newctx
	.type	aes_ocb_freectx, @function
aes_ocb_freectx:
.LFB418:
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
	je	.L78
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	aes_generic_ocb_cleanup
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cipher_generic_reset_ctx@PLT
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$330, %ecx
	movl	$944, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L78:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	aes_ocb_freectx, .-aes_ocb_freectx
	.type	aes_ocb_dupctx, @function
aes_ocb_dupctx:
.LFB419:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L80
	movl	$0, %eax
	jmp	.L81
.L80:
	leaq	.LC0(%rip), %rax
	movl	$342, %edx
	movq	%rax, %rsi
	movl	$944, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L82
	movl	$0, %eax
	jmp	.L81
.L82:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$118, %eax
	movq	%rdx, %rdi
	movq	%rax, %rcx
	rep movsq
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	aes_generic_ocb_copy_ctx
	testl	%eax, %eax
	jne	.L83
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$347, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -8(%rbp)
.L83:
	movq	-8(%rbp), %rax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	aes_ocb_dupctx, .-aes_ocb_dupctx
	.section	.rodata
.LC1:
	.string	"tag"
.LC2:
	.string	"ivlen"
.LC3:
	.string	"keylen"
	.text
	.type	aes_ocb_set_ctx_params, @function
aes_ocb_set_ctx_params:
.LFB420:
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
	cmpq	$0, -48(%rbp)
	jne	.L85
	movl	$1, %eax
	jmp	.L101
.L85:
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L87
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L88
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$365, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L88:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L89
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$16, %rax
	jbe	.L90
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$371, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L90:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 872(%rax)
	jmp	.L87
.L89:
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L91
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$377, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L91:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	872(%rax), %rax
	cmpq	%rax, %rdx
	je	.L92
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$381, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L92:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$896, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L87:
	leaq	.LC2(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L93
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L94
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$390, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L94:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L95
	movq	-24(%rbp), %rax
	cmpq	$15, %rax
	jbe	.L96
.L95:
	movl	$0, %eax
	jmp	.L101
.L96:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-24(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L93
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 864(%rax)
.L93:
	leaq	.LC3(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L97
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L98
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$406, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L98:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L97
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$410, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L97:
	movl	$1, %eax
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	aes_ocb_set_ctx_params, .-aes_ocb_set_ctx_params
	.section	.rodata
.LC4:
	.string	"taglen"
.LC5:
	.string	"iv"
.LC6:
	.string	"updated-iv"
	.text
	.type	aes_ocb_get_ctx_params, @function
aes_ocb_get_ctx_params:
.LFB421:
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
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L103
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L103
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$424, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L104
.L103:
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L105
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L105
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$429, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L104
.L105:
	leaq	.LC4(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L106
	movq	-8(%rbp), %rax
	movq	872(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L106
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$435, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L104
.L106:
	leaq	.LC5(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L107
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L108
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$443, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L104
.L108:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L107
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_ptr@PLT
	testl	%eax, %eax
	jne	.L107
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$448, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L104
.L107:
	leaq	.LC6(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L109
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L110
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$455, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L104
.L110:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L109
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_ptr@PLT
	testl	%eax, %eax
	jne	.L109
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$460, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L104
.L109:
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L111
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L112
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$467, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L104
.L112:
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L113
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	872(%rax), %rax
	cmpq	%rax, %rdx
	je	.L114
.L113:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$471, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L104
.L114:
	movq	-8(%rbp), %rax
	movq	872(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	896(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L111:
	movl	$1, %eax
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	aes_ocb_get_ctx_params, .-aes_ocb_get_ctx_params
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	cipher_ocb_known_gettable_ctx_params, @object
	.size	cipher_ocb_known_gettable_ctx_params, 280
cipher_ocb_known_gettable_ctx_params:
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
	.quad	.LC4
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC5
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC6
	.long	5
	.zero	4
	.quad	0
	.quad	0
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
	.type	cipher_ocb_gettable_ctx_params, @function
cipher_ocb_gettable_ctx_params:
.LFB422:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	cipher_ocb_known_gettable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	cipher_ocb_gettable_ctx_params, .-cipher_ocb_gettable_ctx_params
	.section	.data.rel.ro.local
	.align 32
	.type	cipher_ocb_known_settable_ctx_params, @object
	.size	cipher_ocb_known_settable_ctx_params, 160
cipher_ocb_known_settable_ctx_params:
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
	.type	cipher_ocb_settable_ctx_params, @function
cipher_ocb_settable_ctx_params:
.LFB423:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	cipher_ocb_known_settable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE423:
	.size	cipher_ocb_settable_ctx_params, .-cipher_ocb_settable_ctx_params
	.type	aes_ocb_cipher, @function
aes_ocb_cipher:
.LFB424:
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
	jne	.L120
	movl	$0, %eax
	jmp	.L121
.L120:
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L122
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$515, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L122:
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	aes_generic_ocb_cipher
	testl	%eax, %eax
	jne	.L123
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$520, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L123:
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE424:
	.size	aes_ocb_cipher, .-aes_ocb_cipher
	.type	aes_256_ocb_get_params, @function
aes_256_ocb_get_params:
.LFB425:
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
	movl	$128, %r8d
	movl	$256, %ecx
	movl	$3, %edx
	movl	$65539, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE425:
	.size	aes_256_ocb_get_params, .-aes_256_ocb_get_params
	.type	aes_256_ocb_newctx, @function
aes_256_ocb_newctx:
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
	movl	$3, %r9d
	movl	$65539, %r8d
	movl	$96, %ecx
	movl	$128, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	aes_ocb_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE426:
	.size	aes_256_ocb_newctx, .-aes_256_ocb_newctx
	.globl	ossl_aes256ocb_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_aes256ocb_functions, @object
	.size	ossl_aes256ocb_functions, 240
ossl_aes256ocb_functions:
	.long	1
	.zero	4
	.quad	aes_256_ocb_newctx
	.long	2
	.zero	4
	.quad	aes_ocb_einit
	.long	3
	.zero	4
	.quad	aes_ocb_dinit
	.long	4
	.zero	4
	.quad	aes_ocb_block_update
	.long	5
	.zero	4
	.quad	aes_ocb_block_final
	.long	6
	.zero	4
	.quad	aes_ocb_cipher
	.long	7
	.zero	4
	.quad	aes_ocb_freectx
	.long	8
	.zero	4
	.quad	aes_ocb_dupctx
	.long	9
	.zero	4
	.quad	aes_256_ocb_get_params
	.long	10
	.zero	4
	.quad	aes_ocb_get_ctx_params
	.long	11
	.zero	4
	.quad	aes_ocb_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	13
	.zero	4
	.quad	cipher_ocb_gettable_ctx_params
	.long	14
	.zero	4
	.quad	cipher_ocb_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_192_ocb_get_params, @function
aes_192_ocb_get_params:
.LFB427:
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
	movl	$128, %r8d
	movl	$192, %ecx
	movl	$3, %edx
	movl	$65539, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE427:
	.size	aes_192_ocb_get_params, .-aes_192_ocb_get_params
	.type	aes_192_ocb_newctx, @function
aes_192_ocb_newctx:
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
	movl	$3, %r9d
	movl	$65539, %r8d
	movl	$96, %ecx
	movl	$128, %edx
	movl	$192, %esi
	movq	%rax, %rdi
	call	aes_ocb_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE428:
	.size	aes_192_ocb_newctx, .-aes_192_ocb_newctx
	.globl	ossl_aes192ocb_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes192ocb_functions, @object
	.size	ossl_aes192ocb_functions, 240
ossl_aes192ocb_functions:
	.long	1
	.zero	4
	.quad	aes_192_ocb_newctx
	.long	2
	.zero	4
	.quad	aes_ocb_einit
	.long	3
	.zero	4
	.quad	aes_ocb_dinit
	.long	4
	.zero	4
	.quad	aes_ocb_block_update
	.long	5
	.zero	4
	.quad	aes_ocb_block_final
	.long	6
	.zero	4
	.quad	aes_ocb_cipher
	.long	7
	.zero	4
	.quad	aes_ocb_freectx
	.long	8
	.zero	4
	.quad	aes_ocb_dupctx
	.long	9
	.zero	4
	.quad	aes_192_ocb_get_params
	.long	10
	.zero	4
	.quad	aes_ocb_get_ctx_params
	.long	11
	.zero	4
	.quad	aes_ocb_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	13
	.zero	4
	.quad	cipher_ocb_gettable_ctx_params
	.long	14
	.zero	4
	.quad	cipher_ocb_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_128_ocb_get_params, @function
aes_128_ocb_get_params:
.LFB429:
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
	movl	$128, %r8d
	movl	$128, %ecx
	movl	$3, %edx
	movl	$65539, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	aes_128_ocb_get_params, .-aes_128_ocb_get_params
	.type	aes_128_ocb_newctx, @function
aes_128_ocb_newctx:
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
	movl	$3, %r9d
	movl	$65539, %r8d
	movl	$96, %ecx
	movl	$128, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	aes_ocb_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE430:
	.size	aes_128_ocb_newctx, .-aes_128_ocb_newctx
	.globl	ossl_aes128ocb_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes128ocb_functions, @object
	.size	ossl_aes128ocb_functions, 240
ossl_aes128ocb_functions:
	.long	1
	.zero	4
	.quad	aes_128_ocb_newctx
	.long	2
	.zero	4
	.quad	aes_ocb_einit
	.long	3
	.zero	4
	.quad	aes_ocb_dinit
	.long	4
	.zero	4
	.quad	aes_ocb_block_update
	.long	5
	.zero	4
	.quad	aes_ocb_block_final
	.long	6
	.zero	4
	.quad	aes_ocb_cipher
	.long	7
	.zero	4
	.quad	aes_ocb_freectx
	.long	8
	.zero	4
	.quad	aes_ocb_dupctx
	.long	9
	.zero	4
	.quad	aes_128_ocb_get_params
	.long	10
	.zero	4
	.quad	aes_ocb_get_ctx_params
	.long	11
	.zero	4
	.quad	aes_ocb_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	13
	.zero	4
	.quad	cipher_ocb_gettable_ctx_params
	.long	14
	.zero	4
	.quad	cipher_ocb_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 13
__func__.4:
	.string	"aes_ocb_init"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 30
__func__.3:
	.string	"aes_ocb_block_update_internal"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 23
__func__.2:
	.string	"aes_ocb_set_ctx_params"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 23
__func__.1:
	.string	"aes_ocb_get_ctx_params"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"aes_ocb_cipher"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

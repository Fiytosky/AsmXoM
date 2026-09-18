	.file	"cipher_aes_siv.c"
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
	.string	"../providers/implementations/ciphers/cipher_aes_siv.c"
	.text
	.type	aes_siv_newctx, @function
aes_siv_newctx:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	leaq	.LC0(%rip), %rax
	movl	$38, %edx
	movq	%rax, %rsi
	movl	$120, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L8
	movq	-8(%rbp), %rax
	movq	$16, 16(%rax)
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_cipher_hw_aes_siv@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 104(%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 112(%rdx)
.L8:
	movq	-8(%rbp), %rax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	aes_siv_newctx, .-aes_siv_newctx
	.type	aes_siv_freectx, @function
aes_siv_freectx:
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
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L11
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$55, %ecx
	movl	$120, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L11:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	aes_siv_freectx, .-aes_siv_freectx
	.type	siv_dupctx, @function
siv_dupctx:
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
	movq	%rax, -16(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	leaq	.LC0(%rip), %rax
	movl	$67, %edx
	movq	%rax, %rsi
	movl	$120, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L15
	movl	$0, %eax
	jmp	.L14
.L15:
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	40(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L16
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$71, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -8(%rbp)
.L16:
	movq	-8(%rbp), %rax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	siv_dupctx, .-siv_dupctx
	.type	siv_init, @function
siv_init:
.LFB405:
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
	jne	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	movl	16(%rbp), %eax
	andl	$1, %eax
	movq	-8(%rbp), %rdx
	andl	$1, %eax
	movl	%eax, %ecx
	movzbl	4(%rdx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 4(%rdx)
	cmpq	$0, -32(%rbp)
	je	.L20
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -40(%rbp)
	je	.L21
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$90, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L19
.L21:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	(%rax), %r8
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L20
	movl	$0, %eax
	jmp	.L19
.L20:
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	aes_siv_set_ctx_params
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	siv_init, .-siv_init
	.type	siv_einit, @function
siv_einit:
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
	call	siv_init
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	siv_einit, .-siv_einit
	.type	siv_dinit, @function
siv_dinit:
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
	call	siv_init
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	siv_dinit, .-siv_dinit
	.type	siv_cipher, @function
siv_cipher:
.LFB408:
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
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	cmpq	$0, -32(%rbp)
	je	.L29
	cmpq	$0, -64(%rbp)
	jne	.L30
	cmpq	$0, -40(%rbp)
	je	.L31
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
.L31:
	movl	$1, %eax
	jmp	.L28
.L30:
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L29
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$130, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L28
.L29:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %r8
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jg	.L32
	movl	$0, %eax
	jmp	.L28
.L32:
	cmpq	$0, -40(%rbp)
	je	.L33
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
.L33:
	movl	$1, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	siv_cipher, .-siv_cipher
	.type	siv_stream_final, @function
siv_stream_final:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L35
	movl	$0, %eax
	jmp	.L36
.L35:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %r8
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L37
	movl	$0, %eax
	jmp	.L36
.L37:
	cmpq	$0, -40(%rbp)
	je	.L38
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
.L38:
	movl	$1, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	siv_stream_final, .-siv_stream_final
	.section	.rodata
.LC1:
	.string	"tag"
.LC2:
	.string	"taglen"
.LC3:
	.string	"keylen"
	.text
	.type	aes_siv_get_ctx_params, @function
aes_siv_get_ctx_params:
.LFB410:
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
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -16(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L40
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L40
	movq	-8(%rbp), %rax
	movzbl	4(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L41
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L41
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L40
.L41:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$170, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L40:
	leaq	.LC2(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L43
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L43
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$176, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L43:
	leaq	.LC3(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L44
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L44
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$181, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L44:
	movl	$1, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	aes_siv_get_ctx_params, .-aes_siv_get_ctx_params
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	aes_siv_known_gettable_ctx_params, @object
	.size	aes_siv_known_gettable_ctx_params, 160
aes_siv_known_gettable_ctx_params:
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
	.type	aes_siv_gettable_ctx_params, @function
aes_siv_gettable_ctx_params:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	aes_siv_known_gettable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	aes_siv_gettable_ctx_params, .-aes_siv_gettable_ctx_params
	.section	.rodata
.LC4:
	.string	"speed"
	.text
	.type	aes_siv_set_ctx_params, @function
aes_siv_set_ctx_params:
.LFB412:
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
	jne	.L48
	movl	$1, %eax
	jmp	.L59
.L48:
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L50
	movq	-8(%rbp), %rax
	movzbl	4(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L51
	movl	$1, %eax
	jmp	.L59
.L51:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L52
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	24(%rax), %r8
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L50
.L52:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$214, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L59
.L50:
	leaq	.LC4(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L53
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L54
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$221, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L59
.L54:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	16(%rax), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%rdx
.L53:
	leaq	.LC3(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L55
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L56
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$231, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L59
.L56:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L55
	movl	$0, %eax
	jmp	.L59
.L55:
	movl	$1, %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	aes_siv_set_ctx_params, .-aes_siv_set_ctx_params
	.section	.data.rel.ro.local
	.align 32
	.type	aes_siv_known_settable_ctx_params, @object
	.size	aes_siv_known_settable_ctx_params, 160
aes_siv_known_settable_ctx_params:
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
	.type	aes_siv_settable_ctx_params, @function
aes_siv_settable_ctx_params:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	aes_siv_known_settable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	aes_siv_settable_ctx_params, .-aes_siv_settable_ctx_params
	.type	aes_128_siv_get_params, @function
aes_128_siv_get_params:
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
	movl	$0, %r9d
	movl	$8, %r8d
	movl	$256, %ecx
	movl	$3, %edx
	movl	$65540, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	aes_128_siv_get_params, .-aes_128_siv_get_params
	.type	aes128siv_newctx, @function
aes128siv_newctx:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$3, %ecx
	movl	$65540, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	aes_siv_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	aes128siv_newctx, .-aes128siv_newctx
	.globl	ossl_aes128siv_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_aes128siv_functions, @object
	.size	ossl_aes128siv_functions, 240
ossl_aes128siv_functions:
	.long	1
	.zero	4
	.quad	aes128siv_newctx
	.long	7
	.zero	4
	.quad	aes_siv_freectx
	.long	8
	.zero	4
	.quad	siv_dupctx
	.long	2
	.zero	4
	.quad	siv_einit
	.long	3
	.zero	4
	.quad	siv_dinit
	.long	4
	.zero	4
	.quad	siv_cipher
	.long	5
	.zero	4
	.quad	siv_stream_final
	.long	6
	.zero	4
	.quad	siv_cipher
	.long	9
	.zero	4
	.quad	aes_128_siv_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	aes_siv_get_ctx_params
	.long	13
	.zero	4
	.quad	aes_siv_gettable_ctx_params
	.long	11
	.zero	4
	.quad	aes_siv_set_ctx_params
	.long	14
	.zero	4
	.quad	aes_siv_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_192_siv_get_params, @function
aes_192_siv_get_params:
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
	movl	$0, %r9d
	movl	$8, %r8d
	movl	$384, %ecx
	movl	$3, %edx
	movl	$65540, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	aes_192_siv_get_params, .-aes_192_siv_get_params
	.type	aes192siv_newctx, @function
aes192siv_newctx:
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
	movl	$3, %ecx
	movl	$65540, %edx
	movl	$384, %esi
	movq	%rax, %rdi
	call	aes_siv_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	aes192siv_newctx, .-aes192siv_newctx
	.globl	ossl_aes192siv_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes192siv_functions, @object
	.size	ossl_aes192siv_functions, 240
ossl_aes192siv_functions:
	.long	1
	.zero	4
	.quad	aes192siv_newctx
	.long	7
	.zero	4
	.quad	aes_siv_freectx
	.long	8
	.zero	4
	.quad	siv_dupctx
	.long	2
	.zero	4
	.quad	siv_einit
	.long	3
	.zero	4
	.quad	siv_dinit
	.long	4
	.zero	4
	.quad	siv_cipher
	.long	5
	.zero	4
	.quad	siv_stream_final
	.long	6
	.zero	4
	.quad	siv_cipher
	.long	9
	.zero	4
	.quad	aes_192_siv_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	aes_siv_get_ctx_params
	.long	13
	.zero	4
	.quad	aes_siv_gettable_ctx_params
	.long	11
	.zero	4
	.quad	aes_siv_set_ctx_params
	.long	14
	.zero	4
	.quad	aes_siv_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_256_siv_get_params, @function
aes_256_siv_get_params:
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
	movl	$0, %r9d
	movl	$8, %r8d
	movl	$512, %ecx
	movl	$3, %edx
	movl	$65540, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	aes_256_siv_get_params, .-aes_256_siv_get_params
	.type	aes256siv_newctx, @function
aes256siv_newctx:
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
	movl	$3, %ecx
	movl	$65540, %edx
	movl	$512, %esi
	movq	%rax, %rdi
	call	aes_siv_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	aes256siv_newctx, .-aes256siv_newctx
	.globl	ossl_aes256siv_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes256siv_functions, @object
	.size	ossl_aes256siv_functions, 240
ossl_aes256siv_functions:
	.long	1
	.zero	4
	.quad	aes256siv_newctx
	.long	7
	.zero	4
	.quad	aes_siv_freectx
	.long	8
	.zero	4
	.quad	siv_dupctx
	.long	2
	.zero	4
	.quad	siv_einit
	.long	3
	.zero	4
	.quad	siv_dinit
	.long	4
	.zero	4
	.quad	siv_cipher
	.long	5
	.zero	4
	.quad	siv_stream_final
	.long	6
	.zero	4
	.quad	siv_cipher
	.long	9
	.zero	4
	.quad	aes_256_siv_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	aes_siv_get_ctx_params
	.long	13
	.zero	4
	.quad	aes_siv_gettable_ctx_params
	.long	11
	.zero	4
	.quad	aes_siv_set_ctx_params
	.long	14
	.zero	4
	.quad	aes_siv_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 9
__func__.3:
	.string	"siv_init"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 11
__func__.2:
	.string	"siv_cipher"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 23
__func__.1:
	.string	"aes_siv_get_ctx_params"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"aes_siv_set_ctx_params"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

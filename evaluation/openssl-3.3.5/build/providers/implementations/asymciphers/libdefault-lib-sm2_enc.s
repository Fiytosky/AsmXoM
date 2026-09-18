	.file	"sm2_enc.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/asymciphers/sm2_enc.c"
	.text
	.type	sm2_newctx, @function
sm2_newctx:
.LFB358:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$50, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	sm2_newctx, .-sm2_newctx
	.type	sm2_init, @function
sm2_init:
.LFB359:
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
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L5
	cmpq	$0, -32(%rbp)
	je	.L5
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_up_ref@PLT
	testl	%eax, %eax
	jne	.L6
.L5:
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sm2_set_ctx_params
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	sm2_init, .-sm2_init
	.section	.rodata
.LC1:
	.string	"SM3"
	.text
	.type	sm2_get_md, @function
sm2_get_md:
.LFB360:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L9
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	16(%rdx), %rdi
	leaq	.LC1(%rip), %rdx
	movl	$0, %ecx
	movq	%rax, %rsi
	call	ossl_prov_digest_fetch@PLT
	movq	%rax, -8(%rbp)
.L9:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	sm2_get_md, .-sm2_get_md
	.type	sm2_asym_encrypt, @function
sm2_asym_encrypt:
.LFB361:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	sm2_get_md
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	cmpq	$0, -32(%rbp)
	jne	.L14
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_sm2_ciphertext_size@PLT
	testl	%eax, %eax
	jne	.L15
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$93, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L13
.L15:
	movl	$1, %eax
	jmp	.L13
.L14:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_sm2_encrypt@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	sm2_asym_encrypt, .-sm2_asym_encrypt
	.type	sm2_asym_decrypt, @function
sm2_asym_decrypt:
.LFB362:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	sm2_get_md
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	cmpq	$0, -32(%rbp)
	jne	.L19
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sm2_plaintext_size@PLT
	testl	%eax, %eax
	jne	.L20
	movl	$0, %eax
	jmp	.L18
.L20:
	movl	$1, %eax
	jmp	.L18
.L19:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_sm2_decrypt@PLT
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	sm2_asym_decrypt, .-sm2_asym_decrypt
	.type	sm2_freectx, @function
sm2_freectx:
.LFB363:
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
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_reset@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$128, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	sm2_freectx, .-sm2_freectx
	.type	sm2_dupctx, @function
sm2_dupctx:
.LFB364:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$136, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L23
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movl	$24, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L25
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_up_ref@PLT
	testl	%eax, %eax
	jne	.L25
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$144, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L24
.L25:
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_digest_copy@PLT
	testl	%eax, %eax
	jne	.L26
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sm2_freectx
	movl	$0, %eax
	jmp	.L24
.L26:
	movq	-32(%rbp), %rax
.L24:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	sm2_dupctx, .-sm2_dupctx
	.section	.rodata
.LC2:
	.string	"digest"
.LC3:
	.string	""
	.text
	.type	sm2_get_ctx_params, @function
sm2_get_ctx_params:
.LFB365:
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
	cmpq	$0, -40(%rbp)
	jne	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	leaq	.LC2(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L30
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L31
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	jmp	.L32
.L31:
	leaq	.LC3(%rip), %rax
.L32:
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L30
	movl	$0, %eax
	jmp	.L29
.L30:
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	sm2_get_ctx_params, .-sm2_get_ctx_params
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_gettable_ctx_params, @object
	.size	known_gettable_ctx_params, 80
known_gettable_ctx_params:
	.quad	.LC2
	.long	4
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
	.type	sm2_gettable_ctx_params, @function
sm2_gettable_ctx_params:
.LFB366:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_gettable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	sm2_gettable_ctx_params, .-sm2_gettable_ctx_params
	.type	sm2_set_ctx_params, @function
sm2_set_ctx_params:
.LFB367:
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
	cmpq	$0, -8(%rbp)
	jne	.L36
	movl	$0, %eax
	jmp	.L37
.L36:
	cmpq	$0, -32(%rbp)
	jne	.L38
	movl	$1, %eax
	jmp	.L37
.L38:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_prov_digest_load_from_params@PLT
	testl	%eax, %eax
	jne	.L39
	movl	$0, %eax
	jmp	.L37
.L39:
	movl	$1, %eax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	sm2_set_ctx_params, .-sm2_set_ctx_params
	.section	.rodata
.LC4:
	.string	"properties"
.LC5:
	.string	"engine"
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params, @object
	.size	known_settable_ctx_params, 160
known_settable_ctx_params:
	.quad	.LC2
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC4
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC5
	.long	4
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
	.type	sm2_settable_ctx_params, @function
sm2_settable_ctx_params:
.LFB368:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_settable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	sm2_settable_ctx_params, .-sm2_settable_ctx_params
	.globl	ossl_sm2_asym_cipher_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_sm2_asym_cipher_functions, @object
	.size	ossl_sm2_asym_cipher_functions, 192
ossl_sm2_asym_cipher_functions:
	.long	1
	.zero	4
	.quad	sm2_newctx
	.long	2
	.zero	4
	.quad	sm2_init
	.long	3
	.zero	4
	.quad	sm2_asym_encrypt
	.long	4
	.zero	4
	.quad	sm2_init
	.long	5
	.zero	4
	.quad	sm2_asym_decrypt
	.long	6
	.zero	4
	.quad	sm2_freectx
	.long	7
	.zero	4
	.quad	sm2_dupctx
	.long	8
	.zero	4
	.quad	sm2_get_ctx_params
	.long	9
	.zero	4
	.quad	sm2_gettable_ctx_params
	.long	10
	.zero	4
	.quad	sm2_set_ctx_params
	.long	11
	.zero	4
	.quad	sm2_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 17
__func__.0:
	.string	"sm2_asym_encrypt"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

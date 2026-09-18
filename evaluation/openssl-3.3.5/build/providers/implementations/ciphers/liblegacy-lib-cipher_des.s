	.file	"cipher_des.c"
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
	.string	"../providers/implementations/ciphers/cipher_des.c"
	.text
	.type	des_newctx, @function
des_newctx:
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
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	leaq	.LC0(%rip), %rax
	movl	$40, %edx
	movq	%rax, %rsi
	movl	$328, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L8
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	16(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L8:
	movq	-8(%rbp), %rax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	des_newctx, .-des_newctx
	.type	des_dupctx, @function
des_dupctx:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	leaq	.LC0(%rip), %rax
	movl	$55, %edx
	movq	%rax, %rsi
	movl	$328, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L11
.L12:
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	-16(%rbp), %rax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	des_dupctx, .-des_dupctx
	.type	des_freectx, @function
des_freectx:
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
	movl	$68, %ecx
	movl	$328, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	des_freectx, .-des_freectx
	.type	des_init, @function
des_init:
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
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-8(%rbp), %rax
	movl	$0, 160(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
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
	je	.L17
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initiv@PLT
	testl	%eax, %eax
	jne	.L18
	movl	$0, %eax
	jmp	.L16
.L17:
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L18
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$32, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L18:
	cmpq	$0, -32(%rbp)
	je	.L19
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	%rax, -40(%rbp)
	je	.L20
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$94, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L16
.L20:
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	(%rax), %r8
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L21
	movl	$0, %eax
	jmp	.L16
.L21:
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %edx
	orl	$8, %edx
	movb	%dl, 108(%rax)
.L19:
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cipher_generic_set_ctx_params@PLT
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	des_init, .-des_init
	.type	des_einit, @function
des_einit:
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
	call	des_init
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	des_einit, .-des_einit
	.type	des_dinit, @function
des_dinit:
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
	call	des_init
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	des_dinit, .-des_dinit
	.type	des_generatekey, @function
des_generatekey:
.LFB408:
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
	movq	72(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L27
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_priv_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L28
.L27:
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DES_set_odd_parity@PLT
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	des_generatekey, .-des_generatekey
	.section	.rodata
.LC1:
	.string	"keylen"
.LC2:
	.string	"ivlen"
.LC3:
	.string	"padding"
.LC4:
	.string	"num"
.LC5:
	.string	"iv"
.LC6:
	.string	"updated-iv"
.LC7:
	.string	"randkey"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	des_known_gettable_ctx_params, @object
	.size	des_known_gettable_ctx_params, 320
des_known_gettable_ctx_params:
	.quad	.LC1
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
	.quad	.LC3
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC4
	.long	2
	.zero	4
	.quad	0
	.quad	4
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
	.quad	.LC7
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
	.type	des_gettable_ctx_params, @function
des_gettable_ctx_params:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	des_known_gettable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	des_gettable_ctx_params, .-des_gettable_ctx_params
	.type	des_get_ctx_params, @function
des_get_ctx_params:
.LFB410:
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
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_ctx_params@PLT
	testl	%eax, %eax
	jne	.L33
	movl	$0, %eax
	jmp	.L34
.L33:
	leaq	.LC7(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L35
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	des_generatekey
	testl	%eax, %eax
	jne	.L35
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$144, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L34
.L35:
	movl	$1, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	des_get_ctx_params, .-des_get_ctx_params
	.type	des_ecb_newctx, @function
des_ecb_newctx:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_prov_cipher_hw_des_ecb@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movl	$16, %r9d
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$64, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	des_newctx
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	des_ecb_newctx, .-des_ecb_newctx
	.type	des_ecb_get_params, @function
des_ecb_get_params:
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
	movl	$0, %r9d
	movl	$64, %r8d
	movl	$64, %ecx
	movl	$16, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	des_ecb_get_params, .-des_ecb_get_params
	.globl	ossl_des_ecb_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_des_ecb_functions, @object
	.size	ossl_des_ecb_functions, 240
ossl_des_ecb_functions:
	.long	2
	.zero	4
	.quad	des_einit
	.long	3
	.zero	4
	.quad	des_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_block_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_block_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	1
	.zero	4
	.quad	des_ecb_newctx
	.long	8
	.zero	4
	.quad	des_dupctx
	.long	7
	.zero	4
	.quad	des_freectx
	.long	9
	.zero	4
	.quad	des_ecb_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	des_get_ctx_params
	.long	13
	.zero	4
	.quad	des_gettable_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_generic_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	des_cbc_newctx, @function
des_cbc_newctx:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_prov_cipher_hw_des_cbc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movl	$16, %r9d
	movl	$2, %r8d
	movl	$64, %ecx
	movl	$64, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	des_newctx
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	des_cbc_newctx, .-des_cbc_newctx
	.type	des_cbc_get_params, @function
des_cbc_get_params:
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
	movl	$64, %ecx
	movl	$16, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	des_cbc_get_params, .-des_cbc_get_params
	.globl	ossl_des_cbc_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_des_cbc_functions, @object
	.size	ossl_des_cbc_functions, 240
ossl_des_cbc_functions:
	.long	2
	.zero	4
	.quad	des_einit
	.long	3
	.zero	4
	.quad	des_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_block_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_block_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	1
	.zero	4
	.quad	des_cbc_newctx
	.long	8
	.zero	4
	.quad	des_dupctx
	.long	7
	.zero	4
	.quad	des_freectx
	.long	9
	.zero	4
	.quad	des_cbc_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	des_get_ctx_params
	.long	13
	.zero	4
	.quad	des_gettable_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_generic_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	des_ofb64_newctx, @function
des_ofb64_newctx:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_prov_cipher_hw_des_ofb64@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movl	$16, %r9d
	movl	$4, %r8d
	movl	$64, %ecx
	movl	$8, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	des_newctx
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	des_ofb64_newctx, .-des_ofb64_newctx
	.type	des_ofb64_get_params, @function
des_ofb64_get_params:
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
	movl	$8, %r8d
	movl	$64, %ecx
	movl	$16, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	des_ofb64_get_params, .-des_ofb64_get_params
	.globl	ossl_des_ofb64_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_des_ofb64_functions, @object
	.size	ossl_des_ofb64_functions, 240
ossl_des_ofb64_functions:
	.long	2
	.zero	4
	.quad	des_einit
	.long	3
	.zero	4
	.quad	des_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	1
	.zero	4
	.quad	des_ofb64_newctx
	.long	8
	.zero	4
	.quad	des_dupctx
	.long	7
	.zero	4
	.quad	des_freectx
	.long	9
	.zero	4
	.quad	des_ofb64_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	des_get_ctx_params
	.long	13
	.zero	4
	.quad	des_gettable_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_generic_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	des_cfb64_newctx, @function
des_cfb64_newctx:
.LFB417:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_prov_cipher_hw_des_cfb64@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movl	$16, %r9d
	movl	$3, %r8d
	movl	$64, %ecx
	movl	$8, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	des_newctx
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	des_cfb64_newctx, .-des_cfb64_newctx
	.type	des_cfb64_get_params, @function
des_cfb64_get_params:
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
	movl	$64, %r9d
	movl	$8, %r8d
	movl	$64, %ecx
	movl	$16, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	des_cfb64_get_params, .-des_cfb64_get_params
	.globl	ossl_des_cfb64_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_des_cfb64_functions, @object
	.size	ossl_des_cfb64_functions, 240
ossl_des_cfb64_functions:
	.long	2
	.zero	4
	.quad	des_einit
	.long	3
	.zero	4
	.quad	des_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	1
	.zero	4
	.quad	des_cfb64_newctx
	.long	8
	.zero	4
	.quad	des_dupctx
	.long	7
	.zero	4
	.quad	des_freectx
	.long	9
	.zero	4
	.quad	des_cfb64_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	des_get_ctx_params
	.long	13
	.zero	4
	.quad	des_gettable_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_generic_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	des_cfb1_newctx, @function
des_cfb1_newctx:
.LFB419:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_prov_cipher_hw_des_cfb1@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movl	$16, %r9d
	movl	$3, %r8d
	movl	$64, %ecx
	movl	$8, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	des_newctx
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	des_cfb1_newctx, .-des_cfb1_newctx
	.type	des_cfb1_get_params, @function
des_cfb1_get_params:
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
	movl	$64, %r9d
	movl	$8, %r8d
	movl	$64, %ecx
	movl	$16, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	des_cfb1_get_params, .-des_cfb1_get_params
	.globl	ossl_des_cfb1_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_des_cfb1_functions, @object
	.size	ossl_des_cfb1_functions, 240
ossl_des_cfb1_functions:
	.long	2
	.zero	4
	.quad	des_einit
	.long	3
	.zero	4
	.quad	des_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	1
	.zero	4
	.quad	des_cfb1_newctx
	.long	8
	.zero	4
	.quad	des_dupctx
	.long	7
	.zero	4
	.quad	des_freectx
	.long	9
	.zero	4
	.quad	des_cfb1_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	des_get_ctx_params
	.long	13
	.zero	4
	.quad	des_gettable_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_generic_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	des_cfb8_newctx, @function
des_cfb8_newctx:
.LFB421:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_prov_cipher_hw_des_cfb8@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movl	$16, %r9d
	movl	$3, %r8d
	movl	$64, %ecx
	movl	$8, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	des_newctx
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	des_cfb8_newctx, .-des_cfb8_newctx
	.type	des_cfb8_get_params, @function
des_cfb8_get_params:
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
	movl	$64, %r9d
	movl	$8, %r8d
	movl	$64, %ecx
	movl	$16, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	des_cfb8_get_params, .-des_cfb8_get_params
	.globl	ossl_des_cfb8_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_des_cfb8_functions, @object
	.size	ossl_des_cfb8_functions, 240
ossl_des_cfb8_functions:
	.long	2
	.zero	4
	.quad	des_einit
	.long	3
	.zero	4
	.quad	des_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	1
	.zero	4
	.quad	des_cfb8_newctx
	.long	8
	.zero	4
	.quad	des_dupctx
	.long	7
	.zero	4
	.quad	des_freectx
	.long	9
	.zero	4
	.quad	des_cfb8_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	des_get_ctx_params
	.long	13
	.zero	4
	.quad	des_gettable_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_generic_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 9
__func__.1:
	.string	"des_init"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"des_get_ctx_params"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"cipher_aes.c"
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
	.string	"../providers/implementations/ciphers/cipher_aes.c"
	.text
	.type	aes_freectx, @function
aes_freectx:
.LFB402:
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
	movl	$31, %ecx
	movl	$448, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	aes_freectx, .-aes_freectx
	.type	aes_dupctx, @function
aes_dupctx:
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
	jne	.L7
	movl	$0, %eax
	jmp	.L8
.L7:
	leaq	.LC0(%rip), %rax
	movl	$42, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L9
	movl	$0, %eax
	jmp	.L8
.L9:
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	-16(%rbp), %rax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	aes_dupctx, .-aes_dupctx
	.type	aes_256_ecb_get_params, @function
aes_256_ecb_get_params:
.LFB404:
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
	movl	$128, %r8d
	movl	$256, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	aes_256_ecb_get_params, .-aes_256_ecb_get_params
	.type	aes_256_ecb_newctx, @function
aes_256_ecb_newctx:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L13
	leaq	.LC0(%rip), %rax
	movl	$51, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L14
.L13:
	movq	$0, -8(%rbp)
.L14:
	cmpq	$0, -8(%rbp)
	je	.L15
	movl	$256, %edi
	call	ossl_prov_cipher_hw_aes_ecb@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$128, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L15:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	aes_256_ecb_newctx, .-aes_256_ecb_newctx
	.globl	ossl_aes256ecb_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_aes256ecb_functions, @object
	.size	ossl_aes256ecb_functions, 240
ossl_aes256ecb_functions:
	.long	1
	.zero	4
	.quad	aes_256_ecb_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	ossl_cipher_generic_einit
	.long	3
	.zero	4
	.quad	ossl_cipher_generic_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_block_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_block_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_256_ecb_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
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
	.type	aes_192_ecb_get_params, @function
aes_192_ecb_get_params:
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
	movl	$0, %r9d
	movl	$128, %r8d
	movl	$192, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	aes_192_ecb_get_params, .-aes_192_ecb_get_params
	.type	aes_192_ecb_newctx, @function
aes_192_ecb_newctx:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L20
	leaq	.LC0(%rip), %rax
	movl	$53, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L21
.L20:
	movq	$0, -8(%rbp)
.L21:
	cmpq	$0, -8(%rbp)
	je	.L22
	movl	$192, %edi
	call	ossl_prov_cipher_hw_aes_ecb@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$128, %edx
	movl	$192, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L22:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	aes_192_ecb_newctx, .-aes_192_ecb_newctx
	.globl	ossl_aes192ecb_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes192ecb_functions, @object
	.size	ossl_aes192ecb_functions, 240
ossl_aes192ecb_functions:
	.long	1
	.zero	4
	.quad	aes_192_ecb_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	ossl_cipher_generic_einit
	.long	3
	.zero	4
	.quad	ossl_cipher_generic_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_block_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_block_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_192_ecb_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
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
	.type	aes_128_ecb_get_params, @function
aes_128_ecb_get_params:
.LFB408:
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
	movl	$128, %r8d
	movl	$128, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	aes_128_ecb_get_params, .-aes_128_ecb_get_params
	.type	aes_128_ecb_newctx, @function
aes_128_ecb_newctx:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L27
	leaq	.LC0(%rip), %rax
	movl	$55, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L28
.L27:
	movq	$0, -8(%rbp)
.L28:
	cmpq	$0, -8(%rbp)
	je	.L29
	movl	$128, %edi
	call	ossl_prov_cipher_hw_aes_ecb@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$128, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L29:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	aes_128_ecb_newctx, .-aes_128_ecb_newctx
	.globl	ossl_aes128ecb_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes128ecb_functions, @object
	.size	ossl_aes128ecb_functions, 240
ossl_aes128ecb_functions:
	.long	1
	.zero	4
	.quad	aes_128_ecb_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	ossl_cipher_generic_einit
	.long	3
	.zero	4
	.quad	ossl_cipher_generic_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_block_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_block_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_128_ecb_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
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
	.type	aes_256_cbc_get_params, @function
aes_256_cbc_get_params:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$128, %r9d
	movl	$128, %r8d
	movl	$256, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	aes_256_cbc_get_params, .-aes_256_cbc_get_params
	.type	aes_256_cbc_newctx, @function
aes_256_cbc_newctx:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L34
	leaq	.LC0(%rip), %rax
	movl	$57, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L35
.L34:
	movq	$0, -8(%rbp)
.L35:
	cmpq	$0, -8(%rbp)
	je	.L36
	movl	$256, %edi
	call	ossl_prov_cipher_hw_aes_cbc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$2, %r8d
	movl	$128, %ecx
	movl	$128, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L36:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	aes_256_cbc_newctx, .-aes_256_cbc_newctx
	.globl	ossl_aes256cbc_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes256cbc_functions, @object
	.size	ossl_aes256cbc_functions, 240
ossl_aes256cbc_functions:
	.long	1
	.zero	4
	.quad	aes_256_cbc_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	ossl_cipher_generic_einit
	.long	3
	.zero	4
	.quad	ossl_cipher_generic_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_block_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_block_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_256_cbc_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
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
	.type	aes_192_cbc_get_params, @function
aes_192_cbc_get_params:
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
	movl	$128, %r9d
	movl	$128, %r8d
	movl	$192, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	aes_192_cbc_get_params, .-aes_192_cbc_get_params
	.type	aes_192_cbc_newctx, @function
aes_192_cbc_newctx:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L41
	leaq	.LC0(%rip), %rax
	movl	$59, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L42
.L41:
	movq	$0, -8(%rbp)
.L42:
	cmpq	$0, -8(%rbp)
	je	.L43
	movl	$192, %edi
	call	ossl_prov_cipher_hw_aes_cbc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$2, %r8d
	movl	$128, %ecx
	movl	$128, %edx
	movl	$192, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L43:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	aes_192_cbc_newctx, .-aes_192_cbc_newctx
	.globl	ossl_aes192cbc_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes192cbc_functions, @object
	.size	ossl_aes192cbc_functions, 240
ossl_aes192cbc_functions:
	.long	1
	.zero	4
	.quad	aes_192_cbc_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	ossl_cipher_generic_einit
	.long	3
	.zero	4
	.quad	ossl_cipher_generic_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_block_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_block_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_192_cbc_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
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
	.type	aes_128_cbc_get_params, @function
aes_128_cbc_get_params:
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
	movl	$128, %r9d
	movl	$128, %r8d
	movl	$128, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	aes_128_cbc_get_params, .-aes_128_cbc_get_params
	.type	aes_128_cbc_newctx, @function
aes_128_cbc_newctx:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L48
	leaq	.LC0(%rip), %rax
	movl	$61, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L49
.L48:
	movq	$0, -8(%rbp)
.L49:
	cmpq	$0, -8(%rbp)
	je	.L50
	movl	$128, %edi
	call	ossl_prov_cipher_hw_aes_cbc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$2, %r8d
	movl	$128, %ecx
	movl	$128, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L50:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	aes_128_cbc_newctx, .-aes_128_cbc_newctx
	.globl	ossl_aes128cbc_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes128cbc_functions, @object
	.size	ossl_aes128cbc_functions, 240
ossl_aes128cbc_functions:
	.long	1
	.zero	4
	.quad	aes_128_cbc_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	ossl_cipher_generic_einit
	.long	3
	.zero	4
	.quad	ossl_cipher_generic_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_block_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_block_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_128_cbc_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
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
	.type	aes_256_ofb_get_params, @function
aes_256_ofb_get_params:
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
	movl	$128, %r9d
	movl	$8, %r8d
	movl	$256, %ecx
	movl	$0, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	aes_256_ofb_get_params, .-aes_256_ofb_get_params
	.type	aes_256_ofb_newctx, @function
aes_256_ofb_newctx:
.LFB417:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L55
	leaq	.LC0(%rip), %rax
	movl	$63, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L56
.L55:
	movq	$0, -8(%rbp)
.L56:
	cmpq	$0, -8(%rbp)
	je	.L57
	movl	$256, %edi
	call	ossl_prov_cipher_hw_aes_ofb128@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$4, %r8d
	movl	$128, %ecx
	movl	$8, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L57:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	aes_256_ofb_newctx, .-aes_256_ofb_newctx
	.globl	ossl_aes256ofb_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes256ofb_functions, @object
	.size	ossl_aes256ofb_functions, 240
ossl_aes256ofb_functions:
	.long	1
	.zero	4
	.quad	aes_256_ofb_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	ossl_cipher_generic_einit
	.long	3
	.zero	4
	.quad	ossl_cipher_generic_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_256_ofb_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
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
	.type	aes_192_ofb_get_params, @function
aes_192_ofb_get_params:
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
	movl	$128, %r9d
	movl	$8, %r8d
	movl	$192, %ecx
	movl	$0, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	aes_192_ofb_get_params, .-aes_192_ofb_get_params
	.type	aes_192_ofb_newctx, @function
aes_192_ofb_newctx:
.LFB419:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L62
	leaq	.LC0(%rip), %rax
	movl	$65, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L63
.L62:
	movq	$0, -8(%rbp)
.L63:
	cmpq	$0, -8(%rbp)
	je	.L64
	movl	$192, %edi
	call	ossl_prov_cipher_hw_aes_ofb128@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$4, %r8d
	movl	$128, %ecx
	movl	$8, %edx
	movl	$192, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L64:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	aes_192_ofb_newctx, .-aes_192_ofb_newctx
	.globl	ossl_aes192ofb_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes192ofb_functions, @object
	.size	ossl_aes192ofb_functions, 240
ossl_aes192ofb_functions:
	.long	1
	.zero	4
	.quad	aes_192_ofb_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	ossl_cipher_generic_einit
	.long	3
	.zero	4
	.quad	ossl_cipher_generic_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_192_ofb_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
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
	.type	aes_128_ofb_get_params, @function
aes_128_ofb_get_params:
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
	movl	$128, %r9d
	movl	$8, %r8d
	movl	$128, %ecx
	movl	$0, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	aes_128_ofb_get_params, .-aes_128_ofb_get_params
	.type	aes_128_ofb_newctx, @function
aes_128_ofb_newctx:
.LFB421:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L69
	leaq	.LC0(%rip), %rax
	movl	$67, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L70
.L69:
	movq	$0, -8(%rbp)
.L70:
	cmpq	$0, -8(%rbp)
	je	.L71
	movl	$128, %edi
	call	ossl_prov_cipher_hw_aes_ofb128@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$4, %r8d
	movl	$128, %ecx
	movl	$8, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L71:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	aes_128_ofb_newctx, .-aes_128_ofb_newctx
	.globl	ossl_aes128ofb_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes128ofb_functions, @object
	.size	ossl_aes128ofb_functions, 240
ossl_aes128ofb_functions:
	.long	1
	.zero	4
	.quad	aes_128_ofb_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	ossl_cipher_generic_einit
	.long	3
	.zero	4
	.quad	ossl_cipher_generic_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_128_ofb_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
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
	.type	aes_256_cfb_get_params, @function
aes_256_cfb_get_params:
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
	movl	$128, %r9d
	movl	$8, %r8d
	movl	$256, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	aes_256_cfb_get_params, .-aes_256_cfb_get_params
	.type	aes_256_cfb_newctx, @function
aes_256_cfb_newctx:
.LFB423:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L76
	leaq	.LC0(%rip), %rax
	movl	$69, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L77
.L76:
	movq	$0, -8(%rbp)
.L77:
	cmpq	$0, -8(%rbp)
	je	.L78
	movl	$256, %edi
	call	ossl_prov_cipher_hw_aes_cfb128@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$3, %r8d
	movl	$128, %ecx
	movl	$8, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L78:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE423:
	.size	aes_256_cfb_newctx, .-aes_256_cfb_newctx
	.globl	ossl_aes256cfb_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes256cfb_functions, @object
	.size	ossl_aes256cfb_functions, 240
ossl_aes256cfb_functions:
	.long	1
	.zero	4
	.quad	aes_256_cfb_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	ossl_cipher_generic_einit
	.long	3
	.zero	4
	.quad	ossl_cipher_generic_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_256_cfb_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
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
	.type	aes_192_cfb_get_params, @function
aes_192_cfb_get_params:
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
	movl	$128, %r9d
	movl	$8, %r8d
	movl	$192, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE424:
	.size	aes_192_cfb_get_params, .-aes_192_cfb_get_params
	.type	aes_192_cfb_newctx, @function
aes_192_cfb_newctx:
.LFB425:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L83
	leaq	.LC0(%rip), %rax
	movl	$71, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L84
.L83:
	movq	$0, -8(%rbp)
.L84:
	cmpq	$0, -8(%rbp)
	je	.L85
	movl	$192, %edi
	call	ossl_prov_cipher_hw_aes_cfb128@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$3, %r8d
	movl	$128, %ecx
	movl	$8, %edx
	movl	$192, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L85:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE425:
	.size	aes_192_cfb_newctx, .-aes_192_cfb_newctx
	.globl	ossl_aes192cfb_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes192cfb_functions, @object
	.size	ossl_aes192cfb_functions, 240
ossl_aes192cfb_functions:
	.long	1
	.zero	4
	.quad	aes_192_cfb_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	ossl_cipher_generic_einit
	.long	3
	.zero	4
	.quad	ossl_cipher_generic_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_192_cfb_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
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
	.type	aes_128_cfb_get_params, @function
aes_128_cfb_get_params:
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
	movl	$128, %r9d
	movl	$8, %r8d
	movl	$128, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE426:
	.size	aes_128_cfb_get_params, .-aes_128_cfb_get_params
	.type	aes_128_cfb_newctx, @function
aes_128_cfb_newctx:
.LFB427:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L90
	leaq	.LC0(%rip), %rax
	movl	$73, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L91
.L90:
	movq	$0, -8(%rbp)
.L91:
	cmpq	$0, -8(%rbp)
	je	.L92
	movl	$128, %edi
	call	ossl_prov_cipher_hw_aes_cfb128@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$3, %r8d
	movl	$128, %ecx
	movl	$8, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L92:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE427:
	.size	aes_128_cfb_newctx, .-aes_128_cfb_newctx
	.globl	ossl_aes128cfb_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes128cfb_functions, @object
	.size	ossl_aes128cfb_functions, 240
ossl_aes128cfb_functions:
	.long	1
	.zero	4
	.quad	aes_128_cfb_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	ossl_cipher_generic_einit
	.long	3
	.zero	4
	.quad	ossl_cipher_generic_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_128_cfb_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
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
	.type	aes_256_cfb1_get_params, @function
aes_256_cfb1_get_params:
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
	movl	$128, %r9d
	movl	$8, %r8d
	movl	$256, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE428:
	.size	aes_256_cfb1_get_params, .-aes_256_cfb1_get_params
	.type	aes_256_cfb1_newctx, @function
aes_256_cfb1_newctx:
.LFB429:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L97
	leaq	.LC0(%rip), %rax
	movl	$75, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L98
.L97:
	movq	$0, -8(%rbp)
.L98:
	cmpq	$0, -8(%rbp)
	je	.L99
	movl	$256, %edi
	call	ossl_prov_cipher_hw_aes_cfb1@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$3, %r8d
	movl	$128, %ecx
	movl	$8, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L99:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	aes_256_cfb1_newctx, .-aes_256_cfb1_newctx
	.globl	ossl_aes256cfb1_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes256cfb1_functions, @object
	.size	ossl_aes256cfb1_functions, 240
ossl_aes256cfb1_functions:
	.long	1
	.zero	4
	.quad	aes_256_cfb1_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	ossl_cipher_generic_einit
	.long	3
	.zero	4
	.quad	ossl_cipher_generic_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_256_cfb1_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
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
	.type	aes_192_cfb1_get_params, @function
aes_192_cfb1_get_params:
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
	movl	$128, %r9d
	movl	$8, %r8d
	movl	$192, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE430:
	.size	aes_192_cfb1_get_params, .-aes_192_cfb1_get_params
	.type	aes_192_cfb1_newctx, @function
aes_192_cfb1_newctx:
.LFB431:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L104
	leaq	.LC0(%rip), %rax
	movl	$77, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L105
.L104:
	movq	$0, -8(%rbp)
.L105:
	cmpq	$0, -8(%rbp)
	je	.L106
	movl	$192, %edi
	call	ossl_prov_cipher_hw_aes_cfb1@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$3, %r8d
	movl	$128, %ecx
	movl	$8, %edx
	movl	$192, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L106:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE431:
	.size	aes_192_cfb1_newctx, .-aes_192_cfb1_newctx
	.globl	ossl_aes192cfb1_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes192cfb1_functions, @object
	.size	ossl_aes192cfb1_functions, 240
ossl_aes192cfb1_functions:
	.long	1
	.zero	4
	.quad	aes_192_cfb1_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	ossl_cipher_generic_einit
	.long	3
	.zero	4
	.quad	ossl_cipher_generic_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_192_cfb1_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
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
	.type	aes_128_cfb1_get_params, @function
aes_128_cfb1_get_params:
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
	movl	$128, %r9d
	movl	$8, %r8d
	movl	$128, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE432:
	.size	aes_128_cfb1_get_params, .-aes_128_cfb1_get_params
	.type	aes_128_cfb1_newctx, @function
aes_128_cfb1_newctx:
.LFB433:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L111
	leaq	.LC0(%rip), %rax
	movl	$79, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L112
.L111:
	movq	$0, -8(%rbp)
.L112:
	cmpq	$0, -8(%rbp)
	je	.L113
	movl	$128, %edi
	call	ossl_prov_cipher_hw_aes_cfb1@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$3, %r8d
	movl	$128, %ecx
	movl	$8, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L113:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	aes_128_cfb1_newctx, .-aes_128_cfb1_newctx
	.globl	ossl_aes128cfb1_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes128cfb1_functions, @object
	.size	ossl_aes128cfb1_functions, 240
ossl_aes128cfb1_functions:
	.long	1
	.zero	4
	.quad	aes_128_cfb1_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	ossl_cipher_generic_einit
	.long	3
	.zero	4
	.quad	ossl_cipher_generic_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_128_cfb1_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
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
	.type	aes_256_cfb8_get_params, @function
aes_256_cfb8_get_params:
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
	movl	$128, %r9d
	movl	$8, %r8d
	movl	$256, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE434:
	.size	aes_256_cfb8_get_params, .-aes_256_cfb8_get_params
	.type	aes_256_cfb8_newctx, @function
aes_256_cfb8_newctx:
.LFB435:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L118
	leaq	.LC0(%rip), %rax
	movl	$81, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L119
.L118:
	movq	$0, -8(%rbp)
.L119:
	cmpq	$0, -8(%rbp)
	je	.L120
	movl	$256, %edi
	call	ossl_prov_cipher_hw_aes_cfb8@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$3, %r8d
	movl	$128, %ecx
	movl	$8, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L120:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE435:
	.size	aes_256_cfb8_newctx, .-aes_256_cfb8_newctx
	.globl	ossl_aes256cfb8_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes256cfb8_functions, @object
	.size	ossl_aes256cfb8_functions, 240
ossl_aes256cfb8_functions:
	.long	1
	.zero	4
	.quad	aes_256_cfb8_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	ossl_cipher_generic_einit
	.long	3
	.zero	4
	.quad	ossl_cipher_generic_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_256_cfb8_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
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
	.type	aes_192_cfb8_get_params, @function
aes_192_cfb8_get_params:
.LFB436:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$128, %r9d
	movl	$8, %r8d
	movl	$192, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE436:
	.size	aes_192_cfb8_get_params, .-aes_192_cfb8_get_params
	.type	aes_192_cfb8_newctx, @function
aes_192_cfb8_newctx:
.LFB437:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L125
	leaq	.LC0(%rip), %rax
	movl	$83, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L126
.L125:
	movq	$0, -8(%rbp)
.L126:
	cmpq	$0, -8(%rbp)
	je	.L127
	movl	$192, %edi
	call	ossl_prov_cipher_hw_aes_cfb8@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$3, %r8d
	movl	$128, %ecx
	movl	$8, %edx
	movl	$192, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L127:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE437:
	.size	aes_192_cfb8_newctx, .-aes_192_cfb8_newctx
	.globl	ossl_aes192cfb8_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes192cfb8_functions, @object
	.size	ossl_aes192cfb8_functions, 240
ossl_aes192cfb8_functions:
	.long	1
	.zero	4
	.quad	aes_192_cfb8_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	ossl_cipher_generic_einit
	.long	3
	.zero	4
	.quad	ossl_cipher_generic_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_192_cfb8_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
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
	.type	aes_128_cfb8_get_params, @function
aes_128_cfb8_get_params:
.LFB438:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$128, %r9d
	movl	$8, %r8d
	movl	$128, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE438:
	.size	aes_128_cfb8_get_params, .-aes_128_cfb8_get_params
	.type	aes_128_cfb8_newctx, @function
aes_128_cfb8_newctx:
.LFB439:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L132
	leaq	.LC0(%rip), %rax
	movl	$85, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L133
.L132:
	movq	$0, -8(%rbp)
.L133:
	cmpq	$0, -8(%rbp)
	je	.L134
	movl	$128, %edi
	call	ossl_prov_cipher_hw_aes_cfb8@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$3, %r8d
	movl	$128, %ecx
	movl	$8, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L134:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE439:
	.size	aes_128_cfb8_newctx, .-aes_128_cfb8_newctx
	.globl	ossl_aes128cfb8_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes128cfb8_functions, @object
	.size	ossl_aes128cfb8_functions, 240
ossl_aes128cfb8_functions:
	.long	1
	.zero	4
	.quad	aes_128_cfb8_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	ossl_cipher_generic_einit
	.long	3
	.zero	4
	.quad	ossl_cipher_generic_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_128_cfb8_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
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
	.type	aes_256_ctr_get_params, @function
aes_256_ctr_get_params:
.LFB440:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$128, %r9d
	movl	$8, %r8d
	movl	$256, %ecx
	movl	$0, %edx
	movl	$5, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE440:
	.size	aes_256_ctr_get_params, .-aes_256_ctr_get_params
	.type	aes_256_ctr_newctx, @function
aes_256_ctr_newctx:
.LFB441:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L139
	leaq	.LC0(%rip), %rax
	movl	$87, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L140
.L139:
	movq	$0, -8(%rbp)
.L140:
	cmpq	$0, -8(%rbp)
	je	.L141
	movl	$256, %edi
	call	ossl_prov_cipher_hw_aes_ctr@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$5, %r8d
	movl	$128, %ecx
	movl	$8, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L141:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE441:
	.size	aes_256_ctr_newctx, .-aes_256_ctr_newctx
	.globl	ossl_aes256ctr_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes256ctr_functions, @object
	.size	ossl_aes256ctr_functions, 240
ossl_aes256ctr_functions:
	.long	1
	.zero	4
	.quad	aes_256_ctr_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	ossl_cipher_generic_einit
	.long	3
	.zero	4
	.quad	ossl_cipher_generic_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_256_ctr_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
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
	.type	aes_192_ctr_get_params, @function
aes_192_ctr_get_params:
.LFB442:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$128, %r9d
	movl	$8, %r8d
	movl	$192, %ecx
	movl	$0, %edx
	movl	$5, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE442:
	.size	aes_192_ctr_get_params, .-aes_192_ctr_get_params
	.type	aes_192_ctr_newctx, @function
aes_192_ctr_newctx:
.LFB443:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L146
	leaq	.LC0(%rip), %rax
	movl	$89, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L147
.L146:
	movq	$0, -8(%rbp)
.L147:
	cmpq	$0, -8(%rbp)
	je	.L148
	movl	$192, %edi
	call	ossl_prov_cipher_hw_aes_ctr@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$5, %r8d
	movl	$128, %ecx
	movl	$8, %edx
	movl	$192, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L148:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE443:
	.size	aes_192_ctr_newctx, .-aes_192_ctr_newctx
	.globl	ossl_aes192ctr_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes192ctr_functions, @object
	.size	ossl_aes192ctr_functions, 240
ossl_aes192ctr_functions:
	.long	1
	.zero	4
	.quad	aes_192_ctr_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	ossl_cipher_generic_einit
	.long	3
	.zero	4
	.quad	ossl_cipher_generic_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_192_ctr_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
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
	.type	aes_128_ctr_get_params, @function
aes_128_ctr_get_params:
.LFB444:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$128, %r9d
	movl	$8, %r8d
	movl	$128, %ecx
	movl	$0, %edx
	movl	$5, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE444:
	.size	aes_128_ctr_get_params, .-aes_128_ctr_get_params
	.type	aes_128_ctr_newctx, @function
aes_128_ctr_newctx:
.LFB445:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L153
	leaq	.LC0(%rip), %rax
	movl	$91, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L154
.L153:
	movq	$0, -8(%rbp)
.L154:
	cmpq	$0, -8(%rbp)
	je	.L155
	movl	$128, %edi
	call	ossl_prov_cipher_hw_aes_ctr@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$5, %r8d
	movl	$128, %ecx
	movl	$8, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L155:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE445:
	.size	aes_128_ctr_newctx, .-aes_128_ctr_newctx
	.globl	ossl_aes128ctr_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes128ctr_functions, @object
	.size	ossl_aes128ctr_functions, 240
ossl_aes128ctr_functions:
	.long	1
	.zero	4
	.quad	aes_128_ctr_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	ossl_cipher_generic_einit
	.long	3
	.zero	4
	.quad	ossl_cipher_generic_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_128_ctr_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
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
	.string	"cts_mode"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	aes_cbc_cts_known_gettable_ctx_params, @object
	.size	aes_cbc_cts_known_gettable_ctx_params, 320
aes_cbc_cts_known_gettable_ctx_params:
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
	.type	aes_cbc_cts_gettable_ctx_params, @function
aes_cbc_cts_gettable_ctx_params:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	aes_cbc_cts_known_gettable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	aes_cbc_cts_gettable_ctx_params, .-aes_cbc_cts_gettable_ctx_params
	.type	aes_cbc_cts_einit, @function
aes_cbc_cts_einit:
.LFB502:
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
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_cipher_generic_einit@PLT
	testl	%eax, %eax
	jne	.L160
	movl	$0, %eax
	jmp	.L161
.L160:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	aes_cbc_cts_set_ctx_params
.L161:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	aes_cbc_cts_einit, .-aes_cbc_cts_einit
	.type	aes_cbc_cts_dinit, @function
aes_cbc_cts_dinit:
.LFB503:
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
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_cipher_generic_dinit@PLT
	testl	%eax, %eax
	jne	.L163
	movl	$0, %eax
	jmp	.L164
.L163:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	aes_cbc_cts_set_ctx_params
.L164:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	aes_cbc_cts_dinit, .-aes_cbc_cts_dinit
	.section	.rodata
	.align 8
.LC8:
	.string	"../providers/implementations/ciphers/cipher_aes_cts.inc"
	.text
	.type	aes_cbc_cts_get_ctx_params, @function
aes_cbc_cts_get_ctx_params:
.LFB504:
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
	leaq	.LC7(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L166
	movq	-8(%rbp), %rax
	movl	104(%rax), %eax
	movl	%eax, %edi
	call	ossl_cipher_cbc_cts_mode_id2name@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L167
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L166
.L167:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L168
.L166:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_ctx_params@PLT
.L168:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	aes_cbc_cts_get_ctx_params, .-aes_cbc_cts_get_ctx_params
	.section	.data.rel.ro.local
	.align 32
	.type	aes_cbc_cts_known_settable_ctx_params, @object
	.size	aes_cbc_cts_known_settable_ctx_params, 160
aes_cbc_cts_known_settable_ctx_params:
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
	.quad	.LC7
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
	.type	aes_cbc_cts_settable_ctx_params, @function
aes_cbc_cts_settable_ctx_params:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	aes_cbc_cts_known_settable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	aes_cbc_cts_settable_ctx_params, .-aes_cbc_cts_settable_ctx_params
	.type	aes_cbc_cts_set_ctx_params, @function
aes_cbc_cts_set_ctx_params:
.LFB506:
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
	leaq	.LC7(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L172
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L177
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cipher_cbc_cts_mode_name2id@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	js	.L178
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 104(%rax)
.L172:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cipher_generic_set_ctx_params@PLT
	jmp	.L176
.L177:
	nop
	jmp	.L174
.L178:
	nop
.L174:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$85, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L176:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	aes_cbc_cts_set_ctx_params, .-aes_cbc_cts_set_ctx_params
	.type	aes_cts_256_cbc_get_params, @function
aes_cts_256_cbc_get_params:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$128, %r9d
	movl	$128, %r8d
	movl	$256, %ecx
	movl	$4, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	aes_cts_256_cbc_get_params, .-aes_cts_256_cbc_get_params
	.globl	ossl_aes256cbc_cts_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes256cbc_cts_functions, @object
	.size	ossl_aes256cbc_cts_functions, 240
ossl_aes256cbc_cts_functions:
	.long	1
	.zero	4
	.quad	aes_256_cbc_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	aes_cbc_cts_einit
	.long	3
	.zero	4
	.quad	aes_cbc_cts_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_cbc_cts_block_update
	.long	5
	.zero	4
	.quad	ossl_cipher_cbc_cts_block_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_cts_256_cbc_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	aes_cbc_cts_get_ctx_params
	.long	11
	.zero	4
	.quad	aes_cbc_cts_set_ctx_params
	.long	13
	.zero	4
	.quad	aes_cbc_cts_gettable_ctx_params
	.long	14
	.zero	4
	.quad	aes_cbc_cts_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_cts_192_cbc_get_params, @function
aes_cts_192_cbc_get_params:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$128, %r9d
	movl	$128, %r8d
	movl	$192, %ecx
	movl	$4, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	aes_cts_192_cbc_get_params, .-aes_cts_192_cbc_get_params
	.globl	ossl_aes192cbc_cts_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes192cbc_cts_functions, @object
	.size	ossl_aes192cbc_cts_functions, 240
ossl_aes192cbc_cts_functions:
	.long	1
	.zero	4
	.quad	aes_192_cbc_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	aes_cbc_cts_einit
	.long	3
	.zero	4
	.quad	aes_cbc_cts_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_cbc_cts_block_update
	.long	5
	.zero	4
	.quad	ossl_cipher_cbc_cts_block_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_cts_192_cbc_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	aes_cbc_cts_get_ctx_params
	.long	11
	.zero	4
	.quad	aes_cbc_cts_set_ctx_params
	.long	13
	.zero	4
	.quad	aes_cbc_cts_gettable_ctx_params
	.long	14
	.zero	4
	.quad	aes_cbc_cts_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_cts_128_cbc_get_params, @function
aes_cts_128_cbc_get_params:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$128, %r9d
	movl	$128, %r8d
	movl	$128, %ecx
	movl	$4, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	aes_cts_128_cbc_get_params, .-aes_cts_128_cbc_get_params
	.globl	ossl_aes128cbc_cts_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes128cbc_cts_functions, @object
	.size	ossl_aes128cbc_cts_functions, 240
ossl_aes128cbc_cts_functions:
	.long	1
	.zero	4
	.quad	aes_128_cbc_newctx
	.long	7
	.zero	4
	.quad	aes_freectx
	.long	8
	.zero	4
	.quad	aes_dupctx
	.long	2
	.zero	4
	.quad	aes_cbc_cts_einit
	.long	3
	.zero	4
	.quad	aes_cbc_cts_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_cbc_cts_block_update
	.long	5
	.zero	4
	.quad	ossl_cipher_cbc_cts_block_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_cts_128_cbc_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	aes_cbc_cts_get_ctx_params
	.long	11
	.zero	4
	.quad	aes_cbc_cts_set_ctx_params
	.long	13
	.zero	4
	.quad	aes_cbc_cts_gettable_ctx_params
	.long	14
	.zero	4
	.quad	aes_cbc_cts_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 27
__func__.1:
	.string	"aes_cbc_cts_get_ctx_params"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 27
__func__.0:
	.string	"aes_cbc_cts_set_ctx_params"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

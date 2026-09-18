	.file	"cipher_aria.c"
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
	.string	"../providers/implementations/ciphers/cipher_aria.c"
	.text
	.type	aria_freectx, @function
aria_freectx:
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
	movl	$24, %ecx
	movl	$472, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	aria_freectx, .-aria_freectx
	.type	aria_dupctx, @function
aria_dupctx:
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
	movl	$35, %edx
	movq	%rax, %rsi
	movl	$472, %edi
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
	.size	aria_dupctx, .-aria_dupctx
	.type	aria_256_ecb_get_params, @function
aria_256_ecb_get_params:
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
	.size	aria_256_ecb_get_params, .-aria_256_ecb_get_params
	.type	aria_256_ecb_newctx, @function
aria_256_ecb_newctx:
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
	movl	$44, %edx
	movq	%rax, %rsi
	movl	$472, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L14
.L13:
	movq	$0, -8(%rbp)
.L14:
	cmpq	$0, -8(%rbp)
	je	.L15
	movl	$256, %edi
	call	ossl_prov_cipher_hw_aria_ecb@PLT
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
	.size	aria_256_ecb_newctx, .-aria_256_ecb_newctx
	.globl	ossl_aria256ecb_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_aria256ecb_functions, @object
	.size	ossl_aria256ecb_functions, 240
ossl_aria256ecb_functions:
	.long	1
	.zero	4
	.quad	aria_256_ecb_newctx
	.long	7
	.zero	4
	.quad	aria_freectx
	.long	8
	.zero	4
	.quad	aria_dupctx
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
	.quad	aria_256_ecb_get_params
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
	.type	aria_192_ecb_get_params, @function
aria_192_ecb_get_params:
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
	.size	aria_192_ecb_get_params, .-aria_192_ecb_get_params
	.type	aria_192_ecb_newctx, @function
aria_192_ecb_newctx:
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
	movl	$46, %edx
	movq	%rax, %rsi
	movl	$472, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L21
.L20:
	movq	$0, -8(%rbp)
.L21:
	cmpq	$0, -8(%rbp)
	je	.L22
	movl	$192, %edi
	call	ossl_prov_cipher_hw_aria_ecb@PLT
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
	.size	aria_192_ecb_newctx, .-aria_192_ecb_newctx
	.globl	ossl_aria192ecb_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aria192ecb_functions, @object
	.size	ossl_aria192ecb_functions, 240
ossl_aria192ecb_functions:
	.long	1
	.zero	4
	.quad	aria_192_ecb_newctx
	.long	7
	.zero	4
	.quad	aria_freectx
	.long	8
	.zero	4
	.quad	aria_dupctx
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
	.quad	aria_192_ecb_get_params
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
	.type	aria_128_ecb_get_params, @function
aria_128_ecb_get_params:
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
	.size	aria_128_ecb_get_params, .-aria_128_ecb_get_params
	.type	aria_128_ecb_newctx, @function
aria_128_ecb_newctx:
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
	movl	$48, %edx
	movq	%rax, %rsi
	movl	$472, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L28
.L27:
	movq	$0, -8(%rbp)
.L28:
	cmpq	$0, -8(%rbp)
	je	.L29
	movl	$128, %edi
	call	ossl_prov_cipher_hw_aria_ecb@PLT
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
	.size	aria_128_ecb_newctx, .-aria_128_ecb_newctx
	.globl	ossl_aria128ecb_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aria128ecb_functions, @object
	.size	ossl_aria128ecb_functions, 240
ossl_aria128ecb_functions:
	.long	1
	.zero	4
	.quad	aria_128_ecb_newctx
	.long	7
	.zero	4
	.quad	aria_freectx
	.long	8
	.zero	4
	.quad	aria_dupctx
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
	.quad	aria_128_ecb_get_params
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
	.type	aria_256_cbc_get_params, @function
aria_256_cbc_get_params:
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
	.size	aria_256_cbc_get_params, .-aria_256_cbc_get_params
	.type	aria_256_cbc_newctx, @function
aria_256_cbc_newctx:
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
	movl	$50, %edx
	movq	%rax, %rsi
	movl	$472, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L35
.L34:
	movq	$0, -8(%rbp)
.L35:
	cmpq	$0, -8(%rbp)
	je	.L36
	movl	$256, %edi
	call	ossl_prov_cipher_hw_aria_cbc@PLT
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
	.size	aria_256_cbc_newctx, .-aria_256_cbc_newctx
	.globl	ossl_aria256cbc_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aria256cbc_functions, @object
	.size	ossl_aria256cbc_functions, 240
ossl_aria256cbc_functions:
	.long	1
	.zero	4
	.quad	aria_256_cbc_newctx
	.long	7
	.zero	4
	.quad	aria_freectx
	.long	8
	.zero	4
	.quad	aria_dupctx
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
	.quad	aria_256_cbc_get_params
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
	.type	aria_192_cbc_get_params, @function
aria_192_cbc_get_params:
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
	.size	aria_192_cbc_get_params, .-aria_192_cbc_get_params
	.type	aria_192_cbc_newctx, @function
aria_192_cbc_newctx:
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
	movl	$52, %edx
	movq	%rax, %rsi
	movl	$472, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L42
.L41:
	movq	$0, -8(%rbp)
.L42:
	cmpq	$0, -8(%rbp)
	je	.L43
	movl	$192, %edi
	call	ossl_prov_cipher_hw_aria_cbc@PLT
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
	.size	aria_192_cbc_newctx, .-aria_192_cbc_newctx
	.globl	ossl_aria192cbc_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aria192cbc_functions, @object
	.size	ossl_aria192cbc_functions, 240
ossl_aria192cbc_functions:
	.long	1
	.zero	4
	.quad	aria_192_cbc_newctx
	.long	7
	.zero	4
	.quad	aria_freectx
	.long	8
	.zero	4
	.quad	aria_dupctx
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
	.quad	aria_192_cbc_get_params
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
	.type	aria_128_cbc_get_params, @function
aria_128_cbc_get_params:
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
	.size	aria_128_cbc_get_params, .-aria_128_cbc_get_params
	.type	aria_128_cbc_newctx, @function
aria_128_cbc_newctx:
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
	movl	$54, %edx
	movq	%rax, %rsi
	movl	$472, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L49
.L48:
	movq	$0, -8(%rbp)
.L49:
	cmpq	$0, -8(%rbp)
	je	.L50
	movl	$128, %edi
	call	ossl_prov_cipher_hw_aria_cbc@PLT
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
	.size	aria_128_cbc_newctx, .-aria_128_cbc_newctx
	.globl	ossl_aria128cbc_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aria128cbc_functions, @object
	.size	ossl_aria128cbc_functions, 240
ossl_aria128cbc_functions:
	.long	1
	.zero	4
	.quad	aria_128_cbc_newctx
	.long	7
	.zero	4
	.quad	aria_freectx
	.long	8
	.zero	4
	.quad	aria_dupctx
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
	.quad	aria_128_cbc_get_params
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
	.type	aria_256_ofb_get_params, @function
aria_256_ofb_get_params:
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
	.size	aria_256_ofb_get_params, .-aria_256_ofb_get_params
	.type	aria_256_ofb_newctx, @function
aria_256_ofb_newctx:
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
	movl	$56, %edx
	movq	%rax, %rsi
	movl	$472, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L56
.L55:
	movq	$0, -8(%rbp)
.L56:
	cmpq	$0, -8(%rbp)
	je	.L57
	movl	$256, %edi
	call	ossl_prov_cipher_hw_aria_ofb128@PLT
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
	.size	aria_256_ofb_newctx, .-aria_256_ofb_newctx
	.globl	ossl_aria256ofb_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aria256ofb_functions, @object
	.size	ossl_aria256ofb_functions, 240
ossl_aria256ofb_functions:
	.long	1
	.zero	4
	.quad	aria_256_ofb_newctx
	.long	7
	.zero	4
	.quad	aria_freectx
	.long	8
	.zero	4
	.quad	aria_dupctx
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
	.quad	aria_256_ofb_get_params
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
	.type	aria_192_ofb_get_params, @function
aria_192_ofb_get_params:
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
	.size	aria_192_ofb_get_params, .-aria_192_ofb_get_params
	.type	aria_192_ofb_newctx, @function
aria_192_ofb_newctx:
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
	movl	$58, %edx
	movq	%rax, %rsi
	movl	$472, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L63
.L62:
	movq	$0, -8(%rbp)
.L63:
	cmpq	$0, -8(%rbp)
	je	.L64
	movl	$192, %edi
	call	ossl_prov_cipher_hw_aria_ofb128@PLT
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
	.size	aria_192_ofb_newctx, .-aria_192_ofb_newctx
	.globl	ossl_aria192ofb_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aria192ofb_functions, @object
	.size	ossl_aria192ofb_functions, 240
ossl_aria192ofb_functions:
	.long	1
	.zero	4
	.quad	aria_192_ofb_newctx
	.long	7
	.zero	4
	.quad	aria_freectx
	.long	8
	.zero	4
	.quad	aria_dupctx
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
	.quad	aria_192_ofb_get_params
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
	.type	aria_128_ofb_get_params, @function
aria_128_ofb_get_params:
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
	.size	aria_128_ofb_get_params, .-aria_128_ofb_get_params
	.type	aria_128_ofb_newctx, @function
aria_128_ofb_newctx:
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
	movl	$60, %edx
	movq	%rax, %rsi
	movl	$472, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L70
.L69:
	movq	$0, -8(%rbp)
.L70:
	cmpq	$0, -8(%rbp)
	je	.L71
	movl	$128, %edi
	call	ossl_prov_cipher_hw_aria_ofb128@PLT
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
	.size	aria_128_ofb_newctx, .-aria_128_ofb_newctx
	.globl	ossl_aria128ofb_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aria128ofb_functions, @object
	.size	ossl_aria128ofb_functions, 240
ossl_aria128ofb_functions:
	.long	1
	.zero	4
	.quad	aria_128_ofb_newctx
	.long	7
	.zero	4
	.quad	aria_freectx
	.long	8
	.zero	4
	.quad	aria_dupctx
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
	.quad	aria_128_ofb_get_params
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
	.type	aria_256_cfb_get_params, @function
aria_256_cfb_get_params:
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
	.size	aria_256_cfb_get_params, .-aria_256_cfb_get_params
	.type	aria_256_cfb_newctx, @function
aria_256_cfb_newctx:
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
	movl	$62, %edx
	movq	%rax, %rsi
	movl	$472, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L77
.L76:
	movq	$0, -8(%rbp)
.L77:
	cmpq	$0, -8(%rbp)
	je	.L78
	movl	$256, %edi
	call	ossl_prov_cipher_hw_aria_cfb128@PLT
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
	.size	aria_256_cfb_newctx, .-aria_256_cfb_newctx
	.globl	ossl_aria256cfb_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aria256cfb_functions, @object
	.size	ossl_aria256cfb_functions, 240
ossl_aria256cfb_functions:
	.long	1
	.zero	4
	.quad	aria_256_cfb_newctx
	.long	7
	.zero	4
	.quad	aria_freectx
	.long	8
	.zero	4
	.quad	aria_dupctx
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
	.quad	aria_256_cfb_get_params
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
	.type	aria_192_cfb_get_params, @function
aria_192_cfb_get_params:
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
	.size	aria_192_cfb_get_params, .-aria_192_cfb_get_params
	.type	aria_192_cfb_newctx, @function
aria_192_cfb_newctx:
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
	movl	$64, %edx
	movq	%rax, %rsi
	movl	$472, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L84
.L83:
	movq	$0, -8(%rbp)
.L84:
	cmpq	$0, -8(%rbp)
	je	.L85
	movl	$192, %edi
	call	ossl_prov_cipher_hw_aria_cfb128@PLT
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
	.size	aria_192_cfb_newctx, .-aria_192_cfb_newctx
	.globl	ossl_aria192cfb_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aria192cfb_functions, @object
	.size	ossl_aria192cfb_functions, 240
ossl_aria192cfb_functions:
	.long	1
	.zero	4
	.quad	aria_192_cfb_newctx
	.long	7
	.zero	4
	.quad	aria_freectx
	.long	8
	.zero	4
	.quad	aria_dupctx
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
	.quad	aria_192_cfb_get_params
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
	.type	aria_128_cfb_get_params, @function
aria_128_cfb_get_params:
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
	.size	aria_128_cfb_get_params, .-aria_128_cfb_get_params
	.type	aria_128_cfb_newctx, @function
aria_128_cfb_newctx:
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
	movl	$66, %edx
	movq	%rax, %rsi
	movl	$472, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L91
.L90:
	movq	$0, -8(%rbp)
.L91:
	cmpq	$0, -8(%rbp)
	je	.L92
	movl	$128, %edi
	call	ossl_prov_cipher_hw_aria_cfb128@PLT
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
	.size	aria_128_cfb_newctx, .-aria_128_cfb_newctx
	.globl	ossl_aria128cfb_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aria128cfb_functions, @object
	.size	ossl_aria128cfb_functions, 240
ossl_aria128cfb_functions:
	.long	1
	.zero	4
	.quad	aria_128_cfb_newctx
	.long	7
	.zero	4
	.quad	aria_freectx
	.long	8
	.zero	4
	.quad	aria_dupctx
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
	.quad	aria_128_cfb_get_params
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
	.type	aria_256_cfb1_get_params, @function
aria_256_cfb1_get_params:
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
	.size	aria_256_cfb1_get_params, .-aria_256_cfb1_get_params
	.type	aria_256_cfb1_newctx, @function
aria_256_cfb1_newctx:
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
	movl	$68, %edx
	movq	%rax, %rsi
	movl	$472, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L98
.L97:
	movq	$0, -8(%rbp)
.L98:
	cmpq	$0, -8(%rbp)
	je	.L99
	movl	$256, %edi
	call	ossl_prov_cipher_hw_aria_cfb1@PLT
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
	.size	aria_256_cfb1_newctx, .-aria_256_cfb1_newctx
	.globl	ossl_aria256cfb1_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aria256cfb1_functions, @object
	.size	ossl_aria256cfb1_functions, 240
ossl_aria256cfb1_functions:
	.long	1
	.zero	4
	.quad	aria_256_cfb1_newctx
	.long	7
	.zero	4
	.quad	aria_freectx
	.long	8
	.zero	4
	.quad	aria_dupctx
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
	.quad	aria_256_cfb1_get_params
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
	.type	aria_192_cfb1_get_params, @function
aria_192_cfb1_get_params:
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
	.size	aria_192_cfb1_get_params, .-aria_192_cfb1_get_params
	.type	aria_192_cfb1_newctx, @function
aria_192_cfb1_newctx:
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
	movl	$70, %edx
	movq	%rax, %rsi
	movl	$472, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L105
.L104:
	movq	$0, -8(%rbp)
.L105:
	cmpq	$0, -8(%rbp)
	je	.L106
	movl	$192, %edi
	call	ossl_prov_cipher_hw_aria_cfb1@PLT
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
	.size	aria_192_cfb1_newctx, .-aria_192_cfb1_newctx
	.globl	ossl_aria192cfb1_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aria192cfb1_functions, @object
	.size	ossl_aria192cfb1_functions, 240
ossl_aria192cfb1_functions:
	.long	1
	.zero	4
	.quad	aria_192_cfb1_newctx
	.long	7
	.zero	4
	.quad	aria_freectx
	.long	8
	.zero	4
	.quad	aria_dupctx
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
	.quad	aria_192_cfb1_get_params
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
	.type	aria_128_cfb1_get_params, @function
aria_128_cfb1_get_params:
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
	.size	aria_128_cfb1_get_params, .-aria_128_cfb1_get_params
	.type	aria_128_cfb1_newctx, @function
aria_128_cfb1_newctx:
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
	movl	$72, %edx
	movq	%rax, %rsi
	movl	$472, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L112
.L111:
	movq	$0, -8(%rbp)
.L112:
	cmpq	$0, -8(%rbp)
	je	.L113
	movl	$128, %edi
	call	ossl_prov_cipher_hw_aria_cfb1@PLT
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
	.size	aria_128_cfb1_newctx, .-aria_128_cfb1_newctx
	.globl	ossl_aria128cfb1_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aria128cfb1_functions, @object
	.size	ossl_aria128cfb1_functions, 240
ossl_aria128cfb1_functions:
	.long	1
	.zero	4
	.quad	aria_128_cfb1_newctx
	.long	7
	.zero	4
	.quad	aria_freectx
	.long	8
	.zero	4
	.quad	aria_dupctx
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
	.quad	aria_128_cfb1_get_params
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
	.type	aria_256_cfb8_get_params, @function
aria_256_cfb8_get_params:
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
	.size	aria_256_cfb8_get_params, .-aria_256_cfb8_get_params
	.type	aria_256_cfb8_newctx, @function
aria_256_cfb8_newctx:
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
	movl	$74, %edx
	movq	%rax, %rsi
	movl	$472, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L119
.L118:
	movq	$0, -8(%rbp)
.L119:
	cmpq	$0, -8(%rbp)
	je	.L120
	movl	$256, %edi
	call	ossl_prov_cipher_hw_aria_cfb8@PLT
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
	.size	aria_256_cfb8_newctx, .-aria_256_cfb8_newctx
	.globl	ossl_aria256cfb8_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aria256cfb8_functions, @object
	.size	ossl_aria256cfb8_functions, 240
ossl_aria256cfb8_functions:
	.long	1
	.zero	4
	.quad	aria_256_cfb8_newctx
	.long	7
	.zero	4
	.quad	aria_freectx
	.long	8
	.zero	4
	.quad	aria_dupctx
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
	.quad	aria_256_cfb8_get_params
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
	.type	aria_192_cfb8_get_params, @function
aria_192_cfb8_get_params:
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
	.size	aria_192_cfb8_get_params, .-aria_192_cfb8_get_params
	.type	aria_192_cfb8_newctx, @function
aria_192_cfb8_newctx:
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
	movl	$76, %edx
	movq	%rax, %rsi
	movl	$472, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L126
.L125:
	movq	$0, -8(%rbp)
.L126:
	cmpq	$0, -8(%rbp)
	je	.L127
	movl	$192, %edi
	call	ossl_prov_cipher_hw_aria_cfb8@PLT
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
	.size	aria_192_cfb8_newctx, .-aria_192_cfb8_newctx
	.globl	ossl_aria192cfb8_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aria192cfb8_functions, @object
	.size	ossl_aria192cfb8_functions, 240
ossl_aria192cfb8_functions:
	.long	1
	.zero	4
	.quad	aria_192_cfb8_newctx
	.long	7
	.zero	4
	.quad	aria_freectx
	.long	8
	.zero	4
	.quad	aria_dupctx
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
	.quad	aria_192_cfb8_get_params
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
	.type	aria_128_cfb8_get_params, @function
aria_128_cfb8_get_params:
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
	.size	aria_128_cfb8_get_params, .-aria_128_cfb8_get_params
	.type	aria_128_cfb8_newctx, @function
aria_128_cfb8_newctx:
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
	movl	$78, %edx
	movq	%rax, %rsi
	movl	$472, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L133
.L132:
	movq	$0, -8(%rbp)
.L133:
	cmpq	$0, -8(%rbp)
	je	.L134
	movl	$128, %edi
	call	ossl_prov_cipher_hw_aria_cfb8@PLT
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
	.size	aria_128_cfb8_newctx, .-aria_128_cfb8_newctx
	.globl	ossl_aria128cfb8_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aria128cfb8_functions, @object
	.size	ossl_aria128cfb8_functions, 240
ossl_aria128cfb8_functions:
	.long	1
	.zero	4
	.quad	aria_128_cfb8_newctx
	.long	7
	.zero	4
	.quad	aria_freectx
	.long	8
	.zero	4
	.quad	aria_dupctx
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
	.quad	aria_128_cfb8_get_params
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
	.type	aria_256_ctr_get_params, @function
aria_256_ctr_get_params:
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
	.size	aria_256_ctr_get_params, .-aria_256_ctr_get_params
	.type	aria_256_ctr_newctx, @function
aria_256_ctr_newctx:
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
	movl	$80, %edx
	movq	%rax, %rsi
	movl	$472, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L140
.L139:
	movq	$0, -8(%rbp)
.L140:
	cmpq	$0, -8(%rbp)
	je	.L141
	movl	$256, %edi
	call	ossl_prov_cipher_hw_aria_ctr@PLT
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
	.size	aria_256_ctr_newctx, .-aria_256_ctr_newctx
	.globl	ossl_aria256ctr_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aria256ctr_functions, @object
	.size	ossl_aria256ctr_functions, 240
ossl_aria256ctr_functions:
	.long	1
	.zero	4
	.quad	aria_256_ctr_newctx
	.long	7
	.zero	4
	.quad	aria_freectx
	.long	8
	.zero	4
	.quad	aria_dupctx
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
	.quad	aria_256_ctr_get_params
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
	.type	aria_192_ctr_get_params, @function
aria_192_ctr_get_params:
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
	.size	aria_192_ctr_get_params, .-aria_192_ctr_get_params
	.type	aria_192_ctr_newctx, @function
aria_192_ctr_newctx:
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
	movl	$82, %edx
	movq	%rax, %rsi
	movl	$472, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L147
.L146:
	movq	$0, -8(%rbp)
.L147:
	cmpq	$0, -8(%rbp)
	je	.L148
	movl	$192, %edi
	call	ossl_prov_cipher_hw_aria_ctr@PLT
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
	.size	aria_192_ctr_newctx, .-aria_192_ctr_newctx
	.globl	ossl_aria192ctr_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aria192ctr_functions, @object
	.size	ossl_aria192ctr_functions, 240
ossl_aria192ctr_functions:
	.long	1
	.zero	4
	.quad	aria_192_ctr_newctx
	.long	7
	.zero	4
	.quad	aria_freectx
	.long	8
	.zero	4
	.quad	aria_dupctx
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
	.quad	aria_192_ctr_get_params
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
	.type	aria_128_ctr_get_params, @function
aria_128_ctr_get_params:
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
	.size	aria_128_ctr_get_params, .-aria_128_ctr_get_params
	.type	aria_128_ctr_newctx, @function
aria_128_ctr_newctx:
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
	movl	$84, %edx
	movq	%rax, %rsi
	movl	$472, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L154
.L153:
	movq	$0, -8(%rbp)
.L154:
	cmpq	$0, -8(%rbp)
	je	.L155
	movl	$128, %edi
	call	ossl_prov_cipher_hw_aria_ctr@PLT
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
	.size	aria_128_ctr_newctx, .-aria_128_ctr_newctx
	.globl	ossl_aria128ctr_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aria128ctr_functions, @object
	.size	ossl_aria128ctr_functions, 240
ossl_aria128ctr_functions:
	.long	1
	.zero	4
	.quad	aria_128_ctr_newctx
	.long	7
	.zero	4
	.quad	aria_freectx
	.long	8
	.zero	4
	.quad	aria_dupctx
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
	.quad	aria_128_ctr_get_params
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
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

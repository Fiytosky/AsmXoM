	.file	"cipher_aes_ccm.c"
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
	.string	"../providers/implementations/ciphers/cipher_aes_ccm.c"
	.text
	.type	aes_ccm_newctx, @function
aes_ccm_newctx:
.LFB402:
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
	movl	$30, %edx
	movq	%rax, %rsi
	movl	$416, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L8
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_aes_hw_ccm@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ccm_initctx@PLT
.L8:
	movq	-8(%rbp), %rax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	aes_ccm_newctx, .-aes_ccm_newctx
	.type	aes_ccm_dupctx, @function
aes_ccm_dupctx:
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
	movq	$0, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$43, %ecx
	movl	$416, %esi
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L11
.L12:
	movq	-16(%rbp), %rax
	leaq	168(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 128(%rax)
	movq	-16(%rbp), %rax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	aes_ccm_dupctx, .-aes_ccm_dupctx
	.type	aes_ccm_freectx, @function
aes_ccm_freectx:
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
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$61, %ecx
	movl	$416, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	aes_ccm_freectx, .-aes_ccm_freectx
	.type	aes_128_ccm_get_params, @function
aes_128_ccm_get_params:
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
	movl	$96, %r9d
	movl	$8, %r8d
	movl	$128, %ecx
	movl	$3, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	aes_128_ccm_get_params, .-aes_128_ccm_get_params
	.type	aes128ccm_newctx, @function
aes128ccm_newctx:
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
	movl	$128, %esi
	movq	%rax, %rdi
	call	aes_ccm_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	aes128ccm_newctx, .-aes128ccm_newctx
	.type	aes128ccm_dupctx, @function
aes128ccm_dupctx:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	aes_ccm_dupctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	aes128ccm_dupctx, .-aes128ccm_dupctx
	.globl	ossl_aes128ccm_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_aes128ccm_functions, @object
	.size	ossl_aes128ccm_functions, 240
ossl_aes128ccm_functions:
	.long	1
	.zero	4
	.quad	aes128ccm_newctx
	.long	7
	.zero	4
	.quad	aes_ccm_freectx
	.long	8
	.zero	4
	.quad	aes128ccm_dupctx
	.long	2
	.zero	4
	.quad	ossl_ccm_einit
	.long	3
	.zero	4
	.quad	ossl_ccm_dinit
	.long	4
	.zero	4
	.quad	ossl_ccm_stream_update
	.long	5
	.zero	4
	.quad	ossl_ccm_stream_final
	.long	6
	.zero	4
	.quad	ossl_ccm_cipher
	.long	9
	.zero	4
	.quad	aes_128_ccm_get_params
	.long	10
	.zero	4
	.quad	ossl_ccm_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_ccm_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	13
	.zero	4
	.quad	ossl_cipher_aead_gettable_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_aead_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_192_ccm_get_params, @function
aes_192_ccm_get_params:
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
	movl	$96, %r9d
	movl	$8, %r8d
	movl	$192, %ecx
	movl	$3, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	aes_192_ccm_get_params, .-aes_192_ccm_get_params
	.type	aes192ccm_newctx, @function
aes192ccm_newctx:
.LFB409:
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
	call	aes_ccm_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	aes192ccm_newctx, .-aes192ccm_newctx
	.type	aes192ccm_dupctx, @function
aes192ccm_dupctx:
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
	movq	%rax, %rdi
	call	aes_ccm_dupctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	aes192ccm_dupctx, .-aes192ccm_dupctx
	.globl	ossl_aes192ccm_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes192ccm_functions, @object
	.size	ossl_aes192ccm_functions, 240
ossl_aes192ccm_functions:
	.long	1
	.zero	4
	.quad	aes192ccm_newctx
	.long	7
	.zero	4
	.quad	aes_ccm_freectx
	.long	8
	.zero	4
	.quad	aes192ccm_dupctx
	.long	2
	.zero	4
	.quad	ossl_ccm_einit
	.long	3
	.zero	4
	.quad	ossl_ccm_dinit
	.long	4
	.zero	4
	.quad	ossl_ccm_stream_update
	.long	5
	.zero	4
	.quad	ossl_ccm_stream_final
	.long	6
	.zero	4
	.quad	ossl_ccm_cipher
	.long	9
	.zero	4
	.quad	aes_192_ccm_get_params
	.long	10
	.zero	4
	.quad	ossl_ccm_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_ccm_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	13
	.zero	4
	.quad	ossl_cipher_aead_gettable_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_aead_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_256_ccm_get_params, @function
aes_256_ccm_get_params:
.LFB411:
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
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	aes_256_ccm_get_params, .-aes_256_ccm_get_params
	.type	aes256ccm_newctx, @function
aes256ccm_newctx:
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
	movl	$256, %esi
	movq	%rax, %rdi
	call	aes_ccm_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	aes256ccm_newctx, .-aes256ccm_newctx
	.type	aes256ccm_dupctx, @function
aes256ccm_dupctx:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	aes_ccm_dupctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	aes256ccm_dupctx, .-aes256ccm_dupctx
	.globl	ossl_aes256ccm_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes256ccm_functions, @object
	.size	ossl_aes256ccm_functions, 240
ossl_aes256ccm_functions:
	.long	1
	.zero	4
	.quad	aes256ccm_newctx
	.long	7
	.zero	4
	.quad	aes_ccm_freectx
	.long	8
	.zero	4
	.quad	aes256ccm_dupctx
	.long	2
	.zero	4
	.quad	ossl_ccm_einit
	.long	3
	.zero	4
	.quad	ossl_ccm_dinit
	.long	4
	.zero	4
	.quad	ossl_ccm_stream_update
	.long	5
	.zero	4
	.quad	ossl_ccm_stream_final
	.long	6
	.zero	4
	.quad	ossl_ccm_cipher
	.long	9
	.zero	4
	.quad	aes_256_ccm_get_params
	.long	10
	.zero	4
	.quad	ossl_ccm_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_ccm_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	13
	.zero	4
	.quad	ossl_cipher_aead_gettable_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_aead_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

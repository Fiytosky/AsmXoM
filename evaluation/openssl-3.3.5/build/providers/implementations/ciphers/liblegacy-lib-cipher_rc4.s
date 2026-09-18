	.file	"cipher_rc4.c"
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
	.string	"../providers/implementations/ciphers/cipher_rc4.c"
	.text
	.type	rc4_freectx, @function
rc4_freectx:
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
	movl	$34, %ecx
	movl	$1224, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	rc4_freectx, .-rc4_freectx
	.type	rc4_dupctx, @function
rc4_dupctx:
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
	movl	$45, %edx
	movq	%rax, %rsi
	movl	$1224, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L9
	movl	$0, %eax
	jmp	.L8
.L9:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$153, %eax
	movq	%rdx, %rdi
	movq	%rax, %rcx
	rep movsq
	movq	-16(%rbp), %rax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	rc4_dupctx, .-rc4_dupctx
	.type	rc4_einit, @function
rc4_einit:
.LFB404:
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
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cipher_var_keylen_set_ctx_params@PLT
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	rc4_einit, .-rc4_einit
	.type	rc4_dinit, @function
rc4_dinit:
.LFB405:
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
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cipher_var_keylen_set_ctx_params@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	rc4_dinit, .-rc4_dinit
	.type	rc4_40_get_params, @function
rc4_40_get_params:
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
	movl	$8, %r8d
	movl	$40, %ecx
	movl	$256, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	rc4_40_get_params, .-rc4_40_get_params
	.type	rc4_40_newctx, @function
rc4_40_newctx:
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
	jne	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	leaq	.LC0(%rip), %rax
	movl	$117, %edx
	movq	%rax, %rsi
	movl	$1224, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L21
	movl	$40, %edi
	call	ossl_prov_cipher_hw_rc4@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	%rdx
	movl	$256, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$8, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L21:
	movq	-8(%rbp), %rax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	rc4_40_newctx, .-rc4_40_newctx
	.globl	ossl_rc440_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_rc440_functions, @object
	.size	ossl_rc440_functions, 240
ossl_rc440_functions:
	.long	1
	.zero	4
	.quad	rc4_40_newctx
	.long	7
	.zero	4
	.quad	rc4_freectx
	.long	8
	.zero	4
	.quad	rc4_dupctx
	.long	2
	.zero	4
	.quad	rc4_einit
	.long	3
	.zero	4
	.quad	rc4_dinit
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
	.quad	rc4_40_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_var_keylen_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	13
	.zero	4
	.quad	ossl_cipher_generic_gettable_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_var_keylen_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rc4_128_get_params, @function
rc4_128_get_params:
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
	movl	$8, %r8d
	movl	$128, %ecx
	movl	$256, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	rc4_128_get_params, .-rc4_128_get_params
	.type	rc4_128_newctx, @function
rc4_128_newctx:
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
	jne	.L25
	movl	$0, %eax
	jmp	.L26
.L25:
	leaq	.LC0(%rip), %rax
	movl	$119, %edx
	movq	%rax, %rsi
	movl	$1224, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L27
	movl	$128, %edi
	call	ossl_prov_cipher_hw_rc4@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	%rdx
	movl	$256, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$8, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L27:
	movq	-8(%rbp), %rax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	rc4_128_newctx, .-rc4_128_newctx
	.globl	ossl_rc4128_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_rc4128_functions, @object
	.size	ossl_rc4128_functions, 240
ossl_rc4128_functions:
	.long	1
	.zero	4
	.quad	rc4_128_newctx
	.long	7
	.zero	4
	.quad	rc4_freectx
	.long	8
	.zero	4
	.quad	rc4_dupctx
	.long	2
	.zero	4
	.quad	rc4_einit
	.long	3
	.zero	4
	.quad	rc4_dinit
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
	.quad	rc4_128_get_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_var_keylen_set_ctx_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	13
	.zero	4
	.quad	ossl_cipher_generic_gettable_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_var_keylen_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

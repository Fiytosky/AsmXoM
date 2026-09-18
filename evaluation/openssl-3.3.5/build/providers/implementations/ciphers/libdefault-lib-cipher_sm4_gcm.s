	.file	"cipher_sm4_gcm.c"
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
	.string	"../providers/implementations/ciphers/cipher_sm4_gcm.c"
	.text
	.type	sm4_gcm_newctx, @function
sm4_gcm_newctx:
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
	movl	$25, %edx
	movq	%rax, %rsi
	movl	$832, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L8
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_sm4_hw_gcm@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_gcm_initctx@PLT
.L8:
	movq	-8(%rbp), %rax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	sm4_gcm_newctx, .-sm4_gcm_newctx
	.type	sm4_gcm_dupctx, @function
sm4_gcm_dupctx:
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
	movq	-8(%rbp), %rax
	movl	$40, %ecx
	movl	$832, %esi
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L12
	movq	-16(%rbp), %rax
	movq	640(%rax), %rax
	testq	%rax, %rax
	je	.L12
	movq	-16(%rbp), %rax
	leaq	704(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 640(%rax)
.L12:
	movq	-16(%rbp), %rax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	sm4_gcm_dupctx, .-sm4_gcm_dupctx
	.type	sm4_gcm_freectx, @function
sm4_gcm_freectx:
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
	movl	$51, %ecx
	movl	$832, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	sm4_gcm_freectx, .-sm4_gcm_freectx
	.type	sm4_128_gcm_get_params, @function
sm4_128_gcm_get_params:
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
	movl	$6, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	sm4_128_gcm_get_params, .-sm4_128_gcm_get_params
	.type	sm4128gcm_newctx, @function
sm4128gcm_newctx:
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
	call	sm4_gcm_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	sm4128gcm_newctx, .-sm4128gcm_newctx
	.type	sm4128gcm_dupctx, @function
sm4128gcm_dupctx:
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
	call	sm4_gcm_dupctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	sm4128gcm_dupctx, .-sm4128gcm_dupctx
	.globl	ossl_sm4128gcm_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_sm4128gcm_functions, @object
	.size	ossl_sm4128gcm_functions, 240
ossl_sm4128gcm_functions:
	.long	1
	.zero	4
	.quad	sm4128gcm_newctx
	.long	7
	.zero	4
	.quad	sm4_gcm_freectx
	.long	8
	.zero	4
	.quad	sm4128gcm_dupctx
	.long	2
	.zero	4
	.quad	ossl_gcm_einit
	.long	3
	.zero	4
	.quad	ossl_gcm_dinit
	.long	4
	.zero	4
	.quad	ossl_gcm_stream_update
	.long	5
	.zero	4
	.quad	ossl_gcm_stream_final
	.long	6
	.zero	4
	.quad	ossl_gcm_cipher
	.long	9
	.zero	4
	.quad	sm4_128_gcm_get_params
	.long	10
	.zero	4
	.quad	ossl_gcm_get_ctx_params
	.long	11
	.zero	4
	.quad	ossl_gcm_set_ctx_params
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

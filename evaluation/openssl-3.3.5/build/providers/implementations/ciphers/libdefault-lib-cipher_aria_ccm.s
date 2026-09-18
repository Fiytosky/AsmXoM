	.file	"cipher_aria_ccm.c"
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
	.string	"../providers/implementations/ciphers/cipher_aria_ccm.c"
	.text
	.type	aria_ccm_newctx, @function
aria_ccm_newctx:
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
	movl	$432, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L8
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_aria_hw_ccm@PLT
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
	.size	aria_ccm_newctx, .-aria_ccm_newctx
	.type	aria_ccm_dupctx, @function
aria_ccm_dupctx:
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
	movl	$39, %ecx
	movl	$432, %esi
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L12
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L12
	movq	-16(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 128(%rax)
.L12:
	movq	-16(%rbp), %rax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	aria_ccm_dupctx, .-aria_ccm_dupctx
	.type	aria_ccm_freectx, @function
aria_ccm_freectx:
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
	movl	$50, %ecx
	movl	$432, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	aria_ccm_freectx, .-aria_ccm_freectx
	.type	aria_128_ccm_get_params, @function
aria_128_ccm_get_params:
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
	.size	aria_128_ccm_get_params, .-aria_128_ccm_get_params
	.type	aria128ccm_newctx, @function
aria128ccm_newctx:
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
	call	aria_ccm_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	aria128ccm_newctx, .-aria128ccm_newctx
	.type	aria128ccm_dupctx, @function
aria128ccm_dupctx:
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
	call	aria_ccm_dupctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	aria128ccm_dupctx, .-aria128ccm_dupctx
	.globl	ossl_aria128ccm_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_aria128ccm_functions, @object
	.size	ossl_aria128ccm_functions, 240
ossl_aria128ccm_functions:
	.long	1
	.zero	4
	.quad	aria128ccm_newctx
	.long	7
	.zero	4
	.quad	aria_ccm_freectx
	.long	8
	.zero	4
	.quad	aria128ccm_dupctx
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
	.quad	aria_128_ccm_get_params
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
	.type	aria_192_ccm_get_params, @function
aria_192_ccm_get_params:
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
	.size	aria_192_ccm_get_params, .-aria_192_ccm_get_params
	.type	aria192ccm_newctx, @function
aria192ccm_newctx:
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
	call	aria_ccm_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	aria192ccm_newctx, .-aria192ccm_newctx
	.type	aria192ccm_dupctx, @function
aria192ccm_dupctx:
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
	call	aria_ccm_dupctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	aria192ccm_dupctx, .-aria192ccm_dupctx
	.globl	ossl_aria192ccm_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aria192ccm_functions, @object
	.size	ossl_aria192ccm_functions, 240
ossl_aria192ccm_functions:
	.long	1
	.zero	4
	.quad	aria192ccm_newctx
	.long	7
	.zero	4
	.quad	aria_ccm_freectx
	.long	8
	.zero	4
	.quad	aria192ccm_dupctx
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
	.quad	aria_192_ccm_get_params
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
	.type	aria_256_ccm_get_params, @function
aria_256_ccm_get_params:
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
	.size	aria_256_ccm_get_params, .-aria_256_ccm_get_params
	.type	aria256ccm_newctx, @function
aria256ccm_newctx:
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
	call	aria_ccm_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	aria256ccm_newctx, .-aria256ccm_newctx
	.type	aria256ccm_dupctx, @function
aria256ccm_dupctx:
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
	call	aria_ccm_dupctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	aria256ccm_dupctx, .-aria256ccm_dupctx
	.globl	ossl_aria256ccm_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aria256ccm_functions, @object
	.size	ossl_aria256ccm_functions, 240
ossl_aria256ccm_functions:
	.long	1
	.zero	4
	.quad	aria256ccm_newctx
	.long	7
	.zero	4
	.quad	aria_ccm_freectx
	.long	8
	.zero	4
	.quad	aria256ccm_dupctx
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
	.quad	aria_256_ccm_get_params
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

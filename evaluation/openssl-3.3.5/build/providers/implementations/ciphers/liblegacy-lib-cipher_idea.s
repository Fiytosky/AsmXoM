	.file	"cipher_idea.c"
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
	.string	"../providers/implementations/ciphers/cipher_idea.c"
	.text
	.type	idea_freectx, @function
idea_freectx:
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
	movl	$408, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	idea_freectx, .-idea_freectx
	.type	idea_dupctx, @function
idea_dupctx:
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
	movl	$408, %edi
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
	movl	$51, %eax
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
	.size	idea_dupctx, .-idea_dupctx
	.type	idea_128_ecb_get_params, @function
idea_128_ecb_get_params:
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
	movl	$64, %r8d
	movl	$128, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	idea_128_ecb_get_params, .-idea_128_ecb_get_params
	.type	idea_128_ecb_newctx, @function
idea_128_ecb_newctx:
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
	movl	$408, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L14
.L13:
	movq	$0, -8(%rbp)
.L14:
	cmpq	$0, -8(%rbp)
	je	.L15
	movl	$128, %edi
	call	ossl_prov_cipher_hw_idea_ecb@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$64, %edx
	movl	$128, %esi
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
	.size	idea_128_ecb_newctx, .-idea_128_ecb_newctx
	.globl	ossl_idea128ecb_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_idea128ecb_functions, @object
	.size	ossl_idea128ecb_functions, 240
ossl_idea128ecb_functions:
	.long	1
	.zero	4
	.quad	idea_128_ecb_newctx
	.long	7
	.zero	4
	.quad	idea_freectx
	.long	8
	.zero	4
	.quad	idea_dupctx
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
	.quad	idea_128_ecb_get_params
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
	.type	idea_128_cbc_get_params, @function
idea_128_cbc_get_params:
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
	movl	$64, %r9d
	movl	$64, %r8d
	movl	$128, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	idea_128_cbc_get_params, .-idea_128_cbc_get_params
	.type	idea_128_cbc_newctx, @function
idea_128_cbc_newctx:
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
	movl	$408, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L21
.L20:
	movq	$0, -8(%rbp)
.L21:
	cmpq	$0, -8(%rbp)
	je	.L22
	movl	$128, %edi
	call	ossl_prov_cipher_hw_idea_cbc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$2, %r8d
	movl	$64, %ecx
	movl	$64, %edx
	movl	$128, %esi
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
	.size	idea_128_cbc_newctx, .-idea_128_cbc_newctx
	.globl	ossl_idea128cbc_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_idea128cbc_functions, @object
	.size	ossl_idea128cbc_functions, 240
ossl_idea128cbc_functions:
	.long	1
	.zero	4
	.quad	idea_128_cbc_newctx
	.long	7
	.zero	4
	.quad	idea_freectx
	.long	8
	.zero	4
	.quad	idea_dupctx
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
	.quad	idea_128_cbc_get_params
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
	.type	idea_128_ofb64_get_params, @function
idea_128_ofb64_get_params:
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
	movl	$64, %r9d
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
.LFE408:
	.size	idea_128_ofb64_get_params, .-idea_128_ofb64_get_params
	.type	idea_128_ofb64_newctx, @function
idea_128_ofb64_newctx:
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
	movl	$408, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L28
.L27:
	movq	$0, -8(%rbp)
.L28:
	cmpq	$0, -8(%rbp)
	je	.L29
	movl	$128, %edi
	call	ossl_prov_cipher_hw_idea_ofb64@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$4, %r8d
	movl	$64, %ecx
	movl	$8, %edx
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
	.size	idea_128_ofb64_newctx, .-idea_128_ofb64_newctx
	.globl	ossl_idea128ofb64_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_idea128ofb64_functions, @object
	.size	ossl_idea128ofb64_functions, 240
ossl_idea128ofb64_functions:
	.long	1
	.zero	4
	.quad	idea_128_ofb64_newctx
	.long	7
	.zero	4
	.quad	idea_freectx
	.long	8
	.zero	4
	.quad	idea_dupctx
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
	.quad	idea_128_ofb64_get_params
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
	.type	idea_128_cfb64_get_params, @function
idea_128_cfb64_get_params:
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
	movl	$64, %r9d
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
.LFE410:
	.size	idea_128_cfb64_get_params, .-idea_128_cfb64_get_params
	.type	idea_128_cfb64_newctx, @function
idea_128_cfb64_newctx:
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
	movl	$408, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L35
.L34:
	movq	$0, -8(%rbp)
.L35:
	cmpq	$0, -8(%rbp)
	je	.L36
	movl	$128, %edi
	call	ossl_prov_cipher_hw_idea_cfb64@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	$3, %r8d
	movl	$64, %ecx
	movl	$8, %edx
	movl	$128, %esi
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
	.size	idea_128_cfb64_newctx, .-idea_128_cfb64_newctx
	.globl	ossl_idea128cfb64_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_idea128cfb64_functions, @object
	.size	ossl_idea128cfb64_functions, 240
ossl_idea128cfb64_functions:
	.long	1
	.zero	4
	.quad	idea_128_cfb64_newctx
	.long	7
	.zero	4
	.quad	idea_freectx
	.long	8
	.zero	4
	.quad	idea_dupctx
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
	.quad	idea_128_cfb64_get_params
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

	.file	"cipher_tdes_default.c"
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
	.type	tdes_ede3_ofb_newctx, @function
tdes_ede3_ofb_newctx:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_prov_cipher_hw_tdes_ede3_ofb@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movl	$16, %r9d
	movl	$64, %r8d
	movl	$8, %ecx
	movl	$192, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_tdes_newctx@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	tdes_ede3_ofb_newctx, .-tdes_ede3_ofb_newctx
	.type	tdes_ede3_ofb_get_params, @function
tdes_ede3_ofb_get_params:
.LFB403:
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
	movl	$192, %ecx
	movl	$16, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	tdes_ede3_ofb_get_params, .-tdes_ede3_ofb_get_params
	.globl	ossl_tdes_ede3_ofb_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_tdes_ede3_ofb_functions, @object
	.size	ossl_tdes_ede3_ofb_functions, 240
ossl_tdes_ede3_ofb_functions:
	.long	2
	.zero	4
	.quad	ossl_tdes_einit
	.long	3
	.zero	4
	.quad	ossl_tdes_dinit
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
	.quad	tdes_ede3_ofb_newctx
	.long	8
	.zero	4
	.quad	ossl_tdes_dupctx
	.long	7
	.zero	4
	.quad	ossl_tdes_freectx
	.long	9
	.zero	4
	.quad	tdes_ede3_ofb_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_tdes_get_ctx_params
	.long	13
	.zero	4
	.quad	ossl_tdes_gettable_ctx_params
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
	.type	tdes_ede3_cfb_newctx, @function
tdes_ede3_cfb_newctx:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_prov_cipher_hw_tdes_ede3_cfb@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movl	$16, %r9d
	movl	$64, %r8d
	movl	$8, %ecx
	movl	$192, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_tdes_newctx@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	tdes_ede3_cfb_newctx, .-tdes_ede3_cfb_newctx
	.type	tdes_ede3_cfb_get_params, @function
tdes_ede3_cfb_get_params:
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
	movl	$64, %r9d
	movl	$8, %r8d
	movl	$192, %ecx
	movl	$16, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	tdes_ede3_cfb_get_params, .-tdes_ede3_cfb_get_params
	.globl	ossl_tdes_ede3_cfb_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_tdes_ede3_cfb_functions, @object
	.size	ossl_tdes_ede3_cfb_functions, 240
ossl_tdes_ede3_cfb_functions:
	.long	2
	.zero	4
	.quad	ossl_tdes_einit
	.long	3
	.zero	4
	.quad	ossl_tdes_dinit
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
	.quad	tdes_ede3_cfb_newctx
	.long	8
	.zero	4
	.quad	ossl_tdes_dupctx
	.long	7
	.zero	4
	.quad	ossl_tdes_freectx
	.long	9
	.zero	4
	.quad	tdes_ede3_cfb_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_tdes_get_ctx_params
	.long	13
	.zero	4
	.quad	ossl_tdes_gettable_ctx_params
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
	.type	tdes_ede3_cfb1_newctx, @function
tdes_ede3_cfb1_newctx:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_prov_cipher_hw_tdes_ede3_cfb1@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movl	$16, %r9d
	movl	$64, %r8d
	movl	$8, %ecx
	movl	$192, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_tdes_newctx@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	tdes_ede3_cfb1_newctx, .-tdes_ede3_cfb1_newctx
	.type	tdes_ede3_cfb1_get_params, @function
tdes_ede3_cfb1_get_params:
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
	movl	$64, %r9d
	movl	$8, %r8d
	movl	$192, %ecx
	movl	$16, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	tdes_ede3_cfb1_get_params, .-tdes_ede3_cfb1_get_params
	.globl	ossl_tdes_ede3_cfb1_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_tdes_ede3_cfb1_functions, @object
	.size	ossl_tdes_ede3_cfb1_functions, 240
ossl_tdes_ede3_cfb1_functions:
	.long	2
	.zero	4
	.quad	ossl_tdes_einit
	.long	3
	.zero	4
	.quad	ossl_tdes_dinit
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
	.quad	tdes_ede3_cfb1_newctx
	.long	8
	.zero	4
	.quad	ossl_tdes_dupctx
	.long	7
	.zero	4
	.quad	ossl_tdes_freectx
	.long	9
	.zero	4
	.quad	tdes_ede3_cfb1_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_tdes_get_ctx_params
	.long	13
	.zero	4
	.quad	ossl_tdes_gettable_ctx_params
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
	.type	tdes_ede3_cfb8_newctx, @function
tdes_ede3_cfb8_newctx:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_prov_cipher_hw_tdes_ede3_cfb8@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movl	$16, %r9d
	movl	$64, %r8d
	movl	$8, %ecx
	movl	$192, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_tdes_newctx@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	tdes_ede3_cfb8_newctx, .-tdes_ede3_cfb8_newctx
	.type	tdes_ede3_cfb8_get_params, @function
tdes_ede3_cfb8_get_params:
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
	movl	$64, %r9d
	movl	$8, %r8d
	movl	$192, %ecx
	movl	$16, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	tdes_ede3_cfb8_get_params, .-tdes_ede3_cfb8_get_params
	.globl	ossl_tdes_ede3_cfb8_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_tdes_ede3_cfb8_functions, @object
	.size	ossl_tdes_ede3_cfb8_functions, 240
ossl_tdes_ede3_cfb8_functions:
	.long	2
	.zero	4
	.quad	ossl_tdes_einit
	.long	3
	.zero	4
	.quad	ossl_tdes_dinit
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
	.quad	tdes_ede3_cfb8_newctx
	.long	8
	.zero	4
	.quad	ossl_tdes_dupctx
	.long	7
	.zero	4
	.quad	ossl_tdes_freectx
	.long	9
	.zero	4
	.quad	tdes_ede3_cfb8_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_tdes_get_ctx_params
	.long	13
	.zero	4
	.quad	ossl_tdes_gettable_ctx_params
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
	.type	tdes_ede2_ecb_newctx, @function
tdes_ede2_ecb_newctx:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_prov_cipher_hw_tdes_ede2_ecb@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movl	$16, %r9d
	movl	$0, %r8d
	movl	$64, %ecx
	movl	$128, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_tdes_newctx@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	tdes_ede2_ecb_newctx, .-tdes_ede2_ecb_newctx
	.type	tdes_ede2_ecb_get_params, @function
tdes_ede2_ecb_get_params:
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
	movl	$0, %r9d
	movl	$64, %r8d
	movl	$128, %ecx
	movl	$16, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	tdes_ede2_ecb_get_params, .-tdes_ede2_ecb_get_params
	.globl	ossl_tdes_ede2_ecb_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_tdes_ede2_ecb_functions, @object
	.size	ossl_tdes_ede2_ecb_functions, 240
ossl_tdes_ede2_ecb_functions:
	.long	2
	.zero	4
	.quad	ossl_tdes_einit
	.long	3
	.zero	4
	.quad	ossl_tdes_dinit
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
	.quad	tdes_ede2_ecb_newctx
	.long	8
	.zero	4
	.quad	ossl_tdes_dupctx
	.long	7
	.zero	4
	.quad	ossl_tdes_freectx
	.long	9
	.zero	4
	.quad	tdes_ede2_ecb_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_tdes_get_ctx_params
	.long	13
	.zero	4
	.quad	ossl_tdes_gettable_ctx_params
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
	.type	tdes_ede2_cbc_newctx, @function
tdes_ede2_cbc_newctx:
.LFB412:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_prov_cipher_hw_tdes_ede2_cbc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movl	$16, %r9d
	movl	$64, %r8d
	movl	$64, %ecx
	movl	$128, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_tdes_newctx@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	tdes_ede2_cbc_newctx, .-tdes_ede2_cbc_newctx
	.type	tdes_ede2_cbc_get_params, @function
tdes_ede2_cbc_get_params:
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
	movl	$64, %r9d
	movl	$64, %r8d
	movl	$128, %ecx
	movl	$16, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	tdes_ede2_cbc_get_params, .-tdes_ede2_cbc_get_params
	.globl	ossl_tdes_ede2_cbc_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_tdes_ede2_cbc_functions, @object
	.size	ossl_tdes_ede2_cbc_functions, 240
ossl_tdes_ede2_cbc_functions:
	.long	2
	.zero	4
	.quad	ossl_tdes_einit
	.long	3
	.zero	4
	.quad	ossl_tdes_dinit
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
	.quad	tdes_ede2_cbc_newctx
	.long	8
	.zero	4
	.quad	ossl_tdes_dupctx
	.long	7
	.zero	4
	.quad	ossl_tdes_freectx
	.long	9
	.zero	4
	.quad	tdes_ede2_cbc_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_tdes_get_ctx_params
	.long	13
	.zero	4
	.quad	ossl_tdes_gettable_ctx_params
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
	.type	tdes_ede2_ofb_newctx, @function
tdes_ede2_ofb_newctx:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_prov_cipher_hw_tdes_ede2_ofb@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movl	$16, %r9d
	movl	$64, %r8d
	movl	$8, %ecx
	movl	$128, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_tdes_newctx@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	tdes_ede2_ofb_newctx, .-tdes_ede2_ofb_newctx
	.type	tdes_ede2_ofb_get_params, @function
tdes_ede2_ofb_get_params:
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
	movl	$64, %r9d
	movl	$8, %r8d
	movl	$128, %ecx
	movl	$16, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	tdes_ede2_ofb_get_params, .-tdes_ede2_ofb_get_params
	.globl	ossl_tdes_ede2_ofb_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_tdes_ede2_ofb_functions, @object
	.size	ossl_tdes_ede2_ofb_functions, 240
ossl_tdes_ede2_ofb_functions:
	.long	2
	.zero	4
	.quad	ossl_tdes_einit
	.long	3
	.zero	4
	.quad	ossl_tdes_dinit
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
	.quad	tdes_ede2_ofb_newctx
	.long	8
	.zero	4
	.quad	ossl_tdes_dupctx
	.long	7
	.zero	4
	.quad	ossl_tdes_freectx
	.long	9
	.zero	4
	.quad	tdes_ede2_ofb_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_tdes_get_ctx_params
	.long	13
	.zero	4
	.quad	ossl_tdes_gettable_ctx_params
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
	.type	tdes_ede2_cfb_newctx, @function
tdes_ede2_cfb_newctx:
.LFB416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_prov_cipher_hw_tdes_ede2_cfb@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movl	$16, %r9d
	movl	$64, %r8d
	movl	$8, %ecx
	movl	$128, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_tdes_newctx@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	tdes_ede2_cfb_newctx, .-tdes_ede2_cfb_newctx
	.type	tdes_ede2_cfb_get_params, @function
tdes_ede2_cfb_get_params:
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
	movl	$64, %r9d
	movl	$8, %r8d
	movl	$128, %ecx
	movl	$16, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	tdes_ede2_cfb_get_params, .-tdes_ede2_cfb_get_params
	.globl	ossl_tdes_ede2_cfb_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_tdes_ede2_cfb_functions, @object
	.size	ossl_tdes_ede2_cfb_functions, 240
ossl_tdes_ede2_cfb_functions:
	.long	2
	.zero	4
	.quad	ossl_tdes_einit
	.long	3
	.zero	4
	.quad	ossl_tdes_dinit
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
	.quad	tdes_ede2_cfb_newctx
	.long	8
	.zero	4
	.quad	ossl_tdes_dupctx
	.long	7
	.zero	4
	.quad	ossl_tdes_freectx
	.long	9
	.zero	4
	.quad	tdes_ede2_cfb_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_tdes_get_ctx_params
	.long	13
	.zero	4
	.quad	ossl_tdes_gettable_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_generic_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

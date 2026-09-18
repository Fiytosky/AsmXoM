	.file	"cmac_prov.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/macs/cmac_prov.c"
	.text
	.type	cmac_new, @function
cmac_new:
.LFB358:
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
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	leaq	.LC0(%rip), %rax
	movl	$60, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L4
	call	CMAC_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L5
.L4:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$62, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -8(%rbp)
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L6:
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	cmac_new, .-cmac_new
	.type	cmac_free, @function
cmac_free:
.LFB359:
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
	cmpq	$0, -8(%rbp)
	je	.L9
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CMAC_CTX_free@PLT
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_cipher_reset@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$78, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L9:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	cmac_free, .-cmac_free
	.type	cmac_dup, @function
cmac_dup:
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
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	cmac_new
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L13
	movl	$0, %eax
	jmp	.L12
.L13:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMAC_CTX_copy@PLT
	testl	%eax, %eax
	je	.L14
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_cipher_copy@PLT
	testl	%eax, %eax
	jne	.L15
.L14:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	cmac_free
	movl	$0, %eax
	jmp	.L12
.L15:
	movq	-16(%rbp), %rax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	cmac_dup, .-cmac_dup
	.type	cmac_size, @function
cmac_size:
.LFB361:
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
	call	CMAC_CTX_get0_cipher_ctx@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	testq	%rax, %rax
	jne	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_block_size@PLT
	cltq
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	cmac_size, .-cmac_size
	.type	cmac_setkey, @function
cmac_setkey:
.LFB362:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_cipher_engine@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_cipher_cipher@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%rbx, %r8
	movq	%rax, %rdi
	call	CMAC_Init@PLT
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_cipher_reset@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	cmac_setkey, .-cmac_setkey
	.type	cmac_init, @function
cmac_init:
.LFB363:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L22
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cmac_set_ctx_params
	testl	%eax, %eax
	jne	.L23
.L22:
	movl	$0, %eax
	jmp	.L24
.L23:
	cmpq	$0, -32(%rbp)
	je	.L25
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmac_setkey
	jmp	.L24
.L25:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMAC_Init@PLT
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	cmac_init, .-cmac_init
	.type	cmac_update, @function
cmac_update:
.LFB364:
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
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Update@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	cmac_update, .-cmac_update
	.type	cmac_final, @function
cmac_final:
.LFB365:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Final@PLT
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	cmac_final, .-cmac_final
	.section	.rodata
.LC1:
	.string	"size"
.LC2:
	.string	"block-size"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_gettable_ctx_params, @object
	.size	known_gettable_ctx_params, 120
known_gettable_ctx_params:
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
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	cmac_gettable_ctx_params, @function
cmac_gettable_ctx_params:
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
	.size	cmac_gettable_ctx_params, .-cmac_gettable_ctx_params
	.type	cmac_get_ctx_params, @function
cmac_get_ctx_params:
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
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L34
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	cmac_size
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L36
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	cmac_size
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L36
	movl	$0, %eax
	jmp	.L35
.L36:
	movl	$1, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	cmac_get_ctx_params, .-cmac_get_ctx_params
	.section	.rodata
.LC3:
	.string	"cipher"
.LC4:
	.string	"properties"
.LC5:
	.string	"key"
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params, @object
	.size	known_settable_ctx_params, 160
known_settable_ctx_params:
	.quad	.LC3
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
	.type	cmac_settable_ctx_params, @function
cmac_settable_ctx_params:
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
	.size	cmac_settable_ctx_params, .-cmac_settable_ctx_params
	.type	cmac_set_ctx_params, @function
cmac_set_ctx_params:
.LFB369:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L40
	movl	$1, %eax
	jmp	.L41
.L40:
	leaq	.LC3(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L42
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_prov_cipher_load_from_params@PLT
	testl	%eax, %eax
	jne	.L43
	movl	$0, %eax
	jmp	.L41
.L43:
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_cipher_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$2, %eax
	je	.L42
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$210, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L41
.L42:
	leaq	.LC5(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L44
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L45
	movl	$0, %eax
	jmp	.L41
.L45:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmac_setkey
	jmp	.L41
.L44:
	movl	$1, %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	cmac_set_ctx_params, .-cmac_set_ctx_params
	.globl	ossl_cmac_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_cmac_functions, @object
	.size	ossl_cmac_functions, 176
ossl_cmac_functions:
	.long	1
	.zero	4
	.quad	cmac_new
	.long	2
	.zero	4
	.quad	cmac_dup
	.long	3
	.zero	4
	.quad	cmac_free
	.long	4
	.zero	4
	.quad	cmac_init
	.long	5
	.zero	4
	.quad	cmac_update
	.long	6
	.zero	4
	.quad	cmac_final
	.long	11
	.zero	4
	.quad	cmac_gettable_ctx_params
	.long	8
	.zero	4
	.quad	cmac_get_ctx_params
	.long	12
	.zero	4
	.quad	cmac_settable_ctx_params
	.long	9
	.zero	4
	.quad	cmac_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"cmac_set_ctx_params"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

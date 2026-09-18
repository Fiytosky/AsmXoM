	.file	"gmac_prov.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/macs/gmac_prov.c"
	.text
	.type	gmac_free, @function
gmac_free:
.LFB358:
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
	je	.L3
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_cipher_reset@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$54, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L3:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	gmac_free, .-gmac_free
	.type	gmac_new, @function
gmac_new:
.LFB359:
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
	jne	.L5
	movl	$0, %eax
	jmp	.L6
.L5:
	leaq	.LC0(%rip), %rax
	movl	$65, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L7
	call	EVP_CIPHER_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L8
.L7:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	gmac_free
	movl	$0, %eax
	jmp	.L6
.L8:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	gmac_new, .-gmac_new
	.type	gmac_dup, @function
gmac_dup:
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
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	gmac_new
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L11
.L12:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_copy@PLT
	testl	%eax, %eax
	je	.L13
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_cipher_copy@PLT
	testl	%eax, %eax
	jne	.L14
.L13:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	gmac_free
	movl	$0, %eax
	jmp	.L11
.L14:
	movq	-16(%rbp), %rax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	gmac_dup, .-gmac_dup
	.type	gmac_size, @function
gmac_size:
.LFB361:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$16, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	gmac_size, .-gmac_size
	.type	gmac_setkey, @function
gmac_setkey:
.LFB362:
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
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	cltq
	cmpq	%rax, -40(%rbp)
	je	.L18
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$106, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	jne	.L20
	movl	$0, %eax
	jmp	.L19
.L20:
	movl	$1, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	gmac_setkey, .-gmac_setkey
	.type	gmac_init, @function
gmac_init:
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
	call	gmac_set_ctx_params
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
	call	gmac_setkey
	jmp	.L24
.L25:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	gmac_init, .-gmac_init
	.type	gmac_update, @function
gmac_update:
.LFB364:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L29
	movl	$1, %eax
	jmp	.L32
.L31:
	movq	-48(%rbp), %rcx
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$2147483647, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	jne	.L30
	movl	$0, %eax
	jmp	.L32
.L30:
	addq	$2147483647, -48(%rbp)
	subq	$2147483647, -56(%rbp)
.L29:
	cmpq	$2147483647, -56(%rbp)
	ja	.L31
	movq	-56(%rbp), %rax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	%esi, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	gmac_update, .-gmac_update
	.section	.rodata
.LC1:
	.string	"tag"
	.text
	.type	gmac_final, @function
gmac_final:
.LFB365:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -100(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L34
	movl	$0, %eax
	jmp	.L38
.L34:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-100(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncryptFinal_ex@PLT
	testl	%eax, %eax
	jne	.L36
	movl	$0, %eax
	jmp	.L38
.L36:
	call	gmac_size
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-192(%rbp), %rax
	movq	-128(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_params@PLT
	testl	%eax, %eax
	jne	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	gmac_final, .-gmac_final
	.section	.rodata
.LC2:
	.string	"size"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_gettable_params, @object
	.size	known_gettable_params, 80
known_gettable_params:
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
	.type	gmac_gettable_params, @function
gmac_gettable_params:
.LFB366:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	known_gettable_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	gmac_gettable_params, .-gmac_gettable_params
	.type	gmac_get_params, @function
gmac_get_params:
.LFB367:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC2(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L42
	call	gmac_size
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	jmp	.L43
.L42:
	movl	$1, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	gmac_get_params, .-gmac_get_params
	.section	.rodata
.LC3:
	.string	"cipher"
.LC4:
	.string	"properties"
.LC5:
	.string	"key"
.LC6:
	.string	"iv"
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params, @object
	.size	known_settable_ctx_params, 200
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
	.quad	.LC6
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
	.type	gmac_settable_ctx_params, @function
gmac_settable_ctx_params:
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
	.size	gmac_settable_ctx_params, .-gmac_settable_ctx_params
	.type	gmac_set_ctx_params, @function
gmac_set_ctx_params:
.LFB369:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L47
	movl	$1, %eax
	jmp	.L48
.L47:
	cmpq	$0, -32(%rbp)
	jne	.L49
	movl	$0, %eax
	jmp	.L48
.L49:
	leaq	.LC3(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L50
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_prov_cipher_load_from_params@PLT
	testl	%eax, %eax
	jne	.L51
	movl	$0, %eax
	jmp	.L48
.L51:
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_cipher_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$6, %eax
	je	.L52
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$220, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L52:
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_cipher_engine@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_cipher_cipher@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	jne	.L50
	movl	$0, %eax
	jmp	.L48
.L50:
	leaq	.LC5(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L53
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L54
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gmac_setkey
	testl	%eax, %eax
	jne	.L53
.L54:
	movl	$0, %eax
	jmp	.L48
.L53:
	leaq	.LC6(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L55
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L56
	movl	$0, %eax
	jmp	.L48
.L56:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$9, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jle	.L57
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	jne	.L55
.L57:
	movl	$0, %eax
	jmp	.L48
.L55:
	movl	$1, %eax
.L48:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	gmac_set_ctx_params, .-gmac_set_ctx_params
	.globl	ossl_gmac_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_gmac_functions, @object
	.size	ossl_gmac_functions, 176
ossl_gmac_functions:
	.long	1
	.zero	4
	.quad	gmac_new
	.long	2
	.zero	4
	.quad	gmac_dup
	.long	3
	.zero	4
	.quad	gmac_free
	.long	4
	.zero	4
	.quad	gmac_init
	.long	5
	.zero	4
	.quad	gmac_update
	.long	6
	.zero	4
	.quad	gmac_final
	.long	10
	.zero	4
	.quad	gmac_gettable_params
	.long	7
	.zero	4
	.quad	gmac_get_params
	.long	12
	.zero	4
	.quad	gmac_settable_ctx_params
	.long	9
	.zero	4
	.quad	gmac_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 12
__func__.1:
	.string	"gmac_setkey"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"gmac_set_ctx_params"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

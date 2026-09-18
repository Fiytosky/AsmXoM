	.file	"ec_ctrl.c"
	.text
	.section	.rodata
.LC0:
	.string	"../crypto/evp/ec_ctrl.c"
	.text
	.type	evp_pkey_ctx_getset_ecdh_param_checks, @function
evp_pkey_ctx_getset_ecdh_param_checks:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2048, %eax
	je	.L3
.L2:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$27, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L4
.L3:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L5
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L5
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %eax
	cmpl	$408, %eax
	je	.L5
	movl	$-1, %eax
	jmp	.L4
.L5:
	movl	$1, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	evp_pkey_ctx_getset_ecdh_param_checks, .-evp_pkey_ctx_getset_ecdh_param_checks
	.section	.rodata
.LC1:
	.string	"ecdh-cofactor-mode"
	.text
	.globl	EVP_PKEY_CTX_set_ecdh_cofactor_mode
	.type	EVP_PKEY_CTX_set_ecdh_cofactor_mode, @function
EVP_PKEY_CTX_set_ecdh_cofactor_mode:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_ctx_getset_ecdh_param_checks
	movl	%eax, -28(%rbp)
	cmpl	$1, -28(%rbp)
	je	.L7
	movl	-28(%rbp), %eax
	jmp	.L12
.L7:
	movl	-124(%rbp), %eax
	cmpl	$-1, %eax
	jl	.L9
	movl	-124(%rbp), %eax
	cmpl	$1, %eax
	jle	.L10
.L9:
	movl	$-2, %eax
	jmp	.L12
.L10:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-176(%rbp), %rax
	leaq	-124(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-112(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_set_params_strict@PLT
	movl	%eax, -28(%rbp)
	cmpl	$-2, -28(%rbp)
	jne	.L11
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$66, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L11:
	movl	-28(%rbp), %eax
.L12:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	EVP_PKEY_CTX_set_ecdh_cofactor_mode, .-EVP_PKEY_CTX_set_ecdh_cofactor_mode
	.globl	EVP_PKEY_CTX_get_ecdh_cofactor_mode
	.type	EVP_PKEY_CTX_get_ecdh_cofactor_mode, @function
EVP_PKEY_CTX_get_ecdh_cofactor_mode:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_ctx_getset_ecdh_param_checks
	movl	%eax, -20(%rbp)
	cmpl	$1, -20(%rbp)
	je	.L14
	movl	-20(%rbp), %eax
	jmp	.L22
.L14:
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-192(%rbp), %rax
	leaq	-36(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-128(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_get_params_strict@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-2, -20(%rbp)
	je	.L16
	cmpl	$1, -20(%rbp)
	je	.L17
	jmp	.L23
.L16:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$87, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L19
.L17:
	movl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	js	.L20
	movl	-36(%rbp), %eax
	cmpl	$1, %eax
	jle	.L24
.L20:
	movl	$-1, -20(%rbp)
	jmp	.L24
.L23:
	movl	$-1, -20(%rbp)
	jmp	.L19
.L24:
	nop
.L19:
	movl	-20(%rbp), %eax
.L22:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	EVP_PKEY_CTX_get_ecdh_cofactor_mode, .-EVP_PKEY_CTX_get_ecdh_cofactor_mode
	.globl	EVP_PKEY_CTX_set_ecdh_kdf_type
	.type	EVP_PKEY_CTX_set_ecdh_kdf_type, @function
EVP_PKEY_CTX_set_ecdh_kdf_type:
.LFB416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	%edx, %r8d
	movl	$4100, %ecx
	movl	$2048, %edx
	movl	$408, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	EVP_PKEY_CTX_set_ecdh_kdf_type, .-EVP_PKEY_CTX_set_ecdh_kdf_type
	.globl	EVP_PKEY_CTX_get_ecdh_kdf_type
	.type	EVP_PKEY_CTX_get_ecdh_kdf_type, @function
EVP_PKEY_CTX_get_ecdh_kdf_type:
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
	movl	$0, %r9d
	movl	$-2, %r8d
	movl	$4100, %ecx
	movl	$2048, %edx
	movl	$408, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	EVP_PKEY_CTX_get_ecdh_kdf_type, .-EVP_PKEY_CTX_get_ecdh_kdf_type
	.globl	EVP_PKEY_CTX_set_ecdh_kdf_md
	.type	EVP_PKEY_CTX_set_ecdh_kdf_md, @function
EVP_PKEY_CTX_set_ecdh_kdf_md:
.LFB418:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$4101, %ecx
	movl	$2048, %edx
	movl	$408, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	EVP_PKEY_CTX_set_ecdh_kdf_md, .-EVP_PKEY_CTX_set_ecdh_kdf_md
	.globl	EVP_PKEY_CTX_get_ecdh_kdf_md
	.type	EVP_PKEY_CTX_get_ecdh_kdf_md, @function
EVP_PKEY_CTX_get_ecdh_kdf_md:
.LFB419:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$4102, %ecx
	movl	$2048, %edx
	movl	$408, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	EVP_PKEY_CTX_get_ecdh_kdf_md, .-EVP_PKEY_CTX_get_ecdh_kdf_md
	.section	.rodata
.LC2:
	.string	"kdf-outlen"
	.text
	.globl	EVP_PKEY_CTX_set_ecdh_kdf_outlen
	.type	EVP_PKEY_CTX_set_ecdh_kdf_outlen, @function
EVP_PKEY_CTX_set_ecdh_kdf_outlen:
.LFB420:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movl	%esi, -140(%rbp)
	movl	-140(%rbp), %eax
	cltq
	movq	%rax, -40(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_ctx_getset_ecdh_param_checks
	movl	%eax, -28(%rbp)
	cmpl	$1, -28(%rbp)
	je	.L34
	movl	-28(%rbp), %eax
	jmp	.L38
.L34:
	cmpl	$0, -140(%rbp)
	jg	.L36
	movl	$-2, %eax
	jmp	.L38
.L36:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-192(%rbp), %rax
	leaq	-40(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-128(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_set_params_strict@PLT
	movl	%eax, -28(%rbp)
	cmpl	$-2, -28(%rbp)
	jne	.L37
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$172, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L37:
	movl	-28(%rbp), %eax
.L38:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	EVP_PKEY_CTX_set_ecdh_kdf_outlen, .-EVP_PKEY_CTX_set_ecdh_kdf_outlen
	.globl	EVP_PKEY_CTX_get_ecdh_kdf_outlen
	.type	EVP_PKEY_CTX_get_ecdh_kdf_outlen, @function
EVP_PKEY_CTX_get_ecdh_kdf_outlen:
.LFB421:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movl	$4294967295, %eax
	movq	%rax, -40(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_ctx_getset_ecdh_param_checks
	movl	%eax, -20(%rbp)
	cmpl	$1, -20(%rbp)
	je	.L40
	movl	-20(%rbp), %eax
	jmp	.L48
.L40:
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-192(%rbp), %rax
	leaq	-40(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-128(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_get_params_strict@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-2, -20(%rbp)
	je	.L42
	cmpl	$1, -20(%rbp)
	je	.L43
	jmp	.L49
.L42:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$194, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L45
.L43:
	movq	-40(%rbp), %rax
	cmpq	$2147483647, %rax
	ja	.L46
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-144(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L45
.L46:
	movl	$-1, -20(%rbp)
	jmp	.L45
.L49:
	movl	$-1, -20(%rbp)
	nop
.L45:
	movl	-20(%rbp), %eax
.L48:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	EVP_PKEY_CTX_get_ecdh_kdf_outlen, .-EVP_PKEY_CTX_get_ecdh_kdf_outlen
	.section	.rodata
.LC3:
	.string	"kdf-ukm"
	.text
	.globl	EVP_PKEY_CTX_set0_ecdh_kdf_ukm
	.type	EVP_PKEY_CTX_set0_ecdh_kdf_ukm, @function
EVP_PKEY_CTX_set0_ecdh_kdf_ukm:
.LFB422:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	%edx, -132(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_ctx_getset_ecdh_param_checks
	movl	%eax, -28(%rbp)
	cmpl	$1, -28(%rbp)
	je	.L51
	movl	-28(%rbp), %eax
	jmp	.L56
.L51:
	movl	-132(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-192(%rbp), %rax
	movq	-128(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-112(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_set_params_strict@PLT
	movl	%eax, -28(%rbp)
	cmpl	$-2, -28(%rbp)
	je	.L53
	cmpl	$1, -28(%rbp)
	je	.L54
	jmp	.L55
.L53:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$232, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L55
.L54:
	leaq	.LC0(%rip), %rcx
	movq	-128(%rbp), %rax
	movl	$235, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
.L55:
	movl	-28(%rbp), %eax
.L56:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	EVP_PKEY_CTX_set0_ecdh_kdf_ukm, .-EVP_PKEY_CTX_set0_ecdh_kdf_ukm
	.globl	EVP_PKEY_CTX_get0_ecdh_kdf_ukm
	.type	EVP_PKEY_CTX_get0_ecdh_kdf_ukm, @function
EVP_PKEY_CTX_get0_ecdh_kdf_ukm:
.LFB423:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_ctx_getset_ecdh_param_checks
	movl	%eax, -20(%rbp)
	cmpl	$1, -20(%rbp)
	je	.L58
	movl	-20(%rbp), %eax
	jmp	.L65
.L58:
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-192(%rbp), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_ptr@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-128(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_get_params_strict@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-2, -20(%rbp)
	je	.L60
	cmpl	$1, -20(%rbp)
	je	.L61
	jmp	.L66
.L60:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$261, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L63
.L61:
	movl	$-1, -20(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$2147483647, -40(%rbp)
	ja	.L67
	movq	-40(%rbp), %rax
	movl	%eax, -20(%rbp)
	jmp	.L67
.L66:
	movl	$-1, -20(%rbp)
	jmp	.L63
.L67:
	nop
.L63:
	movl	-20(%rbp), %eax
.L65:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE423:
	.size	EVP_PKEY_CTX_get0_ecdh_kdf_ukm, .-EVP_PKEY_CTX_get0_ecdh_kdf_ukm
	.globl	EVP_PKEY_CTX_set_ec_paramgen_curve_nid
	.type	EVP_PKEY_CTX_set_ec_paramgen_curve_nid, @function
EVP_PKEY_CTX_set_ec_paramgen_curve_nid:
.LFB424:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$1172, -28(%rbp)
	jne	.L69
	movl	$1172, -4(%rbp)
	jmp	.L70
.L69:
	movl	$408, -4(%rbp)
.L70:
	movl	-28(%rbp), %edx
	movl	-4(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	%edx, %r8d
	movl	$4097, %ecx
	movl	$6, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE424:
	.size	EVP_PKEY_CTX_set_ec_paramgen_curve_nid, .-EVP_PKEY_CTX_set_ec_paramgen_curve_nid
	.globl	EVP_PKEY_CTX_set_ec_param_enc
	.type	EVP_PKEY_CTX_set_ec_param_enc, @function
EVP_PKEY_CTX_set_ec_param_enc:
.LFB425:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	%edx, %r8d
	movl	$4098, %ecx
	movl	$6, %edx
	movl	$408, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE425:
	.size	EVP_PKEY_CTX_set_ec_param_enc, .-EVP_PKEY_CTX_set_ec_param_enc
	.section	.rodata
	.align 32
	.type	__func__.6, @object
	.size	__func__.6, 36
__func__.6:
	.string	"EVP_PKEY_CTX_set_ecdh_cofactor_mode"
	.align 32
	.type	__func__.5, @object
	.size	__func__.5, 38
__func__.5:
	.string	"evp_pkey_ctx_getset_ecdh_param_checks"
	.align 32
	.type	__func__.4, @object
	.size	__func__.4, 36
__func__.4:
	.string	"EVP_PKEY_CTX_get_ecdh_cofactor_mode"
	.align 32
	.type	__func__.3, @object
	.size	__func__.3, 33
__func__.3:
	.string	"EVP_PKEY_CTX_set_ecdh_kdf_outlen"
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 33
__func__.2:
	.string	"EVP_PKEY_CTX_get_ecdh_kdf_outlen"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 31
__func__.1:
	.string	"EVP_PKEY_CTX_set0_ecdh_kdf_ukm"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 31
__func__.0:
	.string	"EVP_PKEY_CTX_get0_ecdh_kdf_ukm"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

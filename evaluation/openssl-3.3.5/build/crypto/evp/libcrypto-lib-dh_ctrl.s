	.file	"dh_ctrl.c"
	.text
	.section	.rodata
.LC0:
	.string	"../crypto/evp/dh_ctrl.c"
	.text
	.type	dh_paramgen_check, @function
dh_paramgen_check:
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
	cmpl	$2, %eax
	je	.L3
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L3
.L2:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$22, %esi
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
	movl	(%rax), %eax
	cmpl	$28, %eax
	je	.L5
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %eax
	cmpl	$920, %eax
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
	.size	dh_paramgen_check, .-dh_paramgen_check
	.type	dh_param_derive_check, @function
dh_param_derive_check:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L7
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2048, %eax
	je	.L8
.L7:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$37, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L10
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %eax
	cmpl	$28, %eax
	je	.L10
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %eax
	cmpl	$920, %eax
	je	.L10
	movl	$-1, %eax
	jmp	.L9
.L10:
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	dh_param_derive_check, .-dh_param_derive_check
	.section	.rodata
.LC1:
	.string	"gindex"
	.text
	.globl	EVP_PKEY_CTX_set_dh_paramgen_gindex
	.type	EVP_PKEY_CTX_set_dh_paramgen_gindex, @function
EVP_PKEY_CTX_set_dh_paramgen_gindex:
.LFB415:
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
	call	dh_paramgen_check
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L12
	movl	-28(%rbp), %eax
	jmp	.L14
.L12:
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
.L14:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	EVP_PKEY_CTX_set_dh_paramgen_gindex, .-EVP_PKEY_CTX_set_dh_paramgen_gindex
	.section	.rodata
.LC2:
	.string	"seed"
	.text
	.globl	EVP_PKEY_CTX_set_dh_paramgen_seed
	.type	EVP_PKEY_CTX_set_dh_paramgen_seed, @function
EVP_PKEY_CTX_set_dh_paramgen_seed:
.LFB416:
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
	movq	%rdx, -136(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	dh_paramgen_check
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L16
	movl	-28(%rbp), %eax
	jmp	.L18
.L16:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-192(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	-128(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
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
.L18:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	EVP_PKEY_CTX_set_dh_paramgen_seed, .-EVP_PKEY_CTX_set_dh_paramgen_seed
	.globl	EVP_PKEY_CTX_set_dh_paramgen_type
	.type	EVP_PKEY_CTX_set_dh_paramgen_type, @function
EVP_PKEY_CTX_set_dh_paramgen_type:
.LFB417:
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
	movl	$4101, %ecx
	movl	$2, %edx
	movl	$28, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	EVP_PKEY_CTX_set_dh_paramgen_type, .-EVP_PKEY_CTX_set_dh_paramgen_type
	.section	.rodata
.LC3:
	.string	"pbits"
	.text
	.globl	EVP_PKEY_CTX_set_dh_paramgen_prime_len
	.type	EVP_PKEY_CTX_set_dh_paramgen_prime_len, @function
EVP_PKEY_CTX_set_dh_paramgen_prime_len:
.LFB418:
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
	leaq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-140(%rbp), %eax
	cltq
	movq	%rax, -120(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	dh_paramgen_check
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L22
	movl	-28(%rbp), %eax
	jmp	.L24
.L22:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-192(%rbp), %rax
	leaq	-120(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
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
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_set_params_strict@PLT
.L24:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	EVP_PKEY_CTX_set_dh_paramgen_prime_len, .-EVP_PKEY_CTX_set_dh_paramgen_prime_len
	.section	.rodata
.LC4:
	.string	"qbits"
	.text
	.globl	EVP_PKEY_CTX_set_dh_paramgen_subprime_len
	.type	EVP_PKEY_CTX_set_dh_paramgen_subprime_len, @function
EVP_PKEY_CTX_set_dh_paramgen_subprime_len:
.LFB419:
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
	leaq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-140(%rbp), %eax
	cltq
	movq	%rax, -120(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	dh_paramgen_check
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L26
	movl	-28(%rbp), %eax
	jmp	.L28
.L26:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-192(%rbp), %rax
	leaq	-120(%rbp), %rdx
	leaq	.LC4(%rip), %rcx
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
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_set_params_strict@PLT
.L28:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	EVP_PKEY_CTX_set_dh_paramgen_subprime_len, .-EVP_PKEY_CTX_set_dh_paramgen_subprime_len
	.section	.rodata
.LC5:
	.string	"safeprime-generator"
	.text
	.globl	EVP_PKEY_CTX_set_dh_paramgen_generator
	.type	EVP_PKEY_CTX_set_dh_paramgen_generator, @function
EVP_PKEY_CTX_set_dh_paramgen_generator:
.LFB420:
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
	call	dh_paramgen_check
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L30
	movl	-28(%rbp), %eax
	jmp	.L32
.L30:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-176(%rbp), %rax
	leaq	-124(%rbp), %rdx
	leaq	.LC5(%rip), %rcx
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
.L32:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	EVP_PKEY_CTX_set_dh_paramgen_generator, .-EVP_PKEY_CTX_set_dh_paramgen_generator
	.globl	EVP_PKEY_CTX_set_dh_rfc5114
	.type	EVP_PKEY_CTX_set_dh_rfc5114, @function
EVP_PKEY_CTX_set_dh_rfc5114:
.LFB421:
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
	movl	$4099, %ecx
	movl	$2, %edx
	movl	$920, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	EVP_PKEY_CTX_set_dh_rfc5114, .-EVP_PKEY_CTX_set_dh_rfc5114
	.globl	EVP_PKEY_CTX_set_dhx_rfc5114
	.type	EVP_PKEY_CTX_set_dhx_rfc5114, @function
EVP_PKEY_CTX_set_dhx_rfc5114:
.LFB422:
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
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dh_rfc5114@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	EVP_PKEY_CTX_set_dhx_rfc5114, .-EVP_PKEY_CTX_set_dhx_rfc5114
	.globl	EVP_PKEY_CTX_set_dh_nid
	.type	EVP_PKEY_CTX_set_dh_nid, @function
EVP_PKEY_CTX_set_dh_nid:
.LFB423:
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
	movl	$4111, %ecx
	movl	$6, %edx
	movl	$28, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE423:
	.size	EVP_PKEY_CTX_set_dh_nid, .-EVP_PKEY_CTX_set_dh_nid
	.section	.rodata
.LC6:
	.string	"pad"
	.text
	.globl	EVP_PKEY_CTX_set_dh_pad
	.type	EVP_PKEY_CTX_set_dh_pad, @function
EVP_PKEY_CTX_set_dh_pad:
.LFB424:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, -84(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L40
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2048, %eax
	je	.L41
.L40:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$166, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L43
.L41:
	leaq	-160(%rbp), %rax
	leaq	-84(%rbp), %rdx
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_set_params_strict@PLT
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE424:
	.size	EVP_PKEY_CTX_set_dh_pad, .-EVP_PKEY_CTX_set_dh_pad
	.globl	EVP_PKEY_CTX_set_dh_kdf_type
	.type	EVP_PKEY_CTX_set_dh_kdf_type, @function
EVP_PKEY_CTX_set_dh_kdf_type:
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
	movl	$4102, %ecx
	movl	$2048, %edx
	movl	$920, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE425:
	.size	EVP_PKEY_CTX_set_dh_kdf_type, .-EVP_PKEY_CTX_set_dh_kdf_type
	.globl	EVP_PKEY_CTX_get_dh_kdf_type
	.type	EVP_PKEY_CTX_get_dh_kdf_type, @function
EVP_PKEY_CTX_get_dh_kdf_type:
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
	movl	$0, %r9d
	movl	$-2, %r8d
	movl	$4102, %ecx
	movl	$2048, %edx
	movl	$920, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE426:
	.size	EVP_PKEY_CTX_get_dh_kdf_type, .-EVP_PKEY_CTX_get_dh_kdf_type
	.globl	EVP_PKEY_CTX_set0_dh_kdf_oid
	.type	EVP_PKEY_CTX_set0_dh_kdf_oid, @function
EVP_PKEY_CTX_set0_dh_kdf_oid:
.LFB427:
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
	movl	$4109, %ecx
	movl	$2048, %edx
	movl	$920, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE427:
	.size	EVP_PKEY_CTX_set0_dh_kdf_oid, .-EVP_PKEY_CTX_set0_dh_kdf_oid
	.globl	EVP_PKEY_CTX_get0_dh_kdf_oid
	.type	EVP_PKEY_CTX_get0_dh_kdf_oid, @function
EVP_PKEY_CTX_get0_dh_kdf_oid:
.LFB428:
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
	movl	$4110, %ecx
	movl	$2048, %edx
	movl	$920, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE428:
	.size	EVP_PKEY_CTX_get0_dh_kdf_oid, .-EVP_PKEY_CTX_get0_dh_kdf_oid
	.globl	EVP_PKEY_CTX_set_dh_kdf_md
	.type	EVP_PKEY_CTX_set_dh_kdf_md, @function
EVP_PKEY_CTX_set_dh_kdf_md:
.LFB429:
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
	movl	$4103, %ecx
	movl	$2048, %edx
	movl	$920, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	EVP_PKEY_CTX_set_dh_kdf_md, .-EVP_PKEY_CTX_set_dh_kdf_md
	.globl	EVP_PKEY_CTX_get_dh_kdf_md
	.type	EVP_PKEY_CTX_get_dh_kdf_md, @function
EVP_PKEY_CTX_get_dh_kdf_md:
.LFB430:
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
	movl	$4104, %ecx
	movl	$2048, %edx
	movl	$920, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE430:
	.size	EVP_PKEY_CTX_get_dh_kdf_md, .-EVP_PKEY_CTX_get_dh_kdf_md
	.section	.rodata
.LC7:
	.string	"kdf-outlen"
	.text
	.globl	EVP_PKEY_CTX_set_dh_kdf_outlen
	.type	EVP_PKEY_CTX_set_dh_kdf_outlen, @function
EVP_PKEY_CTX_set_dh_kdf_outlen:
.LFB431:
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
	call	dh_param_derive_check
	movl	%eax, -28(%rbp)
	cmpl	$1, -28(%rbp)
	je	.L57
	movl	-28(%rbp), %eax
	jmp	.L61
.L57:
	cmpl	$0, -140(%rbp)
	jg	.L59
	movl	$-2, %eax
	jmp	.L61
.L59:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-192(%rbp), %rax
	leaq	-40(%rbp), %rdx
	leaq	.LC7(%rip), %rcx
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
	jne	.L60
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$261, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L60:
	movl	-28(%rbp), %eax
.L61:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE431:
	.size	EVP_PKEY_CTX_set_dh_kdf_outlen, .-EVP_PKEY_CTX_set_dh_kdf_outlen
	.globl	EVP_PKEY_CTX_get_dh_kdf_outlen
	.type	EVP_PKEY_CTX_get_dh_kdf_outlen, @function
EVP_PKEY_CTX_get_dh_kdf_outlen:
.LFB432:
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
	movq	%rax, -24(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	dh_param_derive_check
	movl	%eax, -28(%rbp)
	cmpl	$1, -28(%rbp)
	je	.L63
	movl	-28(%rbp), %eax
	jmp	.L68
.L63:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-192(%rbp), %rax
	leaq	-40(%rbp), %rdx
	leaq	.LC7(%rip), %rcx
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
	movl	%eax, -28(%rbp)
	cmpl	$-2, -28(%rbp)
	jne	.L65
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$281, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L65:
	cmpl	$1, -28(%rbp)
	jne	.L66
	movq	-40(%rbp), %rax
	cmpq	$2147483647, %rax
	jbe	.L67
.L66:
	movl	$-1, %eax
	jmp	.L68
.L67:
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-144(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L68:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE432:
	.size	EVP_PKEY_CTX_get_dh_kdf_outlen, .-EVP_PKEY_CTX_get_dh_kdf_outlen
	.section	.rodata
.LC8:
	.string	"kdf-ukm"
	.text
	.globl	EVP_PKEY_CTX_set0_dh_kdf_ukm
	.type	EVP_PKEY_CTX_set0_dh_kdf_ukm, @function
EVP_PKEY_CTX_set0_dh_kdf_ukm:
.LFB433:
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
	cmpl	$0, -132(%rbp)
	jns	.L70
	movl	$-1, %eax
	jmp	.L75
.L70:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	dh_param_derive_check
	movl	%eax, -28(%rbp)
	cmpl	$1, -28(%rbp)
	je	.L72
	movl	-28(%rbp), %eax
	jmp	.L75
.L72:
	movl	-132(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-192(%rbp), %rax
	movq	-128(%rbp), %rdx
	leaq	.LC8(%rip), %rsi
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
	jne	.L73
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$313, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L73:
	cmpl	$1, -28(%rbp)
	jne	.L74
	leaq	.LC0(%rip), %rcx
	movq	-128(%rbp), %rax
	movl	$315, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L74:
	movl	-28(%rbp), %eax
.L75:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	EVP_PKEY_CTX_set0_dh_kdf_ukm, .-EVP_PKEY_CTX_set0_dh_kdf_ukm
	.globl	EVP_PKEY_CTX_get0_dh_kdf_ukm
	.type	EVP_PKEY_CTX_get0_dh_kdf_ukm, @function
EVP_PKEY_CTX_get0_dh_kdf_ukm:
.LFB434:
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
	movq	%rax, -24(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	dh_param_derive_check
	movl	%eax, -28(%rbp)
	cmpl	$1, -28(%rbp)
	je	.L77
	movl	-28(%rbp), %eax
	jmp	.L82
.L77:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-192(%rbp), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC8(%rip), %rsi
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
	movq	-24(%rbp), %rbx
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
	movl	%eax, -28(%rbp)
	cmpl	$-2, -28(%rbp)
	jne	.L79
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$336, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L79:
	cmpl	$1, -28(%rbp)
	je	.L80
	movl	$-1, %eax
	jmp	.L82
.L80:
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$2147483647, -40(%rbp)
	jbe	.L81
	movl	$-1, %eax
	jmp	.L82
.L81:
	movq	-40(%rbp), %rax
.L82:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE434:
	.size	EVP_PKEY_CTX_get0_dh_kdf_ukm, .-EVP_PKEY_CTX_get0_dh_kdf_ukm
	.section	.rodata
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 18
__func__.6:
	.string	"dh_paramgen_check"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 22
__func__.5:
	.string	"dh_param_derive_check"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 24
__func__.4:
	.string	"EVP_PKEY_CTX_set_dh_pad"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 31
__func__.3:
	.string	"EVP_PKEY_CTX_set_dh_kdf_outlen"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 31
__func__.2:
	.string	"EVP_PKEY_CTX_get_dh_kdf_outlen"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 29
__func__.1:
	.string	"EVP_PKEY_CTX_set0_dh_kdf_ukm"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 29
__func__.0:
	.string	"EVP_PKEY_CTX_get0_dh_kdf_ukm"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

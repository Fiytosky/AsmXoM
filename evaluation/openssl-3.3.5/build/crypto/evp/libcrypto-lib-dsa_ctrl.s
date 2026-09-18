	.file	"dsa_ctrl.c"
	.text
	.section	.rodata
.LC0:
	.string	"../crypto/evp/dsa_ctrl.c"
	.text
	.type	dsa_paramgen_check, @function
dsa_paramgen_check:
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
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$20, %esi
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
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L5
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %eax
	cmpl	$116, %eax
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
	.size	dsa_paramgen_check, .-dsa_paramgen_check
	.section	.rodata
.LC1:
	.string	"type"
	.text
	.globl	EVP_PKEY_CTX_set_dsa_paramgen_type
	.type	EVP_PKEY_CTX_set_dsa_paramgen_type, @function
EVP_PKEY_CTX_set_dsa_paramgen_type:
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
	movq	%rsi, -128(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	dsa_paramgen_check
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L7
	movl	-28(%rbp), %eax
	jmp	.L9
.L7:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-176(%rbp), %rax
	movq	-128(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
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
	call	EVP_PKEY_CTX_set_params@PLT
.L9:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	EVP_PKEY_CTX_set_dsa_paramgen_type, .-EVP_PKEY_CTX_set_dsa_paramgen_type
	.section	.rodata
.LC2:
	.string	"gindex"
	.text
	.globl	EVP_PKEY_CTX_set_dsa_paramgen_gindex
	.type	EVP_PKEY_CTX_set_dsa_paramgen_gindex, @function
EVP_PKEY_CTX_set_dsa_paramgen_gindex:
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
	call	dsa_paramgen_check
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L11
	movl	-28(%rbp), %eax
	jmp	.L13
.L11:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-176(%rbp), %rax
	leaq	-124(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
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
	call	EVP_PKEY_CTX_set_params@PLT
.L13:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	EVP_PKEY_CTX_set_dsa_paramgen_gindex, .-EVP_PKEY_CTX_set_dsa_paramgen_gindex
	.section	.rodata
.LC3:
	.string	"seed"
	.text
	.globl	EVP_PKEY_CTX_set_dsa_paramgen_seed
	.type	EVP_PKEY_CTX_set_dsa_paramgen_seed, @function
EVP_PKEY_CTX_set_dsa_paramgen_seed:
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
	call	dsa_paramgen_check
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L15
	movl	-28(%rbp), %eax
	jmp	.L17
.L15:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-192(%rbp), %rax
	movq	-136(%rbp), %rcx
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
	call	EVP_PKEY_CTX_set_params@PLT
.L17:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	EVP_PKEY_CTX_set_dsa_paramgen_seed, .-EVP_PKEY_CTX_set_dsa_paramgen_seed
	.section	.rodata
.LC4:
	.string	"pbits"
	.text
	.globl	EVP_PKEY_CTX_set_dsa_paramgen_bits
	.type	EVP_PKEY_CTX_set_dsa_paramgen_bits, @function
EVP_PKEY_CTX_set_dsa_paramgen_bits:
.LFB417:
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
	call	dsa_paramgen_check
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L19
	movl	-28(%rbp), %eax
	jmp	.L21
.L19:
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
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
.L21:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	EVP_PKEY_CTX_set_dsa_paramgen_bits, .-EVP_PKEY_CTX_set_dsa_paramgen_bits
	.section	.rodata
.LC5:
	.string	"qbits"
	.text
	.globl	EVP_PKEY_CTX_set_dsa_paramgen_q_bits
	.type	EVP_PKEY_CTX_set_dsa_paramgen_q_bits, @function
EVP_PKEY_CTX_set_dsa_paramgen_q_bits:
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
	call	dsa_paramgen_check
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L23
	movl	-28(%rbp), %eax
	jmp	.L25
.L23:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-192(%rbp), %rax
	leaq	-120(%rbp), %rdx
	leaq	.LC5(%rip), %rcx
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
	leaq	-112(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
.L25:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	EVP_PKEY_CTX_set_dsa_paramgen_q_bits, .-EVP_PKEY_CTX_set_dsa_paramgen_q_bits
	.section	.rodata
.LC6:
	.string	"digest"
.LC7:
	.string	"properties"
	.text
	.globl	EVP_PKEY_CTX_set_dsa_paramgen_md_props
	.type	EVP_PKEY_CTX_set_dsa_paramgen_md_props, @function
EVP_PKEY_CTX_set_dsa_paramgen_md_props:
.LFB419:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	dsa_paramgen_check
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L27
	movl	-28(%rbp), %eax
	jmp	.L30
.L27:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-240(%rbp), %rax
	movq	-176(%rbp), %rdx
	leaq	.LC6(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-208(%rbp), %rax
	movq	%rax, 32(%rbx)
	cmpq	$0, -184(%rbp)
	je	.L29
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-240(%rbp), %rax
	movq	-184(%rbp), %rdx
	leaq	.LC7(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-208(%rbp), %rax
	movq	%rax, 32(%rbx)
.L29:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-208(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-160(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
.L30:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	EVP_PKEY_CTX_set_dsa_paramgen_md_props, .-EVP_PKEY_CTX_set_dsa_paramgen_md_props
	.globl	EVP_PKEY_CTX_set_dsa_paramgen_md
	.type	EVP_PKEY_CTX_set_dsa_paramgen_md, @function
EVP_PKEY_CTX_set_dsa_paramgen_md:
.LFB420:
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
	movl	$4099, %ecx
	movl	$2, %edx
	movl	$116, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	EVP_PKEY_CTX_set_dsa_paramgen_md, .-EVP_PKEY_CTX_set_dsa_paramgen_md
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"dsa_paramgen_check"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

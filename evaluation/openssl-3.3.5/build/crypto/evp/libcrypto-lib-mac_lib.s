	.file	"mac_lib.c"
	.text
	.section	.rodata
.LC0:
	.string	"../crypto/evp/mac_lib.c"
	.text
	.globl	EVP_MAC_CTX_new
	.type	EVP_MAC_CTX_new, @function
EVP_MAC_CTX_new:
.LFB438:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$24, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_provider_ctx@PLT
	movq	%rax, %rdi
	call	*%rbx
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_up_ref@PLT
	testl	%eax, %eax
	jne	.L2
.L3:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -24(%rbp)
.L2:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE438:
	.size	EVP_MAC_CTX_new, .-EVP_MAC_CTX_new
	.globl	EVP_MAC_CTX_free
	.type	EVP_MAC_CTX_free, @function
EVP_MAC_CTX_free:
.LFB439:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L8
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$47, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L5
.L8:
	nop
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE439:
	.size	EVP_MAC_CTX_free, .-EVP_MAC_CTX_free
	.globl	EVP_MAC_CTX_dup
	.type	EVP_MAC_CTX_dup, @function
EVP_MAC_CTX_dup:
.LFB440:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	leaq	.LC0(%rip), %rax
	movl	$57, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L11
.L12:
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_up_ref@PLT
	testl	%eax, %eax
	jne	.L13
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L11
.L13:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L14
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movl	$0, %eax
	jmp	.L11
.L14:
	movq	-8(%rbp), %rax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE440:
	.size	EVP_MAC_CTX_dup, .-EVP_MAC_CTX_dup
	.globl	EVP_MAC_CTX_get0_mac
	.type	EVP_MAC_CTX_get0_mac, @function
EVP_MAC_CTX_get0_mac:
.LFB441:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE441:
	.size	EVP_MAC_CTX_get0_mac, .-EVP_MAC_CTX_get0_mac
	.type	get_size_t_ctx_param, @function
get_size_t_ctx_param:
.LFB442:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	$0, -8(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L18
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	leaq	-160(%rbp), %rax
	leaq	-8(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L19
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	120(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	je	.L18
	movq	-8(%rbp), %rax
	jmp	.L23
.L19:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	112(%rax), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L18
	movq	-8(%rbp), %rax
	jmp	.L23
.L18:
	movl	$0, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE442:
	.size	get_size_t_ctx_param, .-get_size_t_ctx_param
	.section	.rodata
.LC1:
	.string	"size"
	.text
	.globl	EVP_MAC_CTX_get_mac_size
	.type	EVP_MAC_CTX_get_mac_size, @function
EVP_MAC_CTX_get_mac_size:
.LFB443:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_size_t_ctx_param
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE443:
	.size	EVP_MAC_CTX_get_mac_size, .-EVP_MAC_CTX_get_mac_size
	.section	.rodata
.LC2:
	.string	"block-size"
	.text
	.globl	EVP_MAC_CTX_get_block_size
	.type	EVP_MAC_CTX_get_block_size, @function
EVP_MAC_CTX_get_block_size:
.LFB444:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC2(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_size_t_ctx_param
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE444:
	.size	EVP_MAC_CTX_get_block_size, .-EVP_MAC_CTX_get_block_size
	.globl	EVP_MAC_init
	.type	EVP_MAC_init, @function
EVP_MAC_init:
.LFB445:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %r8
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	*%r8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE445:
	.size	EVP_MAC_init, .-EVP_MAC_init
	.globl	EVP_MAC_update
	.type	EVP_MAC_update, @function
EVP_MAC_update:
.LFB446:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	72(%rax), %r8
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE446:
	.size	EVP_MAC_update, .-EVP_MAC_update
	.section	.rodata
.LC3:
	.string	"xof"
	.text
	.type	evp_mac_final, @function
evp_mac_final:
.LFB447:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L33
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L34
.L33:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$135, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$218, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L34:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L36
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$139, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$188, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L36:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_get_mac_size@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.L37
	cmpq	$0, -144(%rbp)
	jne	.L38
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$146, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L38:
	movq	-144(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L42
.L37:
	movq	-152(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L39
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$153, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$155, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L39:
	movl	-124(%rbp), %eax
	testl	%eax, %eax
	je	.L40
	leaq	-208(%rbp), %rax
	leaq	-124(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-112(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_CTX_set_params@PLT
	testl	%eax, %eax
	jg	.L40
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$161, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$227, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L40:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	80(%rax), %r8
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	-152(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -12(%rbp)
	cmpq	$0, -144(%rbp)
	je	.L41
	movq	-24(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, (%rax)
.L41:
	movl	-12(%rbp), %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE447:
	.size	evp_mac_final, .-evp_mac_final
	.globl	EVP_MAC_final
	.type	EVP_MAC_final, @function
EVP_MAC_final:
.LFB448:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	evp_mac_final
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE448:
	.size	EVP_MAC_final, .-EVP_MAC_final
	.globl	EVP_MAC_finalXOF
	.type	EVP_MAC_finalXOF, @function
EVP_MAC_finalXOF:
.LFB449:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	evp_mac_final
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE449:
	.size	EVP_MAC_finalXOF, .-EVP_MAC_finalXOF
	.globl	EVP_MAC_get_params
	.type	EVP_MAC_get_params, @function
EVP_MAC_get_params:
.LFB450:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L49
.L48:
	movl	$1, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE450:
	.size	EVP_MAC_get_params, .-EVP_MAC_get_params
	.globl	EVP_MAC_CTX_get_params
	.type	EVP_MAC_CTX_get_params, @function
EVP_MAC_CTX_get_params:
.LFB451:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L51
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	120(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L52
.L51:
	movl	$1, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE451:
	.size	EVP_MAC_CTX_get_params, .-EVP_MAC_CTX_get_params
	.globl	EVP_MAC_CTX_set_params
	.type	EVP_MAC_CTX_set_params, @function
EVP_MAC_CTX_set_params:
.LFB452:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L54
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	128(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L55
.L54:
	movl	$1, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE452:
	.size	EVP_MAC_CTX_set_params, .-EVP_MAC_CTX_set_params
	.globl	evp_mac_get_number
	.type	evp_mac_get_number, @function
evp_mac_get_number:
.LFB453:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE453:
	.size	evp_mac_get_number, .-evp_mac_get_number
	.globl	EVP_MAC_get0_name
	.type	EVP_MAC_get0_name, @function
EVP_MAC_get0_name:
.LFB454:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE454:
	.size	EVP_MAC_get0_name, .-EVP_MAC_get0_name
	.globl	EVP_MAC_get0_description
	.type	EVP_MAC_get0_description, @function
EVP_MAC_get0_description:
.LFB455:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE455:
	.size	EVP_MAC_get0_description, .-EVP_MAC_get0_description
	.globl	EVP_MAC_is_a
	.type	EVP_MAC_is_a, @function
EVP_MAC_is_a:
.LFB456:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L63
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	evp_is_a@PLT
	testl	%eax, %eax
	je	.L63
	movl	$1, %eax
	jmp	.L65
.L63:
	movl	$0, %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE456:
	.size	EVP_MAC_is_a, .-EVP_MAC_is_a
	.globl	EVP_MAC_names_do_all
	.type	EVP_MAC_names_do_all, @function
EVP_MAC_names_do_all:
.LFB457:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	call	evp_names_do_all@PLT
	jmp	.L68
.L67:
	movl	$1, %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE457:
	.size	EVP_MAC_names_do_all, .-EVP_MAC_names_do_all
	.section	.rodata
.LC4:
	.string	"digest"
.LC5:
	.string	"cipher"
	.text
	.globl	EVP_Q_mac
	.type	EVP_Q_mac, @function
EVP_Q_mac:
.LFB458:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%r8, -184(%rbp)
	movq	%r9, -192(%rbp)
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_fetch@PLT
	movq	%rax, -32(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, 56(%rbp)
	je	.L70
	movq	56(%rbp), %rax
	movq	$0, (%rax)
.L70:
	cmpq	$0, -32(%rbp)
	jne	.L71
	movl	$0, %eax
	jmp	.L78
.L71:
	cmpq	$0, -176(%rbp)
	je	.L73
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_settable_ctx_params@PLT
	movq	%rax, -40(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	jne	.L74
	leaq	.LC5(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	jne	.L74
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$268, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L75
.L74:
	leaq	-240(%rbp), %rax
	movq	-176(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -96(%rbp)
.L73:
	cmpq	$0, -192(%rbp)
	jne	.L76
	cmpq	$0, 16(%rbp)
	jne	.L76
	movq	24(%rbp), %rax
	movq	%rax, -192(%rbp)
.L76:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L79
	leaq	-128(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_CTX_set_params@PLT
	testl	%eax, %eax
	je	.L79
	movq	-184(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_CTX_set_params@PLT
	testl	%eax, %eax
	je	.L79
	movq	-184(%rbp), %rcx
	movq	16(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_init@PLT
	testl	%eax, %eax
	je	.L79
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L79
	movq	48(%rbp), %rcx
	leaq	-136(%rbp), %rdx
	movq	40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	je	.L79
	cmpq	$0, 40(%rbp)
	jne	.L77
	movq	-136(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$285, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, 40(%rbp)
	cmpq	$0, 40(%rbp)
	je	.L77
	movq	-136(%rbp), %rdx
	movq	40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	jne	.L77
	leaq	.LC0(%rip), %rcx
	movq	40(%rbp), %rax
	movl	$287, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, 40(%rbp)
.L77:
	movq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L79
	cmpq	$0, 56(%rbp)
	je	.L79
	movq	-136(%rbp), %rdx
	movq	56(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L75
.L79:
	nop
.L75:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	movq	-16(%rbp), %rax
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	EVP_Q_mac, .-EVP_Q_mac
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 16
__func__.3:
	.string	"EVP_MAC_CTX_new"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 16
__func__.2:
	.string	"EVP_MAC_CTX_dup"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 14
__func__.1:
	.string	"evp_mac_final"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 10
__func__.0:
	.string	"EVP_Q_mac"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"drbg.c"
	.text
	.type	OSSL_FUNC_rand_nonce, @function
OSSL_FUNC_rand_nonce:
.LFB190:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE190:
	.size	OSSL_FUNC_rand_nonce, .-OSSL_FUNC_rand_nonce
	.type	OSSL_FUNC_rand_enable_locking, @function
OSSL_FUNC_rand_enable_locking:
.LFB191:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE191:
	.size	OSSL_FUNC_rand_enable_locking, .-OSSL_FUNC_rand_enable_locking
	.type	OSSL_FUNC_rand_lock, @function
OSSL_FUNC_rand_lock:
.LFB192:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE192:
	.size	OSSL_FUNC_rand_lock, .-OSSL_FUNC_rand_lock
	.type	OSSL_FUNC_rand_unlock, @function
OSSL_FUNC_rand_unlock:
.LFB193:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE193:
	.size	OSSL_FUNC_rand_unlock, .-OSSL_FUNC_rand_unlock
	.type	OSSL_FUNC_rand_get_ctx_params, @function
OSSL_FUNC_rand_get_ctx_params:
.LFB198:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE198:
	.size	OSSL_FUNC_rand_get_ctx_params, .-OSSL_FUNC_rand_get_ctx_params
	.type	OSSL_FUNC_rand_get_seed, @function
OSSL_FUNC_rand_get_seed:
.LFB202:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE202:
	.size	OSSL_FUNC_rand_get_seed, .-OSSL_FUNC_rand_get_seed
	.type	OSSL_FUNC_rand_clear_seed, @function
OSSL_FUNC_rand_clear_seed:
.LFB203:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE203:
	.size	OSSL_FUNC_rand_clear_seed, .-OSSL_FUNC_rand_clear_seed
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
	.align 16
	.type	ossl_pers_string, @object
	.size	ossl_pers_string, 29
ossl_pers_string:
	.string	"OpenSSL NIST SP 800-90A DRBG"
	.text
	.globl	ossl_drbg_lock
	.type	ossl_drbg_lock, @function
ossl_drbg_lock:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	ossl_drbg_lock, .-ossl_drbg_lock
	.globl	ossl_drbg_unlock
	.type	ossl_drbg_unlock, @function
ossl_drbg_unlock:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	ossl_drbg_unlock, .-ossl_drbg_unlock
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/rands/drbg.c"
	.text
	.type	ossl_drbg_lock_parent, @function
ossl_drbg_lock_parent:
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
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L23
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L23
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L23
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$71, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$182, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L24
.L23:
	movl	$1, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	ossl_drbg_lock_parent, .-ossl_drbg_lock_parent
	.type	ossl_drbg_unlock_parent, @function
ossl_drbg_unlock_parent:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L27
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L27:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	ossl_drbg_unlock_parent, .-ossl_drbg_unlock_parent
	.section	.rodata
.LC1:
	.string	"strength"
	.text
	.type	get_parent_strength, @function
get_parent_strength:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-104(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L29
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$92, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$199, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L29:
	leaq	-160(%rbp), %rax
	movq	-112(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
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
	movq	%rax, %rdi
	call	ossl_drbg_lock_parent
	testl	%eax, %eax
	jne	.L31
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$98, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$201, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L31:
	movq	-104(%rbp), %rax
	movq	80(%rax), %rcx
	leaq	-96(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -12(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_drbg_unlock_parent
	cmpl	$0, -12(%rbp)
	jne	.L32
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$199, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L32:
	movl	$1, %eax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	get_parent_strength, .-get_parent_strength
	.section	.rodata
.LC2:
	.string	"reseed_counter"
	.text
	.type	get_parent_reseed_count, @function
get_parent_reseed_count:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -120(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movq	-120(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -100(%rbp)
	leaq	-176(%rbp), %rax
	leaq	-100(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_drbg_lock_parent
	testl	%eax, %eax
	jne	.L35
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$118, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$201, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	nop
.L36:
	movq	-120(%rbp), %rax
	addq	$216, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	jne	.L39
	jmp	.L41
.L35:
	movq	-120(%rbp), %rax
	movq	80(%rax), %rcx
	leaq	-96(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L37
	movl	$0, -100(%rbp)
.L37:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_drbg_unlock_parent
	movl	-100(%rbp), %eax
	jmp	.L40
.L41:
	movl	$-1, -100(%rbp)
.L39:
	movl	-100(%rbp), %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	get_parent_reseed_count, .-get_parent_reseed_count
	.globl	ossl_drbg_get_seed
	.type	ossl_drbg_get_seed, @function
ossl_drbg_get_seed:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	%r9d, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, -52(%rbp)
	js	.L43
	movl	-52(%rbp), %eax
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L44
.L43:
	movq	$0, -8(%rbp)
.L44:
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L45
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.L45:
	movq	-8(%rbp), %rax
	cmpq	%rax, -72(%rbp)
	jnb	.L46
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.L46:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$162, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L47
	movl	$0, %eax
	jmp	.L50
.L47:
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movq	-24(%rbp), %rax
	leaq	-24(%rbp), %r8
	movl	-56(%rbp), %edi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	subq	$8, %rsp
	pushq	$8
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ossl_prov_drbg_generate@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L49
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$178, %ecx
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$179, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$191, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L50
.L49:
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ossl_drbg_get_seed, .-ossl_drbg_get_seed
	.globl	ossl_drbg_clear_seed
	.type	ossl_drbg_clear_seed, @function
ossl_drbg_clear_seed:
.LFB409:
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
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$190, %ecx
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	ossl_drbg_clear_seed, .-ossl_drbg_clear_seed
	.type	get_entropy, @function
get_entropy:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	%r9d, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L53
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_prov_get_entropy@PLT
	jmp	.L59
.L53:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L55
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$215, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$187, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L59
.L55:
	movq	-24(%rbp), %rax
	leaq	-12(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_parent_strength
	testl	%eax, %eax
	jne	.L56
	movl	$0, %eax
	jmp	.L59
.L56:
	movq	-24(%rbp), %rax
	movl	128(%rax), %eax
	movl	-12(%rbp), %edx
	cmpl	%eax, %edx
	jnb	.L57
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$225, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$194, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L59
.L57:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_drbg_lock_parent
	testl	%eax, %eax
	jne	.L58
	movl	$0, %eax
	jmp	.L59
.L58:
	movq	-24(%rbp), %rax
	movq	96(%rax), %r10
	movq	-24(%rbp), %rax
	movl	128(%rax), %eax
	movl	%eax, %r11d
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movl	-40(%rbp), %r8d
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	pushq	$8
	leaq	-24(%rbp), %rcx
	pushq	%rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	%r11d, %edx
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_drbg_unlock_parent
	movq	-8(%rbp), %rax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	get_entropy, .-get_entropy
	.type	cleanup_entropy, @function
cleanup_entropy:
.LFB411:
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
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L61
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_cleanup_entropy@PLT
	jmp	.L60
.L61:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L60
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_drbg_lock_parent
	testl	%eax, %eax
	je	.L64
	movq	-8(%rbp), %rax
	movq	104(%rax), %r8
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_drbg_unlock_parent
	jmp	.L60
.L64:
	nop
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	cleanup_entropy, .-cleanup_entropy
	.globl	ossl_prov_drbg_nonce_ctx_new
	.type	ossl_prov_drbg_nonce_ctx_new, @function
ossl_prov_drbg_nonce_ctx_new:
.LFB412:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$283, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L66
	movl	$0, %eax
	jmp	.L67
.L66:
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L68
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$290, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L67
.L68:
	movq	-8(%rbp), %rax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	ossl_prov_drbg_nonce_ctx_new, .-ossl_prov_drbg_nonce_ctx_new
	.globl	ossl_prov_drbg_nonce_ctx_free
	.type	ossl_prov_drbg_nonce_ctx_free, @function
ossl_prov_drbg_nonce_ctx_free:
.LFB413:
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
	je	.L72
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$306, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L69
.L72:
	nop
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	ossl_prov_drbg_nonce_ctx_free, .-ossl_prov_drbg_nonce_ctx_free
	.type	prov_drbg_get_nonce, @function
prov_drbg_get_nonce:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_data@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L74
	movl	$0, %eax
	jmp	.L79
.L74:
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L76
	movq	-72(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L76
	movq	-72(%rbp), %rax
	movq	88(%rax), %r9
	movq	-72(%rbp), %rax
	movq	168(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	160(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%r9
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L76
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$329, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L76
	movq	-72(%rbp), %rax
	movq	88(%rax), %r9
	movq	-72(%rbp), %rax
	movq	168(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	160(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	*%r9
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.L77
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L79
.L77:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$336, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L76:
	leaq	-64(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	8(%rdx), %rdi
	leaq	-64(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, %rcx
	movl	$1, %esi
	call	CRYPTO_atomic_add@PLT
	testl	%eax, %eax
	jne	.L78
	movl	$0, %eax
	jmp	.L79
.L78:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-64(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_prov_get_nonce@PLT
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	prov_drbg_get_nonce, .-prov_drbg_get_nonce
	.globl	ossl_prov_drbg_instantiate
	.type	ossl_prov_drbg_instantiate, @function
ossl_prov_drbg_instantiate:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movl	%edx, -96(%rbp)
	movq	%rcx, -104(%rbp)
	movq	%r8, -112(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -40(%rbp)
	movq	-88(%rbp), %rax
	movl	128(%rax), %eax
	cmpl	-92(%rbp), %eax
	jnb	.L81
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$368, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$181, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L82
.L81:
	movq	-88(%rbp), %rax
	movl	128(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L83
	leaq	ossl_pers_string(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	$29, -112(%rbp)
.L83:
	movq	-88(%rbp), %rax
	movq	176(%rax), %rax
	cmpq	-112(%rbp), %rax
	jnb	.L84
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$380, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$195, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L82
.L84:
	movq	-88(%rbp), %rax
	movl	240(%rax), %eax
	testl	%eax, %eax
	je	.L85
	movq	-88(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$2, %eax
	jne	.L86
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$386, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$192, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L82
.L86:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$388, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$185, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L82
.L85:
	movq	-88(%rbp), %rax
	movl	$2, 240(%rax)
	movq	-88(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L88
	movq	-88(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L89
	movq	-88(%rbp), %rax
	movq	88(%rax), %r9
	movq	-88(%rbp), %rax
	movq	168(%rax), %rsi
	movq	-88(%rbp), %rax
	movq	160(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	128(%rax), %edx
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%r9
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L90
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$400, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$190, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L82
.L90:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$403, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L91
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$405, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$190, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L82
.L91:
	movq	-88(%rbp), %rax
	movq	88(%rax), %r9
	movq	-88(%rbp), %rax
	movq	168(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	160(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	128(%rax), %edx
	movq	-64(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	cmpq	%rax, -8(%rbp)
	je	.L88
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$412, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$190, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L82
.L89:
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L92
	movq	-88(%rbp), %rax
	movl	128(%rax), %eax
	shrl	%eax
	movl	%eax, %eax
	addq	%rax, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	160(%rax), %rax
	addq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	168(%rax), %rax
	addq	%rax, -32(%rbp)
	jmp	.L88
.L92:
	movq	-88(%rbp), %rax
	movq	168(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	160(%rax), %rdx
	leaq	-64(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	prov_drbg_get_nonce
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rax
	movq	160(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L93
	movq	-88(%rbp), %rax
	movq	168(%rax), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L88
.L93:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$435, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$190, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L82
.L88:
	movq	-88(%rbp), %rax
	addq	$216, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 220(%rax)
	movq	-88(%rbp), %rax
	movl	220(%rax), %eax
	testl	%eax, %eax
	je	.L94
	movq	-88(%rbp), %rax
	movl	220(%rax), %eax
	leal	1(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 220(%rax)
	movq	-88(%rbp), %rax
	movl	220(%rax), %eax
	testl	%eax, %eax
	jne	.L94
	movq	-88(%rbp), %rax
	movl	$1, 220(%rax)
.L94:
	movq	-16(%rbp), %rax
	movl	%eax, %r10d
	movl	-96(%rbp), %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-72(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	%edi, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%r10d, %edx
	movq	%rax, %rdi
	call	get_entropy
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L95
	movq	-40(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L96
.L95:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$454, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$189, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L82
.L96:
	movq	-88(%rbp), %rax
	movq	16(%rax), %r10
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %rsi
	movq	-104(%rbp), %r8
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	pushq	-112(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L97
	movq	-72(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cleanup_entropy
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$461, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$188, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L82
.L97:
	movq	-72(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cleanup_entropy
	movq	-88(%rbp), %rax
	movl	$1, 240(%rax)
	movq	-88(%rbp), %rax
	movl	$1, 192(%rax)
	movl	$0, %edi
	call	time@PLT
	movq	-88(%rbp), %rdx
	movq	%rax, 200(%rdx)
	movq	-88(%rbp), %rax
	addq	$216, %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movl	220(%rax), %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
.L82:
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.L98
	movq	-64(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_cleanup_nonce@PLT
.L98:
	movq	-88(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$1, %eax
	jne	.L99
	movl	$1, %eax
	jmp	.L101
.L99:
	movl	$0, %eax
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	ossl_prov_drbg_instantiate, .-ossl_prov_drbg_instantiate
	.globl	ossl_prov_drbg_uninstantiate
	.type	ossl_prov_drbg_uninstantiate, @function
ossl_prov_drbg_uninstantiate:
.LFB416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 240(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	ossl_prov_drbg_uninstantiate, .-ossl_prov_drbg_uninstantiate
	.type	ossl_prov_drbg_reseed_unlocked, @function
ossl_prov_drbg_reseed_unlocked:
.LFB417:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L105
	movl	$0, %eax
	jmp	.L121
.L105:
	movq	-56(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$1, %eax
	je	.L107
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	rand_drbg_restart
	movq	-56(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$2, %eax
	jne	.L108
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$510, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$192, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L108:
	movq	-56(%rbp), %rax
	movl	240(%rax), %eax
	testl	%eax, %eax
	jne	.L107
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$514, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$193, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L107:
	cmpq	$0, -72(%rbp)
	je	.L109
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	cmpq	%rax, -80(%rbp)
	jnb	.L110
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$521, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-56(%rbp), %rax
	movl	$2, 240(%rax)
	movl	$0, %eax
	jmp	.L121
.L110:
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	cmpq	-80(%rbp), %rax
	jnb	.L109
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$526, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-56(%rbp), %rax
	movl	$2, 240(%rax)
	movl	$0, %eax
	jmp	.L121
.L109:
	cmpq	$0, -88(%rbp)
	jne	.L111
	movq	$0, -96(%rbp)
	jmp	.L112
.L111:
	movq	-56(%rbp), %rax
	movq	184(%rax), %rax
	cmpq	-96(%rbp), %rax
	jnb	.L112
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$535, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$184, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L112:
	movq	-56(%rbp), %rax
	movl	$2, 240(%rax)
	movq	-56(%rbp), %rax
	addq	$216, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 220(%rax)
	movq	-56(%rbp), %rax
	movl	220(%rax), %eax
	testl	%eax, %eax
	je	.L113
	movq	-56(%rbp), %rax
	movl	220(%rax), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 220(%rax)
	movq	-56(%rbp), %rax
	movl	220(%rax), %eax
	testl	%eax, %eax
	jne	.L113
	movq	-56(%rbp), %rax
	movl	$1, 220(%rax)
.L113:
	cmpq	$0, -72(%rbp)
	je	.L114
	movq	-56(%rbp), %rax
	movq	32(%rax), %r9
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L115
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$563, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$204, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L115:
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
.L114:
	movq	-56(%rbp), %rax
	movq	152(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	128(%rax), %eax
	movl	%eax, %r10d
	movl	-60(%rbp), %edi
	leaq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	%edi, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%r10d, %edx
	movq	%rax, %rdi
	call	get_entropy
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L116
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L117
.L116:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$578, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$189, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L118
.L117:
	movq	-56(%rbp), %rax
	movq	32(%rax), %r9
	movq	-32(%rbp), %rsi
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L122
	movq	-56(%rbp), %rax
	movl	$1, 240(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 192(%rax)
	movl	$0, %edi
	call	time@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 200(%rdx)
	movq	-56(%rbp), %rax
	addq	$216, %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	220(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L123
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	get_parent_reseed_count
	movq	-56(%rbp), %rdx
	movl	%eax, 224(%rdx)
	jmp	.L118
.L122:
	nop
	jmp	.L118
.L123:
	nop
.L118:
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cleanup_entropy
	movq	-56(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$1, %eax
	jne	.L120
	movl	$1, %eax
	jmp	.L121
.L120:
	movl	$0, %eax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	ossl_prov_drbg_reseed_unlocked, .-ossl_prov_drbg_reseed_unlocked
	.globl	ossl_prov_drbg_reseed
	.type	ossl_prov_drbg_reseed, @function
ossl_prov_drbg_reseed:
.LFB418:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L125
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L125
	movl	$0, %eax
	jmp	.L126
.L125:
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_prov_drbg_reseed_unlocked
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L127
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L127:
	movl	-4(%rbp), %eax
.L126:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	ossl_prov_drbg_reseed, .-ossl_prov_drbg_reseed
	.globl	ossl_prov_drbg_generate
	.type	ossl_prov_drbg_generate, @function
ossl_prov_drbg_generate:
.LFB419:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movq	%r9, -72(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L129
	movl	$0, %eax
	jmp	.L130
.L129:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L131
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L131
	movl	$0, %eax
	jmp	.L130
.L131:
	movq	-40(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$1, %eax
	je	.L132
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	rand_drbg_restart
	movq	-40(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$2, %eax
	jne	.L133
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$653, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$192, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L134
.L133:
	movq	-40(%rbp), %rax
	movl	240(%rax), %eax
	testl	%eax, %eax
	jne	.L132
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$657, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$193, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L134
.L132:
	movq	-40(%rbp), %rax
	movl	128(%rax), %eax
	cmpl	-60(%rbp), %eax
	jnb	.L135
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$662, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$181, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L134
.L135:
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	-56(%rbp), %rax
	jnb	.L136
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$667, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$196, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L134
.L136:
	movq	-40(%rbp), %rax
	movq	184(%rax), %rax
	cmpq	16(%rbp), %rax
	jnb	.L137
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$671, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$184, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L134
.L137:
	call	openssl_get_fork_id@PLT
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	cmpl	%eax, -12(%rbp)
	je	.L138
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 120(%rax)
	movl	$1, -4(%rbp)
.L138:
	movq	-40(%rbp), %rax
	movl	196(%rax), %eax
	testl	%eax, %eax
	je	.L139
	movq	-40(%rbp), %rax
	movl	192(%rax), %edx
	movq	-40(%rbp), %rax
	movl	196(%rax), %eax
	cmpl	%eax, %edx
	jb	.L139
	movl	$1, -4(%rbp)
.L139:
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	jle	.L140
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	200(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jl	.L141
	movq	-40(%rbp), %rax
	movq	200(%rax), %rax
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	cmpq	%rax, %rdx
	jl	.L140
.L141:
	movl	$1, -4(%rbp)
.L140:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L142
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	get_parent_reseed_count
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	224(%rax), %eax
	cmpl	%eax, %edx
	je	.L142
	movl	$1, -4(%rbp)
.L142:
	cmpl	$0, -4(%rbp)
	jne	.L143
	cmpl	$0, -64(%rbp)
	je	.L144
.L143:
	movq	16(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	-64(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_prov_drbg_reseed_unlocked
	testl	%eax, %eax
	jne	.L145
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$699, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$197, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L134
.L145:
	movq	$0, -72(%rbp)
	movq	$0, 16(%rbp)
.L144:
	movq	-40(%rbp), %rax
	movq	40(%rax), %r9
	movq	16(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L146
	movq	-40(%rbp), %rax
	movl	$2, 240(%rax)
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$708, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$191, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L134
.L146:
	movq	-40(%rbp), %rax
	movl	192(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 192(%rax)
	movl	$1, -8(%rbp)
.L134:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L147
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L147:
	movl	-8(%rbp), %eax
.L130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	ossl_prov_drbg_generate, .-ossl_prov_drbg_generate
	.type	rand_drbg_restart, @function
rand_drbg_restart:
.LFB420:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$2, %eax
	jne	.L149
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L149:
	movq	-8(%rbp), %rax
	movl	240(%rax), %eax
	testl	%eax, %eax
	jne	.L150
	movq	-8(%rbp), %rax
	movl	128(%rax), %esi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_prov_drbg_instantiate@PLT
.L150:
	movq	-8(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	rand_drbg_restart, .-rand_drbg_restart
	.type	find_call, @function
find_call:
.LFB421:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L153
	jmp	.L154
.L157:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L155
	movq	-8(%rbp), %rax
	jmp	.L156
.L155:
	addq	$16, -8(%rbp)
.L154:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L157
.L153:
	movl	$0, %eax
.L156:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	find_call, .-find_call
	.globl	ossl_drbg_enable_locking
	.type	ossl_drbg_enable_locking, @function
ossl_drbg_enable_locking:
.LFB422:
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
	je	.L159
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L159
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L160
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L160
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$773, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$182, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L161
.L160:
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L159
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$778, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$180, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L161
.L159:
	movl	$1, %eax
.L161:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	ossl_drbg_enable_locking, .-ossl_drbg_enable_locking
	.globl	ossl_rand_drbg_new
	.type	ossl_rand_drbg_new, @function
ossl_rand_drbg_new:
.LFB423:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L163
	movl	$0, %eax
	jmp	.L177
.L163:
	leaq	.LC0(%rip), %rax
	movl	$814, %edx
	movq	%rax, %rsi
	movl	$296, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L165
	movl	$0, %eax
	jmp	.L177
.L165:
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 40(%rax)
	call	openssl_get_fork_id@PLT
	movq	-8(%rbp), %rdx
	movl	%eax, 120(%rdx)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-56(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	find_call
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L166
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_enable_locking
	movq	-8(%rbp), %rdx
	movq	%rax, 56(%rdx)
.L166:
	movq	-56(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	find_call
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L167
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_lock
	movq	-8(%rbp), %rdx
	movq	%rax, 64(%rdx)
.L167:
	movq	-56(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	find_call
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L168
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_unlock
	movq	-8(%rbp), %rdx
	movq	%rax, 72(%rdx)
.L168:
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	find_call
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L169
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_get_ctx_params
	movq	-8(%rbp), %rdx
	movq	%rax, 80(%rdx)
.L169:
	movq	-56(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	find_call
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L170
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_nonce
	movq	-8(%rbp), %rdx
	movq	%rax, 88(%rdx)
.L170:
	movq	-56(%rbp), %rax
	movl	$18, %esi
	movq	%rax, %rdi
	call	find_call
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L171
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_get_seed
	movq	-8(%rbp), %rdx
	movq	%rax, 96(%rdx)
.L171:
	movq	-56(%rbp), %rax
	movl	$19, %esi
	movq	%rax, %rdi
	call	find_call
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L172
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rand_clear_seed
	movq	-8(%rbp), %rdx
	movq	%rax, 104(%rdx)
.L172:
	movq	-8(%rbp), %rax
	movq	$2147483647, 152(%rax)
	movq	-8(%rbp), %rax
	movq	$2147483647, 168(%rax)
	movq	-8(%rbp), %rax
	movq	$2147483647, 176(%rax)
	movq	-8(%rbp), %rax
	movq	$2147483647, 184(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 192(%rax)
	movl	$1, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rdx
	addq	$216, %rdx
	xchgl	(%rdx), %eax
	movq	-8(%rbp), %rax
	movl	$256, 196(%rax)
	movq	-8(%rbp), %rax
	movq	$3600, 208(%rax)
	movq	-8(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L178
	cmpq	$0, -48(%rbp)
	je	.L175
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_parent_strength
	testl	%eax, %eax
	je	.L179
	movq	-8(%rbp), %rax
	movl	128(%rax), %eax
	movl	-24(%rbp), %edx
	cmpl	%eax, %edx
	jnb	.L175
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$863, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$194, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L174
.L175:
	movq	-8(%rbp), %rax
	jmp	.L177
.L178:
	nop
	jmp	.L174
.L179:
	nop
.L174:
	movq	-8(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movl	$0, %eax
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE423:
	.size	ossl_rand_drbg_new, .-ossl_rand_drbg_new
	.globl	ossl_rand_drbg_free
	.type	ossl_rand_drbg_free, @function
ossl_rand_drbg_free:
.LFB424:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L183
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$884, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L180
.L183:
	nop
.L180:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE424:
	.size	ossl_rand_drbg_free, .-ossl_rand_drbg_free
	.section	.rodata
.LC3:
	.string	"state"
.LC4:
	.string	"min_entropylen"
.LC5:
	.string	"max_entropylen"
.LC6:
	.string	"min_noncelen"
.LC7:
	.string	"max_noncelen"
.LC8:
	.string	"max_perslen"
.LC9:
	.string	"max_adinlen"
.LC10:
	.string	"reseed_requests"
.LC11:
	.string	"reseed_time"
.LC12:
	.string	"reseed_time_interval"
	.text
	.globl	ossl_drbg_get_ctx_params
	.type	ossl_drbg_get_ctx_params, @function
ossl_drbg_get_ctx_params:
.LFB425:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L185
	movq	-24(%rbp), %rax
	movl	240(%rax), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L185
	movl	$0, %eax
	jmp	.L186
.L185:
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L187
	movq	-24(%rbp), %rax
	movl	128(%rax), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L187
	movl	$0, %eax
	jmp	.L186
.L187:
	leaq	.LC4(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L188
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L188
	movl	$0, %eax
	jmp	.L186
.L188:
	leaq	.LC5(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L189
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L189
	movl	$0, %eax
	jmp	.L186
.L189:
	leaq	.LC6(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L190
	movq	-24(%rbp), %rax
	movq	160(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L190
	movl	$0, %eax
	jmp	.L186
.L190:
	leaq	.LC7(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L191
	movq	-24(%rbp), %rax
	movq	168(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L191
	movl	$0, %eax
	jmp	.L186
.L191:
	leaq	.LC8(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L192
	movq	-24(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L192
	movl	$0, %eax
	jmp	.L186
.L192:
	leaq	.LC9(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L193
	movq	-24(%rbp), %rax
	movq	184(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L193
	movl	$0, %eax
	jmp	.L186
.L193:
	leaq	.LC10(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L194
	movq	-24(%rbp), %rax
	movl	196(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint@PLT
	testl	%eax, %eax
	jne	.L194
	movl	$0, %eax
	jmp	.L186
.L194:
	leaq	.LC11(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L195
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_time_t@PLT
	testl	%eax, %eax
	jne	.L195
	movl	$0, %eax
	jmp	.L186
.L195:
	leaq	.LC12(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L196
	movq	-24(%rbp), %rax
	movq	208(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_time_t@PLT
	testl	%eax, %eax
	jne	.L196
	movl	$0, %eax
	jmp	.L186
.L196:
	movl	$1, %eax
.L186:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE425:
	.size	ossl_drbg_get_ctx_params, .-ossl_drbg_get_ctx_params
	.section	.rodata
.LC13:
	.string	"max_request"
	.text
	.globl	ossl_drbg_get_ctx_params_no_lock
	.type	ossl_drbg_get_ctx_params_no_lock, @function
ossl_drbg_get_ctx_params_no_lock:
.LFB426:
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
	movq	$0, -8(%rbp)
	leaq	.LC13(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L198
	movq	-40(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L199
	movl	$0, %eax
	jmp	.L200
.L199:
	addq	$1, -8(%rbp)
.L198:
	leaq	.LC2(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L201
	movq	-40(%rbp), %rax
	addq	$216, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint@PLT
	testl	%eax, %eax
	jne	.L202
	movl	$0, %eax
	jmp	.L200
.L202:
	addq	$1, -8(%rbp)
.L201:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L203
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L204
.L203:
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
.L204:
	movl	$1, %eax
.L200:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE426:
	.size	ossl_drbg_get_ctx_params_no_lock, .-ossl_drbg_get_ctx_params_no_lock
	.globl	ossl_drbg_set_ctx_params
	.type	ossl_drbg_set_ctx_params, @function
ossl_drbg_set_ctx_params:
.LFB427:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L206
	movl	$1, %eax
	jmp	.L207
.L206:
	leaq	.LC10(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L208
	movq	-24(%rbp), %rax
	leaq	196(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L208
	movl	$0, %eax
	jmp	.L207
.L208:
	leaq	.LC12(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L209
	movq	-24(%rbp), %rax
	leaq	208(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_time_t@PLT
	testl	%eax, %eax
	jne	.L209
	movl	$0, %eax
	jmp	.L207
.L209:
	movl	$1, %eax
.L207:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE427:
	.size	ossl_drbg_set_ctx_params, .-ossl_drbg_set_ctx_params
	.globl	ossl_drbg_verify_digest
	.type	ossl_drbg_verify_digest, @function
ossl_drbg_verify_digest:
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
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_flags@PLT
	andl	$2, %eax
	testq	%rax, %rax
	je	.L211
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1018, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$183, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L212
.L211:
	movl	$1, %eax
.L212:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE428:
	.size	ossl_drbg_verify_digest, .-ossl_drbg_verify_digest
	.section	.rodata
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 22
__func__.10:
	.string	"ossl_drbg_lock_parent"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 20
__func__.9:
	.string	"get_parent_strength"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 24
__func__.8:
	.string	"get_parent_reseed_count"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 19
__func__.7:
	.string	"ossl_drbg_get_seed"
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 12
__func__.6:
	.string	"get_entropy"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 27
__func__.5:
	.string	"ossl_prov_drbg_instantiate"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 31
__func__.4:
	.string	"ossl_prov_drbg_reseed_unlocked"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 24
__func__.3:
	.string	"ossl_prov_drbg_generate"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 25
__func__.2:
	.string	"ossl_drbg_enable_locking"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 19
__func__.1:
	.string	"ossl_rand_drbg_new"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 24
__func__.0:
	.string	"ossl_drbg_verify_digest"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

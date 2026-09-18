	.file	"hkdf.c"
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
	.string	"../providers/implementations/kdfs/hkdf.c"
	.text
	.type	kdf_hkdf_new, @function
kdf_hkdf_new:
.LFB496:
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
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	leaq	.LC0(%rip), %rax
	movl	$99, %edx
	movq	%rax, %rsi
	movl	$136, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L8
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L8:
	movq	-8(%rbp), %rax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	kdf_hkdf_new, .-kdf_hkdf_new
	.type	kdf_hkdf_free, @function
kdf_hkdf_free:
.LFB497:
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
	je	.L11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	kdf_hkdf_reset
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$110, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L11:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	kdf_hkdf_free, .-kdf_hkdf_free
	.type	kdf_hkdf_reset, @function
kdf_hkdf_reset:
.LFB498:
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
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_reset@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$121, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$122, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	112(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$123, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$124, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	128(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$125, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movl	$136, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	kdf_hkdf_reset, .-kdf_hkdf_reset
	.type	kdf_hkdf_dup, @function
kdf_hkdf_dup:
.LFB499:
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
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	kdf_hkdf_new
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L14
	movq	-16(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L19
	movq	-16(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L19
	movq	-16(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L19
	movq	-16(%rbp), %rax
	leaq	96(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	96(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L19
	movq	-16(%rbp), %rax
	leaq	112(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	112(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L19
	movq	-16(%rbp), %rax
	leaq	128(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	128(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L19
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_digest_copy@PLT
	testl	%eax, %eax
	je	.L19
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
.L14:
	movq	-16(%rbp), %rax
	jmp	.L18
.L19:
	nop
.L17:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	kdf_hkdf_free
	movl	$0, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	kdf_hkdf_dup, .-kdf_hkdf_dup
	.type	kdf_hkdf_size, @function
kdf_hkdf_size:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	je	.L21
	movq	$-1, %rax
	jmp	.L22
.L21:
	cmpq	$0, -8(%rbp)
	jne	.L23
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$169, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L22
.L23:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L24
	movl	$0, %eax
	jmp	.L22
.L24:
	movl	-12(%rbp), %eax
	cltq
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	kdf_hkdf_size, .-kdf_hkdf_size
	.type	kdf_hkdf_derive, @function
kdf_hkdf_derive:
.LFB501:
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
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L26
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kdf_hkdf_set_ctx_params
	testl	%eax, %eax
	jne	.L27
.L26:
	movl	$0, %eax
	jmp	.L28
.L27:
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L29
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$191, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L28
.L29:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L30
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$195, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$128, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L28
.L30:
	cmpq	$0, -56(%rbp)
	jne	.L31
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$199, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L28
.L31:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	je	.L32
	cmpl	$2, %eax
	je	.L33
	movq	-8(%rbp), %rax
	movq	128(%rax), %r8
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	64(%rax), %r9
	movq	-8(%rbp), %rax
	movq	56(%rax), %r10
	movq	-8(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	pushq	%r8
	pushq	%rdi
	movq	%r10, %r8
	movq	%rax, %rdi
	call	HKDF
	addq	$32, %rsp
	jmp	.L28
.L32:
	movq	-8(%rbp), %rax
	movq	64(%rax), %r8
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	HKDF_Extract
	addq	$16, %rsp
	jmp	.L28
.L33:
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	120(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-48(%rbp), %r8
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	-56(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	HKDF_Expand
	addq	$16, %rsp
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	kdf_hkdf_derive, .-kdf_hkdf_derive
	.section	.rodata
.LC1:
	.string	"mode"
.LC2:
	.string	"EXTRACT_AND_EXPAND"
.LC3:
	.string	"EXTRACT_ONLY"
.LC4:
	.string	"EXPAND_ONLY"
.LC5:
	.string	"key"
.LC6:
	.string	"salt"
	.text
	.type	hkdf_common_set_ctx_params, @function
hkdf_common_set_ctx_params:
.LFB502:
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
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L35
	movl	$1, %eax
	jmp	.L47
.L35:
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_prov_digest_load_from_params@PLT
	testl	%eax, %eax
	jne	.L37
	movl	$0, %eax
	jmp	.L47
.L37:
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L38
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L39
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L40
	movq	-40(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L38
.L40:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L41
	movq	-40(%rbp), %rax
	movl	$1, 8(%rax)
	jmp	.L38
.L41:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L42
	movq	-40(%rbp), %rax
	movl	$2, 8(%rax)
	jmp	.L38
.L42:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$240, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L47
.L39:
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	je	.L43
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L44
	movl	-20(%rbp), %eax
	cmpl	$1, %eax
	je	.L44
	movl	-20(%rbp), %eax
	cmpl	$2, %eax
	je	.L44
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$247, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L47
.L44:
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L38
.L43:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$252, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L47
.L38:
	leaq	.LC5(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L45
	movq	-40(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$258, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-40(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	56(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L45
	movl	$0, %eax
	jmp	.L47
.L45:
	leaq	.LC6(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L46
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$266, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-40(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	movl	$1, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	hkdf_common_set_ctx_params, .-hkdf_common_set_ctx_params
	.section	.rodata
.LC7:
	.string	"info"
	.text
	.type	kdf_hkdf_set_ctx_params, @function
kdf_hkdf_set_ctx_params:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L49
	movl	$1, %eax
	jmp	.L50
.L49:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	hkdf_common_set_ctx_params
	testl	%eax, %eax
	jne	.L51
	movl	$0, %eax
	jmp	.L50
.L51:
	movq	-8(%rbp), %rax
	leaq	128(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	120(%rax), %rdx
	leaq	.LC7(%rip), %rsi
	movq	-32(%rbp), %rax
	movl	$32768, %r8d
	movq	%rax, %rdi
	call	ossl_param_get1_concat_octet_string@PLT
	testl	%eax, %eax
	jne	.L52
	movl	$0, %eax
	jmp	.L50
.L52:
	movl	$1, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	kdf_hkdf_set_ctx_params, .-kdf_hkdf_set_ctx_params
	.type	kdf_hkdf_settable_ctx_params, @function
kdf_hkdf_settable_ctx_params:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_settable_ctx_params.6(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	kdf_hkdf_settable_ctx_params, .-kdf_hkdf_settable_ctx_params
	.section	.rodata
.LC8:
	.string	"size"
	.text
	.type	kdf_hkdf_get_ctx_params, @function
kdf_hkdf_get_ctx_params:
.LFB505:
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
	leaq	.LC8(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L56
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	kdf_hkdf_size
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L57
	movl	$0, %eax
	jmp	.L58
.L57:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	jmp	.L58
.L56:
	leaq	.LC7(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L59
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L60
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	jne	.L61
.L60:
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movl	$1, %eax
	jmp	.L58
.L61:
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	120(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	jmp	.L58
.L59:
	movl	$-2, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	kdf_hkdf_get_ctx_params, .-kdf_hkdf_get_ctx_params
	.type	kdf_hkdf_gettable_ctx_params, @function
kdf_hkdf_gettable_ctx_params:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_gettable_ctx_params.5(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	kdf_hkdf_gettable_ctx_params, .-kdf_hkdf_gettable_ctx_params
	.globl	ossl_kdf_hkdf_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_kdf_hkdf_functions, @object
	.size	ossl_kdf_hkdf_functions, 160
ossl_kdf_hkdf_functions:
	.long	1
	.zero	4
	.quad	kdf_hkdf_new
	.long	2
	.zero	4
	.quad	kdf_hkdf_dup
	.long	3
	.zero	4
	.quad	kdf_hkdf_free
	.long	4
	.zero	4
	.quad	kdf_hkdf_reset
	.long	5
	.zero	4
	.quad	kdf_hkdf_derive
	.long	8
	.zero	4
	.quad	kdf_hkdf_settable_ctx_params
	.long	11
	.zero	4
	.quad	kdf_hkdf_set_ctx_params
	.long	7
	.zero	4
	.quad	kdf_hkdf_gettable_ctx_params
	.long	10
	.zero	4
	.quad	kdf_hkdf_get_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	HKDF, @function
HKDF:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L65
	movl	$0, %eax
	jmp	.L68
.L65:
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, -16(%rbp)
	movq	-144(%rbp), %r9
	movq	-136(%rbp), %r8
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	pushq	-16(%rbp)
	leaq	-96(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	HKDF_Extract
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L67
	movl	$0, %eax
	jmp	.L68
.L67:
	movq	32(%rbp), %r8
	movq	24(%rbp), %rdi
	movq	16(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-112(%rbp), %rax
	subq	$8, %rsp
	pushq	40(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	HKDF_Expand
	addq	$16, %rsp
	movl	%eax, -20(%rbp)
	leaq	-96(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	-20(%rbp), %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	HKDF, .-HKDF
	.section	.rodata
.LC9:
	.string	"HMAC"
	.text
	.type	HKDF_Extract, @function
HKDF_Extract:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L70
	movl	$0, %eax
	jmp	.L71
.L70:
	movl	-20(%rbp), %eax
	cltq
	cmpq	%rax, 24(%rbp)
	je	.L72
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$439, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$139, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L71
.L72:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movslq	%eax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx
	leaq	.LC9(%rip), %rsi
	movq	-40(%rbp), %rax
	pushq	$0
	pushq	%rbx
	pushq	16(%rbp)
	pushq	-80(%rbp)
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	movq	%rcx, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_Q_mac@PLT
	addq	$48, %rsp
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L71:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	HKDF_Extract, .-HKDF_Extract
	.type	HKDF_Expand, @function
HKDF_Expand:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%r8, -184(%rbp)
	movq	%r9, -192(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L74
	movl	$0, %eax
	jmp	.L90
.L74:
	movl	-28(%rbp), %eax
	cltq
	movq	%rax, -40(%rbp)
	movq	16(%rbp), %rax
	movl	$0, %edx
	divq	-40(%rbp)
	movq	%rax, -24(%rbp)
	movq	16(%rbp), %rax
	movl	$0, %edx
	divq	-40(%rbp)
	movq	%rdx, %rax
	testq	%rax, %rax
	je	.L76
	addq	$1, -24(%rbp)
.L76:
	cmpq	$255, -24(%rbp)
	ja	.L77
	cmpq	$0, -192(%rbp)
	jne	.L78
.L77:
	movl	$0, %eax
	jmp	.L90
.L78:
	call	HMAC_CTX_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L79
	movl	$0, %eax
	jmp	.L90
.L79:
	movq	-168(%rbp), %rax
	movl	%eax, %edi
	movq	-152(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	HMAC_Init_ex@PLT
	testl	%eax, %eax
	je	.L91
	movl	$1, -8(%rbp)
	jmp	.L82
.L89:
	movl	-8(%rbp), %eax
	movb	%al, -129(%rbp)
	cmpl	$1, -8(%rbp)
	jbe	.L83
	movq	-48(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	HMAC_Init_ex@PLT
	testl	%eax, %eax
	je	.L92
	movq	-40(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	je	.L93
.L83:
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	je	.L94
	leaq	-129(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	je	.L95
	leaq	-128(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Final@PLT
	testl	%eax, %eax
	je	.L96
	movq	16(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-192(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-56(%rbp), %rax
	addq	%rax, -16(%rbp)
	addl	$1, -8(%rbp)
.L82:
	movl	-8(%rbp), %eax
	cmpq	%rax, -24(%rbp)
	jnb	.L89
	movl	$1, -4(%rbp)
	jmp	.L81
.L91:
	nop
	jmp	.L81
.L92:
	nop
	jmp	.L81
.L93:
	nop
	jmp	.L81
.L94:
	nop
	jmp	.L81
.L95:
	nop
	jmp	.L81
.L96:
	nop
.L81:
	leaq	-128(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	HMAC_CTX_free@PLT
	movl	-4(%rbp), %eax
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	HKDF_Expand, .-HKDF_Expand
	.type	prov_tls13_hkdf_expand, @function
prov_tls13_hkdf_expand:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2176, %rsp
	movq	%rdi, -2136(%rbp)
	movq	%rsi, -2144(%rbp)
	movq	%rdx, -2152(%rbp)
	movq	%rcx, -2160(%rbp)
	movq	%r8, -2168(%rbp)
	movq	%r9, -2176(%rbp)
	leaq	-2064(%rbp), %rsi
	leaq	-2128(%rbp), %rax
	movl	$0, %ecx
	movl	$2048, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	je	.L98
	movq	48(%rbp), %rcx
	leaq	-2128(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L98
	leaq	-2128(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L98
	movq	-2168(%rbp), %rdx
	movq	-2160(%rbp), %rcx
	leaq	-2128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L98
	movq	16(%rbp), %rdx
	movq	-2176(%rbp), %rcx
	leaq	-2128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L98
	leaq	-2128(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L98
	cmpq	$0, 24(%rbp)
	je	.L99
	movq	32(%rbp), %rax
	jmp	.L100
.L99:
	movl	$0, %eax
.L100:
	movq	24(%rbp), %rsi
	leaq	-2128(%rbp), %rdi
	movl	$1, %ecx
	movq	%rax, %rdx
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	je	.L98
	leaq	-8(%rbp), %rdx
	leaq	-2128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L98
	leaq	-2128(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	jne	.L101
.L98:
	leaq	-2128(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movl	$0, %eax
	jmp	.L103
.L101:
	movq	-8(%rbp), %rdi
	movq	40(%rbp), %r8
	leaq	-2064(%rbp), %rcx
	movq	-2152(%rbp), %rdx
	movq	-2144(%rbp), %rsi
	movq	-2136(%rbp), %rax
	subq	$8, %rsp
	pushq	48(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	HKDF_Expand
	addq	$16, %rsp
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	prov_tls13_hkdf_expand, .-prov_tls13_hkdf_expand
	.type	prov_tls13_hkdf_generate_secret, @function
prov_tls13_hkdf_generate_secret:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	%r8, -200(%rbp)
	movq	%r9, -208(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L105
	movl	$0, %eax
	jmp	.L115
.L105:
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, -16(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.L107
	leaq	default_zeros.3(%rip), %rax
	movq	%rax, -200(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -208(%rbp)
.L107:
	cmpq	$0, -184(%rbp)
	jne	.L108
	leaq	default_zeros.3(%rip), %rax
	movq	%rax, -184(%rbp)
	movq	$0, -192(%rbp)
	jmp	.L109
.L108:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L110
	movq	-176(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	jle	.L110
	leaq	-160(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jg	.L111
.L110:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	$0, %eax
	jmp	.L115
.L111:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	32(%rbp), %r9
	movq	24(%rbp), %r8
	movq	16(%rbp), %rcx
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rsi
	movq	-176(%rbp), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	leaq	-96(%rbp), %rdi
	pushq	%rdi
	pushq	-16(%rbp)
	leaq	-160(%rbp), %rdi
	pushq	%rdi
	pushq	40(%rbp)
	movq	%rax, %rdi
	call	prov_tls13_hkdf_expand
	addq	$48, %rsp
	testl	%eax, %eax
	jne	.L113
	movl	$0, %eax
	jmp	.L115
.L113:
	leaq	-96(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)
.L109:
	movq	-208(%rbp), %r8
	movq	-200(%rbp), %rdi
	movq	-192(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rsi
	movq	-168(%rbp), %rax
	pushq	56(%rbp)
	pushq	48(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	HKDF_Extract
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	leaq	-96(%rbp), %rax
	cmpq	%rax, -184(%rbp)
	jne	.L114
	movq	-16(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L114:
	movl	-4(%rbp), %eax
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	prov_tls13_hkdf_generate_secret, .-prov_tls13_hkdf_generate_secret
	.type	kdf_tls1_3_derive, @function
kdf_tls1_3_derive:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L117
	movq	-96(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kdf_tls1_3_set_ctx_params
	testl	%eax, %eax
	jne	.L118
.L117:
	movl	$0, %eax
	jmp	.L119
.L118:
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L120
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$674, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L119
.L120:
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	je	.L121
	cmpl	$2, %eax
	je	.L122
	movl	$0, %eax
	jmp	.L119
.L121:
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rax
	movq	88(%rax), %r15
	movq	-56(%rbp), %rax
	movq	80(%rax), %r14
	movq	-56(%rbp), %rax
	movq	72(%rax), %r13
	movq	-56(%rbp), %rax
	movq	64(%rax), %rbx
	movq	%rbx, -112(%rbp)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rcx
	movq	%rcx, -120(%rbp)
	movq	-56(%rbp), %rax
	movq	48(%rax), %r12
	movq	-56(%rbp), %rax
	movq	40(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, %rdi
	movq	-64(%rbp), %rax
	pushq	-88(%rbp)
	pushq	-80(%rbp)
	pushq	-104(%rbp)
	pushq	%r15
	pushq	%r14
	pushq	%r13
	movq	-112(%rbp), %r9
	movq	-120(%rbp), %r8
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rsi
	call	prov_tls13_hkdf_generate_secret
	addq	$48, %rsp
	jmp	.L119
.L122:
	movq	-56(%rbp), %rax
	movq	112(%rax), %r9
	movq	-56(%rbp), %rax
	movq	104(%rax), %r8
	movq	-56(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	88(%rax), %r11
	movq	-56(%rbp), %rax
	movq	80(%rax), %r10
	movq	-56(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	-88(%rbp)
	pushq	-80(%rbp)
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	movq	%r11, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	prov_tls13_hkdf_expand
	addq	$48, %rsp
.L119:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	kdf_tls1_3_derive, .-kdf_tls1_3_derive
	.section	.rodata
.LC10:
	.string	"prefix"
.LC11:
	.string	"label"
.LC12:
	.string	"data"
	.text
	.type	kdf_tls1_3_set_ctx_params, @function
kdf_tls1_3_set_ctx_params:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L124
	movl	$1, %eax
	jmp	.L125
.L124:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	hkdf_common_set_ctx_params
	testl	%eax, %eax
	jne	.L126
	movl	$0, %eax
	jmp	.L125
.L126:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L127
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$712, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L125
.L127:
	leaq	.LC10(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L128
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$717, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	72(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L128
	movl	$0, %eax
	jmp	.L125
.L128:
	leaq	.LC11(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L129
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$725, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-8(%rbp), %rax
	leaq	96(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	88(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L129
	movl	$0, %eax
	jmp	.L125
.L129:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$732, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
	leaq	.LC12(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L130
	movq	-8(%rbp), %rax
	leaq	112(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	104(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L130
	movl	$0, %eax
	jmp	.L125
.L130:
	movl	$1, %eax
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	kdf_tls1_3_set_ctx_params, .-kdf_tls1_3_set_ctx_params
	.type	kdf_tls1_3_settable_ctx_params, @function
kdf_tls1_3_settable_ctx_params:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_settable_ctx_params.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	kdf_tls1_3_settable_ctx_params, .-kdf_tls1_3_settable_ctx_params
	.globl	ossl_kdf_tls1_3_kdf_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_kdf_tls1_3_kdf_functions, @object
	.size	ossl_kdf_tls1_3_kdf_functions, 160
ossl_kdf_tls1_3_kdf_functions:
	.long	1
	.zero	4
	.quad	kdf_hkdf_new
	.long	2
	.zero	4
	.quad	kdf_hkdf_dup
	.long	3
	.zero	4
	.quad	kdf_hkdf_free
	.long	4
	.zero	4
	.quad	kdf_hkdf_reset
	.long	5
	.zero	4
	.quad	kdf_tls1_3_derive
	.long	8
	.zero	4
	.quad	kdf_tls1_3_settable_ctx_params
	.long	11
	.zero	4
	.quad	kdf_tls1_3_set_ctx_params
	.long	7
	.zero	4
	.quad	kdf_hkdf_gettable_ctx_params
	.long	10
	.zero	4
	.quad	kdf_hkdf_get_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.9, @object
	.size	__func__.9, 14
__func__.9:
	.string	"kdf_hkdf_size"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 16
__func__.8:
	.string	"kdf_hkdf_derive"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 27
__func__.7:
	.string	"hkdf_common_set_ctx_params"
.LC13:
	.string	"properties"
.LC14:
	.string	"digest"
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params.6, @object
	.size	known_settable_ctx_params.6, 320
known_settable_ctx_params.6:
	.quad	.LC1
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC1
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC13
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC14
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
	.quad	.LC7
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
	.align 32
	.type	known_gettable_ctx_params.5, @object
	.size	known_gettable_ctx_params.5, 120
known_gettable_ctx_params.5:
	.quad	.LC8
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC7
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
	.section	.rodata
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 13
__func__.4:
	.string	"HKDF_Extract"
	.align 32
	.type	default_zeros.3, @object
	.size	default_zeros.3, 64
default_zeros.3:
	.zero	64
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 18
__func__.2:
	.string	"kdf_tls1_3_derive"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 26
__func__.1:
	.string	"kdf_tls1_3_set_ctx_params"
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params.0, @object
	.size	known_settable_ctx_params.0, 400
known_settable_ctx_params.0:
	.quad	.LC1
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC1
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC13
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC14
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
	.quad	.LC10
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC11
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC12
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
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

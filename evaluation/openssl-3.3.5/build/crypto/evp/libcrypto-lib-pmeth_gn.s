	.file	"pmeth_gn.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
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
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
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
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"../crypto/evp/pmeth_gn.c"
	.text
	.type	gen_init, @function
gen_init:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L27
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_ctx_free_old_ops@PLT
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L28
	cmpl	$2, -28(%rbp)
	je	.L11
	cmpl	$4, -28(%rbp)
	je	.L12
	jmp	.L13
.L11:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, %edx
	movl	$132, %esi
	movq	%rax, %rdi
	call	evp_keymgmt_gen_init@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 40(%rdx)
	jmp	.L13
.L12:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	evp_keymgmt_gen_init@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 40(%rdx)
	nop
.L13:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L14
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$52, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L14:
	movl	$1, -4(%rbp)
	jmp	.L16
.L28:
	nop
.L10:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L29
	cmpl	$2, -28(%rbp)
	jne	.L18
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L29
.L18:
	cmpl	$4, -28(%rbp)
	jne	.L19
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L29
.L19:
	movl	$1, -4(%rbp)
	cmpl	$2, -28(%rbp)
	je	.L20
	cmpl	$4, -28(%rbp)
	je	.L21
	jmp	.L16
.L20:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L30
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
	jmp	.L30
.L21:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
	jmp	.L31
.L30:
	nop
	jmp	.L16
.L31:
	nop
.L16:
	cmpl	$0, -4(%rbp)
	jg	.L24
	cmpq	$0, -24(%rbp)
	je	.L24
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_ctx_free_old_ops@PLT
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.L24:
	movl	-4(%rbp), %eax
	jmp	.L26
.L27:
	nop
	jmp	.L7
.L29:
	nop
.L7:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$89, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, -4(%rbp)
	jmp	.L16
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	gen_init, .-gen_init
	.globl	EVP_PKEY_paramgen_init
	.type	EVP_PKEY_paramgen_init, @function
EVP_PKEY_paramgen_init:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	gen_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	EVP_PKEY_paramgen_init, .-EVP_PKEY_paramgen_init
	.globl	EVP_PKEY_keygen_init
	.type	EVP_PKEY_keygen_init, @function
EVP_PKEY_keygen_init:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	gen_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	EVP_PKEY_keygen_init, .-EVP_PKEY_keygen_init
	.section	.rodata
.LC1:
	.string	"potential"
.LC2:
	.string	"iteration"
	.text
	.type	ossl_callback_to_pkey_gencb, @function
ossl_callback_to_pkey_gencb:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$-1, -20(%rbp)
	movl	$-1, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	movl	$1, %eax
	jmp	.L43
.L37:
	leaq	.LC1(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L39
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L40
.L39:
	movl	$0, %eax
	jmp	.L43
.L40:
	leaq	.LC2(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L41
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L42
.L41:
	movl	$0, %eax
	jmp	.L43
.L42:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	leaq	4(%rax), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	ossl_callback_to_pkey_gencb, .-ossl_callback_to_pkey_gencb
	.globl	EVP_PKEY_generate
	.type	EVP_PKEY_generate, @function
EVP_PKEY_generate:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L45
	movl	$-1, %eax
	jmp	.L68
.L45:
	cmpq	$0, -56(%rbp)
	je	.L72
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	andl	$6, %eax
	testl	%eax, %eax
	je	.L73
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L51
	call	EVP_PKEY_new@PLT
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L51:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L52
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$148, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L68
.L52:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L74
	movq	-56(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, 104(%rax)
	movq	-56(%rbp), %rax
	movl	$2, 112(%rax)
	movl	$1, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L55
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	leaq	-40(%rbp), %rdx
	movq	%rax, %rdi
	call	evp_pkey_export_to_provider@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L75
	movq	-56(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_gen_set_template@PLT
	movl	%eax, -4(%rbp)
.L55:
	cmpl	$0, -4(%rbp)
	je	.L57
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdi
	leaq	ossl_callback_to_pkey_gencb(%rip), %rcx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	evp_keymgmt_util_gen@PLT
	testq	%rax, %rax
	je	.L57
	movl	$1, %eax
	jmp	.L58
.L57:
	movl	$0, %eax
.L58:
	movl	%eax, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	$0, 104(%rax)
	cmpl	$0, -4(%rbp)
	je	.L59
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	evp_pkey_free_legacy@PLT
.L59:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movl	116(%rdx), %edx
	movl	%edx, (%rax)
	jmp	.L60
.L74:
	nop
.L54:
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L61
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L76
.L61:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L63
	cmpl	$4, %eax
	je	.L64
	jmp	.L48
.L63:
	movq	-56(%rbp), %rax
	movq	120(%rax), %rax
	movq	40(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	jmp	.L60
.L64:
	movq	-56(%rbp), %rax
	movq	120(%rax), %rax
	movq	56(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	nop
.L60:
	cmpl	$0, -4(%rbp)
	jg	.L66
	cmpq	$0, -16(%rbp)
	je	.L67
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
.L67:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L66:
	movl	-4(%rbp), %eax
	jmp	.L68
.L72:
	nop
	jmp	.L48
.L75:
	nop
.L48:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$244, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, -4(%rbp)
	jmp	.L60
.L73:
	nop
.L50:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$248, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$151, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, -4(%rbp)
	jmp	.L60
.L76:
	nop
.L62:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$253, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$204, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, -4(%rbp)
	jmp	.L60
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	EVP_PKEY_generate, .-EVP_PKEY_generate
	.globl	EVP_PKEY_paramgen
	.type	EVP_PKEY_paramgen, @function
EVP_PKEY_paramgen:
.LFB512:
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
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L78
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$262, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$151, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L79
.L78:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_generate@PLT
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	EVP_PKEY_paramgen, .-EVP_PKEY_paramgen
	.globl	EVP_PKEY_keygen
	.type	EVP_PKEY_keygen, @function
EVP_PKEY_keygen:
.LFB513:
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
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L81
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$271, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$151, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L82
.L81:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_generate@PLT
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	EVP_PKEY_keygen, .-EVP_PKEY_keygen
	.globl	EVP_PKEY_CTX_set_cb
	.type	EVP_PKEY_CTX_set_cb, @function
EVP_PKEY_CTX_set_cb:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 96(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	EVP_PKEY_CTX_set_cb, .-EVP_PKEY_CTX_set_cb
	.globl	EVP_PKEY_CTX_get_cb
	.type	EVP_PKEY_CTX_get_cb, @function
EVP_PKEY_CTX_get_cb:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	EVP_PKEY_CTX_get_cb, .-EVP_PKEY_CTX_get_cb
	.type	trans_cb, @function
trans_cb:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GENCB_get_arg@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	leaq	4(%rax), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	trans_cb, .-trans_cb
	.globl	evp_pkey_set_cb_translate
	.type	evp_pkey_set_cb_translate, @function
evp_pkey_set_cb_translate:
.LFB517:
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
	leaq	trans_cb(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GENCB_set@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	evp_pkey_set_cb_translate, .-evp_pkey_set_cb_translate
	.globl	EVP_PKEY_CTX_get_keygen_info
	.type	EVP_PKEY_CTX_get_keygen_info, @function
EVP_PKEY_CTX_get_keygen_info:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.L90
	movq	-8(%rbp), %rax
	movl	112(%rax), %eax
	jmp	.L91
.L90:
	cmpl	$0, -12(%rbp)
	js	.L92
	movq	-8(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L93
.L92:
	movl	$0, %eax
	jmp	.L91
.L93:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
.L91:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	EVP_PKEY_CTX_get_keygen_info, .-EVP_PKEY_CTX_get_keygen_info
	.globl	EVP_PKEY_new_mac_key
	.type	EVP_PKEY_new_mac_key, @function
EVP_PKEY_new_mac_key:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	EVP_PKEY_CTX_new_id@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L95
	movl	$0, %eax
	jmp	.L100
.L95:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	testl	%eax, %eax
	jle	.L101
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_mac_key@PLT
	testl	%eax, %eax
	jle	.L102
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	testl	%eax, %eax
	jmp	.L98
.L101:
	nop
	jmp	.L98
.L102:
	nop
.L98:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-16(%rbp), %rax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	EVP_PKEY_new_mac_key, .-EVP_PKEY_new_mac_key
	.type	fromdata_init, @function
fromdata_init:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L110
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L110
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_ctx_free_old_ops@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L111
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L108
.L110:
	nop
	jmp	.L106
.L111:
	nop
.L106:
	cmpq	$0, -8(%rbp)
	je	.L109
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
.L109:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$354, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	fromdata_init, .-fromdata_init
	.globl	EVP_PKEY_fromdata_init
	.type	EVP_PKEY_fromdata_init, @function
EVP_PKEY_fromdata_init:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	fromdata_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	EVP_PKEY_fromdata_init, .-EVP_PKEY_fromdata_init
	.globl	EVP_PKEY_fromdata
	.type	EVP_PKEY_fromdata, @function
EVP_PKEY_fromdata:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L115
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L116
.L115:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$370, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L117
.L116:
	cmpq	$0, -32(%rbp)
	jne	.L118
	movl	$-1, %eax
	jmp	.L117
.L118:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L119
	call	EVP_PKEY_new@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L119:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L120
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$381, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L117
.L120:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	%rax, %rdi
	call	evp_keymgmt_util_fromdata@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L121
	cmpq	$0, -8(%rbp)
	je	.L122
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L122:
	movl	$0, %eax
	jmp	.L117
.L121:
	movl	$1, %eax
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	EVP_PKEY_fromdata, .-EVP_PKEY_fromdata
	.globl	EVP_PKEY_fromdata_settable
	.type	EVP_PKEY_fromdata_settable, @function
EVP_PKEY_fromdata_settable:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	fromdata_init
	cmpl	$1, %eax
	jne	.L124
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	evp_keymgmt_import_types@PLT
	jmp	.L125
.L124:
	movl	$0, %eax
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	EVP_PKEY_fromdata_settable, .-EVP_PKEY_fromdata_settable
	.type	ossl_pkey_todata_cb, @function
ossl_pkey_todata_cb:
.LFB524:
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
	movq	%rax, %rdi
	call	OSSL_PARAM_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	ossl_pkey_todata_cb, .-ossl_pkey_todata_cb
	.globl	EVP_PKEY_todata
	.type	EVP_PKEY_todata, @function
EVP_PKEY_todata:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L129
	movl	$0, %eax
	jmp	.L130
.L129:
	movq	-24(%rbp), %rdx
	leaq	ossl_pkey_todata_cb(%rip), %rdi
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	EVP_PKEY_export@PLT
.L130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	EVP_PKEY_todata, .-EVP_PKEY_todata
	.type	pkey_fake_import, @function
pkey_fake_import:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	pkey_fake_import, .-pkey_fake_import
	.globl	EVP_PKEY_export
	.type	EVP_PKEY_export, @function
EVP_PKEY_export:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L134
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$442, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L135
.L134:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L136
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L136
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	288(%rax), %r9
	leaq	pkey_fake_import(%rip), %rdx
	leaq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	*%r9
	jmp	.L135
.L136:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_keymgmt_util_export@PLT
.L135:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	EVP_PKEY_export, .-EVP_PKEY_export
	.section	.rodata
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 9
__func__.6:
	.string	"gen_init"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 18
__func__.5:
	.string	"EVP_PKEY_generate"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 18
__func__.4:
	.string	"EVP_PKEY_paramgen"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 16
__func__.3:
	.string	"EVP_PKEY_keygen"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 14
__func__.2:
	.string	"fromdata_init"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"EVP_PKEY_fromdata"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"EVP_PKEY_export"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

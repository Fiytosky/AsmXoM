	.file	"tls_srp.c"
	.text
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB600:
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
.LFE600:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB601:
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
.LFE601:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB616:
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
.LFE616:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB617:
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
.LFE617:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB693:
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
.LFE693:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB694:
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
.LFE694:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"../ssl/tls_srp.c"
	.text
	.globl	ssl_ctx_srp_ctx_free_intern
	.type	ssl_ctx_srp_ctx_free_intern, @function
ssl_ctx_srp_ctx_free_intern:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	movq	832(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$36, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	904(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$37, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	840(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	848(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	856(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	864(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	872(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	880(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	888(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	896(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	addq	$800, %rax
	movl	$128, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movl	$1024, 912(%rax)
	movl	$1, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	ssl_ctx_srp_ctx_free_intern, .-ssl_ctx_srp_ctx_free_intern
	.globl	SSL_CTX_SRP_CTX_free
	.type	SSL_CTX_SRP_CTX_free, @function
SSL_CTX_SRP_CTX_free:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_ctx_srp_ctx_free_intern@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	SSL_CTX_SRP_CTX_free, .-SSL_CTX_SRP_CTX_free
	.globl	ssl_srp_ctx_free_intern
	.type	ssl_srp_ctx_free_intern, @function
ssl_srp_ctx_free_intern:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	movq	-8(%rbp), %rax
	movq	2904(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	2976(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$65, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	2912(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	2920(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	2928(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	2936(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	2944(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	2952(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	2960(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	2968(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	addq	$2872, %rax
	movl	$128, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movl	$1024, 2984(%rax)
	movl	$1, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	ssl_srp_ctx_free_intern, .-ssl_srp_ctx_free_intern
	.globl	SSL_SRP_CTX_free
	.type	SSL_SRP_CTX_free, @function
SSL_SRP_CTX_free:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L22
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L23
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L24
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L25
.L24:
	movq	$0, -8(%rbp)
	jmp	.L25
.L23:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L25
.L22:
	movq	$0, -8(%rbp)
.L25:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_srp_ctx_free_intern@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	SSL_SRP_CTX_free, .-SSL_SRP_CTX_free
	.globl	ssl_srp_ctx_init_intern
	.type	ssl_srp_ctx_init_intern, @function
ssl_srp_ctx_init_intern:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L28
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L29
.L28:
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	-24(%rbp), %rax
	addq	$2872, %rax
	movl	$128, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movq	800(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 2872(%rax)
	movq	-8(%rbp), %rax
	movq	808(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 2880(%rax)
	movq	-8(%rbp), %rax
	movq	816(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 2888(%rax)
	movq	-8(%rbp), %rax
	movq	824(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 2896(%rax)
	movq	-8(%rbp), %rax
	movl	912(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 2984(%rax)
	movq	-8(%rbp), %rax
	movq	840(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movq	-8(%rbp), %rax
	movq	840(%rax), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 2912(%rdx)
	movq	-24(%rbp), %rax
	movq	2912(%rax), %rax
	testq	%rax, %rax
	je	.L32
.L31:
	movq	-8(%rbp), %rax
	movq	848(%rax), %rax
	testq	%rax, %rax
	je	.L33
	movq	-8(%rbp), %rax
	movq	848(%rax), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 2920(%rdx)
	movq	-24(%rbp), %rax
	movq	2920(%rax), %rax
	testq	%rax, %rax
	je	.L32
.L33:
	movq	-8(%rbp), %rax
	movq	856(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movq	-8(%rbp), %rax
	movq	856(%rax), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 2928(%rdx)
	movq	-24(%rbp), %rax
	movq	2928(%rax), %rax
	testq	%rax, %rax
	je	.L32
.L34:
	movq	-8(%rbp), %rax
	movq	864(%rax), %rax
	testq	%rax, %rax
	je	.L35
	movq	-8(%rbp), %rax
	movq	864(%rax), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 2936(%rdx)
	movq	-24(%rbp), %rax
	movq	2936(%rax), %rax
	testq	%rax, %rax
	je	.L32
.L35:
	movq	-8(%rbp), %rax
	movq	872(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-8(%rbp), %rax
	movq	872(%rax), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 2944(%rdx)
	movq	-24(%rbp), %rax
	movq	2944(%rax), %rax
	testq	%rax, %rax
	je	.L32
.L36:
	movq	-8(%rbp), %rax
	movq	880(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-8(%rbp), %rax
	movq	880(%rax), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 2952(%rdx)
	movq	-24(%rbp), %rax
	movq	2952(%rax), %rax
	testq	%rax, %rax
	je	.L32
.L37:
	movq	-8(%rbp), %rax
	movq	896(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-8(%rbp), %rax
	movq	896(%rax), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 2968(%rdx)
	movq	-24(%rbp), %rax
	movq	2968(%rax), %rax
	testq	%rax, %rax
	je	.L32
.L38:
	movq	-8(%rbp), %rax
	movq	888(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-8(%rbp), %rax
	movq	888(%rax), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 2960(%rdx)
	movq	-24(%rbp), %rax
	movq	2960(%rax), %rax
	testq	%rax, %rax
	jne	.L39
.L32:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$129, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L40
.L39:
	movq	-8(%rbp), %rax
	movq	832(%rax), %rax
	testq	%rax, %rax
	je	.L41
	movq	-8(%rbp), %rax
	movq	832(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$133, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 2904(%rdx)
	movq	-24(%rbp), %rax
	movq	2904(%rax), %rax
	testq	%rax, %rax
	jne	.L41
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$134, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L40
.L41:
	movq	-8(%rbp), %rax
	movq	904(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-8(%rbp), %rax
	movq	904(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$138, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 2976(%rdx)
	movq	-24(%rbp), %rax
	movq	2976(%rax), %rax
	testq	%rax, %rax
	jne	.L42
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$139, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L40
.L42:
	movq	-8(%rbp), %rax
	movq	920(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 2992(%rax)
	movl	$1, %eax
	jmp	.L30
.L40:
	movq	-24(%rbp), %rax
	movq	2904(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$146, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	2976(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$147, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	2912(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	2920(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	2928(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	2936(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	2944(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	2952(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	2960(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	2968(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	addq	$2872, %rax
	movl	$128, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	ssl_srp_ctx_init_intern, .-ssl_srp_ctx_init_intern
	.globl	SSL_SRP_CTX_init
	.type	SSL_SRP_CTX_init, @function
SSL_SRP_CTX_init:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L44
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L45
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L46
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L47
.L46:
	movq	$0, -8(%rbp)
	jmp	.L47
.L45:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L47
.L44:
	movq	$0, -8(%rbp)
.L47:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_srp_ctx_init_intern@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	SSL_SRP_CTX_init, .-SSL_SRP_CTX_init
	.globl	ssl_ctx_srp_ctx_init_intern
	.type	ssl_ctx_srp_ctx_init_intern, @function
ssl_ctx_srp_ctx_init_intern:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L50
	movl	$0, %eax
	jmp	.L51
.L50:
	movq	-8(%rbp), %rax
	addq	$800, %rax
	movl	$128, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movl	$1024, 912(%rax)
	movl	$1, %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	ssl_ctx_srp_ctx_init_intern, .-ssl_ctx_srp_ctx_init_intern
	.globl	SSL_CTX_SRP_CTX_init
	.type	SSL_CTX_SRP_CTX_init, @function
SSL_CTX_SRP_CTX_init:
.LFB754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_ctx_srp_ctx_init_intern@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	SSL_CTX_SRP_CTX_init, .-SSL_CTX_SRP_CTX_init
	.globl	ssl_srp_server_param_with_username_intern
	.type	ssl_srp_server_param_with_username_intern, @function
ssl_srp_server_param_with_username_intern:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-80(%rbp), %rax
	movl	$115, (%rax)
	movq	-72(%rbp), %rax
	movq	2880(%rax), %rax
	testq	%rax, %rax
	je	.L55
	movq	-72(%rbp), %rax
	movq	2880(%rax), %r8
	movq	-72(%rbp), %rax
	movq	2872(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L55
	movl	-12(%rbp), %eax
	jmp	.L62
.L55:
	movq	-80(%rbp), %rax
	movl	$80, (%rax)
	movq	-72(%rbp), %rax
	movq	2912(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	-72(%rbp), %rax
	movq	2920(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	-72(%rbp), %rax
	movq	2928(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	-72(%rbp), %rax
	movq	2968(%rax), %rax
	testq	%rax, %rax
	jne	.L58
.L57:
	movl	$2, %eax
	jmp	.L62
.L58:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	-64(%rbp), %rsi
	movl	$0, %ecx
	movl	$48, %edx
	movq	%rax, %rdi
	call	RAND_priv_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L59
	movl	$2, %eax
	jmp	.L62
.L59:
	leaq	-64(%rbp), %rax
	movl	$0, %edx
	movl	$48, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, 2960(%rdx)
	leaq	-64(%rbp), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
	movq	1096(%rax), %r8
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	2968(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	2920(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	2912(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	2960(%rax), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SRP_Calc_B_ex@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, 2936(%rdx)
	movq	-72(%rbp), %rax
	movq	2936(%rax), %rax
	testq	%rax, %rax
	je	.L60
	movl	$0, %eax
	jmp	.L62
.L60:
	movl	$2, %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	ssl_srp_server_param_with_username_intern, .-ssl_srp_server_param_with_username_intern
	.globl	SSL_srp_server_param_with_username
	.type	SSL_srp_server_param_with_username, @function
SSL_srp_server_param_with_username:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L64
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L65
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L66
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L67
.L66:
	movq	$0, -8(%rbp)
	jmp	.L67
.L65:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L67
.L64:
	movq	$0, -8(%rbp)
.L67:
	cmpq	$0, -8(%rbp)
	jne	.L68
	movl	$2, %eax
	jmp	.L69
.L68:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_srp_server_param_with_username_intern@PLT
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	SSL_srp_server_param_with_username, .-SSL_srp_server_param_with_username
	.globl	SSL_set_srp_server_param_pw
	.type	SSL_set_srp_server_param_pw, @function
SSL_set_srp_server_param_pw:
.LFB757:
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
	cmpq	$0, -24(%rbp)
	je	.L71
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L72
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L73
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L74
.L73:
	movq	$0, -8(%rbp)
	jmp	.L74
.L72:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L74
.L71:
	movq	$0, -8(%rbp)
.L74:
	cmpq	$0, -8(%rbp)
	jne	.L75
	movl	$-1, %eax
	jmp	.L76
.L75:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SRP_get_default_gN@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L77
	movl	$-1, %eax
	jmp	.L76
.L77:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 2912(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 2920(%rdx)
	movq	-8(%rbp), %rax
	movq	2968(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 2968(%rax)
	movq	-8(%rbp), %rax
	movq	2928(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 2928(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	1096(%rax), %r8
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	2920(%rax), %r9
	movq	-8(%rbp), %rax
	movq	2912(%rax), %r10
	movq	-8(%rbp), %rax
	leaq	2968(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	2928(%rax), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	pushq	%r8
	pushq	%rdi
	movq	%r10, %r8
	movq	%rax, %rdi
	call	SRP_create_verifier_BN_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L78
	movl	$-1, %eax
	jmp	.L76
.L78:
	movl	$1, %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	SSL_set_srp_server_param_pw, .-SSL_set_srp_server_param_pw
	.globl	SSL_set_srp_server_param
	.type	SSL_set_srp_server_param, @function
SSL_set_srp_server_param:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L80
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L81
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L82
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L83
.L82:
	movq	$0, -8(%rbp)
	jmp	.L83
.L81:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L83
.L80:
	movq	$0, -8(%rbp)
.L83:
	cmpq	$0, -8(%rbp)
	jne	.L84
	movl	$-1, %eax
	jmp	.L85
.L84:
	cmpq	$0, -32(%rbp)
	je	.L86
	movq	-8(%rbp), %rax
	movq	2912(%rax), %rax
	testq	%rax, %rax
	je	.L87
	movq	-8(%rbp), %rax
	movq	2912(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L86
	movq	-8(%rbp), %rax
	movq	2912(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 2912(%rax)
	jmp	.L86
.L87:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 2912(%rdx)
.L86:
	cmpq	$0, -40(%rbp)
	je	.L88
	movq	-8(%rbp), %rax
	movq	2920(%rax), %rax
	testq	%rax, %rax
	je	.L89
	movq	-8(%rbp), %rax
	movq	2920(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L88
	movq	-8(%rbp), %rax
	movq	2920(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 2920(%rax)
	jmp	.L88
.L89:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 2920(%rdx)
.L88:
	cmpq	$0, -48(%rbp)
	je	.L90
	movq	-8(%rbp), %rax
	movq	2928(%rax), %rax
	testq	%rax, %rax
	je	.L91
	movq	-8(%rbp), %rax
	movq	2928(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L90
	movq	-8(%rbp), %rax
	movq	2928(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 2928(%rax)
	jmp	.L90
.L91:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 2928(%rdx)
.L90:
	cmpq	$0, -56(%rbp)
	je	.L92
	movq	-8(%rbp), %rax
	movq	2968(%rax), %rax
	testq	%rax, %rax
	je	.L93
	movq	-8(%rbp), %rax
	movq	2968(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L92
	movq	-8(%rbp), %rax
	movq	2968(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 2968(%rax)
	jmp	.L92
.L93:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 2968(%rdx)
.L92:
	cmpq	$0, -64(%rbp)
	je	.L94
	movq	-8(%rbp), %rax
	movq	2976(%rax), %rax
	testq	%rax, %rax
	je	.L95
	movq	-8(%rbp), %rax
	movq	2976(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$314, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L95:
	leaq	.LC0(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$315, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 2976(%rdx)
	movq	-8(%rbp), %rax
	movq	2976(%rax), %rax
	testq	%rax, %rax
	jne	.L94
	movl	$-1, %eax
	jmp	.L85
.L94:
	movq	-8(%rbp), %rax
	movq	2912(%rax), %rax
	testq	%rax, %rax
	je	.L96
	movq	-8(%rbp), %rax
	movq	2920(%rax), %rax
	testq	%rax, %rax
	je	.L96
	movq	-8(%rbp), %rax
	movq	2928(%rax), %rax
	testq	%rax, %rax
	je	.L96
	movq	-8(%rbp), %rax
	movq	2968(%rax), %rax
	testq	%rax, %rax
	jne	.L97
.L96:
	movl	$-1, %eax
	jmp	.L85
.L97:
	movl	$1, %eax
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	SSL_set_srp_server_param, .-SSL_set_srp_server_param
	.globl	srp_generate_server_master_secret
	.type	srp_generate_server_master_secret, @function
srp_generate_server_master_secret:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	2912(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	2944(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SRP_Verify_A_mod_N@PLT
	testl	%eax, %eax
	je	.L105
	movq	-40(%rbp), %rax
	movq	1096(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	2912(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	2936(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	2944(%rax), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SRP_Calc_u_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L106
	movq	-56(%rbp), %rax
	movq	2912(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	2960(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	2968(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	2944(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SRP_Calc_server_key@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L107
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$343, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L103
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$344, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L100
.L103:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ssl_generate_master_secret@PLT
	movl	%eax, -20(%rbp)
	jmp	.L100
.L105:
	nop
	jmp	.L100
.L106:
	nop
	jmp	.L100
.L107:
	nop
.L100:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	srp_generate_server_master_secret, .-srp_generate_server_master_secret
	.globl	srp_generate_client_master_secret
	.type	srp_generate_client_master_secret, @function
srp_generate_client_master_secret:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -44(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	2912(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	2936(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SRP_Verify_B_mod_N@PLT
	testl	%eax, %eax
	je	.L109
	movq	-64(%rbp), %rax
	movq	1096(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	2912(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	2936(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	2944(%rax), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SRP_Calc_u_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L109
	movq	-72(%rbp), %rax
	movq	2896(%rax), %rax
	testq	%rax, %rax
	jne	.L110
.L109:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$373, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L111
.L110:
	movq	-72(%rbp), %rax
	movq	2896(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	2872(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L112
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$379, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$234, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L111
.L112:
	movq	-64(%rbp), %rax
	movq	1096(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	2904(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	2928(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SRP_Calc_x_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L113
	movq	-64(%rbp), %rax
	movq	1096(%rax), %r8
	movq	-64(%rbp), %rax
	movq	(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	2952(%rax), %r10
	movq	-72(%rbp), %rax
	movq	2920(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	2936(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	2912(%rax), %rax
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %rcx
	pushq	%r8
	pushq	%rdi
	movq	%r10, %r8
	movq	%rax, %rdi
	call	SRP_Calc_client_key_ex@PLT
	addq	$16, %rsp
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L114
.L113:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$389, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L111
.L114:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$394, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L115
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$395, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L111
.L115:
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ssl_generate_master_secret@PLT
	movl	%eax, -28(%rbp)
.L111:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	cmpq	$0, -40(%rbp)
	je	.L116
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	$405, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L116:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	srp_generate_client_master_secret, .-srp_generate_client_master_secret
	.globl	srp_verify_server_param
	.type	srp_verify_server_param, @function
srp_verify_server_param:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$2872, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jns	.L119
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jns	.L119
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L120
.L119:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$419, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$390, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L121
.L120:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	%eax, %edx
	jge	.L122
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$424, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$241, %edx
	movl	$71, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L121
.L122:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L123
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jg	.L124
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$431, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$234, %edx
	movl	$71, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L121
.L123:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SRP_check_known_gN_param@PLT
	testq	%rax, %rax
	jne	.L124
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$435, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$241, %edx
	movl	$71, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L121
.L124:
	movl	$1, %eax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	srp_verify_server_param, .-srp_verify_server_param
	.globl	ssl_srp_calc_a_param_intern
	.type	ssl_srp_calc_a_param_intern, @function
ssl_srp_calc_a_param_intern:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	-48(%rbp), %rsi
	movl	$0, %ecx
	movl	$48, %edx
	movq	%rax, %rdi
	call	RAND_priv_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L126
	movl	$0, %eax
	jmp	.L129
.L126:
	movq	-56(%rbp), %rax
	movq	2952(%rax), %rdx
	leaq	-48(%rbp), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 2952(%rdx)
	leaq	-48(%rbp), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-56(%rbp), %rax
	movq	2920(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	2912(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	2952(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SRP_Calc_A@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 2944(%rdx)
	movq	-56(%rbp), %rax
	movq	2944(%rax), %rax
	testq	%rax, %rax
	jne	.L128
	movl	$0, %eax
	jmp	.L129
.L128:
	movl	$1, %eax
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	ssl_srp_calc_a_param_intern, .-ssl_srp_calc_a_param_intern
	.globl	SRP_Calc_A_param
	.type	SRP_Calc_A_param, @function
SRP_Calc_A_param:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L131
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L132
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L133
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L134
.L133:
	movq	$0, -8(%rbp)
	jmp	.L134
.L132:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L134
.L131:
	movq	$0, -8(%rbp)
.L134:
	cmpq	$0, -8(%rbp)
	jne	.L135
	movl	$0, %eax
	jmp	.L136
.L135:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_srp_calc_a_param_intern@PLT
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	SRP_Calc_A_param, .-SRP_Calc_A_param
	.globl	SSL_get_srp_g
	.type	SSL_get_srp_g, @function
SSL_get_srp_g:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L138
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L139
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L140
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L141
.L140:
	movq	$0, -8(%rbp)
	jmp	.L141
.L139:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L141
.L138:
	movq	$0, -8(%rbp)
.L141:
	cmpq	$0, -8(%rbp)
	jne	.L142
	movl	$0, %eax
	jmp	.L143
.L142:
	movq	-8(%rbp), %rax
	movq	2920(%rax), %rax
	testq	%rax, %rax
	je	.L144
	movq	-8(%rbp), %rax
	movq	2920(%rax), %rax
	jmp	.L143
.L144:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	848(%rax), %rax
.L143:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	SSL_get_srp_g, .-SSL_get_srp_g
	.globl	SSL_get_srp_N
	.type	SSL_get_srp_N, @function
SSL_get_srp_N:
.LFB765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L146
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L147
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L148
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L149
.L148:
	movq	$0, -8(%rbp)
	jmp	.L149
.L147:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L149
.L146:
	movq	$0, -8(%rbp)
.L149:
	cmpq	$0, -8(%rbp)
	jne	.L150
	movl	$0, %eax
	jmp	.L151
.L150:
	movq	-8(%rbp), %rax
	movq	2912(%rax), %rax
	testq	%rax, %rax
	je	.L152
	movq	-8(%rbp), %rax
	movq	2912(%rax), %rax
	jmp	.L151
.L152:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	840(%rax), %rax
.L151:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	SSL_get_srp_N, .-SSL_get_srp_N
	.globl	SSL_get_srp_username
	.type	SSL_get_srp_username, @function
SSL_get_srp_username:
.LFB766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L154
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L155
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L156
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L157
.L156:
	movq	$0, -8(%rbp)
	jmp	.L157
.L155:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L157
.L154:
	movq	$0, -8(%rbp)
.L157:
	cmpq	$0, -8(%rbp)
	jne	.L158
	movl	$0, %eax
	jmp	.L159
.L158:
	movq	-8(%rbp), %rax
	movq	2904(%rax), %rax
	testq	%rax, %rax
	je	.L160
	movq	-8(%rbp), %rax
	movq	2904(%rax), %rax
	jmp	.L159
.L160:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	832(%rax), %rax
.L159:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	SSL_get_srp_username, .-SSL_get_srp_username
	.globl	SSL_get_srp_userinfo
	.type	SSL_get_srp_userinfo, @function
SSL_get_srp_userinfo:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L162
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L163
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L164
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L165
.L164:
	movq	$0, -8(%rbp)
	jmp	.L165
.L163:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L165
.L162:
	movq	$0, -8(%rbp)
.L165:
	cmpq	$0, -8(%rbp)
	jne	.L166
	movl	$0, %eax
	jmp	.L167
.L166:
	movq	-8(%rbp), %rax
	movq	2976(%rax), %rax
	testq	%rax, %rax
	je	.L168
	movq	-8(%rbp), %rax
	movq	2976(%rax), %rax
	jmp	.L167
.L168:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	904(%rax), %rax
.L167:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	SSL_get_srp_userinfo, .-SSL_get_srp_userinfo
	.globl	SSL_CTX_set_srp_username
	.type	SSL_CTX_set_srp_username, @function
SSL_CTX_set_srp_username:
.LFB768:
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
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$79, %esi
	movq	%rax, %rdi
	call	ssl3_ctx_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	SSL_CTX_set_srp_username, .-SSL_CTX_set_srp_username
	.globl	SSL_CTX_set_srp_password
	.type	SSL_CTX_set_srp_password, @function
SSL_CTX_set_srp_password:
.LFB769:
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
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$81, %esi
	movq	%rax, %rdi
	call	ssl3_ctx_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	SSL_CTX_set_srp_password, .-SSL_CTX_set_srp_password
	.globl	SSL_CTX_set_srp_strength
	.type	SSL_CTX_set_srp_strength, @function
SSL_CTX_set_srp_strength:
.LFB770:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$80, %esi
	movq	%rax, %rdi
	call	ssl3_ctx_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	SSL_CTX_set_srp_strength, .-SSL_CTX_set_srp_strength
	.globl	SSL_CTX_set_srp_verify_param_callback
	.type	SSL_CTX_set_srp_verify_param_callback, @function
SSL_CTX_set_srp_verify_param_callback:
.LFB771:
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
	movl	$76, %esi
	movq	%rax, %rdi
	call	ssl3_ctx_callback_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	SSL_CTX_set_srp_verify_param_callback, .-SSL_CTX_set_srp_verify_param_callback
	.globl	SSL_CTX_set_srp_cb_arg
	.type	SSL_CTX_set_srp_cb_arg, @function
SSL_CTX_set_srp_cb_arg:
.LFB772:
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
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$78, %esi
	movq	%rax, %rdi
	call	ssl3_ctx_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	SSL_CTX_set_srp_cb_arg, .-SSL_CTX_set_srp_cb_arg
	.globl	SSL_CTX_set_srp_username_callback
	.type	SSL_CTX_set_srp_username_callback, @function
SSL_CTX_set_srp_username_callback:
.LFB773:
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
	movl	$75, %esi
	movq	%rax, %rdi
	call	ssl3_ctx_callback_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	SSL_CTX_set_srp_username_callback, .-SSL_CTX_set_srp_username_callback
	.globl	SSL_CTX_set_srp_client_pwd_callback
	.type	SSL_CTX_set_srp_client_pwd_callback, @function
SSL_CTX_set_srp_client_pwd_callback:
.LFB774:
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
	movl	$77, %esi
	movq	%rax, %rdi
	call	ssl3_ctx_callback_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	SSL_CTX_set_srp_client_pwd_callback, .-SSL_CTX_set_srp_client_pwd_callback
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 24
__func__.3:
	.string	"ssl_srp_ctx_init_intern"
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 34
__func__.2:
	.string	"srp_generate_server_master_secret"
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 34
__func__.1:
	.string	"srp_generate_client_master_secret"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 24
__func__.0:
	.string	"srp_verify_server_param"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

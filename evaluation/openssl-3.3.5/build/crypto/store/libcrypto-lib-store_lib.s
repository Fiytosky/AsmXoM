	.file	"store_lib.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB493:
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
.LFE493:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB494:
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
.LFE494:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	sk_OSSL_STORE_INFO_num, @function
sk_OSSL_STORE_INFO_num:
.LFB520:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	sk_OSSL_STORE_INFO_num, .-sk_OSSL_STORE_INFO_num
	.type	sk_OSSL_STORE_INFO_free, @function
sk_OSSL_STORE_INFO_free:
.LFB526:
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
	call	OPENSSL_sk_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	sk_OSSL_STORE_INFO_free, .-sk_OSSL_STORE_INFO_free
	.type	sk_OSSL_STORE_INFO_shift, @function
sk_OSSL_STORE_INFO_shift:
.LFB533:
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
	call	OPENSSL_sk_shift@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	sk_OSSL_STORE_INFO_shift, .-sk_OSSL_STORE_INFO_shift
	.type	sk_OSSL_STORE_INFO_pop_free, @function
sk_OSSL_STORE_INFO_pop_free:
.LFB534:
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
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	sk_OSSL_STORE_INFO_pop_free, .-sk_OSSL_STORE_INFO_pop_free
	.type	lh_OSSL_STORE_LOADER_hfn_thunk, @function
lh_OSSL_STORE_LOADER_hfn_thunk:
.LFB545:
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
.LFE545:
	.size	lh_OSSL_STORE_LOADER_hfn_thunk, .-lh_OSSL_STORE_LOADER_hfn_thunk
	.type	lh_OSSL_STORE_LOADER_cfn_thunk, @function
lh_OSSL_STORE_LOADER_cfn_thunk:
.LFB546:
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
.LFE546:
	.size	lh_OSSL_STORE_LOADER_cfn_thunk, .-lh_OSSL_STORE_LOADER_cfn_thunk
	.section	.rodata
.LC0:
	.string	"properties"
	.text
	.type	loader_set_params, @function
loader_set_params:
.LFB561:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L16
	movq	-88(%rbp), %rax
	movq	160(%rax), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	cmpq	$0, -112(%rbp)
	je	.L18
	leaq	.LC0(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	je	.L19
	movl	$1, %eax
	jmp	.L17
.L19:
	leaq	-160(%rbp), %rax
	movq	-112(%rbp), %rdx
	leaq	.LC0(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
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
	movq	-88(%rbp), %rax
	movq	160(%rax), %rcx
	leaq	-80(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L18
	movl	$0, %eax
	jmp	.L17
.L18:
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE561:
	.size	loader_set_params, .-loader_set_params
	.section	.rodata
.LC1:
	.string	"file"
.LC2:
	.string	"//"
.LC3:
	.string	"../crypto/store/store_lib.c"
	.text
	.globl	OSSL_STORE_open_ex
	.type	OSSL_STORE_open_ex, @function
OSSL_STORE_open_ex:
.LFB562:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$600, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -568(%rbp)
	movq	%rsi, -576(%rbp)
	movq	%rdx, -584(%rbp)
	movq	%rcx, -592(%rbp)
	movq	%r8, -600(%rbp)
	movq	%r9, -608(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -128(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$1, -60(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	%rdx, -432(%rbp,%rax,8)
	movq	-568(%rbp), %rcx
	leaq	-416(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	leaq	-416(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L23
	movq	-96(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -96(%rbp)
	movb	$0, (%rax)
	leaq	.LC1(%rip), %rdx
	leaq	-416(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L23
	leaq	.LC2(%rip), %rcx
	movq	-96(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L24
	subq	$1, -72(%rbp)
.L24:
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	leaq	-416(%rbp), %rdx
	movq	%rdx, -432(%rbp,%rax,8)
.L23:
	call	ERR_set_mark@PLT
	cmpq	$0, -592(%rbp)
	je	.L25
	movq	-600(%rbp), %rdx
	movq	-592(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_pw_set_ui_method@PLT
	testl	%eax, %eax
	je	.L26
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pw_enable_passphrase_caching@PLT
	testl	%eax, %eax
	jne	.L25
.L26:
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$109, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L27
.L25:
	movq	$0, -80(%rbp)
	jmp	.L28
.L37:
	movq	-80(%rbp), %rax
	movq	-432(%rbp,%rax,8), %rax
	movq	%rax, -88(%rbp)
	call	ERR_set_mark@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_store_get0_loader_int@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L29
	call	ERR_clear_last_mark@PLT
	movl	$0, -60(%rbp)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L30
	movq	-24(%rbp), %rax
	movq	88(%rax), %r10
	movq	-600(%rbp), %r8
	movq	-592(%rbp), %rdi
	movq	-584(%rbp), %rcx
	movq	-576(%rbp), %rdx
	movq	-568(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	movq	%rax, -40(%rbp)
	jmp	.L31
.L30:
	movq	-24(%rbp), %rax
	movq	16(%rax), %r8
	movq	-600(%rbp), %rcx
	movq	-592(%rbp), %rdx
	movq	-568(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -40(%rbp)
	jmp	.L31
.L29:
	call	ERR_pop_to_mark@PLT
.L31:
	cmpq	$0, -24(%rbp)
	jne	.L32
	movq	-584(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-576(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_fetch@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L32
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_get0_provider@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_provider_ctx@PLT
	movq	%rax, -112(%rbp)
	movl	$0, -60(%rbp)
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.L33
	movq	-32(%rbp), %rax
	movq	208(%rax), %r9
	leaq	-160(%rbp), %rcx
	movq	ossl_pw_passphrase_callback_dec@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	movq	-608(%rbp), %rdx
	movq	-568(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	*%r9
	movq	%rax, -40(%rbp)
	jmp	.L34
.L33:
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movq	-32(%rbp), %rax
	movq	136(%rax), %rcx
	movq	-568(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L34
	movq	-584(%rbp), %rcx
	movq	-608(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	loader_set_params
	testl	%eax, %eax
	jne	.L34
	movq	-32(%rbp), %rax
	movq	184(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	$0, -40(%rbp)
.L34:
	cmpq	$0, -40(%rbp)
	jne	.L35
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_free@PLT
	movq	$0, -32(%rbp)
.L35:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pw_clear_passphrase_cache@PLT
.L32:
	addq	$1, -80(%rbp)
.L28:
	cmpq	$0, -40(%rbp)
	jne	.L36
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L37
.L36:
	cmpl	$0, -60(%rbp)
	jne	.L46
	cmpq	$0, -40(%rbp)
	je	.L47
	cmpq	$0, -584(%rbp)
	je	.L40
	leaq	.LC3(%rip), %rcx
	movq	-584(%rbp), %rax
	movl	$189, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L48
.L40:
	leaq	.LC3(%rip), %rax
	movl	$190, %edx
	movq	%rax, %rsi
	movl	$120, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L48
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-48(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-48(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-48(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rbx
	movq	%rcx, 72(%rax)
	movq	%rbx, 80(%rax)
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rbx
	movq	%rcx, 88(%rax)
	movq	%rbx, 96(%rax)
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rbx
	movq	%rcx, 104(%rax)
	movq	%rbx, 112(%rax)
	call	ERR_pop_to_mark@PLT
	movq	-48(%rbp), %rax
	jmp	.L45
.L46:
	nop
	jmp	.L27
.L47:
	nop
	jmp	.L27
.L48:
	nop
.L27:
	call	ERR_clear_last_mark@PLT
	cmpq	$0, -40(%rbp)
	je	.L44
	leaq	-560(%rbp), %rdx
	movl	$0, %eax
	movl	$15, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	-32(%rbp), %rax
	movq	%rax, -552(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -560(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -544(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_store_close_it
.L44:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_free@PLT
	leaq	.LC3(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$233, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC3(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$234, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L45:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	OSSL_STORE_open_ex, .-OSSL_STORE_open_ex
	.globl	OSSL_STORE_open
	.type	OSSL_STORE_open, @function
OSSL_STORE_open:
.LFB563:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_STORE_open_ex@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	OSSL_STORE_open, .-OSSL_STORE_open
	.globl	OSSL_STORE_ctrl
	.type	OSSL_STORE_ctrl, @function
OSSL_STORE_ctrl:
.LFB564:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movl	%esi, -220(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L54
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L54:
	movl	$16, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movl	-220(%rbp), %ecx
	movq	-216(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	OSSL_STORE_vctrl@PLT
	movl	%eax, -180(%rbp)
	movl	-180(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	OSSL_STORE_ctrl, .-OSSL_STORE_ctrl
	.section	.rodata
.LC4:
	.string	"use_secmem"
	.text
	.globl	OSSL_STORE_vctrl
	.type	OSSL_STORE_vctrl, @function
OSSL_STORE_vctrl:
.LFB565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L56
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L57
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	cmpl	$1, -108(%rbp)
	jne	.L63
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L59
	movq	-120(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-120(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-120(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L60
.L59:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-120(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L60:
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	leaq	-176(%rbp), %rax
	leaq	-4(%rbp), %rdx
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
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
	jmp	.L61
.L63:
	nop
.L61:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	160(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L62
.L56:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %r8
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	-120(%rbp), %rdx
	movl	-108(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	jmp	.L62
.L57:
	movl	$1, %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	OSSL_STORE_vctrl, .-OSSL_STORE_vctrl
	.section	.rodata
.LC5:
	.string	"expect"
	.text
	.globl	OSSL_STORE_expect
	.type	OSSL_STORE_expect, @function
OSSL_STORE_expect:
.LFB566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movl	$1, -4(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L65
	movl	-108(%rbp), %eax
	testl	%eax, %eax
	js	.L65
	movl	-108(%rbp), %eax
	cmpl	$6, %eax
	jle	.L66
.L65:
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$299, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L67
.L66:
	movq	-104(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L68
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$303, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$117, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L67
.L68:
	movl	-108(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L69
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L69
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	leaq	-160(%rbp), %rax
	leaq	-108(%rbp), %rdx
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
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
	movq	8(%rax), %rax
	movq	160(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
.L69:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L70
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L70
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rcx
	movl	-108(%rbp), %edx
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
.L70:
	movl	-4(%rbp), %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	OSSL_STORE_expect, .-OSSL_STORE_expect
	.section	.rodata
.LC6:
	.string	"subject"
.LC7:
	.string	"name"
.LC8:
	.string	"serial"
.LC9:
	.string	"digest"
.LC10:
	.string	"fingerprint"
.LC11:
	.string	"alias"
	.text
	.globl	OSSL_STORE_find
	.type	OSSL_STORE_find, @function
OSSL_STORE_find:
.LFB567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$1, -4(%rbp)
	movq	-56(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L72
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$330, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$117, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L73
.L72:
	cmpq	$0, -64(%rbp)
	jne	.L74
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$334, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L73
.L74:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movq	$0, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	jne	.L76
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$348, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L73
.L76:
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L78
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$353, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L73
.L78:
	movl	$0, -4(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L79
	cmpl	$4, %eax
	jg	.L80
	cmpl	$3, %eax
	je	.L81
	cmpl	$3, %eax
	jg	.L80
	cmpl	$1, %eax
	je	.L82
	cmpl	$2, %eax
	je	.L83
	jmp	.L80
.L82:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_NAME@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L91
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	leaq	.LC6(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	je	.L91
	movl	$1, -4(%rbp)
	jmp	.L91
.L83:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_NAME@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L92
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_to_BN@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L92
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	leaq	.LC7(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	je	.L92
	movq	-16(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L92
	movl	$1, -4(%rbp)
	jmp	.L92
.L81:
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdx
	leaq	.LC9(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	je	.L93
	movq	-64(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdx
	leaq	.LC10(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	je	.L93
	movl	$1, -4(%rbp)
	jmp	.L93
.L79:
	movq	-64(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdx
	leaq	.LC11(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	je	.L94
	movl	$1, -4(%rbp)
	jmp	.L94
.L91:
	nop
	jmp	.L80
.L92:
	nop
	jmp	.L80
.L93:
	nop
	jmp	.L80
.L94:
	nop
.L80:
	cmpl	$0, -4(%rbp)
	je	.L88
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	160(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
.L88:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-48(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$403, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L89
.L75:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L90
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$409, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L73
.L90:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
.L89:
	movl	-4(%rbp), %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	OSSL_STORE_find, .-OSSL_STORE_find
	.globl	OSSL_STORE_load
	.type	OSSL_STORE_load, @function
OSSL_STORE_load:
.LFB568:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	$1, 56(%rax)
.L96:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_eof@PLT
	testl	%eax, %eax
	je	.L97
	movl	$0, %eax
	jmp	.L98
.L97:
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L99
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	sk_OSSL_STORE_INFO_shift
	movq	%rax, -8(%rbp)
	jmp	.L100
.L99:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L101
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	168(%rax), %r9
	movq	-40(%rbp), %rax
	leaq	72(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	ossl_pw_passphrase_callback_dec@GOTPCREL(%rip), %rdx
	movq	%rdx, %rdi
	leaq	-32(%rbp), %rdx
	movq	ossl_store_handle_load_result@GOTPCREL(%rip), %rsi
	movq	%rcx, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L102
	movq	-40(%rbp), %rax
	movl	$1, 60(%rax)
	movl	$0, %eax
	jmp	.L98
.L102:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.L101:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L100
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	56(%rax), %r8
	movq	-40(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -8(%rbp)
.L100:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L103
	cmpq	$0, -8(%rbp)
	je	.L103
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L103
	jmp	.L96
.L103:
	movq	-40(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	call	ossl_pw_clear_passphrase_cache@PLT
	cmpq	$0, -8(%rbp)
	je	.L104
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L104
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get_type@PLT
	movl	%eax, -12(%rbp)
	cmpl	$1, -12(%rbp)
	je	.L104
	cmpl	$0, -12(%rbp)
	je	.L104
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	cmpl	%eax, -12(%rbp)
	je	.L104
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_free@PLT
	jmp	.L96
.L104:
	movq	-8(%rbp), %rax
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	OSSL_STORE_load, .-OSSL_STORE_load
	.globl	OSSL_STORE_delete
	.type	OSSL_STORE_delete, @function
OSSL_STORE_delete:
.LFB569:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$400, %rsp
	movq	%rdi, -360(%rbp)
	movq	%rsi, -368(%rbp)
	movq	%rdx, -376(%rbp)
	movq	%rcx, -384(%rbp)
	movq	%r8, -392(%rbp)
	movq	%r9, -400(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -352(%rbp)
	movaps	%xmm0, -336(%rbp)
	movaps	%xmm0, -320(%rbp)
	movq	-360(%rbp), %rcx
	leaq	-304(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	leaq	-304(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L106
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
	cmpq	$0, -384(%rbp)
	je	.L109
	jmp	.L113
.L106:
	movl	$0, %eax
	jmp	.L112
.L113:
	movq	-392(%rbp), %rdx
	movq	-384(%rbp), %rcx
	leaq	-352(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_pw_set_ui_method@PLT
	testl	%eax, %eax
	je	.L110
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pw_enable_passphrase_caching@PLT
	testl	%eax, %eax
	jne	.L109
.L110:
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$509, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L112
.L109:
	movq	-376(%rbp), %rdx
	leaq	-304(%rbp), %rcx
	movq	-368(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_fetch@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L111
	movq	-16(%rbp), %rax
	movq	200(%rax), %rax
	testq	%rax, %rax
	je	.L111
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_get0_provider@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_provider_ctx@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	200(%rax), %r9
	leaq	-352(%rbp), %rcx
	movq	ossl_pw_passphrase_callback_dec@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	movq	-400(%rbp), %rdx
	movq	-360(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	*%r9
	movl	%eax, -4(%rbp)
.L111:
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pw_clear_passphrase_cache@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_free@PLT
	movl	-4(%rbp), %eax
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	OSSL_STORE_delete, .-OSSL_STORE_delete
	.globl	OSSL_STORE_error
	.type	OSSL_STORE_error, @function
OSSL_STORE_error:
.LFB570:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L115
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -4(%rbp)
.L115:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L116
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
.L116:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	OSSL_STORE_error, .-OSSL_STORE_error
	.globl	OSSL_STORE_eof
	.type	OSSL_STORE_eof, @function
OSSL_STORE_eof:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L119
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	sk_OSSL_STORE_INFO_num
	testl	%eax, %eax
	jne	.L119
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	sk_OSSL_STORE_INFO_free
	movq	-24(%rbp), %rax
	movq	$0, 64(%rax)
.L119:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L120
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L121
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	176(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
.L121:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L120
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
.L120:
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	OSSL_STORE_eof, .-OSSL_STORE_eof
	.type	ossl_store_close_it, @function
ossl_store_close_it:
.LFB572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L124
	movl	$1, %eax
	jmp	.L125
.L124:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L126
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	184(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
.L126:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L127
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	80(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
.L127:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	OSSL_STORE_INFO_free@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_STORE_INFO_pop_free
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_free@PLT
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$590, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	call	ossl_pw_clear_passphrase_data@PLT
	movl	-4(%rbp), %eax
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	ossl_store_close_it, .-ossl_store_close_it
	.globl	OSSL_STORE_close
	.type	OSSL_STORE_close, @function
OSSL_STORE_close:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_store_close_it
	movl	%eax, -4(%rbp)
	leaq	.LC3(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$599, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	OSSL_STORE_close, .-OSSL_STORE_close
	.globl	OSSL_STORE_INFO_new
	.type	OSSL_STORE_INFO_new, @function
OSSL_STORE_INFO_new:
.LFB574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC3(%rip), %rax
	movl	$612, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L131
	movl	$0, %eax
	jmp	.L132
.L131:
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	OSSL_STORE_INFO_new, .-OSSL_STORE_INFO_new
	.globl	OSSL_STORE_INFO_new_NAME
	.type	OSSL_STORE_INFO_new_NAME, @function
OSSL_STORE_INFO_new_NAME:
.LFB575:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, %esi
	movl	$1, %edi
	call	OSSL_STORE_INFO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L134
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$627, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524332, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L135
.L134:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
.L135:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	OSSL_STORE_INFO_new_NAME, .-OSSL_STORE_INFO_new_NAME
	.globl	OSSL_STORE_INFO_set0_NAME_description
	.type	OSSL_STORE_INFO_set0_NAME_description, @function
OSSL_STORE_INFO_set0_NAME_description:
.LFB576:
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
	cmpl	$1, %eax
	je	.L137
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$640, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L138
.L137:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	OSSL_STORE_INFO_set0_NAME_description, .-OSSL_STORE_INFO_set0_NAME_description
	.globl	OSSL_STORE_INFO_new_PARAMS
	.type	OSSL_STORE_INFO_new_PARAMS, @function
OSSL_STORE_INFO_new_PARAMS:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	OSSL_STORE_INFO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L140
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$653, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524332, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L140:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	OSSL_STORE_INFO_new_PARAMS, .-OSSL_STORE_INFO_new_PARAMS
	.globl	OSSL_STORE_INFO_new_PUBKEY
	.type	OSSL_STORE_INFO_new_PUBKEY, @function
OSSL_STORE_INFO_new_PUBKEY:
.LFB578:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$3, %edi
	call	OSSL_STORE_INFO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L143
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$662, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524332, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L143:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	OSSL_STORE_INFO_new_PUBKEY, .-OSSL_STORE_INFO_new_PUBKEY
	.globl	OSSL_STORE_INFO_new_PKEY
	.type	OSSL_STORE_INFO_new_PKEY, @function
OSSL_STORE_INFO_new_PKEY:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	OSSL_STORE_INFO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L146
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$671, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524332, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L146:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	OSSL_STORE_INFO_new_PKEY, .-OSSL_STORE_INFO_new_PKEY
	.globl	OSSL_STORE_INFO_new_CERT
	.type	OSSL_STORE_INFO_new_CERT, @function
OSSL_STORE_INFO_new_CERT:
.LFB580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$5, %edi
	call	OSSL_STORE_INFO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L149
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$680, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524332, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L149:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	OSSL_STORE_INFO_new_CERT, .-OSSL_STORE_INFO_new_CERT
	.globl	OSSL_STORE_INFO_new_CRL
	.type	OSSL_STORE_INFO_new_CRL, @function
OSSL_STORE_INFO_new_CRL:
.LFB581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$6, %edi
	call	OSSL_STORE_INFO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L152
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$689, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524332, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L152:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	OSSL_STORE_INFO_new_CRL, .-OSSL_STORE_INFO_new_CRL
	.globl	OSSL_STORE_INFO_get_type
	.type	OSSL_STORE_INFO_get_type, @function
OSSL_STORE_INFO_get_type:
.LFB582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	OSSL_STORE_INFO_get_type, .-OSSL_STORE_INFO_get_type
	.globl	OSSL_STORE_INFO_get0_data
	.type	OSSL_STORE_INFO_get0_data, @function
OSSL_STORE_INFO_get0_data:
.LFB583:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jne	.L157
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L158
.L157:
	movl	$0, %eax
.L158:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	OSSL_STORE_INFO_get0_data, .-OSSL_STORE_INFO_get0_data
	.globl	OSSL_STORE_INFO_get0_NAME
	.type	OSSL_STORE_INFO_get0_NAME, @function
OSSL_STORE_INFO_get0_NAME:
.LFB584:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L160
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L161
.L160:
	movl	$0, %eax
.L161:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	OSSL_STORE_INFO_get0_NAME, .-OSSL_STORE_INFO_get0_NAME
	.globl	OSSL_STORE_INFO_get1_NAME
	.type	OSSL_STORE_INFO_get1_NAME, @function
OSSL_STORE_INFO_get1_NAME:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L163
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$718, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	jmp	.L164
.L163:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$719, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L164:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	OSSL_STORE_INFO_get1_NAME, .-OSSL_STORE_INFO_get1_NAME
	.globl	OSSL_STORE_INFO_get0_NAME_description
	.type	OSSL_STORE_INFO_get0_NAME_description, @function
OSSL_STORE_INFO_get0_NAME_description:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L166
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L167
.L166:
	movl	$0, %eax
.L167:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	OSSL_STORE_INFO_get0_NAME_description, .-OSSL_STORE_INFO_get0_NAME_description
	.section	.rodata
.LC12:
	.string	""
	.text
	.globl	OSSL_STORE_INFO_get1_NAME_description
	.type	OSSL_STORE_INFO_get1_NAME_description, @function
OSSL_STORE_INFO_get1_NAME_description:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L169
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L170
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L171
.L170:
	leaq	.LC12(%rip), %rax
.L171:
	leaq	.LC3(%rip), %rcx
	movl	$733, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	jmp	.L172
.L169:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$734, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L172:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	OSSL_STORE_INFO_get1_NAME_description, .-OSSL_STORE_INFO_get1_NAME_description
	.globl	OSSL_STORE_INFO_get0_PARAMS
	.type	OSSL_STORE_INFO_get0_PARAMS, @function
OSSL_STORE_INFO_get0_PARAMS:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L174
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L175
.L174:
	movl	$0, %eax
.L175:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	OSSL_STORE_INFO_get0_PARAMS, .-OSSL_STORE_INFO_get0_PARAMS
	.globl	OSSL_STORE_INFO_get1_PARAMS
	.type	OSSL_STORE_INFO_get1_PARAMS, @function
OSSL_STORE_INFO_get1_PARAMS:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L177
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L178
.L177:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$751, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L178:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	OSSL_STORE_INFO_get1_PARAMS, .-OSSL_STORE_INFO_get1_PARAMS
	.globl	OSSL_STORE_INFO_get0_PUBKEY
	.type	OSSL_STORE_INFO_get0_PUBKEY, @function
OSSL_STORE_INFO_get0_PUBKEY:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L180
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L181
.L180:
	movl	$0, %eax
.L181:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	OSSL_STORE_INFO_get0_PUBKEY, .-OSSL_STORE_INFO_get0_PUBKEY
	.globl	OSSL_STORE_INFO_get1_PUBKEY
	.type	OSSL_STORE_INFO_get1_PUBKEY, @function
OSSL_STORE_INFO_get1_PUBKEY:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L183
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L184
.L183:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$768, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	OSSL_STORE_INFO_get1_PUBKEY, .-OSSL_STORE_INFO_get1_PUBKEY
	.globl	OSSL_STORE_INFO_get0_PKEY
	.type	OSSL_STORE_INFO_get0_PKEY, @function
OSSL_STORE_INFO_get0_PKEY:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L186
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L187
.L186:
	movl	$0, %eax
.L187:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	OSSL_STORE_INFO_get0_PKEY, .-OSSL_STORE_INFO_get0_PKEY
	.globl	OSSL_STORE_INFO_get1_PKEY
	.type	OSSL_STORE_INFO_get1_PKEY, @function
OSSL_STORE_INFO_get1_PKEY:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L189
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L190
.L189:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$785, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L190:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	OSSL_STORE_INFO_get1_PKEY, .-OSSL_STORE_INFO_get1_PKEY
	.globl	OSSL_STORE_INFO_get0_CERT
	.type	OSSL_STORE_INFO_get0_CERT, @function
OSSL_STORE_INFO_get0_CERT:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	jne	.L192
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L193
.L192:
	movl	$0, %eax
.L193:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	OSSL_STORE_INFO_get0_CERT, .-OSSL_STORE_INFO_get0_CERT
	.globl	OSSL_STORE_INFO_get1_CERT
	.type	OSSL_STORE_INFO_get1_CERT, @function
OSSL_STORE_INFO_get1_CERT:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	jne	.L195
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L196
.L195:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$802, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L196:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	OSSL_STORE_INFO_get1_CERT, .-OSSL_STORE_INFO_get1_CERT
	.globl	OSSL_STORE_INFO_get0_CRL
	.type	OSSL_STORE_INFO_get0_CRL, @function
OSSL_STORE_INFO_get0_CRL:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$6, %eax
	jne	.L198
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L199
.L198:
	movl	$0, %eax
.L199:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	OSSL_STORE_INFO_get0_CRL, .-OSSL_STORE_INFO_get0_CRL
	.globl	OSSL_STORE_INFO_get1_CRL
	.type	OSSL_STORE_INFO_get1_CRL, @function
OSSL_STORE_INFO_get1_CRL:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$6, %eax
	jne	.L201
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509_CRL_up_ref@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L202
.L201:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$819, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L202:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	OSSL_STORE_INFO_get1_CRL, .-OSSL_STORE_INFO_get1_CRL
	.globl	OSSL_STORE_INFO_free
	.type	OSSL_STORE_INFO_free, @function
OSSL_STORE_INFO_free:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L212
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$6, %eax
	je	.L205
	cmpl	$6, %eax
	jg	.L206
	cmpl	$5, %eax
	je	.L207
	cmpl	$5, %eax
	jg	.L206
	cmpl	$4, %eax
	je	.L208
	cmpl	$4, %eax
	jg	.L206
	cmpl	$3, %eax
	je	.L209
	cmpl	$3, %eax
	jg	.L206
	cmpl	$1, %eax
	je	.L210
	cmpl	$2, %eax
	je	.L211
	jmp	.L206
.L210:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$831, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$832, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L206
.L211:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	jmp	.L206
.L209:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	jmp	.L206
.L208:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	jmp	.L206
.L207:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	jmp	.L206
.L205:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	nop
.L206:
	leaq	.LC3(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$850, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L212:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	OSSL_STORE_INFO_free, .-OSSL_STORE_INFO_free
	.globl	OSSL_STORE_supports_search
	.type	OSSL_STORE_supports_search, @function
OSSL_STORE_supports_search:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movl	$0, -4(%rbp)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L214
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_get0_provider@PLT
	movq	%rax, %rdi
	call	ossl_provider_ctx@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	jne	.L215
	movl	$0, %eax
	jmp	.L216
.L215:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	152(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -64(%rbp)
	leaq	.LC6(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	leaq	.LC7(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	leaq	.LC8(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -40(%rbp)
	leaq	.LC10(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -48(%rbp)
	leaq	.LC11(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -56(%rbp)
	cmpl	$4, -124(%rbp)
	je	.L217
	cmpl	$4, -124(%rbp)
	jg	.L214
	cmpl	$3, -124(%rbp)
	je	.L218
	cmpl	$3, -124(%rbp)
	jg	.L214
	cmpl	$1, -124(%rbp)
	je	.L219
	cmpl	$2, -124(%rbp)
	je	.L220
	jmp	.L214
.L219:
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.L214
.L220:
	cmpq	$0, -32(%rbp)
	je	.L221
	cmpq	$0, -40(%rbp)
	je	.L221
	movl	$1, %eax
	jmp	.L222
.L221:
	movl	$0, %eax
.L222:
	movl	%eax, -4(%rbp)
	jmp	.L214
.L218:
	cmpq	$0, -48(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.L214
.L217:
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	nop
.L214:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L223
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L224
	movl	$0, %eax
	jmp	.L216
.L224:
	movl	-124(%rbp), %eax
	movl	%eax, -112(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rdx
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	movl	%eax, -4(%rbp)
.L223:
	movl	-4(%rbp), %eax
.L216:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	OSSL_STORE_supports_search, .-OSSL_STORE_supports_search
	.globl	OSSL_STORE_SEARCH_by_name
	.type	OSSL_STORE_SEARCH_by_name, @function
OSSL_STORE_SEARCH_by_name:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC3(%rip), %rax
	movl	$910, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L226
	movl	$0, %eax
	jmp	.L227
.L226:
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
.L227:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	OSSL_STORE_SEARCH_by_name, .-OSSL_STORE_SEARCH_by_name
	.globl	OSSL_STORE_SEARCH_by_issuer_serial
	.type	OSSL_STORE_SEARCH_by_issuer_serial, @function
OSSL_STORE_SEARCH_by_issuer_serial:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC3(%rip), %rax
	movl	$923, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L229
	movl	$0, %eax
	jmp	.L230
.L229:
	movq	-8(%rbp), %rax
	movl	$2, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
.L230:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	OSSL_STORE_SEARCH_by_issuer_serial, .-OSSL_STORE_SEARCH_by_issuer_serial
	.section	.rodata
	.align 8
.LC13:
	.string	"%s size is %d, fingerprint size is %zu"
	.text
	.globl	OSSL_STORE_SEARCH_by_key_fingerprint
	.type	OSSL_STORE_SEARCH_by_key_fingerprint, @function
OSSL_STORE_SEARCH_by_key_fingerprint:
.LFB602:
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
	leaq	.LC3(%rip), %rax
	movl	$938, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L232
	movl	$0, %eax
	jmp	.L233
.L232:
	cmpq	$0, -40(%rbp)
	je	.L234
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	cltq
	cmpq	%rax, -56(%rbp)
	je	.L234
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$944, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx
	leaq	.LC13(%rip), %rax
	movq	%rcx, %r9
	movl	%ebx, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$121, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC3(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$948, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L233
.L234:
	movq	-24(%rbp), %rax
	movl	$3, (%rax)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
.L233:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	OSSL_STORE_SEARCH_by_key_fingerprint, .-OSSL_STORE_SEARCH_by_key_fingerprint
	.globl	OSSL_STORE_SEARCH_by_alias
	.type	OSSL_STORE_SEARCH_by_alias, @function
OSSL_STORE_SEARCH_by_alias:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC3(%rip), %rax
	movl	$961, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L236
	movl	$0, %eax
	jmp	.L237
.L236:
	movq	-8(%rbp), %rax
	movl	$4, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
.L237:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	OSSL_STORE_SEARCH_by_alias, .-OSSL_STORE_SEARCH_by_alias
	.globl	OSSL_STORE_SEARCH_free
	.type	OSSL_STORE_SEARCH_free, @function
OSSL_STORE_SEARCH_free:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC3(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$975, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	OSSL_STORE_SEARCH_free, .-OSSL_STORE_SEARCH_free
	.globl	OSSL_STORE_SEARCH_get_type
	.type	OSSL_STORE_SEARCH_get_type, @function
OSSL_STORE_SEARCH_get_type:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	OSSL_STORE_SEARCH_get_type, .-OSSL_STORE_SEARCH_get_type
	.globl	OSSL_STORE_SEARCH_get0_name
	.type	OSSL_STORE_SEARCH_get0_name, @function
OSSL_STORE_SEARCH_get0_name:
.LFB606:
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
.LFE606:
	.size	OSSL_STORE_SEARCH_get0_name, .-OSSL_STORE_SEARCH_get0_name
	.globl	OSSL_STORE_SEARCH_get0_serial
	.type	OSSL_STORE_SEARCH_get0_serial, @function
OSSL_STORE_SEARCH_get0_serial:
.LFB607:
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
.LFE607:
	.size	OSSL_STORE_SEARCH_get0_serial, .-OSSL_STORE_SEARCH_get0_serial
	.globl	OSSL_STORE_SEARCH_get0_bytes
	.type	OSSL_STORE_SEARCH_get0_bytes, @function
OSSL_STORE_SEARCH_get0_bytes:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	OSSL_STORE_SEARCH_get0_bytes, .-OSSL_STORE_SEARCH_get0_bytes
	.globl	OSSL_STORE_SEARCH_get0_string
	.type	OSSL_STORE_SEARCH_get0_string, @function
OSSL_STORE_SEARCH_get0_string:
.LFB609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	OSSL_STORE_SEARCH_get0_string, .-OSSL_STORE_SEARCH_get0_string
	.globl	OSSL_STORE_SEARCH_get0_digest
	.type	OSSL_STORE_SEARCH_get0_digest, @function
OSSL_STORE_SEARCH_get0_digest:
.LFB610:
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
.LFE610:
	.size	OSSL_STORE_SEARCH_get0_digest, .-OSSL_STORE_SEARCH_get0_digest
	.globl	OSSL_STORE_attach
	.type	OSSL_STORE_attach, @function
OSSL_STORE_attach:
.LFB611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L252
	leaq	.LC1(%rip), %rax
	movq	%rax, -80(%rbp)
.L252:
	call	ERR_set_mark@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_store_get0_loader_int@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L253
	movq	-8(%rbp), %rax
	movq	24(%rax), %r10
	movq	-112(%rbp), %r8
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	movq	%rax, -24(%rbp)
.L253:
	cmpq	$0, -8(%rbp)
	jne	.L254
	movq	-96(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_fetch@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L254
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_get0_provider@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_provider_ctx@PLT
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_core_bio_new_from_bio@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L255
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L255
	movq	-16(%rbp), %rax
	movq	144(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L256
.L255:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_free@PLT
	movq	$0, -16(%rbp)
	jmp	.L257
.L256:
	movq	-96(%rbp), %rcx
	movq	16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	loader_set_params
	testl	%eax, %eax
	jne	.L257
	movq	-16(%rbp), %rax
	movq	184(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_free@PLT
	movq	$0, -16(%rbp)
.L257:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_core_bio_free@PLT
.L254:
	cmpq	$0, -24(%rbp)
	jne	.L258
	call	ERR_clear_last_mark@PLT
	movl	$0, %eax
	jmp	.L259
.L258:
	leaq	.LC3(%rip), %rax
	movl	$1062, %edx
	movq	%rax, %rsi
	movl	$120, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L260
	call	ERR_clear_last_mark@PLT
	movl	$0, %eax
	jmp	.L259
.L260:
	cmpq	$0, -104(%rbp)
	je	.L261
	movq	-32(%rbp), %rax
	leaq	72(%rax), %rcx
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_pw_set_ui_method@PLT
	testl	%eax, %eax
	jne	.L261
	call	ERR_clear_last_mark@PLT
	leaq	.LC3(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1070, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L259
.L261:
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	call	ERR_pop_to_mark@PLT
	movq	-32(%rbp), %rax
.L259:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	OSSL_STORE_attach, .-OSSL_STORE_attach
	.section	.rodata
	.align 16
	.type	__func__.18, @object
	.size	__func__.18, 19
__func__.18:
	.string	"OSSL_STORE_open_ex"
	.align 16
	.type	__func__.17, @object
	.size	__func__.17, 18
__func__.17:
	.string	"OSSL_STORE_expect"
	.align 16
	.type	__func__.16, @object
	.size	__func__.16, 16
__func__.16:
	.string	"OSSL_STORE_find"
	.align 16
	.type	__func__.15, @object
	.size	__func__.15, 18
__func__.15:
	.string	"OSSL_STORE_delete"
	.align 16
	.type	__func__.14, @object
	.size	__func__.14, 25
__func__.14:
	.string	"OSSL_STORE_INFO_new_NAME"
	.align 32
	.type	__func__.13, @object
	.size	__func__.13, 38
__func__.13:
	.string	"OSSL_STORE_INFO_set0_NAME_description"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 27
__func__.12:
	.string	"OSSL_STORE_INFO_new_PARAMS"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 27
__func__.11:
	.string	"OSSL_STORE_INFO_new_PUBKEY"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 25
__func__.10:
	.string	"OSSL_STORE_INFO_new_PKEY"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 25
__func__.9:
	.string	"OSSL_STORE_INFO_new_CERT"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 24
__func__.8:
	.string	"OSSL_STORE_INFO_new_CRL"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 26
__func__.7:
	.string	"OSSL_STORE_INFO_get1_NAME"
	.align 32
	.type	__func__.6, @object
	.size	__func__.6, 38
__func__.6:
	.string	"OSSL_STORE_INFO_get1_NAME_description"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 28
__func__.5:
	.string	"OSSL_STORE_INFO_get1_PARAMS"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 28
__func__.4:
	.string	"OSSL_STORE_INFO_get1_PUBKEY"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 26
__func__.3:
	.string	"OSSL_STORE_INFO_get1_PKEY"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 26
__func__.2:
	.string	"OSSL_STORE_INFO_get1_CERT"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 25
__func__.1:
	.string	"OSSL_STORE_INFO_get1_CRL"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 37
__func__.0:
	.string	"OSSL_STORE_SEARCH_by_key_fingerprint"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

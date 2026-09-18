	.file	"drbg_hmac.c"
	.text
	.type	do_hmac, @function
do_hmac:
.LFB358:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movb	%al, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_MAC_init@PLT
	testl	%eax, %eax
	je	.L2
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L2
	leaq	-28(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L2
	cmpq	$0, -40(%rbp)
	je	.L3
	cmpq	$0, -48(%rbp)
	je	.L3
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L2
.L3:
	cmpq	$0, -56(%rbp)
	je	.L4
	cmpq	$0, -64(%rbp)
	je	.L4
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L2
.L4:
	cmpq	$0, 16(%rbp)
	je	.L5
	cmpq	$0, 24(%rbp)
	je	.L5
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L2
.L5:
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	$64, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	jne	.L6
.L2:
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_MAC_init@PLT
	testl	%eax, %eax
	je	.L8
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L8
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	$64, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	je	.L8
	movl	$1, %eax
	jmp	.L7
.L8:
	movl	$0, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	do_hmac, .-do_hmac
	.type	drbg_hmac_update, @function
drbg_hmac_update:
.LFB359:
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
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	do_hmac
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	cmpq	$0, -24(%rbp)
	jne	.L13
	cmpq	$0, -40(%rbp)
	jne	.L13
	cmpq	$0, 16(%rbp)
	jne	.L13
	movl	$1, %eax
	jmp	.L12
.L13:
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1, %esi
	movq	%rax, %rdi
	call	do_hmac
	addq	$16, %rsp
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	drbg_hmac_update, .-drbg_hmac_update
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/rands/drbg_hmac.c"
	.text
	.globl	ossl_drbg_hmac_init
	.type	ossl_drbg_hmac_init, @function
ossl_drbg_hmac_init:
.LFB360:
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
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L15
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$120, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	40(%rdx), %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	104(%rdx), %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	drbg_hmac_update
	addq	$16, %rsp
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	ossl_drbg_hmac_init, .-ossl_drbg_hmac_init
	.type	drbg_hmac_instantiate, @function
drbg_hmac_instantiate:
.LFB361:
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
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_drbg_hmac_init@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	drbg_hmac_instantiate, .-drbg_hmac_instantiate
	.type	drbg_hmac_instantiate_wrapper, @function
drbg_hmac_instantiate_wrapper:
.LFB362:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L20
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L20
	movl	$0, %eax
	jmp	.L21
.L20:
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L26
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	drbg_hmac_set_ctx_params_locked
	testl	%eax, %eax
	je	.L26
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_prov_drbg_instantiate@PLT
	movl	%eax, -4(%rbp)
	jmp	.L24
.L26:
	nop
.L24:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L25
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L25:
	movl	-4(%rbp), %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	drbg_hmac_instantiate_wrapper, .-drbg_hmac_instantiate_wrapper
	.type	drbg_hmac_reseed, @function
drbg_hmac_reseed:
.LFB363:
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
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	drbg_hmac_update
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	drbg_hmac_reseed, .-drbg_hmac_reseed
	.type	drbg_hmac_reseed_wrapper, @function
drbg_hmac_reseed_wrapper:
.LFB364:
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
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_prov_drbg_reseed@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	drbg_hmac_reseed_wrapper, .-drbg_hmac_reseed_wrapper
	.globl	ossl_drbg_hmac_generate
	.type	ossl_drbg_hmac_generate, @function
ossl_drbg_hmac_generate:
.LFB365:
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
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L41
	cmpq	$0, -56(%rbp)
	je	.L41
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	drbg_hmac_update
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L41
	movl	$0, %eax
	jmp	.L33
.L41:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_MAC_init@PLT
	testl	%eax, %eax
	je	.L34
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	jne	.L35
.L34:
	movl	$0, %eax
	jmp	.L33
.L35:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L36
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	jne	.L37
	movl	$0, %eax
	jmp	.L33
.L37:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L43
.L36:
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	$64, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	jne	.L39
	movl	$0, %eax
	jmp	.L33
.L39:
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	nop
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	drbg_hmac_update
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L42
	jmp	.L44
.L43:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	addq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, -40(%rbp)
	jmp	.L41
.L44:
	movl	$0, %eax
	jmp	.L33
.L42:
	movl	$1, %eax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	ossl_drbg_hmac_generate, .-ossl_drbg_hmac_generate
	.type	drbg_hmac_generate, @function
drbg_hmac_generate:
.LFB366:
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
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_drbg_hmac_generate@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	drbg_hmac_generate, .-drbg_hmac_generate
	.type	drbg_hmac_generate_wrapper, @function
drbg_hmac_generate_wrapper:
.LFB367:
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
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %r8
	movl	-48(%rbp), %edi
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ossl_prov_drbg_generate@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	drbg_hmac_generate_wrapper, .-drbg_hmac_generate_wrapper
	.type	drbg_hmac_uninstantiate, @function
drbg_hmac_uninstantiate:
.LFB368:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
	addq	$104, %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_drbg_uninstantiate@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	drbg_hmac_uninstantiate, .-drbg_hmac_uninstantiate
	.type	drbg_hmac_uninstantiate_wrapper, @function
drbg_hmac_uninstantiate_wrapper:
.LFB369:
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
	testq	%rax, %rax
	je	.L52
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L52
	movl	$0, %eax
	jmp	.L53
.L52:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	drbg_hmac_uninstantiate
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L54
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L54:
	movl	-12(%rbp), %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	drbg_hmac_uninstantiate_wrapper, .-drbg_hmac_uninstantiate_wrapper
	.type	drbg_hmac_verify_zeroization, @function
drbg_hmac_verify_zeroization:
.LFB370:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L56
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L56
	movl	$0, %eax
	jmp	.L57
.L56:
	movq	$0, -16(%rbp)
	jmp	.L58
.L61:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	addq	$40, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L66
	addq	$1, -16(%rbp)
.L58:
	cmpq	$63, -16(%rbp)
	jbe	.L61
	movq	$0, -24(%rbp)
	jmp	.L62
.L64:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$104, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L67
	addq	$1, -24(%rbp)
.L62:
	cmpq	$63, -24(%rbp)
	jbe	.L64
	movl	$1, -4(%rbp)
	jmp	.L60
.L66:
	nop
	jmp	.L60
.L67:
	nop
.L60:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L65:
	movl	-4(%rbp), %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	drbg_hmac_verify_zeroization, .-drbg_hmac_verify_zeroization
	.type	drbg_hmac_new, @function
drbg_hmac_new:
.LFB371:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$315, %edx
	movq	%rax, %rsi
	movl	$168, %edi
	call	CRYPTO_secure_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L69
	movl	$0, %eax
	jmp	.L70
.L69:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 248(%rax)
	movq	-24(%rbp), %rax
	movq	$2147483647, 152(%rax)
	movq	-24(%rbp), %rax
	movq	$2147483647, 168(%rax)
	movq	-24(%rbp), %rax
	movq	$2147483647, 176(%rax)
	movq	-24(%rbp), %rax
	movq	$2147483647, 184(%rax)
	movq	-24(%rbp), %rax
	movq	$65536, 136(%rax)
	movl	$1, %eax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	drbg_hmac_new, .-drbg_hmac_new
	.type	drbg_hmac_new_wrapper, @function
drbg_hmac_new_wrapper:
.LFB372:
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
	leaq	drbg_hmac_instantiate(%rip), %r9
	leaq	drbg_hmac_free(%rip), %r8
	leaq	drbg_hmac_new(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	drbg_hmac_generate(%rip), %rdi
	pushq	%rdi
	leaq	drbg_hmac_reseed(%rip), %rdi
	pushq	%rdi
	leaq	drbg_hmac_uninstantiate(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_rand_drbg_new@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE372:
	.size	drbg_hmac_new_wrapper, .-drbg_hmac_new_wrapper
	.type	drbg_hmac_free, @function
drbg_hmac_free:
.LFB373:
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
	je	.L74
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L74
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_reset@PLT
	leaq	.LC0(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$348, %ecx
	movl	$168, %esi
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
.L74:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_drbg_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE373:
	.size	drbg_hmac_free, .-drbg_hmac_free
	.section	.rodata
.LC1:
	.string	"mac"
.LC2:
	.string	"digest"
	.text
	.type	drbg_hmac_get_ctx_params, @function
drbg_hmac_get_ctx_params:
.LFB374:
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
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -52(%rbp)
	leaq	-52(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_drbg_get_ctx_params_no_lock@PLT
	testl	%eax, %eax
	jne	.L76
	movl	$0, %eax
	jmp	.L86
.L76:
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	je	.L78
	movl	$1, %eax
	jmp	.L86
.L78:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L79
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L79
	movl	$0, %eax
	jmp	.L86
.L79:
	leaq	.LC1(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L80
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L87
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_get0_mac@PLT
	movq	%rax, %rdi
	call	EVP_MAC_get0_name@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	je	.L88
.L80:
	leaq	.LC2(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L83
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L89
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	je	.L89
.L83:
	movq	-80(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_drbg_get_ctx_params@PLT
	movl	%eax, -4(%rbp)
	jmp	.L82
.L87:
	nop
	jmp	.L82
.L88:
	nop
	jmp	.L82
.L89:
	nop
.L82:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L85:
	movl	-4(%rbp), %eax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE374:
	.size	drbg_hmac_get_ctx_params, .-drbg_hmac_get_ctx_params
	.type	drbg_hmac_gettable_ctx_params, @function
drbg_hmac_gettable_ctx_params:
.LFB375:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_gettable_ctx_params.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE375:
	.size	drbg_hmac_gettable_ctx_params, .-drbg_hmac_gettable_ctx_params
	.type	drbg_hmac_set_ctx_params_locked, @function
drbg_hmac_set_ctx_params_locked:
.LFB376:
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
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_prov_digest_load_from_params@PLT
	testl	%eax, %eax
	jne	.L93
	movl	$0, %eax
	jmp	.L94
.L93:
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L95
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_drbg_verify_digest@PLT
	testl	%eax, %eax
	jne	.L95
	movl	$0, %eax
	jmp	.L94
.L95:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_prov_macctx_load_from_params@PLT
	testl	%eax, %eax
	jne	.L96
	movl	$0, %eax
	jmp	.L94
.L96:
	cmpq	$0, -32(%rbp)
	je	.L97
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L97
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	shrq	$3, %rax
	sall	$6, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 128(%rax)
	movq	-8(%rbp), %rax
	movl	128(%rax), %eax
	cmpl	$256, %eax
	jbe	.L98
	movq	-8(%rbp), %rax
	movl	$256, 128(%rax)
.L98:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 232(%rax)
	movq	-8(%rbp), %rax
	movl	128(%rax), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movq	%rdx, 144(%rax)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	shrq	%rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 160(%rax)
.L97:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_drbg_set_ctx_params@PLT
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE376:
	.size	drbg_hmac_set_ctx_params_locked, .-drbg_hmac_set_ctx_params_locked
	.type	drbg_hmac_set_ctx_params, @function
drbg_hmac_set_ctx_params:
.LFB377:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L100
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L100
	movl	$0, %eax
	jmp	.L101
.L100:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	drbg_hmac_set_ctx_params_locked
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L102
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L102:
	movl	-12(%rbp), %eax
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE377:
	.size	drbg_hmac_set_ctx_params, .-drbg_hmac_set_ctx_params
	.type	drbg_hmac_settable_ctx_params, @function
drbg_hmac_settable_ctx_params:
.LFB378:
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
.LFE378:
	.size	drbg_hmac_settable_ctx_params, .-drbg_hmac_settable_ctx_params
	.globl	ossl_drbg_ossl_hmac_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_drbg_ossl_hmac_functions, @object
	.size	ossl_drbg_ossl_hmac_functions, 272
ossl_drbg_ossl_hmac_functions:
	.long	1
	.zero	4
	.quad	drbg_hmac_new_wrapper
	.long	2
	.zero	4
	.quad	drbg_hmac_free
	.long	3
	.zero	4
	.quad	drbg_hmac_instantiate_wrapper
	.long	4
	.zero	4
	.quad	drbg_hmac_uninstantiate_wrapper
	.long	5
	.zero	4
	.quad	drbg_hmac_generate_wrapper
	.long	6
	.zero	4
	.quad	drbg_hmac_reseed_wrapper
	.long	8
	.zero	4
	.quad	ossl_drbg_enable_locking
	.long	9
	.zero	4
	.quad	ossl_drbg_lock
	.long	10
	.zero	4
	.quad	ossl_drbg_unlock
	.long	13
	.zero	4
	.quad	drbg_hmac_settable_ctx_params
	.long	16
	.zero	4
	.quad	drbg_hmac_set_ctx_params
	.long	12
	.zero	4
	.quad	drbg_hmac_gettable_ctx_params
	.long	15
	.zero	4
	.quad	drbg_hmac_get_ctx_params
	.long	17
	.zero	4
	.quad	drbg_hmac_verify_zeroization
	.long	18
	.zero	4
	.quad	ossl_drbg_get_seed
	.long	19
	.zero	4
	.quad	ossl_drbg_clear_seed
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 20
__func__.2:
	.string	"ossl_drbg_hmac_init"
.LC3:
	.string	"state"
.LC4:
	.string	"strength"
.LC5:
	.string	"max_request"
.LC6:
	.string	"min_entropylen"
.LC7:
	.string	"max_entropylen"
.LC8:
	.string	"min_noncelen"
.LC9:
	.string	"max_noncelen"
.LC10:
	.string	"max_perslen"
.LC11:
	.string	"max_adinlen"
.LC12:
	.string	"reseed_counter"
.LC13:
	.string	"reseed_time"
.LC14:
	.string	"reseed_requests"
.LC15:
	.string	"reseed_time_interval"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_gettable_ctx_params.1, @object
	.size	known_gettable_ctx_params.1, 640
known_gettable_ctx_params.1:
	.quad	.LC1
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC2
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC3
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC4
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC5
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC6
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC7
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC8
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC9
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC10
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC11
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC12
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC13
	.long	1
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC14
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC15
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
	.section	.rodata
.LC16:
	.string	"properties"
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params.0, @object
	.size	known_settable_ctx_params.0, 240
known_settable_ctx_params.0:
	.quad	.LC16
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC2
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC1
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC14
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC15
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
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

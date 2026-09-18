	.file	"hmac_prov.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/macs/hmac_prov.c"
	.text
	.type	hmac_new, @function
hmac_new:
.LFB320:
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
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	leaq	.LC0(%rip), %rax
	movl	$71, %edx
	movq	%rax, %rsi
	movl	$160, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L4
	call	HMAC_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L5
.L4:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$73, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L3
.L5:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	hmac_new, .-hmac_new
	.type	hmac_free, @function
hmac_free:
.LFB321:
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
	je	.L8
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	HMAC_CTX_free@PLT
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_reset@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$88, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$89, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L8:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	hmac_free, .-hmac_free
	.type	hmac_dup, @function
hmac_dup:
.LFB322:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	hmac_new
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L11
.L12:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	64(%rdx), %rcx
	movq	72(%rdx), %rbx
	movq	%rcx, 64(%rax)
	movq	%rbx, 72(%rax)
	movq	80(%rdx), %rcx
	movq	88(%rdx), %rbx
	movq	%rcx, 80(%rax)
	movq	%rbx, 88(%rax)
	movq	96(%rdx), %rcx
	movq	104(%rdx), %rbx
	movq	%rcx, 96(%rax)
	movq	%rbx, 104(%rax)
	movq	112(%rdx), %rcx
	movq	120(%rdx), %rbx
	movq	%rcx, 112(%rax)
	movq	%rbx, 120(%rax)
	movq	128(%rdx), %rcx
	movq	136(%rdx), %rbx
	movq	%rcx, 128(%rax)
	movq	%rbx, 136(%rax)
	movq	144(%rdx), %rcx
	movq	152(%rdx), %rbx
	movq	%rcx, 144(%rax)
	movq	%rbx, 152(%rax)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movl	$24, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	HMAC_CTX_copy@PLT
	testl	%eax, %eax
	je	.L13
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_digest_copy@PLT
	testl	%eax, %eax
	jne	.L14
.L13:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	hmac_free
	movl	$0, %eax
	jmp	.L11
.L14:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L15
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L16
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	jmp	.L17
.L16:
	movl	$1, %eax
.L17:
	leaq	.LC0(%rip), %rcx
	movl	$117, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L18
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	hmac_free
	movl	$0, %eax
	jmp	.L11
.L18:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L15
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L15:
	movq	-32(%rbp), %rax
.L11:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE322:
	.size	hmac_dup, .-hmac_dup
	.type	hmac_size, @function
hmac_size:
.LFB323:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	HMAC_size@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	hmac_size, .-hmac_size
	.type	hmac_block_size, @function
hmac_block_size:
.LFB324:
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
	cmpq	$0, -8(%rbp)
	jne	.L22
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_block_size@PLT
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE324:
	.size	hmac_block_size, .-hmac_block_size
	.type	hmac_setkey, @function
hmac_setkey:
.LFB325:
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
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L25
	movq	-24(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$148, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L25:
	cmpq	$0, -40(%rbp)
	je	.L26
	movq	-40(%rbp), %rax
	jmp	.L27
.L26:
	movl	$1, %eax
.L27:
	leaq	.LC0(%rip), %rcx
	movl	$150, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	cmpq	$0, -40(%rbp)
	je	.L30
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L30:
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L31
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L32
	cmpq	$0, -8(%rbp)
	je	.L32
.L31:
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_engine@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	HMAC_Init_ex@PLT
	jmp	.L29
.L32:
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE325:
	.size	hmac_setkey, .-hmac_setkey
	.type	hmac_init, @function
hmac_init:
.LFB326:
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
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L34
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	hmac_set_ctx_params
	testl	%eax, %eax
	jne	.L35
.L34:
	movl	$0, %eax
	jmp	.L36
.L35:
	cmpq	$0, -32(%rbp)
	je	.L37
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	hmac_setkey
	jmp	.L36
.L37:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	HMAC_Init_ex@PLT
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE326:
	.size	hmac_init, .-hmac_init
	.type	hmac_update, @function
hmac_update:
.LFB327:
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
	subq	$56, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-56(%rbp), %rax
	movl	80(%rax), %eax
	testl	%eax, %eax
	jne	.L40
	cmpq	$13, -88(%rbp)
	je	.L41
	movl	$0, %eax
	jmp	.L42
.L41:
	movq	-56(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-56(%rbp), %rax
	movl	$1, 80(%rax)
	movl	$1, %eax
	jmp	.L42
.L40:
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	-88(%rbp), %rax
	jnb	.L43
	movl	$0, %eax
	jmp	.L42
.L43:
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	40(%rax), %r15
	movq	-56(%rbp), %rax
	movq	56(%rax), %r14
	movq	-56(%rbp), %rax
	leaq	64(%rax), %r13
	movq	-56(%rbp), %rax
	leaq	152(%rax), %r12
	movq	-56(%rbp), %rax
	leaq	84(%rax), %rbx
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	pushq	$0
	pushq	-96(%rbp)
	pushq	%r15
	pushq	%r14
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ssl3_cbc_digest_record@PLT
	addq	$32, %rsp
	jmp	.L42
.L39:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
.L42:
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
.LFE327:
	.size	hmac_update, .-hmac_update
	.type	hmac_final, @function
hmac_final:
.LFB328:
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
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L45
	movl	$0, %eax
	jmp	.L51
.L45:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L47
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	jne	.L48
	movl	$0, %eax
	jmp	.L51
.L48:
	cmpq	$0, -40(%rbp)
	je	.L49
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L49:
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	84(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
	jmp	.L51
.L47:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-12(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Final@PLT
	testl	%eax, %eax
	jne	.L50
	movl	$0, %eax
	jmp	.L51
.L50:
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE328:
	.size	hmac_final, .-hmac_final
	.section	.rodata
.LC1:
	.string	"size"
.LC2:
	.string	"block-size"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_gettable_ctx_params, @object
	.size	known_gettable_ctx_params, 120
known_gettable_ctx_params:
	.quad	.LC1
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC2
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
	.text
	.type	hmac_gettable_ctx_params, @function
hmac_gettable_ctx_params:
.LFB329:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_gettable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE329:
	.size	hmac_gettable_ctx_params, .-hmac_gettable_ctx_params
	.type	hmac_get_ctx_params, @function
hmac_get_ctx_params:
.LFB330:
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
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L55
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	hmac_size
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L55
	movl	$0, %eax
	jmp	.L56
.L55:
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L57
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	hmac_block_size
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L57
	movl	$0, %eax
	jmp	.L56
.L57:
	movl	$1, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE330:
	.size	hmac_get_ctx_params, .-hmac_get_ctx_params
	.section	.rodata
.LC3:
	.string	"digest"
.LC4:
	.string	"properties"
.LC5:
	.string	"key"
.LC6:
	.string	"digest-noinit"
.LC7:
	.string	"digest-oneshot"
.LC8:
	.string	"tls-data-size"
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params, @object
	.size	known_settable_ctx_params, 280
known_settable_ctx_params:
	.quad	.LC3
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC4
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
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC7
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC8
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
	.text
	.type	hmac_settable_ctx_params, @function
hmac_settable_ctx_params:
.LFB331:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_settable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE331:
	.size	hmac_settable_ctx_params, .-hmac_settable_ctx_params
	.type	hmac_set_ctx_params, @function
hmac_set_ctx_params:
.LFB332:
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
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L61
	movl	$1, %eax
	jmp	.L62
.L61:
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_prov_digest_load_from_params@PLT
	testl	%eax, %eax
	jne	.L63
	movl	$0, %eax
	jmp	.L62
.L63:
	leaq	.LC5(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L64
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L65
	movl	$0, %eax
	jmp	.L62
.L65:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	hmac_setkey
	testl	%eax, %eax
	jne	.L64
	movl	$0, %eax
	jmp	.L62
.L64:
	leaq	.LC8(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L66
	movq	-8(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L66
	movl	$0, %eax
	jmp	.L62
.L66:
	movl	$1, %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE332:
	.size	hmac_set_ctx_params, .-hmac_set_ctx_params
	.globl	ossl_hmac_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_hmac_functions, @object
	.size	ossl_hmac_functions, 176
ossl_hmac_functions:
	.long	1
	.zero	4
	.quad	hmac_new
	.long	2
	.zero	4
	.quad	hmac_dup
	.long	3
	.zero	4
	.quad	hmac_free
	.long	4
	.zero	4
	.quad	hmac_init
	.long	5
	.zero	4
	.quad	hmac_update
	.long	6
	.zero	4
	.quad	hmac_final
	.long	11
	.zero	4
	.quad	hmac_gettable_ctx_params
	.long	8
	.zero	4
	.quad	hmac_get_ctx_params
	.long	12
	.zero	4
	.quad	hmac_settable_ctx_params
	.long	9
	.zero	4
	.quad	hmac_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

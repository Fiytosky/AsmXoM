	.file	"cipher_tdes_wrap.c"
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
	.type	wrap_iv, @object
	.size	wrap_iv, 8
wrap_iv:
	.base64	"St2iLHnoIQU="
	.text
	.type	des_ede3_unwrap, @function
des_ede3_unwrap:
.LFB457:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	$-1, -4(%rbp)
	cmpq	$23, -80(%rbp)
	ja	.L6
	movl	$-1, %eax
	jmp	.L12
.L6:
	cmpq	$0, -64(%rbp)
	jne	.L8
	movq	-80(%rbp), %rax
	subl	$16, %eax
	jmp	.L12
.L8:
	movq	-56(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	wrap_iv(%rip), %rax
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-72(%rbp), %rdx
	leaq	-12(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	*%r8
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L9
	movq	-80(%rbp), %rax
	leaq	-8(%rax), %rdx
	movq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	subq	$8, -72(%rbp)
.L9:
	movq	-56(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-80(%rbp), %rax
	leaq	-16(%rax), %rcx
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	movq	-56(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-80(%rbp), %rax
	leaq	-8(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	leaq	-20(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	*%r8
	leaq	-12(%rbp), %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	BUF_reverse@PLT
	movq	-80(%rbp), %rax
	leaq	-16(%rax), %rdx
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BUF_reverse@PLT
	movq	-56(%rbp), %rax
	leaq	32(%rax), %rcx
	leaq	-20(%rbp), %rax
	movl	$8, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	BUF_reverse@PLT
	movq	-56(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-80(%rbp), %rax
	leaq	-16(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	movq	-56(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	leaq	-12(%rbp), %rdx
	leaq	-12(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	*%r8
	movq	-80(%rbp), %rax
	leaq	-16(%rax), %rcx
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sha1@PLT
	testq	%rax, %rax
	je	.L10
	leaq	-12(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	jne	.L10
	movq	-80(%rbp), %rax
	subl	$16, %eax
	movl	%eax, -4(%rbp)
.L10:
	leaq	-12(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-48(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-20(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-56(%rbp), %rax
	addq	$32, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	cmpl	$-1, -4(%rbp)
	jne	.L11
	movq	-80(%rbp), %rax
	leaq	-16(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L11:
	movl	-4(%rbp), %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE457:
	.size	des_ede3_unwrap, .-des_ede3_unwrap
	.type	des_ede3_wrap, @function
des_ede3_wrap:
.LFB458:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	$8, -8(%rbp)
	movq	$8, -16(%rbp)
	movq	-80(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L14
	movq	-24(%rbp), %rax
	jmp	.L18
.L14:
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove@PLT
	leaq	-48(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sha1@PLT
	testq	%rax, %rax
	jne	.L16
	movl	$0, %eax
	jmp	.L18
.L16:
	movq	-80(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-16(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	leaq	-48(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-56(%rbp), %rax
	leaq	32(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	184(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-56(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-56(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-80(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rsi
	movq	-8(%rbp), %rax
	addq	%rax, %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BUF_reverse@PLT
	movq	-56(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	wrap_iv(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-56(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	movq	-24(%rbp), %rax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	des_ede3_wrap, .-des_ede3_wrap
	.type	tdes_wrap_cipher_internal, @function
tdes_wrap_cipher_internal:
.LFB459:
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
	cmpq	$1073741823, -32(%rbp)
	ja	.L20
	movq	-32(%rbp), %rax
	andl	$7, %eax
	testq	%rax, %rax
	je	.L21
.L20:
	movl	$-1, %eax
	jmp	.L22
.L21:
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L23
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	des_ede3_wrap
	jmp	.L22
.L23:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	des_ede3_unwrap
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	tdes_wrap_cipher_internal, .-tdes_wrap_cipher_internal
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/ciphers/cipher_tdes_wrap.c"
	.text
	.type	tdes_wrap_cipher, @function
tdes_wrap_cipher:
.LFB460:
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
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L25
	movl	$0, %eax
	jmp	.L26
.L25:
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L27
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$139, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L26
.L27:
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tdes_wrap_cipher_internal
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L28
	movl	$0, %eax
	jmp	.L26
.L28:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	tdes_wrap_cipher, .-tdes_wrap_cipher
	.type	tdes_wrap_update, @function
tdes_wrap_update:
.LFB461:
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
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -48(%rbp)
	jne	.L30
	movl	$1, %eax
	jmp	.L31
.L30:
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L32
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$159, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L31
.L32:
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	tdes_wrap_cipher
	testl	%eax, %eax
	jne	.L33
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$164, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L31
.L33:
	movl	$1, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE461:
	.size	tdes_wrap_update, .-tdes_wrap_update
	.type	tdes_wrap_newctx, @function
tdes_wrap_newctx:
.LFB462:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_prov_cipher_hw_tdes_wrap_cbc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movl	$18, %r9d
	movl	$0, %r8d
	movl	$64, %ecx
	movl	$192, %edx
	movl	$65538, %esi
	movq	%rax, %rdi
	call	ossl_tdes_newctx@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE462:
	.size	tdes_wrap_newctx, .-tdes_wrap_newctx
	.type	tdes_wrap_get_params, @function
tdes_wrap_get_params:
.LFB463:
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
	movl	$64, %r8d
	movl	$192, %ecx
	movl	$18, %edx
	movl	$65538, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE463:
	.size	tdes_wrap_get_params, .-tdes_wrap_get_params
	.globl	ossl_tdes_wrap_cbc_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_tdes_wrap_cbc_functions, @object
	.size	ossl_tdes_wrap_cbc_functions, 224
ossl_tdes_wrap_cbc_functions:
	.long	2
	.zero	4
	.quad	ossl_tdes_einit
	.long	3
	.zero	4
	.quad	ossl_tdes_dinit
	.long	6
	.zero	4
	.quad	tdes_wrap_cipher
	.long	1
	.zero	4
	.quad	tdes_wrap_newctx
	.long	7
	.zero	4
	.quad	ossl_tdes_freectx
	.long	4
	.zero	4
	.quad	tdes_wrap_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	9
	.zero	4
	.quad	tdes_wrap_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_tdes_get_ctx_params
	.long	13
	.zero	4
	.quad	ossl_tdes_gettable_ctx_params
	.long	11
	.zero	4
	.quad	ossl_cipher_generic_set_ctx_params
	.long	14
	.zero	4
	.quad	ossl_cipher_generic_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"tdes_wrap_cipher"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 17
__func__.0:
	.string	"tdes_wrap_update"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

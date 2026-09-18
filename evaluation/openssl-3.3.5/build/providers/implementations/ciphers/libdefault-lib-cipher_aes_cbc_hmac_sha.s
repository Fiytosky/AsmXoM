	.file	"cipher_aes_cbc_hmac_sha.c"
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
	.type	aes_einit, @function
aes_einit:
.LFB402:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_cipher_generic_einit@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	aes_set_ctx_params
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	aes_einit, .-aes_einit
	.type	aes_dinit, @function
aes_dinit:
.LFB403:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_cipher_generic_dinit@PLT
	testl	%eax, %eax
	jne	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	aes_set_ctx_params
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	aes_dinit, .-aes_dinit
	.section	.rodata
.LC0:
	.string	"mackey"
.LC1:
	.string	"tlsaad"
.LC2:
	.string	"tls1multi_maxsndfrag"
.LC3:
	.string	"tls1multi_aad"
.LC4:
	.string	"tls1multi_interleave"
.LC5:
	.string	"tls1multi_enc"
.LC6:
	.string	"tls1multi_encin"
.LC7:
	.string	"keylen"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	cipher_aes_known_settable_ctx_params, @object
	.size	cipher_aes_known_settable_ctx_params, 360
cipher_aes_known_settable_ctx_params:
	.quad	.LC0
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC1
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC2
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC3
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC4
	.long	2
	.zero	4
	.quad	0
	.quad	4
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
	.type	aes_settable_ctx_params, @function
aes_settable_ctx_params:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	cipher_aes_known_settable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	aes_settable_ctx_params, .-aes_settable_ctx_params
	.section	.rodata
	.align 8
.LC8:
	.string	"../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha.c"
.LC9:
	.string	"tls-version"
	.text
	.type	aes_set_ctx_params, @function
aes_set_ctx_params:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$1, -20(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.L14
	movl	$1, %eax
	jmp	.L35
.L14:
	leaq	.LC0(%rip), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L16
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L17
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$103, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L17:
	movq	-16(%rbp), %rax
	movq	24(%rax), %r8
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
.L16:
	leaq	.LC2(%rip), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L18
	movq	-8(%rbp), %rax
	leaq	480(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L18
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L18:
	leaq	.LC3(%rip), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L19
	leaq	.LC4(%rip), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L20
	cmpq	$0, -40(%rbp)
	je	.L20
	leaq	-96(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L21
.L20:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$133, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L21:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rcx
	leaq	-96(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jg	.L19
	movl	$0, %eax
	jmp	.L35
.L19:
	leaq	.LC5(%rip), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L22
	leaq	.LC4(%rip), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -48(%rbp)
	leaq	.LC6(%rip), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L23
	cmpq	$0, -56(%rbp)
	je	.L23
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L23
	cmpq	$0, -48(%rbp)
	je	.L23
	leaq	-96(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L24
.L23:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$163, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L24:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rcx
	leaq	-96(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jg	.L22
	movl	$0, %eax
	jmp	.L35
.L22:
	leaq	.LC1(%rip), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L25
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L26
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$177, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L26:
	movq	-16(%rbp), %rax
	movq	32(%rax), %r8
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jg	.L25
	movl	$0, %eax
	jmp	.L35
.L25:
	leaq	.LC7(%rip), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L27
	leaq	-104(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L28
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$189, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L28:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-104(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L27
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$193, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L27:
	leaq	.LC9(%rip), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L31
	movq	-8(%rbp), %rax
	leaq	112(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L32
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$201, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L32:
	movq	-8(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$768, %eax
	je	.L33
	movq	-8(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$769, %eax
	jne	.L31
.L33:
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	cmpq	$15, %rax
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$207, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L34:
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	leaq	-16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 152(%rax)
.L31:
	movl	-20(%rbp), %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	aes_set_ctx_params, .-aes_set_ctx_params
	.section	.rodata
.LC10:
	.string	"tls1multi_maxbufsz"
.LC11:
	.string	"tls1multi_aadpacklen"
.LC12:
	.string	"tls1multi_enclen"
.LC13:
	.string	"tlsaadpad"
.LC14:
	.string	"ivlen"
.LC15:
	.string	"iv"
.LC16:
	.string	"updated-iv"
	.text
	.type	aes_get_ctx_params, @function
aes_get_ctx_params:
.LFB406:
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
	leaq	.LC10(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L37
	movq	-8(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L37
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$233, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L37:
	leaq	.LC4(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L39
	movq	-8(%rbp), %rax
	movl	472(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint@PLT
	testl	%eax, %eax
	jne	.L39
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$240, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L39:
	leaq	.LC11(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L40
	movq	-8(%rbp), %rax
	movl	476(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint@PLT
	testl	%eax, %eax
	jne	.L40
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$246, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L40:
	leaq	.LC12(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L41
	movq	-8(%rbp), %rax
	movq	488(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L41
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$252, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L41:
	leaq	.LC13(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L42
	movq	-8(%rbp), %rax
	movq	496(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L42
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$259, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L42:
	leaq	.LC7(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L43
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L43
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$264, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L43:
	leaq	.LC14(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L44
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L44
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$269, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L44:
	leaq	.LC15(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L45
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L45
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_ptr@PLT
	testl	%eax, %eax
	jne	.L45
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$276, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L45:
	leaq	.LC16(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L46
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L46
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_ptr@PLT
	testl	%eax, %eax
	jne	.L46
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$283, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L46:
	movl	$1, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	aes_get_ctx_params, .-aes_get_ctx_params
	.section	.data.rel.ro.local
	.align 32
	.type	cipher_aes_known_gettable_ctx_params, @object
	.size	cipher_aes_known_gettable_ctx_params, 400
cipher_aes_known_gettable_ctx_params:
	.quad	.LC10
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC4
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC11
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC12
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC13
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
	.quad	.LC14
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC15
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC16
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
	.text
	.type	aes_gettable_ctx_params, @function
aes_gettable_ctx_params:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	cipher_aes_known_gettable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	aes_gettable_ctx_params, .-aes_gettable_ctx_params
	.type	base_init, @function
base_init:
.LFB408:
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
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rbp), %r8
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	pushq	-8(%rbp)
	pushq	%rdi
	movq	%r8, %r9
	movl	$2, %r8d
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
	movq	-16(%rbp), %rax
	movq	168(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 464(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	base_init, .-base_init
	.type	aes_cbc_hmac_sha1_newctx, @function
aes_cbc_hmac_sha1_newctx:
.LFB409:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L51
	movl	$0, %eax
	jmp	.L52
.L51:
	leaq	.LC8(%rip), %rax
	movl	$329, %edx
	movq	%rax, %rsi
	movl	$792, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L53
	call	ossl_prov_cipher_hw_aes_cbc_hmac_sha1@PLT
	movq	%rax, %rdi
	movq	-8(%rbp), %rsi
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	-56(%rbp)
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	base_init
	addq	$16, %rsp
.L53:
	movq	-8(%rbp), %rax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	aes_cbc_hmac_sha1_newctx, .-aes_cbc_hmac_sha1_newctx
	.type	aes_cbc_hmac_sha1_dupctx, @function
aes_cbc_hmac_sha1_dupctx:
.LFB410:
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
	jne	.L55
	movl	$0, %eax
	jmp	.L56
.L55:
	leaq	.LC8(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$344, %ecx
	movl	$792, %esi
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	aes_cbc_hmac_sha1_dupctx, .-aes_cbc_hmac_sha1_dupctx
	.type	aes_cbc_hmac_sha1_freectx, @function
aes_cbc_hmac_sha1_freectx:
.LFB411:
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
	je	.L59
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cipher_generic_reset_ctx@PLT
	leaq	.LC8(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$353, %ecx
	movl	$792, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L59:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	aes_cbc_hmac_sha1_freectx, .-aes_cbc_hmac_sha1_freectx
	.type	aes_cbc_hmac_sha256_newctx, @function
aes_cbc_hmac_sha256_newctx:
.LFB412:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L61
	movl	$0, %eax
	jmp	.L62
.L61:
	leaq	.LC8(%rip), %rax
	movl	$366, %edx
	movq	%rax, %rsi
	movl	$840, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L63
	call	ossl_prov_cipher_hw_aes_cbc_hmac_sha256@PLT
	movq	%rax, %rdi
	movq	-8(%rbp), %rsi
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	-56(%rbp)
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	base_init
	addq	$16, %rsp
.L63:
	movq	-8(%rbp), %rax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	aes_cbc_hmac_sha256_newctx, .-aes_cbc_hmac_sha256_newctx
	.type	aes_cbc_hmac_sha256_dupctx, @function
aes_cbc_hmac_sha256_dupctx:
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
	leaq	.LC8(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$378, %ecx
	movl	$840, %esi
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	aes_cbc_hmac_sha256_dupctx, .-aes_cbc_hmac_sha256_dupctx
	.type	aes_cbc_hmac_sha256_freectx, @function
aes_cbc_hmac_sha256_freectx:
.LFB414:
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
	je	.L68
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cipher_generic_reset_ctx@PLT
	leaq	.LC8(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$387, %ecx
	movl	$840, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L68:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	aes_cbc_hmac_sha256_freectx, .-aes_cbc_hmac_sha256_freectx
	.type	aes_128_cbc_hmac_sha1_newctx, @function
aes_128_cbc_hmac_sha1_newctx:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$9, %r8d
	movl	$128, %ecx
	movl	$128, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	aes_cbc_hmac_sha1_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	aes_128_cbc_hmac_sha1_newctx, .-aes_128_cbc_hmac_sha1_newctx
	.type	aes_128_cbc_hmac_sha1_get_params, @function
aes_128_cbc_hmac_sha1_get_params:
.LFB416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$128, %r9d
	movl	$128, %r8d
	movl	$128, %ecx
	movl	$9, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	aes_128_cbc_hmac_sha1_get_params, .-aes_128_cbc_hmac_sha1_get_params
	.globl	ossl_aes128cbc_hmac_sha1_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_aes128cbc_hmac_sha1_functions, @object
	.size	ossl_aes128cbc_hmac_sha1_functions, 240
ossl_aes128cbc_hmac_sha1_functions:
	.long	1
	.zero	4
	.quad	aes_128_cbc_hmac_sha1_newctx
	.long	7
	.zero	4
	.quad	aes_cbc_hmac_sha1_freectx
	.long	8
	.zero	4
	.quad	aes_cbc_hmac_sha1_dupctx
	.long	2
	.zero	4
	.quad	aes_einit
	.long	3
	.zero	4
	.quad	aes_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_128_cbc_hmac_sha1_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	aes_get_ctx_params
	.long	13
	.zero	4
	.quad	aes_gettable_ctx_params
	.long	11
	.zero	4
	.quad	aes_set_ctx_params
	.long	14
	.zero	4
	.quad	aes_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_256_cbc_hmac_sha1_newctx, @function
aes_256_cbc_hmac_sha1_newctx:
.LFB417:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$9, %r8d
	movl	$128, %ecx
	movl	$128, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	aes_cbc_hmac_sha1_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	aes_256_cbc_hmac_sha1_newctx, .-aes_256_cbc_hmac_sha1_newctx
	.type	aes_256_cbc_hmac_sha1_get_params, @function
aes_256_cbc_hmac_sha1_get_params:
.LFB418:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$128, %r9d
	movl	$128, %r8d
	movl	$256, %ecx
	movl	$9, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	aes_256_cbc_hmac_sha1_get_params, .-aes_256_cbc_hmac_sha1_get_params
	.globl	ossl_aes256cbc_hmac_sha1_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes256cbc_hmac_sha1_functions, @object
	.size	ossl_aes256cbc_hmac_sha1_functions, 240
ossl_aes256cbc_hmac_sha1_functions:
	.long	1
	.zero	4
	.quad	aes_256_cbc_hmac_sha1_newctx
	.long	7
	.zero	4
	.quad	aes_cbc_hmac_sha1_freectx
	.long	8
	.zero	4
	.quad	aes_cbc_hmac_sha1_dupctx
	.long	2
	.zero	4
	.quad	aes_einit
	.long	3
	.zero	4
	.quad	aes_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_256_cbc_hmac_sha1_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	aes_get_ctx_params
	.long	13
	.zero	4
	.quad	aes_gettable_ctx_params
	.long	11
	.zero	4
	.quad	aes_set_ctx_params
	.long	14
	.zero	4
	.quad	aes_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_128_cbc_hmac_sha256_newctx, @function
aes_128_cbc_hmac_sha256_newctx:
.LFB419:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$9, %r8d
	movl	$128, %ecx
	movl	$128, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	aes_cbc_hmac_sha256_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	aes_128_cbc_hmac_sha256_newctx, .-aes_128_cbc_hmac_sha256_newctx
	.type	aes_128_cbc_hmac_sha256_get_params, @function
aes_128_cbc_hmac_sha256_get_params:
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
	movl	$128, %r9d
	movl	$128, %r8d
	movl	$128, %ecx
	movl	$9, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	aes_128_cbc_hmac_sha256_get_params, .-aes_128_cbc_hmac_sha256_get_params
	.globl	ossl_aes128cbc_hmac_sha256_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes128cbc_hmac_sha256_functions, @object
	.size	ossl_aes128cbc_hmac_sha256_functions, 240
ossl_aes128cbc_hmac_sha256_functions:
	.long	1
	.zero	4
	.quad	aes_128_cbc_hmac_sha256_newctx
	.long	7
	.zero	4
	.quad	aes_cbc_hmac_sha256_freectx
	.long	8
	.zero	4
	.quad	aes_cbc_hmac_sha256_dupctx
	.long	2
	.zero	4
	.quad	aes_einit
	.long	3
	.zero	4
	.quad	aes_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_128_cbc_hmac_sha256_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	aes_get_ctx_params
	.long	13
	.zero	4
	.quad	aes_gettable_ctx_params
	.long	11
	.zero	4
	.quad	aes_set_ctx_params
	.long	14
	.zero	4
	.quad	aes_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_256_cbc_hmac_sha256_newctx, @function
aes_256_cbc_hmac_sha256_newctx:
.LFB421:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$9, %r8d
	movl	$128, %ecx
	movl	$128, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	aes_cbc_hmac_sha256_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	aes_256_cbc_hmac_sha256_newctx, .-aes_256_cbc_hmac_sha256_newctx
	.type	aes_256_cbc_hmac_sha256_get_params, @function
aes_256_cbc_hmac_sha256_get_params:
.LFB422:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$128, %r9d
	movl	$128, %r8d
	movl	$256, %ecx
	movl	$9, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	aes_256_cbc_hmac_sha256_get_params, .-aes_256_cbc_hmac_sha256_get_params
	.globl	ossl_aes256cbc_hmac_sha256_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes256cbc_hmac_sha256_functions, @object
	.size	ossl_aes256cbc_hmac_sha256_functions, 240
ossl_aes256cbc_hmac_sha256_functions:
	.long	1
	.zero	4
	.quad	aes_256_cbc_hmac_sha256_newctx
	.long	7
	.zero	4
	.quad	aes_cbc_hmac_sha256_freectx
	.long	8
	.zero	4
	.quad	aes_cbc_hmac_sha256_dupctx
	.long	2
	.zero	4
	.quad	aes_einit
	.long	3
	.zero	4
	.quad	aes_dinit
	.long	4
	.zero	4
	.quad	ossl_cipher_generic_stream_update
	.long	5
	.zero	4
	.quad	ossl_cipher_generic_stream_final
	.long	6
	.zero	4
	.quad	ossl_cipher_generic_cipher
	.long	9
	.zero	4
	.quad	aes_256_cbc_hmac_sha256_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	aes_get_ctx_params
	.long	13
	.zero	4
	.quad	aes_gettable_ctx_params
	.long	11
	.zero	4
	.quad	aes_set_ctx_params
	.long	14
	.zero	4
	.quad	aes_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 19
__func__.1:
	.string	"aes_set_ctx_params"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"aes_get_ctx_params"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

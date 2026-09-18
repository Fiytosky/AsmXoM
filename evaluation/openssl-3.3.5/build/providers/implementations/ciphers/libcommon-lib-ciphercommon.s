	.file	"ciphercommon.c"
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
.LC0:
	.string	"mode"
.LC1:
	.string	"keylen"
.LC2:
	.string	"ivlen"
.LC3:
	.string	"blocksize"
.LC4:
	.string	"aead"
.LC5:
	.string	"custom-iv"
.LC6:
	.string	"cts"
.LC7:
	.string	"tls-multi"
.LC8:
	.string	"has-randkey"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	cipher_known_gettable_params, @object
	.size	cipher_known_gettable_params, 400
cipher_known_gettable_params:
	.quad	.LC0
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
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
	.quad	.LC3
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC4
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC5
	.long	1
	.zero	4
	.quad	0
	.quad	4
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
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.globl	ossl_cipher_generic_gettable_params
	.type	ossl_cipher_generic_gettable_params, @function
ossl_cipher_generic_gettable_params:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	cipher_known_gettable_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	ossl_cipher_generic_gettable_params, .-ossl_cipher_generic_gettable_params
	.section	.rodata
	.align 8
.LC9:
	.string	"../providers/implementations/ciphers/ciphercommon.c"
	.text
	.globl	ossl_cipher_generic_get_params
	.type	ossl_cipher_generic_get_params, @function
ossl_cipher_generic_get_params:
.LFB403:
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
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L8
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint@PLT
	testl	%eax, %eax
	jne	.L8
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$49, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L9
.L8:
	leaq	.LC4(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L10
	movq	-40(%rbp), %rax
	andl	$1, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L10
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$55, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L9
.L10:
	leaq	.LC5(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L11
	movq	-40(%rbp), %rax
	andl	$2, %eax
	shrq	%rax
	andl	$1, %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L11
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$61, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L9
.L11:
	leaq	.LC6(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L12
	movq	-40(%rbp), %rax
	andl	$4, %eax
	shrq	$2, %rax
	andl	$1, %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L12
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$67, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L9
.L12:
	leaq	.LC7(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L13
	movq	-40(%rbp), %rax
	andl	$8, %eax
	shrq	$3, %rax
	andl	$1, %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L13
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$73, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L9
.L13:
	leaq	.LC8(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L14
	movq	-40(%rbp), %rax
	andl	$16, %eax
	shrq	$4, %rax
	andl	$1, %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L14
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$79, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L9
.L14:
	leaq	.LC1(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L15
	movq	-48(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L15
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$84, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L9
.L15:
	leaq	.LC3(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L16
	movq	-56(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L16
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$89, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L9
.L16:
	leaq	.LC2(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L17
	movq	-64(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L17
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$94, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L9
.L17:
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	ossl_cipher_generic_get_params, .-ossl_cipher_generic_get_params
	.section	.rodata
.LC10:
	.string	"padding"
.LC11:
	.string	"num"
.LC12:
	.string	"iv"
.LC13:
	.string	"updated-iv"
.LC14:
	.string	"tls-mac"
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_cipher_generic_known_gettable_ctx_params, @object
	.size	ossl_cipher_generic_known_gettable_ctx_params, 320
ossl_cipher_generic_known_gettable_ctx_params:
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
	.quad	.LC10
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
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC13
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC14
	.long	7
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
	.globl	ossl_cipher_generic_gettable_ctx_params
	.type	ossl_cipher_generic_gettable_ctx_params, @function
ossl_cipher_generic_gettable_ctx_params:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	ossl_cipher_generic_known_gettable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	ossl_cipher_generic_gettable_ctx_params, .-ossl_cipher_generic_gettable_ctx_params
	.section	.rodata
.LC15:
	.string	"use-bits"
.LC16:
	.string	"tls-version"
.LC17:
	.string	"tls-mac-size"
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_cipher_generic_known_settable_ctx_params, @object
	.size	ossl_cipher_generic_known_settable_ctx_params, 240
ossl_cipher_generic_known_settable_ctx_params:
	.quad	.LC10
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
	.quad	.LC15
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC16
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC17
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
	.globl	ossl_cipher_generic_settable_ctx_params
	.type	ossl_cipher_generic_settable_ctx_params, @function
ossl_cipher_generic_settable_ctx_params:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	ossl_cipher_generic_known_settable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	ossl_cipher_generic_settable_ctx_params, .-ossl_cipher_generic_settable_ctx_params
	.globl	ossl_cipher_var_keylen_set_ctx_params
	.type	ossl_cipher_var_keylen_set_ctx_params, @function
ossl_cipher_var_keylen_set_ctx_params:
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
	cmpq	$0, -48(%rbp)
	jne	.L23
	movl	$1, %eax
	jmp	.L24
.L23:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cipher_generic_set_ctx_params@PLT
	testl	%eax, %eax
	jne	.L25
	movl	$0, %eax
	jmp	.L24
.L25:
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L26
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L27
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L24
.L27:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L26
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %edx
	andl	$-9, %edx
	movb	%dl, 108(%rax)
.L26:
	movl	$1, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	ossl_cipher_var_keylen_set_ctx_params, .-ossl_cipher_var_keylen_set_ctx_params
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_cipher_var_keylen_known_settable_ctx_params, @object
	.size	ossl_cipher_var_keylen_known_settable_ctx_params, 160
ossl_cipher_var_keylen_known_settable_ctx_params:
	.quad	.LC10
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
	.quad	.LC1
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
	.globl	ossl_cipher_var_keylen_settable_ctx_params
	.type	ossl_cipher_var_keylen_settable_ctx_params, @function
ossl_cipher_var_keylen_settable_ctx_params:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	ossl_cipher_var_keylen_known_settable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	ossl_cipher_var_keylen_settable_ctx_params, .-ossl_cipher_var_keylen_settable_ctx_params
	.section	.rodata
.LC18:
	.string	"taglen"
.LC19:
	.string	"tag"
.LC20:
	.string	"tlsaadpad"
.LC21:
	.string	"tlsivgen"
	.section	.data.rel.ro.local
	.align 32
	.type	cipher_aead_known_gettable_ctx_params, @object
	.size	cipher_aead_known_gettable_ctx_params, 360
cipher_aead_known_gettable_ctx_params:
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
	.quad	.LC18
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC12
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC13
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC19
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC20
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC21
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
	.globl	ossl_cipher_aead_gettable_ctx_params
	.type	ossl_cipher_aead_gettable_ctx_params, @function
ossl_cipher_aead_gettable_ctx_params:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	cipher_aead_known_gettable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ossl_cipher_aead_gettable_ctx_params, .-ossl_cipher_aead_gettable_ctx_params
	.section	.rodata
.LC22:
	.string	"tlsaad"
.LC23:
	.string	"tlsivfixed"
.LC24:
	.string	"tlsivinv"
	.section	.data.rel.ro.local
	.align 32
	.type	cipher_aead_known_settable_ctx_params, @object
	.size	cipher_aead_known_settable_ctx_params, 240
cipher_aead_known_settable_ctx_params:
	.quad	.LC2
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC19
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC22
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC23
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC24
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
	.globl	ossl_cipher_aead_settable_ctx_params
	.type	ossl_cipher_aead_settable_ctx_params, @function
ossl_cipher_aead_settable_ctx_params:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	cipher_aead_known_settable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	ossl_cipher_aead_settable_ctx_params, .-ossl_cipher_aead_settable_ctx_params
	.globl	ossl_cipher_generic_reset_ctx
	.type	ossl_cipher_generic_reset_ctx, @function
ossl_cipher_generic_reset_ctx:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L37
	movq	-8(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	je	.L37
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	leaq	.LC9(%rip), %rcx
	movl	$182, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movl	$0, 128(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 120(%rax)
.L37:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	ossl_cipher_generic_reset_ctx, .-ossl_cipher_generic_reset_ctx
	.type	cipher_generic_init_internal, @function
cipher_generic_init_internal:
.LFB411:
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
	movl	$0, 160(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %edx
	andl	$-17, %edx
	movb	%dl, 108(%rax)
	cmpl	$0, 16(%rbp)
	setne	%dl
	movq	-8(%rbp), %rax
	andl	$1, %edx
	leal	(%rdx,%rdx), %ecx
	movzbl	108(%rax), %edx
	andl	$-3, %edx
	orl	%ecx, %edx
	movb	%dl, 108(%rax)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L39
	movl	$0, %eax
	jmp	.L40
.L39:
	cmpq	$0, -32(%rbp)
	je	.L41
	movq	-8(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$1, %eax
	je	.L41
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initiv@PLT
	testl	%eax, %eax
	jne	.L41
	movl	$0, %eax
	jmp	.L40
.L41:
	cmpq	$0, -32(%rbp)
	jne	.L42
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L42
	movq	-8(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$2, %eax
	je	.L43
	movq	-8(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$3, %eax
	je	.L43
	movq	-8(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$4, %eax
	jne	.L42
.L43:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$32, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L42:
	cmpq	$0, -16(%rbp)
	je	.L44
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L45
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	%rax, -24(%rbp)
	je	.L46
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$215, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L40
.L45:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 72(%rax)
.L46:
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	(%rax), %r8
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L47
	movl	$0, %eax
	jmp	.L40
.L47:
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %edx
	orl	$8, %edx
	movb	%dl, 108(%rax)
.L44:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cipher_generic_set_ctx_params@PLT
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	cipher_generic_init_internal, .-cipher_generic_init_internal
	.globl	ossl_cipher_generic_einit
	.type	ossl_cipher_generic_einit, @function
ossl_cipher_generic_einit:
.LFB412:
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
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	cipher_generic_init_internal
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	ossl_cipher_generic_einit, .-ossl_cipher_generic_einit
	.globl	ossl_cipher_generic_dinit
	.type	ossl_cipher_generic_dinit, @function
ossl_cipher_generic_dinit:
.LFB413:
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
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	cipher_generic_init_internal
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	ossl_cipher_generic_dinit, .-ossl_cipher_generic_dinit
	.globl	ossl_cipher_generic_block_update
	.type	ossl_cipher_generic_block_update, @function
ossl_cipher_generic_block_update:
.LFB414:
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
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L53
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$257, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L54
.L53:
	movq	-32(%rbp), %rax
	movl	112(%rax), %eax
	testl	%eax, %eax
	je	.L55
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	je	.L56
	movq	-104(%rbp), %rax
	cmpq	%rax, -80(%rbp)
	jne	.L56
	movq	-112(%rbp), %rax
	cmpq	%rax, -96(%rbp)
	jb	.L56
	movq	-32(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L57
.L56:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$272, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L54
.L57:
	movq	-32(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L58
	movq	-112(%rbp), %rax
	movl	$0, %edx
	divq	-40(%rbp)
	movq	-40(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-112(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -96(%rbp)
	jnb	.L59
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$285, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L54
.L59:
	cmpq	$256, -48(%rbp)
	jbe	.L60
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$290, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L54
.L60:
	movq	-48(%rbp), %rax
	subl	$1, %eax
	movb	%al, -49(%rbp)
	movq	-32(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$768, %eax
	jne	.L61
	cmpq	$1, -48(%rbp)
	jbe	.L62
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-112(%rbp), %rcx
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L62:
	movq	-112(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-49(%rbp), %eax
	movb	%al, (%rdx)
	jmp	.L63
.L61:
	movq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L64
.L65:
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-49(%rbp), %eax
	movb	%al, (%rdx)
	addq	$1, -24(%rbp)
.L64:
	movq	-112(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -24(%rbp)
	jb	.L65
.L63:
	movq	-112(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
.L58:
	movq	-112(%rbp), %rax
	movl	$0, %edx
	divq	-40(%rbp)
	movq	%rdx, %rax
	testq	%rax, %rax
	je	.L66
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$307, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L54
.L66:
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L67
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$314, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L54
.L67:
	movq	-32(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	je	.L68
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	leaq	.LC9(%rip), %rcx
	movl	$319, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movl	$0, 128(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 120(%rax)
.L68:
	movq	-112(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L69
	movq	-32(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-32(%rbp), %rax
	leaq	128(%rax), %r8
	movq	-32(%rbp), %rax
	leaq	120(%rax), %r9
	movq	-32(%rbp), %rax
	movl	112(%rax), %esi
	movq	-32(%rbp), %rax
	movq	184(%rax), %rax
	movq	-40(%rbp), %r10
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	subq	$8, %rsp
	pushq	$0
	pushq	%rdi
	pushq	%r8
	movq	%r10, %r8
	movq	%rax, %rdi
	call	ossl_cipher_tlsunpadblock@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L69
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$331, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L54
.L69:
	movl	$1, %eax
	jmp	.L54
.L55:
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L70
	movq	-32(%rbp), %rax
	leaq	96(%rax), %rsi
	movq	-32(%rbp), %rax
	leaq	16(%rax), %rdi
	leaq	-112(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ossl_cipher_fillblock@PLT
	movq	%rax, -16(%rbp)
	jmp	.L71
.L70:
	movq	-40(%rbp), %rax
	negq	%rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	andq	%rdx, %rax
	movq	%rax, -16(%rbp)
.L71:
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jne	.L72
	movq	-32(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L73
	movq	-112(%rbp), %rax
	testq	%rax, %rax
	jne	.L73
	movq	-32(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L72
.L73:
	movq	-96(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L74
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$350, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L54
.L74:
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-32(%rbp), %rax
	leaq	16(%rax), %rdi
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L75
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$354, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L54
.L75:
	movq	-32(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -80(%rbp)
.L72:
	cmpq	$0, -16(%rbp)
	je	.L76
	movq	-32(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L77
	movq	-32(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L77
	movq	-112(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L77
	movq	-112(%rbp), %rax
	cmpq	-40(%rbp), %rax
	setnb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L78
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$364, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L54
.L78:
	movq	-40(%rbp), %rax
	subq	%rax, -16(%rbp)
.L77:
	movq	-16(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L76
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$371, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L54
.L76:
	cmpq	$0, -16(%rbp)
	je	.L79
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-104(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-80(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L80
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$377, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L54
.L80:
	movq	-104(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	-112(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)
.L79:
	movq	-112(%rbp), %rax
	testq	%rax, %rax
	je	.L81
	movq	-32(%rbp), %rax
	leaq	96(%rax), %rsi
	movq	-32(%rbp), %rax
	leaq	16(%rax), %rdi
	leaq	-112(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ossl_cipher_trailingdata@PLT
	testl	%eax, %eax
	jne	.L81
	movl	$0, %eax
	jmp	.L54
.L81:
	movq	-88(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-112(%rbp), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	ossl_cipher_generic_block_update, .-ossl_cipher_generic_block_update
	.globl	ossl_cipher_generic_block_final
	.type	ossl_cipher_generic_block_final, @function
ossl_cipher_generic_block_final:
.LFB415:
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
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -16(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L83
	movl	$0, %eax
	jmp	.L84
.L83:
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L85
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$403, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L84
.L85:
	movq	-8(%rbp), %rax
	movl	112(%rax), %eax
	testl	%eax, %eax
	je	.L86
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$409, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L84
.L86:
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L87
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L88
	movq	-8(%rbp), %rax
	leaq	96(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ossl_cipher_padblock@PLT
	jmp	.L89
.L88:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L90
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L84
.L90:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%rax, -16(%rbp)
	je	.L89
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$420, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L84
.L89:
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L91
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$425, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L84
.L91:
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdi
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L92
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$429, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L84
.L92:
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L84
.L87:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%rax, -16(%rbp)
	je	.L93
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L94
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L94
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L84
.L94:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$443, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L84
.L93:
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L95
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$448, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L84
.L95:
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L96
	movq	-8(%rbp), %rax
	leaq	96(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ossl_cipher_unpadblock@PLT
	testl	%eax, %eax
	jne	.L96
	movl	$0, %eax
	jmp	.L84
.L96:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L97
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$458, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L84
.L97:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	movl	$1, %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	ossl_cipher_generic_block_final, .-ossl_cipher_generic_block_final
	.globl	ossl_cipher_generic_stream_update
	.type	ossl_cipher_generic_stream_update, @function
ossl_cipher_generic_stream_update:
.LFB416:
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
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L99
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$474, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L100
.L99:
	cmpq	$0, -64(%rbp)
	jne	.L101
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L100
.L101:
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L102
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$484, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L100
.L102:
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L103
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$489, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L100
.L103:
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L104
	movq	-8(%rbp), %rax
	movl	112(%rax), %eax
	testl	%eax, %eax
	je	.L104
	movq	-8(%rbp), %rax
	movl	144(%rax), %eax
	testl	%eax, %eax
	je	.L105
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	$1, %eax
	cltq
	cmpq	%rax, %rdx
	setnb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L106
	movl	$0, %eax
	jmp	.L100
.L106:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	$1, %eax
	cltq
	subq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L105:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	cmpq	%rax, %rdx
	setnb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L107
	movl	$0, %eax
	jmp	.L100
.L107:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	subq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L104
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L108
	movl	$0, %eax
	jmp	.L100
.L108:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	subq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	subq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L104:
	movl	$1, %eax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	ossl_cipher_generic_stream_update, .-ossl_cipher_generic_stream_update
	.globl	ossl_cipher_generic_stream_final
	.type	ossl_cipher_generic_stream_final, @function
ossl_cipher_generic_stream_final:
.LFB417:
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
	jne	.L110
	movl	$0, %eax
	jmp	.L111
.L110:
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L112
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$538, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L111
.L112:
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	ossl_cipher_generic_stream_final, .-ossl_cipher_generic_stream_final
	.globl	ossl_cipher_generic_cipher
	.type	ossl_cipher_generic_cipher, @function
ossl_cipher_generic_cipher:
.LFB418:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L114
	movl	$0, %eax
	jmp	.L115
.L114:
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L116
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$556, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L115
.L116:
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L117
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$561, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L115
.L117:
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L118
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$566, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L115
.L118:
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	ossl_cipher_generic_cipher, .-ossl_cipher_generic_cipher
	.globl	ossl_cipher_generic_get_ctx_params
	.type	ossl_cipher_generic_get_ctx_params, @function
ossl_cipher_generic_get_ctx_params:
.LFB419:
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
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L120
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L120
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$581, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L120:
	leaq	.LC10(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L122
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$1, %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint@PLT
	testl	%eax, %eax
	jne	.L122
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$586, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L122:
	leaq	.LC12(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L123
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_ptr@PLT
	testl	%eax, %eax
	jne	.L123
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L123
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$593, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L123:
	leaq	.LC13(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L124
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_ptr@PLT
	testl	%eax, %eax
	jne	.L124
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L124
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$600, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L124:
	leaq	.LC11(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L125
	movq	-8(%rbp), %rax
	movl	160(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint@PLT
	testl	%eax, %eax
	jne	.L125
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$605, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L125:
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L126
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L126
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$610, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L126:
	leaq	.LC14(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L127
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	120(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_ptr@PLT
	testl	%eax, %eax
	jne	.L127
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$616, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L127:
	movl	$1, %eax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	ossl_cipher_generic_get_ctx_params, .-ossl_cipher_generic_get_ctx_params
	.globl	ossl_cipher_generic_set_ctx_params
	.type	ossl_cipher_generic_set_ctx_params, @function
ossl_cipher_generic_set_ctx_params:
.LFB420:
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
	cmpq	$0, -48(%rbp)
	jne	.L129
	movl	$1, %eax
	jmp	.L130
.L129:
	leaq	.LC10(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L131
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L132
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$635, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L130
.L132:
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	setne	%dl
	movq	-8(%rbp), %rax
	movl	%edx, %ecx
	andl	$1, %ecx
	movzbl	108(%rax), %edx
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, 108(%rax)
.L131:
	leaq	.LC15(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L133
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L134
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$645, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L130
.L134:
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	setne	%dl
	movq	-8(%rbp), %rax
	movl	%edx, %ecx
	sall	$7, %ecx
	movzbl	108(%rax), %edx
	andl	$127, %edx
	orl	%ecx, %edx
	movb	%dl, 108(%rax)
.L133:
	leaq	.LC16(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L135
	movq	-8(%rbp), %rax
	leaq	112(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L135
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$653, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L130
.L135:
	leaq	.LC17(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L136
	movq	-8(%rbp), %rax
	leaq	136(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L136
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$660, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L130
.L136:
	leaq	.LC11(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L137
	leaq	-28(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L138
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$669, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L130
.L138:
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 160(%rax)
.L137:
	movl	$1, %eax
.L130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	ossl_cipher_generic_set_ctx_params, .-ossl_cipher_generic_set_ctx_params
	.globl	ossl_cipher_generic_initiv
	.type	ossl_cipher_generic_initiv, @function
ossl_cipher_generic_initiv:
.LFB421:
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
	movq	80(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jne	.L140
	cmpq	$16, -24(%rbp)
	jbe	.L141
.L140:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$682, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L142
.L141:
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %edx
	orl	$4, %edx
	movb	%dl, 108(%rax)
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	ossl_cipher_generic_initiv, .-ossl_cipher_generic_initiv
	.globl	ossl_cipher_generic_initkey
	.type	ossl_cipher_generic_initkey, @function
ossl_cipher_generic_initkey:
.LFB422:
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
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	andl	$512, %eax
	testq	%rax, %rax
	je	.L144
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %edx
	orl	$64, %edx
	movb	%dl, 108(%rax)
.L144:
	movq	-64(%rbp), %rax
	andl	$256, %eax
	testq	%rax, %rax
	je	.L145
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %edx
	orl	$32, %edx
	movb	%dl, 108(%rax)
.L145:
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %edx
	orl	$1, %edx
	movb	%dl, 108(%rax)
	movq	-32(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-48(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, 168(%rax)
	movq	-8(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, 64(%rax)
	movq	-40(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 88(%rax)
	cmpq	$0, 24(%rbp)
	je	.L147
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 184(%rdx)
.L147:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	ossl_cipher_generic_initkey, .-ossl_cipher_generic_initkey
	.section	.rodata
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 31
__func__.10:
	.string	"ossl_cipher_generic_get_params"
	.align 32
	.type	__func__.9, @object
	.size	__func__.9, 38
__func__.9:
	.string	"ossl_cipher_var_keylen_set_ctx_params"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 29
__func__.8:
	.string	"cipher_generic_init_internal"
	.align 32
	.type	__func__.7, @object
	.size	__func__.7, 33
__func__.7:
	.string	"ossl_cipher_generic_block_update"
	.align 32
	.type	__func__.6, @object
	.size	__func__.6, 32
__func__.6:
	.string	"ossl_cipher_generic_block_final"
	.align 32
	.type	__func__.5, @object
	.size	__func__.5, 34
__func__.5:
	.string	"ossl_cipher_generic_stream_update"
	.align 32
	.type	__func__.4, @object
	.size	__func__.4, 33
__func__.4:
	.string	"ossl_cipher_generic_stream_final"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 27
__func__.3:
	.string	"ossl_cipher_generic_cipher"
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 35
__func__.2:
	.string	"ossl_cipher_generic_get_ctx_params"
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 35
__func__.1:
	.string	"ossl_cipher_generic_set_ctx_params"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 27
__func__.0:
	.string	"ossl_cipher_generic_initiv"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"ciphercommon_ccm.c"
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
	.type	ccm_tls_init, @function
ccm_tls_init:
.LFB402:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L6
	cmpq	$13, -40(%rbp)
	je	.L7
.L6:
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-24(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-40(%rbp), %rax
	leaq	-2(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	64(%rax,%rdx), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	64(%rax,%rdx), %eax
	movzbl	%al, %eax
	orl	%ecx, %eax
	cltq
	movq	%rax, -8(%rbp)
	cmpq	$7, -8(%rbp)
	ja	.L9
	movl	$0, %eax
	jmp	.L8
.L9:
	subq	$8, -8(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L10
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L11
	movl	$0, %eax
	jmp	.L8
.L11:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, -8(%rbp)
.L10:
	movq	-8(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	-2(%rax), %rdx
	movq	-24(%rbp), %rax
	movb	%cl, 64(%rax,%rdx)
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movb	%cl, 64(%rax,%rdx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	ccm_tls_init, .-ccm_tls_init
	.type	ccm_tls_iv_set_fixed, @function
ccm_tls_iv_set_fixed:
.LFB403:
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
	cmpq	$4, -24(%rbp)
	je	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	ccm_tls_iv_set_fixed, .-ccm_tls_iv_set_fixed
	.type	ccm_get_ivlen, @function
ccm_get_ivlen:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$15, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	ccm_get_ivlen, .-ccm_get_ivlen
	.section	.rodata
.LC0:
	.string	"tag"
	.align 8
.LC1:
	.string	"../providers/implementations/ciphers/ciphercommon_ccm.c"
.LC2:
	.string	"ivlen"
.LC3:
	.string	"tlsaad"
.LC4:
	.string	"tlsivfixed"
	.text
	.globl	ossl_ccm_set_ctx_params
	.type	ossl_ccm_set_ctx_params, @function
ossl_ccm_set_ctx_params:
.LFB405:
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
	jne	.L18
	movl	$1, %eax
	jmp	.L35
.L18:
	leaq	.LC0(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L20
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L21
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$80, %esi
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
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L22
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$3, %rax
	jbe	.L22
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$16, %rax
	jbe	.L23
.L22:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$84, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L23:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L24
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L25
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$90, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L25:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$64, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	orl	$8, %edx
	movb	%dl, (%rax)
.L24:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
.L20:
	leaq	.LC2(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L26
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L27
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L27:
	movq	-32(%rbp), %rax
	movl	$15, %edx
	subq	%rax, %rdx
	movq	%rdx, -24(%rbp)
	cmpq	$1, -24(%rbp)
	jbe	.L28
	cmpq	$8, -24(%rbp)
	jbe	.L29
.L28:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$109, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L29:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -24(%rbp)
	je	.L26
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$-5, %edx
	movb	%dl, (%rax)
.L26:
	leaq	.LC3(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L30
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L31
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$121, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L31:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ccm_tls_init
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L32
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$126, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L32:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
.L30:
	leaq	.LC4(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L33
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L34
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$135, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L34:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ccm_tls_iv_set_fixed
	testl	%eax, %eax
	jne	.L33
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$139, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L33:
	movl	$1, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	ossl_ccm_set_ctx_params, .-ossl_ccm_set_ctx_params
	.section	.rodata
.LC5:
	.string	"taglen"
.LC6:
	.string	"iv"
.LC7:
	.string	"updated-iv"
.LC8:
	.string	"keylen"
.LC9:
	.string	"tlsaadpad"
	.text
	.globl	ossl_ccm_get_ctx_params
	.type	ossl_ccm_get_ctx_params, @function
ossl_ccm_get_ctx_params:
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
	leaq	.LC2(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L37
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ccm_get_ivlen
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L37
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$154, %esi
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
	leaq	.LC5(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L39
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L39
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$163, %esi
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
	leaq	.LC6(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L40
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ccm_get_ivlen
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L41
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$171, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L41:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L40
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_ptr@PLT
	testl	%eax, %eax
	jne	.L40
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$176, %esi
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
	leaq	.LC7(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L42
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ccm_get_ivlen
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L43
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$184, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L43:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L42
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_ptr@PLT
	testl	%eax, %eax
	jne	.L42
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$189, %esi
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
	leaq	.LC8(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L44
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L44
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$196, %esi
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
	leaq	.LC9(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L45
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L45
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$202, %esi
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
	leaq	.LC0(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L46
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L47
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L48
.L47:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$209, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$119, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L48:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L49
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$213, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L49:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	40(%rax), %r8
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L50
	movl	$0, %eax
	jmp	.L38
.L50:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$-9, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$-5, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$-17, %edx
	movb	%dl, (%rax)
.L46:
	movl	$1, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	ossl_ccm_get_ctx_params, .-ossl_ccm_get_ctx_params
	.type	ccm_init, @function
ccm_init:
.LFB407:
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
	jne	.L52
	movl	$0, %eax
	jmp	.L53
.L52:
	movl	16(%rbp), %eax
	andl	$1, %eax
	movq	-8(%rbp), %rdx
	andl	$1, %eax
	movl	%eax, %ecx
	movzbl	(%rdx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, (%rdx)
	cmpq	$0, -48(%rbp)
	je	.L54
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ccm_get_ivlen
	cmpq	%rax, -56(%rbp)
	je	.L55
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$238, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L53
.L55:
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	orl	$4, %edx
	movb	%dl, (%rax)
.L54:
	cmpq	$0, -32(%rbp)
	je	.L56
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -40(%rbp)
	je	.L57
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$246, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L53
.L57:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	(%rax), %r8
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L56
	movl	$0, %eax
	jmp	.L53
.L56:
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ccm_set_ctx_params@PLT
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	ccm_init, .-ccm_init
	.globl	ossl_ccm_einit
	.type	ossl_ccm_einit, @function
ossl_ccm_einit:
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
	call	ccm_init
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ossl_ccm_einit, .-ossl_ccm_einit
	.globl	ossl_ccm_dinit
	.type	ossl_ccm_dinit, @function
ossl_ccm_dinit:
.LFB409:
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
	call	ccm_init
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	ossl_ccm_dinit, .-ossl_ccm_dinit
	.globl	ossl_ccm_stream_update
	.type	ossl_ccm_stream_update, @function
ossl_ccm_stream_update:
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
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L63
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$276, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L64
.L63:
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ccm_cipher_internal
	testl	%eax, %eax
	jne	.L65
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$281, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L64
.L65:
	movl	$1, %eax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	ossl_ccm_stream_update, .-ossl_ccm_stream_update
	.globl	ossl_ccm_stream_final
	.type	ossl_ccm_stream_final, @function
ossl_ccm_stream_final:
.LFB411:
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
	jne	.L67
	movl	$0, %eax
	jmp	.L68
.L67:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ccm_cipher_internal
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L69
	movl	$0, %eax
	jmp	.L68
.L69:
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	ossl_ccm_stream_final, .-ossl_ccm_stream_final
	.globl	ossl_ccm_cipher
	.type	ossl_ccm_cipher, @function
ossl_ccm_cipher:
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
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L71
	movl	$0, %eax
	jmp	.L72
.L71:
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L73
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$313, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L72
.L73:
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ccm_cipher_internal
	testl	%eax, %eax
	jg	.L74
	movl	$0, %eax
	jmp	.L72
.L74:
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	ossl_ccm_cipher, .-ossl_ccm_cipher
	.type	ccm_set_iv, @function
ccm_set_iv:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ccm_get_ivlen
	movq	%rax, %rdi
	movq	-40(%rbp), %rax
	leaq	48(%rax), %rsi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	*%rbx
	testl	%eax, %eax
	jne	.L76
	movl	$0, %eax
	jmp	.L77
.L76:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	orl	$16, %edx
	movb	%dl, (%rax)
	movl	$1, %eax
.L77:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	ccm_set_iv, .-ccm_set_iv
	.type	ccm_tls_cipher, @function
ccm_tls_cipher:
.LFB414:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L91
	cmpq	$0, -48(%rbp)
	je	.L92
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L92
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	addq	$8, %rax
	cmpq	%rax, -56(%rbp)
	jb	.L92
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L83
	movq	-24(%rbp), %rax
	addq	$64, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L83:
	movq	-24(%rbp), %rax
	addq	$48, %rax
	leaq	4(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	subq	%rax, %rdx
	leaq	-8(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ccm_set_iv
	testl	%eax, %eax
	je	.L93
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	64(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	je	.L94
	addq	$8, -48(%rbp)
	addq	$8, -32(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L86
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	24(%rax), %r10
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %r8
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	*%r10
	testl	%eax, %eax
	je	.L95
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	jmp	.L88
.L86:
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	32(%rax), %r10
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %r8
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	*%r10
	testl	%eax, %eax
	je	.L96
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
.L88:
	movl	$1, -4(%rbp)
	jmp	.L80
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
	jmp	.L80
.L95:
	nop
	jmp	.L80
.L96:
	nop
.L80:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	ccm_tls_cipher, .-ccm_tls_cipher
	.type	ccm_cipher_internal, @function
ccm_cipher_internal:
.LFB415:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L98
	movl	$0, %eax
	jmp	.L99
.L98:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$-1, %rax
	je	.L100
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ccm_tls_cipher
	jmp	.L99
.L100:
	cmpq	$0, -64(%rbp)
	jne	.L101
	cmpq	$0, -48(%rbp)
	jne	.L114
.L101:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L115
	cmpq	$0, -48(%rbp)
	jne	.L105
	cmpq	$0, -64(%rbp)
	jne	.L106
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ccm_set_iv
	testl	%eax, %eax
	jne	.L107
	jmp	.L104
.L106:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L108
	cmpq	$0, -72(%rbp)
	jne	.L116
.L108:
	movq	-24(%rbp), %rax
	movq	16(%rax), %r8
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L107
	jmp	.L104
.L105:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L109
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ccm_set_iv
	testl	%eax, %eax
	je	.L117
.L109:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L110
	movq	-24(%rbp), %rax
	movq	24(%rax), %r10
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	*%r10
	testl	%eax, %eax
	je	.L118
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	orl	$8, %edx
	movb	%dl, (%rax)
	jmp	.L107
.L110:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L119
	movq	-24(%rbp), %rax
	movq	32(%rax), %r10
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rax
	leaq	64(%rax), %r8
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	*%r10
	testl	%eax, %eax
	je	.L120
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$-5, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$-9, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$-17, %edx
	movb	%dl, (%rax)
.L107:
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L102
.L114:
	nop
.L102:
	movl	$1, -4(%rbp)
	jmp	.L104
.L115:
	nop
	jmp	.L104
.L116:
	nop
	jmp	.L104
.L117:
	nop
	jmp	.L104
.L118:
	nop
	jmp	.L104
.L119:
	nop
	jmp	.L104
.L120:
	nop
.L104:
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	ccm_cipher_internal, .-ccm_cipher_internal
	.globl	ossl_ccm_initctx
	.type	ossl_ccm_initctx, @function
ossl_ccm_initctx:
.LFB416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$-3, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$-5, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$-9, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$-17, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movq	$8, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$12, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$-1, 32(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 144(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	ossl_ccm_initctx, .-ossl_ccm_initctx
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 24
__func__.4:
	.string	"ossl_ccm_set_ctx_params"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 24
__func__.3:
	.string	"ossl_ccm_get_ctx_params"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 9
__func__.2:
	.string	"ccm_init"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 23
__func__.1:
	.string	"ossl_ccm_stream_update"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"ossl_ccm_cipher"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

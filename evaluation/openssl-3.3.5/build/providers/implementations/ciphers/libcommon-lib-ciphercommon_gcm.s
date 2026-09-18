	.file	"ciphercommon_gcm.c"
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
	.globl	ossl_gcm_initctx
	.type	ossl_gcm_initctx, @function
ossl_gcm_initctx:
.LFB402:
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
	movq	-16(%rbp), %rax
	movzbl	84(%rax), %edx
	orl	$2, %edx
	movb	%dl, 84(%rax)
	movq	-16(%rbp), %rax
	movl	$6, (%rax)
	movq	-16(%rbp), %rax
	movq	$-1, 24(%rax)
	movq	-16(%rbp), %rax
	movq	$-1, 40(%rax)
	movq	-16(%rbp), %rax
	movq	$12, 16(%rax)
	movq	-24(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 240(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 232(%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	ossl_gcm_initctx, .-ossl_gcm_initctx
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/ciphers/ciphercommon_gcm.c"
	.text
	.type	gcm_init, @function
gcm_init:
.LFB403:
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
	jne	.L7
	movl	$0, %eax
	jmp	.L8
.L7:
	movl	16(%rbp), %eax
	andl	$1, %eax
	movq	-8(%rbp), %rdx
	andl	$1, %eax
	movl	%eax, %ecx
	movzbl	84(%rdx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 84(%rdx)
	cmpq	$0, -48(%rbp)
	je	.L9
	cmpq	$0, -56(%rbp)
	je	.L10
	cmpq	$128, -56(%rbp)
	jbe	.L11
.L10:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$62, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L8
.L11:
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	leaq	85(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movl	$1, 80(%rax)
.L9:
	cmpq	$0, -32(%rbp)
	je	.L12
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -40(%rbp)
	je	.L13
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$72, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L8
.L13:
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	(%rax), %r8
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L14
	movl	$0, %eax
	jmp	.L8
.L14:
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
.L12:
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gcm_set_ctx_params@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	gcm_init, .-gcm_init
	.globl	ossl_gcm_einit
	.type	ossl_gcm_einit, @function
ossl_gcm_einit:
.LFB404:
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
	call	gcm_init
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	ossl_gcm_einit, .-ossl_gcm_einit
	.globl	ossl_gcm_dinit
	.type	ossl_gcm_dinit, @function
ossl_gcm_dinit:
.LFB405:
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
	call	gcm_init
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	ossl_gcm_dinit, .-ossl_gcm_dinit
	.type	ctr64_inc, @function
ctr64_inc:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$8, -4(%rbp)
.L22:
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -5(%rbp)
	addb	$1, -5(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-5(%rbp), %eax
	movb	%al, (%rdx)
	cmpb	$0, -5(%rbp)
	jne	.L23
	cmpl	$0, -4(%rbp)
	jg	.L22
	jmp	.L19
.L23:
	nop
.L19:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	ctr64_inc, .-ctr64_inc
	.type	getivgen, @function
getivgen:
.LFB407:
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
	movzbl	84(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L25
	movq	-8(%rbp), %rax
	movzbl	84(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L25
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	85(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L26
.L25:
	movl	$0, %eax
	jmp	.L27
.L26:
	cmpq	$0, -24(%rbp)
	je	.L28
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L29
.L28:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.L29:
	movq	-8(%rbp), %rax
	leaq	85(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	subq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	leaq	85(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	subq	$8, %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	ctr64_inc
	movq	-8(%rbp), %rax
	movl	$2, 80(%rax)
	movl	$1, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	getivgen, .-getivgen
	.type	setivinv, @function
setivinv:
.LFB408:
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
	movzbl	84(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L31
	movq	-8(%rbp), %rax
	movzbl	84(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L31
	movq	-8(%rbp), %rax
	movzbl	84(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L32
.L31:
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	-8(%rbp), %rax
	leaq	85(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	subq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	85(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L34
	movl	$0, %eax
	jmp	.L33
.L34:
	movq	-8(%rbp), %rax
	movl	$2, 80(%rax)
	movl	$1, %eax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	setivinv, .-setivinv
	.globl	ossl_gcm_get_ctx_params
	.type	ossl_gcm_get_ctx_params, @function
ossl_gcm_get_ctx_params:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L36
.L65:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_param_find_pidx@PLT
	movl	%eax, -28(%rbp)
	cmpl	$68, -28(%rbp)
	je	.L37
	cmpl	$68, -28(%rbp)
	jg	.L66
	cmpl	$48, -28(%rbp)
	je	.L39
	cmpl	$48, -28(%rbp)
	jg	.L66
	cmpl	$47, -28(%rbp)
	je	.L40
	cmpl	$47, -28(%rbp)
	jg	.L66
	cmpl	$46, -28(%rbp)
	je	.L41
	cmpl	$46, -28(%rbp)
	jg	.L66
	cmpl	$37, -28(%rbp)
	je	.L42
	cmpl	$37, -28(%rbp)
	jg	.L66
	cmpl	$36, -28(%rbp)
	je	.L43
	cmpl	$36, -28(%rbp)
	jg	.L66
	cmpl	$33, -28(%rbp)
	je	.L44
	cmpl	$34, -28(%rbp)
	je	.L45
	jmp	.L66
.L40:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L67
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$159, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L39:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L68
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$166, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L45:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$-1, %rax
	je	.L50
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L51
.L50:
	movq	$16, -16(%rbp)
.L51:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L69
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$177, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L41:
	movq	-24(%rbp), %rax
	movl	80(%rax), %eax
	testl	%eax, %eax
	jne	.L53
	movl	$0, %eax
	jmp	.L48
.L53:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L54
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$187, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L54:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	85(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L70
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	85(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_ptr@PLT
	testl	%eax, %eax
	jne	.L70
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$192, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L37:
	movq	-24(%rbp), %rax
	movl	80(%rax), %eax
	testl	%eax, %eax
	jne	.L56
	movl	$0, %eax
	jmp	.L48
.L56:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L57
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$201, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L57:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	85(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L71
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	85(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_ptr@PLT
	testl	%eax, %eax
	jne	.L71
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$206, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L43:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L72
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$213, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L44:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L60
	cmpq	$16, -40(%rbp)
	ja	.L60
	movq	-24(%rbp), %rax
	movzbl	84(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L60
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$-1, %rax
	jne	.L61
.L60:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$224, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L61:
	movq	-24(%rbp), %rax
	leaq	213(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L73
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$228, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L42:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L63
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L63
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getivgen
	testl	%eax, %eax
	jne	.L74
.L63:
	movl	$0, %eax
	jmp	.L48
.L66:
	nop
	jmp	.L46
.L67:
	nop
	jmp	.L46
.L68:
	nop
	jmp	.L46
.L69:
	nop
	jmp	.L46
.L70:
	nop
	jmp	.L46
.L71:
	nop
	jmp	.L46
.L72:
	nop
	jmp	.L46
.L73:
	nop
	jmp	.L46
.L74:
	nop
.L46:
	addq	$40, -8(%rbp)
.L36:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L65
	movl	$1, %eax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	ossl_gcm_get_ctx_params, .-ossl_gcm_get_ctx_params
	.globl	ossl_gcm_set_ctx_params
	.type	ossl_gcm_set_ctx_params, @function
ossl_gcm_set_ctx_params:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L76
	movl	$1, %eax
	jmp	.L101
.L76:
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L78
.L100:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_param_find_pidx@PLT
	movl	%eax, -20(%rbp)
	cmpl	$47, -20(%rbp)
	je	.L79
	cmpl	$47, -20(%rbp)
	jg	.L102
	cmpl	$39, -20(%rbp)
	je	.L81
	cmpl	$39, -20(%rbp)
	jg	.L102
	cmpl	$38, -20(%rbp)
	je	.L82
	cmpl	$38, -20(%rbp)
	jg	.L102
	cmpl	$33, -20(%rbp)
	je	.L83
	cmpl	$35, -20(%rbp)
	je	.L84
	jmp	.L102
.L83:
	movq	-16(%rbp), %rax
	addq	$213, %rax
	movq	%rax, -40(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L86
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$264, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L86:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L87
	movq	-16(%rbp), %rax
	movzbl	84(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L88
.L87:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$268, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L88:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	jmp	.L85
.L79:
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L89
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$276, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L89:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L90
	movq	-32(%rbp), %rax
	cmpq	$128, %rax
	jbe	.L91
.L90:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$280, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L91:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L103
	movq	-16(%rbp), %rax
	movl	80(%rax), %eax
	testl	%eax, %eax
	je	.L93
	movq	-16(%rbp), %rax
	movl	$3, 80(%rax)
.L93:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L103
.L84:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L94
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$293, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L94:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gcm_tls_init
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L95
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$298, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L95:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	jmp	.L85
.L82:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L96
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$306, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L96:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gcm_tls_iv_set_fixed
	testl	%eax, %eax
	jne	.L104
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$310, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L81:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L98
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L98
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	setivinv
	testl	%eax, %eax
	jne	.L105
.L98:
	movl	$0, %eax
	jmp	.L101
.L102:
	nop
	jmp	.L85
.L103:
	nop
	jmp	.L85
.L104:
	nop
	jmp	.L85
.L105:
	nop
.L85:
	addq	$40, -8(%rbp)
.L78:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L100
	movl	$1, %eax
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	ossl_gcm_set_ctx_params, .-ossl_gcm_set_ctx_params
	.globl	ossl_gcm_stream_update
	.type	ossl_gcm_stream_update, @function
ossl_gcm_stream_update:
.LFB411:
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
	cmpq	$0, -64(%rbp)
	jne	.L107
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L108
.L107:
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L109
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$338, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L108
.L109:
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	gcm_cipher_internal
	testl	%eax, %eax
	jg	.L110
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$343, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L108
.L110:
	movl	$1, %eax
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	ossl_gcm_stream_update, .-ossl_gcm_stream_update
	.globl	ossl_gcm_stream_final
	.type	ossl_gcm_stream_final, @function
ossl_gcm_stream_final:
.LFB412:
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
	jne	.L112
	movl	$0, %eax
	jmp	.L113
.L112:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	gcm_cipher_internal
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L114
	movl	$0, %eax
	jmp	.L113
.L114:
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	ossl_gcm_stream_final, .-ossl_gcm_stream_final
	.globl	ossl_gcm_cipher
	.type	ossl_gcm_cipher, @function
ossl_gcm_cipher:
.LFB413:
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
	jne	.L116
	movl	$0, %eax
	jmp	.L117
.L116:
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L118
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$376, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L117
.L118:
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	gcm_cipher_internal
	testl	%eax, %eax
	jg	.L119
	movl	$0, %eax
	jmp	.L117
.L119:
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	ossl_gcm_cipher, .-ossl_gcm_cipher
	.type	gcm_iv_generate, @function
gcm_iv_generate:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L121
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$11, %rax
	ja	.L122
.L121:
	movl	$0, %eax
	jmp	.L123
.L122:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	85(%rax), %rcx
	movl	-28(%rbp), %eax
	cltq
	leaq	(%rcx,%rax), %rsi
	movq	-24(%rbp), %rax
	movq	232(%rax), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L124
	movl	$0, %eax
	jmp	.L123
.L124:
	movq	-24(%rbp), %rax
	movl	$1, 80(%rax)
	movq	-24(%rbp), %rax
	movzbl	84(%rax), %edx
	orl	$8, %edx
	movb	%dl, 84(%rax)
	movl	$1, %eax
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	gcm_iv_generate, .-gcm_iv_generate
	.type	gcm_cipher_internal, @function
gcm_cipher_internal:
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
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	$-1, %rax
	je	.L126
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	gcm_tls_cipher
	jmp	.L127
.L126:
	movq	-40(%rbp), %rax
	movzbl	84(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L141
	movq	-40(%rbp), %rax
	movl	80(%rax), %eax
	cmpl	$3, %eax
	je	.L141
	movq	-40(%rbp), %rax
	movl	80(%rax), %eax
	testl	%eax, %eax
	jne	.L131
	movq	-40(%rbp), %rax
	movzbl	84(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L142
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gcm_iv_generate
	testl	%eax, %eax
	je	.L142
.L131:
	movq	-40(%rbp), %rax
	movl	80(%rax), %eax
	cmpl	$1, %eax
	jne	.L133
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	85(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	je	.L143
	movq	-40(%rbp), %rax
	movl	$2, 80(%rax)
.L133:
	cmpq	$0, -64(%rbp)
	je	.L135
	cmpq	$0, -48(%rbp)
	jne	.L136
	movq	-24(%rbp), %rax
	movq	16(%rax), %r8
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L137
	jmp	.L130
.L136:
	movq	-24(%rbp), %rax
	movq	24(%rax), %r8
	movq	-48(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L137
	jmp	.L130
.L135:
	movq	-40(%rbp), %rax
	movzbl	84(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L138
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$-1, %rax
	je	.L144
.L138:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	213(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L145
	movq	-40(%rbp), %rax
	movl	$3, 80(%rax)
	jmp	.L140
.L137:
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.L140:
	movl	$1, -12(%rbp)
	jmp	.L130
.L141:
	nop
	jmp	.L130
.L142:
	nop
	jmp	.L130
.L143:
	nop
	jmp	.L130
.L144:
	nop
	jmp	.L130
.L145:
	nop
.L130:
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	gcm_cipher_internal, .-gcm_cipher_internal
	.type	gcm_tls_init, @function
gcm_tls_init:
.LFB416:
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
	je	.L147
	cmpq	$13, -40(%rbp)
	je	.L148
.L147:
	movl	$0, %eax
	jmp	.L149
.L148:
	movq	-24(%rbp), %rax
	addq	$213, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-40(%rbp), %rax
	leaq	-2(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	movq	%rax, -8(%rbp)
	cmpq	$7, -8(%rbp)
	ja	.L150
	movl	$0, %eax
	jmp	.L149
.L150:
	subq	$8, -8(%rbp)
	movq	-24(%rbp), %rax
	movzbl	84(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L151
	cmpq	$15, -8(%rbp)
	ja	.L152
	movl	$0, %eax
	jmp	.L149
.L152:
	subq	$16, -8(%rbp)
.L151:
	movq	-8(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	-2(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movb	%dl, (%rax)
	movl	$16, %eax
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	gcm_tls_init, .-gcm_tls_init
	.type	gcm_tls_iv_set_fixed, @function
gcm_tls_iv_set_fixed:
.LFB417:
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
	cmpq	$-1, -24(%rbp)
	jne	.L154
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	85(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movzbl	84(%rax), %edx
	orl	$16, %edx
	movb	%dl, 84(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 80(%rax)
	movl	$1, %eax
	jmp	.L155
.L154:
	cmpq	$3, -24(%rbp)
	jbe	.L156
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	cltq
	subq	%rax, %rdx
	cmpq	$7, %rdx
	ja	.L157
.L156:
	movl	$0, %eax
	jmp	.L155
.L157:
	cmpq	$0, -24(%rbp)
	je	.L158
	movq	-8(%rbp), %rax
	leaq	85(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L158:
	movq	-8(%rbp), %rax
	movzbl	84(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L159
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	leaq	85(%rax), %rcx
	movq	-24(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L159
	movl	$0, %eax
	jmp	.L155
.L159:
	movq	-8(%rbp), %rax
	movzbl	84(%rax), %edx
	orl	$16, %edx
	movb	%dl, 84(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 80(%rax)
	movl	$1, %eax
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	gcm_tls_iv_set_fixed, .-gcm_tls_iv_set_fixed
	.type	gcm_tls_cipher, @function
gcm_tls_cipher:
.LFB418:
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
	movq	$8, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L176
	movq	-40(%rbp), %rax
	movzbl	84(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L176
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L177
	cmpq	$23, -72(%rbp)
	jbe	.L177
	movq	-40(%rbp), %rax
	movzbl	84(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L166
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L166
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$552, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L163
.L166:
	movq	-40(%rbp), %rax
	movzbl	84(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L167
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getivgen
	testl	%eax, %eax
	jne	.L168
	jmp	.L163
.L167:
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	setivinv
	testl	%eax, %eax
	je	.L178
.L168:
	addq	$8, -64(%rbp)
	addq	$8, -48(%rbp)
	subq	$24, -72(%rbp)
	movq	-40(%rbp), %rax
	movzbl	84(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L169
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.L170
.L169:
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
.L170:
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movq	40(%rax), %r10
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	213(%rax), %rsi
	movq	-48(%rbp), %r8
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	pushq	$16
	pushq	-24(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L171
	movq	-40(%rbp), %rax
	movzbl	84(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L179
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	jmp	.L179
.L171:
	movq	-40(%rbp), %rax
	movzbl	84(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L173
	movq	-72(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -16(%rbp)
	jmp	.L174
.L173:
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
.L174:
	movl	$1, -4(%rbp)
	jmp	.L163
.L176:
	nop
	jmp	.L163
.L177:
	nop
	jmp	.L163
.L178:
	nop
	jmp	.L163
.L179:
	nop
.L163:
	movq	-40(%rbp), %rax
	movl	$3, 80(%rax)
	movq	-40(%rbp), %rax
	movq	$-1, 40(%rax)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	gcm_tls_cipher, .-gcm_tls_cipher
	.section	.rodata
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 9
__func__.5:
	.string	"gcm_init"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 24
__func__.4:
	.string	"ossl_gcm_get_ctx_params"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 24
__func__.3:
	.string	"ossl_gcm_set_ctx_params"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 23
__func__.2:
	.string	"ossl_gcm_stream_update"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"ossl_gcm_cipher"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"gcm_tls_cipher"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

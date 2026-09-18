	.file	"provider_seeding.c"
	.text
	.type	OSSL_FUNC_get_entropy, @function
OSSL_FUNC_get_entropy:
.LFB54:
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
.LFE54:
	.size	OSSL_FUNC_get_entropy, .-OSSL_FUNC_get_entropy
	.type	OSSL_FUNC_get_user_entropy, @function
OSSL_FUNC_get_user_entropy:
.LFB55:
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
.LFE55:
	.size	OSSL_FUNC_get_user_entropy, .-OSSL_FUNC_get_user_entropy
	.type	OSSL_FUNC_cleanup_entropy, @function
OSSL_FUNC_cleanup_entropy:
.LFB56:
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
.LFE56:
	.size	OSSL_FUNC_cleanup_entropy, .-OSSL_FUNC_cleanup_entropy
	.type	OSSL_FUNC_cleanup_user_entropy, @function
OSSL_FUNC_cleanup_user_entropy:
.LFB57:
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
.LFE57:
	.size	OSSL_FUNC_cleanup_user_entropy, .-OSSL_FUNC_cleanup_user_entropy
	.type	OSSL_FUNC_get_nonce, @function
OSSL_FUNC_get_nonce:
.LFB58:
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
.LFE58:
	.size	OSSL_FUNC_get_nonce, .-OSSL_FUNC_get_nonce
	.type	OSSL_FUNC_get_user_nonce, @function
OSSL_FUNC_get_user_nonce:
.LFB59:
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
.LFE59:
	.size	OSSL_FUNC_get_user_nonce, .-OSSL_FUNC_get_user_nonce
	.type	OSSL_FUNC_cleanup_nonce, @function
OSSL_FUNC_cleanup_nonce:
.LFB60:
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
.LFE60:
	.size	OSSL_FUNC_cleanup_nonce, .-OSSL_FUNC_cleanup_nonce
	.type	OSSL_FUNC_cleanup_user_nonce, @function
OSSL_FUNC_cleanup_user_nonce:
.LFB61:
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
.LFE61:
	.size	OSSL_FUNC_cleanup_user_nonce, .-OSSL_FUNC_cleanup_user_nonce
	.local	c_get_entropy
	.comm	c_get_entropy,8,8
	.local	c_get_user_entropy
	.comm	c_get_user_entropy,8,8
	.local	c_cleanup_entropy
	.comm	c_cleanup_entropy,8,8
	.local	c_cleanup_user_entropy
	.comm	c_cleanup_user_entropy,8,8
	.local	c_get_nonce
	.comm	c_get_nonce,8,8
	.local	c_get_user_nonce
	.comm	c_get_user_nonce,8,8
	.local	c_cleanup_nonce
	.comm	c_cleanup_nonce,8,8
	.local	c_cleanup_user_nonce
	.comm	c_cleanup_user_nonce,8,8
	.globl	ossl_prov_seeding_from_dispatch
	.type	ossl_prov_seeding_from_dispatch, @function
ossl_prov_seeding_from_dispatch:
.LFB320:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	jmp	.L18
.L45:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$104, %eax
	je	.L19
	cmpl	$104, %eax
	jg	.L20
	cmpl	$103, %eax
	je	.L21
	cmpl	$103, %eax
	jg	.L20
	cmpl	$102, %eax
	je	.L22
	cmpl	$102, %eax
	jg	.L20
	cmpl	$101, %eax
	je	.L23
	cmpl	$101, %eax
	jg	.L20
	cmpl	$99, %eax
	je	.L24
	cmpl	$99, %eax
	jg	.L20
	cmpl	$98, %eax
	je	.L25
	cmpl	$98, %eax
	jg	.L20
	cmpl	$96, %eax
	je	.L26
	cmpl	$97, %eax
	je	.L27
	jmp	.L20
.L23:
	movq	c_get_entropy(%rip), %rax
	testq	%rax, %rax
	jne	.L28
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_get_entropy
	movq	%rax, c_get_entropy(%rip)
	jmp	.L46
.L28:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_get_entropy
	movq	%rax, %rdx
	movq	c_get_entropy(%rip), %rax
	cmpq	%rax, %rdx
	je	.L46
	movl	$0, %eax
	jmp	.L30
.L25:
	movq	c_get_user_entropy(%rip), %rax
	testq	%rax, %rax
	jne	.L31
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_get_user_entropy
	movq	%rax, c_get_user_entropy(%rip)
	jmp	.L47
.L31:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_get_user_entropy
	movq	%rax, %rdx
	movq	c_get_user_entropy(%rip), %rax
	cmpq	%rax, %rdx
	je	.L47
	movl	$0, %eax
	jmp	.L30
.L22:
	movq	c_cleanup_entropy(%rip), %rax
	testq	%rax, %rax
	jne	.L33
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_cleanup_entropy
	movq	%rax, c_cleanup_entropy(%rip)
	jmp	.L48
.L33:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_cleanup_entropy
	movq	%rax, %rdx
	movq	c_cleanup_entropy(%rip), %rax
	cmpq	%rax, %rdx
	je	.L48
	movl	$0, %eax
	jmp	.L30
.L26:
	movq	c_cleanup_user_entropy(%rip), %rax
	testq	%rax, %rax
	jne	.L35
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_cleanup_user_entropy
	movq	%rax, c_cleanup_user_entropy(%rip)
	jmp	.L49
.L35:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_cleanup_user_entropy
	movq	%rax, %rdx
	movq	c_cleanup_user_entropy(%rip), %rax
	cmpq	%rax, %rdx
	je	.L49
	movl	$0, %eax
	jmp	.L30
.L21:
	movq	c_get_nonce(%rip), %rax
	testq	%rax, %rax
	jne	.L37
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_get_nonce
	movq	%rax, c_get_nonce(%rip)
	jmp	.L50
.L37:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_get_nonce
	movq	%rax, %rdx
	movq	c_get_nonce(%rip), %rax
	cmpq	%rax, %rdx
	je	.L50
	movl	$0, %eax
	jmp	.L30
.L24:
	movq	c_get_user_nonce(%rip), %rax
	testq	%rax, %rax
	jne	.L39
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_get_user_nonce
	movq	%rax, c_get_user_nonce(%rip)
	jmp	.L51
.L39:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_get_user_nonce
	movq	%rax, %rdx
	movq	c_get_user_nonce(%rip), %rax
	cmpq	%rax, %rdx
	je	.L51
	movl	$0, %eax
	jmp	.L30
.L19:
	movq	c_cleanup_nonce(%rip), %rax
	testq	%rax, %rax
	jne	.L41
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_cleanup_nonce
	movq	%rax, c_cleanup_nonce(%rip)
	jmp	.L52
.L41:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_cleanup_nonce
	movq	%rax, %rdx
	movq	c_cleanup_nonce(%rip), %rax
	cmpq	%rax, %rdx
	je	.L52
	movl	$0, %eax
	jmp	.L30
.L27:
	movq	c_cleanup_user_nonce(%rip), %rax
	testq	%rax, %rax
	jne	.L43
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_cleanup_user_nonce
	movq	%rax, c_cleanup_user_nonce(%rip)
	jmp	.L53
.L43:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_cleanup_user_nonce
	movq	%rax, %rdx
	movq	c_cleanup_user_nonce(%rip), %rax
	cmpq	%rax, %rdx
	je	.L53
	movl	$0, %eax
	jmp	.L30
.L46:
	nop
	jmp	.L20
.L47:
	nop
	jmp	.L20
.L48:
	nop
	jmp	.L20
.L49:
	nop
	jmp	.L20
.L50:
	nop
	jmp	.L20
.L51:
	nop
	jmp	.L20
.L52:
	nop
	jmp	.L20
.L53:
	nop
.L20:
	addq	$16, -8(%rbp)
.L18:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L45
	movl	$1, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	ossl_prov_seeding_from_dispatch, .-ossl_prov_seeding_from_dispatch
	.globl	ossl_prov_get_entropy
	.type	ossl_prov_get_entropy, @function
ossl_prov_get_entropy:
.LFB321:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_handle@PLT
	movq	%rax, -8(%rbp)
	movq	c_get_user_entropy(%rip), %rax
	testq	%rax, %rax
	je	.L55
	movq	c_get_user_entropy(%rip), %r9
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	jmp	.L56
.L55:
	movq	c_get_entropy(%rip), %rax
	testq	%rax, %rax
	je	.L57
	movq	c_get_entropy(%rip), %r9
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	jmp	.L56
.L57:
	movl	$0, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	ossl_prov_get_entropy, .-ossl_prov_get_entropy
	.globl	ossl_prov_cleanup_entropy
	.type	ossl_prov_cleanup_entropy, @function
ossl_prov_cleanup_entropy:
.LFB322:
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
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_handle@PLT
	movq	%rax, -8(%rbp)
	movq	c_cleanup_user_entropy(%rip), %rax
	testq	%rax, %rax
	je	.L59
	movq	c_cleanup_user_entropy(%rip), %r8
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	jmp	.L61
.L59:
	movq	c_cleanup_entropy(%rip), %rax
	testq	%rax, %rax
	je	.L61
	movq	c_cleanup_entropy(%rip), %r8
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
.L61:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE322:
	.size	ossl_prov_cleanup_entropy, .-ossl_prov_cleanup_entropy
	.globl	ossl_prov_get_nonce
	.type	ossl_prov_get_nonce, @function
ossl_prov_get_nonce:
.LFB323:
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
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_handle@PLT
	movq	%rax, -8(%rbp)
	movq	c_get_user_nonce(%rip), %rax
	testq	%rax, %rax
	je	.L63
	movq	c_get_user_nonce(%rip), %r10
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	jmp	.L64
.L63:
	movq	c_get_nonce(%rip), %rax
	testq	%rax, %rax
	je	.L65
	movq	c_get_nonce(%rip), %r10
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	jmp	.L64
.L65:
	movl	$0, %eax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	ossl_prov_get_nonce, .-ossl_prov_get_nonce
	.globl	ossl_prov_cleanup_nonce
	.type	ossl_prov_cleanup_nonce, @function
ossl_prov_cleanup_nonce:
.LFB324:
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
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_handle@PLT
	movq	%rax, -8(%rbp)
	movq	c_cleanup_user_nonce(%rip), %rax
	testq	%rax, %rax
	je	.L67
	movq	c_cleanup_user_nonce(%rip), %r8
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	jmp	.L69
.L67:
	movq	c_cleanup_nonce(%rip), %rax
	testq	%rax, %rax
	je	.L69
	movq	c_cleanup_nonce(%rip), %r8
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
.L69:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE324:
	.size	ossl_prov_cleanup_nonce, .-ossl_prov_cleanup_nonce
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

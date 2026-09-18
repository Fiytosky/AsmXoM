	.file	"provider_child.c"
	.text
	.type	OSSL_FUNC_core_get_libctx, @function
OSSL_FUNC_core_get_libctx:
.LFB33:
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
.LFE33:
	.size	OSSL_FUNC_core_get_libctx, .-OSSL_FUNC_core_get_libctx
	.type	OSSL_FUNC_provider_register_child_cb, @function
OSSL_FUNC_provider_register_child_cb:
.LFB74:
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
.LFE74:
	.size	OSSL_FUNC_provider_register_child_cb, .-OSSL_FUNC_provider_register_child_cb
	.type	OSSL_FUNC_provider_deregister_child_cb, @function
OSSL_FUNC_provider_deregister_child_cb:
.LFB75:
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
.LFE75:
	.size	OSSL_FUNC_provider_deregister_child_cb, .-OSSL_FUNC_provider_deregister_child_cb
	.type	OSSL_FUNC_provider_name, @function
OSSL_FUNC_provider_name:
.LFB76:
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
.LFE76:
	.size	OSSL_FUNC_provider_name, .-OSSL_FUNC_provider_name
	.type	OSSL_FUNC_provider_get0_provider_ctx, @function
OSSL_FUNC_provider_get0_provider_ctx:
.LFB77:
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
.LFE77:
	.size	OSSL_FUNC_provider_get0_provider_ctx, .-OSSL_FUNC_provider_get0_provider_ctx
	.type	OSSL_FUNC_provider_get0_dispatch, @function
OSSL_FUNC_provider_get0_dispatch:
.LFB78:
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
.LFE78:
	.size	OSSL_FUNC_provider_get0_dispatch, .-OSSL_FUNC_provider_get0_dispatch
	.type	OSSL_FUNC_provider_up_ref, @function
OSSL_FUNC_provider_up_ref:
.LFB79:
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
.LFE79:
	.size	OSSL_FUNC_provider_up_ref, .-OSSL_FUNC_provider_up_ref
	.type	OSSL_FUNC_provider_free, @function
OSSL_FUNC_provider_free:
.LFB80:
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
.LFE80:
	.size	OSSL_FUNC_provider_free, .-OSSL_FUNC_provider_free
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
	.string	"../crypto/provider_child.c"
	.text
	.globl	ossl_child_prov_ctx_new
	.type	ossl_child_prov_ctx_new, @function
ossl_child_prov_ctx_new:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$39, %edx
	movq	%rax, %rsi
	movl	$88, %edi
	call	CRYPTO_zalloc@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	ossl_child_prov_ctx_new, .-ossl_child_prov_ctx_new
	.globl	ossl_child_prov_ctx_free
	.type	ossl_child_prov_ctx_free, @function
ossl_child_prov_ctx_free:
.LFB483:
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
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$47, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	ossl_child_prov_ctx_free, .-ossl_child_prov_ctx_free
	.type	ossl_child_provider_init, @function
ossl_child_provider_init:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L25
.L28:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L32
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_get_libctx
	movq	%rax, -8(%rbp)
	jmp	.L27
.L32:
	nop
.L27:
	addq	$16, -48(%rbp)
.L25:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L28
	cmpq	$0, -8(%rbp)
	jne	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$18, %esi
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_data@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L31
	movl	$0, %eax
	jmp	.L30
.L31:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-64(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$1, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	ossl_child_provider_init, .-ossl_child_provider_init
	.type	provider_create_child_cb, @function
provider_create_child_cb:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	movl	$18, %esi
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_data@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L36
	movl	$0, %eax
	jmp	.L35
.L36:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_provider_find@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L37
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_provider_activate@PLT
	testl	%eax, %eax
	jne	.L38
	jmp	.L39
.L37:
	leaq	ossl_child_provider_init(%rip), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_provider_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L43
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_provider_activate@PLT
	testl	%eax, %eax
	jne	.L41
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	jmp	.L39
.L41:
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_provider_set_child@PLT
	testl	%eax, %eax
	je	.L42
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_provider_add_to_store@PLT
	testl	%eax, %eax
	jne	.L38
.L42:
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_provider_deactivate@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	jmp	.L39
.L38:
	movl	$1, -4(%rbp)
	jmp	.L39
.L43:
	nop
.L39:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-4(%rbp), %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	provider_create_child_cb, .-provider_create_child_cb
	.type	provider_remove_child_cb, @function
provider_remove_child_cb:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$18, %esi
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_data@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_provider_find@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L47
	movl	$0, %eax
	jmp	.L46
.L47:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_is_child@PLT
	testl	%eax, %eax
	je	.L48
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_provider_deactivate@PLT
	testl	%eax, %eax
	jne	.L48
	movl	$0, %eax
	jmp	.L46
.L48:
	movl	$1, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	provider_remove_child_cb, .-provider_remove_child_cb
	.type	provider_global_props_cb, @function
provider_global_props_cb:
.LFB487:
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
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	evp_set_default_properties_int@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	provider_global_props_cb, .-provider_global_props_cb
	.globl	ossl_provider_init_as_child
	.type	ossl_provider_init_as_child, @function
ossl_provider_init_as_child:
.LFB488:
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
	cmpq	$0, -24(%rbp)
	jne	.L52
	movl	$0, %eax
	jmp	.L53
.L52:
	movq	-24(%rbp), %rax
	movl	$18, %esi
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L54
	movl	$0, %eax
	jmp	.L53
.L54:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L55
.L66:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$111, %eax
	je	.L56
	cmpl	$111, %eax
	jg	.L71
	cmpl	$110, %eax
	je	.L58
	cmpl	$110, %eax
	jg	.L71
	cmpl	$109, %eax
	je	.L59
	cmpl	$109, %eax
	jg	.L71
	cmpl	$108, %eax
	je	.L60
	cmpl	$108, %eax
	jg	.L71
	cmpl	$107, %eax
	je	.L61
	cmpl	$107, %eax
	jg	.L71
	cmpl	$106, %eax
	je	.L62
	cmpl	$106, %eax
	jg	.L71
	cmpl	$4, %eax
	je	.L63
	cmpl	$105, %eax
	je	.L64
	jmp	.L71
.L63:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_get_libctx
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	.L65
.L64:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_provider_register_child_cb
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	jmp	.L65
.L62:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_provider_deregister_child_cb
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	jmp	.L65
.L61:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_provider_name
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	jmp	.L65
.L60:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_provider_get0_provider_ctx
	movq	-8(%rbp), %rdx
	movq	%rax, 56(%rdx)
	jmp	.L65
.L59:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_provider_get0_dispatch
	movq	-8(%rbp), %rdx
	movq	%rax, 64(%rdx)
	jmp	.L65
.L58:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_provider_up_ref
	movq	-8(%rbp), %rdx
	movq	%rax, 72(%rdx)
	jmp	.L65
.L56:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_provider_free
	movq	-8(%rbp), %rdx
	movq	%rax, 80(%rdx)
	jmp	.L65
.L71:
	nop
.L65:
	addq	$16, -40(%rbp)
.L55:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L66
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L68
.L67:
	movl	$0, %eax
	jmp	.L53
.L68:
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L69
	movl	$0, %eax
	jmp	.L53
.L69:
	movq	-8(%rbp), %rax
	movq	32(%rax), %r9
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdi
	leaq	provider_global_props_cb(%rip), %rcx
	leaq	provider_remove_child_cb(%rip), %rdx
	leaq	provider_create_child_cb(%rip), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L70
	movl	$0, %eax
	jmp	.L53
.L70:
	movl	$1, %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	ossl_provider_init_as_child, .-ossl_provider_init_as_child
	.globl	ossl_provider_deinit_child
	.type	ossl_provider_deinit_child, @function
ossl_provider_deinit_child:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$18, %esi
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L75
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L72
.L75:
	nop
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	ossl_provider_deinit_child, .-ossl_provider_deinit_child
	.globl	ossl_provider_up_ref_parent
	.type	ossl_provider_up_ref_parent, @function
ossl_provider_up_ref_parent:
.LFB490:
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
	movq	%rax, %rdi
	call	ossl_provider_libctx@PLT
	movl	$18, %esi
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L77
	movl	$0, %eax
	jmp	.L78
.L77:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_get_parent@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L79
	movl	$1, %eax
	jmp	.L78
.L79:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rcx
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	ossl_provider_up_ref_parent, .-ossl_provider_up_ref_parent
	.globl	ossl_provider_free_parent
	.type	ossl_provider_free_parent, @function
ossl_provider_free_parent:
.LFB491:
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
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_libctx@PLT
	movl	$18, %esi
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_data@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L81
	movl	$0, %eax
	jmp	.L82
.L81:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_get_parent@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L83
	movl	$1, %eax
	jmp	.L82
.L83:
	movq	-24(%rbp), %rax
	movq	80(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_get_parent@PLT
	movq	%rax, %rdx
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	*%rbx
.L82:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	ossl_provider_free_parent, .-ossl_provider_free_parent
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

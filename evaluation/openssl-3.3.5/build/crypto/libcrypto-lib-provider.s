	.file	"provider.c"
	.text
	.globl	OSSL_PROVIDER_try_load_ex
	.type	OSSL_PROVIDER_try_load_ex, @function
OSSL_PROVIDER_try_load_ex:
.LFB341:
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
	movl	%ecx, -60(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_provider_find@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_provider_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L3
	movl	$0, %eax
	jmp	.L8
.L3:
	movl	$1, -12(%rbp)
.L2:
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_provider_activate@PLT
	testl	%eax, %eax
	jne	.L5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	movl	$0, %eax
	jmp	.L8
.L5:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L6
	movl	-60(%rbp), %edx
	leaq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_provider_add_to_store@PLT
	testl	%eax, %eax
	jne	.L6
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_provider_deactivate@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	movl	$0, %eax
	jmp	.L8
.L6:
	movq	-24(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	je	.L7
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_provider_activate@PLT
	testl	%eax, %eax
	jne	.L7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-24(%rbp), %rax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE341:
	.size	OSSL_PROVIDER_try_load_ex, .-OSSL_PROVIDER_try_load_ex
	.globl	OSSL_PROVIDER_try_load
	.type	OSSL_PROVIDER_try_load, @function
OSSL_PROVIDER_try_load:
.LFB342:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PROVIDER_try_load_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE342:
	.size	OSSL_PROVIDER_try_load, .-OSSL_PROVIDER_try_load
	.globl	OSSL_PROVIDER_load_ex
	.type	OSSL_PROVIDER_load_ex, @function
OSSL_PROVIDER_load_ex:
.LFB343:
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
	movq	%rax, %rdi
	call	ossl_provider_disable_fallback_loading@PLT
	testl	%eax, %eax
	je	.L12
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PROVIDER_try_load_ex@PLT
	jmp	.L13
.L12:
	movl	$0, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE343:
	.size	OSSL_PROVIDER_load_ex, .-OSSL_PROVIDER_load_ex
	.globl	OSSL_PROVIDER_load
	.type	OSSL_PROVIDER_load, @function
OSSL_PROVIDER_load:
.LFB344:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE344:
	.size	OSSL_PROVIDER_load, .-OSSL_PROVIDER_load
	.globl	OSSL_PROVIDER_unload
	.type	OSSL_PROVIDER_unload, @function
OSSL_PROVIDER_unload:
.LFB345:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_provider_deactivate@PLT
	testl	%eax, %eax
	jne	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	movl	$1, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE345:
	.size	OSSL_PROVIDER_unload, .-OSSL_PROVIDER_unload
	.globl	OSSL_PROVIDER_gettable_params
	.type	OSSL_PROVIDER_gettable_params, @function
OSSL_PROVIDER_gettable_params:
.LFB346:
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
	call	ossl_provider_gettable_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE346:
	.size	OSSL_PROVIDER_gettable_params, .-OSSL_PROVIDER_gettable_params
	.globl	OSSL_PROVIDER_get_params
	.type	OSSL_PROVIDER_get_params, @function
OSSL_PROVIDER_get_params:
.LFB347:
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
	call	ossl_provider_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE347:
	.size	OSSL_PROVIDER_get_params, .-OSSL_PROVIDER_get_params
	.globl	OSSL_PROVIDER_query_operation
	.type	OSSL_PROVIDER_query_operation, @function
OSSL_PROVIDER_query_operation:
.LFB348:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_provider_query_operation@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE348:
	.size	OSSL_PROVIDER_query_operation, .-OSSL_PROVIDER_query_operation
	.globl	OSSL_PROVIDER_unquery_operation
	.type	OSSL_PROVIDER_unquery_operation, @function
OSSL_PROVIDER_unquery_operation:
.LFB349:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_provider_unquery_operation@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE349:
	.size	OSSL_PROVIDER_unquery_operation, .-OSSL_PROVIDER_unquery_operation
	.globl	OSSL_PROVIDER_get0_provider_ctx
	.type	OSSL_PROVIDER_get0_provider_ctx, @function
OSSL_PROVIDER_get0_provider_ctx:
.LFB350:
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
	call	ossl_provider_prov_ctx@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE350:
	.size	OSSL_PROVIDER_get0_provider_ctx, .-OSSL_PROVIDER_get0_provider_ctx
	.globl	OSSL_PROVIDER_get0_dispatch
	.type	OSSL_PROVIDER_get0_dispatch, @function
OSSL_PROVIDER_get0_dispatch:
.LFB351:
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
	call	ossl_provider_get0_dispatch@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE351:
	.size	OSSL_PROVIDER_get0_dispatch, .-OSSL_PROVIDER_get0_dispatch
	.globl	OSSL_PROVIDER_self_test
	.type	OSSL_PROVIDER_self_test, @function
OSSL_PROVIDER_self_test:
.LFB352:
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
	call	ossl_provider_self_test@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE352:
	.size	OSSL_PROVIDER_self_test, .-OSSL_PROVIDER_self_test
	.globl	OSSL_PROVIDER_get_capabilities
	.type	OSSL_PROVIDER_get_capabilities, @function
OSSL_PROVIDER_get_capabilities:
.LFB353:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_get_capabilities@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE353:
	.size	OSSL_PROVIDER_get_capabilities, .-OSSL_PROVIDER_get_capabilities
	.section	.rodata
.LC0:
	.string	"../crypto/provider.c"
	.text
	.globl	OSSL_PROVIDER_add_builtin
	.type	OSSL_PROVIDER_add_builtin, @function
OSSL_PROVIDER_add_builtin:
.LFB354:
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
	cmpq	$0, -64(%rbp)
	je	.L35
	cmpq	$0, -72(%rbp)
	jne	.L36
.L35:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$132, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L40
.L36:
	leaq	-48(%rbp), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	.LC0(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$136, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L38
	movl	$0, %eax
	jmp	.L40
.L38:
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_provider_info_add_to_store@PLT
	testl	%eax, %eax
	jne	.L39
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_info_clear@PLT
	movl	$0, %eax
	jmp	.L40
.L39:
	movl	$1, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE354:
	.size	OSSL_PROVIDER_add_builtin, .-OSSL_PROVIDER_add_builtin
	.globl	OSSL_PROVIDER_get0_name
	.type	OSSL_PROVIDER_get0_name, @function
OSSL_PROVIDER_get0_name:
.LFB355:
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
	call	ossl_provider_name@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE355:
	.size	OSSL_PROVIDER_get0_name, .-OSSL_PROVIDER_get0_name
	.globl	OSSL_PROVIDER_do_all
	.type	OSSL_PROVIDER_do_all, @function
OSSL_PROVIDER_do_all:
.LFB356:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_provider_doall_activated@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE356:
	.size	OSSL_PROVIDER_do_all, .-OSSL_PROVIDER_do_all
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 26
__func__.0:
	.string	"OSSL_PROVIDER_add_builtin"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

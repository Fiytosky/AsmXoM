	.file	"context.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
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
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
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
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.globl	ossl_lib_ctx_write_lock
	.type	ossl_lib_ctx_write_lock, @function
ossl_lib_ctx_write_lock:
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
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_concrete@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	ossl_lib_ctx_write_lock, .-ossl_lib_ctx_write_lock
	.globl	ossl_lib_ctx_read_lock
	.type	ossl_lib_ctx_read_lock, @function
ossl_lib_ctx_read_lock:
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
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_concrete@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	ossl_lib_ctx_read_lock, .-ossl_lib_ctx_read_lock
	.globl	ossl_lib_ctx_unlock
	.type	ossl_lib_ctx_unlock, @function
ossl_lib_ctx_unlock:
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
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_concrete@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	ossl_lib_ctx_unlock, .-ossl_lib_ctx_unlock
	.globl	ossl_lib_ctx_is_child
	.type	ossl_lib_ctx_is_child, @function
ossl_lib_ctx_is_child:
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
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_concrete@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-8(%rbp), %rax
	movzbl	320(%rax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	ossl_lib_ctx_is_child, .-ossl_lib_ctx_is_child
	.type	context_init, @function
context_init:
.LFB423:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	addq	$232, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_init_local@PLT
	testl	%eax, %eax
	jne	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L43
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L44
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_do_ex_data_init@PLT
	testl	%eax, %eax
	je	.L45
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_method_store_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 176(%rdx)
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L46
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_conf_ctx_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 240(%rdx)
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	je	.L47
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_ctx_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 216(%rdx)
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_method_store_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 264(%rdx)
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_decoder_cache_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 272(%rdx)
	movq	-24(%rbp), %rax
	movq	272(%rax), %rax
	testq	%rax, %rax
	je	.L50
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_method_store_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 280(%rdx)
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L51
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_method_store_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 288(%rdx)
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L52
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_store_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 184(%rdx)
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	je	.L53
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_string_data_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 168(%rdx)
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	je	.L54
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_stored_namemap_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 192(%rdx)
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L55
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_defns_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 200(%rdx)
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	testq	%rax, %rax
	je	.L56
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ctx_global_properties_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 208(%rdx)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_bio_core_globals_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 248(%rdx)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	testq	%rax, %rax
	je	.L58
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_drbg_nonce_ctx_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 224(%rdx)
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	testq	%rax, %rax
	je	.L59
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_self_test_set_callback_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 296(%rdx)
	movq	-24(%rbp), %rax
	movq	296(%rax), %rax
	testq	%rax, %rax
	je	.L60
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_threads_ctx_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 304(%rdx)
	movq	-24(%rbp), %rax
	movq	304(%rax), %rax
	testq	%rax, %rax
	je	.L61
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_child_prov_ctx_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 256(%rdx)
	movq	-24(%rbp), %rax
	movq	256(%rax), %rax
	testq	%rax, %rax
	je	.L62
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_parse_init@PLT
	testl	%eax, %eax
	je	.L63
	movl	$1, %eax
	jmp	.L19
.L43:
	nop
	jmp	.L21
.L44:
	nop
	jmp	.L21
.L45:
	nop
	jmp	.L21
.L46:
	nop
	jmp	.L21
.L47:
	nop
	jmp	.L21
.L48:
	nop
	jmp	.L21
.L49:
	nop
	jmp	.L21
.L50:
	nop
	jmp	.L21
.L51:
	nop
	jmp	.L21
.L52:
	nop
	jmp	.L21
.L53:
	nop
	jmp	.L21
.L54:
	nop
	jmp	.L21
.L55:
	nop
	jmp	.L21
.L56:
	nop
	jmp	.L21
.L57:
	nop
	jmp	.L21
.L58:
	nop
	jmp	.L21
.L59:
	nop
	jmp	.L21
.L60:
	nop
	jmp	.L21
.L61:
	nop
	jmp	.L21
.L62:
	nop
	jmp	.L21
.L63:
	nop
.L21:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	context_deinit_objs
	cmpl	$0, -4(%rbp)
	je	.L42
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_crypto_cleanup_all_ex_data_int@PLT
.L42:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-24(%rbp), %rax
	addq	$232, %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_cleanup_local@PLT
	movq	-24(%rbp), %rax
	movl	$328, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE423:
	.size	context_init, .-context_init
	.type	context_deinit_objs, @function
context_deinit_objs:
.LFB424:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	call	ossl_method_store_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 176(%rax)
.L65:
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	je	.L66
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, %rdi
	call	ossl_rand_ctx_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 216(%rax)
.L66:
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_conf_ctx_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 240(%rax)
.L67:
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, %rdi
	call	ossl_method_store_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 264(%rax)
.L68:
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	testq	%rax, %rax
	je	.L69
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, %rdi
	call	ossl_decoder_cache_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 272(%rax)
.L69:
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L70
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	call	ossl_method_store_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 280(%rax)
.L70:
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	call	ossl_method_store_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 288(%rax)
.L71:
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	je	.L72
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	ossl_provider_store_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 184(%rax)
.L72:
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	je	.L73
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	ossl_property_string_data_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 168(%rax)
.L73:
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L74
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, %rdi
	call	ossl_stored_namemap_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 192(%rax)
.L74:
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, %rdi
	call	ossl_property_defns_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 200(%rax)
.L75:
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.L76
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ctx_global_properties_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 208(%rax)
.L76:
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	testq	%rax, %rax
	je	.L77
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	call	ossl_bio_core_globals_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 248(%rax)
.L77:
	movq	-8(%rbp), %rax
	movq	224(%rax), %rax
	testq	%rax, %rax
	je	.L78
	movq	-8(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_drbg_nonce_ctx_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 224(%rax)
.L78:
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	testq	%rax, %rax
	je	.L79
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, %rdi
	call	ossl_self_test_set_callback_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 296(%rax)
.L79:
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	testq	%rax, %rax
	je	.L80
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, %rdi
	call	ossl_rand_crng_ctx_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 312(%rax)
.L80:
	movq	-8(%rbp), %rax
	movq	304(%rax), %rax
	testq	%rax, %rax
	je	.L81
	movq	-8(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, %rdi
	call	ossl_threads_ctx_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 304(%rax)
.L81:
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	testq	%rax, %rax
	je	.L83
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, %rdi
	call	ossl_child_prov_ctx_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 256(%rax)
.L83:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE424:
	.size	context_deinit_objs, .-context_deinit_objs
	.type	context_deinit, @function
context_deinit:
.LFB425:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L85
	movl	$1, %eax
	jmp	.L86
.L85:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ctx_thread_stop@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	context_deinit_objs
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_crypto_cleanup_all_ex_data_int@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$232, %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_cleanup_local@PLT
	movl	$1, %eax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE425:
	.size	context_deinit, .-context_deinit
	.local	default_context_int
	.comm	default_context_int,328,32
	.local	default_context_init
	.comm	default_context_init,4,4
	.local	default_context_thread_local
	.comm	default_context_thread_local,4,4
	.local	default_context_inited
	.comm	default_context_inited,4,4
	.local	default_context_do_init_ossl_ret_
	.comm	default_context_do_init_ossl_ret_,4,4
	.type	default_context_do_init_ossl_, @function
default_context_do_init_ossl_:
.LFB426:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	default_context_do_init
	movl	%eax, default_context_do_init_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE426:
	.size	default_context_do_init_ossl_, .-default_context_do_init_ossl_
	.type	default_context_do_init, @function
default_context_do_init:
.LFB427:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	default_context_thread_local(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_init_local@PLT
	testl	%eax, %eax
	je	.L95
	leaq	default_context_int(%rip), %rax
	movq	%rax, %rdi
	call	context_init
	testl	%eax, %eax
	je	.L96
	movl	$1, default_context_inited(%rip)
	movl	$1, %eax
	jmp	.L93
.L96:
	nop
.L92:
	leaq	default_context_thread_local(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_cleanup_local@PLT
	jmp	.L90
.L95:
	nop
.L90:
	movl	$0, %eax
.L93:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE427:
	.size	default_context_do_init, .-default_context_do_init
	.globl	ossl_lib_ctx_default_deinit
	.type	ossl_lib_ctx_default_deinit, @function
ossl_lib_ctx_default_deinit:
.LFB428:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	default_context_inited(%rip), %eax
	testl	%eax, %eax
	je	.L100
	leaq	default_context_int(%rip), %rax
	movq	%rax, %rdi
	call	context_deinit
	leaq	default_context_thread_local(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_cleanup_local@PLT
	movl	$0, default_context_inited(%rip)
	jmp	.L97
.L100:
	nop
.L97:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE428:
	.size	ossl_lib_ctx_default_deinit, .-ossl_lib_ctx_default_deinit
	.type	get_thread_default_context, @function
get_thread_default_context:
.LFB429:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	default_context_do_init_ossl_(%rip), %rdx
	leaq	default_context_init(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L102
	movl	default_context_do_init_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L103
.L102:
	movl	$0, %eax
	jmp	.L104
.L103:
	leaq	default_context_thread_local(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
.L104:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	get_thread_default_context, .-get_thread_default_context
	.type	get_default_context, @function
get_default_context:
.LFB430:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	get_thread_default_context
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L106
	movl	default_context_inited(%rip), %eax
	testl	%eax, %eax
	je	.L106
	leaq	default_context_int(%rip), %rax
	movq	%rax, -8(%rbp)
.L106:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE430:
	.size	get_default_context, .-get_default_context
	.type	set_default_context, @function
set_default_context:
.LFB431:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	default_context_int(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L109
	movq	$0, -8(%rbp)
.L109:
	movq	-8(%rbp), %rax
	leaq	default_context_thread_local(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_THREAD_set_local@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE431:
	.size	set_default_context, .-set_default_context
	.section	.rodata
.LC0:
	.string	"../crypto/context.c"
	.text
	.globl	OSSL_LIB_CTX_new
	.type	OSSL_LIB_CTX_new, @function
OSSL_LIB_CTX_new:
.LFB432:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$435, %edx
	movq	%rax, %rsi
	movl	$328, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L112
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	context_init
	testl	%eax, %eax
	jne	.L112
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$438, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -8(%rbp)
.L112:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE432:
	.size	OSSL_LIB_CTX_new, .-OSSL_LIB_CTX_new
	.globl	OSSL_LIB_CTX_new_from_dispatch
	.type	OSSL_LIB_CTX_new_from_dispatch, @function
OSSL_LIB_CTX_new_from_dispatch:
.LFB433:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L115
	movl	$0, %eax
	jmp	.L116
.L115:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_bio_init_core@PLT
	testl	%eax, %eax
	jne	.L117
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	$0, %eax
	jmp	.L116
.L117:
	movq	-8(%rbp), %rax
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	OSSL_LIB_CTX_new_from_dispatch, .-OSSL_LIB_CTX_new_from_dispatch
	.globl	OSSL_LIB_CTX_new_child
	.type	OSSL_LIB_CTX_new_child, @function
OSSL_LIB_CTX_new_child:
.LFB434:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_new_from_dispatch@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L119
	movl	$0, %eax
	jmp	.L120
.L119:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_provider_init_as_child@PLT
	testl	%eax, %eax
	jne	.L121
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	$0, %eax
	jmp	.L120
.L121:
	movq	-8(%rbp), %rax
	movzbl	320(%rax), %edx
	orl	$1, %edx
	movb	%dl, 320(%rax)
	movq	-8(%rbp), %rax
.L120:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE434:
	.size	OSSL_LIB_CTX_new_child, .-OSSL_LIB_CTX_new_child
	.globl	OSSL_LIB_CTX_load_config
	.type	OSSL_LIB_CTX_load_config, @function
OSSL_LIB_CTX_load_config:
.LFB435:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	CONF_modules_load_file_ex@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE435:
	.size	OSSL_LIB_CTX_load_config, .-OSSL_LIB_CTX_load_config
	.globl	OSSL_LIB_CTX_free
	.type	OSSL_LIB_CTX_free, @function
OSSL_LIB_CTX_free:
.LFB436:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L129
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_is_default@PLT
	testl	%eax, %eax
	jne	.L129
	movq	-8(%rbp), %rax
	movzbl	320(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L128
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_deinit_child@PLT
.L128:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	context_deinit
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$494, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L124
.L129:
	nop
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE436:
	.size	OSSL_LIB_CTX_free, .-OSSL_LIB_CTX_free
	.globl	OSSL_LIB_CTX_get0_global_default
	.type	OSSL_LIB_CTX_get0_global_default, @function
OSSL_LIB_CTX_get0_global_default:
.LFB437:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	default_context_do_init_ossl_(%rip), %rdx
	leaq	default_context_init(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L131
	movl	default_context_do_init_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L132
.L131:
	movl	$0, %eax
	jmp	.L133
.L132:
	leaq	default_context_int(%rip), %rax
.L133:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE437:
	.size	OSSL_LIB_CTX_get0_global_default, .-OSSL_LIB_CTX_get0_global_default
	.globl	OSSL_LIB_CTX_set0_default
	.type	OSSL_LIB_CTX_set0_default, @function
OSSL_LIB_CTX_set0_default:
.LFB438:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	get_default_context
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L135
	cmpq	$0, -24(%rbp)
	je	.L136
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	set_default_context
.L136:
	movq	-8(%rbp), %rax
	jmp	.L137
.L135:
	movl	$0, %eax
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE438:
	.size	OSSL_LIB_CTX_set0_default, .-OSSL_LIB_CTX_set0_default
	.globl	ossl_release_default_drbg_ctx
	.type	ossl_release_default_drbg_ctx, @function
ossl_release_default_drbg_ctx:
.LFB439:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	216+default_context_int(%rip), %rax
	testq	%rax, %rax
	je	.L140
	movq	216+default_context_int(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rand_ctx_free@PLT
	movq	$0, 216+default_context_int(%rip)
.L140:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE439:
	.size	ossl_release_default_drbg_ctx, .-ossl_release_default_drbg_ctx
	.globl	ossl_lib_ctx_get_concrete
	.type	ossl_lib_ctx_get_concrete, @function
ossl_lib_ctx_get_concrete:
.LFB440:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L142
	call	get_default_context
	jmp	.L143
.L142:
	movq	-8(%rbp), %rax
.L143:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE440:
	.size	ossl_lib_ctx_get_concrete, .-ossl_lib_ctx_get_concrete
	.globl	ossl_lib_ctx_is_default
	.type	ossl_lib_ctx_is_default, @function
ossl_lib_ctx_is_default:
.LFB441:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L145
	call	get_default_context
	cmpq	%rax, -8(%rbp)
	jne	.L146
.L145:
	movl	$1, %eax
	jmp	.L147
.L146:
	movl	$0, %eax
.L147:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE441:
	.size	ossl_lib_ctx_is_default, .-ossl_lib_ctx_is_default
	.globl	ossl_lib_ctx_is_global_default
	.type	ossl_lib_ctx_is_global_default, @function
ossl_lib_ctx_is_global_default:
.LFB442:
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
	call	ossl_lib_ctx_get_concrete@PLT
	leaq	default_context_int(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L149
	movl	$1, %eax
	jmp	.L150
.L149:
	movl	$0, %eax
.L150:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE442:
	.size	ossl_lib_ctx_is_global_default, .-ossl_lib_ctx_is_global_default
	.globl	ossl_lib_ctx_get_data
	.type	ossl_lib_ctx_get_data, @function
ossl_lib_ctx_get_data:
.LFB443:
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
	call	ossl_lib_ctx_get_concrete@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L152
	movl	$0, %eax
	jmp	.L153
.L152:
	cmpl	$20, -28(%rbp)
	je	.L154
	cmpl	$20, -28(%rbp)
	jg	.L155
	cmpl	$19, -28(%rbp)
	je	.L156
	cmpl	$19, -28(%rbp)
	jg	.L155
	cmpl	$18, -28(%rbp)
	je	.L157
	cmpl	$18, -28(%rbp)
	jg	.L155
	cmpl	$17, -28(%rbp)
	je	.L158
	cmpl	$17, -28(%rbp)
	jg	.L155
	cmpl	$16, -28(%rbp)
	je	.L159
	cmpl	$16, -28(%rbp)
	jg	.L155
	cmpl	$15, -28(%rbp)
	je	.L160
	cmpl	$15, -28(%rbp)
	jg	.L155
	cmpl	$14, -28(%rbp)
	je	.L161
	cmpl	$14, -28(%rbp)
	jg	.L155
	cmpl	$12, -28(%rbp)
	je	.L162
	cmpl	$12, -28(%rbp)
	jg	.L155
	cmpl	$11, -28(%rbp)
	je	.L163
	cmpl	$11, -28(%rbp)
	jg	.L155
	cmpl	$10, -28(%rbp)
	je	.L164
	cmpl	$10, -28(%rbp)
	jg	.L155
	cmpl	$7, -28(%rbp)
	je	.L165
	cmpl	$7, -28(%rbp)
	jg	.L155
	cmpl	$6, -28(%rbp)
	je	.L166
	cmpl	$6, -28(%rbp)
	jg	.L155
	cmpl	$5, -28(%rbp)
	je	.L167
	cmpl	$5, -28(%rbp)
	jg	.L155
	cmpl	$4, -28(%rbp)
	je	.L168
	cmpl	$4, -28(%rbp)
	jg	.L155
	cmpl	$3, -28(%rbp)
	je	.L169
	cmpl	$3, -28(%rbp)
	jg	.L155
	cmpl	$2, -28(%rbp)
	je	.L170
	cmpl	$2, -28(%rbp)
	jg	.L155
	cmpl	$0, -28(%rbp)
	je	.L171
	cmpl	$1, -28(%rbp)
	je	.L172
	jmp	.L155
.L169:
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	jmp	.L153
.L171:
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	jmp	.L153
.L172:
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	jmp	.L153
.L168:
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	jmp	.L153
.L170:
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	jmp	.L153
.L161:
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	jmp	.L153
.L167:
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	jmp	.L153
.L166:
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	jmp	.L153
.L159:
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	jmp	.L153
.L158:
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	jmp	.L153
.L157:
	movq	-24(%rbp), %rax
	movq	256(%rax), %rax
	jmp	.L153
.L163:
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	jmp	.L153
.L154:
	movq	-24(%rbp), %rax
	movq	272(%rax), %rax
	jmp	.L153
.L164:
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	jmp	.L153
.L160:
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	jmp	.L153
.L162:
	movq	-24(%rbp), %rax
	movq	296(%rax), %rax
	jmp	.L153
.L156:
	movq	-24(%rbp), %rax
	movq	304(%rax), %rax
	jmp	.L153
.L165:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	cmpl	$1, %eax
	je	.L173
	movl	$0, %eax
	jmp	.L153
.L173:
	movq	-24(%rbp), %rax
	movq	312(%rax), %rax
	testq	%rax, %rax
	jne	.L174
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	cmpl	$1, %eax
	je	.L175
	movl	$0, %eax
	jmp	.L153
.L175:
	movq	-24(%rbp), %rax
	movq	312(%rax), %rax
	testq	%rax, %rax
	jne	.L174
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_crng_ctx_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 312(%rdx)
.L174:
	movq	-24(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-8(%rbp), %rax
	jmp	.L153
.L155:
	movl	$0, %eax
.L153:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE443:
	.size	ossl_lib_ctx_get_data, .-ossl_lib_ctx_get_data
	.globl	ossl_lib_ctx_get_ex_data_global
	.type	ossl_lib_ctx_get_ex_data_global, @function
ossl_lib_ctx_get_ex_data_global:
.LFB444:
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
	call	ossl_lib_ctx_get_concrete@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L177
	movl	$0, %eax
	jmp	.L178
.L177:
	movq	-8(%rbp), %rax
	addq	$16, %rax
.L178:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE444:
	.size	ossl_lib_ctx_get_ex_data_global, .-ossl_lib_ctx_get_ex_data_global
	.section	.rodata
	.align 8
.LC1:
	.string	"Global default library context"
	.align 8
.LC2:
	.string	"Thread-local default library context"
.LC3:
	.string	"Non-default library context"
	.text
	.globl	ossl_lib_ctx_get_descriptor
	.type	ossl_lib_ctx_get_descriptor, @function
ossl_lib_ctx_get_descriptor:
.LFB445:
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
	call	ossl_lib_ctx_is_global_default@PLT
	testl	%eax, %eax
	je	.L180
	leaq	.LC1(%rip), %rax
	jmp	.L181
.L180:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_is_default@PLT
	testl	%eax, %eax
	je	.L182
	leaq	.LC2(%rip), %rax
	jmp	.L181
.L182:
	leaq	.LC3(%rip), %rax
.L181:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE445:
	.size	ossl_lib_ctx_get_descriptor, .-ossl_lib_ctx_get_descriptor
	.globl	ossl_lib_ctx_get_rcukey
	.type	ossl_lib_ctx_get_rcukey, @function
ossl_lib_ctx_get_rcukey:
.LFB446:
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
	call	ossl_lib_ctx_get_concrete@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L184
	movl	$0, %eax
	jmp	.L185
.L184:
	movq	-8(%rbp), %rax
	addq	$232, %rax
.L185:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE446:
	.size	ossl_lib_ctx_get_rcukey, .-ossl_lib_ctx_get_rcukey
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

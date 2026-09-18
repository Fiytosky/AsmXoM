	.file	"keymgmt_lib.c"
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
	.type	sk_OP_CACHE_ELEM_num, @function
sk_OP_CACHE_ELEM_num:
.LFB432:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE432:
	.size	sk_OP_CACHE_ELEM_num, .-sk_OP_CACHE_ELEM_num
	.type	sk_OP_CACHE_ELEM_value, @function
sk_OP_CACHE_ELEM_value:
.LFB433:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	sk_OP_CACHE_ELEM_value, .-sk_OP_CACHE_ELEM_value
	.type	sk_OP_CACHE_ELEM_new_null, @function
sk_OP_CACHE_ELEM_new_null:
.LFB435:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OPENSSL_sk_new_null@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE435:
	.size	sk_OP_CACHE_ELEM_new_null, .-sk_OP_CACHE_ELEM_new_null
	.type	sk_OP_CACHE_ELEM_push, @function
sk_OP_CACHE_ELEM_push:
.LFB442:
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
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE442:
	.size	sk_OP_CACHE_ELEM_push, .-sk_OP_CACHE_ELEM_push
	.type	sk_OP_CACHE_ELEM_pop_free, @function
sk_OP_CACHE_ELEM_pop_free:
.LFB446:
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
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE446:
	.size	sk_OP_CACHE_ELEM_pop_free, .-sk_OP_CACHE_ELEM_pop_free
	.type	match_type, @function
match_type:
.LFB482:
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
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_name@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_is_a@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	match_type, .-match_type
	.section	.rodata
.LC0:
	.string	"../crypto/evp/keymgmt_lib.c"
	.text
	.globl	evp_keymgmt_util_try_import
	.type	evp_keymgmt_util_try_import, @function
evp_keymgmt_util_try_import:
.LFB483:
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
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L17
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	evp_keymgmt_newdata@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L18
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$37, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L19
.L18:
	movl	$1, -4(%rbp)
.L17:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20
	movl	$1, %eax
	jmp	.L19
.L20:
	movq	-16(%rbp), %rax
	movl	16(%rax), %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	call	evp_keymgmt_import@PLT
	testl	%eax, %eax
	je	.L21
	movl	$1, %eax
	jmp	.L19
.L21:
	cmpl	$0, -4(%rbp)
	je	.L22
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_freedata@PLT
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.L22:
	movl	$0, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	evp_keymgmt_util_try_import, .-evp_keymgmt_util_try_import
	.globl	evp_keymgmt_util_assign_pkey
	.type	evp_keymgmt_util_assign_pkey, @function
evp_keymgmt_util_assign_pkey:
.LFB484:
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
	cmpq	$0, -8(%rbp)
	je	.L24
	cmpq	$0, -16(%rbp)
	je	.L24
	cmpq	$0, -24(%rbp)
	je	.L24
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set_type_by_keymgmt@PLT
	testl	%eax, %eax
	jne	.L25
.L24:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$65, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L26
.L25:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 104(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	evp_keymgmt_util_cache_keyinfo@PLT
	movl	$1, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	evp_keymgmt_util_assign_pkey, .-evp_keymgmt_util_assign_pkey
	.globl	evp_keymgmt_util_make_pkey
	.type	evp_keymgmt_util_make_pkey, @function
evp_keymgmt_util_make_pkey:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L28
	cmpq	$0, -32(%rbp)
	je	.L28
	call	EVP_PKEY_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L28
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_util_assign_pkey@PLT
	testl	%eax, %eax
	jne	.L29
.L28:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	-8(%rbp), %rax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	evp_keymgmt_util_make_pkey, .-evp_keymgmt_util_make_pkey
	.globl	evp_keymgmt_util_export
	.type	evp_keymgmt_util_export, @function
evp_keymgmt_util_export:
.LFB486:
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
	movq	%rcx, -32(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L32
	cmpq	$0, -24(%rbp)
	jne	.L33
.L32:
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	evp_keymgmt_export@PLT
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	evp_keymgmt_util_export, .-evp_keymgmt_util_export
	.globl	evp_keymgmt_util_export_to_provider
	.type	evp_keymgmt_util_export_to_provider, @function
evp_keymgmt_util_export_to_provider:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L36
	movl	$0, %eax
	jmp	.L50
.L36:
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L38
	movl	$0, %eax
	jmp	.L50
.L38:
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%rax, -64(%rbp)
	je	.L39
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	movl	4(%rax), %edx
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jne	.L40
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	movq	32(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L40
.L39:
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	jmp	.L50
.L40:
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L41
	movl	$0, %eax
	jmp	.L50
.L41:
	movq	-56(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L42
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_util_find_operation_cache@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L42
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-16(%rbp), %rax
	jmp	.L50
.L42:
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	jne	.L43
	movl	$0, %eax
	jmp	.L50
.L43:
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	match_type
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L44
	movl	$0, %eax
	jmp	.L50
.L44:
	movq	$0, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -32(%rbp)
	leaq	-48(%rbp), %rdx
	movq	evp_keymgmt_util_try_import@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	movl	-68(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	evp_keymgmt_util_export@PLT
	testl	%eax, %eax
	jne	.L45
	movl	$0, %eax
	jmp	.L50
.L45:
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L46
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_freedata@PLT
	movl	$0, %eax
	jmp	.L50
.L46:
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_util_find_operation_cache@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L47
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L47
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_freedata@PLT
	movq	-24(%rbp), %rax
	jmp	.L50
.L47:
	movq	-56(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	%rax, %rdx
	je	.L48
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	evp_keymgmt_util_clear_operation_cache@PLT
.L48:
	movq	-40(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	evp_keymgmt_util_cache_keydata@PLT
	testl	%eax, %eax
	jne	.L49
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_freedata@PLT
	movl	$0, %eax
	jmp	.L50
.L49:
	movq	-56(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 128(%rax)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-40(%rbp), %rax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	evp_keymgmt_util_export_to_provider, .-evp_keymgmt_util_export_to_provider
	.type	op_cache_free, @function
op_cache_free:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_freedata@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$219, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	op_cache_free, .-op_cache_free
	.globl	evp_keymgmt_util_clear_operation_cache
	.type	evp_keymgmt_util_clear_operation_cache, @function
evp_keymgmt_util_clear_operation_cache:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L53
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	leaq	op_cache_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OP_CACHE_ELEM_pop_free
	movq	-8(%rbp), %rax
	movq	$0, 120(%rax)
.L53:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	evp_keymgmt_util_clear_operation_cache, .-evp_keymgmt_util_clear_operation_cache
	.globl	evp_keymgmt_util_find_operation_cache
	.type	evp_keymgmt_util_find_operation_cache, @function
evp_keymgmt_util_find_operation_cache:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	sk_OP_CACHE_ELEM_num
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L56
.L60:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OP_CACHE_ELEM_value
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	andl	-36(%rbp), %eax
	cmpl	%eax, -36(%rbp)
	jne	.L57
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	je	.L58
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jne	.L57
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L57
.L58:
	movq	-16(%rbp), %rax
	jmp	.L59
.L57:
	addl	$1, -4(%rbp)
.L56:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L60
	movl	$0, %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	evp_keymgmt_util_find_operation_cache, .-evp_keymgmt_util_find_operation_cache
	.globl	evp_keymgmt_util_cache_keydata
	.type	evp_keymgmt_util_cache_keydata, @function
evp_keymgmt_util_cache_keydata:
.LFB491:
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
	movl	%ecx, -44(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L62
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L63
	call	sk_OP_CACHE_ELEM_new_null
	movq	-24(%rbp), %rdx
	movq	%rax, 120(%rdx)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L63
	movl	$0, %eax
	jmp	.L64
.L63:
	leaq	.LC0(%rip), %rax
	movl	$268, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L65
	movl	$0, %eax
	jmp	.L64
.L65:
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_up_ref@PLT
	testl	%eax, %eax
	jne	.L66
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$276, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L64
.L66:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OP_CACHE_ELEM_push
	testl	%eax, %eax
	jne	.L62
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$282, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L64
.L62:
	movl	$1, %eax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	evp_keymgmt_util_cache_keydata, .-evp_keymgmt_util_cache_keydata
	.section	.rodata
.LC1:
	.string	"bits"
.LC2:
	.string	"security-bits"
.LC3:
	.string	"max-size"
	.text
	.globl	evp_keymgmt_util_cache_keyinfo
	.type	evp_keymgmt_util_cache_keyinfo, @function
evp_keymgmt_util_cache_keyinfo:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L70
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	leaq	-240(%rbp), %rax
	leaq	-4(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-240(%rbp), %rax
	leaq	-8(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -136(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-240(%rbp), %rax
	leaq	-12(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-184(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-184(%rbp), %rax
	movq	96(%rax), %rax
	leaq	-176(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_get_params@PLT
	testl	%eax, %eax
	je	.L70
	movl	-12(%rbp), %edx
	movq	-184(%rbp), %rax
	movl	%edx, 144(%rax)
	movl	-4(%rbp), %edx
	movq	-184(%rbp), %rax
	movl	%edx, 136(%rax)
	movl	-8(%rbp), %edx
	movq	-184(%rbp), %rax
	movl	%edx, 140(%rax)
.L70:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	evp_keymgmt_util_cache_keyinfo, .-evp_keymgmt_util_cache_keyinfo
	.globl	evp_keymgmt_util_fromdata
	.type	evp_keymgmt_util_fromdata, @function
evp_keymgmt_util_fromdata:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	evp_keymgmt_newdata@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L72
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	evp_keymgmt_import@PLT
	testl	%eax, %eax
	je	.L72
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_util_assign_pkey@PLT
	testl	%eax, %eax
	jne	.L73
.L72:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_freedata@PLT
	movq	$0, -8(%rbp)
.L73:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	evp_keymgmt_util_fromdata, .-evp_keymgmt_util_fromdata
	.globl	evp_keymgmt_util_has
	.type	evp_keymgmt_util_has, @function
evp_keymgmt_util_has:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L76
	movl	$0, %eax
	jmp	.L77
.L76:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movl	-12(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_has@PLT
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	evp_keymgmt_util_has, .-evp_keymgmt_util_has
	.globl	evp_keymgmt_util_match
	.type	evp_keymgmt_util_match, @function
evp_keymgmt_util_match:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L79
	cmpq	$0, -80(%rbp)
	jne	.L80
.L79:
	cmpq	$0, -72(%rbp)
	jne	.L81
	cmpq	$0, -80(%rbp)
	jne	.L81
	movl	$1, %eax
	jmp	.L82
.L81:
	movl	$0, %eax
	jmp	.L82
.L80:
	movq	-72(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-80(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-80(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L83
	movl	$0, -36(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L84
	cmpq	$0, -16(%rbp)
	je	.L84
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	match_type
	testl	%eax, %eax
	jne	.L84
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$384, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L82
.L84:
	cmpq	$0, -16(%rbp)
	je	.L85
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	$0, -48(%rbp)
	movl	$1, -36(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L86
	movl	-84(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_util_export_to_provider@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
.L86:
	cmpl	$0, -36(%rbp)
	je	.L85
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
.L85:
	cmpl	$0, -36(%rbp)
	jne	.L83
	cmpq	$0, -8(%rbp)
	je	.L83
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L83
	movq	$0, -56(%rbp)
	movl	$1, -36(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L87
	movl	-84(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_util_export_to_provider@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
.L87:
	cmpl	$0, -36(%rbp)
	je	.L83
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
.L83:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L88
	movl	$-2, %eax
	jmp	.L82
.L88:
	cmpq	$0, -24(%rbp)
	jne	.L89
	cmpq	$0, -32(%rbp)
	jne	.L89
	movl	$1, %eax
	jmp	.L82
.L89:
	cmpq	$0, -24(%rbp)
	je	.L90
	cmpq	$0, -32(%rbp)
	jne	.L91
.L90:
	movl	$0, %eax
	jmp	.L82
.L91:
	movl	-84(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	evp_keymgmt_match@PLT
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	evp_keymgmt_util_match, .-evp_keymgmt_util_match
	.globl	evp_keymgmt_util_copy
	.type	evp_keymgmt_util_copy, @function
evp_keymgmt_util_copy:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L93
	movq	-64(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L94
.L93:
	movl	$0, %eax
	jmp	.L95
.L94:
	cmpq	$0, -8(%rbp)
	jne	.L96
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -8(%rbp)
.L96:
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L97
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	testq	%rax, %rax
	je	.L97
	cmpq	$0, -16(%rbp)
	jne	.L97
	movq	-64(%rbp), %rax
	movq	104(%rax), %rcx
	movl	-68(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_dup@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L99
	movl	$0, %eax
	jmp	.L95
.L97:
	movq	-64(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	match_type
	testl	%eax, %eax
	je	.L100
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -32(%rbp)
	leaq	-48(%rbp), %rdx
	movq	evp_keymgmt_util_try_import@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	movl	-68(%rbp), %esi
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	evp_keymgmt_util_export@PLT
	testl	%eax, %eax
	jne	.L101
	movl	$0, %eax
	jmp	.L95
.L101:
	cmpq	$0, -16(%rbp)
	jne	.L99
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L99
.L100:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$489, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L95
.L99:
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L103
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set_type_by_keymgmt@PLT
	testl	%eax, %eax
	jne	.L103
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_freedata@PLT
	movl	$0, %eax
	jmp	.L95
.L103:
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 104(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	evp_keymgmt_util_cache_keyinfo@PLT
	movl	$1, %eax
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	evp_keymgmt_util_copy, .-evp_keymgmt_util_copy
	.globl	evp_keymgmt_util_gen
	.type	evp_keymgmt_util_gen, @function
evp_keymgmt_util_gen:
.LFB497:
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
	movq	$0, -8(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	evp_keymgmt_gen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L105
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_util_assign_pkey@PLT
	testl	%eax, %eax
	jne	.L106
.L105:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_freedata@PLT
	movq	$0, -8(%rbp)
.L106:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	evp_keymgmt_util_gen, .-evp_keymgmt_util_gen
	.section	.rodata
.LC4:
	.string	"default-digest"
.LC5:
	.string	"mandatory-digest"
.LC6:
	.string	"UNDEF"
	.text
	.globl	evp_keymgmt_util_get_deflt_digest_name
	.type	evp_keymgmt_util_get_deflt_digest_name, @function
evp_keymgmt_util_get_deflt_digest_name:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$448, %rsp
	movq	%rdi, -376(%rbp)
	movq	%rsi, -384(%rbp)
	movq	%rdx, -392(%rbp)
	movq	%rcx, -400(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movl	$0, -160(%rbp)
	movq	$0, -368(%rbp)
	movq	$0, -360(%rbp)
	movq	$0, -352(%rbp)
	movq	$0, -344(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -328(%rbp)
	movq	$0, -320(%rbp)
	movq	$0, -312(%rbp)
	movq	$0, -304(%rbp)
	movq	$0, -296(%rbp)
	movq	$0, -288(%rbp)
	movq	$0, -280(%rbp)
	movl	$0, -272(%rbp)
	movq	$0, -8(%rbp)
	movl	$-2, -12(%rbp)
	leaq	-448(%rbp), %rax
	leaq	-256(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movl	$100, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-416(%rbp), %rax
	movq	%rax, -112(%rbp)
	leaq	-448(%rbp), %rax
	leaq	-368(%rbp), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$100, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-416(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-416(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-144(%rbp), %rdx
	movq	-384(%rbp), %rcx
	movq	-376(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_get_params@PLT
	testl	%eax, %eax
	jne	.L109
	movl	$0, %eax
	jmp	.L118
.L109:
	leaq	-144(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	je	.L111
	movq	-72(%rbp), %rax
	cmpq	$1, %rax
	ja	.L112
	leaq	.LC6(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L113
.L112:
	leaq	-368(%rbp), %rax
	movq	%rax, -8(%rbp)
.L113:
	movl	$2, -12(%rbp)
	jmp	.L114
.L111:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	je	.L114
	movq	-112(%rbp), %rax
	cmpq	$1, %rax
	ja	.L115
	leaq	.LC6(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L116
.L115:
	leaq	-256(%rbp), %rax
	movq	%rax, -8(%rbp)
.L116:
	movl	$1, -12(%rbp)
.L114:
	cmpl	$0, -12(%rbp)
	jle	.L117
	movq	-400(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-392(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
.L117:
	movl	-12(%rbp), %eax
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	evp_keymgmt_util_get_deflt_digest_name, .-evp_keymgmt_util_get_deflt_digest_name
	.globl	evp_keymgmt_util_query_operation_name
	.type	evp_keymgmt_util_query_operation_name, @function
evp_keymgmt_util_query_operation_name:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L120
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	je	.L121
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	*%rdx
	movq	%rax, -8(%rbp)
.L121:
	cmpq	$0, -8(%rbp)
	jne	.L120
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_name@PLT
	movq	%rax, -8(%rbp)
.L120:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	evp_keymgmt_util_query_operation_name, .-evp_keymgmt_util_query_operation_name
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 28
__func__.3:
	.string	"evp_keymgmt_util_try_import"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 29
__func__.2:
	.string	"evp_keymgmt_util_assign_pkey"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 23
__func__.1:
	.string	"evp_keymgmt_util_match"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 22
__func__.0:
	.string	"evp_keymgmt_util_copy"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

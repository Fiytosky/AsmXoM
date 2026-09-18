	.file	"pmeth_lib.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB499:
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
.LFE499:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB500:
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
.LFE500:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	sk_EVP_PKEY_METHOD_num, @function
sk_EVP_PKEY_METHOD_num:
.LFB545:
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
.LFE545:
	.size	sk_EVP_PKEY_METHOD_num, .-sk_EVP_PKEY_METHOD_num
	.type	sk_EVP_PKEY_METHOD_value, @function
sk_EVP_PKEY_METHOD_value:
.LFB546:
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
.LFE546:
	.size	sk_EVP_PKEY_METHOD_value, .-sk_EVP_PKEY_METHOD_value
	.type	sk_EVP_PKEY_METHOD_new, @function
sk_EVP_PKEY_METHOD_new:
.LFB547:
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
	call	OPENSSL_sk_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	sk_EVP_PKEY_METHOD_new, .-sk_EVP_PKEY_METHOD_new
	.type	sk_EVP_PKEY_METHOD_delete_ptr, @function
sk_EVP_PKEY_METHOD_delete_ptr:
.LFB554:
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
	call	OPENSSL_sk_delete_ptr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE554:
	.size	sk_EVP_PKEY_METHOD_delete_ptr, .-sk_EVP_PKEY_METHOD_delete_ptr
	.type	sk_EVP_PKEY_METHOD_push, @function
sk_EVP_PKEY_METHOD_push:
.LFB555:
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
.LFE555:
	.size	sk_EVP_PKEY_METHOD_push, .-sk_EVP_PKEY_METHOD_push
	.type	sk_EVP_PKEY_METHOD_pop_free, @function
sk_EVP_PKEY_METHOD_pop_free:
.LFB559:
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
.LFE559:
	.size	sk_EVP_PKEY_METHOD_pop_free, .-sk_EVP_PKEY_METHOD_pop_free
	.type	sk_EVP_PKEY_METHOD_find, @function
sk_EVP_PKEY_METHOD_find:
.LFB562:
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
	call	OPENSSL_sk_find@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	sk_EVP_PKEY_METHOD_find, .-sk_EVP_PKEY_METHOD_find
	.type	sk_EVP_PKEY_METHOD_sort, @function
sk_EVP_PKEY_METHOD_sort:
.LFB565:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	sk_EVP_PKEY_METHOD_sort, .-sk_EVP_PKEY_METHOD_sort
	.local	app_pkey_methods
	.comm	app_pkey_methods,8,8
	.section	.data.rel,"aw"
	.align 32
	.type	standard_methods, @object
	.size	standard_methods, 80
standard_methods:
	.quad	ossl_rsa_pkey_method
	.quad	ossl_dh_pkey_method
	.quad	ossl_dsa_pkey_method
	.quad	ossl_ec_pkey_method
	.quad	ossl_rsa_pss_pkey_method
	.quad	ossl_dhx_pkey_method
	.quad	ossl_ecx25519_pkey_method
	.quad	ossl_ecx448_pkey_method
	.quad	ossl_ed25519_pkey_method
	.quad	ossl_ed448_pkey_method
	.text
	.type	pmeth_func_cmp, @function
pmeth_func_cmp:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %ebx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	call	*%rax
	movl	(%rax), %eax
	movl	%ebx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	pmeth_func_cmp, .-pmeth_func_cmp
	.type	pmeth_func_cmp_BSEARCH_CMP_FN, @function
pmeth_func_cmp_BSEARCH_CMP_FN:
.LFB621:
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
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pmeth_func_cmp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	pmeth_func_cmp_BSEARCH_CMP_FN, .-pmeth_func_cmp_BSEARCH_CMP_FN
	.type	OBJ_bsearch_pmeth_func, @function
OBJ_bsearch_pmeth_func:
.LFB622:
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
	leaq	pmeth_func_cmp_BSEARCH_CMP_FN(%rip), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$8, %ecx
	movq	%rax, %rdi
	call	OBJ_bsearch_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	OBJ_bsearch_pmeth_func, .-OBJ_bsearch_pmeth_func
	.type	pmeth_cmp, @function
pmeth_cmp:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	pmeth_cmp, .-pmeth_cmp
	.type	evp_pkey_meth_find_added_by_application, @function
evp_pkey_meth_find_added_by_application:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movl	%edi, -276(%rbp)
	movq	app_pkey_methods(%rip), %rax
	testq	%rax, %rax
	je	.L28
	movl	-276(%rbp), %eax
	movl	%eax, -272(%rbp)
	movq	app_pkey_methods(%rip), %rax
	leaq	-272(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_PKEY_METHOD_find
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L28
	movq	app_pkey_methods(%rip), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_PKEY_METHOD_value
	jmp	.L31
.L28:
	movl	$0, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	evp_pkey_meth_find_added_by_application, .-evp_pkey_meth_find_added_by_application
	.globl	EVP_PKEY_meth_find
	.type	EVP_PKEY_meth_find, @function
EVP_PKEY_meth_find:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movl	%edi, -292(%rbp)
	movl	-292(%rbp), %eax
	movl	%eax, %edi
	call	evp_pkey_meth_find_added_by_application
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	testq	%rax, %rax
	je	.L33
	movq	-280(%rbp), %rax
	jmp	.L37
.L33:
	movl	-292(%rbp), %eax
	movl	%eax, -272(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, -280(%rbp)
	leaq	standard_methods(%rip), %rcx
	leaq	-280(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OBJ_bsearch_pmeth_func
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L35
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L36
.L35:
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	call	*%rax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	EVP_PKEY_meth_find, .-EVP_PKEY_meth_find
	.section	.rodata
.LC0:
	.string	"../crypto/evp/pmeth_lib.c"
	.text
	.globl	EVP_PKEY_meth_new
	.type	EVP_PKEY_meth_new, @function
EVP_PKEY_meth_new:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$128, %edx
	movq	%rax, %rsi
	movl	$256, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L39
	movl	$0, %eax
	jmp	.L40
.L39:
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movl	-24(%rbp), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	EVP_PKEY_meth_new, .-EVP_PKEY_meth_new
	.globl	evp_pkey_ctx_state
	.type	evp_pkey_ctx_state, @function
evp_pkey_ctx_state:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L42
	movl	$0, %eax
	jmp	.L43
.L42:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2048, %eax
	jne	.L44
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L45
.L44:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	je	.L46
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$128, %eax
	je	.L46
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$32, %eax
	je	.L46
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$256, %eax
	je	.L46
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$64, %eax
	jne	.L47
.L46:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L45
.L47:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$512, %eax
	je	.L48
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1024, %eax
	jne	.L49
.L48:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L45
.L49:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L50
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L51
.L50:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L45
.L51:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4096, %eax
	je	.L52
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$8192, %eax
	jne	.L53
.L52:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L53
.L45:
	movl	$2, %eax
	jmp	.L43
.L53:
	movl	$1, %eax
.L43:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	evp_pkey_ctx_state, .-evp_pkey_ctx_state
	.type	int_ctx_new, @function
int_ctx_new:
.LFB628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movl	%r9d, -92(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpl	$-1, -92(%rbp)
	jne	.L55
	cmpq	$0, -64(%rbp)
	je	.L56
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L56
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -92(%rbp)
	jmp	.L55
.L56:
	cmpq	$0, -64(%rbp)
	je	.L57
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_name@PLT
	movq	%rax, -80(%rbp)
.L57:
	cmpq	$0, -80(%rbp)
	je	.L55
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_name2type@PLT
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jne	.L55
	movl	$-1, -92(%rbp)
.L55:
	cmpl	$-1, -92(%rbp)
	jne	.L58
	cmpq	$0, -72(%rbp)
	je	.L86
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$192, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$156, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L60
.L58:
	cmpq	$0, -72(%rbp)
	je	.L62
	movq	$0, -80(%rbp)
.L62:
	cmpq	$0, -72(%rbp)
	jne	.L63
	cmpq	$0, -64(%rbp)
	je	.L64
	movq	-64(%rbp), %rax
	movzbl	76(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L63
.L64:
	movl	-92(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, -80(%rbp)
.L63:
	cmpq	$0, -72(%rbp)
	jne	.L65
	cmpq	$0, -64(%rbp)
	je	.L65
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L66
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.L65
.L66:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
.L65:
	cmpq	$0, -72(%rbp)
	je	.L67
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_init@PLT
	testl	%eax, %eax
	jne	.L68
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$219, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524326, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L60
.L67:
	movl	-92(%rbp), %eax
	movl	%eax, %edi
	call	ENGINE_get_pkey_meth_engine@PLT
	movq	%rax, -72(%rbp)
.L68:
	cmpq	$0, -72(%rbp)
	je	.L69
	movl	-92(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ENGINE_get_pkey_meth@PLT
	movq	%rax, -16(%rbp)
	jmp	.L61
.L69:
	cmpq	$0, -64(%rbp)
	je	.L70
	movq	-64(%rbp), %rax
	movzbl	76(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L70
	movl	-92(%rbp), %eax
	movl	%eax, %edi
	call	EVP_PKEY_meth_find@PLT
	movq	%rax, -16(%rbp)
	jmp	.L61
.L70:
	movl	-92(%rbp), %eax
	movl	%eax, %edi
	call	evp_pkey_meth_find_added_by_application
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L61
.L86:
	nop
.L61:
	cmpq	$0, -72(%rbp)
	jne	.L71
	cmpq	$0, -24(%rbp)
	jne	.L71
	cmpq	$0, -80(%rbp)
	je	.L71
	cmpq	$0, -64(%rbp)
	je	.L72
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L72
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_up_ref@PLT
	testl	%eax, %eax
	jne	.L73
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$255, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L75
.L73:
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L75
.L72:
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_fetch@PLT
	movq	%rax, -32(%rbp)
.L75:
	cmpq	$0, -32(%rbp)
	jne	.L76
	movl	$0, %eax
	jmp	.L60
.L76:
	cmpq	$0, -32(%rbp)
	je	.L71
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	evp_keymgmt_get_legacy_alg@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L71
	cmpl	$-1, -92(%rbp)
	jne	.L77
	movl	-36(%rbp), %eax
	movl	%eax, -92(%rbp)
	jmp	.L71
.L77:
	movl	-92(%rbp), %eax
	cmpl	-36(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L71
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$284, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	movl	$0, %eax
	jmp	.L60
.L71:
	cmpq	$0, -16(%rbp)
	jne	.L78
	cmpq	$0, -32(%rbp)
	jne	.L78
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$295, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$156, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L79
.L78:
	leaq	.LC0(%rip), %rax
	movl	$297, %edx
	movq	%rax, %rsi
	movl	$176, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
.L79:
	cmpq	$0, -8(%rbp)
	je	.L80
	cmpq	$0, -16(%rbp)
	jne	.L81
.L80:
	cmpq	$0, -72(%rbp)
	je	.L81
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
.L81:
	cmpq	$0, -8(%rbp)
	jne	.L82
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	movl	$0, %eax
	jmp	.L60
.L82:
	cmpq	$0, -88(%rbp)
	je	.L83
	leaq	.LC0(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$310, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L83
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$312, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	movl	$0, %eax
	jmp	.L60
.L83:
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movl	-92(%rbp), %edx
	movl	%edx, 116(%rax)
	movq	-8(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 128(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 120(%rax)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 136(%rax)
	cmpq	$0, -64(%rbp)
	je	.L84
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
.L84:
	cmpq	$0, -16(%rbp)
	je	.L85
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jg	.L85
	movq	-8(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	$0, %eax
	jmp	.L60
.L85:
	movq	-8(%rbp), %rax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	int_ctx_new, .-int_ctx_new
	.globl	EVP_PKEY_CTX_new_from_name
	.type	EVP_PKEY_CTX_new_from_name, @function
EVP_PKEY_CTX_new_from_name:
.LFB629:
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
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$-1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	int_ctx_new
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	EVP_PKEY_CTX_new_from_name, .-EVP_PKEY_CTX_new_from_name
	.globl	EVP_PKEY_CTX_new_from_pkey
	.type	EVP_PKEY_CTX_new_from_pkey, @function
EVP_PKEY_CTX_new_from_pkey:
.LFB630:
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
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$-1, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	int_ctx_new
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	EVP_PKEY_CTX_new_from_pkey, .-EVP_PKEY_CTX_new_from_pkey
	.globl	evp_pkey_ctx_free_old_ops
	.type	evp_pkey_ctx_free_old_ops, @function
evp_pkey_ctx_free_old_ops:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	je	.L92
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$128, %eax
	je	.L92
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$32, %eax
	je	.L92
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$256, %eax
	je	.L92
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$64, %eax
	jne	.L93
.L92:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L94
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L94
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	160(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L94:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	jmp	.L95
.L93:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2048, %eax
	jne	.L96
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L97
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L97
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L97:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYEXCH_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	jmp	.L105
.L96:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4096, %eax
	je	.L98
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$8192, %eax
	jne	.L99
.L98:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L100
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L100
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L100:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEM_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	jmp	.L95
.L99:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$512, %eax
	je	.L101
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1024, %eax
	jne	.L102
.L101:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L103
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L103
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L103:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_ASYM_CIPHER_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	jmp	.L95
.L102:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L104
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L105
.L104:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L105
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L105
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_gen_cleanup@PLT
	jmp	.L105
.L95:
.L105:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	evp_pkey_ctx_free_old_ops, .-evp_pkey_ctx_free_old_ops
	.globl	EVP_PKEY_CTX_free
	.type	EVP_PKEY_CTX_free, @function
EVP_PKEY_CTX_free:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L110
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L109
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L109
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L109:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_ctx_free_old_ops@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_ctx_free_all_cached_data
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$400, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$407, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L106
.L110:
	nop
.L106:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	EVP_PKEY_CTX_free, .-EVP_PKEY_CTX_free
	.globl	EVP_PKEY_meth_get0_info
	.type	EVP_PKEY_meth_get0_info, @function
EVP_PKEY_meth_get0_info:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L112
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
.L112:
	cmpq	$0, -16(%rbp)
	je	.L114
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.L114:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	EVP_PKEY_meth_get0_info, .-EVP_PKEY_meth_get0_info
	.globl	EVP_PKEY_meth_copy
	.type	EVP_PKEY_meth_copy, @function
EVP_PKEY_meth_copy:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	64(%rdx), %rcx
	movq	72(%rdx), %rbx
	movq	%rcx, 64(%rax)
	movq	%rbx, 72(%rax)
	movq	80(%rdx), %rcx
	movq	88(%rdx), %rbx
	movq	%rcx, 80(%rax)
	movq	%rbx, 88(%rax)
	movq	96(%rdx), %rcx
	movq	104(%rdx), %rbx
	movq	%rcx, 96(%rax)
	movq	%rbx, 104(%rax)
	movq	112(%rdx), %rcx
	movq	120(%rdx), %rbx
	movq	%rcx, 112(%rax)
	movq	%rbx, 120(%rax)
	movq	128(%rdx), %rcx
	movq	136(%rdx), %rbx
	movq	%rcx, 128(%rax)
	movq	%rbx, 136(%rax)
	movq	144(%rdx), %rcx
	movq	152(%rdx), %rbx
	movq	%rcx, 144(%rax)
	movq	%rbx, 152(%rax)
	movq	160(%rdx), %rcx
	movq	168(%rdx), %rbx
	movq	%rcx, 160(%rax)
	movq	%rbx, 168(%rax)
	movq	176(%rdx), %rcx
	movq	184(%rdx), %rbx
	movq	%rcx, 176(%rax)
	movq	%rbx, 184(%rax)
	movq	192(%rdx), %rcx
	movq	200(%rdx), %rbx
	movq	%rcx, 192(%rax)
	movq	%rbx, 200(%rax)
	movq	208(%rdx), %rcx
	movq	216(%rdx), %rbx
	movq	%rcx, 208(%rax)
	movq	%rbx, 216(%rax)
	movq	224(%rdx), %rcx
	movq	232(%rdx), %rbx
	movq	%rcx, 224(%rax)
	movq	%rbx, 232(%rax)
	movq	240(%rdx), %rcx
	movq	248(%rdx), %rbx
	movq	%rcx, 240(%rax)
	movq	%rbx, 248(%rax)
	movq	-32(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 4(%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	EVP_PKEY_meth_copy, .-EVP_PKEY_meth_copy
	.globl	EVP_PKEY_meth_free
	.type	EVP_PKEY_meth_free, @function
EVP_PKEY_meth_free:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L118
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L118
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$436, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L118:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	EVP_PKEY_meth_free, .-EVP_PKEY_meth_free
	.globl	EVP_PKEY_CTX_new
	.type	EVP_PKEY_CTX_new, @function
EVP_PKEY_CTX_new:
.LFB636:
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
	movl	$-1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	int_ctx_new
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	EVP_PKEY_CTX_new, .-EVP_PKEY_CTX_new
	.globl	EVP_PKEY_CTX_new_id
	.type	EVP_PKEY_CTX_new_id, @function
EVP_PKEY_CTX_new_id:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	int_ctx_new
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	EVP_PKEY_CTX_new_id, .-EVP_PKEY_CTX_new_id
	.globl	EVP_PKEY_CTX_dup
	.type	EVP_PKEY_CTX_dup, @function
EVP_PKEY_CTX_dup:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L124
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_init@PLT
	testl	%eax, %eax
	jne	.L124
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$456, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524326, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L125
.L124:
	leaq	.LC0(%rip), %rax
	movl	$460, %edx
	movq	%rax, %rsi
	movl	$176, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L126
	movl	$0, %eax
	jmp	.L125
.L126:
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L127
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
.L127:
	movq	-40(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 136(%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L128
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$472, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L167
.L128:
	movq	-40(%rbp), %rax
	movl	116(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 116(%rax)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L130
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_up_ref@PLT
	testl	%eax, %eax
	je	.L168
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
.L130:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2048, %eax
	jne	.L132
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L133
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYEXCH_up_ref@PLT
	testl	%eax, %eax
	je	.L169
.L133:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L134
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L170
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L136
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	80(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
.L136:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L137
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYEXCH_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	jmp	.L129
.L137:
	movq	-8(%rbp), %rax
	jmp	.L125
.L132:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	je	.L138
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$128, %eax
	je	.L138
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$32, %eax
	je	.L138
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$256, %eax
	je	.L138
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$64, %eax
	jne	.L139
.L138:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L140
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_up_ref@PLT
	testl	%eax, %eax
	je	.L171
.L140:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L134
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L172
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	je	.L143
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	168(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
.L143:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L144
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	jmp	.L129
.L144:
	movq	-8(%rbp), %rax
	jmp	.L125
.L139:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$512, %eax
	je	.L145
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1024, %eax
	jne	.L146
.L145:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L147
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_ASYM_CIPHER_up_ref@PLT
	testl	%eax, %eax
	je	.L173
.L147:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L134
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L174
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L150
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	88(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
.L150:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L151
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_ASYM_CIPHER_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	jmp	.L129
.L151:
	movq	-8(%rbp), %rax
	jmp	.L125
.L146:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4096, %eax
	je	.L152
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$8192, %eax
	jne	.L153
.L152:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L154
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEM_up_ref@PLT
	testl	%eax, %eax
	je	.L175
.L154:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L134
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L176
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L157
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	88(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
.L157:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L158
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEM_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	jmp	.L129
.L158:
	movq	-8(%rbp), %rax
	jmp	.L125
.L153:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L177
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L177
.L134:
	movq	-40(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	-40(%rbp), %rax
	movq	128(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 128(%rax)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L160
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
.L160:
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 144(%rax)
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L161
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L129
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	jne	.L162
	movq	-8(%rbp), %rax
	jmp	.L125
.L162:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	leaq	-24(%rbp), %rdx
	movq	%rax, %rdi
	call	evp_pkey_export_to_provider@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L178
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_up_ref@PLT
	testl	%eax, %eax
	je	.L179
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	jmp	.L125
.L161:
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	16(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jle	.L180
	movq	-8(%rbp), %rax
	jmp	.L125
.L167:
	nop
	jmp	.L129
.L168:
	nop
	jmp	.L129
.L169:
	nop
	jmp	.L129
.L170:
	nop
	jmp	.L129
.L171:
	nop
	jmp	.L129
.L172:
	nop
	jmp	.L129
.L173:
	nop
	jmp	.L129
.L174:
	nop
	jmp	.L129
.L175:
	nop
	jmp	.L129
.L176:
	nop
	jmp	.L129
.L177:
	nop
	jmp	.L129
.L178:
	nop
	jmp	.L129
.L179:
	nop
	jmp	.L129
.L180:
	nop
.L129:
	movq	-8(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	$0, %eax
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	EVP_PKEY_CTX_dup, .-EVP_PKEY_CTX_dup
	.globl	EVP_PKEY_meth_add0
	.type	EVP_PKEY_meth_add0, @function
EVP_PKEY_meth_add0:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	app_pkey_methods(%rip), %rax
	testq	%rax, %rax
	jne	.L182
	leaq	pmeth_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_EVP_PKEY_METHOD_new
	movq	%rax, app_pkey_methods(%rip)
	movq	app_pkey_methods(%rip), %rax
	testq	%rax, %rax
	jne	.L182
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$614, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L183
.L182:
	movq	app_pkey_methods(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_PKEY_METHOD_push
	testl	%eax, %eax
	jne	.L184
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$619, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L183
.L184:
	movq	app_pkey_methods(%rip), %rax
	movq	%rax, %rdi
	call	sk_EVP_PKEY_METHOD_sort
	movl	$1, %eax
.L183:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	EVP_PKEY_meth_add0, .-EVP_PKEY_meth_add0
	.globl	evp_app_cleanup_int
	.type	evp_app_cleanup_int, @function
evp_app_cleanup_int:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	app_pkey_methods(%rip), %rax
	testq	%rax, %rax
	je	.L187
	movq	app_pkey_methods(%rip), %rax
	movq	EVP_PKEY_meth_free@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_PKEY_METHOD_pop_free
.L187:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	evp_app_cleanup_int, .-evp_app_cleanup_int
	.globl	EVP_PKEY_meth_remove
	.type	EVP_PKEY_meth_remove, @function
EVP_PKEY_meth_remove:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	app_pkey_methods(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_PKEY_METHOD_delete_ptr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	EVP_PKEY_meth_remove, .-EVP_PKEY_meth_remove
	.globl	EVP_PKEY_meth_get_count
	.type	EVP_PKEY_meth_get_count, @function
EVP_PKEY_meth_get_count:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$10, -8(%rbp)
	movq	app_pkey_methods(%rip), %rax
	testq	%rax, %rax
	je	.L191
	movq	app_pkey_methods(%rip), %rax
	movq	%rax, %rdi
	call	sk_EVP_PKEY_METHOD_num
	cltq
	addq	%rax, -8(%rbp)
.L191:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	EVP_PKEY_meth_get_count, .-EVP_PKEY_meth_get_count
	.globl	EVP_PKEY_meth_get0
	.type	EVP_PKEY_meth_get0, @function
EVP_PKEY_meth_get0:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$9, -8(%rbp)
	ja	.L194
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	standard_methods(%rip), %rax
	movq	(%rdx,%rax), %rax
	call	*%rax
	jmp	.L195
.L194:
	movq	app_pkey_methods(%rip), %rax
	testq	%rax, %rax
	jne	.L196
	movl	$0, %eax
	jmp	.L195
.L196:
	subq	$10, -8(%rbp)
	movq	app_pkey_methods(%rip), %rax
	movq	%rax, %rdi
	call	sk_EVP_PKEY_METHOD_num
	cltq
	cmpq	%rax, -8(%rbp)
	jb	.L197
	movl	$0, %eax
	jmp	.L195
.L197:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	app_pkey_methods(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_PKEY_METHOD_value
.L195:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	EVP_PKEY_meth_get0, .-EVP_PKEY_meth_get0
	.globl	EVP_PKEY_CTX_is_a
	.type	EVP_PKEY_CTX_is_a, @function
EVP_PKEY_CTX_is_a:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L199
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_name2type@PLT
	cmpl	%eax, %ebx
	sete	%al
	movzbl	%al, %eax
	jmp	.L200
.L199:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_is_a@PLT
.L200:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	EVP_PKEY_CTX_is_a, .-EVP_PKEY_CTX_is_a
	.globl	EVP_PKEY_CTX_set_params
	.type	EVP_PKEY_CTX_set_params, @function
EVP_PKEY_CTX_set_params:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_ctx_state@PLT
	cmpl	$2, %eax
	je	.L202
	cmpl	$2, %eax
	jg	.L203
	testl	%eax, %eax
	je	.L216
	cmpl	$1, %eax
	je	.L205
	jmp	.L203
.L202:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2048, %eax
	jne	.L206
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L206
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L206
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	88(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L207
.L206:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	je	.L208
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$128, %eax
	je	.L208
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$32, %eax
	je	.L208
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$256, %eax
	je	.L208
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$64, %eax
	jne	.L209
.L208:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L209
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L209
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	192(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L207
.L209:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$512, %eax
	je	.L210
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1024, %eax
	jne	.L211
.L210:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L211
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L211
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	112(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L207
.L211:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L212
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L213
.L212:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L213
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L213
	movq	-8(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_gen_set_params@PLT
	jmp	.L207
.L213:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4096, %eax
	je	.L214
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$8192, %eax
	jne	.L217
.L214:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L217
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L217
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	112(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L207
.L205:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_set_params_to_ctrl@PLT
	jmp	.L207
.L216:
	nop
	jmp	.L203
.L217:
	nop
.L203:
	movl	$0, %eax
.L207:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	EVP_PKEY_CTX_set_params, .-EVP_PKEY_CTX_set_params
	.globl	EVP_PKEY_CTX_get_params
	.type	EVP_PKEY_CTX_get_params, @function
EVP_PKEY_CTX_get_params:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_ctx_state@PLT
	cmpl	$2, %eax
	je	.L219
	cmpl	$2, %eax
	jg	.L220
	testl	%eax, %eax
	je	.L231
	cmpl	$1, %eax
	je	.L222
	jmp	.L220
.L219:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2048, %eax
	jne	.L223
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L223
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L223
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	104(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L224
.L223:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	je	.L225
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$128, %eax
	je	.L225
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$32, %eax
	je	.L225
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$256, %eax
	je	.L225
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$64, %eax
	jne	.L226
.L225:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L226
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L226
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	176(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L224
.L226:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$512, %eax
	je	.L227
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1024, %eax
	jne	.L228
.L227:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L228
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L228
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	96(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L224
.L228:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4096, %eax
	je	.L229
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$8192, %eax
	jne	.L232
.L229:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L232
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L232
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	96(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L224
.L222:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_get_params_to_ctrl@PLT
	jmp	.L224
.L231:
	nop
	jmp	.L220
.L232:
	nop
.L220:
	movl	$0, %eax
.L224:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	EVP_PKEY_CTX_get_params, .-EVP_PKEY_CTX_get_params
	.globl	EVP_PKEY_CTX_gettable_params
	.type	EVP_PKEY_CTX_gettable_params, @function
EVP_PKEY_CTX_gettable_params:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2048, %eax
	jne	.L234
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L234
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L234
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYEXCH_get0_provider@PLT
	movq	%rax, %rdi
	call	ossl_provider_ctx@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	112(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L235
.L234:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	je	.L236
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$128, %eax
	je	.L236
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$32, %eax
	je	.L236
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$256, %eax
	je	.L236
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$64, %eax
	jne	.L237
.L236:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L237
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	je	.L237
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_get0_provider@PLT
	movq	%rax, %rdi
	call	ossl_provider_ctx@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	184(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L235
.L237:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$512, %eax
	je	.L238
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1024, %eax
	jne	.L239
.L238:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L239
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L239
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_ASYM_CIPHER_get0_provider@PLT
	movq	%rax, %rdi
	call	ossl_provider_ctx@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	104(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L235
.L239:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4096, %eax
	je	.L240
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$8192, %eax
	jne	.L241
.L240:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L241
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L241
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEM_get0_provider@PLT
	movq	%rax, %rdi
	call	ossl_provider_ctx@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	104(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L235
.L241:
	movl	$0, %eax
.L235:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	EVP_PKEY_CTX_gettable_params, .-EVP_PKEY_CTX_gettable_params
	.globl	EVP_PKEY_CTX_settable_params
	.type	EVP_PKEY_CTX_settable_params, @function
EVP_PKEY_CTX_settable_params:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2048, %eax
	jne	.L243
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L243
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L243
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYEXCH_get0_provider@PLT
	movq	%rax, %rdi
	call	ossl_provider_ctx@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	96(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L244
.L243:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	je	.L245
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$128, %eax
	je	.L245
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$32, %eax
	je	.L245
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$256, %eax
	je	.L245
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$64, %eax
	jne	.L246
.L245:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L246
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	200(%rax), %rax
	testq	%rax, %rax
	je	.L246
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_get0_provider@PLT
	movq	%rax, %rdi
	call	ossl_provider_ctx@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	200(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L244
.L246:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$512, %eax
	je	.L247
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1024, %eax
	jne	.L248
.L247:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L248
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L248
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_ASYM_CIPHER_get0_provider@PLT
	movq	%rax, %rdi
	call	ossl_provider_ctx@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L244
.L248:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L249
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L250
.L249:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L250
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L250
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_provider@PLT
	movq	%rax, %rdi
	call	ossl_provider_ctx@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	120(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L244
.L250:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4096, %eax
	je	.L251
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$8192, %eax
	jne	.L252
.L251:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L252
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L252
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEM_get0_provider@PLT
	movq	%rax, %rdi
	call	ossl_provider_ctx@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L244
.L252:
	movl	$0, %eax
.L244:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	EVP_PKEY_CTX_settable_params, .-EVP_PKEY_CTX_settable_params
	.globl	evp_pkey_ctx_set_params_strict
	.type	evp_pkey_ctx_set_params_strict, @function
evp_pkey_ctx_set_params_strict:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L254
	cmpq	$0, -32(%rbp)
	jne	.L255
.L254:
	movl	$0, %eax
	jmp	.L256
.L255:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L257
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_settable_params@PLT
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L258
.L260:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	jne	.L259
	movl	$-2, %eax
	jmp	.L256
.L259:
	addq	$40, -8(%rbp)
.L258:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L260
.L257:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
.L256:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	evp_pkey_ctx_set_params_strict, .-evp_pkey_ctx_set_params_strict
	.globl	evp_pkey_ctx_get_params_strict
	.type	evp_pkey_ctx_get_params_strict, @function
evp_pkey_ctx_get_params_strict:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L262
	cmpq	$0, -32(%rbp)
	jne	.L263
.L262:
	movl	$0, %eax
	jmp	.L264
.L263:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L265
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_gettable_params@PLT
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L266
.L268:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	jne	.L267
	movl	$-2, %eax
	jmp	.L264
.L267:
	addq	$40, -8(%rbp)
.L266:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L268
.L265:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_params@PLT
.L264:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	evp_pkey_ctx_get_params_strict, .-evp_pkey_ctx_get_params_strict
	.section	.rodata
.LC1:
	.string	"digest"
	.text
	.globl	EVP_PKEY_CTX_get_signature_md
	.type	EVP_PKEY_CTX_get_signature_md, @function
EVP_PKEY_CTX_get_signature_md:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	cmpq	$0, -200(%rbp)
	je	.L270
	movq	-200(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	je	.L271
	movq	-200(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$128, %eax
	je	.L271
	movq	-200(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$32, %eax
	je	.L271
	movq	-200(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$256, %eax
	je	.L271
	movq	-200(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$64, %eax
	je	.L271
.L270:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$908, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L276
.L271:
	movq	-200(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L273
	movq	-208(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$13, %ecx
	movl	$496, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	jmp	.L276
.L273:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-256(%rbp), %rax
	leaq	-192(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$80, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-224(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-224(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-112(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_params@PLT
	testl	%eax, %eax
	jne	.L274
	movl	$0, %eax
	jmp	.L276
.L274:
	movq	-200(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-192(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_get_digestbyname_ex@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L275
	movl	$0, %eax
	jmp	.L276
.L275:
	movq	-208(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L276:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	EVP_PKEY_CTX_get_signature_md, .-EVP_PKEY_CTX_get_signature_md
	.section	.rodata
.LC2:
	.string	""
	.text
	.type	evp_pkey_ctx_set_md, @function
evp_pkey_ctx_set_md:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	%edx, -132(%rbp)
	movq	%rcx, -144(%rbp)
	movl	%r8d, -136(%rbp)
	movl	%r9d, -148(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L278
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	andl	-136(%rbp), %eax
	testl	%eax, %eax
	jne	.L279
.L278:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$942, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L284
.L279:
	cmpl	$0, -132(%rbp)
	je	.L281
	movq	-128(%rbp), %rsi
	movl	-148(%rbp), %ecx
	movl	-136(%rbp), %edx
	movq	-120(%rbp), %rax
	movq	%rsi, %r9
	movl	$0, %r8d
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	jmp	.L284
.L281:
	cmpq	$0, -128(%rbp)
	jne	.L282
	leaq	.LC2(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L283
.L282:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, -24(%rbp)
.L283:
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-208(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-144(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-176(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-176(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-112(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
.L284:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	evp_pkey_ctx_set_md, .-evp_pkey_ctx_set_md
	.globl	EVP_PKEY_CTX_set_signature_md
	.type	EVP_PKEY_CTX_set_signature_md, @function
EVP_PKEY_CTX_set_signature_md:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %edx
	leaq	.LC1(%rip), %rcx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r9d
	movl	$496, %r8d
	movq	%rax, %rdi
	call	evp_pkey_ctx_set_md
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	EVP_PKEY_CTX_set_signature_md, .-EVP_PKEY_CTX_set_signature_md
	.globl	EVP_PKEY_CTX_set_tls1_prf_md
	.type	EVP_PKEY_CTX_set_tls1_prf_md, @function
EVP_PKEY_CTX_set_tls1_prf_md:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %edx
	leaq	.LC1(%rip), %rcx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$4096, %r9d
	movl	$2048, %r8d
	movq	%rax, %rdi
	call	evp_pkey_ctx_set_md
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	EVP_PKEY_CTX_set_tls1_prf_md, .-EVP_PKEY_CTX_set_tls1_prf_md
	.type	evp_pkey_ctx_set1_octet_string, @function
evp_pkey_ctx_set1_octet_string:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movq	%rdx, -136(%rbp)
	movl	%ecx, -128(%rbp)
	movl	%r8d, -140(%rbp)
	movq	%r9, -152(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L290
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	andl	-128(%rbp), %eax
	testl	%eax, %eax
	jne	.L291
.L290:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$989, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L295
.L291:
	cmpl	$0, -124(%rbp)
	je	.L293
	movq	-152(%rbp), %rdi
	movl	16(%rbp), %esi
	movl	-140(%rbp), %ecx
	movl	-128(%rbp), %edx
	movq	-120(%rbp), %rax
	movq	%rdi, %r9
	movl	%esi, %r8d
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	jmp	.L295
.L293:
	cmpl	$0, 16(%rbp)
	jns	.L294
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1000, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$221, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L295
.L294:
	movl	16(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-208(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-176(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-176(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-112(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
.L295:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	evp_pkey_ctx_set1_octet_string, .-evp_pkey_ctx_set1_octet_string
	.type	evp_pkey_ctx_add1_octet_string, @function
evp_pkey_ctx_add1_octet_string:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -136(%rbp)
	movl	%esi, -140(%rbp)
	movq	%rdx, -152(%rbp)
	movl	%ecx, -144(%rbp)
	movl	%r8d, -156(%rbp)
	movq	%r9, -168(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L297
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	andl	-144(%rbp), %eax
	testl	%eax, %eax
	jne	.L298
.L297:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1029, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L311
.L298:
	cmpl	$0, -140(%rbp)
	je	.L300
	movq	-168(%rbp), %rdi
	movl	16(%rbp), %esi
	movl	-156(%rbp), %ecx
	movl	-144(%rbp), %edx
	movq	-136(%rbp), %rax
	movq	%rdi, %r9
	movl	%esi, %r8d
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	jmp	.L311
.L300:
	cmpl	$0, 16(%rbp)
	jns	.L301
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1040, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$221, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L311
.L301:
	cmpl	$0, 16(%rbp)
	jne	.L302
	movl	$1, %eax
	jmp	.L311
.L302:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_gettable_params@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L303
	movq	-152(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	jne	.L304
.L303:
	movq	-168(%rbp), %r9
	movl	-156(%rbp), %r8d
	movl	-144(%rbp), %ecx
	movq	-152(%rbp), %rdx
	movl	-140(%rbp), %esi
	movq	-136(%rbp), %rax
	subq	$8, %rsp
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	evp_pkey_ctx_set1_octet_string
	addq	$16, %rsp
	jmp	.L311
.L304:
	leaq	-224(%rbp), %rax
	movq	-152(%rbp), %rsi
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-128(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_params@PLT
	testl	%eax, %eax
	jne	.L305
	movl	$0, %eax
	jmp	.L311
.L305:
	movq	-96(%rbp), %rax
	cmpq	$-1, %rax
	jne	.L306
	movl	$0, %eax
	jmp	.L311
.L306:
	movq	-96(%rbp), %rdx
	movl	16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L307
	movl	$0, %eax
	jmp	.L311
.L307:
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1066, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L308
	movl	$0, %eax
	jmp	.L311
.L308:
	movq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-224(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -96(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L309
	leaq	-128(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_params@PLT
	testl	%eax, %eax
	je	.L312
.L309:
	movl	16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	addq	%rax, %rcx
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	leaq	-128(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	movl	%eax, -4(%rbp)
	jmp	.L310
.L312:
	nop
.L310:
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$1084, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-4(%rbp), %eax
.L311:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	evp_pkey_ctx_add1_octet_string, .-evp_pkey_ctx_add1_octet_string
	.section	.rodata
.LC3:
	.string	"secret"
	.text
	.globl	EVP_PKEY_CTX_set1_tls1_prf_secret
	.type	EVP_PKEY_CTX_set1_tls1_prf_secret, @function
EVP_PKEY_CTX_set1_tls1_prf_secret:
.LFB657:
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
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %esi
	movq	-16(%rbp), %rdi
	leaq	.LC3(%rip), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movl	-20(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movl	$4097, %r8d
	movl	$2048, %ecx
	movq	%rax, %rdi
	call	evp_pkey_ctx_set1_octet_string
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	EVP_PKEY_CTX_set1_tls1_prf_secret, .-EVP_PKEY_CTX_set1_tls1_prf_secret
	.section	.rodata
.LC4:
	.string	"seed"
	.text
	.globl	EVP_PKEY_CTX_add1_tls1_prf_seed
	.type	EVP_PKEY_CTX_add1_tls1_prf_seed, @function
EVP_PKEY_CTX_add1_tls1_prf_seed:
.LFB658:
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
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %esi
	movq	-16(%rbp), %rdi
	leaq	.LC4(%rip), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movl	-20(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movl	$4098, %r8d
	movl	$2048, %ecx
	movq	%rax, %rdi
	call	evp_pkey_ctx_set1_octet_string
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	EVP_PKEY_CTX_add1_tls1_prf_seed, .-EVP_PKEY_CTX_add1_tls1_prf_seed
	.globl	EVP_PKEY_CTX_set_hkdf_md
	.type	EVP_PKEY_CTX_set_hkdf_md, @function
EVP_PKEY_CTX_set_hkdf_md:
.LFB659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %edx
	leaq	.LC1(%rip), %rcx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$4099, %r9d
	movl	$2048, %r8d
	movq	%rax, %rdi
	call	evp_pkey_ctx_set_md
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	EVP_PKEY_CTX_set_hkdf_md, .-EVP_PKEY_CTX_set_hkdf_md
	.section	.rodata
.LC5:
	.string	"salt"
	.text
	.globl	EVP_PKEY_CTX_set1_hkdf_salt
	.type	EVP_PKEY_CTX_set1_hkdf_salt, @function
EVP_PKEY_CTX_set1_hkdf_salt:
.LFB660:
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
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %esi
	movq	-16(%rbp), %rdi
	leaq	.LC5(%rip), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movl	-20(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movl	$4100, %r8d
	movl	$2048, %ecx
	movq	%rax, %rdi
	call	evp_pkey_ctx_set1_octet_string
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	EVP_PKEY_CTX_set1_hkdf_salt, .-EVP_PKEY_CTX_set1_hkdf_salt
	.section	.rodata
.LC6:
	.string	"key"
	.text
	.globl	EVP_PKEY_CTX_set1_hkdf_key
	.type	EVP_PKEY_CTX_set1_hkdf_key, @function
EVP_PKEY_CTX_set1_hkdf_key:
.LFB661:
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
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %esi
	movq	-16(%rbp), %rdi
	leaq	.LC6(%rip), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movl	-20(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movl	$4101, %r8d
	movl	$2048, %ecx
	movq	%rax, %rdi
	call	evp_pkey_ctx_set1_octet_string
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	EVP_PKEY_CTX_set1_hkdf_key, .-EVP_PKEY_CTX_set1_hkdf_key
	.section	.rodata
.LC7:
	.string	"info"
	.text
	.globl	EVP_PKEY_CTX_add1_hkdf_info
	.type	EVP_PKEY_CTX_add1_hkdf_info, @function
EVP_PKEY_CTX_add1_hkdf_info:
.LFB662:
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
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %esi
	movq	-16(%rbp), %rdi
	leaq	.LC7(%rip), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movl	-20(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movl	$4102, %r8d
	movl	$2048, %ecx
	movq	%rax, %rdi
	call	evp_pkey_ctx_add1_octet_string
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	EVP_PKEY_CTX_add1_hkdf_info, .-EVP_PKEY_CTX_add1_hkdf_info
	.section	.rodata
.LC8:
	.string	"mode"
	.text
	.globl	EVP_PKEY_CTX_set_hkdf_mode
	.type	EVP_PKEY_CTX_set_hkdf_mode, @function
EVP_PKEY_CTX_set_hkdf_mode:
.LFB663:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L326
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2048, %eax
	je	.L327
.L326:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1150, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L331
.L327:
	movq	-120(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L329
	movl	-124(%rbp), %edx
	movq	-120(%rbp), %rax
	movl	$0, %r9d
	movl	%edx, %r8d
	movl	$4103, %ecx
	movl	$2048, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	jmp	.L331
.L329:
	movl	-124(%rbp), %eax
	testl	%eax, %eax
	jns	.L330
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1162, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$222, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L331
.L330:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-176(%rbp), %rax
	leaq	-124(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-112(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
.L331:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	EVP_PKEY_CTX_set_hkdf_mode, .-EVP_PKEY_CTX_set_hkdf_mode
	.section	.rodata
.LC9:
	.string	"pass"
	.text
	.globl	EVP_PKEY_CTX_set1_pbe_pass
	.type	EVP_PKEY_CTX_set1_pbe_pass, @function
EVP_PKEY_CTX_set1_pbe_pass:
.LFB664:
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
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %esi
	movq	-16(%rbp), %rdi
	leaq	.LC9(%rip), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movl	-20(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movl	$4104, %r8d
	movl	$2048, %ecx
	movq	%rax, %rdi
	call	evp_pkey_ctx_set1_octet_string
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	EVP_PKEY_CTX_set1_pbe_pass, .-EVP_PKEY_CTX_set1_pbe_pass
	.globl	EVP_PKEY_CTX_set1_scrypt_salt
	.type	EVP_PKEY_CTX_set1_scrypt_salt, @function
EVP_PKEY_CTX_set1_scrypt_salt:
.LFB665:
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
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %esi
	movq	-16(%rbp), %rdi
	leaq	.LC5(%rip), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movl	-20(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movl	$4105, %r8d
	movl	$2048, %ecx
	movq	%rax, %rdi
	call	evp_pkey_ctx_set1_octet_string
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	EVP_PKEY_CTX_set1_scrypt_salt, .-EVP_PKEY_CTX_set1_scrypt_salt
	.type	evp_pkey_ctx_set_uint64, @function
evp_pkey_ctx_set_uint64:
.LFB666:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	%edx, -132(%rbp)
	movl	%ecx, -136(%rbp)
	movq	%r8, -144(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L337
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2048, %eax
	je	.L338
.L337:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1198, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L341
.L338:
	movq	-120(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L340
	movq	-144(%rbp), %rsi
	movl	-136(%rbp), %ecx
	movl	-132(%rbp), %edx
	movq	-120(%rbp), %rax
	movq	%rsi, %r8
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl_uint64@PLT
	jmp	.L341
.L340:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-192(%rbp), %rax
	leaq	-144(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint64@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-112(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
.L341:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	evp_pkey_ctx_set_uint64, .-evp_pkey_ctx_set_uint64
	.section	.rodata
.LC10:
	.string	"n"
	.text
	.globl	EVP_PKEY_CTX_set_scrypt_N
	.type	EVP_PKEY_CTX_set_scrypt_N, @function
EVP_PKEY_CTX_set_scrypt_N:
.LFB667:
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
	leaq	.LC10(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %r8
	movl	$4106, %ecx
	movl	$2048, %edx
	movq	%rax, %rdi
	call	evp_pkey_ctx_set_uint64
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE667:
	.size	EVP_PKEY_CTX_set_scrypt_N, .-EVP_PKEY_CTX_set_scrypt_N
	.section	.rodata
.LC11:
	.string	"r"
	.text
	.globl	EVP_PKEY_CTX_set_scrypt_r
	.type	EVP_PKEY_CTX_set_scrypt_r, @function
EVP_PKEY_CTX_set_scrypt_r:
.LFB668:
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
	leaq	.LC11(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %r8
	movl	$4107, %ecx
	movl	$2048, %edx
	movq	%rax, %rdi
	call	evp_pkey_ctx_set_uint64
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	EVP_PKEY_CTX_set_scrypt_r, .-EVP_PKEY_CTX_set_scrypt_r
	.section	.rodata
.LC12:
	.string	"p"
	.text
	.globl	EVP_PKEY_CTX_set_scrypt_p
	.type	EVP_PKEY_CTX_set_scrypt_p, @function
EVP_PKEY_CTX_set_scrypt_p:
.LFB669:
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
	leaq	.LC12(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %r8
	movl	$4108, %ecx
	movl	$2048, %edx
	movq	%rax, %rdi
	call	evp_pkey_ctx_set_uint64
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE669:
	.size	EVP_PKEY_CTX_set_scrypt_p, .-EVP_PKEY_CTX_set_scrypt_p
	.section	.rodata
.LC13:
	.string	"maxmem_bytes"
	.text
	.globl	EVP_PKEY_CTX_set_scrypt_maxmem_bytes
	.type	EVP_PKEY_CTX_set_scrypt_maxmem_bytes, @function
EVP_PKEY_CTX_set_scrypt_maxmem_bytes:
.LFB670:
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
	leaq	.LC13(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %r8
	movl	$4109, %ecx
	movl	$2048, %edx
	movq	%rax, %rdi
	call	evp_pkey_ctx_set_uint64
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	EVP_PKEY_CTX_set_scrypt_maxmem_bytes, .-EVP_PKEY_CTX_set_scrypt_maxmem_bytes
	.section	.rodata
.LC14:
	.string	"priv"
	.text
	.globl	EVP_PKEY_CTX_set_mac_key
	.type	EVP_PKEY_CTX_set_mac_key, @function
EVP_PKEY_CTX_set_mac_key:
.LFB671:
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
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %esi
	movq	-16(%rbp), %rdi
	leaq	.LC14(%rip), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movl	-20(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movl	$6, %r8d
	movl	$4, %ecx
	movq	%rax, %rdi
	call	evp_pkey_ctx_set1_octet_string
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	EVP_PKEY_CTX_set_mac_key, .-EVP_PKEY_CTX_set_mac_key
	.section	.rodata
.LC15:
	.string	"operation"
	.text
	.globl	EVP_PKEY_CTX_set_kem_op
	.type	EVP_PKEY_CTX_set_kem_op, @function
EVP_PKEY_CTX_set_kem_op:
.LFB672:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L353
	cmpq	$0, -128(%rbp)
	jne	.L354
.L353:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1259, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$222, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L357
.L354:
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4096, %eax
	je	.L356
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$8192, %eax
	je	.L356
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1263, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L357
.L356:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-176(%rbp), %rax
	movq	-128(%rbp), %rdx
	leaq	.LC15(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-112(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
.L357:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	EVP_PKEY_CTX_set_kem_op, .-EVP_PKEY_CTX_set_kem_op
	.globl	EVP_PKEY_CTX_set1_id
	.type	EVP_PKEY_CTX_set1_id, @function
EVP_PKEY_CTX_set1_id:
.LFB673:
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
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rcx, %r9
	movl	%edx, %r8d
	movl	$15, %ecx
	movl	$-1, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	EVP_PKEY_CTX_set1_id, .-EVP_PKEY_CTX_set1_id
	.globl	EVP_PKEY_CTX_get1_id
	.type	EVP_PKEY_CTX_get1_id, @function
EVP_PKEY_CTX_get1_id:
.LFB674:
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
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$16, %ecx
	movl	$-1, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	EVP_PKEY_CTX_get1_id, .-EVP_PKEY_CTX_get1_id
	.globl	EVP_PKEY_CTX_get1_id_len
	.type	EVP_PKEY_CTX_get1_id_len, @function
EVP_PKEY_CTX_get1_id_len:
.LFB675:
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
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$17, %ecx
	movl	$-1, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	EVP_PKEY_CTX_get1_id_len, .-EVP_PKEY_CTX_get1_id_len
	.type	evp_pkey_ctx_ctrl_int, @function
evp_pkey_ctx_ctrl_int:
.LFB676:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L365
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	248(%rax), %rax
	testq	%rax, %rax
	jne	.L366
.L365:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L367
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1301, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$149, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L368
.L367:
	cmpl	$-1, -32(%rbp)
	je	.L366
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	andl	-32(%rbp), %eax
	testl	%eax, %eax
	jne	.L366
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1306, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$148, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L368
.L366:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_ctx_state@PLT
	cmpl	$1, %eax
	jg	.L369
	testl	%eax, %eax
	jns	.L370
	jmp	.L371
.L369:
	cmpl	$2, %eax
	jne	.L371
	movq	-48(%rbp), %r8
	movl	-40(%rbp), %edi
	movl	-36(%rbp), %ecx
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	evp_pkey_ctx_ctrl_to_param@PLT
	jmp	.L368
.L370:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L372
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	jne	.L373
.L372:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1317, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L368
.L373:
	cmpl	$-1, -28(%rbp)
	je	.L374
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -28(%rbp)
	je	.L374
	movl	$-1, %eax
	jmp	.L368
.L374:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	192(%rax), %r8
	movq	-48(%rbp), %rcx
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
	cmpl	$-2, -4(%rbp)
	jne	.L376
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1326, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L376:
	nop
.L371:
	movl	-4(%rbp), %eax
.L368:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE676:
	.size	evp_pkey_ctx_ctrl_int, .-evp_pkey_ctx_ctrl_int
	.globl	EVP_PKEY_CTX_ctrl
	.type	EVP_PKEY_CTX_ctrl, @function
EVP_PKEY_CTX_ctrl:
.LFB677:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L378
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1338, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L379
.L378:
	call	ERR_set_mark@PLT
	movl	-40(%rbp), %eax
	movslq	%eax, %rdi
	movq	-48(%rbp), %r8
	movl	-36(%rbp), %ecx
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%r8, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	evp_pkey_ctx_store_cached_data
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	cmpl	$-2, -4(%rbp)
	jne	.L380
	call	ERR_pop_to_mark@PLT
	jmp	.L381
.L380:
	call	ERR_clear_last_mark@PLT
	cmpl	$0, -4(%rbp)
	jle	.L382
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L381
.L382:
	movl	-4(%rbp), %eax
	jmp	.L379
.L381:
	movq	-48(%rbp), %r8
	movl	-40(%rbp), %edi
	movl	-36(%rbp), %ecx
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	evp_pkey_ctx_ctrl_int
.L379:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	EVP_PKEY_CTX_ctrl, .-EVP_PKEY_CTX_ctrl
	.globl	EVP_PKEY_CTX_ctrl_uint64
	.type	EVP_PKEY_CTX_ctrl_uint64, @function
EVP_PKEY_CTX_ctrl_uint64:
.LFB678:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	leaq	-32(%rbp), %rdi
	movl	-20(%rbp), %ecx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	EVP_PKEY_CTX_ctrl_uint64, .-EVP_PKEY_CTX_ctrl_uint64
	.type	evp_pkey_ctx_ctrl_str_int, @function
evp_pkey_ctx_ctrl_str_int:
.LFB679:
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
	movl	$0, -4(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L386
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1373, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L387
.L386:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_ctx_state@PLT
	cmpl	$1, %eax
	jg	.L388
	testl	%eax, %eax
	jns	.L389
	jmp	.L390
.L388:
	cmpl	$2, %eax
	jne	.L390
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_ctrl_str_to_param@PLT
	jmp	.L387
.L389:
	cmpq	$0, -24(%rbp)
	je	.L391
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L391
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	200(%rax), %rax
	testq	%rax, %rax
	jne	.L392
.L391:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1383, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L387
.L392:
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L393
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$2032, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_md@PLT
	movl	%eax, -4(%rbp)
	jmp	.L395
.L393:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	200(%rax), %r8
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
.L395:
	nop
.L390:
	movl	-4(%rbp), %eax
.L387:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE679:
	.size	evp_pkey_ctx_ctrl_str_int, .-evp_pkey_ctx_ctrl_str_int
	.globl	EVP_PKEY_CTX_ctrl_str
	.type	EVP_PKEY_CTX_ctrl_str, @function
EVP_PKEY_CTX_ctrl_str:
.LFB680:
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
	movl	$0, -4(%rbp)
	call	ERR_set_mark@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movq	%rsi, %r9
	movq	%rcx, %r8
	movl	$-1, %ecx
	movl	$-1, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	evp_pkey_ctx_store_cached_data
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	cmpl	$-2, -4(%rbp)
	jne	.L397
	call	ERR_pop_to_mark@PLT
	jmp	.L398
.L397:
	call	ERR_clear_last_mark@PLT
	cmpl	$0, -4(%rbp)
	jle	.L399
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L398
.L399:
	movl	-4(%rbp), %eax
	jmp	.L400
.L398:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_ctrl_str_int
.L400:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	EVP_PKEY_CTX_ctrl_str, .-EVP_PKEY_CTX_ctrl_str
	.section	.rodata
.LC16:
	.string	"distid"
.LC17:
	.string	"hexdistid"
	.text
	.type	decode_cmd, @function
decode_cmd:
.LFB681:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L402
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L402
	leaq	.LC16(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L403
	leaq	.LC17(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L402
.L403:
	movl	$15, -4(%rbp)
.L402:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	decode_cmd, .-decode_cmd
	.type	evp_pkey_ctx_store_cached_data, @function
evp_pkey_ctx_store_cached_data:
.LFB682:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	decode_cmd
	movl	%eax, -36(%rbp)
	cmpl	$15, -36(%rbp)
	je	.L421
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1453, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L408
.L421:
	nop
	cmpl	$-1, -28(%rbp)
	je	.L409
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_ctx_state@PLT
	cmpl	$1, %eax
	jg	.L410
	testl	%eax, %eax
	jns	.L411
	jmp	.L409
.L410:
	cmpl	$2, %eax
	jne	.L409
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L412
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1461, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L408
.L412:
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	evp_pkey_type2name@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_is_a@PLT
	testl	%eax, %eax
	jne	.L422
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1466, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$148, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L408
.L411:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L414
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1473, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L408
.L414:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	EVP_PKEY_type@PLT
	movl	%eax, %ebx
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	EVP_PKEY_type@PLT
	cmpl	%eax, %ebx
	je	.L423
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1477, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$148, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L408
.L422:
	nop
	jmp	.L409
.L423:
	nop
.L409:
	cmpl	$-1, -32(%rbp)
	je	.L416
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	andl	-32(%rbp), %eax
	testl	%eax, %eax
	jne	.L416
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1484, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$148, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L408
.L416:
	cmpl	$15, -36(%rbp)
	jne	.L417
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	evp_pkey_ctx_free_cached_data
	cmpq	$0, -48(%rbp)
	je	.L418
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$1492, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L418
	movl	$0, %eax
	jmp	.L408
.L418:
	cmpq	$0, 16(%rbp)
	je	.L419
	leaq	.LC0(%rip), %rdx
	movq	16(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$1497, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L419
	movl	$0, %eax
	jmp	.L408
.L419:
	movq	-24(%rbp), %rax
	movzbl	80(%rax), %edx
	orl	$1, %edx
	movb	%dl, 80(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, 72(%rax)
	nop
.L417:
	movl	$1, %eax
.L408:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	evp_pkey_ctx_store_cached_data, .-evp_pkey_ctx_store_cached_data
	.type	evp_pkey_ctx_free_cached_data, @function
evp_pkey_ctx_free_cached_data:
.LFB683:
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
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	decode_cmd
	movl	%eax, -12(%rbp)
	cmpl	$15, -12(%rbp)
	jne	.L426
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1514, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1515, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	nop
.L426:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	evp_pkey_ctx_free_cached_data, .-evp_pkey_ctx_free_cached_data
	.type	evp_pkey_ctx_free_all_cached_data, @function
evp_pkey_ctx_free_all_cached_data:
.LFB684:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$15, %esi
	movq	%rax, %rdi
	call	evp_pkey_ctx_free_cached_data
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	evp_pkey_ctx_free_all_cached_data, .-evp_pkey_ctx_free_all_cached_data
	.globl	evp_pkey_ctx_use_cached_data
	.type	evp_pkey_ctx_use_cached_data, @function
evp_pkey_ctx_use_cached_data:
.LFB685:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$1, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L429
	movq	-40(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L429
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L430
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_ctrl_str_int
	movl	%eax, -4(%rbp)
	jmp	.L429
.L430:
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %r9
	movl	%esi, %r8d
	movl	$15, %ecx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	evp_pkey_ctx_ctrl_int
	movl	%eax, -4(%rbp)
.L429:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	evp_pkey_ctx_use_cached_data, .-evp_pkey_ctx_use_cached_data
	.globl	EVP_PKEY_CTX_get0_libctx
	.type	EVP_PKEY_CTX_get0_libctx, @function
EVP_PKEY_CTX_get0_libctx:
.LFB686:
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
.LFE686:
	.size	EVP_PKEY_CTX_get0_libctx, .-EVP_PKEY_CTX_get0_libctx
	.globl	EVP_PKEY_CTX_get0_propq
	.type	EVP_PKEY_CTX_get0_propq, @function
EVP_PKEY_CTX_get0_propq:
.LFB687:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	EVP_PKEY_CTX_get0_propq, .-EVP_PKEY_CTX_get0_propq
	.globl	EVP_PKEY_CTX_get0_provider
	.type	EVP_PKEY_CTX_get0_provider, @function
EVP_PKEY_CTX_get0_provider:
.LFB688:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	je	.L437
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$128, %eax
	je	.L437
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$32, %eax
	je	.L437
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$256, %eax
	je	.L437
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$64, %eax
	jne	.L438
.L437:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L441
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_get0_provider@PLT
	jmp	.L440
.L438:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2048, %eax
	jne	.L442
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L441
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYEXCH_get0_provider@PLT
	jmp	.L440
.L442:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4096, %eax
	je	.L443
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$8192, %eax
	jne	.L444
.L443:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L441
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEM_get0_provider@PLT
	jmp	.L440
.L444:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$512, %eax
	je	.L446
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1024, %eax
	jne	.L447
.L446:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L441
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_ASYM_CIPHER_get0_provider@PLT
	jmp	.L440
.L447:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L449
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L441
.L449:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L441
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_provider@PLT
	jmp	.L440
.L441:
	movl	$0, %eax
.L440:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE688:
	.size	EVP_PKEY_CTX_get0_provider, .-EVP_PKEY_CTX_get0_provider
	.globl	EVP_PKEY_CTX_str2ctrl
	.type	EVP_PKEY_CTX_str2ctrl, @function
EVP_PKEY_CTX_str2ctrl:
.LFB689:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$2147483647, -8(%rbp)
	jbe	.L451
	movl	$-1, %eax
	jmp	.L452
.L451:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	192(%rax), %r8
	movq	-8(%rbp), %rax
	movl	%eax, %edi
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	*%r8
.L452:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE689:
	.size	EVP_PKEY_CTX_str2ctrl, .-EVP_PKEY_CTX_str2ctrl
	.globl	EVP_PKEY_CTX_hex2ctrl
	.type	EVP_PKEY_CTX_hex2ctrl, @function
EVP_PKEY_CTX_hex2ctrl:
.LFB690:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$-1, -4(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_hexstr2buf@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L454
	movl	$0, %eax
	jmp	.L457
.L454:
	movq	-24(%rbp), %rax
	cmpq	$2147483647, %rax
	jg	.L456
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	192(%rax), %r8
	movq	-24(%rbp), %rax
	movl	%eax, %edi
	movq	-16(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
.L456:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$1602, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
.L457:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE690:
	.size	EVP_PKEY_CTX_hex2ctrl, .-EVP_PKEY_CTX_hex2ctrl
	.globl	EVP_PKEY_CTX_md
	.type	EVP_PKEY_CTX_md, @function
EVP_PKEY_CTX_md:
.LFB691:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L459
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L460
.L459:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1612, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$152, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L461
.L460:
	movq	-8(%rbp), %rsi
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rsi, %r9
	movl	$0, %r8d
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
.L461:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE691:
	.size	EVP_PKEY_CTX_md, .-EVP_PKEY_CTX_md
	.globl	EVP_PKEY_CTX_get_operation
	.type	EVP_PKEY_CTX_get_operation, @function
EVP_PKEY_CTX_get_operation:
.LFB692:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE692:
	.size	EVP_PKEY_CTX_get_operation, .-EVP_PKEY_CTX_get_operation
	.globl	EVP_PKEY_CTX_set0_keygen_info
	.type	EVP_PKEY_CTX_set0_keygen_info, @function
EVP_PKEY_CTX_set0_keygen_info:
.LFB693:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 104(%rax)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 112(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE693:
	.size	EVP_PKEY_CTX_set0_keygen_info, .-EVP_PKEY_CTX_set0_keygen_info
	.globl	EVP_PKEY_CTX_set_data
	.type	EVP_PKEY_CTX_set_data, @function
EVP_PKEY_CTX_set_data:
.LFB694:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 152(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE694:
	.size	EVP_PKEY_CTX_set_data, .-EVP_PKEY_CTX_set_data
	.globl	EVP_PKEY_CTX_get_data
	.type	EVP_PKEY_CTX_get_data, @function
EVP_PKEY_CTX_get_data:
.LFB695:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE695:
	.size	EVP_PKEY_CTX_get_data, .-EVP_PKEY_CTX_get_data
	.globl	EVP_PKEY_CTX_get0_pkey
	.type	EVP_PKEY_CTX_get0_pkey, @function
EVP_PKEY_CTX_get0_pkey:
.LFB696:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	EVP_PKEY_CTX_get0_pkey, .-EVP_PKEY_CTX_get0_pkey
	.globl	EVP_PKEY_CTX_get0_peerkey
	.type	EVP_PKEY_CTX_get0_peerkey, @function
EVP_PKEY_CTX_get0_peerkey:
.LFB697:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	EVP_PKEY_CTX_get0_peerkey, .-EVP_PKEY_CTX_get0_peerkey
	.globl	EVP_PKEY_CTX_set_app_data
	.type	EVP_PKEY_CTX_set_app_data, @function
EVP_PKEY_CTX_set_app_data:
.LFB698:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 88(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	EVP_PKEY_CTX_set_app_data, .-EVP_PKEY_CTX_set_app_data
	.globl	EVP_PKEY_CTX_get_app_data
	.type	EVP_PKEY_CTX_get_app_data, @function
EVP_PKEY_CTX_get_app_data:
.LFB699:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	EVP_PKEY_CTX_get_app_data, .-EVP_PKEY_CTX_get_app_data
	.globl	EVP_PKEY_meth_set_init
	.type	EVP_PKEY_meth_set_init, @function
EVP_PKEY_meth_set_init:
.LFB700:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	EVP_PKEY_meth_set_init, .-EVP_PKEY_meth_set_init
	.globl	EVP_PKEY_meth_set_copy
	.type	EVP_PKEY_meth_set_copy, @function
EVP_PKEY_meth_set_copy:
.LFB701:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	EVP_PKEY_meth_set_copy, .-EVP_PKEY_meth_set_copy
	.globl	EVP_PKEY_meth_set_cleanup
	.type	EVP_PKEY_meth_set_cleanup, @function
EVP_PKEY_meth_set_cleanup:
.LFB702:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	EVP_PKEY_meth_set_cleanup, .-EVP_PKEY_meth_set_cleanup
	.globl	EVP_PKEY_meth_set_paramgen
	.type	EVP_PKEY_meth_set_paramgen, @function
EVP_PKEY_meth_set_paramgen:
.LFB703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 40(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	EVP_PKEY_meth_set_paramgen, .-EVP_PKEY_meth_set_paramgen
	.globl	EVP_PKEY_meth_set_keygen
	.type	EVP_PKEY_meth_set_keygen, @function
EVP_PKEY_meth_set_keygen:
.LFB704:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 56(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	EVP_PKEY_meth_set_keygen, .-EVP_PKEY_meth_set_keygen
	.globl	EVP_PKEY_meth_set_sign
	.type	EVP_PKEY_meth_set_sign, @function
EVP_PKEY_meth_set_sign:
.LFB705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 72(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	EVP_PKEY_meth_set_sign, .-EVP_PKEY_meth_set_sign
	.globl	EVP_PKEY_meth_set_verify
	.type	EVP_PKEY_meth_set_verify, @function
EVP_PKEY_meth_set_verify:
.LFB706:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 88(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	EVP_PKEY_meth_set_verify, .-EVP_PKEY_meth_set_verify
	.globl	EVP_PKEY_meth_set_verify_recover
	.type	EVP_PKEY_meth_set_verify_recover, @function
EVP_PKEY_meth_set_verify_recover:
.LFB707:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 96(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 104(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	EVP_PKEY_meth_set_verify_recover, .-EVP_PKEY_meth_set_verify_recover
	.globl	EVP_PKEY_meth_set_signctx
	.type	EVP_PKEY_meth_set_signctx, @function
EVP_PKEY_meth_set_signctx:
.LFB708:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 112(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 120(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	EVP_PKEY_meth_set_signctx, .-EVP_PKEY_meth_set_signctx
	.globl	EVP_PKEY_meth_set_verifyctx
	.type	EVP_PKEY_meth_set_verifyctx, @function
EVP_PKEY_meth_set_verifyctx:
.LFB709:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 128(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 136(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	EVP_PKEY_meth_set_verifyctx, .-EVP_PKEY_meth_set_verifyctx
	.globl	EVP_PKEY_meth_set_encrypt
	.type	EVP_PKEY_meth_set_encrypt, @function
EVP_PKEY_meth_set_encrypt:
.LFB710:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 144(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 152(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	EVP_PKEY_meth_set_encrypt, .-EVP_PKEY_meth_set_encrypt
	.globl	EVP_PKEY_meth_set_decrypt
	.type	EVP_PKEY_meth_set_decrypt, @function
EVP_PKEY_meth_set_decrypt:
.LFB711:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 160(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 168(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	EVP_PKEY_meth_set_decrypt, .-EVP_PKEY_meth_set_decrypt
	.globl	EVP_PKEY_meth_set_derive
	.type	EVP_PKEY_meth_set_derive, @function
EVP_PKEY_meth_set_derive:
.LFB712:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 176(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 184(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	EVP_PKEY_meth_set_derive, .-EVP_PKEY_meth_set_derive
	.globl	EVP_PKEY_meth_set_ctrl
	.type	EVP_PKEY_meth_set_ctrl, @function
EVP_PKEY_meth_set_ctrl:
.LFB713:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 192(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 200(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE713:
	.size	EVP_PKEY_meth_set_ctrl, .-EVP_PKEY_meth_set_ctrl
	.globl	EVP_PKEY_meth_set_digestsign
	.type	EVP_PKEY_meth_set_digestsign, @function
EVP_PKEY_meth_set_digestsign:
.LFB714:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 208(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE714:
	.size	EVP_PKEY_meth_set_digestsign, .-EVP_PKEY_meth_set_digestsign
	.globl	EVP_PKEY_meth_set_digestverify
	.type	EVP_PKEY_meth_set_digestverify, @function
EVP_PKEY_meth_set_digestverify:
.LFB715:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 216(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE715:
	.size	EVP_PKEY_meth_set_digestverify, .-EVP_PKEY_meth_set_digestverify
	.globl	EVP_PKEY_meth_set_check
	.type	EVP_PKEY_meth_set_check, @function
EVP_PKEY_meth_set_check:
.LFB716:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 224(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE716:
	.size	EVP_PKEY_meth_set_check, .-EVP_PKEY_meth_set_check
	.globl	EVP_PKEY_meth_set_public_check
	.type	EVP_PKEY_meth_set_public_check, @function
EVP_PKEY_meth_set_public_check:
.LFB717:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 232(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE717:
	.size	EVP_PKEY_meth_set_public_check, .-EVP_PKEY_meth_set_public_check
	.globl	EVP_PKEY_meth_set_param_check
	.type	EVP_PKEY_meth_set_param_check, @function
EVP_PKEY_meth_set_param_check:
.LFB718:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 240(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE718:
	.size	EVP_PKEY_meth_set_param_check, .-EVP_PKEY_meth_set_param_check
	.globl	EVP_PKEY_meth_set_digest_custom
	.type	EVP_PKEY_meth_set_digest_custom, @function
EVP_PKEY_meth_set_digest_custom:
.LFB719:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 248(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE719:
	.size	EVP_PKEY_meth_set_digest_custom, .-EVP_PKEY_meth_set_digest_custom
	.globl	EVP_PKEY_meth_get_init
	.type	EVP_PKEY_meth_get_init, @function
EVP_PKEY_meth_get_init:
.LFB720:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE720:
	.size	EVP_PKEY_meth_get_init, .-EVP_PKEY_meth_get_init
	.globl	EVP_PKEY_meth_get_copy
	.type	EVP_PKEY_meth_get_copy, @function
EVP_PKEY_meth_get_copy:
.LFB721:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE721:
	.size	EVP_PKEY_meth_get_copy, .-EVP_PKEY_meth_get_copy
	.globl	EVP_PKEY_meth_get_cleanup
	.type	EVP_PKEY_meth_get_cleanup, @function
EVP_PKEY_meth_get_cleanup:
.LFB722:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE722:
	.size	EVP_PKEY_meth_get_cleanup, .-EVP_PKEY_meth_get_cleanup
	.globl	EVP_PKEY_meth_get_paramgen
	.type	EVP_PKEY_meth_get_paramgen, @function
EVP_PKEY_meth_get_paramgen:
.LFB723:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L499
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L499:
	cmpq	$0, -24(%rbp)
	je	.L501
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L501:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE723:
	.size	EVP_PKEY_meth_get_paramgen, .-EVP_PKEY_meth_get_paramgen
	.globl	EVP_PKEY_meth_get_keygen
	.type	EVP_PKEY_meth_get_keygen, @function
EVP_PKEY_meth_get_keygen:
.LFB724:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L503
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L503:
	cmpq	$0, -24(%rbp)
	je	.L505
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L505:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE724:
	.size	EVP_PKEY_meth_get_keygen, .-EVP_PKEY_meth_get_keygen
	.globl	EVP_PKEY_meth_get_sign
	.type	EVP_PKEY_meth_get_sign, @function
EVP_PKEY_meth_get_sign:
.LFB725:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L507
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L507:
	cmpq	$0, -24(%rbp)
	je	.L509
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L509:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE725:
	.size	EVP_PKEY_meth_get_sign, .-EVP_PKEY_meth_get_sign
	.globl	EVP_PKEY_meth_get_verify
	.type	EVP_PKEY_meth_get_verify, @function
EVP_PKEY_meth_get_verify:
.LFB726:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L511
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L511:
	cmpq	$0, -24(%rbp)
	je	.L513
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L513:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE726:
	.size	EVP_PKEY_meth_get_verify, .-EVP_PKEY_meth_get_verify
	.globl	EVP_PKEY_meth_get_verify_recover
	.type	EVP_PKEY_meth_get_verify_recover, @function
EVP_PKEY_meth_get_verify_recover:
.LFB727:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L515
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L515:
	cmpq	$0, -24(%rbp)
	je	.L517
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L517:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE727:
	.size	EVP_PKEY_meth_get_verify_recover, .-EVP_PKEY_meth_get_verify_recover
	.globl	EVP_PKEY_meth_get_signctx
	.type	EVP_PKEY_meth_get_signctx, @function
EVP_PKEY_meth_get_signctx:
.LFB728:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L519
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L519:
	cmpq	$0, -24(%rbp)
	je	.L521
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L521:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	EVP_PKEY_meth_get_signctx, .-EVP_PKEY_meth_get_signctx
	.globl	EVP_PKEY_meth_get_verifyctx
	.type	EVP_PKEY_meth_get_verifyctx, @function
EVP_PKEY_meth_get_verifyctx:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L523
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L523:
	cmpq	$0, -24(%rbp)
	je	.L525
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L525:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	EVP_PKEY_meth_get_verifyctx, .-EVP_PKEY_meth_get_verifyctx
	.globl	EVP_PKEY_meth_get_encrypt
	.type	EVP_PKEY_meth_get_encrypt, @function
EVP_PKEY_meth_get_encrypt:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L527
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L527:
	cmpq	$0, -24(%rbp)
	je	.L529
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L529:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	EVP_PKEY_meth_get_encrypt, .-EVP_PKEY_meth_get_encrypt
	.globl	EVP_PKEY_meth_get_decrypt
	.type	EVP_PKEY_meth_get_decrypt, @function
EVP_PKEY_meth_get_decrypt:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L531
	movq	-8(%rbp), %rax
	movq	160(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L531:
	cmpq	$0, -24(%rbp)
	je	.L533
	movq	-8(%rbp), %rax
	movq	168(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L533:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	EVP_PKEY_meth_get_decrypt, .-EVP_PKEY_meth_get_decrypt
	.globl	EVP_PKEY_meth_get_derive
	.type	EVP_PKEY_meth_get_derive, @function
EVP_PKEY_meth_get_derive:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L535
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L535:
	cmpq	$0, -24(%rbp)
	je	.L537
	movq	-8(%rbp), %rax
	movq	184(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L537:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	EVP_PKEY_meth_get_derive, .-EVP_PKEY_meth_get_derive
	.globl	EVP_PKEY_meth_get_ctrl
	.type	EVP_PKEY_meth_get_ctrl, @function
EVP_PKEY_meth_get_ctrl:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L539
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L539:
	cmpq	$0, -24(%rbp)
	je	.L541
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L541:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	EVP_PKEY_meth_get_ctrl, .-EVP_PKEY_meth_get_ctrl
	.globl	EVP_PKEY_meth_get_digestsign
	.type	EVP_PKEY_meth_get_digestsign, @function
EVP_PKEY_meth_get_digestsign:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L544
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L544:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	EVP_PKEY_meth_get_digestsign, .-EVP_PKEY_meth_get_digestsign
	.globl	EVP_PKEY_meth_get_digestverify
	.type	EVP_PKEY_meth_get_digestverify, @function
EVP_PKEY_meth_get_digestverify:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L547
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L547:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	EVP_PKEY_meth_get_digestverify, .-EVP_PKEY_meth_get_digestverify
	.globl	EVP_PKEY_meth_get_check
	.type	EVP_PKEY_meth_get_check, @function
EVP_PKEY_meth_get_check:
.LFB736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L550
	movq	-8(%rbp), %rax
	movq	224(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L550:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	EVP_PKEY_meth_get_check, .-EVP_PKEY_meth_get_check
	.globl	EVP_PKEY_meth_get_public_check
	.type	EVP_PKEY_meth_get_public_check, @function
EVP_PKEY_meth_get_public_check:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L553
	movq	-8(%rbp), %rax
	movq	232(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L553:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	EVP_PKEY_meth_get_public_check, .-EVP_PKEY_meth_get_public_check
	.globl	EVP_PKEY_meth_get_param_check
	.type	EVP_PKEY_meth_get_param_check, @function
EVP_PKEY_meth_get_param_check:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L556
	movq	-8(%rbp), %rax
	movq	240(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L556:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	EVP_PKEY_meth_get_param_check, .-EVP_PKEY_meth_get_param_check
	.globl	EVP_PKEY_meth_get_digest_custom
	.type	EVP_PKEY_meth_get_digest_custom, @function
EVP_PKEY_meth_get_digest_custom:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L559
	movq	-8(%rbp), %rax
	movq	248(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L559:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	EVP_PKEY_meth_get_digest_custom, .-EVP_PKEY_meth_get_digest_custom
	.section	.rodata
	.align 8
	.type	__func__.14, @object
	.size	__func__.14, 12
__func__.14:
	.string	"int_ctx_new"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 17
__func__.13:
	.string	"EVP_PKEY_CTX_dup"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 19
__func__.12:
	.string	"EVP_PKEY_meth_add0"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 30
__func__.11:
	.string	"EVP_PKEY_CTX_get_signature_md"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 20
__func__.10:
	.string	"evp_pkey_ctx_set_md"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 31
__func__.9:
	.string	"evp_pkey_ctx_set1_octet_string"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 31
__func__.8:
	.string	"evp_pkey_ctx_add1_octet_string"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 27
__func__.7:
	.string	"EVP_PKEY_CTX_set_hkdf_mode"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 24
__func__.6:
	.string	"evp_pkey_ctx_set_uint64"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 24
__func__.5:
	.string	"EVP_PKEY_CTX_set_kem_op"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 22
__func__.4:
	.string	"evp_pkey_ctx_ctrl_int"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 18
__func__.3:
	.string	"EVP_PKEY_CTX_ctrl"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 26
__func__.2:
	.string	"evp_pkey_ctx_ctrl_str_int"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 31
__func__.1:
	.string	"evp_pkey_ctx_store_cached_data"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"EVP_PKEY_CTX_md"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"pcy_cache.c"
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
	.type	ossl_check_const_POLICYINFO_sk_type, @function
ossl_check_const_POLICYINFO_sk_type:
.LFB552:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	ossl_check_const_POLICYINFO_sk_type, .-ossl_check_const_POLICYINFO_sk_type
	.type	ossl_check_POLICYINFO_sk_type, @function
ossl_check_POLICYINFO_sk_type:
.LFB553:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	ossl_check_POLICYINFO_sk_type, .-ossl_check_POLICYINFO_sk_type
	.type	ossl_check_POLICYINFO_freefunc_type, @function
ossl_check_POLICYINFO_freefunc_type:
.LFB556:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE556:
	.size	ossl_check_POLICYINFO_freefunc_type, .-ossl_check_POLICYINFO_freefunc_type
	.type	sk_X509_POLICY_DATA_value, @function
sk_X509_POLICY_DATA_value:
.LFB623:
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
.LFE623:
	.size	sk_X509_POLICY_DATA_value, .-sk_X509_POLICY_DATA_value
	.type	sk_X509_POLICY_DATA_new, @function
sk_X509_POLICY_DATA_new:
.LFB624:
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
.LFE624:
	.size	sk_X509_POLICY_DATA_new, .-sk_X509_POLICY_DATA_new
	.type	sk_X509_POLICY_DATA_push, @function
sk_X509_POLICY_DATA_push:
.LFB632:
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
.LFE632:
	.size	sk_X509_POLICY_DATA_push, .-sk_X509_POLICY_DATA_push
	.type	sk_X509_POLICY_DATA_pop_free, @function
sk_X509_POLICY_DATA_pop_free:
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
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	sk_X509_POLICY_DATA_pop_free, .-sk_X509_POLICY_DATA_pop_free
	.type	sk_X509_POLICY_DATA_find, @function
sk_X509_POLICY_DATA_find:
.LFB639:
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
.LFE639:
	.size	sk_X509_POLICY_DATA_find, .-sk_X509_POLICY_DATA_find
	.type	sk_X509_POLICY_DATA_sort, @function
sk_X509_POLICY_DATA_sort:
.LFB642:
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
.LFE642:
	.size	sk_X509_POLICY_DATA_sort, .-sk_X509_POLICY_DATA_sort
	.section	.rodata
.LC0:
	.string	"../crypto/x509/pcy_cache.c"
	.text
	.type	policy_cache_create, @function
policy_cache_create:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movl	$0, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_POLICYINFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jle	.L36
	leaq	policy_data_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_X509_POLICY_DATA_new
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L24
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$38, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L25
.L24:
	movl	$0, -20(%rbp)
	jmp	.L26
.L32:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_POLICYINFO_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movl	-84(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_policy_data_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L27
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L25
.L27:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$746, %eax
	jne	.L28
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L29
	movl	$-1, -24(%rbp)
	jmp	.L23
.L29:
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L30
.L28:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_X509_POLICY_DATA_find
	testl	%eax, %eax
	js	.L31
	movl	$-1, -24(%rbp)
	jmp	.L23
.L31:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_X509_POLICY_DATA_push
	testl	%eax, %eax
	jne	.L30
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$61, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L30:
	movq	$0, -32(%rbp)
	addl	$1, -20(%rbp)
.L26:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L32
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_X509_POLICY_DATA_sort
	movl	$1, -24(%rbp)
	jmp	.L23
.L36:
	nop
.L23:
	cmpl	$-1, -24(%rbp)
	jne	.L33
	movq	-72(%rbp), %rax
	movl	232(%rax), %eax
	orb	$8, %ah
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 232(%rax)
.L33:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_policy_data_free@PLT
.L25:
	movq	POLICYINFO_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_POLICYINFO_freefunc_type
	movq	%rax, %rbx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_POLICYINFO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	cmpl	$0, -24(%rbp)
	jg	.L34
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	ossl_policy_data_free@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_X509_POLICY_DATA_pop_free
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
.L34:
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	policy_cache_create, .-policy_cache_create
	.type	policy_cache_new, @function
policy_cache_new:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	264(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movl	$1, %eax
	jmp	.L54
.L38:
	leaq	.LC0(%rip), %rax
	movl	$94, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L40
	movl	$0, %eax
	jmp	.L54
.L40:
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-40(%rbp), %rax
	movq	$-1, 16(%rax)
	movq	-40(%rbp), %rax
	movq	$-1, 24(%rax)
	movq	-40(%rbp), %rax
	movq	$-1, 32(%rax)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 264(%rax)
	leaq	-44(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$401, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L41
	movl	-44(%rbp), %eax
	cmpl	$-1, %eax
	je	.L42
	jmp	.L43
.L41:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L44
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L55
.L44:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	addq	$24, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	policy_cache_set_int
	testl	%eax, %eax
	je	.L56
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	addq	$32, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	policy_cache_set_int
	testl	%eax, %eax
	je	.L57
.L42:
	leaq	-44(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$89, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L46
	movl	-44(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L58
	movl	$1, %eax
	jmp	.L54
.L46:
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	policy_cache_create
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	jg	.L48
	movl	-44(%rbp), %eax
	jmp	.L54
.L48:
	leaq	-44(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$747, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L49
	movl	-44(%rbp), %eax
	cmpl	$-1, %eax
	je	.L50
	jmp	.L43
.L49:
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_policy_cache_set_mapping@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	jle	.L59
.L50:
	leaq	-44(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$748, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L51
	movl	-44(%rbp), %eax
	cmpl	$-1, %eax
	je	.L60
	jmp	.L43
.L51:
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	policy_cache_set_int
	testl	%eax, %eax
	jne	.L60
	jmp	.L43
.L55:
	nop
	jmp	.L43
.L56:
	nop
	jmp	.L43
.L57:
	nop
	jmp	.L43
.L58:
	nop
	jmp	.L43
.L59:
	nop
.L43:
	movq	-56(%rbp), %rax
	movl	232(%rax), %eax
	orb	$8, %ah
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 232(%rax)
	jmp	.L53
.L60:
	nop
.L53:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	POLICY_CONSTRAINTS_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movl	$1, %eax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	policy_cache_new, .-policy_cache_new
	.globl	ossl_policy_cache_free
	.type	ossl_policy_cache_free, @function
ossl_policy_cache_free:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L64
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_policy_data_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	ossl_policy_data_free@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_X509_POLICY_DATA_pop_free
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$184, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L61
.L64:
	nop
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	ossl_policy_cache_free, .-ossl_policy_cache_free
	.globl	ossl_policy_cache_set
	.type	ossl_policy_cache_set, @function
ossl_policy_cache_set:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	testq	%rax, %rax
	jne	.L66
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L67
	movl	$0, %eax
	jmp	.L68
.L67:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	policy_cache_new
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L66:
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	ossl_policy_cache_set, .-ossl_policy_cache_set
	.globl	ossl_policy_cache_find_data
	.type	ossl_policy_cache_find_data, @function
ossl_policy_cache_find_data:
.LFB651:
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
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_X509_POLICY_DATA_find
	movl	%eax, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_X509_POLICY_DATA_value
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	ossl_policy_cache_find_data, .-ossl_policy_cache_find_data
	.type	policy_data_cmp, @function
policy_data_cmp:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	policy_data_cmp, .-policy_data_cmp
	.type	policy_cache_set_int, @function
policy_cache_set_int:
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
	cmpq	$0, -16(%rbp)
	jne	.L74
	movl	$1, %eax
	jmp	.L75
.L74:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$258, %eax
	jne	.L76
	movl	$0, %eax
	jmp	.L75
.L76:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$1, %eax
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	policy_cache_set_int, .-policy_cache_set_int
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"policy_cache_create"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

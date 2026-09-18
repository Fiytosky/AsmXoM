	.file	"threadpool_test.c"
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
	.section	.rodata
	.align 8
.LC0:
	.string	"OSSL_THREAD_SUPPORT_FLAG_THREAD_POOL"
	.align 8
.LC1:
	.string	"flags & OSSL_THREAD_SUPPORT_FLAG_THREAD_POOL"
.LC2:
	.string	"../test/threadpool_test.c"
	.align 8
.LC3:
	.string	"OSSL_THREAD_SUPPORT_FLAG_DEFAULT_SPAWN"
	.align 8
.LC4:
	.string	"flags & OSSL_THREAD_SUPPORT_FLAG_DEFAULT_SPAWN"
	.text
	.type	test_thread_reported_flags, @function
test_thread_reported_flags:
.LFB537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	OSSL_get_thread_support_flags@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$30, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movl	-4(%rbp), %eax
	andl	$2, %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$39, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L7
.L8:
	movl	$1, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	test_thread_reported_flags, .-test_thread_reported_flags
	.type	test_thread_native_fn, @function
test_thread_native_fn:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	test_thread_native_fn, .-test_thread_native_fn
	.section	.rodata
.LC5:
	.string	"t"
.LC6:
	.string	"1"
	.align 8
.LC7:
	.string	"ossl_crypto_thread_native_join(t, &retval)"
.LC8:
	.string	"retval"
.LC9:
	.string	"2"
.LC10:
	.string	"local"
	.align 8
.LC11:
	.string	"ossl_crypto_thread_native_clean(t)"
.LC12:
	.string	"0"
	.text
	.type	test_thread_native, @function
test_thread_native:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$1, -16(%rbp)
	leaq	-16(%rbp), %rax
	leaq	test_thread_native_fn(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_crypto_thread_native_start@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$68, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L12
	movl	$0, %eax
	jmp	.L20
.L12:
	leaq	-12(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_crypto_thread_native_join@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$77, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L14
	movl	$0, %eax
	jmp	.L20
.L14:
	leaq	-12(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_crypto_thread_native_join@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$79, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L15
	movl	$0, %eax
	jmp	.L20
.L15:
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$82, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L16
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$82, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L17
.L16:
	movl	$0, %eax
	jmp	.L20
.L17:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_crypto_thread_native_clean@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$85, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L18
	movl	$0, %eax
	jmp	.L20
.L18:
	movq	$0, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_crypto_thread_native_clean@PLT
	movl	%eax, %esi
	leaq	.LC12(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$89, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	movl	$1, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	test_thread_native, .-test_thread_native
	.section	.rodata
.LC13:
	.string	"OSSL_get_max_threads(NULL)"
	.align 8
.LC14:
	.string	"OSSL_get_max_threads(cust_ctx)"
.LC15:
	.string	"OSSL_set_max_threads(NULL, 1)"
	.align 8
.LC16:
	.string	"OSSL_set_max_threads(cust_ctx, 1)"
.LC17:
	.string	"t[0]"
	.align 8
.LC18:
	.string	"OSSL_set_max_threads(cust_ctx, 0)"
.LC19:
	.string	"t[i]"
	.align 8
.LC20:
	.string	"ossl_crypto_thread_join(t[i], &retval[0])"
.LC21:
	.string	"i + 1"
.LC22:
	.string	"retval[0]"
.LC23:
	.string	"i + 2"
.LC24:
	.string	"local[0]"
	.align 8
.LC25:
	.string	"ossl_crypto_thread_clean(t[i])"
	.align 8
.LC26:
	.string	"OSSL_set_max_threads(NULL, OSSL_NELEM(t))"
	.align 8
.LC27:
	.string	"ossl_crypto_thread_join(t[i], &retval[i])"
.LC28:
	.string	"retval[i]"
.LC29:
	.string	"local[i]"
	.align 8
.LC30:
	.string	"OSSL_set_max_threads(NULL, OSSL_NELEM(t) - 1)"
.LC31:
	.string	"OSSL_set_max_threads(NULL, 0)"
	.text
	.type	test_thread_internal, @function
test_thread_internal:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	$0, -52(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -12(%rbp)
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -24(%rbp)
	call	OSSL_get_thread_support_flags@PLT
	movl	%eax, -28(%rbp)
	andl	$2, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L22
	movl	$0, %edi
	call	OSSL_get_max_threads@PLT
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$110, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L77
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_get_max_threads@PLT
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$112, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L78
	movl	$1, %esi
	movl	$0, %edi
	call	OSSL_set_max_threads@PLT
	movl	%eax, %esi
	leaq	.LC12(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$115, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L79
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	OSSL_set_max_threads@PLT
	movl	%eax, %esi
	leaq	.LC12(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$117, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L80
	movl	$0, %edi
	call	OSSL_get_max_threads@PLT
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$120, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L81
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_get_max_threads@PLT
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$122, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L82
	leaq	-52(%rbp), %rax
	leaq	test_thread_native_fn(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$0, %edi
	call	ossl_crypto_thread_start@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$126, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L83
	movl	$1, -12(%rbp)
	jmp	.L24
.L22:
	movl	$0, %edi
	call	OSSL_get_max_threads@PLT
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$135, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L84
	leaq	-52(%rbp), %rax
	leaq	test_thread_native_fn(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$0, %edi
	call	ossl_crypto_thread_start@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$138, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L85
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_get_max_threads@PLT
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$142, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L86
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	OSSL_set_max_threads@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$144, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L87
	movl	$0, %edi
	call	OSSL_get_max_threads@PLT
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$146, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L88
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_get_max_threads@PLT
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$148, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L89
	leaq	-52(%rbp), %rax
	leaq	test_thread_native_fn(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$0, %edi
	call	ossl_crypto_thread_start@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$151, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L90
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_set_max_threads@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$153, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L91
	movl	$1, %esi
	movl	$0, %edi
	call	OSSL_set_max_threads@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$158, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L92
	movl	$0, %edi
	call	OSSL_get_max_threads@PLT
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$160, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L93
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_get_max_threads@PLT
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$162, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L94
	movq	$0, -8(%rbp)
	jmp	.L42
.L50:
	movq	-8(%rbp), %rax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	leaq	-52(%rbp), %rax
	leaq	test_thread_native_fn(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$0, %edi
	call	ossl_crypto_thread_start@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, -80(%rbp,%rdx,8)
	movq	-8(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$169, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L95
	movq	-8(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	leaq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_crypto_thread_join@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$178, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L96
	movq	-8(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	leaq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_crypto_thread_join@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$180, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	-8(%rbp), %rax
	addl	$1, %eax
	movl	%eax, %edi
	movl	-40(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC21(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$183, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L98
	movq	-8(%rbp), %rax
	addl	$2, %eax
	movl	%eax, %edi
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$183, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L98
	movq	-8(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	ossl_crypto_thread_clean@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$186, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L99
	movq	-8(%rbp), %rax
	movq	$0, -80(%rbp,%rax,8)
	movq	-8(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	ossl_crypto_thread_clean@PLT
	movl	%eax, %esi
	leaq	.LC12(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$190, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L100
	addq	$1, -8(%rbp)
.L42:
	cmpq	$2, -8(%rbp)
	jbe	.L50
	movl	$3, %esi
	movl	$0, %edi
	call	OSSL_set_max_threads@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$196, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L101
	movq	$0, -8(%rbp)
	jmp	.L52
.L54:
	movq	-8(%rbp), %rax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, -52(%rbp,%rax,4)
	leaq	-52(%rbp), %rax
	movq	-8(%rbp), %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	leaq	test_thread_native_fn(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_crypto_thread_start@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, -80(%rbp,%rdx,8)
	movq	-8(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$202, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L102
	addq	$1, -8(%rbp)
.L52:
	cmpq	$2, -8(%rbp)
	jbe	.L54
	movq	$0, -8(%rbp)
	jmp	.L55
.L57:
	leaq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_crypto_thread_join@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$206, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L103
	addq	$1, -8(%rbp)
.L55:
	cmpq	$2, -8(%rbp)
	jbe	.L57
	movq	$0, -8(%rbp)
	jmp	.L58
.L62:
	movq	-8(%rbp), %rax
	addl	$1, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rax
	movl	-40(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC21(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$210, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L104
	movq	-8(%rbp), %rax
	addl	$2, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rax
	movl	-52(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC23(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$210, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L104
	movq	-8(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	ossl_crypto_thread_clean@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$212, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L105
	addq	$1, -8(%rbp)
.L58:
	cmpq	$2, -8(%rbp)
	jbe	.L62
	movl	$2, %esi
	movl	$0, %edi
	call	OSSL_set_max_threads@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$218, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L106
	movq	$0, -8(%rbp)
	jmp	.L64
.L66:
	movq	-8(%rbp), %rax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, -52(%rbp,%rax,4)
	leaq	-52(%rbp), %rax
	movq	-8(%rbp), %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	leaq	test_thread_native_fn(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_crypto_thread_start@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, -80(%rbp,%rdx,8)
	movq	-8(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$224, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L107
	addq	$1, -8(%rbp)
.L64:
	cmpq	$2, -8(%rbp)
	jbe	.L66
	movq	$0, -8(%rbp)
	jmp	.L67
.L69:
	leaq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_crypto_thread_join@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$228, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L108
	addq	$1, -8(%rbp)
.L67:
	cmpq	$2, -8(%rbp)
	jbe	.L69
	movq	$0, -8(%rbp)
	jmp	.L70
.L74:
	movq	-8(%rbp), %rax
	addl	$1, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rax
	movl	-40(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC21(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$232, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L109
	movq	-8(%rbp), %rax
	addl	$2, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rax
	movl	-52(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC23(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$232, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L109
	movq	-8(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	ossl_crypto_thread_clean@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$234, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L110
	addq	$1, -8(%rbp)
.L70:
	cmpq	$2, -8(%rbp)
	jbe	.L74
	movl	$0, %esi
	movl	$0, %edi
	call	OSSL_set_max_threads@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$238, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L111
	movl	$1, -12(%rbp)
	jmp	.L24
.L77:
	nop
	jmp	.L24
.L78:
	nop
	jmp	.L24
.L79:
	nop
	jmp	.L24
.L80:
	nop
	jmp	.L24
.L81:
	nop
	jmp	.L24
.L82:
	nop
	jmp	.L24
.L83:
	nop
	jmp	.L24
.L84:
	nop
	jmp	.L24
.L85:
	nop
	jmp	.L24
.L86:
	nop
	jmp	.L24
.L87:
	nop
	jmp	.L24
.L88:
	nop
	jmp	.L24
.L89:
	nop
	jmp	.L24
.L90:
	nop
	jmp	.L24
.L91:
	nop
	jmp	.L24
.L92:
	nop
	jmp	.L24
.L93:
	nop
	jmp	.L24
.L94:
	nop
	jmp	.L24
.L95:
	nop
	jmp	.L24
.L96:
	nop
	jmp	.L24
.L97:
	nop
	jmp	.L24
.L98:
	nop
	jmp	.L24
.L99:
	nop
	jmp	.L24
.L100:
	nop
	jmp	.L24
.L101:
	nop
	jmp	.L24
.L102:
	nop
	jmp	.L24
.L103:
	nop
	jmp	.L24
.L104:
	nop
	jmp	.L24
.L105:
	nop
	jmp	.L24
.L106:
	nop
	jmp	.L24
.L107:
	nop
	jmp	.L24
.L108:
	nop
	jmp	.L24
.L109:
	nop
	jmp	.L24
.L110:
	nop
	jmp	.L24
.L111:
	nop
.L24:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	test_thread_internal, .-test_thread_internal
	.type	test_thread_native_multiple_joins_fn1, @function
test_thread_native_multiple_joins_fn1:
.LFB541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	test_thread_native_multiple_joins_fn1, .-test_thread_native_multiple_joins_fn1
	.type	test_thread_native_multiple_joins_fn2, @function
test_thread_native_multiple_joins_fn2:
.LFB542:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_crypto_thread_native_join@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	test_thread_native_multiple_joins_fn2, .-test_thread_native_multiple_joins_fn2
	.type	test_thread_native_multiple_joins_fn3, @function
test_thread_native_multiple_joins_fn3:
.LFB543:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_crypto_thread_native_join@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	test_thread_native_multiple_joins_fn3, .-test_thread_native_multiple_joins_fn3
	.section	.rodata
.LC32:
	.string	"t1"
.LC33:
	.string	"t2"
	.align 8
.LC34:
	.string	"ossl_crypto_thread_native_join(t2, NULL)"
	.align 8
.LC35:
	.string	"ossl_crypto_thread_native_join(t1, NULL)"
	.align 8
.LC36:
	.string	"ossl_crypto_thread_native_clean(t2)"
	.align 8
.LC37:
	.string	"ossl_crypto_thread_native_clean(t1)"
	.text
	.type	test_thread_native_multiple_joins, @function
test_thread_native_multiple_joins:
.LFB544:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	leaq	test_thread_native_multiple_joins_fn1(%rip), %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_crypto_thread_native_start@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	test_thread_native_multiple_joins_fn2(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_crypto_thread_native_start@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	test_thread_native_multiple_joins_fn3(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_crypto_thread_native_start@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$273, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L119
	movq	-16(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$273, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L119
	movq	-24(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$273, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L120
.L119:
	movl	$0, %eax
	jmp	.L121
.L120:
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_crypto_thread_native_join@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$276, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L122
	movl	$0, %eax
	jmp	.L121
.L122:
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_crypto_thread_native_join@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$278, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L123
	movl	$0, %eax
	jmp	.L121
.L123:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_crypto_thread_native_clean@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$281, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L124
	movl	$0, %eax
	jmp	.L121
.L124:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_crypto_thread_native_clean@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$284, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L125
	movl	$0, %eax
	jmp	.L121
.L125:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_crypto_thread_native_clean@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$287, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L126
	movl	$0, %eax
	jmp	.L121
.L126:
	movl	$1, %eax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	test_thread_native_multiple_joins, .-test_thread_native_multiple_joins
	.section	.rodata
.LC38:
	.string	"test_thread_reported_flags"
.LC39:
	.string	"test_thread_native"
	.align 8
.LC40:
	.string	"test_thread_native_multiple_joins"
.LC41:
	.string	"test_thread_internal"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB545:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_thread_reported_flags(%rip), %rdx
	leaq	.LC38(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_thread_native(%rip), %rdx
	leaq	.LC39(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_thread_native_multiple_joins(%rip), %rdx
	leaq	.LC40(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_thread_internal(%rip), %rdx
	leaq	.LC41(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

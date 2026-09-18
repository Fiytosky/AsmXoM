	.file	"by_store.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB493:
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
.LFE493:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB494:
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
.LFE494:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	sk_CACHED_STORE_num, @function
sk_CACHED_STORE_num:
.LFB589:
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
.LFE589:
	.size	sk_CACHED_STORE_num, .-sk_CACHED_STORE_num
	.type	sk_CACHED_STORE_value, @function
sk_CACHED_STORE_value:
.LFB590:
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
.LFE590:
	.size	sk_CACHED_STORE_value, .-sk_CACHED_STORE_value
	.type	sk_CACHED_STORE_new_null, @function
sk_CACHED_STORE_new_null:
.LFB592:
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
.LFE592:
	.size	sk_CACHED_STORE_new_null, .-sk_CACHED_STORE_new_null
	.type	sk_CACHED_STORE_push, @function
sk_CACHED_STORE_push:
.LFB599:
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
.LFE599:
	.size	sk_CACHED_STORE_push, .-sk_CACHED_STORE_push
	.type	sk_CACHED_STORE_pop_free, @function
sk_CACHED_STORE_pop_free:
.LFB603:
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
.LFE603:
	.size	sk_CACHED_STORE_pop_free, .-sk_CACHED_STORE_pop_free
	.type	cache_objects, @function
cache_objects:
.LFB614:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	%ecx, -92(%rbp)
	movl	$0, -4(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_LOOKUP_get_store@PLT
	movq	%rax, -16(%rbp)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_STORE_open_ex@PLT
	addq	$16, %rsp
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	cmpq	$0, -88(%rbp)
	je	.L25
	movq	-88(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_STORE_find@PLT
.L25:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_load@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L26
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get_type@PLT
	movl	%eax, -36(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$1, -36(%rbp)
	jne	.L20
	cmpl	$0, -92(%rbp)
	jle	.L21
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get0_NAME@PLT
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	-92(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-88(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	cache_objects
	movl	%eax, -4(%rbp)
	jmp	.L21
.L20:
	cmpl	$5, -36(%rbp)
	je	.L22
	cmpl	$6, -36(%rbp)
	je	.L23
	jmp	.L21
.L22:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get0_CERT@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_cert@PLT
	movl	%eax, -4(%rbp)
	jmp	.L21
.L23:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get0_CRL@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_crl@PLT
	movl	%eax, -4(%rbp)
	nop
.L21:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_free@PLT
	cmpl	$0, -4(%rbp)
	je	.L27
	jmp	.L25
.L26:
	nop
	jmp	.L19
.L27:
	nop
.L19:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_close@PLT
	movl	-4(%rbp), %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	cache_objects, .-cache_objects
	.section	.rodata
.LC0:
	.string	"../crypto/x509/by_store.c"
	.text
	.type	free_store, @function
free_store:
.LFB615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L30
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$112, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$113, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$114, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L30:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	free_store, .-free_store
	.type	by_store_free, @function
by_store_free:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_LOOKUP_get_method_data@PLT
	movq	%rax, -8(%rbp)
	leaq	free_store(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_CACHED_STORE_pop_free
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	by_store_free, .-by_store_free
	.type	by_store_ctrl_ex, @function
by_store_ctrl_ex:
.LFB617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	cmpq	$0, -88(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$3, -76(%rbp)
	je	.L33
	cmpl	$4, -76(%rbp)
	je	.L34
	jmp	.L47
.L33:
	cmpq	$0, -88(%rbp)
	jne	.L36
	call	X509_get_default_cert_dir_env@PLT
	movq	%rax, %rdi
	call	ossl_safe_getenv@PLT
	movq	%rax, -88(%rbp)
.L36:
	cmpq	$0, -88(%rbp)
	jne	.L37
	call	X509_get_default_cert_dir@PLT
	movq	%rax, -88(%rbp)
.L37:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_LOOKUP_get_method_data@PLT
	movq	%rax, -8(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$145, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L38
	movl	$0, %eax
	jmp	.L39
.L38:
	leaq	.LC0(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$152, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, 8(%rax)
	cmpq	$0, 16(%rbp)
	je	.L40
	leaq	.LC0(%rip), %rcx
	movq	16(%rbp), %rax
	movl	$155, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
.L40:
	movq	16(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-88(%rbp), %rax
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_STORE_open_ex@PLT
	addq	$16, %rsp
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L41
	cmpq	$0, 16(%rbp)
	je	.L42
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L41
.L42:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L43
.L41:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_close@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_store
	movl	-12(%rbp), %eax
	jmp	.L39
.L43:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_close@PLT
	cmpq	$0, -8(%rbp)
	jne	.L44
	call	sk_CACHED_STORE_new_null
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L44
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_LOOKUP_set_method_data@PLT
.L44:
	cmpq	$0, -8(%rbp)
	je	.L45
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_CACHED_STORE_push
	testl	%eax, %eax
	jg	.L46
.L45:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_store
	movl	$0, %eax
	jmp	.L39
.L46:
	movl	$1, %eax
	jmp	.L39
.L34:
	movq	-88(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	cache_objects
	jmp	.L39
.L47:
	movl	$0, %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	by_store_ctrl_ex, .-by_store_ctrl_ex
	.type	by_store_ctrl, @function
by_store_ctrl:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	by_store_ctrl_ex
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	by_store_ctrl, .-by_store_ctrl
	.type	by_store, @function
by_store:
.LFB619:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_LOOKUP_get_method_data@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L51
.L54:
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_CACHED_STORE_value
	movq	%rax, %rsi
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	cache_objects
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L56
	addl	$1, -4(%rbp)
.L51:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_CACHED_STORE_num
	cmpl	%eax, -4(%rbp)
	jl	.L54
	jmp	.L53
.L56:
	nop
.L53:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	by_store, .-by_store
	.type	by_store_subject, @function
by_store_subject:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_SEARCH_by_name@PLT
	movq	%rax, -24(%rbp)
	movq	-80(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	by_store
	movl	%eax, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_LOOKUP_get_store@PLT
	movq	%rax, %rdi
	call	X509_STORE_get0_objects@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_SEARCH_free@PLT
	cmpl	$0, -4(%rbp)
	je	.L58
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_LOOKUP_get_store@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_x509_store_read_lock@PLT
	testl	%eax, %eax
	jne	.L59
	movl	$0, %eax
	jmp	.L60
.L59:
	movq	-72(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509_OBJECT_retrieve_by_subject@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_unlock@PLT
.L58:
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L61
	cmpl	$2, -60(%rbp)
	je	.L62
	cmpl	$2, -60(%rbp)
	ja	.L61
	cmpl	$0, -60(%rbp)
	je	.L66
	cmpl	$1, -60(%rbp)
	jne	.L61
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_OBJECT_set1_X509@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L67
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	jmp	.L67
.L62:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_OBJECT_set1_X509_CRL@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L68
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	jmp	.L68
.L66:
	nop
	jmp	.L61
.L67:
	nop
	jmp	.L61
.L68:
	nop
.L61:
	movl	-4(%rbp), %eax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	by_store_subject, .-by_store_subject
	.section	.rodata
.LC1:
	.string	"Load certs from STORE URIs"
	.section	.data.rel.local,"aw"
	.align 32
	.type	x509_store_lookup, @object
	.size	x509_store_lookup, 96
x509_store_lookup:
	.quad	.LC1
	.quad	0
	.quad	by_store_free
	.quad	0
	.quad	0
	.quad	by_store_ctrl
	.quad	by_store_subject
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	by_store_ctrl_ex
	.text
	.globl	X509_LOOKUP_store
	.type	X509_LOOKUP_store, @function
X509_LOOKUP_store:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	x509_store_lookup(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	X509_LOOKUP_store, .-X509_LOOKUP_store
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

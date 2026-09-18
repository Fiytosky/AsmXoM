	.file	"evp_fetch.c"
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
	.type	get_tmp_evp_method_store, @function
get_tmp_evp_method_store:
.LFB482:
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
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L6
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_method_store_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
.L6:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	get_tmp_evp_method_store, .-get_tmp_evp_method_store
	.type	dealloc_tmp_evp_method_store, @function
dealloc_tmp_evp_method_store:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L10
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_method_store_free@PLT
.L10:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	dealloc_tmp_evp_method_store, .-dealloc_tmp_evp_method_store
	.type	get_evp_method_store, @function
get_evp_method_store:
.LFB484:
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
	call	ossl_lib_ctx_get_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	get_evp_method_store, .-get_evp_method_store
	.type	reserve_evp_method_store, @function
reserve_evp_method_store:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L14
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	get_evp_method_store
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_method_lock_store@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	reserve_evp_method_store, .-reserve_evp_method_store
	.type	unreserve_evp_method_store, @function
unreserve_evp_method_store:
.LFB486:
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
	cmpq	$0, -24(%rbp)
	jne	.L17
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	get_evp_method_store
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_method_unlock_store@PLT
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	unreserve_evp_method_store, .-unreserve_evp_method_store
	.type	evp_method_id, @function
evp_method_id:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L20
	cmpl	$8388607, -4(%rbp)
	jg	.L20
	movl	$1, %eax
	jmp	.L21
.L20:
	movl	$0, %eax
.L21:
	cltq
	testq	%rax, %rax
	je	.L22
	cmpl	$0, -8(%rbp)
	je	.L23
	cmpl	$255, -8(%rbp)
	ja	.L23
	movl	$1, %eax
	jmp	.L24
.L23:
	movl	$0, %eax
.L24:
	cltq
	testq	%rax, %rax
	jne	.L25
.L22:
	movl	$0, %eax
	jmp	.L26
.L25:
	movl	-4(%rbp), %eax
	sall	$8, %eax
	andl	$2147483392, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
.L26:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	evp_method_id, .-evp_method_id
	.type	get_evp_method_from_store, @function
get_evp_method_from_store:
.LFB488:
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
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -64(%rbp)
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L28
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_namemap_stored@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L29
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -16(%rbp)
	jmp	.L30
.L29:
	movq	-48(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
.L30:
	cmpq	$0, -32(%rbp)
	jne	.L31
	movl	$0, %eax
	jmp	.L37
.L31:
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_namemap_name2num_n@PLT
	movl	%eax, -4(%rbp)
.L28:
	cmpl	$0, -4(%rbp)
	je	.L33
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	evp_method_id
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L34
.L33:
	movl	$0, %eax
	jmp	.L37
.L34:
	cmpq	$0, -72(%rbp)
	jne	.L35
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	get_evp_method_store
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L35
	movl	$0, %eax
	jmp	.L37
.L35:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-52(%rbp), %esi
	leaq	-64(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_method_store_fetch@PLT
	testl	%eax, %eax
	jne	.L36
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-64(%rbp), %rax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	get_evp_method_from_store, .-get_evp_method_from_store
	.type	put_evp_method_in_store, @function
put_evp_method_in_store:
.LFB489:
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
	movq	%r9, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L39
	movq	-80(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L40
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	jmp	.L39
.L40:
	movq	-24(%rbp), %rax
	subq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
.L39:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_namemap_stored@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L41
	movq	-8(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_namemap_name2num_n@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L41
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	evp_method_id
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.L42
.L41:
	movl	$0, %eax
	jmp	.L43
.L42:
	cmpq	$0, -56(%rbp)
	jne	.L44
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	get_evp_method_store
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L44
	movl	$0, %eax
	jmp	.L43
.L44:
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	56(%rax), %r9
	movl	-40(%rbp), %edx
	movq	-64(%rbp), %r8
	movq	-88(%rbp), %rcx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_method_store_add@PLT
	addq	$16, %rsp
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	put_evp_method_in_store, .-put_evp_method_in_store
	.type	construct_evp_method, @function
construct_evp_method:
.LFB490:
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
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_libctx@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_namemap_stored@PLT
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$58, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_namemap_add_names@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	-8(%rbp), %rax
	movq	48(%rax), %r8
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	*%r8
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L48
	movq	-8(%rbp), %rax
	movzbl	40(%rax), %edx
	orl	$1, %edx
	movb	%dl, 40(%rax)
.L48:
	movq	-48(%rbp), %rax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	construct_evp_method, .-construct_evp_method
	.type	destruct_evp_method, @function
destruct_evp_method:
.LFB491:
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
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	destruct_evp_method, .-destruct_evp_method
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"../crypto/evp/evp_fetch.c"
.LC2:
	.string	"Algorithm %s cannot be found"
.LC3:
	.string	"<null>"
	.align 8
.LC4:
	.string	"%s, Algorithm (%s : %d), Properties (%s)"
	.text
	.type	inner_evp_generic_fetch, @function
inner_evp_generic_fetch:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$160, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movl	%edx, -148(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movq	%r9, -176(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	get_evp_method_store
	movq	%rax, -48(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_namemap_stored@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -168(%rbp)
	je	.L51
	movq	-168(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L52
.L51:
	leaq	.LC0(%rip), %rax
	movq	%rax, -24(%rbp)
.L52:
	movl	$0, -28(%rbp)
	movq	$0, -64(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L53
	cmpq	$0, -56(%rbp)
	jne	.L54
.L53:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$258, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L74
.L54:
	cmpl	$0, -148(%rbp)
	setg	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L56
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$267, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L74
.L56:
	cmpq	$0, -160(%rbp)
	je	.L57
	movq	-160(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_namemap_name2num@PLT
	movl	%eax, -36(%rbp)
	jmp	.L58
.L57:
	movl	$0, -36(%rbp)
.L58:
	cmpl	$0, -36(%rbp)
	je	.L59
	movl	-148(%rbp), %edx
	movl	-36(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	evp_method_id
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L59
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$283, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L74
.L59:
	cmpl	$0, -36(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L60
	movl	-28(%rbp), %edx
	movq	-144(%rbp), %rsi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_method_store_cache_get@PLT
	testl	%eax, %eax
	jne	.L61
.L60:
	leaq	get_tmp_evp_method_store(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	reserve_evp_method_store(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	unreserve_evp_method_store(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	get_evp_method_from_store(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	put_evp_method_in_store(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	construct_evp_method(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	destruct_evp_method(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	movl	-148(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-136(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 12(%rax)
	movq	-136(%rbp), %rax
	movq	-160(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-136(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-136(%rbp), %rax
	movq	-176(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-136(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-136(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-136(%rbp), %rax
	movzbl	40(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 40(%rax)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	-136(%rbp), %rdi
	leaq	-128(%rbp), %rcx
	leaq	-144(%rbp), %rdx
	movl	-148(%rbp), %esi
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_method_construct@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.L62
	cmpl	$0, -36(%rbp)
	jne	.L63
	movq	-160(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_namemap_name2num@PLT
	movl	%eax, -36(%rbp)
.L63:
	cmpl	$0, -36(%rbp)
	jne	.L64
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$331, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-160(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movl	$524557, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-64(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	$0, -64(%rbp)
	jmp	.L62
.L64:
	movl	-148(%rbp), %edx
	movl	-36(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	evp_method_id
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L62
	movq	-64(%rbp), %rdi
	movl	-28(%rbp), %edx
	movq	-144(%rbp), %rsi
	movq	16(%rbp), %r8
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_method_store_cache_set@PLT
	addq	$16, %rsp
.L62:
	movq	-136(%rbp), %rax
	movzbl	40(%rax), %eax
	andl	$1, %eax
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
.L61:
	cmpl	$0, -36(%rbp)
	jne	.L65
	cmpq	$0, -160(%rbp)
	je	.L66
.L65:
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L66
	cmpl	$0, -32(%rbp)
	je	.L67
	movl	$524556, -40(%rbp)
	jmp	.L68
.L67:
	movl	$524557, -40(%rbp)
.L68:
	cmpq	$0, -160(%rbp)
	jne	.L69
	movl	-36(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_namemap_num2name@PLT
	movq	%rax, -160(%rbp)
.L69:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$355, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	cmpq	$0, -168(%rbp)
	je	.L70
	movq	-168(%rbp), %rbx
	jmp	.L71
.L70:
	leaq	.LC3(%rip), %rbx
.L71:
	cmpq	$0, -160(%rbp)
	je	.L72
	movq	-160(%rbp), %r12
	jmp	.L73
.L72:
	leaq	.LC3(%rip), %r12
.L73:
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_descriptor@PLT
	movq	%rax, %rcx
	movl	-36(%rbp), %esi
	leaq	.LC4(%rip), %rdx
	movl	-40(%rbp), %eax
	subq	$8, %rsp
	pushq	%rbx
	movl	%esi, %r9d
	movq	%r12, %r8
	movl	%eax, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	addq	$16, %rsp
.L66:
	movq	-64(%rbp), %rax
.L74:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	inner_evp_generic_fetch, .-inner_evp_generic_fetch
	.globl	evp_generic_fetch
	.type	evp_generic_fetch, @function
evp_generic_fetch:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -48(%rbp)
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rcx
	movl	-92(%rbp), %edx
	leaq	-80(%rbp), %rax
	pushq	16(%rbp)
	pushq	-128(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	inner_evp_generic_fetch
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	dealloc_tmp_evp_method_store
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	evp_generic_fetch, .-evp_generic_fetch
	.globl	evp_generic_fetch_from_prov
	.type	evp_generic_fetch_from_prov, @function
evp_generic_fetch_from_prov:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_libctx@PLT
	movq	%rax, -80(%rbp)
	movq	$0, -48(%rbp)
	movq	-120(%rbp), %r8
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rcx
	movl	-92(%rbp), %edx
	movq	-88(%rbp), %rsi
	leaq	-80(%rbp), %rax
	pushq	16(%rbp)
	pushq	-128(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	inner_evp_generic_fetch
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	dealloc_tmp_evp_method_store
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	evp_generic_fetch_from_prov, .-evp_generic_fetch_from_prov
	.globl	evp_method_store_cache_flush
	.type	evp_method_store_cache_flush, @function
evp_method_store_cache_flush:
.LFB495:
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
	call	get_evp_method_store
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L80
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_method_store_cache_flush_all@PLT
	jmp	.L81
.L80:
	movl	$1, %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	evp_method_store_cache_flush, .-evp_method_store_cache_flush
	.globl	evp_method_store_remove_all_provided
	.type	evp_method_store_remove_all_provided, @function
evp_method_store_remove_all_provided:
.LFB496:
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
	call	ossl_provider_libctx@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	get_evp_method_store
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L83
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_method_store_remove_all_provided@PLT
	jmp	.L84
.L83:
	movl	$1, %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	evp_method_store_remove_all_provided, .-evp_method_store_remove_all_provided
	.type	evp_set_parsed_default_properties, @function
evp_set_parsed_default_properties:
.LFB497:
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
	movl	%ecx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	get_evp_method_store
	movq	%rax, -16(%rbp)
	movl	-68(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ctx_global_properties@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L86
	cmpq	$0, -16(%rbp)
	je	.L86
	movq	$0, -8(%rbp)
	cmpl	$0, -72(%rbp)
	je	.L87
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_global_properties_no_mirrored@PLT
	testl	%eax, %eax
	je	.L88
	movl	$0, %eax
	jmp	.L89
.L87:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_global_properties_stop_mirroring@PLT
.L88:
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_property_list_to_string@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L90
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$457, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
.L90:
	cmpq	$0, -8(%rbp)
	jne	.L91
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$459, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L89
.L91:
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_list_to_string@PLT
	testq	%rax, %rax
	jne	.L92
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$464, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$465, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L89
.L92:
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_provider_default_props_update@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$469, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_method_store_cache_flush_all@PLT
	movl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_decoder_cache_flush@PLT
	movl	-36(%rbp), %eax
	jmp	.L89
.L86:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$480, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	evp_set_parsed_default_properties, .-evp_set_parsed_default_properties
	.globl	evp_set_default_properties_int
	.type	evp_set_default_properties_int, @function
evp_set_default_properties_int:
.LFB498:
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
	movl	%ecx, -40(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L94
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_parse_query@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L94
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$490, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$210, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L95
.L94:
	movl	-40(%rbp), %ecx
	movl	-36(%rbp), %edx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_set_parsed_default_properties
	testl	%eax, %eax
	jne	.L96
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movl	$0, %eax
	jmp	.L95
.L96:
	movl	$1, %eax
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	evp_set_default_properties_int, .-evp_set_default_properties_int
	.globl	EVP_set_default_properties
	.type	EVP_set_default_properties, @function
EVP_set_default_properties:
.LFB499:
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
	movl	$1, %edx
	movq	%rax, %rdi
	call	evp_set_default_properties_int@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	EVP_set_default_properties, .-EVP_set_default_properties
	.type	evp_default_properties_merge, @function
evp_default_properties_merge:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	-52(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ctx_global_properties@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L100
	movl	$1, %eax
	jmp	.L101
.L100:
	cmpq	$0, -8(%rbp)
	je	.L102
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L103
.L102:
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	evp_set_default_properties_int@PLT
	jmp	.L101
.L103:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_parse_query@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L104
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$516, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$210, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L104:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_property_merge@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	cmpq	$0, -24(%rbp)
	jne	.L105
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$522, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L105:
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	evp_set_parsed_default_properties
	testl	%eax, %eax
	jne	.L106
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movl	$0, %eax
	jmp	.L101
.L106:
	movl	$1, %eax
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	evp_default_properties_merge, .-evp_default_properties_merge
	.type	evp_default_property_is_enabled, @function
evp_default_property_is_enabled:
.LFB501:
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
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_ctx_global_properties@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L108
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_is_enabled@PLT
	testl	%eax, %eax
	je	.L108
	movl	$1, %eax
	jmp	.L110
.L108:
	movl	$0, %eax
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	evp_default_property_is_enabled, .-evp_default_property_is_enabled
	.section	.rodata
.LC5:
	.string	"fips"
	.text
	.globl	EVP_default_properties_is_fips_enabled
	.type	EVP_default_properties_is_fips_enabled, @function
EVP_default_properties_is_fips_enabled:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC5(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_default_property_is_enabled
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	EVP_default_properties_is_fips_enabled, .-EVP_default_properties_is_fips_enabled
	.section	.rodata
.LC6:
	.string	"fips=yes"
.LC7:
	.string	"-fips"
	.text
	.globl	evp_default_properties_enable_fips_int
	.type	evp_default_properties_enable_fips_int, @function
evp_default_properties_enable_fips_int:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L114
	leaq	.LC6(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L115
.L114:
	leaq	.LC7(%rip), %rax
	movq	%rax, -8(%rbp)
.L115:
	movl	-32(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_default_properties_merge
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	evp_default_properties_enable_fips_int, .-evp_default_properties_enable_fips_int
	.globl	EVP_default_properties_enable_fips
	.type	EVP_default_properties_enable_fips, @function
EVP_default_properties_enable_fips:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	evp_default_properties_enable_fips_int@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	EVP_default_properties_enable_fips, .-EVP_default_properties_enable_fips
	.globl	evp_get_global_properties_str
	.type	evp_get_global_properties_str, @function
evp_get_global_properties_str:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ctx_global_properties@PLT
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L120
	leaq	.LC1(%rip), %rcx
	leaq	.LC0(%rip), %rax
	movl	$565, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	jmp	.L121
.L120:
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_property_list_to_string@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L122
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$569, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L122:
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$573, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L123
	movl	$0, %eax
	jmp	.L121
.L123:
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_list_to_string@PLT
	testq	%rax, %rax
	jne	.L124
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$577, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC1(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$578, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L121
.L124:
	movq	-16(%rbp), %rax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	evp_get_global_properties_str, .-evp_get_global_properties_str
	.type	filter_on_operation_id, @function
filter_on_operation_id:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L127
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L127:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	filter_on_operation_id, .-filter_on_operation_id
	.globl	evp_generic_do_all
	.type	evp_generic_do_all, @function
evp_generic_do_all:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	%r9, -160(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -48(%rbp)
	movq	-152(%rbp), %rcx
	movl	-124(%rbp), %edx
	leaq	-80(%rbp), %rax
	pushq	16(%rbp)
	pushq	-160(%rbp)
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	inner_evp_generic_fetch
	addq	$16, %rsp
	movl	-124(%rbp), %eax
	movl	%eax, -112(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L129
	movq	-48(%rbp), %rax
	leaq	-112(%rbp), %rdx
	leaq	filter_on_operation_id(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_method_store_do_all@PLT
.L129:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	get_evp_method_store
	movq	%rax, %rdi
	leaq	-112(%rbp), %rax
	leaq	filter_on_operation_id(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	call	ossl_method_store_do_all@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	dealloc_tmp_evp_method_store
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	evp_generic_do_all, .-evp_generic_do_all
	.globl	evp_is_a
	.type	evp_is_a, @function
evp_is_a:
.LFB508:
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
	call	ossl_provider_libctx@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_namemap_stored@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L131
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_namemap_name2num@PLT
	movl	%eax, -28(%rbp)
.L131:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_namemap_name2num@PLT
	cmpl	%eax, -28(%rbp)
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	evp_is_a, .-evp_is_a
	.globl	evp_names_do_all
	.type	evp_names_do_all, @function
evp_names_do_all:
.LFB509:
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
	call	ossl_provider_libctx@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_namemap_stored@PLT
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_namemap_doall_names@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	evp_names_do_all, .-evp_names_do_all
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 24
__func__.4:
	.string	"inner_evp_generic_fetch"
	.align 32
	.type	__func__.3, @object
	.size	__func__.3, 34
__func__.3:
	.string	"evp_set_parsed_default_properties"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 31
__func__.2:
	.string	"evp_set_default_properties_int"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 29
__func__.1:
	.string	"evp_default_properties_merge"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 30
__func__.0:
	.string	"evp_get_global_properties_str"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

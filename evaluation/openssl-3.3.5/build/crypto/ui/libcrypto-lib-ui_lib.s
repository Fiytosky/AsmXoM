	.file	"ui_lib.c"
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
	.type	ossl_check_UI_STRING_type, @function
ossl_check_UI_STRING_type:
.LFB509:
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
.LFE509:
	.size	ossl_check_UI_STRING_type, .-ossl_check_UI_STRING_type
	.type	ossl_check_const_UI_STRING_sk_type, @function
ossl_check_const_UI_STRING_sk_type:
.LFB510:
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
.LFE510:
	.size	ossl_check_const_UI_STRING_sk_type, .-ossl_check_const_UI_STRING_sk_type
	.type	ossl_check_UI_STRING_sk_type, @function
ossl_check_UI_STRING_sk_type:
.LFB511:
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
.LFE511:
	.size	ossl_check_UI_STRING_sk_type, .-ossl_check_UI_STRING_sk_type
	.type	ossl_check_UI_STRING_freefunc_type, @function
ossl_check_UI_STRING_freefunc_type:
.LFB514:
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
.LFE514:
	.size	ossl_check_UI_STRING_freefunc_type, .-ossl_check_UI_STRING_freefunc_type
	.globl	UI_new
	.type	UI_new, @function
UI_new:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	UI_new_method@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	UI_new, .-UI_new
	.section	.rodata
.LC0:
	.string	"../crypto/ui/ui_lib.c"
	.text
	.globl	UI_new_method
	.type	UI_new_method, @function
UI_new_method:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$25, %edx
	movq	%rax, %rsi
	movl	$56, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L18
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$40, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$33, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L17
.L18:
	cmpq	$0, -24(%rbp)
	jne	.L19
	call	UI_get_default_method@PLT
	movq	%rax, -24(%rbp)
.L19:
	cmpq	$0, -24(%rbp)
	jne	.L20
	call	UI_null@PLT
	movq	%rax, -24(%rbp)
.L20:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$11, %edi
	call	CRYPTO_new_ex_data@PLT
	testl	%eax, %eax
	jne	.L21
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	UI_free@PLT
	movl	$0, %eax
	jmp	.L17
.L21:
	movq	-8(%rbp), %rax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	UI_new_method, .-UI_new_method
	.type	free_string, @function
free_string:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	64(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L23
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$53, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	ja	.L23
	cmpl	$4, %eax
	jnb	.L25
	cmpl	$2, %eax
	jbe	.L25
	cmpl	$3, %eax
	jne	.L23
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$56, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$57, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$58, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L23
.L25:
	nop
.L23:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$68, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	free_string, .-free_string
	.globl	UI_free
	.type	UI_free, @function
UI_free:
.LFB518:
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
	cmpq	$0, -24(%rbp)
	je	.L30
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L29
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	56(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L29:
	leaq	free_string(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_UI_STRING_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_UI_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$11, %edi
	call	CRYPTO_free_ex_data@PLT
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$81, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L26
.L30:
	nop
.L26:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	UI_free, .-UI_free
	.type	allocate_string_stack, @function
allocate_string_stack:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L32
	call	OPENSSL_sk_new_null@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L32
	movl	$-1, %eax
	jmp	.L33
.L32:
	movl	$0, %eax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	allocate_string_stack, .-allocate_string_stack
	.type	general_allocate_prompt, @function
general_allocate_prompt:
.LFB520:
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
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L35
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$103, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$40, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L35:
	cmpl	$1, -40(%rbp)
	je	.L37
	cmpl	$2, -40(%rbp)
	je	.L37
	cmpl	$3, -40(%rbp)
	jne	.L38
.L37:
	cmpq	$0, -56(%rbp)
	jne	.L38
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$106, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$40, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L38:
	leaq	.LC0(%rip), %rax
	movl	$107, %edx
	movq	%rax, %rsi
	movl	$72, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L36
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	cmpl	$0, -36(%rbp)
	setne	%al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 64(%rax)
	movq	-8(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	-40(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L36:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	general_allocate_prompt, .-general_allocate_prompt
	.type	general_allocate_string, @function
general_allocate_string:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movq	%r9, -72(%rbp)
	movl	$-1, -20(%rbp)
	movq	-72(%rbp), %r8
	movl	-60(%rbp), %edi
	movl	-56(%rbp), %ecx
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	general_allocate_prompt
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L41
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	allocate_string_stack
	testl	%eax, %eax
	js	.L42
	movq	-32(%rbp), %rax
	movl	16(%rbp), %edx
	movl	%edx, 40(%rax)
	movq	-32(%rbp), %rax
	movl	24(%rbp), %edx
	movl	%edx, 44(%rax)
	movq	-32(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_UI_STRING_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_UI_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L41
	subl	$1, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free_string
	jmp	.L41
.L42:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free_string
.L41:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	general_allocate_string, .-general_allocate_string
	.type	general_allocate_boolean, @function
general_allocate_boolean:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movl	%r9d, -92(%rbp)
	movl	$-1, -20(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L45
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$158, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$40, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L46
.L45:
	cmpq	$0, -88(%rbp)
	jne	.L47
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$160, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$40, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L46
.L47:
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L48
.L50:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L49
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$164, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$40, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L49:
	addq	$1, -32(%rbp)
.L48:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L50
	movq	32(%rbp), %r8
	movl	24(%rbp), %edi
	movl	16(%rbp), %ecx
	movl	-92(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	general_allocate_prompt
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L46
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	allocate_string_stack
	testl	%eax, %eax
	js	.L51
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-40(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-40(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_UI_STRING_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_UI_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L46
	subl	$1, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free_string
	jmp	.L46
.L51:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free_string
.L46:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	general_allocate_boolean, .-general_allocate_boolean
	.globl	UI_add_input_string
	.type	UI_add_input_string, @function
UI_add_input_string:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -36(%rbp)
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	-36(%rbp), %edx
	pushq	%rdx
	movl	-24(%rbp), %edx
	pushq	%rdx
	movq	%rdi, %r9
	movl	%ecx, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	general_allocate_string
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	UI_add_input_string, .-UI_add_input_string
	.globl	UI_dup_input_string
	.type	UI_dup_input_string, @function
UI_dup_input_string:
.LFB524:
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
	movl	%r8d, -40(%rbp)
	movl	%r9d, -52(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L56
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$211, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L56
	movl	$0, %eax
	jmp	.L57
.L56:
	movq	-48(%rbp), %rdi
	movl	-36(%rbp), %ecx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	-52(%rbp), %edx
	pushq	%rdx
	movl	-40(%rbp), %edx
	pushq	%rdx
	movq	%rdi, %r9
	movl	%ecx, %r8d
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	general_allocate_string
	addq	$32, %rsp
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L58
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$220, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L58:
	movl	-12(%rbp), %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	UI_dup_input_string, .-UI_dup_input_string
	.globl	UI_add_verify_string
	.type	UI_add_verify_string, @function
UI_add_verify_string:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -36(%rbp)
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movl	-36(%rbp), %edx
	pushq	%rdx
	movl	-24(%rbp), %edx
	pushq	%rdx
	movq	%rdi, %r9
	movl	%ecx, %r8d
	movl	$2, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	general_allocate_string
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	UI_add_verify_string, .-UI_add_verify_string
	.globl	UI_dup_verify_string
	.type	UI_dup_verify_string, @function
UI_dup_verify_string:
.LFB526:
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
	movl	%r8d, -40(%rbp)
	movl	%r9d, -52(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L62
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$242, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L62
	movl	$-1, %eax
	jmp	.L63
.L62:
	movq	-48(%rbp), %rdi
	movl	-36(%rbp), %ecx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movl	-52(%rbp), %edx
	pushq	%rdx
	movl	-40(%rbp), %edx
	pushq	%rdx
	movq	%rdi, %r9
	movl	%ecx, %r8d
	movl	$2, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	general_allocate_string
	addq	$32, %rsp
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L64
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$251, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L64:
	movl	-12(%rbp), %eax
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	UI_dup_verify_string, .-UI_dup_verify_string
	.globl	UI_add_input_boolean
	.type	UI_add_input_boolean, @function
UI_add_input_boolean:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movl	-44(%rbp), %edi
	pushq	%rdi
	pushq	$3
	movl	$0, %r9d
	movq	%rax, %rdi
	call	general_allocate_boolean
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	UI_add_input_boolean, .-UI_add_input_boolean
	.globl	UI_dup_input_boolean
	.type	UI_dup_input_boolean, @function
UI_dup_input_boolean:
.LFB528:
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
	cmpq	$0, -64(%rbp)
	je	.L68
	leaq	.LC0(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$275, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L75
.L68:
	cmpq	$0, -72(%rbp)
	je	.L70
	leaq	.LC0(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$281, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L76
.L70:
	cmpq	$0, -80(%rbp)
	je	.L71
	leaq	.LC0(%rip), %rcx
	movq	-80(%rbp), %rax
	movl	$287, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L77
.L71:
	cmpq	$0, -88(%rbp)
	je	.L72
	leaq	.LC0(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$293, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L78
.L72:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movl	-92(%rbp), %edi
	pushq	%rdi
	pushq	$3
	movl	$1, %r9d
	movq	%rax, %rdi
	call	general_allocate_boolean
	addq	$32, %rsp
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jle	.L79
	movl	-36(%rbp), %eax
	jmp	.L74
.L75:
	nop
	jmp	.L69
.L76:
	nop
	jmp	.L69
.L77:
	nop
	jmp	.L69
.L78:
	nop
	jmp	.L69
.L79:
	nop
.L69:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$307, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$308, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$309, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$310, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$-1, %eax
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	UI_dup_input_boolean, .-UI_dup_input_boolean
	.globl	UI_add_info_string
	.type	UI_add_info_string, @function
UI_add_info_string:
.LFB529:
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
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$4, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	general_allocate_string
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	UI_add_info_string, .-UI_add_info_string
	.globl	UI_dup_info_string
	.type	UI_dup_info_string, @function
UI_dup_info_string:
.LFB530:
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
	cmpq	$0, -32(%rbp)
	je	.L83
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$326, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L83
	movl	$-1, %eax
	jmp	.L84
.L83:
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$4, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	general_allocate_string
	addq	$32, %rsp
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L85
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$334, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L85:
	movl	-12(%rbp), %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	UI_dup_info_string, .-UI_dup_info_string
	.globl	UI_add_error_string
	.type	UI_add_error_string, @function
UI_add_error_string:
.LFB531:
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
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$5, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	general_allocate_string
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	UI_add_error_string, .-UI_add_error_string
	.globl	UI_dup_error_string
	.type	UI_dup_error_string, @function
UI_dup_error_string:
.LFB532:
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
	cmpq	$0, -32(%rbp)
	je	.L89
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$350, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L89
	movl	$-1, %eax
	jmp	.L90
.L89:
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$5, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	general_allocate_string
	addq	$32, %rsp
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L91
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$358, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L91:
	movl	-12(%rbp), %eax
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	UI_dup_error_string, .-UI_dup_error_string
	.globl	UI_construct_prompt
	.type	UI_construct_prompt, @function
UI_construct_prompt:
.LFB533:
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
	movq	$0, -8(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L93
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L93
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L93
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %r8
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -8(%rbp)
	jmp	.L94
.L93:
	movl	$1702129221, -19(%rbp)
	movl	$2126437, -16(%rbp)
	movl	$1919903264, -25(%rbp)
	movw	$32, -21(%rbp)
	movw	$58, -27(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L95
	movl	$0, %eax
	jmp	.L100
.L95:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addl	$6, %eax
	movl	%eax, -12(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L97
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	addl	$5, %eax
	movl	%eax, -12(%rbp)
.L97:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$382, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L98
	movl	$0, %eax
	jmp	.L100
.L98:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	leaq	-19(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
	cmpq	$0, -56(%rbp)
	je	.L99
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	leaq	-25(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
.L99:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	leaq	-27(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
.L94:
	movq	-8(%rbp), %rax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	UI_construct_prompt, .-UI_construct_prompt
	.globl	UI_add_user_data
	.type	UI_add_user_data, @function
UI_add_user_data:
.LFB534:
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
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L102
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	56(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	$0, -8(%rbp)
.L102:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	andl	$-3, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	UI_add_user_data, .-UI_add_user_data
	.globl	UI_dup_user_data
	.type	UI_dup_user_data, @function
UI_dup_user_data:
.LFB535:
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
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L105
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L106
.L105:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$414, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$40, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L107
.L106:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L108
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$420, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524328, %esi
	movl	$40, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L107
.L108:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	UI_add_user_data@PLT
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 40(%rax)
	movl	$0, %eax
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	UI_dup_user_data, .-UI_dup_user_data
	.globl	UI_get0_user_data
	.type	UI_get0_user_data, @function
UI_get0_user_data:
.LFB536:
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
.LFE536:
	.size	UI_get0_user_data, .-UI_get0_user_data
	.globl	UI_get0_result
	.type	UI_get0_result, @function
UI_get0_result:
.LFB537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L112
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$438, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$40, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L113
.L112:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_UI_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -12(%rbp)
	jl	.L114
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$442, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$40, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L113
.L114:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_UI_STRING_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	UI_get0_result_string@PLT
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	UI_get0_result, .-UI_get0_result
	.globl	UI_get_result_length
	.type	UI_get_result_length, @function
UI_get_result_length:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L116
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$451, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$40, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L117
.L116:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_UI_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -12(%rbp)
	jl	.L118
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$455, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$40, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L117
.L118:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_UI_STRING_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	UI_get_result_string_length@PLT
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	UI_get_result_length, .-UI_get_result_length
	.type	print_error, @function
print_error:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	leaq	-80(%rbp), %rax
	movl	$72, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$5, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L120
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rcx
	leaq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jg	.L120
	movl	$-1, %eax
	jmp	.L122
.L120:
	movl	$0, %eax
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	print_error, .-print_error
	.section	.rodata
.LC1:
	.string	"processing"
.LC2:
	.string	"opening session"
.LC3:
	.string	"writing strings"
.LC4:
	.string	"flushing"
.LC5:
	.string	"reading strings"
.LC6:
	.string	"closing session"
.LC7:
	.string	"while %s"
	.text
	.globl	UI_process
	.type	UI_process, @function
UI_process:
.LFB540:
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
	movl	$0, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L124
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jg	.L124
	leaq	.LC2(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	$-1, -24(%rbp)
	jmp	.L125
.L124:
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L126
	movq	-40(%rbp), %rax
	leaq	print_error(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ERR_print_errors_cb@PLT
.L126:
	movl	$0, -20(%rbp)
	jmp	.L127
.L129:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L128
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_UI_STRING_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rbx
	testl	%eax, %eax
	jg	.L128
	leaq	.LC3(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	$-1, -24(%rbp)
	jmp	.L125
.L128:
	addl	$1, -20(%rbp)
.L127:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_UI_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L129
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L130
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	cmpl	$-1, %eax
	je	.L131
	testl	%eax, %eax
	je	.L132
	jmp	.L145
.L131:
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 40(%rax)
	movl	$-2, -24(%rbp)
	jmp	.L125
.L132:
	leaq	.LC4(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	$-1, -24(%rbp)
	jmp	.L125
.L145:
	movl	$0, -24(%rbp)
	nop
.L130:
	movl	$0, -20(%rbp)
	jmp	.L134
.L140:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L135
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_UI_STRING_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rbx
	cmpl	$-1, %eax
	je	.L136
	testl	%eax, %eax
	je	.L137
	jmp	.L146
.L136:
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 40(%rax)
	movl	$-2, -24(%rbp)
	jmp	.L125
.L137:
	leaq	.LC5(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	$-1, -24(%rbp)
	jmp	.L125
.L146:
	movl	$0, -24(%rbp)
	jmp	.L147
.L135:
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 40(%rax)
	movl	$-2, -24(%rbp)
	jmp	.L125
.L147:
	addl	$1, -20(%rbp)
.L134:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_UI_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L140
	movq	$0, -32(%rbp)
.L125:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L141
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jg	.L141
	cmpq	$0, -32(%rbp)
	jne	.L142
	leaq	.LC6(%rip), %rax
	movq	%rax, -32(%rbp)
.L142:
	movl	$-1, -24(%rbp)
.L141:
	cmpl	$-1, -24(%rbp)
	jne	.L143
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$552, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rcx
	movl	$107, %esi
	movl	$40, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L143:
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	UI_process, .-UI_process
	.globl	UI_ctrl
	.type	UI_ctrl, @function
UI_ctrl:
.LFB541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L149
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$559, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$40, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L150
.L149:
	cmpl	$1, -28(%rbp)
	je	.L151
	cmpl	$2, -28(%rbp)
	je	.L152
	nop
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$577, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$40, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L150
.L151:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	andl	$256, %eax
	shrl	$8, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L154
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	orb	$1, %ah
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 40(%rax)
	jmp	.L155
.L154:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	andb	$-2, %ah
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 40(%rax)
.L155:
	movl	-4(%rbp), %eax
	jmp	.L150
.L152:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	andl	$1, %eax
.L150:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	UI_ctrl, .-UI_ctrl
	.globl	UI_set_ex_data
	.type	UI_set_ex_data, @function
UI_set_ex_data:
.LFB542:
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
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	CRYPTO_set_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	UI_set_ex_data, .-UI_set_ex_data
	.globl	UI_get_ex_data
	.type	UI_get_ex_data, @function
UI_get_ex_data:
.LFB543:
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
	leaq	24(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	CRYPTO_get_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	UI_get_ex_data, .-UI_get_ex_data
	.globl	UI_get_method
	.type	UI_get_method, @function
UI_get_method:
.LFB544:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	UI_get_method, .-UI_get_method
	.globl	UI_set_method
	.type	UI_set_method, @function
UI_set_method:
.LFB545:
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
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	UI_set_method, .-UI_set_method
	.globl	UI_create_method
	.type	UI_create_method, @function
UI_create_method:
.LFB546:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$606, %edx
	movq	%rax, %rsi
	movl	$88, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L166
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$607, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L166
	movq	-8(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$14, %edi
	call	CRYPTO_new_ex_data@PLT
	testl	%eax, %eax
	jne	.L167
.L166:
	cmpq	$0, -8(%rbp)
	je	.L168
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L169
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$617, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$40, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L169:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$618, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L168:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$620, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L170
.L167:
	movq	-8(%rbp), %rax
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	UI_create_method, .-UI_create_method
	.globl	UI_destroy_method
	.type	UI_destroy_method, @function
UI_destroy_method:
.LFB547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L174
	movq	-8(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$14, %edi
	call	CRYPTO_free_ex_data@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$637, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$639, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L171
.L174:
	nop
.L171:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	UI_destroy_method, .-UI_destroy_method
	.globl	UI_method_set_opener
	.type	UI_method_set_opener, @function
UI_method_set_opener:
.LFB548:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L176
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$0, %eax
	jmp	.L177
.L176:
	movl	$-1, %eax
.L177:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	UI_method_set_opener, .-UI_method_set_opener
	.globl	UI_method_set_writer
	.type	UI_method_set_writer, @function
UI_method_set_writer:
.LFB549:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L179
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$0, %eax
	jmp	.L180
.L179:
	movl	$-1, %eax
.L180:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	UI_method_set_writer, .-UI_method_set_writer
	.globl	UI_method_set_flusher
	.type	UI_method_set_flusher, @function
UI_method_set_flusher:
.LFB550:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L182
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	$0, %eax
	jmp	.L183
.L182:
	movl	$-1, %eax
.L183:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE550:
	.size	UI_method_set_flusher, .-UI_method_set_flusher
	.globl	UI_method_set_reader
	.type	UI_method_set_reader, @function
UI_method_set_reader:
.LFB551:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L185
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$0, %eax
	jmp	.L186
.L185:
	movl	$-1, %eax
.L186:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE551:
	.size	UI_method_set_reader, .-UI_method_set_reader
	.globl	UI_method_set_closer
	.type	UI_method_set_closer, @function
UI_method_set_closer:
.LFB552:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L188
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	$0, %eax
	jmp	.L189
.L188:
	movl	$-1, %eax
.L189:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	UI_method_set_closer, .-UI_method_set_closer
	.globl	UI_method_set_data_duplicator
	.type	UI_method_set_data_duplicator, @function
UI_method_set_data_duplicator:
.LFB553:
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
	je	.L191
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movl	$0, %eax
	jmp	.L192
.L191:
	movl	$-1, %eax
.L192:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	UI_method_set_data_duplicator, .-UI_method_set_data_duplicator
	.globl	UI_method_set_prompt_constructor
	.type	UI_method_set_prompt_constructor, @function
UI_method_set_prompt_constructor:
.LFB554:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L194
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movl	$0, %eax
	jmp	.L195
.L194:
	movl	$-1, %eax
.L195:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE554:
	.size	UI_method_set_prompt_constructor, .-UI_method_set_prompt_constructor
	.globl	UI_method_set_ex_data
	.type	UI_method_set_ex_data, @function
UI_method_set_ex_data:
.LFB555:
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
	movq	-8(%rbp), %rax
	leaq	72(%rax), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	CRYPTO_set_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	UI_method_set_ex_data, .-UI_method_set_ex_data
	.globl	UI_method_get_opener
	.type	UI_method_get_opener, @function
UI_method_get_opener:
.LFB556:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L199
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L200
.L199:
	movl	$0, %eax
.L200:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE556:
	.size	UI_method_get_opener, .-UI_method_get_opener
	.globl	UI_method_get_writer
	.type	UI_method_get_writer, @function
UI_method_get_writer:
.LFB557:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L202
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L203
.L202:
	movl	$0, %eax
.L203:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE557:
	.size	UI_method_get_writer, .-UI_method_get_writer
	.globl	UI_method_get_flusher
	.type	UI_method_get_flusher, @function
UI_method_get_flusher:
.LFB558:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L205
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.L206
.L205:
	movl	$0, %eax
.L206:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE558:
	.size	UI_method_get_flusher, .-UI_method_get_flusher
	.globl	UI_method_get_reader
	.type	UI_method_get_reader, @function
UI_method_get_reader:
.LFB559:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L208
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	jmp	.L209
.L208:
	movl	$0, %eax
.L209:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE559:
	.size	UI_method_get_reader, .-UI_method_get_reader
	.globl	UI_method_get_closer
	.type	UI_method_get_closer, @function
UI_method_get_closer:
.LFB560:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L211
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	jmp	.L212
.L211:
	movl	$0, %eax
.L212:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	UI_method_get_closer, .-UI_method_get_closer
	.globl	UI_method_get_prompt_constructor
	.type	UI_method_get_prompt_constructor, @function
UI_method_get_prompt_constructor:
.LFB561:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L214
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	jmp	.L215
.L214:
	movl	$0, %eax
.L215:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE561:
	.size	UI_method_get_prompt_constructor, .-UI_method_get_prompt_constructor
	.globl	UI_method_get_data_duplicator
	.type	UI_method_get_data_duplicator, @function
UI_method_get_data_duplicator:
.LFB562:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L217
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	jmp	.L218
.L217:
	movl	$0, %eax
.L218:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	UI_method_get_data_duplicator, .-UI_method_get_data_duplicator
	.globl	UI_method_get_data_destructor
	.type	UI_method_get_data_destructor, @function
UI_method_get_data_destructor:
.LFB563:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L220
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	jmp	.L221
.L220:
	movl	$0, %eax
.L221:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	UI_method_get_data_destructor, .-UI_method_get_data_destructor
	.globl	UI_method_get_ex_data
	.type	UI_method_get_ex_data, @function
UI_method_get_ex_data:
.LFB564:
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
	leaq	72(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	CRYPTO_get_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	UI_method_get_ex_data, .-UI_method_get_ex_data
	.globl	UI_get_string_type
	.type	UI_get_string_type, @function
UI_get_string_type:
.LFB565:
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
.LFE565:
	.size	UI_get_string_type, .-UI_get_string_type
	.globl	UI_get_input_flags
	.type	UI_get_input_flags, @function
UI_get_input_flags:
.LFB566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	UI_get_input_flags, .-UI_get_input_flags
	.globl	UI_get0_output_string
	.type	UI_get0_output_string, @function
UI_get0_output_string:
.LFB567:
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
.LFE567:
	.size	UI_get0_output_string, .-UI_get0_output_string
	.globl	UI_get0_action_string
	.type	UI_get0_action_string, @function
UI_get0_action_string:
.LFB568:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	ja	.L231
	cmpl	$4, %eax
	jnb	.L234
	cmpl	$2, %eax
	jbe	.L234
	cmpl	$3, %eax
	jne	.L231
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	jmp	.L233
.L234:
	nop
.L231:
	movl	$0, %eax
.L233:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	UI_get0_action_string, .-UI_get0_action_string
	.globl	UI_get0_result_string
	.type	UI_get0_result_string, @function
UI_get0_result_string:
.LFB569:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	ja	.L236
	cmpl	$3, %eax
	jnb	.L239
	testl	%eax, %eax
	je	.L239
	subl	$1, %eax
	cmpl	$1, %eax
	ja	.L236
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.L238
.L239:
	nop
.L236:
	movl	$0, %eax
.L238:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	UI_get0_result_string, .-UI_get0_result_string
	.globl	UI_get_result_string_length
	.type	UI_get_result_string_length, @function
UI_get_result_string_length:
.LFB570:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	ja	.L241
	cmpl	$3, %eax
	jnb	.L244
	testl	%eax, %eax
	je	.L244
	subl	$1, %eax
	cmpl	$1, %eax
	ja	.L241
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	jmp	.L243
.L244:
	nop
.L241:
	movl	$-1, %eax
.L243:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	UI_get_result_string_length, .-UI_get_result_string_length
	.globl	UI_get0_test_string
	.type	UI_get0_test_string, @function
UI_get0_test_string:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	ja	.L246
	cmpl	$3, %eax
	jnb	.L249
	cmpl	$1, %eax
	jbe	.L249
	cmpl	$2, %eax
	jne	.L246
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	jmp	.L248
.L249:
	nop
.L246:
	movl	$0, %eax
.L248:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	UI_get0_test_string, .-UI_get0_test_string
	.globl	UI_get_result_minsize
	.type	UI_get_result_minsize, @function
UI_get_result_minsize:
.LFB572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	ja	.L251
	cmpl	$3, %eax
	jnb	.L254
	testl	%eax, %eax
	je	.L254
	subl	$1, %eax
	cmpl	$1, %eax
	ja	.L251
	movq	-8(%rbp), %rax
	movl	40(%rax), %eax
	jmp	.L253
.L254:
	nop
.L251:
	movl	$-1, %eax
.L253:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	UI_get_result_minsize, .-UI_get_result_minsize
	.globl	UI_get_result_maxsize
	.type	UI_get_result_maxsize, @function
UI_get_result_maxsize:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	ja	.L256
	cmpl	$3, %eax
	jnb	.L259
	testl	%eax, %eax
	je	.L259
	subl	$1, %eax
	cmpl	$1, %eax
	ja	.L256
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	jmp	.L258
.L259:
	nop
.L256:
	movl	$-1, %eax
.L258:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	UI_get_result_maxsize, .-UI_get_result_maxsize
	.globl	UI_set_result
	.type	UI_set_result, @function
UI_set_result:
.LFB574:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	UI_set_result_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	UI_set_result, .-UI_set_result
	.section	.rodata
	.align 8
.LC8:
	.string	"You must type in %d to %d characters"
	.text
	.globl	UI_set_result_ex
	.type	UI_set_result_ex, @function
UI_set_result_ex:
.LFB575:
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
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	ja	.L263
	cmpl	$4, %eax
	jnb	.L276
	cmpl	$3, %eax
	je	.L265
	cmpl	$3, %eax
	ja	.L263
	testl	%eax, %eax
	je	.L276
	subl	$1, %eax
	cmpl	$1, %eax
	ja	.L263
	movq	-32(%rbp), %rax
	movl	40(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jge	.L266
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 40(%rax)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$899, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	40(%rax), %eax
	leaq	.LC8(%rip), %rdx
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$101, %esi
	movl	$40, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L267
.L266:
	movq	-32(%rbp), %rax
	movl	44(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jle	.L268
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 40(%rax)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$907, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	40(%rax), %eax
	leaq	.LC8(%rip), %rdx
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$100, %esi
	movl	$40, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L267
.L268:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L269
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$915, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$40, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L267
.L269:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movl	44(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jg	.L270
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
.L270:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 32(%rax)
	jmp	.L263
.L265:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L271
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$929, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$40, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L267
.L271:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L272
.L275:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L273
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	jmp	.L264
.L273:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L274
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	jmp	.L264
.L274:
	addq	$1, -8(%rbp)
.L272:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L275
	jmp	.L276
.L264:
.L276:
	nop
.L263:
	movl	$0, %eax
.L267:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	UI_set_result_ex, .-UI_set_result_ex
	.section	.rodata
	.align 8
	.type	__func__.9, @object
	.size	__func__.9, 14
__func__.9:
	.string	"UI_new_method"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 24
__func__.8:
	.string	"general_allocate_prompt"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 25
__func__.7:
	.string	"general_allocate_boolean"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 17
__func__.6:
	.string	"UI_dup_user_data"
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 15
__func__.5:
	.string	"UI_get0_result"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 21
__func__.4:
	.string	"UI_get_result_length"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 11
__func__.3:
	.string	"UI_process"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 8
__func__.2:
	.string	"UI_ctrl"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"UI_create_method"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 17
__func__.0:
	.string	"UI_set_result_ex"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

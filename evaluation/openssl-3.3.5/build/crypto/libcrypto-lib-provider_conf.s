	.file	"provider_conf.c"
	.text
	.type	ossl_check_OPENSSL_CSTRING_type, @function
ossl_check_OPENSSL_CSTRING_type:
.LFB12:
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
.LFE12:
	.size	ossl_check_OPENSSL_CSTRING_type, .-ossl_check_OPENSSL_CSTRING_type
	.type	ossl_check_const_OPENSSL_CSTRING_sk_type, @function
ossl_check_const_OPENSSL_CSTRING_sk_type:
.LFB13:
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
.LFE13:
	.size	ossl_check_const_OPENSSL_CSTRING_sk_type, .-ossl_check_const_OPENSSL_CSTRING_sk_type
	.type	ossl_check_OPENSSL_CSTRING_sk_type, @function
ossl_check_OPENSSL_CSTRING_sk_type:
.LFB14:
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
.LFE14:
	.size	ossl_check_OPENSSL_CSTRING_sk_type, .-ossl_check_OPENSSL_CSTRING_sk_type
	.type	ossl_check_const_CONF_VALUE_sk_type, @function
ossl_check_const_CONF_VALUE_sk_type:
.LFB75:
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
.LFE75:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB403:
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
.LFE403:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB404:
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
.LFE404:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	sk_OSSL_PROVIDER_num, @function
sk_OSSL_PROVIDER_num:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE444:
	.size	sk_OSSL_PROVIDER_num, .-sk_OSSL_PROVIDER_num
	.type	sk_OSSL_PROVIDER_value, @function
sk_OSSL_PROVIDER_value:
.LFB445:
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
.LFE445:
	.size	sk_OSSL_PROVIDER_value, .-sk_OSSL_PROVIDER_value
	.type	sk_OSSL_PROVIDER_new_null, @function
sk_OSSL_PROVIDER_new_null:
.LFB447:
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
.LFE447:
	.size	sk_OSSL_PROVIDER_new_null, .-sk_OSSL_PROVIDER_new_null
	.type	sk_OSSL_PROVIDER_push, @function
sk_OSSL_PROVIDER_push:
.LFB454:
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
.LFE454:
	.size	sk_OSSL_PROVIDER_push, .-sk_OSSL_PROVIDER_push
	.type	sk_OSSL_PROVIDER_pop_free, @function
sk_OSSL_PROVIDER_pop_free:
.LFB458:
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
.LFE458:
	.size	sk_OSSL_PROVIDER_pop_free, .-sk_OSSL_PROVIDER_pop_free
	.section	.rodata
.LC0:
	.string	"../crypto/provider_conf.c"
	.text
	.globl	ossl_prov_conf_ctx_new
	.type	ossl_prov_conf_ctx_new, @function
ossl_prov_conf_ctx_new:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$32, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L23
	movl	$0, %eax
	jmp	.L24
.L23:
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L25
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$39, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L24
.L25:
	movq	-8(%rbp), %rax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	ossl_prov_conf_ctx_new, .-ossl_prov_conf_ctx_new
	.globl	ossl_prov_conf_ctx_free
	.type	ossl_prov_conf_ctx_free, @function
ossl_prov_conf_ctx_free:
.LFB470:
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
	movq	8(%rax), %rax
	movq	ossl_provider_free@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_pop_free
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$55, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	ossl_prov_conf_ctx_free, .-ossl_prov_conf_ctx_free
	.type	skip_dot, @function
skip_dot:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L28
	movq	-8(%rbp), %rax
	addq	$1, %rax
	jmp	.L29
.L28:
	movq	-24(%rbp), %rax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	skip_dot, .-skip_dot
	.section	.rodata
.LC1:
	.string	"."
	.text
	.type	provider_conf_params_internal, @function
provider_conf_params_internal:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$616, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -584(%rbp)
	movq	%rsi, -592(%rbp)
	movq	%rdx, -600(%rbp)
	movq	%rcx, -608(%rbp)
	movq	%r8, -616(%rbp)
	movq	%r9, -624(%rbp)
	movl	$1, -20(%rbp)
	movl	$0, -36(%rbp)
	movq	-608(%rbp), %rdx
	movq	-616(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_section@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L31
	movq	$0, -32(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L32
.L35:
	movq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	cmpq	%rax, -608(%rbp)
	jne	.L33
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$100, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L43
.L33:
	addl	$1, -24(%rbp)
.L32:
	movq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -24(%rbp)
	jl	.L35
	movq	-608(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_type
	movq	%rax, %rbx
	movq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L36
	movl	$-1, %eax
	jmp	.L43
.L36:
	cmpq	$0, -600(%rbp)
	je	.L37
	movq	-600(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$512, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	leaq	.LC1(%rip), %rcx
	leaq	-576(%rbp), %rax
	movl	$512, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -32(%rbp)
.L37:
	movl	$0, -24(%rbp)
	jmp	.L38
.L41:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	$511, %rax
	jbe	.L39
	movq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_pop@PLT
	movl	$-1, %eax
	jmp	.L43
.L39:
	leaq	-576(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	leaq	-576(%rbp), %rax
	movl	$512, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
	movq	-56(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-624(%rbp), %r8
	movq	-616(%rbp), %rdi
	leaq	-576(%rbp), %rdx
	movq	-592(%rbp), %rsi
	movq	-584(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	provider_conf_params_internal
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jns	.L40
	movq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_pop@PLT
	movl	-36(%rbp), %eax
	jmp	.L43
.L40:
	addl	$1, -24(%rbp)
.L38:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -24(%rbp)
	jl	.L41
	movq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_pop@PLT
	jmp	.L42
.L31:
	cmpq	$0, -584(%rbp)
	je	.L44
	movq	-608(%rbp), %rdx
	movq	-600(%rbp), %rcx
	movq	-584(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_provider_add_parameter@PLT
	movl	%eax, -20(%rbp)
	jmp	.L42
.L44:
	movq	-608(%rbp), %rdx
	movq	-600(%rbp), %rcx
	movq	-592(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_provider_info_add_parameter@PLT
	movl	%eax, -20(%rbp)
.L42:
	movl	-20(%rbp), %eax
.L43:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	provider_conf_params_internal, .-provider_conf_params_internal
	.type	provider_conf_params, @function
provider_conf_params:
.LFB473:
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
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L46
	movl	$-1, %eax
	jmp	.L47
.L46:
	movq	-8(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	provider_conf_params_internal
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	-12(%rbp), %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	provider_conf_params, .-provider_conf_params
	.type	prov_already_activated, @function
prov_already_activated:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L49
	movl	$0, %eax
	jmp	.L50
.L49:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_num
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L51
.L53:
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_value
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L52
	movl	$1, %eax
	jmp	.L50
.L52:
	addl	$1, -4(%rbp)
.L51:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L53
	movl	$0, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	prov_already_activated, .-prov_already_activated
	.type	provider_conf_activate, @function
provider_conf_activate:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movq	%r9, -80(%rbp)
	movq	-40(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_data@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L55
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L56
.L55:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$211, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L73
.L56:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	prov_already_activated
	testl	%eax, %eax
	jne	.L58
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_disable_fallback_loading@PLT
	testl	%eax, %eax
	jne	.L59
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$224, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L73
.L59:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_provider_find@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L60
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_provider_new@PLT
	movq	%rax, -8(%rbp)
.L60:
	cmpq	$0, -8(%rbp)
	jne	.L61
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	cmpl	$0, -68(%rbp)
	je	.L62
	call	ERR_clear_error@PLT
.L62:
	cmpl	$0, -68(%rbp)
	jne	.L63
	movl	$-1, %eax
	jmp	.L73
.L63:
	movl	$0, %eax
	jmp	.L73
.L61:
	cmpq	$0, -64(%rbp)
	je	.L65
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_provider_set_module_path@PLT
.L65:
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	provider_conf_params
	movl	%eax, -12(%rbp)
	cmpl	$1, -12(%rbp)
	jne	.L66
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_provider_activate@PLT
	testl	%eax, %eax
	jne	.L67
	movl	$0, -12(%rbp)
	jmp	.L66
.L67:
	leaq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_provider_add_to_store@PLT
	testl	%eax, %eax
	jne	.L68
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_provider_deactivate@PLT
	movl	$0, -12(%rbp)
	jmp	.L66
.L68:
	movq	-32(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	je	.L69
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_provider_activate@PLT
	testl	%eax, %eax
	jne	.L69
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	movl	$0, -12(%rbp)
	jmp	.L66
.L69:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L70
	call	sk_OSSL_PROVIDER_new_null
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L70:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_push
	testl	%eax, %eax
	jne	.L72
.L71:
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_provider_deactivate@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	movl	$0, -12(%rbp)
	jmp	.L66
.L72:
	movl	$1, -12(%rbp)
.L66:
	cmpl	$0, -12(%rbp)
	jg	.L58
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
.L58:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-12(%rbp), %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	provider_conf_activate, .-provider_conf_activate
	.section	.rodata
	.align 8
.LC2:
	.string	"directive %s set to unrecognized value"
.LC3:
	.string	"1"
.LC4:
	.string	"yes"
.LC5:
	.string	"YES"
.LC6:
	.string	"true"
.LC7:
	.string	"TRUE"
.LC8:
	.string	"on"
.LC9:
	.string	"ON"
.LC10:
	.string	"0"
.LC11:
	.string	"no"
.LC12:
	.string	"NO"
.LC13:
	.string	"false"
.LC14:
	.string	"FALSE"
.LC15:
	.string	"off"
.LC16:
	.string	"OFF"
	.text
	.type	provider_conf_parse_bool_setting, @function
provider_conf_parse_bool_setting:
.LFB476:
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
	cmpq	$0, -16(%rbp)
	jne	.L75
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$280, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movl	$105, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L76
.L75:
	leaq	.LC3(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L77
	leaq	.LC4(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L77
	leaq	.LC5(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L77
	leaq	.LC6(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L77
	leaq	.LC7(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L77
	leaq	.LC8(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L77
	leaq	.LC9(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L78
.L77:
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L79
.L78:
	leaq	.LC10(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L80
	leaq	.LC11(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L80
	leaq	.LC12(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L80
	leaq	.LC13(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L80
	leaq	.LC14(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L80
	leaq	.LC15(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L80
	leaq	.LC16(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L81
.L80:
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L79
.L81:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$302, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movl	$105, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L76
.L79:
	movl	$1, %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	provider_conf_parse_bool_setting, .-provider_conf_parse_bool_setting
	.section	.rodata
.LC17:
	.string	"section=%s not found"
.LC18:
	.string	"identity"
.LC19:
	.string	"soft_load"
.LC20:
	.string	"module"
.LC21:
	.string	"activate"
	.text
	.type	provider_conf_load, @function
provider_conf_load:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movl	$0, -60(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	skip_dot
	movq	%rax, -128(%rbp)
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_section@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L83
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$328, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-136(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	movq	%rax, %rcx
	movl	$105, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L99
.L83:
	movl	$0, -4(%rbp)
	jmp	.L85
.L90:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	skip_dot
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC18(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L86
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.L87
.L86:
	leaq	.LC19(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L88
	leaq	-60(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	provider_conf_parse_bool_setting
	testl	%eax, %eax
	jne	.L87
	movl	$0, %eax
	jmp	.L99
.L88:
	leaq	.LC20(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L89
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L87
.L89:
	leaq	.LC21(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L87
	leaq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	provider_conf_parse_bool_setting
	testl	%eax, %eax
	jne	.L87
	movl	$0, %eax
	jmp	.L99
.L87:
	addl	$1, -4(%rbp)
.L85:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L90
	movl	-64(%rbp), %eax
	testl	%eax, %eax
	je	.L91
	movl	-60(%rbp), %edi
	movq	-144(%rbp), %r8
	movq	-16(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	provider_conf_activate
	movl	%eax, -20(%rbp)
	jmp	.L92
.L91:
	leaq	-112(%rbp), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, -20(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L93
	leaq	.LC0(%rip), %rcx
	movq	-128(%rbp), %rax
	movl	$369, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	testq	%rax, %rax
	jne	.L93
	movl	$0, -20(%rbp)
.L93:
	cmpl	$0, -20(%rbp)
	je	.L94
	cmpq	$0, -16(%rbp)
	je	.L94
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$374, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	jne	.L94
	movl	$0, -20(%rbp)
.L94:
	cmpl	$0, -20(%rbp)
	je	.L95
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	provider_conf_params
	movl	%eax, -20(%rbp)
.L95:
	cmpl	$0, -20(%rbp)
	jle	.L96
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	jne	.L97
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	je	.L96
.L97:
	leaq	-112(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_provider_info_add_to_store@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
.L96:
	cmpl	$0, -24(%rbp)
	jne	.L92
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_info_clear@PLT
.L92:
	movl	-20(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	provider_conf_load, .-provider_conf_load
	.type	provider_conf_init, @function
provider_conf_init:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	CONF_imodule_get_value@PLT
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_section@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L101
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$412, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L102
.L101:
	movl	$0, -20(%rbp)
	jmp	.L103
.L105:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %r12
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_get0_libctx@PLT
	movq	%rax, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	provider_conf_load
	testl	%eax, %eax
	jne	.L104
	movl	$0, %eax
	jmp	.L102
.L104:
	addl	$1, -20(%rbp)
.L103:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L105
	movl	$1, %eax
.L102:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	provider_conf_init, .-provider_conf_init
	.section	.rodata
.LC22:
	.string	"providers"
	.text
	.globl	ossl_provider_add_conf_module
	.type	ossl_provider_add_conf_module, @function
ossl_provider_add_conf_module:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	provider_conf_init(%rip), %rcx
	leaq	.LC22(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CONF_module_add@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	ossl_provider_add_conf_module, .-ossl_provider_add_conf_module
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 30
__func__.4:
	.string	"provider_conf_params_internal"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 23
__func__.3:
	.string	"provider_conf_activate"
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 33
__func__.2:
	.string	"provider_conf_parse_bool_setting"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 19
__func__.1:
	.string	"provider_conf_load"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"provider_conf_init"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

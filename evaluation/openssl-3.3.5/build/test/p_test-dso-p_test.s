	.file	"p_test.c"
	.text
	.type	OSSL_FUNC_core_gettable_params, @function
OSSL_FUNC_core_gettable_params:
.LFB30:
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
.LFE30:
	.size	OSSL_FUNC_core_gettable_params, .-OSSL_FUNC_core_gettable_params
	.type	OSSL_FUNC_core_get_params, @function
OSSL_FUNC_core_get_params:
.LFB31:
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
.LFE31:
	.size	OSSL_FUNC_core_get_params, .-OSSL_FUNC_core_get_params
	.type	OSSL_FUNC_core_new_error, @function
OSSL_FUNC_core_new_error:
.LFB34:
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
.LFE34:
	.size	OSSL_FUNC_core_new_error, .-OSSL_FUNC_core_new_error
	.type	OSSL_FUNC_core_set_error_debug, @function
OSSL_FUNC_core_set_error_debug:
.LFB35:
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
.LFE35:
	.size	OSSL_FUNC_core_set_error_debug, .-OSSL_FUNC_core_set_error_debug
	.type	OSSL_FUNC_core_vset_error, @function
OSSL_FUNC_core_vset_error:
.LFB36:
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
.LFE36:
	.size	OSSL_FUNC_core_vset_error, .-OSSL_FUNC_core_vset_error
	.type	OSSL_FUNC_BIO_vsnprintf, @function
OSSL_FUNC_BIO_vsnprintf:
.LFB63:
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
.LFE63:
	.size	OSSL_FUNC_BIO_vsnprintf, .-OSSL_FUNC_BIO_vsnprintf
	.local	c_gettable_params
	.comm	c_gettable_params,8,8
	.local	c_get_params
	.comm	c_get_params,8,8
	.local	c_new_error
	.comm	c_new_error,8,8
	.local	c_set_error_debug
	.comm	c_set_error_debug,8,8
	.local	c_vset_error
	.comm	c_vset_error,8,8
	.local	c_BIO_vsnprintf
	.comm	c_BIO_vsnprintf,8,8
	.section	.rodata
.LC0:
	.string	"greeting"
.LC1:
	.string	"digest-check"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	p_param_types, @object
	.size	p_param_types, 120
p_param_types:
	.quad	.LC0
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC1
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	local_snprintf, @function
local_snprintf:
.LFB358:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L16
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L16:
	movl	$24, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	c_BIO_vsnprintf(%rip), %r8
	leaq	-208(%rbp), %rcx
	movq	-232(%rbp), %rdx
	movq	-224(%rbp), %rsi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -180(%rbp)
	movl	-180(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	local_snprintf, .-local_snprintf
	.type	p_set_error, @function
p_set_error:
.LFB359:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movl	%edi, -212(%rbp)
	movl	%esi, -216(%rbp)
	movq	%rdx, -224(%rbp)
	movl	%ecx, -228(%rbp)
	movq	%r8, -240(%rbp)
	movq	%r9, -248(%rbp)
	testb	%al, %al
	je	.L19
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L19:
	movl	$48, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	c_new_error(%rip), %rax
	movl	$0, %edi
	call	*%rax
	movq	c_set_error_debug(%rip), %r8
	movq	-240(%rbp), %rcx
	movl	-228(%rbp), %edx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%r8
	movq	c_vset_error(%rip), %r8
	movl	-212(%rbp), %eax
	sall	$23, %eax
	andl	$2139095040, %eax
	movl	%eax, %edx
	movl	-216(%rbp), %eax
	andl	$8388607, %eax
	movl	%edx, %esi
	orl	%eax, %esi
	leaq	-200(%rbp), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %edi
	call	*%r8
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	p_set_error, .-p_set_error
	.type	p_gettable_params, @function
p_gettable_params:
.LFB360:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	p_param_types(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	p_gettable_params, .-p_gettable_params
	.section	.rodata
	.align 8
.LC2:
	.string	"Hello OpenSSL %.20s, greetings from %s!"
.LC3:
	.string	"Howdy stranger..."
.LC4:
	.string	"stop-property-mirror"
	.text
	.type	p_get_params, @function
p_get_params:
.LFB361:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movq	%rdi, -328(%rbp)
	movq	%rsi, -336(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L23
.L35:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L24
	movq	$0, greeting.5(%rip)
	movq	greeting.5(%rip), %rax
	movq	%rax, provname.4(%rip)
	movq	provname.4(%rip), %rax
	movq	%rax, opensslv.3(%rip)
	movq	c_get_params(%rip), %rdx
	leaq	counter_request.2(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L25
	movq	greeting.5(%rip), %rax
	testq	%rax, %rax
	je	.L26
	movq	greeting.5(%rip), %rdx
	leaq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L27
.L26:
	movq	16+counter_request.2(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	56+counter_request.2(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	leaq	-320(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$256, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	local_snprintf
	jmp	.L27
.L25:
	leaq	.LC3(%rip), %rdx
	leaq	-320(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	local_snprintf
.L27:
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-64(%rbp), %rax
	jb	.L28
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-320(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L30
.L28:
	movl	$0, -12(%rbp)
	jmp	.L30
.L24:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L31
	movl	$0, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$3, %rax
	jbe	.L32
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	-40(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	$4, 32(%rax)
	jmp	.L30
.L32:
	movl	$0, -12(%rbp)
	jmp	.L30
.L31:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L30
	movl	$0, -36(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$3, %rax
	jbe	.L33
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	$4, 32(%rax)
	jmp	.L30
.L33:
	movl	$0, -12(%rbp)
.L30:
	addq	$40, -8(%rbp)
.L23:
	cmpl	$0, -12(%rbp)
	je	.L34
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L35
.L34:
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	p_get_params, .-p_get_params
	.type	p_get_reason_strings, @function
p_get_reason_strings:
.LFB362:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	reason_strings.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	p_get_reason_strings, .-p_get_reason_strings
	.type	p_query, @function
p_query:
.LFB363:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	p_query, .-p_query
	.section	.data.rel.ro.local
	.align 32
	.type	p_test_table, @object
	.size	p_test_table, 96
p_test_table:
	.long	1025
	.zero	4
	.quad	p_gettable_params
	.long	1026
	.zero	4
	.quad	p_get_params
	.long	1029
	.zero	4
	.quad	p_get_reason_strings
	.long	1024
	.zero	4
	.quad	p_teardown
	.long	1027
	.zero	4
	.quad	p_query
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC5:
	.string	"../test/p_test.c"
	.text
	.globl	OSSL_provider_init
	.type	OSSL_provider_init, @function
OSSL_provider_init:
.LFB364:
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
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L42
.L51:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	je	.L43
	cmpl	$47, %eax
	jg	.L54
	cmpl	$7, %eax
	je	.L45
	cmpl	$7, %eax
	jg	.L54
	cmpl	$6, %eax
	je	.L46
	cmpl	$6, %eax
	jg	.L54
	cmpl	$5, %eax
	je	.L47
	cmpl	$5, %eax
	jg	.L54
	cmpl	$1, %eax
	je	.L48
	cmpl	$2, %eax
	je	.L49
	jmp	.L54
.L48:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_gettable_params
	movq	%rax, c_gettable_params(%rip)
	jmp	.L50
.L49:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_get_params
	movq	%rax, c_get_params(%rip)
	jmp	.L50
.L47:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_new_error
	movq	%rax, c_new_error(%rip)
	jmp	.L50
.L46:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_set_error_debug
	movq	%rax, c_set_error_debug(%rip)
	jmp	.L50
.L45:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_vset_error
	movq	%rax, c_vset_error(%rip)
	jmp	.L50
.L43:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_BIO_vsnprintf
	movq	%rax, c_BIO_vsnprintf(%rip)
	jmp	.L50
.L54:
	nop
.L50:
	addq	$16, -8(%rbp)
.L42:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L51
	movl	$32, %edi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L52
	movl	$0, %eax
	jmp	.L53
.L52:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	__func__.0(%rip), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$329, %ecx
	movq	%rax, %rdx
	movl	$1, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	p_set_error
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	leaq	p_test_table(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	OSSL_provider_init, .-OSSL_provider_init
	.type	p_teardown, @function
p_teardown:
.LFB365:
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
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	p_teardown, .-p_teardown
	.local	greeting.5
	.comm	greeting.5,8,8
	.local	provname.4
	.comm	provname.4,8,8
	.local	opensslv.3
	.comm	opensslv.3,8,8
	.section	.rodata
.LC6:
	.string	"openssl-version"
.LC7:
	.string	"provider-name"
	.section	.data.rel.local,"aw"
	.align 32
	.type	counter_request.2, @object
	.size	counter_request.2, 160
counter_request.2:
	.quad	.LC6
	.long	6
	.zero	4
	.quad	opensslv.3
	.quad	8
	.quad	0
	.quad	.LC7
	.long	6
	.zero	4
	.quad	provname.4
	.quad	8
	.quad	0
	.quad	.LC0
	.long	6
	.zero	4
	.quad	greeting.5
	.quad	8
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
.LC8:
	.string	"dummy reason string"
	.align 8
.LC9:
	.string	"Can't create child library context"
.LC10:
	.string	"Can't load default provider"
	.section	.data.rel.ro.local
	.align 32
	.type	reason_strings.1, @object
	.size	reason_strings.1, 64
reason_strings.1:
	.long	1
	.zero	4
	.quad	.LC8
	.long	2
	.zero	4
	.quad	.LC9
	.long	3
	.zero	4
	.quad	.LC10
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"OSSL_provider_init"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

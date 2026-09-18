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
	.string	"MD4"
.LC5:
	.string	"Hello world"
.LC6:
	.string	"default"
.LC7:
	.string	"base"
.LC8:
	.string	"legacy"
.LC9:
	.string	"p_test"
.LC10:
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
	subq	$384, %rsp
	movq	%rdi, -376(%rbp)
	movq	%rsi, -384(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L23
.L39:
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
	leaq	-368(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L27
.L26:
	movq	16+counter_request.2(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	56+counter_request.2(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	leaq	-368(%rbp), %rax
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
	leaq	-368(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	local_snprintf
.L27:
	leaq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	movq	-8(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-96(%rbp), %rax
	jb	.L28
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-368(%rbp), %rdx
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
	movl	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC4(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -48(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -56(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L32
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_available@PLT
	testl	%eax, %eax
	jne	.L33
.L32:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$166, %ecx
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	p_set_error
	movl	$0, -12(%rbp)
.L33:
	cmpl	$0, -12(%rbp)
	je	.L34
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_available@PLT
	testl	%eax, %eax
	je	.L34
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_available@PLT
	testl	%eax, %eax
	je	.L34
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_available@PLT
	testl	%eax, %eax
	je	.L34
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_available@PLT
	testl	%eax, %eax
	je	.L34
	cmpq	$0, -48(%rbp)
	je	.L34
	cmpq	$0, -56(%rbp)
	je	.L34
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L34
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L34
	leaq	-112(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal@PLT
	testl	%eax, %eax
	je	.L34
	movl	$1, -16(%rbp)
.L34:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$3, %rax
	jbe	.L35
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	$4, 32(%rax)
	jmp	.L30
.L35:
	movl	$0, -12(%rbp)
	jmp	.L30
.L31:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L30
	movl	$0, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_set_default_properties@PLT
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$3, %rax
	jbe	.L37
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	$4, 32(%rax)
	jmp	.L30
.L37:
	movl	$0, -12(%rbp)
.L30:
	addq	$40, -8(%rbp)
.L23:
	cmpl	$0, -12(%rbp)
	je	.L38
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L39
.L38:
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
.LC11:
	.string	"../test/p_test.c"
.LC12:
	.string	"SHA2-256"
	.text
	.globl	p_test_init
	.type	p_test_init, @function
p_test_init:
.LFB364:
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
	movq	%rcx, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L46
.L55:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	je	.L47
	cmpl	$47, %eax
	jg	.L60
	cmpl	$7, %eax
	je	.L49
	cmpl	$7, %eax
	jg	.L60
	cmpl	$6, %eax
	je	.L50
	cmpl	$6, %eax
	jg	.L60
	cmpl	$5, %eax
	je	.L51
	cmpl	$5, %eax
	jg	.L60
	cmpl	$1, %eax
	je	.L52
	cmpl	$2, %eax
	je	.L53
	jmp	.L60
.L52:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_gettable_params
	movq	%rax, c_gettable_params(%rip)
	jmp	.L54
.L53:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_get_params
	movq	%rax, c_get_params(%rip)
	jmp	.L54
.L51:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_new_error
	movq	%rax, c_new_error(%rip)
	jmp	.L54
.L50:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_set_error_debug
	movq	%rax, c_set_error_debug(%rip)
	jmp	.L54
.L49:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_vset_error
	movq	%rax, c_vset_error(%rip)
	jmp	.L54
.L47:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_BIO_vsnprintf
	movq	%rax, c_BIO_vsnprintf(%rip)
	jmp	.L54
.L60:
	nop
.L54:
	addq	$16, -8(%rbp)
.L46:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L55
	movl	$32, %edi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L56
	movl	$0, %eax
	jmp	.L57
.L56:
	leaq	.LC11(%rip), %rax
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
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_new_child@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L58
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$306, %ecx
	movq	%rax, %rdx
	movl	$2, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	p_set_error
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	p_teardown
	movl	$0, %eax
	jmp	.L57
.L58:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC12(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L59
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	p_teardown
	movl	$0, %eax
	jmp	.L57
.L59:
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
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	leaq	p_test_table(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	p_test_init, .-p_test_init
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
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
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
.LC13:
	.string	"openssl-version"
.LC14:
	.string	"provider-name"
	.section	.data.rel.local,"aw"
	.align 32
	.type	counter_request.2, @object
	.size	counter_request.2, 160
counter_request.2:
	.quad	.LC13
	.long	6
	.zero	4
	.quad	opensslv.3
	.quad	8
	.quad	0
	.quad	.LC14
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
.LC15:
	.string	"dummy reason string"
	.align 8
.LC16:
	.string	"Can't create child library context"
.LC17:
	.string	"Can't load default provider"
	.section	.data.rel.ro.local
	.align 32
	.type	reason_strings.1, @object
	.size	reason_strings.1, 64
reason_strings.1:
	.long	1
	.zero	4
	.quad	.LC15
	.long	2
	.zero	4
	.quad	.LC16
	.long	3
	.zero	4
	.quad	.LC17
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 12
__func__.0:
	.string	"p_test_init"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

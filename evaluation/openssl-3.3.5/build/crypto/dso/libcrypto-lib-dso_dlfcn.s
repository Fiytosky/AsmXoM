	.file	"dso_dlfcn.c"
	.text
	.type	ossl_check_void_type, @function
ossl_check_void_type:
.LFB24:
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
.LFE24:
	.size	ossl_check_void_type, .-ossl_check_void_type
	.type	ossl_check_const_void_sk_type, @function
ossl_check_const_void_sk_type:
.LFB25:
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
.LFE25:
	.size	ossl_check_const_void_sk_type, .-ossl_check_const_void_sk_type
	.type	ossl_check_void_sk_type, @function
ossl_check_void_sk_type:
.LFB26:
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
.LFE26:
	.size	ossl_check_void_sk_type, .-ossl_check_void_sk_type
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
	.string	"OpenSSL 'dlfcn' shared library method"
	.section	.data.rel.local,"aw"
	.align 32
	.type	dso_meth_dlfcn, @object
	.size	dso_meth_dlfcn, 88
dso_meth_dlfcn:
	.quad	.LC0
	.quad	dlfcn_load
	.quad	dlfcn_unload
	.quad	dlfcn_bind_func
	.quad	0
	.quad	dlfcn_name_converter
	.quad	dlfcn_merger
	.quad	0
	.quad	0
	.quad	dlfcn_pathbyaddr
	.quad	dlfcn_globallookup
	.text
	.globl	DSO_METHOD_openssl
	.type	DSO_METHOD_openssl, @function
DSO_METHOD_openssl:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	dso_meth_dlfcn(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	DSO_METHOD_openssl, .-DSO_METHOD_openssl
	.section	.rodata
.LC1:
	.string	"../crypto/dso/dso_dlfcn.c"
.LC2:
	.string	"filename(%s): %s"
	.text
	.type	dlfcn_load, @function
dlfcn_load:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	DSO_convert_filename@PLT
	movq	%rax, -40(%rbp)
	movl	$2, -28(%rbp)
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L14
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$105, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$37, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L15
.L14:
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L16
	orl	$256, -28(%rbp)
.L16:
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	dlopen@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L17
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$118, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	dlerror@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$103, %esi
	movl	$37, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L15
.L17:
	call	__errno_location@PLT
	movl	-44(%rbp), %edx
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_void_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_void_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L18
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$37, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L15
.L18:
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movl	$1, %eax
	jmp	.L19
.L15:
	leaq	.LC1(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$136, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -24(%rbp)
	je	.L20
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dlclose@PLT
.L20:
	movl	$0, %eax
.L19:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	dlfcn_load, .-dlfcn_load
	.type	dlfcn_unload, @function
dlfcn_unload:
.LFB167:
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
	cmpq	$0, -40(%rbp)
	jne	.L22
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$146, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$37, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_void_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L24
	movl	$1, %eax
	jmp	.L23
.L24:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_void_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_pop@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L25
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$153, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$37, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_void_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_void_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	movl	$0, %eax
	jmp	.L23
.L25:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dlclose@PLT
	movl	$1, %eax
.L23:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	dlfcn_unload, .-dlfcn_unload
	.section	.rodata
.LC3:
	.string	"symname(%s): %s"
	.text
	.type	dlfcn_bind_func, @function
dlfcn_bind_func:
.LFB168:
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
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L27
	cmpq	$0, -48(%rbp)
	jne	.L28
.L27:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$174, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$37, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L28:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_void_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L30
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$178, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$37, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L30:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_void_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	leal	-1(%rax), %ebx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_void_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L31
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$183, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$37, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L31:
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dlsym@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L32
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$188, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	dlerror@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$106, %esi
	movl	$37, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	-32(%rbp), %rax
.L33:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	dlfcn_bind_func, .-dlfcn_bind_func
	.type	dlfcn_merger, @function
dlfcn_merger:
.LFB169:
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
	cmpq	$0, -32(%rbp)
	jne	.L35
	cmpq	$0, -40(%rbp)
	jne	.L35
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$201, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$37, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L36
.L35:
	cmpq	$0, -40(%rbp)
	je	.L37
	cmpq	$0, -32(%rbp)
	je	.L38
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L38
.L37:
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$209, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L40
	movl	$0, %eax
	jmp	.L36
.L38:
	cmpq	$0, -32(%rbp)
	jne	.L41
	leaq	.LC1(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$217, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L40
	movl	$0, %eax
	jmp	.L36
.L41:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -12(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L42
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L42
	subl	$1, -12(%rbp)
	subl	$1, -16(%rbp)
.L42:
	movl	-16(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$237, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L43
	movl	$0, %eax
	jmp	.L36
.L43:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$47, (%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
.L40:
	movq	-8(%rbp), %rax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	dlfcn_merger, .-dlfcn_merger
	.section	.rodata
.LC4:
	.string	"lib%s.so"
.LC5:
	.string	"%s.so"
.LC6:
	.string	"%s"
	.text
	.type	dlfcn_name_converter, @function
dlfcn_name_converter:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	-48(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L45
	movl	-4(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DSO_flags@PLT
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L45
	addl	$3, -4(%rbp)
.L45:
	movl	-4(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$261, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L46
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$263, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$37, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L47
.L46:
	cmpl	$0, -12(%rbp)
	je	.L48
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DSO_flags@PLT
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L49
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rdx
	leaq	.LC4(%rip), %rdi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L50
.L49:
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rdx
	leaq	.LC5(%rip), %rdi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L50
.L48:
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rdx
	leaq	.LC6(%rip), %rdi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
.L50:
	movq	-24(%rbp), %rax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	dlfcn_name_converter, .-dlfcn_name_converter
	.section	.rodata
.LC7:
	.string	"dlfcn_pathbyaddr(): "
	.text
	.type	dlfcn_pathbyaddr, @function
dlfcn_pathbyaddr:
.LFB171:
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
	cmpq	$0, -72(%rbp)
	jne	.L52
	leaq	dlfcn_pathbyaddr(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
.L52:
	leaq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dladdr@PLT
	testl	%eax, %eax
	je	.L53
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -84(%rbp)
	jg	.L54
	movl	-4(%rbp), %eax
	addl	$1, %eax
	jmp	.L57
.L54:
	movl	-4(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.L56
	movl	-84(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
.L56:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-4(%rbp), %eax
	jmp	.L57
.L53:
	call	dlerror@PLT
	movq	%rax, %rdx
	leaq	.LC7(%rip), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	movl	$-1, %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	dlfcn_pathbyaddr, .-dlfcn_pathbyaddr
	.type	dlfcn_globallookup, @function
dlfcn_globallookup:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movl	$1, %esi
	movl	$0, %edi
	call	dlopen@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L59
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dlsym@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	dlclose@PLT
.L59:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	dlfcn_globallookup, .-dlfcn_globallookup
	.section	.rodata
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 11
__func__.4:
	.string	"dlfcn_load"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 13
__func__.3:
	.string	"dlfcn_unload"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 16
__func__.2:
	.string	"dlfcn_bind_func"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 13
__func__.1:
	.string	"dlfcn_merger"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"dlfcn_name_converter"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

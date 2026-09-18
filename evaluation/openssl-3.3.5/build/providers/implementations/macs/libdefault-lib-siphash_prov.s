	.file	"siphash_prov.c"
	.text
	.type	crounds, @function
crounds:
.LFB358:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	136(%rax), %eax
	testl	%eax, %eax
	je	.L2
	movq	-8(%rbp), %rax
	movl	136(%rax), %eax
	jmp	.L4
.L2:
	movl	$2, %eax
.L4:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	crounds, .-crounds
	.type	drounds, @function
drounds:
.LFB359:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	140(%rax), %eax
	testl	%eax, %eax
	je	.L6
	movq	-8(%rbp), %rax
	movl	140(%rax), %eax
	jmp	.L8
.L6:
	movl	$4, %eax
.L8:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	drounds, .-drounds
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/macs/siphash_prov.c"
	.text
	.type	siphash_new, @function
siphash_new:
.LFB360:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	leaq	.LC0(%rip), %rax
	movl	$62, %edx
	movq	%rax, %rsi
	movl	$144, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L12
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L12:
	movq	-8(%rbp), %rax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	siphash_new, .-siphash_new
	.type	siphash_free, @function
siphash_free:
.LFB361:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$70, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	siphash_free, .-siphash_free
	.type	siphash_dup, @function
siphash_dup:
.LFB362:
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
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	leaq	.LC0(%rip), %rax
	movl	$80, %edx
	movq	%rax, %rsi
	movl	$144, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L17
	movl	$0, %eax
	jmp	.L16
.L17:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
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
	movq	-32(%rbp), %rax
.L16:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	siphash_dup, .-siphash_dup
	.type	siphash_size, @function
siphash_size:
.LFB363:
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
	addq	$8, %rax
	movq	%rax, %rdi
	call	SipHash_hash_size@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	siphash_size, .-siphash_size
	.type	siphash_setkey, @function
siphash_setkey:
.LFB364:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	cmpq	$16, -56(%rbp)
	je	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	drounds
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	crounds
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-48(%rbp), %rax
	movl	%ebx, %ecx
	movq	%rax, %rsi
	call	SipHash_Init@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L23
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rcx
	movq	16(%rdx), %rbx
	movq	%rcx, 72(%rax)
	movq	%rbx, 80(%rax)
	movq	24(%rdx), %rcx
	movq	32(%rdx), %rbx
	movq	%rcx, 88(%rax)
	movq	%rbx, 96(%rax)
	movq	40(%rdx), %rcx
	movq	48(%rdx), %rbx
	movq	%rcx, 104(%rax)
	movq	%rbx, 112(%rax)
	movq	56(%rdx), %rcx
	movq	64(%rdx), %rbx
	movq	%rcx, 120(%rax)
	movq	%rbx, 128(%rax)
.L23:
	movl	-20(%rbp), %eax
.L22:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	siphash_setkey, .-siphash_setkey
	.type	siphash_init, @function
siphash_init:
.LFB365:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L25
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	siphash_set_params
	testl	%eax, %eax
	jne	.L26
.L25:
	movl	$0, %eax
	jmp	.L27
.L26:
	cmpq	$0, -48(%rbp)
	jne	.L28
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rcx
	movq	80(%rdx), %rbx
	movq	%rcx, 8(%rax)
	movq	%rbx, 16(%rax)
	movq	88(%rdx), %rcx
	movq	96(%rdx), %rbx
	movq	%rcx, 24(%rax)
	movq	%rbx, 32(%rax)
	movq	104(%rdx), %rcx
	movq	112(%rdx), %rbx
	movq	%rcx, 40(%rax)
	movq	%rbx, 48(%rax)
	movq	120(%rdx), %rcx
	movq	128(%rdx), %rbx
	movq	%rcx, 56(%rax)
	movq	%rbx, 64(%rax)
	movl	$1, %eax
	jmp	.L27
.L28:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	siphash_setkey
.L27:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	siphash_init, .-siphash_init
	.type	siphash_update, @function
siphash_update:
.LFB366:
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
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L30
	movl	$1, %eax
	jmp	.L31
.L30:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	SipHash_Update@PLT
	movl	$1, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	siphash_update, .-siphash_update
	.type	siphash_final, @function
siphash_final:
.LFB367:
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
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	siphash_size
	movq	%rax, -16(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L33
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L34
.L33:
	movl	$0, %eax
	jmp	.L35
.L34:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	SipHash_Final@PLT
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	siphash_final, .-siphash_final
	.type	siphash_gettable_ctx_params, @function
siphash_gettable_ctx_params:
.LFB368:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_gettable_ctx_params.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	siphash_gettable_ctx_params, .-siphash_gettable_ctx_params
	.section	.rodata
.LC1:
	.string	"size"
.LC2:
	.string	"c-rounds"
.LC3:
	.string	"d-rounds"
	.text
	.type	siphash_get_ctx_params, @function
siphash_get_ctx_params:
.LFB369:
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
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L39
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	siphash_size
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L39
	movl	$0, %eax
	jmp	.L40
.L39:
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L41
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	crounds
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint@PLT
	testl	%eax, %eax
	jne	.L41
	movl	$0, %eax
	jmp	.L40
.L41:
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L42
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	drounds
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint@PLT
	testl	%eax, %eax
	jne	.L42
	movl	$0, %eax
	jmp	.L40
.L42:
	movl	$1, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	siphash_get_ctx_params, .-siphash_get_ctx_params
	.type	siphash_settable_ctx_params, @function
siphash_settable_ctx_params:
.LFB370:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_settable_ctx_params.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	siphash_settable_ctx_params, .-siphash_settable_ctx_params
	.section	.rodata
.LC4:
	.string	"key"
	.text
	.type	siphash_set_params, @function
siphash_set_params:
.LFB371:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L46
	movl	$1, %eax
	jmp	.L54
.L46:
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L48
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	je	.L49
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	SipHash_set_hash_size@PLT
	testl	%eax, %eax
	je	.L49
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$72, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	SipHash_set_hash_size@PLT
	testl	%eax, %eax
	jne	.L48
.L49:
	movl	$0, %eax
	jmp	.L54
.L48:
	leaq	.LC2(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L50
	movq	-8(%rbp), %rax
	leaq	136(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L50
	movl	$0, %eax
	jmp	.L54
.L50:
	leaq	.LC3(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L51
	movq	-8(%rbp), %rax
	leaq	140(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L51
	movl	$0, %eax
	jmp	.L54
.L51:
	leaq	.LC4(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L52
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L53
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	siphash_setkey
	testl	%eax, %eax
	jne	.L52
.L53:
	movl	$0, %eax
	jmp	.L54
.L52:
	movl	$1, %eax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	siphash_set_params, .-siphash_set_params
	.globl	ossl_siphash_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_siphash_functions, @object
	.size	ossl_siphash_functions, 176
ossl_siphash_functions:
	.long	1
	.zero	4
	.quad	siphash_new
	.long	2
	.zero	4
	.quad	siphash_dup
	.long	3
	.zero	4
	.quad	siphash_free
	.long	4
	.zero	4
	.quad	siphash_init
	.long	5
	.zero	4
	.quad	siphash_update
	.long	6
	.zero	4
	.quad	siphash_final
	.long	11
	.zero	4
	.quad	siphash_gettable_ctx_params
	.long	8
	.zero	4
	.quad	siphash_get_ctx_params
	.long	12
	.zero	4
	.quad	siphash_settable_ctx_params
	.long	9
	.zero	4
	.quad	siphash_set_params
	.long	0
	.zero	4
	.quad	0
	.align 32
	.type	known_gettable_ctx_params.1, @object
	.size	known_gettable_ctx_params.1, 160
known_gettable_ctx_params.1:
	.quad	.LC1
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC2
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC3
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.align 32
	.type	known_settable_ctx_params.0, @object
	.size	known_settable_ctx_params.0, 200
known_settable_ctx_params.0:
	.quad	.LC1
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC4
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC2
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC3
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

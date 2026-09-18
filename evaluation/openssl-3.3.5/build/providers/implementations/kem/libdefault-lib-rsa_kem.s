	.file	"rsa_kem.c"
	.text
	.section	.rodata
.LC0:
	.string	"RSASVE"
	.section	.data.rel.ro.local,"aw"
	.align 16
	.type	rsakem_opname_id_map, @object
	.size	rsakem_opname_id_map, 16
rsakem_opname_id_map:
	.long	0
	.zero	4
	.quad	.LC0
	.text
	.type	name2id, @function
name2id:
.LFB358:
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
	cmpq	$0, -24(%rbp)
	jne	.L2
	movl	$-1, %eax
	jmp	.L3
.L2:
	movq	$0, -8(%rbp)
	jmp	.L4
.L6:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L5
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	jmp	.L3
.L5:
	addq	$1, -8(%rbp)
.L4:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L6
	movl	$-1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	name2id, .-name2id
	.type	rsakem_opname2id, @function
rsakem_opname2id:
.LFB359:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	rsakem_opname_id_map(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	name2id
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	rsakem_opname2id, .-rsakem_opname2id
	.section	.rodata
	.align 8
.LC1:
	.string	"../providers/implementations/kem/rsa_kem.c"
	.text
	.type	rsakem_newctx, @function
rsakem_newctx:
.LFB360:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$86, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movl	$-1, 16(%rax)
	movq	-8(%rbp), %rax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	rsakem_newctx, .-rsakem_newctx
	.type	rsakem_freectx, @function
rsakem_freectx:
.LFB361:
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
	movq	%rax, %rdi
	call	RSA_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$101, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	rsakem_freectx, .-rsakem_freectx
	.type	rsakem_dupctx, @function
rsakem_dupctx:
.LFB362:
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
	leaq	.LC1(%rip), %rax
	movl	$109, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L16
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	RSA_up_ref@PLT
	testl	%eax, %eax
	jne	.L16
	leaq	.LC1(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$115, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L15
.L16:
	movq	-16(%rbp), %rax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	rsakem_dupctx, .-rsakem_dupctx
	.type	rsakem_init, @function
rsakem_init:
.LFB363:
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
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L18
	cmpq	$0, -32(%rbp)
	jne	.L19
.L18:
	movl	$0, %eax
	jmp	.L20
.L19:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-44(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_check_key@PLT
	testl	%eax, %eax
	jne	.L21
	movl	$0, %eax
	jmp	.L20
.L21:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_up_ref@PLT
	testl	%eax, %eax
	jne	.L22
	movl	$0, %eax
	jmp	.L20
.L22:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rsakem_set_ctx_params
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	rsakem_init, .-rsakem_init
	.type	rsakem_encapsulate_init, @function
rsakem_encapsulate_init:
.LFB364:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$4096, %ecx
	movq	%rax, %rdi
	call	rsakem_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	rsakem_encapsulate_init, .-rsakem_encapsulate_init
	.type	rsakem_decapsulate_init, @function
rsakem_decapsulate_init:
.LFB365:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$8192, %ecx
	movq	%rax, %rdi
	call	rsakem_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	rsakem_decapsulate_init, .-rsakem_decapsulate_init
	.type	rsakem_get_ctx_params, @function
rsakem_get_ctx_params:
.LFB366:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	rsakem_get_ctx_params, .-rsakem_get_ctx_params
	.section	.rodata
	.align 32
	.type	known_gettable_rsakem_ctx_params, @object
	.size	known_gettable_rsakem_ctx_params, 40
known_gettable_rsakem_ctx_params:
	.zero	40
	.text
	.type	rsakem_gettable_ctx_params, @function
rsakem_gettable_ctx_params:
.LFB367:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_gettable_rsakem_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	rsakem_gettable_ctx_params, .-rsakem_gettable_ctx_params
	.section	.rodata
.LC2:
	.string	"operation"
	.text
	.type	rsakem_set_ctx_params, @function
rsakem_set_ctx_params:
.LFB368:
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
	cmpq	$0, -8(%rbp)
	jne	.L32
	movl	$0, %eax
	jmp	.L33
.L32:
	cmpq	$0, -48(%rbp)
	jne	.L34
	movl	$1, %eax
	jmp	.L33
.L34:
	leaq	.LC2(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L35
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L36
	movl	$0, %eax
	jmp	.L33
.L36:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	rsakem_opname2id
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L37
	movl	$0, %eax
	jmp	.L33
.L37:
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 16(%rax)
.L35:
	movl	$1, %eax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	rsakem_set_ctx_params, .-rsakem_set_ctx_params
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_rsakem_ctx_params, @object
	.size	known_settable_rsakem_ctx_params, 80
known_settable_rsakem_ctx_params:
	.quad	.LC2
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	rsakem_settable_ctx_params, @function
rsakem_settable_ctx_params:
.LFB369:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_settable_rsakem_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	rsakem_settable_ctx_params, .-rsakem_settable_ctx_params
	.type	rsasve_gen_rand_bytes, @function
rsasve_gen_rand_bytes:
.LFB370:
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
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_get0_libctx@PLT
	movq	%rax, %rdi
	call	BN_CTX_secure_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L41
	movl	$0, %eax
	jmp	.L42
.L41:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L43
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_n@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L43
	movq	-24(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	je	.L43
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_range_ex@PLT
	testl	%eax, %eax
	je	.L43
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	je	.L43
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	cmpl	%eax, -52(%rbp)
	jne	.L43
	movl	$1, %eax
	jmp	.L44
.L43:
	movl	$0, %eax
.L44:
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	rsasve_gen_rand_bytes, .-rsasve_gen_rand_bytes
	.type	rsasve_generate, @function
rsasve_generate:
.LFB371:
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
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	cltq
	movq	%rax, -16(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L46
	cmpq	$0, -16(%rbp)
	jne	.L47
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$257, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L47:
	cmpq	$0, -40(%rbp)
	jne	.L49
	cmpq	$0, -56(%rbp)
	jne	.L49
	movl	$0, %eax
	jmp	.L48
.L49:
	cmpq	$0, -40(%rbp)
	je	.L50
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L50:
	cmpq	$0, -56(%rbp)
	je	.L51
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L51:
	movl	$1, %eax
	jmp	.L48
.L46:
	cmpq	$0, -40(%rbp)
	je	.L52
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L52
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$275, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$217, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L52:
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsasve_gen_rand_bytes
	testl	%eax, %eax
	jne	.L53
	movl	$0, %eax
	jmp	.L48
.L53:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	%eax, %edi
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$3, %r8d
	movq	%rax, %rsi
	call	RSA_public_encrypt@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L54
	movl	$1, -4(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L55
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L55:
	cmpq	$0, -56(%rbp)
	je	.L56
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L56
.L54:
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L56:
	movl	-4(%rbp), %eax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	rsasve_generate, .-rsasve_generate
	.type	rsasve_recover, @function
rsasve_recover:
.LFB372:
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
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	cltq
	movq	%rax, -8(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L58
	cmpq	$0, -8(%rbp)
	jne	.L59
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$333, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L60
.L59:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L60
.L58:
	movq	-56(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.L61
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$345, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$142, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L60
.L61:
	cmpq	$0, -40(%rbp)
	je	.L62
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L62
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$355, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$217, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L60
.L62:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	%eax, %edi
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$3, %r8d
	movq	%rax, %rsi
	call	RSA_private_decrypt@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.L63
	cmpq	$0, -40(%rbp)
	je	.L63
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L63:
	cmpl	$0, -12(%rbp)
	setg	%al
	movzbl	%al, %eax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE372:
	.size	rsasve_recover, .-rsasve_recover
	.type	rsakem_generate, @function
rsakem_generate:
.LFB373:
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
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L65
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsasve_generate
	jmp	.L66
.L65:
	movl	$-2, %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE373:
	.size	rsakem_generate, .-rsakem_generate
	.type	rsakem_recover, @function
rsakem_recover:
.LFB374:
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
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L68
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsasve_recover
	jmp	.L69
.L68:
	movl	$-2, %eax
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE374:
	.size	rsakem_recover, .-rsakem_recover
	.globl	ossl_rsa_asym_kem_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsa_asym_kem_functions, @object
	.size	ossl_rsa_asym_kem_functions, 192
ossl_rsa_asym_kem_functions:
	.long	1
	.zero	4
	.quad	rsakem_newctx
	.long	2
	.zero	4
	.quad	rsakem_encapsulate_init
	.long	3
	.zero	4
	.quad	rsakem_generate
	.long	4
	.zero	4
	.quad	rsakem_decapsulate_init
	.long	5
	.zero	4
	.quad	rsakem_recover
	.long	6
	.zero	4
	.quad	rsakem_freectx
	.long	7
	.zero	4
	.quad	rsakem_dupctx
	.long	8
	.zero	4
	.quad	rsakem_get_ctx_params
	.long	9
	.zero	4
	.quad	rsakem_gettable_ctx_params
	.long	10
	.zero	4
	.quad	rsakem_set_ctx_params
	.long	11
	.zero	4
	.quad	rsakem_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"rsasve_generate"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"rsasve_recover"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

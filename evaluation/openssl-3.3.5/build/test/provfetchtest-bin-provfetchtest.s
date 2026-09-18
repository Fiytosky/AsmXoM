	.file	"provfetchtest.c"
	.text
	.type	dummy_decoder_decode, @function
dummy_decoder_decode:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	dummy_decoder_decode, .-dummy_decoder_decode
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	dummy_decoder_functions, @object
	.size	dummy_decoder_functions, 32
dummy_decoder_functions:
	.long	11
	.zero	4
	.quad	dummy_decoder_decode
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC0:
	.string	"DUMMY"
.LC1:
	.string	"provider=dummy,input=pem"
	.section	.data.rel.ro.local
	.align 32
	.type	dummy_decoders, @object
	.size	dummy_decoders, 64
dummy_decoders:
	.quad	.LC0
	.quad	.LC1
	.quad	dummy_decoder_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.text
	.type	dummy_encoder_encode, @function
dummy_encoder_encode:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	dummy_encoder_encode, .-dummy_encoder_encode
	.section	.data.rel.ro.local
	.align 32
	.type	dummy_encoder_functions, @object
	.size	dummy_encoder_functions, 32
dummy_encoder_functions:
	.long	11
	.zero	4
	.quad	dummy_encoder_encode
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC2:
	.string	"provider=dummy,output=pem"
	.section	.data.rel.ro.local
	.align 32
	.type	dummy_encoders, @object
	.size	dummy_encoders, 64
dummy_encoders:
	.quad	.LC0
	.quad	.LC2
	.quad	dummy_encoder_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.text
	.type	dummy_store_open, @function
dummy_store_open:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	dummy_store_open, .-dummy_store_open
	.type	dummy_store_load, @function
dummy_store_load:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	dummy_store_load, .-dummy_store_load
	.type	dumm_store_eof, @function
dumm_store_eof:
.LFB472:
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
.LFE472:
	.size	dumm_store_eof, .-dumm_store_eof
	.type	dummy_store_close, @function
dummy_store_close:
.LFB473:
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
.LFE473:
	.size	dummy_store_close, .-dummy_store_close
	.section	.data.rel.ro.local
	.align 32
	.type	dummy_store_functions, @object
	.size	dummy_store_functions, 80
dummy_store_functions:
	.long	1
	.zero	4
	.quad	dummy_store_open
	.long	5
	.zero	4
	.quad	dummy_store_load
	.long	6
	.zero	4
	.quad	dumm_store_eof
	.long	7
	.zero	4
	.quad	dummy_store_close
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC3:
	.string	"provider=dummy"
	.section	.data.rel.ro.local
	.align 32
	.type	dummy_store, @object
	.size	dummy_store, 64
dummy_store:
	.quad	.LC0
	.quad	.LC3
	.quad	dummy_store_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.text
	.type	dummy_rand_newctx, @function
dummy_rand_newctx:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	dummy_rand_newctx, .-dummy_rand_newctx
	.type	dummy_rand_freectx, @function
dummy_rand_freectx:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	dummy_rand_freectx, .-dummy_rand_freectx
	.type	dummy_rand_instantiate, @function
dummy_rand_instantiate:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	dummy_rand_instantiate, .-dummy_rand_instantiate
	.type	dummy_rand_uninstantiate, @function
dummy_rand_uninstantiate:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	dummy_rand_uninstantiate, .-dummy_rand_uninstantiate
	.type	dummy_rand_generate, @function
dummy_rand_generate:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L21
.L22:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L21:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L22
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	dummy_rand_generate, .-dummy_rand_generate
	.type	dummy_rand_gettable_ctx_params, @function
dummy_rand_gettable_ctx_params:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_gettable_ctx_params.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	dummy_rand_gettable_ctx_params, .-dummy_rand_gettable_ctx_params
	.section	.rodata
.LC4:
	.string	"max_request"
	.text
	.type	dummy_rand_get_ctx_params, @function
dummy_rand_get_ctx_params:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC4(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L27
	movq	-8(%rbp), %rax
	movl	$2147483647, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	movl	$1, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	dummy_rand_get_ctx_params, .-dummy_rand_get_ctx_params
	.type	dummy_rand_enable_locking, @function
dummy_rand_enable_locking:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	dummy_rand_enable_locking, .-dummy_rand_enable_locking
	.type	dummy_rand_lock, @function
dummy_rand_lock:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	dummy_rand_lock, .-dummy_rand_lock
	.type	dummy_rand_unlock, @function
dummy_rand_unlock:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	dummy_rand_unlock, .-dummy_rand_unlock
	.section	.data.rel.ro.local
	.align 32
	.type	dummy_rand_functions, @object
	.size	dummy_rand_functions, 176
dummy_rand_functions:
	.long	1
	.zero	4
	.quad	dummy_rand_newctx
	.long	2
	.zero	4
	.quad	dummy_rand_freectx
	.long	3
	.zero	4
	.quad	dummy_rand_instantiate
	.long	4
	.zero	4
	.quad	dummy_rand_uninstantiate
	.long	5
	.zero	4
	.quad	dummy_rand_generate
	.long	12
	.zero	4
	.quad	dummy_rand_gettable_ctx_params
	.long	15
	.zero	4
	.quad	dummy_rand_get_ctx_params
	.long	8
	.zero	4
	.quad	dummy_rand_enable_locking
	.long	9
	.zero	4
	.quad	dummy_rand_lock
	.long	10
	.zero	4
	.quad	dummy_rand_unlock
	.long	0
	.zero	4
	.quad	0
	.align 32
	.type	dummy_rand, @object
	.size	dummy_rand, 64
dummy_rand:
	.quad	.LC0
	.quad	.LC3
	.quad	dummy_rand_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.text
	.type	dummy_query, @function
dummy_query:
.LFB484:
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
	movl	$0, (%rax)
	cmpl	$22, -12(%rbp)
	je	.L35
	cmpl	$22, -12(%rbp)
	jg	.L36
	cmpl	$21, -12(%rbp)
	je	.L37
	cmpl	$21, -12(%rbp)
	jg	.L36
	cmpl	$5, -12(%rbp)
	je	.L38
	cmpl	$20, -12(%rbp)
	je	.L39
	jmp	.L36
.L37:
	leaq	dummy_decoders(%rip), %rax
	jmp	.L40
.L39:
	leaq	dummy_encoders(%rip), %rax
	jmp	.L40
.L35:
	leaq	dummy_store(%rip), %rax
	jmp	.L40
.L38:
	leaq	dummy_rand(%rip), %rax
	jmp	.L40
.L36:
	movl	$0, %eax
.L40:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	dummy_query, .-dummy_query
	.section	.data.rel.ro,"aw"
	.align 32
	.type	dummy_dispatch_table, @object
	.size	dummy_dispatch_table, 48
dummy_dispatch_table:
	.long	1027
	.zero	4
	.quad	dummy_query
	.long	1024
	.zero	4
	.quad	OSSL_LIB_CTX_free
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dummy_provider_init, @function
dummy_provider_init:
.LFB485:
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
	movq	%rcx, -80(%rbp)
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_new_child@PLT
	movq	%rax, -8(%rbp)
	movq	-80(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	leaq	dummy_dispatch_table(%rip), %rdx
	movq	%rdx, (%rax)
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$32, %edx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L42
	movl	$0, %eax
	jmp	.L44
.L42:
	movl	$1, %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	dummy_provider_init, .-dummy_provider_init
	.section	.rodata
.LC5:
	.string	"libctx"
.LC6:
	.string	"../test/provfetchtest.c"
.LC7:
	.string	"dummy-prov"
	.align 8
.LC8:
	.string	"OSSL_PROVIDER_add_builtin(libctx, \"dummy-prov\", dummy_provider_init)"
.LC9:
	.string	"default"
	.align 8
.LC10:
	.string	"nullprov = OSSL_PROVIDER_load(libctx, \"default\")"
	.align 8
.LC11:
	.string	"dummyprov = OSSL_PROVIDER_load(libctx, \"dummy-prov\")"
.LC12:
	.string	"decoder"
.LC13:
	.string	"encoder"
.LC14:
	.string	"loader"
	.align 8
.LC15:
	.string	"RAND_set_DRBG_type(libctx, \"DUMMY\", query ? \"provider=dummy\" : NULL, NULL, NULL)"
.LC16:
	.string	"1"
	.align 8
.LC17:
	.string	"RAND_bytes_ex(libctx, buf, sizeof(buf), 0)"
	.text
	.type	fetch_test, @function
fetch_test:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	cmpl	$3, -100(%rbp)
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$242, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L70
	leaq	dummy_provider_init(%rip), %rdx
	leaq	.LC7(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_add_builtin@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$245, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L71
	leaq	.LC9(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$247, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L71
	leaq	.LC7(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$248, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L71
	movl	-100(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%eax, %edx
	andl	$3, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$3, %eax
	je	.L50
	cmpl	$3, %eax
	jg	.L72
	cmpl	$2, %eax
	je	.L52
	cmpl	$2, %eax
	jg	.L72
	testl	%eax, %eax
	je	.L53
	cmpl	$1, %eax
	je	.L54
	jmp	.L72
.L53:
	cmpl	$0, -60(%rbp)
	je	.L55
	leaq	.LC3(%rip), %rdx
	jmp	.L56
.L55:
	movl	$0, %edx
.L56:
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_fetch@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$255, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L73
	jmp	.L47
.L54:
	cmpl	$0, -60(%rbp)
	je	.L59
	leaq	.LC3(%rip), %rdx
	jmp	.L60
.L59:
	movl	$0, %edx
.L60:
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_fetch@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$261, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L74
	jmp	.L47
.L52:
	cmpl	$0, -60(%rbp)
	je	.L62
	leaq	.LC3(%rip), %rdx
	jmp	.L63
.L62:
	movl	$0, %edx
.L63:
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_fetch@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$267, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L75
	jmp	.L47
.L50:
	cmpl	$0, -60(%rbp)
	je	.L65
	leaq	.LC3(%rip), %rdx
	jmp	.L66
.L65:
	movl	$0, %edx
.L66:
	leaq	.LC0(%rip), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_set_DRBG_type@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$271, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L76
	leaq	-96(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$32, %edx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$274, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L76
	jmp	.L58
.L73:
	nop
	jmp	.L58
.L74:
	nop
	jmp	.L58
.L75:
	nop
.L58:
	movl	$1, -44(%rbp)
	jmp	.L47
.L70:
	nop
	jmp	.L47
.L71:
	nop
	jmp	.L47
.L72:
	nop
	jmp	.L47
.L76:
	nop
.L47:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-44(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	fetch_test, .-fetch_test
	.section	.rodata
.LC18:
	.string	"fetch_test"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	fetch_test(%rip), %rsi
	leaq	.LC18(%rip), %rax
	movl	$1, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	setup_tests, .-setup_tests
	.section	.data.rel.ro.local
	.align 32
	.type	known_gettable_ctx_params.0, @object
	.size	known_gettable_ctx_params.0, 80
known_gettable_ctx_params.0:
	.quad	.LC4
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

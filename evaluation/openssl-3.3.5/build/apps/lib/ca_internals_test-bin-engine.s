	.file	"engine.c"
	.text
	.section	.rodata
.LC0:
	.string	"dynamic"
.LC1:
	.string	"SO_PATH"
.LC2:
	.string	"LOAD"
	.text
	.type	try_load_engine, @function
try_load_engine:
.LFB631:
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
	movq	%rax, %rdi
	call	ENGINE_by_id@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2
	movq	-24(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ENGINE_ctrl_cmd_string@PLT
	testl	%eax, %eax
	je	.L3
	leaq	.LC2(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ENGINE_ctrl_cmd_string@PLT
	testl	%eax, %eax
	jne	.L2
.L3:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	movq	$0, -8(%rbp)
.L2:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	try_load_engine, .-try_load_engine
	.section	.rodata
.LC3:
	.string	"auto"
.LC4:
	.string	"Enabling auto ENGINE support\n"
.LC5:
	.string	"Invalid engine \"%s\"\n"
.LC6:
	.string	"SET_USER_INTERFACE"
.LC7:
	.string	"Cannot use engine \"%s\"\n"
.LC8:
	.string	"Engine \"%s\" set.\n"
	.text
	.globl	setup_engine_methods
	.type	setup_engine_methods, @function
setup_engine_methods:
.LFB632:
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
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L6
	leaq	.LC3(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L7
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	ENGINE_register_all_complete@PLT
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_by_id@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	try_load_engine
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L9
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$0, %eax
	jmp	.L8
.L9:
	cmpl	$0, -32(%rbp)
	je	.L10
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ENGINE_ctrl@PLT
.L10:
	call	get_ui_method@PLT
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ENGINE_ctrl_cmd@PLT
	testl	%eax, %eax
	je	.L11
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ENGINE_set_default@PLT
	testl	%eax, %eax
	jne	.L12
.L11:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_id@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	movl	$0, %eax
	jmp	.L8
.L12:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_id@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L6:
	movq	-8(%rbp), %rax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	setup_engine_methods, .-setup_engine_methods
	.globl	release_engine
	.type	release_engine, @function
release_engine:
.LFB633:
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
	call	ENGINE_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	release_engine, .-release_engine
	.globl	init_engine
	.type	init_engine, @function
init_engine:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_init@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	init_engine, .-init_engine
	.globl	finish_engine
	.type	finish_engine, @function
finish_engine:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	finish_engine, .-finish_engine
	.section	.rodata
	.align 8
.LC9:
	.string	"No engine specified for loading %s\n"
	.align 8
.LC10:
	.string	"No engine key id specified for loading %s\n"
.LC11:
	.string	"../apps/lib/engine.c"
.LC12:
	.string	"org.openssl.engine:"
.LC13:
	.string	":"
	.text
	.globl	make_engine_uri
	.type	make_engine_uri, @function
make_engine_uri:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L19
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	leaq	.LC9(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L20
.L19:
	cmpq	$0, -64(%rbp)
	jne	.L21
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	leaq	.LC10(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L20
.L21:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_id@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rbx, %rax
	addq	$21, %rax
	movq	%rax, -40(%rbp)
	leaq	.LC11(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$124, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L20
	movq	-40(%rbp), %rdx
	leaq	.LC12(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
	movq	-40(%rbp), %rdx
	leaq	.LC13(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
.L20:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	make_engine_uri, .-make_engine_uri
	.globl	get_legacy_pkey_id
	.type	get_legacy_pkey_id, @function
get_legacy_pkey_id:
.LFB637:
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
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	call	ERR_set_mark@PLT
	movq	-48(%rbp), %rcx
	leaq	-16(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_asn1_find_str@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	cmpq	$0, -8(%rbp)
	jne	.L24
	cmpq	$0, -56(%rbp)
	je	.L24
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ENGINE_get_pkey_asn1_meth_str@PLT
	movq	%rax, -8(%rbp)
	jmp	.L25
.L24:
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L25
	movq	$0, -8(%rbp)
.L25:
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -8(%rbp)
	jne	.L26
	movl	$0, %eax
	jmp	.L28
.L26:
	movq	-8(%rbp), %rdx
	leaq	-20(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_asn1_get0_info@PLT
	movl	-20(%rbp), %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	get_legacy_pkey_id, .-get_legacy_pkey_id
	.globl	get_digest_from_engine
	.type	get_digest_from_engine, @function
get_digest_from_engine:
.LFB638:
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
	call	OBJ_sn2nid@PLT
	movl	%eax, %edi
	call	ENGINE_get_digest_engine@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L30
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	jmp	.L31
.L30:
	movl	$0, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	get_digest_from_engine, .-get_digest_from_engine
	.globl	get_cipher_from_engine
	.type	get_cipher_from_engine, @function
get_cipher_from_engine:
.LFB639:
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
	call	OBJ_sn2nid@PLT
	movl	%eax, %edi
	call	ENGINE_get_cipher_engine@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L33
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_cipherbyname@PLT
	jmp	.L34
.L33:
	movl	$0, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	get_cipher_from_engine, .-get_cipher_from_engine
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"engine_loader.c"
	.text
	.section	.rodata
.LC0:
	.string	"../apps/lib/engine_loader.c"
	.text
	.type	OSSL_STORE_LOADER_CTX_new, @function
OSSL_STORE_LOADER_CTX_new:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$46, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L2:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	OSSL_STORE_LOADER_CTX_new, .-OSSL_STORE_LOADER_CTX_new
	.type	OSSL_STORE_LOADER_CTX_free, @function
OSSL_STORE_LOADER_CTX_free:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L6
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$59, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$60, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L6:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	OSSL_STORE_LOADER_CTX_free, .-OSSL_STORE_LOADER_CTX_free
	.section	.rodata
.LC1:
	.string	"org.openssl.engine:"
	.text
	.type	engine_open, @function
engine_open:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%rdx, -328(%rbp)
	movq	%rcx, -336(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$19, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strncasecmp@PLT
	testl	%eax, %eax
	jne	.L8
	addq	$19, -8(%rbp)
	movl	$0, %eax
	jmp	.L9
.L8:
	movl	$1, %eax
.L9:
	testb	%al, %al
	je	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-8(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L12
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	je	.L12
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L12
	movq	-40(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rcx
	leaq	-304(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	leaq	-304(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_by_id@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	leaq	.LC0(%rip), %rcx
	movl	$89, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -24(%rbp)
.L12:
	cmpq	$0, -16(%rbp)
	je	.L13
	cmpq	$0, -24(%rbp)
	je	.L13
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_CTX_new
	movq	%rax, -32(%rbp)
.L13:
	cmpq	$0, -32(%rbp)
	jne	.L14
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$96, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
.L14:
	movq	-32(%rbp), %rax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	engine_open, .-engine_open
	.type	engine_expect, @function
engine_expect:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L16
	cmpl	$3, -12(%rbp)
	je	.L16
	cmpl	$4, -12(%rbp)
	jne	.L17
.L16:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 16(%rax)
	movl	$1, %eax
	jmp	.L18
.L17:
	movl	$0, %eax
.L18:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	engine_expect, .-engine_expect
	.type	engine_load, @function
engine_load:
.LFB635:
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
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	jne	.L20
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_init@PLT
	testl	%eax, %eax
	je	.L20
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L21
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$4, %eax
	jne	.L22
.L21:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	ENGINE_load_private_key@PLT
	movq	%rax, -8(%rbp)
.L22:
	cmpq	$0, -8(%rbp)
	jne	.L23
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L24
.L23:
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$3, %eax
	jne	.L25
.L24:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	ENGINE_load_public_key@PLT
	movq	%rax, -16(%rbp)
.L25:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
.L20:
	movq	-40(%rbp), %rax
	movl	$1, 20(%rax)
	cmpq	$0, -16(%rbp)
	je	.L26
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_new_PUBKEY@PLT
	movq	%rax, -24(%rbp)
	jmp	.L27
.L26:
	cmpq	$0, -8(%rbp)
	je	.L27
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_new_PKEY@PLT
	movq	%rax, -24(%rbp)
.L27:
	cmpq	$0, -24(%rbp)
	jne	.L28
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L28:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	engine_load, .-engine_load
	.type	engine_eof, @function
engine_eof:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	engine_eof, .-engine_eof
	.type	engine_error, @function
engine_error:
.LFB637:
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
.LFE637:
	.size	engine_error, .-engine_error
	.type	engine_close, @function
engine_close:
.LFB638:
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
	call	OSSL_STORE_LOADER_CTX_free
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	engine_close, .-engine_close
	.section	.rodata
.LC2:
	.string	"org.openssl.engine"
	.text
	.globl	setup_engine_loader
	.type	setup_engine_loader, @function
setup_engine_loader:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_STORE_LOADER_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L37
	leaq	engine_open(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_set_open@PLT
	testl	%eax, %eax
	je	.L37
	leaq	engine_expect(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_set_expect@PLT
	testl	%eax, %eax
	je	.L37
	leaq	engine_load(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_set_load@PLT
	testl	%eax, %eax
	je	.L37
	leaq	engine_eof(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_set_eof@PLT
	testl	%eax, %eax
	je	.L37
	leaq	engine_error(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_set_error@PLT
	testl	%eax, %eax
	je	.L37
	leaq	engine_close(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_set_close@PLT
	testl	%eax, %eax
	je	.L37
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_register_loader@PLT
	testl	%eax, %eax
	jne	.L38
.L37:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_free@PLT
	movq	$0, -8(%rbp)
.L38:
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	setup_engine_loader, .-setup_engine_loader
	.globl	destroy_engine_loader
	.type	destroy_engine_loader, @function
destroy_engine_loader:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_unregister_loader@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	destroy_engine_loader, .-destroy_engine_loader
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

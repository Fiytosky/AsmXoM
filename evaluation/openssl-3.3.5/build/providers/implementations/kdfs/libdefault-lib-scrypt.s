	.file	"scrypt.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/kdfs/scrypt.c"
	.text
	.type	kdf_scrypt_new_inner, @function
kdf_scrypt_new_inner:
.LFB413:
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
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	leaq	.LC0(%rip), %rax
	movl	$65, %edx
	movq	%rax, %rsi
	movl	$88, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L3
.L4:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	kdf_scrypt_init
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	kdf_scrypt_new_inner, .-kdf_scrypt_new_inner
	.type	kdf_scrypt_new, @function
kdf_scrypt_new:
.LFB414:
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
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, %rdi
	call	kdf_scrypt_new_inner
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	kdf_scrypt_new, .-kdf_scrypt_new
	.type	kdf_scrypt_free, @function
kdf_scrypt_free:
.LFB415:
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
	cmpq	$0, -8(%rbp)
	je	.L9
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$83, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	kdf_scrypt_reset
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$86, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L9:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	kdf_scrypt_free, .-kdf_scrypt_free
	.type	kdf_scrypt_reset, @function
kdf_scrypt_reset:
.LFB416:
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
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$94, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$96, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	kdf_scrypt_init
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	kdf_scrypt_reset, .-kdf_scrypt_reset
	.type	kdf_scrypt_dup, @function
kdf_scrypt_dup:
.LFB417:
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
	call	kdf_scrypt_new_inner
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L12
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L13
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_up_ref@PLT
	testl	%eax, %eax
	je	.L19
.L13:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L15
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$111, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L20
.L15:
	movq	-16(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L21
	movq	-16(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L21
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 80(%rax)
.L12:
	movq	-16(%rbp), %rax
	jmp	.L18
.L19:
	nop
	jmp	.L14
.L20:
	nop
	jmp	.L14
.L21:
	nop
.L14:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	kdf_scrypt_free
	movl	$0, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	kdf_scrypt_dup, .-kdf_scrypt_dup
	.type	kdf_scrypt_init, @function
kdf_scrypt_init:
.LFB418:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$1048576, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$8, 56(%rax)
	movq	-8(%rbp), %rax
	movq	$1, 64(%rax)
	movq	-8(%rbp), %rax
	movq	$1074790400, 72(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	kdf_scrypt_init, .-kdf_scrypt_init
	.type	scrypt_set_membuf, @function
scrypt_set_membuf:
.LFB419:
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
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$148, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L24
	leaq	.LC0(%rip), %rax
	movl	$153, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L25
	movl	$0, %eax
	jmp	.L26
.L24:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L25
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L25
	movl	$0, %eax
	jmp	.L26
.L25:
	movl	$1, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	scrypt_set_membuf, .-scrypt_set_membuf
	.section	.rodata
.LC1:
	.string	"sha256"
	.text
	.type	set_digest, @function
set_digest:
.LFB420:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L28
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$167, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L29
.L28:
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	set_digest, .-set_digest
	.type	set_property_query, @function
set_property_query:
.LFB421:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$175, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	cmpq	$0, -16(%rbp)
	je	.L31
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$178, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L31
	movl	$0, %eax
	jmp	.L32
.L31:
	movl	$1, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	set_property_query, .-set_property_query
	.type	kdf_scrypt_derive, @function
kdf_scrypt_derive:
.LFB422:
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
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L34
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kdf_scrypt_set_ctx_params
	testl	%eax, %eax
	jne	.L35
.L34:
	movl	$0, %eax
	jmp	.L36
.L35:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$194, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L36
.L37:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L38
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$199, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$131, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L36
.L38:
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L39
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	set_digest
	testl	%eax, %eax
	jne	.L39
	movl	$0, %eax
	jmp	.L36
.L39:
	movq	-24(%rbp), %rax
	movq	8(%rax), %r11
	movq	-24(%rbp), %rax
	movq	(%rax), %r10
	movq	-24(%rbp), %rax
	movq	80(%rax), %r9
	movq	-24(%rbp), %rax
	movq	72(%rax), %r8
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	56(%rax), %r12
	movq	-24(%rbp), %rax
	movq	48(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	subq	$8, %rsp
	pushq	%r11
	pushq	%r10
	pushq	%r9
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	pushq	%r8
	pushq	%rdi
	movq	%r12, %r9
	movq	%rbx, %r8
	movq	%rax, %rdi
	call	scrypt_alg
	addq	$64, %rsp
.L36:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	kdf_scrypt_derive, .-kdf_scrypt_derive
	.type	is_power_of_two, @function
is_power_of_two:
.LFB423:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L41
	movq	-8(%rbp), %rax
	subq	$1, %rax
	andq	-8(%rbp), %rax
	testq	%rax, %rax
	jne	.L41
	movl	$1, %eax
	jmp	.L43
.L41:
	movl	$0, %eax
.L43:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE423:
	.size	is_power_of_two, .-is_power_of_two
	.section	.rodata
.LC2:
	.string	"pass"
.LC3:
	.string	"salt"
.LC4:
	.string	"n"
.LC5:
	.string	"r"
.LC6:
	.string	"p"
.LC7:
	.string	"maxmem_bytes"
.LC8:
	.string	"properties"
	.text
	.type	kdf_scrypt_set_ctx_params, @function
kdf_scrypt_set_ctx_params:
.LFB424:
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
	cmpq	$0, -48(%rbp)
	jne	.L45
	movl	$1, %eax
	jmp	.L63
.L45:
	leaq	.LC2(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L47
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	scrypt_set_membuf
	testl	%eax, %eax
	jne	.L47
	movl	$0, %eax
	jmp	.L63
.L47:
	leaq	.LC3(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L48
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	scrypt_set_membuf
	testl	%eax, %eax
	jne	.L48
	movl	$0, %eax
	jmp	.L63
.L48:
	leaq	.LC4(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L49
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint64@PLT
	testl	%eax, %eax
	je	.L50
	movq	-24(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L50
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_power_of_two
	testl	%eax, %eax
	jne	.L51
.L50:
	movl	$0, %eax
	jmp	.L63
.L51:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
.L49:
	leaq	.LC5(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L52
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint64@PLT
	testl	%eax, %eax
	je	.L53
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L54
.L53:
	movl	$0, %eax
	jmp	.L63
.L54:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
.L52:
	leaq	.LC6(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L55
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint64@PLT
	testl	%eax, %eax
	je	.L56
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L57
.L56:
	movl	$0, %eax
	jmp	.L63
.L57:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 64(%rax)
.L55:
	leaq	.LC7(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L58
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint64@PLT
	testl	%eax, %eax
	je	.L59
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L60
.L59:
	movl	$0, %eax
	jmp	.L63
.L60:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 72(%rax)
.L58:
	leaq	.LC8(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L61
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L62
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_property_query
	testl	%eax, %eax
	je	.L62
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	set_digest
	testl	%eax, %eax
	jne	.L61
.L62:
	movl	$0, %eax
	jmp	.L63
.L61:
	movl	$1, %eax
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE424:
	.size	kdf_scrypt_set_ctx_params, .-kdf_scrypt_set_ctx_params
	.type	kdf_scrypt_settable_ctx_params, @function
kdf_scrypt_settable_ctx_params:
.LFB425:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_settable_ctx_params.2(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE425:
	.size	kdf_scrypt_settable_ctx_params, .-kdf_scrypt_settable_ctx_params
	.section	.rodata
.LC9:
	.string	"size"
	.text
	.type	kdf_scrypt_get_ctx_params, @function
kdf_scrypt_get_ctx_params:
.LFB426:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC9(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L67
	movq	-8(%rbp), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	jmp	.L68
.L67:
	movl	$-2, %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE426:
	.size	kdf_scrypt_get_ctx_params, .-kdf_scrypt_get_ctx_params
	.type	kdf_scrypt_gettable_ctx_params, @function
kdf_scrypt_gettable_ctx_params:
.LFB427:
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
.LFE427:
	.size	kdf_scrypt_gettable_ctx_params, .-kdf_scrypt_gettable_ctx_params
	.globl	ossl_kdf_scrypt_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_kdf_scrypt_functions, @object
	.size	ossl_kdf_scrypt_functions, 160
ossl_kdf_scrypt_functions:
	.long	1
	.zero	4
	.quad	kdf_scrypt_new
	.long	2
	.zero	4
	.quad	kdf_scrypt_dup
	.long	3
	.zero	4
	.quad	kdf_scrypt_free
	.long	4
	.zero	4
	.quad	kdf_scrypt_reset
	.long	5
	.zero	4
	.quad	kdf_scrypt_derive
	.long	8
	.zero	4
	.quad	kdf_scrypt_settable_ctx_params
	.long	11
	.zero	4
	.quad	kdf_scrypt_set_ctx_params
	.long	7
	.zero	4
	.quad	kdf_scrypt_gettable_ctx_params
	.long	10
	.zero	4
	.quad	kdf_scrypt_get_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	salsa208_word_specification, @function
salsa208_word_specification:
.LFB428:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$8, -4(%rbp)
	jmp	.L72
.L73:
	movl	-64(%rbp), %eax
	movl	-80(%rbp), %ecx
	movl	-32(%rbp), %edx
	addl	%ecx, %edx
	roll	$7, %edx
	xorl	%edx, %eax
	movl	%eax, -64(%rbp)
	movl	-48(%rbp), %eax
	movl	-64(%rbp), %ecx
	movl	-80(%rbp), %edx
	addl	%ecx, %edx
	roll	$9, %edx
	xorl	%edx, %eax
	movl	%eax, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	-48(%rbp), %ecx
	movl	-64(%rbp), %edx
	addl	%ecx, %edx
	roll	$13, %edx
	xorl	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-80(%rbp), %eax
	movl	-32(%rbp), %ecx
	movl	-48(%rbp), %edx
	addl	%ecx, %edx
	rorl	$14, %edx
	xorl	%edx, %eax
	movl	%eax, -80(%rbp)
	movl	-44(%rbp), %eax
	movl	-60(%rbp), %ecx
	movl	-76(%rbp), %edx
	addl	%ecx, %edx
	roll	$7, %edx
	xorl	%edx, %eax
	movl	%eax, -44(%rbp)
	movl	-28(%rbp), %eax
	movl	-44(%rbp), %ecx
	movl	-60(%rbp), %edx
	addl	%ecx, %edx
	roll	$9, %edx
	xorl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-76(%rbp), %eax
	movl	-28(%rbp), %ecx
	movl	-44(%rbp), %edx
	addl	%ecx, %edx
	roll	$13, %edx
	xorl	%edx, %eax
	movl	%eax, -76(%rbp)
	movl	-60(%rbp), %eax
	movl	-76(%rbp), %ecx
	movl	-28(%rbp), %edx
	addl	%ecx, %edx
	rorl	$14, %edx
	xorl	%edx, %eax
	movl	%eax, -60(%rbp)
	movl	-24(%rbp), %eax
	movl	-40(%rbp), %ecx
	movl	-56(%rbp), %edx
	addl	%ecx, %edx
	roll	$7, %edx
	xorl	%edx, %eax
	movl	%eax, -24(%rbp)
	movl	-72(%rbp), %eax
	movl	-24(%rbp), %ecx
	movl	-40(%rbp), %edx
	addl	%ecx, %edx
	roll	$9, %edx
	xorl	%edx, %eax
	movl	%eax, -72(%rbp)
	movl	-56(%rbp), %eax
	movl	-72(%rbp), %ecx
	movl	-24(%rbp), %edx
	addl	%ecx, %edx
	roll	$13, %edx
	xorl	%edx, %eax
	movl	%eax, -56(%rbp)
	movl	-40(%rbp), %eax
	movl	-56(%rbp), %ecx
	movl	-72(%rbp), %edx
	addl	%ecx, %edx
	rorl	$14, %edx
	xorl	%edx, %eax
	movl	%eax, -40(%rbp)
	movl	-68(%rbp), %eax
	movl	-20(%rbp), %ecx
	movl	-36(%rbp), %edx
	addl	%ecx, %edx
	roll	$7, %edx
	xorl	%edx, %eax
	movl	%eax, -68(%rbp)
	movl	-52(%rbp), %eax
	movl	-68(%rbp), %ecx
	movl	-20(%rbp), %edx
	addl	%ecx, %edx
	roll	$9, %edx
	xorl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	-36(%rbp), %eax
	movl	-52(%rbp), %ecx
	movl	-68(%rbp), %edx
	addl	%ecx, %edx
	roll	$13, %edx
	xorl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-20(%rbp), %eax
	movl	-36(%rbp), %ecx
	movl	-52(%rbp), %edx
	addl	%ecx, %edx
	rorl	$14, %edx
	xorl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-76(%rbp), %eax
	movl	-80(%rbp), %ecx
	movl	-68(%rbp), %edx
	addl	%ecx, %edx
	roll	$7, %edx
	xorl	%edx, %eax
	movl	%eax, -76(%rbp)
	movl	-72(%rbp), %eax
	movl	-76(%rbp), %ecx
	movl	-80(%rbp), %edx
	addl	%ecx, %edx
	roll	$9, %edx
	xorl	%edx, %eax
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	movl	-72(%rbp), %ecx
	movl	-76(%rbp), %edx
	addl	%ecx, %edx
	roll	$13, %edx
	xorl	%edx, %eax
	movl	%eax, -68(%rbp)
	movl	-80(%rbp), %eax
	movl	-68(%rbp), %ecx
	movl	-72(%rbp), %edx
	addl	%ecx, %edx
	rorl	$14, %edx
	xorl	%edx, %eax
	movl	%eax, -80(%rbp)
	movl	-56(%rbp), %eax
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %edx
	addl	%ecx, %edx
	roll	$7, %edx
	xorl	%edx, %eax
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	movl	-60(%rbp), %edx
	addl	%ecx, %edx
	roll	$9, %edx
	xorl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	-64(%rbp), %eax
	movl	-52(%rbp), %ecx
	movl	-56(%rbp), %edx
	addl	%ecx, %edx
	roll	$13, %edx
	xorl	%edx, %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	movl	-64(%rbp), %ecx
	movl	-52(%rbp), %edx
	addl	%ecx, %edx
	rorl	$14, %edx
	xorl	%edx, %eax
	movl	%eax, -60(%rbp)
	movl	-36(%rbp), %eax
	movl	-40(%rbp), %ecx
	movl	-44(%rbp), %edx
	addl	%ecx, %edx
	roll	$7, %edx
	xorl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-48(%rbp), %eax
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %edx
	addl	%ecx, %edx
	roll	$9, %edx
	xorl	%edx, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	movl	-48(%rbp), %ecx
	movl	-36(%rbp), %edx
	addl	%ecx, %edx
	roll	$13, %edx
	xorl	%edx, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %edx
	addl	%ecx, %edx
	rorl	$14, %edx
	xorl	%edx, %eax
	movl	%eax, -40(%rbp)
	movl	-32(%rbp), %eax
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	addl	%ecx, %edx
	roll	$7, %edx
	xorl	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	movl	-20(%rbp), %edx
	addl	%ecx, %edx
	roll	$9, %edx
	xorl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %edx
	addl	%ecx, %edx
	roll	$13, %edx
	xorl	%edx, %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %edx
	addl	%ecx, %edx
	rorl	$14, %edx
	xorl	%edx, %eax
	movl	%eax, -20(%rbp)
	subl	$2, -4(%rbp)
.L72:
	cmpl	$0, -4(%rbp)
	jg	.L73
	movl	$0, -4(%rbp)
	jmp	.L74
.L75:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-4(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-88(%rbp), %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -4(%rbp)
.L74:
	cmpl	$15, -4(%rbp)
	jle	.L75
	leaq	-80(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE428:
	.size	salsa208_word_specification, .-salsa208_word_specification
	.type	scryptBlockMix, @function
scryptBlockMix:
.LFB429:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-120(%rbp), %rax
	salq	$7, %rax
	leaq	-64(%rax), %rdx
	movq	-112(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-96(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L77
.L80:
	movq	$0, -16(%rbp)
	jmp	.L78
.L79:
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	-96(%rbp,%rax,4), %eax
	xorl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, -96(%rbp,%rax,4)
	addq	$1, -16(%rbp)
.L78:
	cmpq	$15, -16(%rbp)
	jbe	.L79
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	salsa208_word_specification
	movq	-8(%rbp), %rax
	shrq	%rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	andl	$1, %eax
	negq	%rax
	andq	-120(%rbp), %rax
	addq	%rdx, %rax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-96(%rbp), %rax
	movl	$64, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	addq	$1, -8(%rbp)
.L77:
	movq	-120(%rbp), %rax
	addq	%rax, %rax
	cmpq	%rax, -8(%rbp)
	jb	.L80
	leaq	-96(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	scryptBlockMix, .-scryptBlockMix
	.type	scryptROMix, @function
scryptROMix:
.LFB430:
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
	movq	%r9, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L82
.L83:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	addq	$1, -24(%rbp)
	addq	$4, -16(%rbp)
.L82:
	movq	-64(%rbp), %rax
	salq	$5, %rax
	cmpq	%rax, -24(%rbp)
	jb	.L83
	movq	$1, -24(%rbp)
	jmp	.L84
.L85:
	movq	-64(%rbp), %rax
	salq	$7, %rax
	negq	%rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	scryptBlockMix
	addq	$1, -24(%rbp)
	movq	-64(%rbp), %rax
	salq	$7, %rax
	addq	%rax, -16(%rbp)
.L84:
	movq	-24(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L85
	movq	-72(%rbp), %rax
	subq	$1, %rax
	imulq	-64(%rbp), %rax
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	scryptBlockMix
	movq	$0, -24(%rbp)
	jmp	.L86
.L89:
	movq	-64(%rbp), %rax
	salq	$7, %rax
	leaq	-64(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	movl	$0, %edx
	divq	-72(%rbp)
	movq	%rdx, %rax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	imulq	-64(%rbp), %rax
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L87
.L88:
	movq	-32(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	leaq	0(,%rax,4), %rsi
	movq	-88(%rbp), %rax
	addq	%rsi, %rax
	xorl	%ecx, %edx
	movl	%edx, (%rax)
	addq	$1, -32(%rbp)
.L87:
	movq	-64(%rbp), %rax
	salq	$5, %rax
	cmpq	%rax, -32(%rbp)
	jb	.L88
	movq	-64(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	scryptBlockMix
	addq	$1, -24(%rbp)
.L86:
	movq	-24(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L89
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L90
.L91:
	movq	-24(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-36(%rbp), %edx
	movb	%dl, (%rax)
	movl	-36(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-36(%rbp), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-36(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addq	$1, -24(%rbp)
.L90:
	movq	-64(%rbp), %rax
	salq	$5, %rax
	cmpq	%rax, -24(%rbp)
	jb	.L91
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE430:
	.size	scryptROMix, .-scryptROMix
	.type	scrypt_alg, @function
scrypt_alg:
.LFB431:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L93
	cmpq	$0, 16(%rbp)
	je	.L93
	cmpq	$1, -104(%rbp)
	jbe	.L93
	movq	-104(%rbp), %rax
	subq	$1, %rax
	andq	-104(%rbp), %rax
	testq	%rax, %rax
	je	.L94
.L93:
	movl	$0, %eax
	jmp	.L95
.L94:
	movl	$1073741823, %eax
	movl	$0, %edx
	divq	-112(%rbp)
	cmpq	16(%rbp), %rax
	jnb	.L96
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$461, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$172, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L95
.L96:
	movq	-112(%rbp), %rax
	salq	$4, %rax
	cmpq	$63, %rax
	ja	.L97
	movq	-112(%rbp), %rax
	sall	$4, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	cmpq	%rax, -104(%rbp)
	jb	.L97
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$472, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$172, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L95
.L97:
	movq	16(%rbp), %rax
	imulq	-112(%rbp), %rax
	salq	$7, %rax
	movq	%rax, -24(%rbp)
	cmpq	$2147483647, -24(%rbp)
	jbe	.L98
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$490, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$172, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L95
.L98:
	movabsq	$144115188075855871, %rax
	movq	%rax, -16(%rbp)
	movq	-104(%rbp), %rax
	leaq	2(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	divq	-112(%rbp)
	cmpq	%rcx, %rax
	jnb	.L99
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$500, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$172, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L95
.L99:
	movq	-104(%rbp), %rax
	addq	$2, %rax
	imulq	-112(%rbp), %rax
	salq	$7, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	notq	%rax
	cmpq	-24(%rbp), %rax
	jnb	.L100
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$507, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$172, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L95
.L100:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, 24(%rbp)
	jnb	.L101
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$516, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$172, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L95
.L101:
	cmpq	$0, 32(%rbp)
	jne	.L102
	movl	$1, %eax
	jmp	.L95
.L102:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC0(%rip), %rcx
	movl	$524, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L103
	movl	$0, %eax
	jmp	.L95
.L103:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-112(%rbp), %rax
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movl	%eax, %r8d
	movq	-96(%rbp), %rax
	movl	%eax, %edi
	movq	-80(%rbp), %rax
	movl	%eax, %esi
	movq	48(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	pushq	64(%rbp)
	pushq	56(%rbp)
	pushq	-40(%rbp)
	pushq	%r8
	movq	%rcx, %r9
	movl	$1, %r8d
	movl	%edi, %ecx
	movq	%rax, %rdi
	call	ossl_pkcs5_pbkdf2_hmac_ex@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L110
	movq	$0, -16(%rbp)
	jmp	.L106
.L107:
	movq	-112(%rbp), %rax
	imulq	-16(%rbp), %rax
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%r8, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	scryptROMix
	addq	$1, -16(%rbp)
.L106:
	movq	-16(%rbp), %rax
	cmpq	16(%rbp), %rax
	jb	.L107
	movq	40(%rbp), %rax
	movl	%eax, %r8d
	movq	-24(%rbp), %rax
	movl	%eax, %edi
	movq	-80(%rbp), %rax
	movl	%eax, %esi
	movq	48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	pushq	64(%rbp)
	pushq	56(%rbp)
	pushq	32(%rbp)
	pushq	%r8
	movq	%rcx, %r9
	movl	$1, %r8d
	movl	%edi, %ecx
	movq	%rax, %rdi
	call	ossl_pkcs5_pbkdf2_hmac_ex@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L111
	movl	$1, -4(%rbp)
	jmp	.L105
.L110:
	nop
	jmp	.L105
.L111:
	nop
.L105:
	cmpl	$0, -4(%rbp)
	jne	.L109
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$543, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$181, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L109:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	leaq	.LC0(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	$545, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-4(%rbp), %eax
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE431:
	.size	scrypt_alg, .-scrypt_alg
	.section	.rodata
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 11
__func__.4:
	.string	"set_digest"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 18
__func__.3:
	.string	"kdf_scrypt_derive"
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params.2, @object
	.size	known_settable_ctx_params.2, 320
known_settable_ctx_params.2:
	.quad	.LC2
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC3
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC4
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC5
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC6
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC7
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC8
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
	.align 32
	.type	known_gettable_ctx_params.1, @object
	.size	known_gettable_ctx_params.1, 80
known_gettable_ctx_params.1:
	.quad	.LC9
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
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 11
__func__.0:
	.string	"scrypt_alg"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

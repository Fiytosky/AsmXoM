	.file	"krb5kdf.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB386:
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
.LFE386:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB387:
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
.LFE387:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/kdfs/krb5kdf.c"
	.text
	.type	krb5kdf_new, @function
krb5kdf_new:
.LFB457:
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
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	leaq	.LC0(%rip), %rax
	movl	$67, %edx
	movq	%rax, %rsi
	movl	$64, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L7
.L8:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE457:
	.size	krb5kdf_new, .-krb5kdf_new
	.type	krb5kdf_free, @function
krb5kdf_free:
.LFB458:
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
	je	.L11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	krb5kdf_reset
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$79, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L11:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	krb5kdf_free, .-krb5kdf_free
	.type	krb5kdf_reset, @function
krb5kdf_reset:
.LFB459:
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
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	ossl_prov_cipher_reset@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$89, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$90, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	krb5kdf_reset, .-krb5kdf_reset
	.type	krb5kdf_set_membuf, @function
krb5kdf_set_membuf:
.LFB460:
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
	movl	$98, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	krb5kdf_set_membuf, .-krb5kdf_set_membuf
	.type	krb5kdf_dup, @function
krb5kdf_dup:
.LFB461:
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
	call	krb5kdf_new
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L16
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
	je	.L20
	movq	-16(%rbp), %rax
	leaq	56(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L20
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_cipher_copy@PLT
	testl	%eax, %eax
	je	.L20
.L16:
	movq	-16(%rbp), %rax
	jmp	.L19
.L20:
	nop
.L18:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	krb5kdf_free
	movl	$0, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE461:
	.size	krb5kdf_dup, .-krb5kdf_dup
	.type	krb5kdf_derive, @function
krb5kdf_derive:
.LFB462:
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
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L22
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	krb5kdf_set_ctx_params
	testl	%eax, %eax
	jne	.L23
.L22:
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	ossl_prov_cipher_cipher@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L25
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$137, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$155, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L24
.L25:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L26
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$141, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$128, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L24
.L26:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L27
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$145, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$156, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L24
.L27:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	ossl_prov_cipher_engine@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %r8
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	KRB5KDF
	addq	$16, %rsp
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE462:
	.size	krb5kdf_derive, .-krb5kdf_derive
	.section	.rodata
.LC1:
	.string	"key"
.LC2:
	.string	"constant"
	.text
	.type	krb5kdf_set_ctx_params, @function
krb5kdf_set_ctx_params:
.LFB463:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L29
	movl	$1, %eax
	jmp	.L30
.L29:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_prov_cipher_load_from_params@PLT
	testl	%eax, %eax
	jne	.L31
	movl	$0, %eax
	jmp	.L30
.L31:
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L32
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	krb5kdf_set_membuf
	testl	%eax, %eax
	jne	.L32
	movl	$0, %eax
	jmp	.L30
.L32:
	leaq	.LC2(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L33
	movq	-8(%rbp), %rax
	leaq	56(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	krb5kdf_set_membuf
	testl	%eax, %eax
	jne	.L33
	movl	$0, %eax
	jmp	.L30
.L33:
	movl	$1, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE463:
	.size	krb5kdf_set_ctx_params, .-krb5kdf_set_ctx_params
	.type	krb5kdf_settable_ctx_params, @function
krb5kdf_settable_ctx_params:
.LFB464:
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
.LFE464:
	.size	krb5kdf_settable_ctx_params, .-krb5kdf_settable_ctx_params
	.section	.rodata
.LC3:
	.string	"size"
	.text
	.type	krb5kdf_get_ctx_params, @function
krb5kdf_get_ctx_params:
.LFB465:
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
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	ossl_prov_cipher_cipher@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L37
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L38
.L37:
	movq	$64, -8(%rbp)
.L38:
	leaq	.LC3(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L39
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	jmp	.L40
.L39:
	movl	$-2, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	krb5kdf_get_ctx_params, .-krb5kdf_get_ctx_params
	.type	krb5kdf_gettable_ctx_params, @function
krb5kdf_gettable_ctx_params:
.LFB466:
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
.LFE466:
	.size	krb5kdf_gettable_ctx_params, .-krb5kdf_gettable_ctx_params
	.globl	ossl_kdf_krb5kdf_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_kdf_krb5kdf_functions, @object
	.size	ossl_kdf_krb5kdf_functions, 160
ossl_kdf_krb5kdf_functions:
	.long	1
	.zero	4
	.quad	krb5kdf_new
	.long	2
	.zero	4
	.quad	krb5kdf_dup
	.long	3
	.zero	4
	.quad	krb5kdf_free
	.long	4
	.zero	4
	.quad	krb5kdf_reset
	.long	5
	.zero	4
	.quad	krb5kdf_derive
	.long	8
	.zero	4
	.quad	krb5kdf_settable_ctx_params
	.long	11
	.zero	4
	.quad	krb5kdf_set_ctx_params
	.long	7
	.zero	4
	.quad	krb5kdf_gettable_ctx_params
	.long	10
	.zero	4
	.quad	krb5kdf_get_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	fixup_des3_key, @function
fixup_des3_key:
.LFB467:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$2, -4(%rbp)
	jmp	.L44
.L47:
	movl	-4(%rbp), %eax
	sall	$3, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	-16(%rbp), %rax
	addq	$7, %rax
	movb	$0, (%rax)
	movl	$0, -8(%rbp)
	jmp	.L45
.L46:
	movq	-16(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, %esi
	movl	%esi, %edx
	movq	-16(%rbp), %rax
	addq	$7, %rax
	movb	%dl, (%rax)
	addl	$1, -8(%rbp)
.L45:
	cmpl	$6, -8(%rbp)
	jle	.L46
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DES_set_odd_parity@PLT
	subl	$1, -4(%rbp)
.L44:
	cmpl	$0, -4(%rbp)
	jns	.L47
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L48
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	jne	.L49
.L48:
	movl	$0, %eax
	jmp	.L50
.L49:
	movl	$1, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE467:
	.size	fixup_des3_key, .-fixup_des3_key
	.type	n_fold, @function
n_fold:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	-60(%rbp), %eax
	cmpq	%rax, -80(%rbp)
	jne	.L52
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L51
.L52:
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
	movq	-80(%rbp), %rax
	movl	%eax, -8(%rbp)
	jmp	.L54
.L55:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	divl	-8(%rbp)
	movl	%edx, -40(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -8(%rbp)
.L54:
	cmpl	$0, -8(%rbp)
	jne	.L55
	movl	-60(%rbp), %eax
	imulq	-80(%rbp), %rax
	movl	-4(%rbp), %edi
	movl	$0, %edx
	divq	%rdi
	movl	%eax, -24(%rbp)
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -12(%rbp)
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.L56
.L57:
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	-60(%rbp)
	movl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-20(%rbp), %eax
	cltq
	movl	$0, %edx
	divq	-80(%rbp)
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-20(%rbp), %eax
	movl	-28(%rbp), %edx
	shrl	$3, %edx
	subl	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	andl	$7, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	$0, %edx
	divq	-80(%rbp)
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	$8, %eax
	subl	-36(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	-32(%rbp), %eax
	movl	$0, %edx
	divq	-80(%rbp)
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	orl	%esi, %eax
	andl	$255, %eax
	movl	%eax, -40(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -40(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	-40(%rbp), %edx
	movb	%dl, (%rax)
	movl	-40(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, -12(%rbp)
	subl	$1, -20(%rbp)
.L56:
	cmpl	$0, -20(%rbp)
	jns	.L57
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.L58
.L59:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	-12(%rbp), %edx
	movb	%dl, (%rax)
	shrl	$8, -12(%rbp)
	subl	$1, -16(%rbp)
.L58:
	cmpl	$0, -16(%rbp)
	js	.L51
	cmpl	$0, -12(%rbp)
	jne	.L59
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	n_fold, .-n_fold
	.type	cipher_init, @function
cipher_init:
.LFB469:
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
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L66
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	cmpq	%rax, -56(%rbp)
	je	.L63
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_key_length@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L63
	movl	$0, -4(%rbp)
	jmp	.L62
.L63:
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L67
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_padding@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jmp	.L62
.L66:
	nop
	jmp	.L62
.L67:
	nop
.L62:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	cipher_init, .-cipher_init
	.type	KRB5KDF, @function
KRB5KDF:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%r8, -184(%rbp)
	movq	%r9, -192(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -36(%rbp)
	movq	-176(%rbp), %rax
	cmpq	24(%rbp), %rax
	je	.L69
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_nid@PLT
	cmpl	$44, %eax
	jne	.L70
	cmpq	$24, -176(%rbp)
	jne	.L70
	cmpq	$21, 24(%rbp)
	jne	.L70
	movl	$1, -36(%rbp)
	jmp	.L69
.L70:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$404, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$139, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L89
.L69:
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L72
	movl	$0, %eax
	jmp	.L89
.L72:
	movq	-176(%rbp), %rdi
	movq	-168(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	cipher_init
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.L90
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_block_size@PLT
	cltq
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L75
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$423, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$155, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -40(%rbp)
	jmp	.L74
.L75:
	movq	-192(%rbp), %rax
	cmpq	%rax, -56(%rbp)
	jnb	.L76
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$429, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$157, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -40(%rbp)
	jmp	.L74
.L76:
	movq	-56(%rbp), %rax
	movl	%eax, %esi
	movq	-192(%rbp), %rcx
	movq	-184(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	n_fold
	leaq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-128(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -16(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L77
.L87:
	movq	-56(%rbp), %rax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	leaq	-132(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.L91
	movl	-132(%rbp), %eax
	cltq
	movq	%rax, -24(%rbp)
	leaq	-132(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncryptFinal_ex@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.L92
	movl	-132(%rbp), %eax
	testl	%eax, %eax
	je	.L81
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$450, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -40(%rbp)
	jmp	.L74
.L81:
	movq	24(%rbp), %rax
	subq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L82
	movq	24(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.L82:
	movq	16(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	cmpq	24(%rbp), %rax
	jnb	.L83
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_reset@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.L93
	movq	-176(%rbp), %rdi
	movq	-168(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	cipher_init
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.L94
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-128(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L86
	addq	$32, -16(%rbp)
	jmp	.L83
.L86:
	leaq	-128(%rbp), %rax
	movq	%rax, -16(%rbp)
.L83:
	movq	-24(%rbp), %rax
	addq	%rax, -32(%rbp)
.L77:
	movq	-32(%rbp), %rax
	cmpq	24(%rbp), %rax
	jb	.L87
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_nid@PLT
	cmpl	$44, %eax
	jne	.L88
	cmpl	$0, -36(%rbp)
	jne	.L88
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	fixup_des3_key
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.L88
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$484, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L74
.L88:
	movl	$1, -40(%rbp)
	jmp	.L74
.L90:
	nop
	jmp	.L74
.L91:
	nop
	jmp	.L74
.L92:
	nop
	jmp	.L74
.L93:
	nop
	jmp	.L74
.L94:
	nop
.L74:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	leaq	-128(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	-40(%rbp), %eax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	KRB5KDF, .-KRB5KDF
	.section	.rodata
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 15
__func__.3:
	.string	"krb5kdf_derive"
.LC4:
	.string	"properties"
.LC5:
	.string	"cipher"
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params.2, @object
	.size	known_settable_ctx_params.2, 200
known_settable_ctx_params.2:
	.quad	.LC4
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC5
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC1
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC2
	.long	5
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
	.quad	.LC3
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
	.size	__func__.0, 8
__func__.0:
	.string	"KRB5KDF"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

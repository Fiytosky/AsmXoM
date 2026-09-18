	.file	"pbkdf2.c"
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
	.string	"../providers/implementations/kdfs/pbkdf2.c"
	.text
	.type	kdf_pbkdf2_new_no_init, @function
kdf_pbkdf2_new_no_init:
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
	movl	$74, %edx
	movq	%rax, %rsi
	movl	$80, %edi
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
	.size	kdf_pbkdf2_new_no_init, .-kdf_pbkdf2_new_no_init
	.type	kdf_pbkdf2_new, @function
kdf_pbkdf2_new:
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
	movq	%rax, %rdi
	call	kdf_pbkdf2_new_no_init
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L10
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	kdf_pbkdf2_init
.L10:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	kdf_pbkdf2_new, .-kdf_pbkdf2_new
	.type	kdf_pbkdf2_cleanup, @function
kdf_pbkdf2_cleanup:
.LFB459:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_reset@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$93, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$94, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movl	$80, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	kdf_pbkdf2_cleanup, .-kdf_pbkdf2_cleanup
	.type	kdf_pbkdf2_free, @function
kdf_pbkdf2_free:
.LFB460:
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
	je	.L15
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	kdf_pbkdf2_cleanup
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$104, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L15:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	kdf_pbkdf2_free, .-kdf_pbkdf2_free
	.type	kdf_pbkdf2_reset, @function
kdf_pbkdf2_reset:
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
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	kdf_pbkdf2_cleanup
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	kdf_pbkdf2_init
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE461:
	.size	kdf_pbkdf2_reset, .-kdf_pbkdf2_reset
	.type	kdf_pbkdf2_dup, @function
kdf_pbkdf2_dup:
.LFB462:
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
	call	kdf_pbkdf2_new_no_init
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L18
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L23
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L23
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$48, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_digest_copy@PLT
	testl	%eax, %eax
	je	.L23
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movl	72(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 72(%rax)
.L18:
	movq	-16(%rbp), %rax
	jmp	.L22
.L23:
	nop
.L21:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	kdf_pbkdf2_free
	movl	$0, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE462:
	.size	kdf_pbkdf2_dup, .-kdf_pbkdf2_dup
	.section	.rodata
.LC1:
	.string	"SHA1"
.LC2:
	.string	"digest"
	.text
	.type	kdf_pbkdf2_init, @function
kdf_pbkdf2_init:
.LFB463:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -104(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -8(%rbp)
	leaq	-160(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-8(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_prov_digest_load_from_params@PLT
	testl	%eax, %eax
	jne	.L25
	movq	-104(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_reset@PLT
.L25:
	movq	-104(%rbp), %rax
	movq	$2048, 40(%rax)
	movq	ossl_kdf_pbkdf2_default_checks@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 72(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE463:
	.size	kdf_pbkdf2_init, .-kdf_pbkdf2_init
	.type	pbkdf2_set_membuf, @function
pbkdf2_set_membuf:
.LFB464:
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
	movl	$159, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L27
	leaq	.LC0(%rip), %rax
	movl	$164, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L28
	movl	$0, %eax
	jmp	.L29
.L27:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE464:
	.size	pbkdf2_set_membuf, .-pbkdf2_set_membuf
	.type	kdf_pbkdf2_derive, @function
kdf_pbkdf2_derive:
.LFB465:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L31
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kdf_pbkdf2_set_ctx_params
	testl	%eax, %eax
	jne	.L32
.L31:
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$183, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L34:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L35
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$188, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$131, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L35:
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	72(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	%eax, %r10d
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %r8
	subq	$8, %rsp
	pushq	%rcx
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	%r10d, %ecx
	movq	%rax, %rdi
	call	pbkdf2_derive
	addq	$32, %rsp
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	kdf_pbkdf2_derive, .-kdf_pbkdf2_derive
	.section	.rodata
.LC3:
	.string	"pkcs5"
.LC4:
	.string	"pass"
.LC5:
	.string	"salt"
.LC6:
	.string	"iter"
	.text
	.type	kdf_pbkdf2_set_ctx_params, @function
kdf_pbkdf2_set_ctx_params:
.LFB466:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L37
	movl	$1, %eax
	jmp	.L50
.L37:
	movq	-16(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_prov_digest_load_from_params@PLT
	testl	%eax, %eax
	jne	.L39
	movl	$0, %eax
	jmp	.L50
.L39:
	leaq	.LC3(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L40
	leaq	-36(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L41
	movl	$0, %eax
	jmp	.L50
.L41:
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 72(%rax)
.L40:
	leaq	.LC4(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L42
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	pbkdf2_set_membuf
	testl	%eax, %eax
	jne	.L42
	movl	$0, %eax
	jmp	.L50
.L42:
	leaq	.LC5(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L43
	movq	-16(%rbp), %rax
	movl	72(%rax), %eax
	testl	%eax, %eax
	je	.L44
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$15, %rax
	ja	.L44
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$225, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L50
.L44:
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rsi
	movq	-16(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	pbkdf2_set_membuf
	testl	%eax, %eax
	jne	.L43
	movl	$0, %eax
	jmp	.L50
.L43:
	leaq	.LC6(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L45
	leaq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint64@PLT
	testl	%eax, %eax
	jne	.L46
	movl	$0, %eax
	jmp	.L50
.L46:
	movq	-16(%rbp), %rax
	movl	72(%rax), %eax
	testl	%eax, %eax
	je	.L47
	movq	$1000, -8(%rbp)
	jmp	.L48
.L47:
	movq	$1, -8(%rbp)
.L48:
	movq	-48(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L49
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$237, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L50
.L49:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
.L45:
	movl	$1, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	kdf_pbkdf2_set_ctx_params, .-kdf_pbkdf2_set_ctx_params
	.type	kdf_pbkdf2_settable_ctx_params, @function
kdf_pbkdf2_settable_ctx_params:
.LFB467:
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
.LFE467:
	.size	kdf_pbkdf2_settable_ctx_params, .-kdf_pbkdf2_settable_ctx_params
	.section	.rodata
.LC7:
	.string	"size"
	.text
	.type	kdf_pbkdf2_get_ctx_params, @function
kdf_pbkdf2_get_ctx_params:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC7(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L54
	movq	-8(%rbp), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	jmp	.L55
.L54:
	movl	$-2, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	kdf_pbkdf2_get_ctx_params, .-kdf_pbkdf2_get_ctx_params
	.type	kdf_pbkdf2_gettable_ctx_params, @function
kdf_pbkdf2_gettable_ctx_params:
.LFB469:
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
.LFE469:
	.size	kdf_pbkdf2_gettable_ctx_params, .-kdf_pbkdf2_gettable_ctx_params
	.globl	ossl_kdf_pbkdf2_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_kdf_pbkdf2_functions, @object
	.size	ossl_kdf_pbkdf2_functions, 160
ossl_kdf_pbkdf2_functions:
	.long	1
	.zero	4
	.quad	kdf_pbkdf2_new
	.long	2
	.zero	4
	.quad	kdf_pbkdf2_dup
	.long	3
	.zero	4
	.quad	kdf_pbkdf2_free
	.long	4
	.zero	4
	.quad	kdf_pbkdf2_reset
	.long	5
	.zero	4
	.quad	kdf_pbkdf2_derive
	.long	8
	.zero	4
	.quad	kdf_pbkdf2_settable_ctx_params
	.long	11
	.zero	4
	.quad	kdf_pbkdf2_set_ctx_params
	.long	7
	.zero	4
	.quad	kdf_pbkdf2_gettable_ctx_params
	.long	10
	.zero	4
	.quad	kdf_pbkdf2_get_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	pbkdf2_derive, @function
pbkdf2_derive:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movl	%ecx, -188(%rbp)
	movq	%r8, -200(%rbp)
	movq	%r9, -208(%rbp)
	movl	$0, -4(%rbp)
	movq	$1, -48(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jg	.L59
	movl	$0, %eax
	jmp	.L83
.L59:
	movl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	24(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rax, %rdx
	movl	$4294967294, %eax
	cmpq	%rdx, %rax
	jnb	.L61
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$325, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L83
.L61:
	cmpl	$0, 32(%rbp)
	je	.L62
	movq	24(%rbp), %rax
	salq	$3, %rax
	cmpq	$111, %rax
	ja	.L63
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$331, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$171, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L83
.L63:
	cmpl	$15, -188(%rbp)
	jg	.L64
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$335, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L83
.L64:
	cmpq	$999, -200(%rbp)
	ja	.L62
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$339, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L83
.L62:
	call	HMAC_CTX_new@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L65
	movl	$0, %eax
	jmp	.L83
.L65:
	movq	16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	24(%rbp), %rax
	movl	%eax, -28(%rbp)
	movq	-176(%rbp), %rax
	movl	%eax, %edi
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	HMAC_Init_ex@PLT
	testl	%eax, %eax
	je	.L84
	call	HMAC_CTX_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L85
	jmp	.L69
.L82:
	movl	-28(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jle	.L70
	movl	-68(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L71
.L70:
	movl	-28(%rbp), %eax
	movl	%eax, -20(%rbp)
.L71:
	movq	-48(%rbp), %rax
	shrq	$24, %rax
	movb	%al, -148(%rbp)
	movq	-48(%rbp), %rax
	shrq	$16, %rax
	movb	%al, -147(%rbp)
	movq	-48(%rbp), %rax
	shrq	$8, %rax
	movb	%al, -146(%rbp)
	movq	-48(%rbp), %rax
	movb	%al, -145(%rbp)
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	HMAC_CTX_copy@PLT
	testl	%eax, %eax
	je	.L86
	movl	-188(%rbp), %eax
	movslq	%eax, %rdx
	movq	-184(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	je	.L87
	leaq	-148(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	je	.L87
	leaq	-144(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Final@PLT
	testl	%eax, %eax
	je	.L87
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-144(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	$1, -40(%rbp)
	jmp	.L75
.L81:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	HMAC_CTX_copy@PLT
	testl	%eax, %eax
	je	.L88
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-144(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	je	.L89
	leaq	-144(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Final@PLT
	testl	%eax, %eax
	je	.L89
	movl	$0, -24(%rbp)
	jmp	.L79
.L80:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movl	-24(%rbp), %eax
	cltq
	movzbl	-144(%rbp,%rax), %ecx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -24(%rbp)
.L79:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L80
	addq	$1, -40(%rbp)
.L75:
	movq	-40(%rbp), %rax
	cmpq	-200(%rbp), %rax
	jb	.L81
	movl	-20(%rbp), %eax
	subl	%eax, -28(%rbp)
	addq	$1, -48(%rbp)
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, -16(%rbp)
.L69:
	cmpl	$0, -28(%rbp)
	jne	.L82
	movl	$1, -4(%rbp)
	jmp	.L67
.L84:
	nop
	jmp	.L67
.L85:
	nop
	jmp	.L67
.L86:
	nop
	jmp	.L67
.L87:
	nop
	jmp	.L67
.L88:
	nop
	jmp	.L67
.L89:
	nop
.L67:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	HMAC_CTX_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	HMAC_CTX_free@PLT
	movl	-4(%rbp), %eax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	pbkdf2_derive, .-pbkdf2_derive
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 18
__func__.4:
	.string	"kdf_pbkdf2_derive"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 26
__func__.3:
	.string	"kdf_pbkdf2_set_ctx_params"
.LC8:
	.string	"properties"
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params.2, @object
	.size	known_settable_ctx_params.2, 280
known_settable_ctx_params.2:
	.quad	.LC8
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC2
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC4
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC5
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC6
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC3
	.long	1
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
	.type	known_gettable_ctx_params.1, @object
	.size	known_gettable_ctx_params.1, 80
known_gettable_ctx_params.1:
	.quad	.LC7
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
	.size	__func__.0, 14
__func__.0:
	.string	"pbkdf2_derive"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

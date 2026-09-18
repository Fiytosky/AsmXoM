	.file	"ecx_kmgmt.c"
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
	.type	x25519_new_key, @function
x25519_new_key:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_ecx_key_new@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	x25519_new_key, .-x25519_new_key
	.type	x448_new_key, @function
x448_new_key:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_ecx_key_new@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	x448_new_key, .-x448_new_key
	.type	ed25519_new_key, @function
ed25519_new_key:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_ecx_key_new@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	ed25519_new_key, .-ed25519_new_key
	.type	ed448_new_key, @function
ed448_new_key:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movl	$0, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_ecx_key_new@PLT
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	ed448_new_key, .-ed448_new_key
	.type	ecx_has, @function
ecx_has:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L18
	cmpq	$0, -16(%rbp)
	je	.L18
	movl	$1, -4(%rbp)
	movl	-28(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L19
	cmpl	$0, -4(%rbp)
	je	.L20
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L20
	movl	$1, %eax
	jmp	.L21
.L20:
	movl	$0, %eax
.L21:
	movl	%eax, -4(%rbp)
.L19:
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L18
	cmpl	$0, -4(%rbp)
	je	.L22
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movl	$1, %eax
	jmp	.L23
.L22:
	movl	$0, %eax
.L23:
	movl	%eax, -4(%rbp)
.L18:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	ecx_has, .-ecx_has
	.type	ecx_match, @function
ecx_match:
.LFB412:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$1, -4(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	movl	-116(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L28
	cmpl	$0, -4(%rbp)
	je	.L29
	movq	-32(%rbp), %rax
	movl	96(%rax), %edx
	movq	-40(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	%eax, %edx
	jne	.L29
	movl	$1, %eax
	jmp	.L30
.L29:
	movl	$0, %eax
.L30:
	movl	%eax, -4(%rbp)
.L28:
	movl	-116(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L31
	movl	$0, -8(%rbp)
	movl	-116(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L32
	movq	-32(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L33
	movq	-32(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -16(%rbp)
	jmp	.L34
.L33:
	movq	$0, -16(%rbp)
.L34:
	movq	-40(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L35
	movq	-40(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -24(%rbp)
	jmp	.L36
.L35:
	movq	$0, -24(%rbp)
.L36:
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L32
	cmpq	$0, -24(%rbp)
	je	.L32
	cmpl	$0, -4(%rbp)
	je	.L37
	movq	-32(%rbp), %rax
	movl	96(%rax), %edx
	movq	-40(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	%eax, %edx
	jne	.L37
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.L37
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	jne	.L37
	movl	$1, %eax
	jmp	.L38
.L37:
	movl	$0, %eax
.L38:
	movl	%eax, -4(%rbp)
	movl	$1, -8(%rbp)
.L32:
	cmpl	$0, -8(%rbp)
	jne	.L39
	movl	-116(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L39
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L39
	cmpq	$0, -72(%rbp)
	je	.L39
	cmpl	$0, -4(%rbp)
	je	.L40
	movq	-32(%rbp), %rax
	movl	96(%rax), %edx
	movq	-40(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	%eax, %edx
	jne	.L40
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.L40
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	jne	.L40
	movl	$1, %eax
	jmp	.L41
.L40:
	movl	$0, %eax
.L41:
	movl	%eax, -4(%rbp)
	movl	$1, -8(%rbp)
.L39:
	cmpl	$0, -4(%rbp)
	je	.L42
	cmpl	$0, -8(%rbp)
	je	.L42
	movl	$1, %eax
	jmp	.L43
.L42:
	movl	$0, %eax
.L43:
	movl	%eax, -4(%rbp)
.L31:
	movl	-4(%rbp), %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	ecx_match, .-ecx_match
	.type	ecx_import, @function
ecx_import:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L45
	cmpq	$0, -8(%rbp)
	jne	.L46
.L45:
	movl	$0, %eax
	jmp	.L47
.L46:
	movl	-28(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L48
	movl	$0, %eax
	jmp	.L47
.L48:
	movl	-28(%rbp), %eax
	andl	$1, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L49
	movl	-16(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ecx_key_fromdata@PLT
	testl	%eax, %eax
	je	.L49
	movl	$1, %eax
	jmp	.L50
.L49:
	movl	$0, %eax
.L50:
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	ecx_import, .-ecx_import
	.section	.rodata
.LC0:
	.string	"pub"
.LC1:
	.string	"priv"
	.text
	.type	key_to_params, @function
key_to_params:
.LFB414:
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
	movl	%ecx, -28(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L52
	movl	$0, %eax
	jmp	.L53
.L52:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-8(%rbp), %rax
	leaq	17(%rax), %rcx
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_param_build_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L54
	movl	$0, %eax
	jmp	.L53
.L54:
	cmpl	$0, -28(%rbp)
	je	.L55
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L55
	movq	-8(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	leaq	.LC1(%rip), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L55
	movl	$0, %eax
	jmp	.L53
.L55:
	movl	$1, %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	key_to_params, .-key_to_params
	.type	ecx_export, @function
ecx_export:
.LFB415:
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
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L57
	cmpq	$0, -16(%rbp)
	jne	.L58
.L57:
	movl	$0, %eax
	jmp	.L59
.L58:
	movl	-60(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L60
	movl	$0, %eax
	jmp	.L59
.L60:
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L61
	movl	$0, %eax
	jmp	.L59
.L61:
	movl	-60(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L62
	movl	-60(%rbp), %eax
	andl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	key_to_params
	testl	%eax, %eax
	je	.L65
.L62:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L66
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	jmp	.L63
.L65:
	nop
	jmp	.L63
.L66:
	nop
.L63:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movl	-4(%rbp), %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	ecx_export, .-ecx_export
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ecx_key_types, @object
	.size	ecx_key_types, 120
ecx_key_types:
	.quad	.LC0
	.long	5
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
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	ecx_imexport_types, @function
ecx_imexport_types:
.LFB416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L68
	leaq	ecx_key_types(%rip), %rax
	jmp	.L69
.L68:
	movl	$0, %eax
.L69:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	ecx_imexport_types, .-ecx_imexport_types
	.section	.rodata
.LC2:
	.string	"bits"
.LC3:
	.string	"security-bits"
.LC4:
	.string	"max-size"
.LC5:
	.string	"encoded-pub-key"
	.text
	.type	ecx_get_params, @function
ecx_get_params:
.LFB417:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L71
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L71
	movl	$0, %eax
	jmp	.L72
.L71:
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L73
	movl	-40(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L73
	movl	$0, %eax
	jmp	.L72
.L73:
	leaq	.LC4(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L74
	movl	-44(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L74
	movl	$0, %eax
	jmp	.L72
.L74:
	leaq	.LC5(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L75
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	je	.L76
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	$1, %eax
	jne	.L75
.L76:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	17(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L75
	movl	$0, %eax
	jmp	.L72
.L75:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	key_to_params
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	ecx_get_params, .-ecx_get_params
	.section	.rodata
.LC6:
	.string	"mandatory-digest"
.LC7:
	.string	""
	.text
	.type	ed_get_params, @function
ed_get_params:
.LFB418:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC6(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L78
	leaq	.LC7(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L78
	movl	$0, %eax
	jmp	.L79
.L78:
	movl	$1, %eax
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	ed_get_params, .-ed_get_params
	.type	x25519_get_params, @function
x25519_get_params:
.LFB419:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$32, %r8d
	movl	$128, %ecx
	movl	$253, %edx
	movq	%rax, %rdi
	call	ecx_get_params
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	x25519_get_params, .-x25519_get_params
	.type	x448_get_params, @function
x448_get_params:
.LFB420:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$56, %r8d
	movl	$224, %ecx
	movl	$448, %edx
	movq	%rax, %rdi
	call	ecx_get_params
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	x448_get_params, .-x448_get_params
	.type	ed25519_get_params, @function
ed25519_get_params:
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
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$64, %r8d
	movl	$128, %ecx
	movl	$256, %edx
	movq	%rax, %rdi
	call	ecx_get_params
	testl	%eax, %eax
	je	.L85
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ed_get_params
	testl	%eax, %eax
	je	.L85
	movl	$1, %eax
	jmp	.L87
.L85:
	movl	$0, %eax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	ed25519_get_params, .-ed25519_get_params
	.type	ed448_get_params, @function
ed448_get_params:
.LFB422:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$114, %r8d
	movl	$224, %ecx
	movl	$456, %edx
	movq	%rax, %rdi
	call	ecx_get_params
	testl	%eax, %eax
	je	.L89
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ed_get_params
	testl	%eax, %eax
	je	.L89
	movl	$1, %eax
	jmp	.L91
.L89:
	movl	$0, %eax
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	ed448_get_params, .-ed448_get_params
	.section	.data.rel.ro.local
	.align 32
	.type	ecx_gettable_params, @object
	.size	ecx_gettable_params, 280
ecx_gettable_params:
	.quad	.LC2
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC3
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC4
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC5
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC0
	.long	5
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
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.align 32
	.type	ed_gettable_params, @object
	.size	ed_gettable_params, 280
ed_gettable_params:
	.quad	.LC2
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC3
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC4
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC6
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC0
	.long	5
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
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	x25519_gettable_params, @function
x25519_gettable_params:
.LFB423:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	ecx_gettable_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE423:
	.size	x25519_gettable_params, .-x25519_gettable_params
	.type	x448_gettable_params, @function
x448_gettable_params:
.LFB424:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	ecx_gettable_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE424:
	.size	x448_gettable_params, .-x448_gettable_params
	.type	ed25519_gettable_params, @function
ed25519_gettable_params:
.LFB425:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	ed_gettable_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE425:
	.size	ed25519_gettable_params, .-ed25519_gettable_params
	.type	ed448_gettable_params, @function
ed448_gettable_params:
.LFB426:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	ed_gettable_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE426:
	.size	ed448_gettable_params, .-ed448_gettable_params
	.section	.rodata
	.align 8
.LC8:
	.string	"../providers/implementations/keymgmt/ecx_kmgmt.c"
	.text
	.type	set_property_query, @function
set_property_query:
.LFB427:
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
	leaq	.LC8(%rip), %rcx
	movl	$387, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	cmpq	$0, -16(%rbp)
	je	.L101
	leaq	.LC8(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$390, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L101
	movl	$0, %eax
	jmp	.L102
.L101:
	movl	$1, %eax
.L102:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE427:
	.size	set_property_query, .-set_property_query
	.section	.rodata
.LC9:
	.string	"properties"
	.text
	.type	ecx_set_params, @function
ecx_set_params:
.LFB428:
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
	jne	.L104
	movl	$1, %eax
	jmp	.L105
.L104:
	leaq	.LC5(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L106
	movq	-8(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L107
	leaq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$57, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L108
.L107:
	movl	$0, %eax
	jmp	.L105
.L108:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC8(%rip), %rdx
	movl	$413, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %edx
	orl	$1, %edx
	movb	%dl, 16(%rax)
.L106:
	leaq	.LC9(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L109
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L110
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_property_query
	testl	%eax, %eax
	jne	.L109
.L110:
	movl	$0, %eax
	jmp	.L105
.L109:
	movl	$1, %eax
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE428:
	.size	ecx_set_params, .-ecx_set_params
	.type	x25519_set_params, @function
x25519_set_params:
.LFB429:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecx_set_params
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	x25519_set_params, .-x25519_set_params
	.type	x448_set_params, @function
x448_set_params:
.LFB430:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecx_set_params
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE430:
	.size	x448_set_params, .-x448_set_params
	.type	ed25519_set_params, @function
ed25519_set_params:
.LFB431:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE431:
	.size	ed25519_set_params, .-ed25519_set_params
	.type	ed448_set_params, @function
ed448_set_params:
.LFB432:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE432:
	.size	ed448_set_params, .-ed448_set_params
	.section	.data.rel.ro.local
	.align 32
	.type	ecx_settable_params, @object
	.size	ecx_settable_params, 120
ecx_settable_params:
	.quad	.LC5
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC9
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
	.section	.rodata
	.align 32
	.type	ed_settable_params, @object
	.size	ed_settable_params, 40
ed_settable_params:
	.zero	40
	.text
	.type	x25519_settable_params, @function
x25519_settable_params:
.LFB433:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	ecx_settable_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	x25519_settable_params, .-x25519_settable_params
	.type	x448_settable_params, @function
x448_settable_params:
.LFB434:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	ecx_settable_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE434:
	.size	x448_settable_params, .-x448_settable_params
	.type	ed25519_settable_params, @function
ed25519_settable_params:
.LFB435:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	ed_settable_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE435:
	.size	ed25519_settable_params, .-ed25519_settable_params
	.type	ed448_settable_params, @function
ed448_settable_params:
.LFB436:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	ed_settable_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE436:
	.size	ed448_settable_params, .-ed448_settable_params
	.type	ecx_gen_init, @function
ecx_gen_init:
.LFB437:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L128
	movl	$0, %eax
	jmp	.L129
.L128:
	leaq	.LC8(%rip), %rax
	movl	$486, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L130
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 20(%rax)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecx_gen_set_params
	testl	%eax, %eax
	jne	.L132
	jmp	.L133
.L130:
	movl	$0, %eax
	jmp	.L129
.L133:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecx_gen_cleanup
	movq	$0, -8(%rbp)
.L132:
	movq	-8(%rbp), %rax
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE437:
	.size	ecx_gen_init, .-ecx_gen_init
	.type	x25519_gen_init, @function
x25519_gen_init:
.LFB438:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ecx_gen_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE438:
	.size	x25519_gen_init, .-x25519_gen_init
	.type	x448_gen_init, @function
x448_gen_init:
.LFB439:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ecx_gen_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE439:
	.size	x448_gen_init, .-x448_gen_init
	.type	ed25519_gen_init, @function
ed25519_gen_init:
.LFB440:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	ecx_gen_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE440:
	.size	ed25519_gen_init, .-ed25519_gen_init
	.type	ed448_gen_init, @function
ed448_gen_init:
.LFB441:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$3, %ecx
	movq	%rax, %rdi
	call	ecx_gen_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE441:
	.size	ed448_gen_init, .-ed448_gen_init
	.section	.rodata
.LC10:
	.string	"group"
.LC11:
	.string	"x25519"
.LC12:
	.string	"x448"
.LC13:
	.string	"dhkem-ikm"
	.text
	.type	ecx_gen_set_params, @function
ecx_gen_set_params:
.LFB442:
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
	cmpq	$0, -16(%rbp)
	jne	.L143
	movl	$0, %eax
	jmp	.L144
.L143:
	leaq	.LC10(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L145
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L146
	cmpl	$1, %eax
	je	.L147
	jmp	.L149
.L146:
	leaq	.LC11(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L149
.L147:
	leaq	.LC12(%rip), %rax
	movq	%rax, -8(%rbp)
	nop
.L149:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L150
	cmpq	$0, -8(%rbp)
	je	.L150
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L145
.L150:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$555, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L144
.L145:
	leaq	.LC9(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L151
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L152
	movl	$0, %eax
	jmp	.L144
.L152:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC8(%rip), %rcx
	movl	$563, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC8(%rip), %rcx
	movl	$564, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L151
	movl	$0, %eax
	jmp	.L144
.L151:
	leaq	.LC13(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L153
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L153
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L153
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC8(%rip), %rcx
	movl	$571, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	24(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L153
	movl	$0, %eax
	jmp	.L144
.L153:
	movl	$1, %eax
.L144:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE442:
	.size	ecx_gen_set_params, .-ecx_gen_set_params
	.type	ecx_gen_settable_params, @function
ecx_gen_settable_params:
.LFB443:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	settable.2(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE443:
	.size	ecx_gen_settable_params, .-ecx_gen_settable_params
	.type	ecx_gen, @function
ecx_gen:
.LFB444:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L157
	movl	$0, %eax
	jmp	.L158
.L157:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	16(%rax), %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_ecx_key_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L159
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$671, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L158
.L159:
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L160
	movq	-8(%rbp), %rax
	jmp	.L158
.L160:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_allocate_privkey@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L161
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$680, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L162
.L161:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L163
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L163
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$2, %eax
	je	.L175
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$3, %eax
	je	.L175
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_dhkem_derive_private@PLT
	testl	%eax, %eax
	jne	.L167
	jmp	.L162
.L163:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_priv_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L176
.L167:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$3, %eax
	je	.L168
	cmpl	$3, %eax
	ja	.L169
	cmpl	$2, %eax
	je	.L170
	cmpl	$2, %eax
	ja	.L169
	testl	%eax, %eax
	je	.L171
	cmpl	$1, %eax
	je	.L172
	jmp	.L169
.L171:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$-8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	addq	$31, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$31, %rax
	andl	$127, %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	addq	$31, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$31, %rax
	orl	$64, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	leaq	17(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_x25519_public_from_private@PLT
	jmp	.L169
.L172:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	addq	$55, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$55, %rax
	orl	$-128, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	leaq	17(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_x448_public_from_private@PLT
	jmp	.L169
.L170:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	17(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	call	ossl_ed25519_public_from_private@PLT
	testl	%eax, %eax
	jne	.L177
	jmp	.L162
.L168:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	17(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	call	ossl_ed448_public_from_private@PLT
	testl	%eax, %eax
	je	.L178
	jmp	.L169
.L177:
	nop
.L169:
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %edx
	orl	$1, %edx
	movb	%dl, 16(%rax)
	movq	-8(%rbp), %rax
	jmp	.L158
.L175:
	nop
	jmp	.L162
.L176:
	nop
	jmp	.L162
.L178:
	nop
.L162:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_free@PLT
	movl	$0, %eax
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE444:
	.size	ecx_gen, .-ecx_gen
	.type	x25519_gen, @function
x25519_gen:
.LFB445:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L180
	movl	$0, %eax
	jmp	.L181
.L180:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecx_gen
.L181:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE445:
	.size	x25519_gen, .-x25519_gen
	.type	x448_gen, @function
x448_gen:
.LFB446:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L183
	movl	$0, %eax
	jmp	.L184
.L183:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecx_gen
.L184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE446:
	.size	x448_gen, .-x448_gen
	.type	ed25519_gen, @function
ed25519_gen:
.LFB447:
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
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L186
	movl	$0, %eax
	jmp	.L187
.L186:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ecx_gen
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
.L187:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE447:
	.size	ed25519_gen, .-ed25519_gen
	.type	ed448_gen, @function
ed448_gen:
.LFB448:
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
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L189
	movl	$0, %eax
	jmp	.L190
.L189:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ecx_gen
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
.L190:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE448:
	.size	ed448_gen, .-ed448_gen
	.type	ecx_gen_cleanup, @function
ecx_gen_cleanup:
.LFB449:
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
	je	.L194
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC8(%rip), %rdx
	movl	$830, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC8(%rip), %rcx
	movl	$831, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC8(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$832, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L191
.L194:
	nop
.L191:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE449:
	.size	ecx_gen_cleanup, .-ecx_gen_cleanup
	.type	ecx_load, @function
ecx_load:
.LFB450:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L196
	cmpq	$8, -32(%rbp)
	jne	.L196
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L197
.L196:
	movl	$0, %eax
.L197:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE450:
	.size	ecx_load, .-ecx_load
	.type	ecx_dup, @function
ecx_dup:
.LFB451:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L199
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ecx_key_dup@PLT
	jmp	.L200
.L199:
	movl	$0, %eax
.L200:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE451:
	.size	ecx_dup, .-ecx_dup
	.type	ecx_key_pairwise_check, @function
ecx_key_pairwise_check:
.LFB452:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	cmpl	$0, -76(%rbp)
	je	.L202
	cmpl	$1, -76(%rbp)
	je	.L203
	jmp	.L208
.L202:
	movq	-72(%rbp), %rax
	movq	80(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_x25519_public_from_private@PLT
	jmp	.L205
.L203:
	movq	-72(%rbp), %rax
	movq	80(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_x448_public_from_private@PLT
	jmp	.L205
.L208:
	movl	$0, %eax
	jmp	.L207
.L205:
	movq	-72(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	17(%rax), %rcx
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L207:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE452:
	.size	ecx_key_pairwise_check, .-ecx_key_pairwise_check
	.type	ecd_key_pairwise_check, @function
ecd_key_pairwise_check:
.LFB453:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	cmpl	$2, -76(%rbp)
	je	.L210
	cmpl	$3, -76(%rbp)
	je	.L211
	jmp	.L218
.L210:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_ed25519_public_from_private@PLT
	testl	%eax, %eax
	jne	.L219
	movl	$0, %eax
	jmp	.L217
.L211:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_ed448_public_from_private@PLT
	testl	%eax, %eax
	jne	.L220
	movl	$0, %eax
	jmp	.L217
.L218:
	movl	$0, %eax
	jmp	.L217
.L219:
	nop
	jmp	.L215
.L220:
	nop
.L215:
	movq	-72(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	17(%rax), %rcx
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L217:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE453:
	.size	ecd_key_pairwise_check, .-ecd_key_pairwise_check
	.type	ecx_validate, @function
ecx_validate:
.LFB454:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	cmpq	%rax, -40(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L222
	movl	$0, %eax
	jmp	.L223
.L222:
	movl	-28(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L224
	movl	$1, %eax
	jmp	.L223
.L224:
	cmpl	$0, -4(%rbp)
	jne	.L225
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$913, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$173, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L223
.L225:
	movl	-28(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L226
	cmpl	$0, -4(%rbp)
	je	.L227
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L227
	movl	$1, %eax
	jmp	.L228
.L227:
	movl	$0, %eax
.L228:
	movl	%eax, -4(%rbp)
.L226:
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L229
	cmpl	$0, -4(%rbp)
	je	.L230
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L230
	movl	$1, %eax
	jmp	.L231
.L230:
	movl	$0, %eax
.L231:
	movl	%eax, -4(%rbp)
.L229:
	movl	-28(%rbp), %eax
	andl	$3, %eax
	cmpl	$3, %eax
	je	.L232
	movl	-4(%rbp), %eax
	jmp	.L223
.L232:
	cmpl	$2, -32(%rbp)
	je	.L233
	cmpl	$3, -32(%rbp)
	jne	.L234
.L233:
	cmpl	$0, -4(%rbp)
	je	.L235
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ecd_key_pairwise_check
	testl	%eax, %eax
	je	.L235
	movl	$1, %eax
	jmp	.L236
.L235:
	movl	$0, %eax
.L236:
	movl	%eax, -4(%rbp)
	jmp	.L237
.L234:
	cmpl	$0, -4(%rbp)
	je	.L238
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ecx_key_pairwise_check
	testl	%eax, %eax
	je	.L238
	movl	$1, %eax
	jmp	.L239
.L238:
	movl	$0, %eax
.L239:
	movl	%eax, -4(%rbp)
.L237:
	movl	-4(%rbp), %eax
.L223:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE454:
	.size	ecx_validate, .-ecx_validate
	.type	x25519_validate, @function
x25519_validate:
.LFB455:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$32, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ecx_validate
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE455:
	.size	x25519_validate, .-x25519_validate
	.type	x448_validate, @function
x448_validate:
.LFB456:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$56, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ecx_validate
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE456:
	.size	x448_validate, .-x448_validate
	.type	ed25519_validate, @function
ed25519_validate:
.LFB457:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$32, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	ecx_validate
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE457:
	.size	ed25519_validate, .-ed25519_validate
	.type	ed448_validate, @function
ed448_validate:
.LFB458:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$57, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	ecx_validate
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	ed448_validate, .-ed448_validate
	.globl	ossl_x25519_keymgmt_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_x25519_keymgmt_functions, @object
	.size	ossl_x25519_keymgmt_functions, 336
ossl_x25519_keymgmt_functions:
	.long	1
	.zero	4
	.quad	x25519_new_key
	.long	10
	.zero	4
	.quad	ossl_ecx_key_free
	.long	11
	.zero	4
	.quad	x25519_get_params
	.long	12
	.zero	4
	.quad	x25519_gettable_params
	.long	13
	.zero	4
	.quad	x25519_set_params
	.long	14
	.zero	4
	.quad	x25519_settable_params
	.long	21
	.zero	4
	.quad	ecx_has
	.long	23
	.zero	4
	.quad	ecx_match
	.long	22
	.zero	4
	.quad	x25519_validate
	.long	40
	.zero	4
	.quad	ecx_import
	.long	41
	.zero	4
	.quad	ecx_imexport_types
	.long	42
	.zero	4
	.quad	ecx_export
	.long	43
	.zero	4
	.quad	ecx_imexport_types
	.long	2
	.zero	4
	.quad	x25519_gen_init
	.long	4
	.zero	4
	.quad	ecx_gen_set_params
	.long	5
	.zero	4
	.quad	ecx_gen_settable_params
	.long	6
	.zero	4
	.quad	x25519_gen
	.long	7
	.zero	4
	.quad	ecx_gen_cleanup
	.long	8
	.zero	4
	.quad	ecx_load
	.long	44
	.zero	4
	.quad	ecx_dup
	.long	0
	.zero	4
	.quad	0
	.globl	ossl_x448_keymgmt_functions
	.align 32
	.type	ossl_x448_keymgmt_functions, @object
	.size	ossl_x448_keymgmt_functions, 336
ossl_x448_keymgmt_functions:
	.long	1
	.zero	4
	.quad	x448_new_key
	.long	10
	.zero	4
	.quad	ossl_ecx_key_free
	.long	11
	.zero	4
	.quad	x448_get_params
	.long	12
	.zero	4
	.quad	x448_gettable_params
	.long	13
	.zero	4
	.quad	x448_set_params
	.long	14
	.zero	4
	.quad	x448_settable_params
	.long	21
	.zero	4
	.quad	ecx_has
	.long	23
	.zero	4
	.quad	ecx_match
	.long	22
	.zero	4
	.quad	x448_validate
	.long	40
	.zero	4
	.quad	ecx_import
	.long	41
	.zero	4
	.quad	ecx_imexport_types
	.long	42
	.zero	4
	.quad	ecx_export
	.long	43
	.zero	4
	.quad	ecx_imexport_types
	.long	2
	.zero	4
	.quad	x448_gen_init
	.long	4
	.zero	4
	.quad	ecx_gen_set_params
	.long	5
	.zero	4
	.quad	ecx_gen_settable_params
	.long	6
	.zero	4
	.quad	x448_gen
	.long	7
	.zero	4
	.quad	ecx_gen_cleanup
	.long	8
	.zero	4
	.quad	ecx_load
	.long	44
	.zero	4
	.quad	ecx_dup
	.long	0
	.zero	4
	.quad	0
	.globl	ossl_ed25519_keymgmt_functions
	.align 32
	.type	ossl_ed25519_keymgmt_functions, @object
	.size	ossl_ed25519_keymgmt_functions, 336
ossl_ed25519_keymgmt_functions:
	.long	1
	.zero	4
	.quad	ed25519_new_key
	.long	10
	.zero	4
	.quad	ossl_ecx_key_free
	.long	11
	.zero	4
	.quad	ed25519_get_params
	.long	12
	.zero	4
	.quad	ed25519_gettable_params
	.long	13
	.zero	4
	.quad	ed25519_set_params
	.long	14
	.zero	4
	.quad	ed25519_settable_params
	.long	21
	.zero	4
	.quad	ecx_has
	.long	23
	.zero	4
	.quad	ecx_match
	.long	22
	.zero	4
	.quad	ed25519_validate
	.long	40
	.zero	4
	.quad	ecx_import
	.long	41
	.zero	4
	.quad	ecx_imexport_types
	.long	42
	.zero	4
	.quad	ecx_export
	.long	43
	.zero	4
	.quad	ecx_imexport_types
	.long	2
	.zero	4
	.quad	ed25519_gen_init
	.long	4
	.zero	4
	.quad	ecx_gen_set_params
	.long	5
	.zero	4
	.quad	ecx_gen_settable_params
	.long	6
	.zero	4
	.quad	ed25519_gen
	.long	7
	.zero	4
	.quad	ecx_gen_cleanup
	.long	8
	.zero	4
	.quad	ecx_load
	.long	44
	.zero	4
	.quad	ecx_dup
	.long	0
	.zero	4
	.quad	0
	.globl	ossl_ed448_keymgmt_functions
	.align 32
	.type	ossl_ed448_keymgmt_functions, @object
	.size	ossl_ed448_keymgmt_functions, 336
ossl_ed448_keymgmt_functions:
	.long	1
	.zero	4
	.quad	ed448_new_key
	.long	10
	.zero	4
	.quad	ossl_ecx_key_free
	.long	11
	.zero	4
	.quad	ed448_get_params
	.long	12
	.zero	4
	.quad	ed448_gettable_params
	.long	13
	.zero	4
	.quad	ed448_set_params
	.long	14
	.zero	4
	.quad	ed448_settable_params
	.long	21
	.zero	4
	.quad	ecx_has
	.long	23
	.zero	4
	.quad	ecx_match
	.long	22
	.zero	4
	.quad	ed448_validate
	.long	40
	.zero	4
	.quad	ecx_import
	.long	41
	.zero	4
	.quad	ecx_imexport_types
	.long	42
	.zero	4
	.quad	ecx_export
	.long	43
	.zero	4
	.quad	ecx_imexport_types
	.long	2
	.zero	4
	.quad	ed448_gen_init
	.long	4
	.zero	4
	.quad	ecx_gen_set_params
	.long	5
	.zero	4
	.quad	ecx_gen_settable_params
	.long	6
	.zero	4
	.quad	ed448_gen
	.long	7
	.zero	4
	.quad	ecx_gen_cleanup
	.long	8
	.zero	4
	.quad	ecx_load
	.long	44
	.zero	4
	.quad	ecx_dup
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 19
__func__.3:
	.string	"ecx_gen_set_params"
	.section	.data.rel.local,"aw"
	.align 32
	.type	settable.2, @object
	.size	settable.2, 160
settable.2:
	.quad	.LC10
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC9
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC13
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
	.section	.rodata
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 8
__func__.1:
	.string	"ecx_gen"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 13
__func__.0:
	.string	"ecx_validate"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

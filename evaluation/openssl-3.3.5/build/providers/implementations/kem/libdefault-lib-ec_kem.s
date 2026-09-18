	.file	"ec_kem.c"
	.text
	.section	.rodata
	.type	LABEL_KEM, @object
	.size	LABEL_KEM, 4
LABEL_KEM:
	.string	"KEM"
	.align 8
.LC0:
	.string	"../providers/implementations/kem/ec_kem.c"
	.text
	.type	eckey_check, @function
eckey_check:
.LFB358:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_private_key@PLT
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L2
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$76, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$220, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L3
.L2:
	cmpq	$0, -32(%rbp)
	jne	.L4
	cmpl	$0, -76(%rbp)
	sete	%al
	movzbl	%al, %eax
	jmp	.L3
.L4:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L5
	cmpq	$0, -24(%rbp)
	je	.L5
	cmpq	$0, -16(%rbp)
	je	.L5
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L6
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$1, %eax
	jmp	.L7
.L6:
	movl	$0, %eax
.L7:
	movl	%eax, -4(%rbp)
.L5:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	eckey_check, .-eckey_check
	.type	ec_curvename_get0, @function
ec_curvename_get0:
.LFB359:
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
	call	EC_KEY_get0_group@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	movl	%eax, %edi
	call	EC_curve_nid2nist@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	ec_curvename_get0, .-ec_curvename_get0
	.section	.rodata
.LC1:
	.string	"HKDF"
	.text
	.type	recipient_key_set, @function
recipient_key_set:
.LFB360:
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
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -32(%rbp)
	je	.L11
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ec_curvename_get0
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	movl	$-2, %eax
	jmp	.L13
.L12:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_HPKE_KEM_INFO_find_curve@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L14
	movl	$-2, %eax
	jmp	.L13
.L14:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_up_ref@PLT
	testl	%eax, %eax
	jne	.L15
	movl	$0, %eax
	jmp	.L13
.L15:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, 56(%rax)
.L11:
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	recipient_key_set, .-recipient_key_set
	.type	sender_authkey_set, @function
sender_authkey_set:
.LFB361:
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
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	cmpq	$0, -16(%rbp)
	je	.L17
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_up_ref@PLT
	testl	%eax, %eax
	jne	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L17:
	movl	$1, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	sender_authkey_set, .-sender_authkey_set
	.type	eckey_frompub, @function
eckey_frompub:
.LFB362:
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
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get0_propq@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_new_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L26
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_group@PLT
	testl	%eax, %eax
	je	.L27
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_KEY_oct2key@PLT
	testl	%eax, %eax
	je	.L28
	movq	-24(%rbp), %rax
	jmp	.L25
.L26:
	nop
	jmp	.L22
.L27:
	nop
	jmp	.L22
.L28:
	nop
.L22:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movl	$0, %eax
.L25:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	eckey_frompub, .-eckey_frompub
	.type	ecpubkey_todata, @function
ecpubkey_todata:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	ecpubkey_todata, .-ecpubkey_todata
	.type	eckem_newctx, @function
eckem_newctx:
.LFB364:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$195, %edx
	movq	%rax, %rsi
	movl	$72, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L32
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	eckem_newctx, .-eckem_newctx
	.type	eckem_freectx, @function
eckem_freectx:
.LFB365:
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
	movq	48(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$208, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	recipient_key_set
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sender_authkey_set
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$211, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	eckem_freectx, .-eckem_freectx
	.type	ossl_ec_match_params, @function
ossl_ec_match_params:
.LFB366:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L36
	movl	$0, %eax
	jmp	.L37
.L36:
	cmpq	$0, -16(%rbp)
	je	.L38
	cmpq	$0, -24(%rbp)
	je	.L38
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_cmp@PLT
	testl	%eax, %eax
	jne	.L38
	movl	$1, %eax
	jmp	.L39
.L38:
	movl	$0, %eax
.L39:
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L40
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$229, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$203, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L40:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-28(%rbp), %eax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	ossl_ec_match_params, .-ossl_ec_match_params
	.type	eckem_init, @function
eckem_init:
.LFB367:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L42
	movl	$0, %eax
	jmp	.L43
.L42:
	cmpl	$8192, -44(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	eckey_check
	testl	%eax, %eax
	jne	.L44
	movl	$0, %eax
	jmp	.L43
.L44:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	recipient_key_set
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L45
	movl	-28(%rbp), %eax
	jmp	.L43
.L45:
	cmpq	$0, -24(%rbp)
	je	.L46
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_match_params
	testl	%eax, %eax
	je	.L47
	cmpl	$4096, -44(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	eckey_check
	testl	%eax, %eax
	je	.L47
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sender_authkey_set
	testl	%eax, %eax
	jne	.L46
.L47:
	movl	$0, %eax
	jmp	.L43
.L46:
	movl	-44(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	eckem_set_ctx_params
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	eckem_init, .-eckem_init
	.type	eckem_encapsulate_init, @function
eckem_encapsulate_init:
.LFB368:
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
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$4096, %esi
	movq	%rax, %rdi
	call	eckem_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	eckem_encapsulate_init, .-eckem_encapsulate_init
	.type	eckem_decapsulate_init, @function
eckem_decapsulate_init:
.LFB369:
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
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$8192, %esi
	movq	%rax, %rdi
	call	eckem_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	eckem_decapsulate_init, .-eckem_decapsulate_init
	.type	eckem_auth_encapsulate_init, @function
eckem_auth_encapsulate_init:
.LFB370:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rsi, %r8
	movl	$4096, %esi
	movq	%rax, %rdi
	call	eckem_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	eckem_auth_encapsulate_init, .-eckem_auth_encapsulate_init
	.type	eckem_auth_decapsulate_init, @function
eckem_auth_decapsulate_init:
.LFB371:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rsi, %r8
	movl	$8192, %esi
	movq	%rax, %rdi
	call	eckem_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	eckem_auth_decapsulate_init, .-eckem_auth_decapsulate_init
	.section	.rodata
.LC2:
	.string	"ikme"
.LC3:
	.string	"operation"
	.text
	.type	eckem_set_ctx_params, @function
eckem_set_ctx_params:
.LFB372:
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
	movq	%rax, -8(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L57
	movl	$1, %eax
	jmp	.L58
.L57:
	leaq	.LC2(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L59
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L60
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L60
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L60
	movl	$0, %eax
	jmp	.L58
.L60:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$304, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
.L59:
	leaq	.LC3(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L61
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L62
	movl	$0, %eax
	jmp	.L58
.L62:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_eckem_modename2id@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L63
	movl	$0, %eax
	jmp	.L58
.L63:
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 32(%rax)
.L61:
	movl	$1, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE372:
	.size	eckem_set_ctx_params, .-eckem_set_ctx_params
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_settable_eckem_ctx_params, @object
	.size	known_settable_eckem_ctx_params, 120
known_settable_eckem_ctx_params:
	.quad	.LC3
	.long	4
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
	.text
	.type	eckem_settable_ctx_params, @function
eckem_settable_ctx_params:
.LFB373:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_settable_eckem_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE373:
	.size	eckem_settable_ctx_params, .-eckem_settable_ctx_params
	.section	.rodata
.LC4:
	.string	"eae_prk"
.LC5:
	.string	"shared_secret"
	.text
	.type	dhkem_extract_and_expand, @function
dhkem_extract_and_expand:
.LFB374:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, %eax
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movw	%ax, -108(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$64, -8(%rbp)
	jbe	.L67
	movl	$0, %eax
	jmp	.L71
.L67:
	movzwl	-108(%rbp), %eax
	shrw	$8, %ax
	movb	%al, -14(%rbp)
	movzwl	-108(%rbp), %eax
	movb	%al, -13(%rbp)
	leaq	LABEL_KEM(%rip), %rdi
	movq	-8(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	pushq	-128(%rbp)
	pushq	-120(%rbp)
	leaq	.LC4(%rip), %rcx
	pushq	%rcx
	pushq	$2
	leaq	-14(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_hpke_labeled_extract@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	je	.L69
	leaq	LABEL_KEM(%rip), %r9
	movq	-8(%rbp), %r8
	leaq	-80(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	pushq	16(%rbp)
	leaq	.LC5(%rip), %rdi
	pushq	%rdi
	pushq	$2
	leaq	-14(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_hpke_labeled_expand@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	je	.L69
	movl	$1, %eax
	jmp	.L70
.L69:
	movl	$0, %eax
.L70:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	-12(%rbp), %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE374:
	.size	dhkem_extract_and_expand, .-dhkem_extract_and_expand
	.section	.rodata
	.align 8
.LC6:
	.string	"ikm length is :%zu, should be at least %zu"
.LC7:
	.string	"dkp_prk"
.LC8:
	.string	"candidate"
	.text
	.globl	ossl_ec_dhkem_derive_private
	.type	ossl_ec_dhkem_derive_private, @function
ossl_ec_dhkem_derive_private:
.LFB375:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movb	$0, -209(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	ec_curvename_get0
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L73
	movl	$-2, %eax
	jmp	.L84
.L73:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_HPKE_KEM_INFO_find_curve@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L75
	movl	$-2, %eax
	jmp	.L84
.L75:
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get0_propq@PLT
	movq	%rax, %rbx
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC1(%rip), %rdi
	movq	%rbx, %rcx
	movq	%rax, %rsi
	call	ossl_kdf_ctx_create@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L76
	movl	$0, %eax
	jmp	.L84
.L76:
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	%rax, -256(%rbp)
	jnb	.L77
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$409, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-256(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$230, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L78
.L77:
	movq	-48(%rbp), %rax
	movzwl	(%rax), %eax
	shrw	$8, %ax
	movb	%al, -58(%rbp)
	movq	-48(%rbp), %rax
	movzwl	(%rax), %eax
	movb	%al, -57(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdx
	leaq	LABEL_KEM(%rip), %rdi
	leaq	-128(%rbp), %rsi
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	-256(%rbp)
	pushq	-248(%rbp)
	leaq	.LC7(%rip), %rcx
	pushq	%rcx
	pushq	$2
	leaq	-58(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_hpke_labeled_extract@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	je	.L85
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -56(%rbp)
.L83:
	movq	-48(%rbp), %rax
	movq	32(%rax), %r8
	movq	-48(%rbp), %rax
	movq	56(%rax), %rdx
	leaq	LABEL_KEM(%rip), %r9
	leaq	-128(%rbp), %rcx
	leaq	-208(%rbp), %rsi
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	leaq	-209(%rbp), %rdi
	pushq	%rdi
	leaq	.LC8(%rip), %rdi
	pushq	%rdi
	pushq	$2
	leaq	-58(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_hpke_labeled_expand@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	je	.L86
	movzbl	-208(%rbp), %edx
	movq	-48(%rbp), %rax
	movzbl	64(%rax), %eax
	andl	%edx, %eax
	movb	%al, -208(%rbp)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movl	%eax, %ecx
	movq	-240(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	je	.L87
	movzbl	-209(%rbp), %eax
	cmpb	$-1, %al
	jne	.L82
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$435, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L78
.L82:
	movzbl	-209(%rbp), %eax
	addl	$1, %eax
	movb	%al, -209(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L83
	movq	-56(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jns	.L83
	movl	$1, -20(%rbp)
	jmp	.L78
.L85:
	nop
	jmp	.L78
.L86:
	nop
	jmp	.L78
.L87:
	nop
.L78:
	leaq	-128(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-208(%rbp), %rax
	movl	$66, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-20(%rbp), %eax
.L84:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE375:
	.size	ossl_ec_dhkem_derive_private, .-ossl_ec_dhkem_derive_private
	.type	derivekey, @function
derivekey:
.LFB376:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movl	$0, -4(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L99
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_group@PLT
	testl	%eax, %eax
	je	.L100
	cmpq	$0, -24(%rbp)
	je	.L92
	cmpq	$0, -32(%rbp)
	jne	.L93
.L92:
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$66, -32(%rbp)
	ja	.L101
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_priv_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L102
	leaq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
.L93:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_generate_key_dhkem@PLT
	movl	%eax, -4(%rbp)
	jmp	.L90
.L99:
	nop
	jmp	.L90
.L100:
	nop
	jmp	.L90
.L101:
	nop
	jmp	.L90
.L102:
	nop
.L90:
	movq	-24(%rbp), %rax
	cmpq	-128(%rbp), %rax
	je	.L96
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L96:
	cmpl	$0, -4(%rbp)
	jg	.L97
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	$0, -16(%rbp)
.L97:
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE376:
	.size	derivekey, .-derivekey
	.type	check_publickey, @function
check_publickey:
.LFB377:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L104
	movl	$0, %eax
	jmp	.L105
.L104:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_key_public_check@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE377:
	.size	check_publickey, .-check_publickey
	.section	.rodata
.LC9:
	.string	"secretsz invalid"
	.text
	.type	generate_ecdhkm, @function
generate_ecdhkm:
.LFB378:
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
	movl	%r8d, -52(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_degree@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cltq
	movq	%rax, -16(%rbp)
	movl	-52(%rbp), %eax
	cmpq	%rax, -16(%rbp)
	jne	.L107
	movq	-16(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L108
.L107:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$528, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L109
.L108:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	check_publickey
	testl	%eax, %eax
	jne	.L110
	movl	$0, %eax
	jmp	.L109
.L110:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	movq	%rax, %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ECDH_compute_key@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE378:
	.size	generate_ecdhkm, .-generate_ecdhkm
	.section	.rodata
	.align 8
.LC10:
	.string	"Invalid sender auth public key"
	.text
	.type	derive_secret, @function
derive_secret:
.LFB379:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$816, %rsp
	movq	%rdi, -776(%rbp)
	movq	%rsi, -784(%rbp)
	movq	%rdx, -792(%rbp)
	movq	%rcx, -800(%rbp)
	movq	%r8, -808(%rbp)
	movq	%r9, -816(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-776(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-776(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	leaq	-352(%rbp), %rdx
	movq	-800(%rbp), %rsi
	movq	-792(%rbp), %rax
	movl	%ecx, %r8d
	movl	$132, %ecx
	movq	%rax, %rdi
	call	generate_ecdhkm
	testl	%eax, %eax
	je	.L123
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L114
	movq	-776(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-760(%rbp), %rdx
	leaq	-208(%rbp), %rsi
	movl	$133, %ecx
	movq	%rax, %rdi
	call	ecpubkey_todata
	testl	%eax, %eax
	je	.L124
	movq	-760(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	je	.L116
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$590, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdx
	movl	$158, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L113
.L116:
	movq	-56(%rbp), %rax
	movl	%eax, %r8d
	movl	$132, %eax
	subq	-32(%rbp), %rax
	movq	%rax, %rdx
	leaq	-352(%rbp), %rcx
	movq	-32(%rbp), %rax
	leaq	(%rcx,%rax), %rdi
	movq	-816(%rbp), %rsi
	movq	-808(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	generate_ecdhkm
	testl	%eax, %eax
	je	.L125
	movq	-56(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	addq	%rax, -24(%rbp)
.L114:
	cmpq	$399, -24(%rbp)
	ja	.L126
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	16(%rbp), %rcx
	leaq	-752(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	leaq	-752(%rbp), %rcx
	addq	%rax, %rcx
	movq	24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	cmpl	$0, -60(%rbp)
	je	.L119
	movq	-48(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	leaq	-752(%rbp), %rax
	leaq	(%rax,%rdx), %rcx
	movq	-48(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L119:
	movq	-776(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-776(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-776(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ossl_kdf_ctx_create@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L127
	movq	-40(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %ecx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %r9
	leaq	-352(%rbp), %r8
	movq	-784(%rbp), %rsi
	movq	-16(%rbp), %rax
	pushq	-24(%rbp)
	leaq	-752(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	dhkem_extract_and_expand
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L128
	movl	$1, -4(%rbp)
	jmp	.L113
.L123:
	nop
	jmp	.L113
.L124:
	nop
	jmp	.L113
.L125:
	nop
	jmp	.L113
.L126:
	nop
	jmp	.L113
.L127:
	nop
	jmp	.L113
.L128:
	nop
.L113:
	movq	-32(%rbp), %rdx
	leaq	-352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE379:
	.size	derive_secret, .-derive_secret
	.section	.rodata
.LC11:
	.string	"*secretlen too small"
.LC12:
	.string	"*enclen too small"
.LC13:
	.string	"Invalid public key"
	.text
	.type	dhkem_encap, @function
dhkem_encap:
.LFB380:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$368, %rsp
	movq	%rdi, -328(%rbp)
	movq	%rsi, -336(%rbp)
	movq	%rdx, -344(%rbp)
	movq	%rcx, -352(%rbp)
	movq	%r8, -360(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-328(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -336(%rbp)
	jne	.L130
	cmpq	$0, -344(%rbp)
	jne	.L131
	cmpq	$0, -360(%rbp)
	jne	.L131
	movl	$0, %eax
	jmp	.L144
.L131:
	cmpq	$0, -344(%rbp)
	je	.L133
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-344(%rbp), %rax
	movq	%rdx, (%rax)
.L133:
	cmpq	$0, -360(%rbp)
	je	.L134
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, (%rax)
.L134:
	movl	$1, %eax
	jmp	.L144
.L130:
	movq	-360(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L135
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$664, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L144
.L135:
	movq	-344(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L136
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$668, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L144
.L136:
	movq	-328(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-328(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-328(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	derivekey
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L145
	leaq	-312(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$133, %ecx
	movq	%rax, %rdi
	call	ecpubkey_todata
	testl	%eax, %eax
	je	.L146
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	leaq	-320(%rbp), %rdx
	leaq	-304(%rbp), %rsi
	movl	$133, %ecx
	movq	%rax, %rdi
	call	ecpubkey_todata
	testl	%eax, %eax
	je	.L146
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-312(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L141
	movq	-320(%rbp), %rdx
	movq	-312(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L142
.L141:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$684, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdx
	movl	$158, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L138
.L142:
	movq	-328(%rbp), %rax
	movq	(%rax), %r9
	movq	-328(%rbp), %rax
	movq	8(%rax), %r8
	movq	-328(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-352(%rbp), %rsi
	movq	-328(%rbp), %rax
	leaq	-304(%rbp), %rdi
	pushq	%rdi
	leaq	-160(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	derive_secret
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L147
	movq	-312(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	movq	-336(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-312(%rbp), %rdx
	movq	-344(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L138
.L145:
	nop
	jmp	.L138
.L146:
	nop
	jmp	.L138
.L147:
	nop
.L138:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movl	-4(%rbp), %eax
.L144:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE380:
	.size	dhkem_encap, .-dhkem_encap
	.section	.rodata
.LC14:
	.string	"Invalid enc public key"
.LC15:
	.string	"Invalid recipient public key"
	.text
	.type	dhkem_decap, @function
dhkem_decap:
.LFB381:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%rcx, -224(%rbp)
	movq	%r8, -232(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-200(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.L149
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L158
.L149:
	movq	-216(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L151
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$737, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L158
.L151:
	movq	-232(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L152
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$741, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdx
	movl	$158, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L158
.L152:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	-232(%rbp), %rdx
	movq	-224(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	eckey_frompub
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L159
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	-184(%rbp), %rdx
	leaq	-176(%rbp), %rsi
	movl	$133, %ecx
	movq	%rax, %rdi
	call	ecpubkey_todata
	testl	%eax, %eax
	je	.L160
	movq	-184(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	je	.L156
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$752, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdx
	movl	$158, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L154
.L156:
	movq	-200(%rbp), %rax
	movq	8(%rax), %r9
	movq	-200(%rbp), %rax
	movq	(%rax), %r8
	movq	-200(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rcx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	leaq	-176(%rbp), %rdi
	pushq	%rdi
	pushq	-224(%rbp)
	movq	%rax, %rdi
	call	derive_secret
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L161
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L154
.L159:
	nop
	jmp	.L154
.L160:
	nop
	jmp	.L154
.L161:
	nop
.L154:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movl	-4(%rbp), %eax
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE381:
	.size	dhkem_decap, .-dhkem_decap
	.type	eckem_encapsulate, @function
eckem_encapsulate:
.LFB382:
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
	movl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.L163
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	dhkem_encap
	jmp	.L164
.L163:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$777, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
.L164:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE382:
	.size	eckem_encapsulate, .-eckem_encapsulate
	.type	eckem_decapsulate, @function
eckem_decapsulate:
.LFB383:
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
	movl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.L166
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	dhkem_decap
	jmp	.L167
.L166:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$791, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
.L167:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE383:
	.size	eckem_decapsulate, .-eckem_decapsulate
	.globl	ossl_ec_asym_kem_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ec_asym_kem_functions, @object
	.size	ossl_ec_asym_kem_functions, 176
ossl_ec_asym_kem_functions:
	.long	1
	.zero	4
	.quad	eckem_newctx
	.long	2
	.zero	4
	.quad	eckem_encapsulate_init
	.long	3
	.zero	4
	.quad	eckem_encapsulate
	.long	4
	.zero	4
	.quad	eckem_decapsulate_init
	.long	5
	.zero	4
	.quad	eckem_decapsulate
	.long	6
	.zero	4
	.quad	eckem_freectx
	.long	10
	.zero	4
	.quad	eckem_set_ctx_params
	.long	11
	.zero	4
	.quad	eckem_settable_ctx_params
	.long	12
	.zero	4
	.quad	eckem_auth_encapsulate_init
	.long	13
	.zero	4
	.quad	eckem_auth_decapsulate_init
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.8, @object
	.size	__func__.8, 12
__func__.8:
	.string	"eckey_check"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 21
__func__.7:
	.string	"ossl_ec_match_params"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 29
__func__.6:
	.string	"ossl_ec_dhkem_derive_private"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 16
__func__.5:
	.string	"generate_ecdhkm"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 14
__func__.4:
	.string	"derive_secret"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 12
__func__.3:
	.string	"dhkem_encap"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 12
__func__.2:
	.string	"dhkem_decap"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"eckem_encapsulate"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"eckem_decapsulate"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"encode_key2ms.c"
	.text
	.type	write_msblob, @function
write_msblob:
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
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_bio_new_from_core_bio@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	cmpl	$0, -44(%rbp)
	je	.L4
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2b_PublicKey_bio@PLT
	movl	%eax, -4(%rbp)
	jmp	.L5
.L4:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2b_PrivateKey_bio@PLT
	movl	%eax, -4(%rbp)
.L5:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	write_msblob, .-write_msblob
	.type	write_pvk, @function
write_pvk:
.LFB466:
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
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_bio_new_from_core_bio@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L7
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rdi
	movq	-40(%rbp), %rax
	movl	8(%rax), %edx
	movq	-16(%rbp), %rcx
	movq	ossl_pw_pvk_password@GOTPCREL(%rip), %rax
	movq	%rax, %r10
	movq	-56(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movq	%rdi, %r8
	movq	%r10, %rcx
	movq	%rax, %rdi
	call	i2b_PVK_bio_ex@PLT
	addq	$16, %rsp
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-20(%rbp), %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	write_pvk, .-write_pvk
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/encode_decode/encode_key2ms.c"
	.text
	.type	key2ms_newctx, @function
key2ms_newctx:
.LFB467:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$73, %edx
	movq	%rax, %rsi
	movl	$64, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L10
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	$2, 8(%rax)
.L10:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE467:
	.size	key2ms_newctx, .-key2ms_newctx
	.type	key2ms_freectx, @function
key2ms_freectx:
.LFB468:
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
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_pw_clear_passphrase_data@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$88, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	key2ms_freectx, .-key2ms_freectx
	.type	key2pvk_settable_ctx_params, @function
key2pvk_settable_ctx_params:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	settables.4(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	key2pvk_settable_ctx_params, .-key2pvk_settable_ctx_params
	.section	.rodata
.LC1:
	.string	"encrypt-level"
	.text
	.type	key2pvk_set_ctx_params, @function
key2pvk_set_ctx_params:
.LFB470:
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
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L16
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	key2pvk_set_ctx_params, .-key2pvk_set_ctx_params
	.type	key2ms_does_selection, @function
key2ms_does_selection:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	key2ms_does_selection, .-key2ms_does_selection
	.type	key2msblob_encode, @function
key2msblob_encode:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$-1, -4(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	-52(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L21
	movl	$0, -4(%rbp)
	jmp	.L22
.L21:
	movl	-52(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L23
	movl	$1, -4(%rbp)
	jmp	.L22
.L23:
	movl	$0, %eax
	jmp	.L24
.L22:
	call	EVP_PKEY_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L25
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	je	.L25
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	write_msblob
	movl	%eax, -8(%rbp)
.L25:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-8(%rbp), %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	key2msblob_encode, .-key2msblob_encode
	.type	key2pvk_encode, @function
key2pvk_encode:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	-52(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	call	EVP_PKEY_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L29
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	je	.L29
	cmpq	$0, -80(%rbp)
	je	.L30
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_pw_set_ossl_passphrase_cb@PLT
	testl	%eax, %eax
	je	.L29
.L30:
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_pvk
	movl	%eax, -4(%rbp)
.L29:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	key2pvk_encode, .-key2pvk_encode
	.type	dsa2pvk_import_object, @function
dsa2pvk_import_object:
.LFB474:
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
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	dsa2pvk_import_object, .-dsa2pvk_import_object
	.type	dsa2pvk_free_object, @function
dsa2pvk_free_object:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	dsa2pvk_free_object, .-dsa2pvk_free_object
	.type	dsa2pvk_encode, @function
dsa2pvk_encode:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L35
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$229, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L36
.L35:
	movq	-48(%rbp), %rdi
	movq	EVP_PKEY_set1_DSA@GOTPCREL(%rip), %rax
	movq	%rax, %r8
	movq	-16(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	key2pvk_encode
	addq	$16, %rsp
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	dsa2pvk_encode, .-dsa2pvk_encode
	.globl	ossl_dsa_to_pvk_encoder_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_dsa_to_pvk_encoder_functions, @object
	.size	ossl_dsa_to_pvk_encoder_functions, 144
ossl_dsa_to_pvk_encoder_functions:
	.long	1
	.zero	4
	.quad	key2ms_newctx
	.long	2
	.zero	4
	.quad	key2ms_freectx
	.long	6
	.zero	4
	.quad	key2pvk_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2pvk_set_ctx_params
	.long	10
	.zero	4
	.quad	key2ms_does_selection
	.long	20
	.zero	4
	.quad	dsa2pvk_import_object
	.long	21
	.zero	4
	.quad	dsa2pvk_free_object
	.long	11
	.zero	4
	.quad	dsa2pvk_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dsa2msblob_import_object, @function
dsa2msblob_import_object:
.LFB477:
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
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	dsa2msblob_import_object, .-dsa2msblob_import_object
	.type	dsa2msblob_free_object, @function
dsa2msblob_free_object:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	dsa2msblob_free_object, .-dsa2msblob_free_object
	.type	dsa2msblob_encode, @function
dsa2msblob_encode:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L41
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$230, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L41:
	movq	-48(%rbp), %rdi
	movq	EVP_PKEY_set1_DSA@GOTPCREL(%rip), %rax
	movq	%rax, %r8
	movq	-16(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	key2msblob_encode
	addq	$16, %rsp
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	dsa2msblob_encode, .-dsa2msblob_encode
	.globl	ossl_dsa_to_msblob_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dsa_to_msblob_encoder_functions, @object
	.size	ossl_dsa_to_msblob_encoder_functions, 112
ossl_dsa_to_msblob_encoder_functions:
	.long	1
	.zero	4
	.quad	key2ms_newctx
	.long	2
	.zero	4
	.quad	key2ms_freectx
	.long	10
	.zero	4
	.quad	key2ms_does_selection
	.long	20
	.zero	4
	.quad	dsa2msblob_import_object
	.long	21
	.zero	4
	.quad	dsa2msblob_free_object
	.long	11
	.zero	4
	.quad	dsa2msblob_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsa2pvk_import_object, @function
rsa2pvk_import_object:
.LFB480:
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
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	rsa2pvk_import_object, .-rsa2pvk_import_object
	.type	rsa2pvk_free_object, @function
rsa2pvk_free_object:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	rsa2pvk_free_object, .-rsa2pvk_free_object
	.type	rsa2pvk_encode, @function
rsa2pvk_encode:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L47
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$233, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L47:
	movq	-48(%rbp), %rdi
	movq	EVP_PKEY_set1_RSA@GOTPCREL(%rip), %rax
	movq	%rax, %r8
	movq	-16(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	key2pvk_encode
	addq	$16, %rsp
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	rsa2pvk_encode, .-rsa2pvk_encode
	.globl	ossl_rsa_to_pvk_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsa_to_pvk_encoder_functions, @object
	.size	ossl_rsa_to_pvk_encoder_functions, 144
ossl_rsa_to_pvk_encoder_functions:
	.long	1
	.zero	4
	.quad	key2ms_newctx
	.long	2
	.zero	4
	.quad	key2ms_freectx
	.long	6
	.zero	4
	.quad	key2pvk_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2pvk_set_ctx_params
	.long	10
	.zero	4
	.quad	key2ms_does_selection
	.long	20
	.zero	4
	.quad	rsa2pvk_import_object
	.long	21
	.zero	4
	.quad	rsa2pvk_free_object
	.long	11
	.zero	4
	.quad	rsa2pvk_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsa2msblob_import_object, @function
rsa2msblob_import_object:
.LFB483:
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
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	rsa2msblob_import_object, .-rsa2msblob_import_object
	.type	rsa2msblob_free_object, @function
rsa2msblob_free_object:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	rsa2msblob_free_object, .-rsa2msblob_free_object
	.type	rsa2msblob_encode, @function
rsa2msblob_encode:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L53
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$234, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L54
.L53:
	movq	-48(%rbp), %rdi
	movq	EVP_PKEY_set1_RSA@GOTPCREL(%rip), %rax
	movq	%rax, %r8
	movq	-16(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	key2msblob_encode
	addq	$16, %rsp
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	rsa2msblob_encode, .-rsa2msblob_encode
	.globl	ossl_rsa_to_msblob_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsa_to_msblob_encoder_functions, @object
	.size	ossl_rsa_to_msblob_encoder_functions, 112
ossl_rsa_to_msblob_encoder_functions:
	.long	1
	.zero	4
	.quad	key2ms_newctx
	.long	2
	.zero	4
	.quad	key2ms_freectx
	.long	10
	.zero	4
	.quad	key2ms_does_selection
	.long	20
	.zero	4
	.quad	rsa2msblob_import_object
	.long	21
	.zero	4
	.quad	rsa2msblob_free_object
	.long	11
	.zero	4
	.quad	rsa2msblob_encode
	.long	0
	.zero	4
	.quad	0
	.align 32
	.type	settables.4, @object
	.size	settables.4, 80
settables.4:
	.quad	.LC1
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
	.section	.rodata
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 15
__func__.3:
	.string	"dsa2pvk_encode"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 18
__func__.2:
	.string	"dsa2msblob_encode"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 15
__func__.1:
	.string	"rsa2pvk_encode"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"rsa2msblob_encode"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

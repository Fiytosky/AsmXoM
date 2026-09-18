	.file	"list.c"
	.text
	.type	ossl_check_const_OPENSSL_CSTRING_sk_type, @function
ossl_check_const_OPENSSL_CSTRING_sk_type:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	ossl_check_const_OPENSSL_CSTRING_sk_type, .-ossl_check_const_OPENSSL_CSTRING_sk_type
	.type	ossl_check_OPENSSL_CSTRING_sk_type, @function
ossl_check_OPENSSL_CSTRING_sk_type:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	ossl_check_OPENSSL_CSTRING_sk_type, .-ossl_check_OPENSSL_CSTRING_sk_type
	.type	ossl_check_OPENSSL_CSTRING_compfunc_type, @function
ossl_check_OPENSSL_CSTRING_compfunc_type:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	ossl_check_OPENSSL_CSTRING_compfunc_type, .-ossl_check_OPENSSL_CSTRING_compfunc_type
	.type	lh_FUNCTION_hfn_thunk, @function
lh_FUNCTION_hfn_thunk:
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
.LFE631:
	.size	lh_FUNCTION_hfn_thunk, .-lh_FUNCTION_hfn_thunk
	.type	lh_FUNCTION_cfn_thunk, @function
lh_FUNCTION_cfn_thunk:
.LFB632:
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
.LFE632:
	.size	lh_FUNCTION_cfn_thunk, .-lh_FUNCTION_cfn_thunk
	.local	verbose
	.comm	verbose,4,4
	.local	select_name
	.comm	select_name,8,8
	.type	is_cipher_fetchable, @function
is_cipher_fetchable:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, -8(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, -24(%rbp)
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -32(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -32(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	is_cipher_fetchable, .-is_cipher_fetchable
	.type	is_digest_fetchable, @function
is_digest_fetchable:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, -8(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, -24(%rbp)
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -32(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -32(%rbp)
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$1, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	is_digest_fetchable, .-is_digest_fetchable
	.type	is_mac_fetchable, @function
is_mac_fetchable:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, -8(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_get0_name@PLT
	movq	%rax, -24(%rbp)
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_fetch@PLT
	movq	%rax, -32(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -32(%rbp)
	jne	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	movl	$1, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	is_mac_fetchable, .-is_mac_fetchable
	.type	is_kdf_fetchable, @function
is_kdf_fetchable:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, -8(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_get0_name@PLT
	movq	%rax, -24(%rbp)
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_fetch@PLT
	movq	%rax, -32(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -32(%rbp)
	jne	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	movl	$1, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	is_kdf_fetchable, .-is_kdf_fetchable
	.type	is_rand_fetchable, @function
is_rand_fetchable:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, -8(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_get0_name@PLT
	movq	%rax, -24(%rbp)
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_fetch@PLT
	movq	%rax, -32(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -32(%rbp)
	jne	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_free@PLT
	movl	$1, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	is_rand_fetchable, .-is_rand_fetchable
	.type	is_keymgmt_fetchable, @function
is_keymgmt_fetchable:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, -8(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_name@PLT
	movq	%rax, -24(%rbp)
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_fetch@PLT
	movq	%rax, -32(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -32(%rbp)
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	movl	$1, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	is_keymgmt_fetchable, .-is_keymgmt_fetchable
	.type	is_signature_fetchable, @function
is_signature_fetchable:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, -8(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_get0_name@PLT
	movq	%rax, -24(%rbp)
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_SIGNATURE_fetch@PLT
	movq	%rax, -32(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -32(%rbp)
	jne	.L30
	movl	$0, %eax
	jmp	.L31
.L30:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_free@PLT
	movl	$1, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	is_signature_fetchable, .-is_signature_fetchable
	.type	is_kem_fetchable, @function
is_kem_fetchable:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, -8(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEM_get0_name@PLT
	movq	%rax, -24(%rbp)
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KEM_fetch@PLT
	movq	%rax, -32(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -32(%rbp)
	jne	.L33
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEM_free@PLT
	movl	$1, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	is_kem_fetchable, .-is_kem_fetchable
	.type	is_asym_cipher_fetchable, @function
is_asym_cipher_fetchable:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, -8(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_ASYM_CIPHER_get0_name@PLT
	movq	%rax, -24(%rbp)
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_ASYM_CIPHER_fetch@PLT
	movq	%rax, -32(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -32(%rbp)
	jne	.L36
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_ASYM_CIPHER_free@PLT
	movl	$1, %eax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	is_asym_cipher_fetchable, .-is_asym_cipher_fetchable
	.type	is_keyexch_fetchable, @function
is_keyexch_fetchable:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, -8(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYEXCH_get0_name@PLT
	movq	%rax, -24(%rbp)
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYEXCH_fetch@PLT
	movq	%rax, -32(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -32(%rbp)
	jne	.L39
	movl	$0, %eax
	jmp	.L40
.L39:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYEXCH_free@PLT
	movl	$1, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	is_keyexch_fetchable, .-is_keyexch_fetchable
	.type	is_decoder_fetchable, @function
is_decoder_fetchable:
.LFB657:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, -8(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_get0_name@PLT
	movq	%rax, -24(%rbp)
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_fetch@PLT
	movq	%rax, -32(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -32(%rbp)
	jne	.L42
	movl	$0, %eax
	jmp	.L43
.L42:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_free@PLT
	movl	$1, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	is_decoder_fetchable, .-is_decoder_fetchable
	.type	is_encoder_fetchable, @function
is_encoder_fetchable:
.LFB658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, -8(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_get0_name@PLT
	movq	%rax, -24(%rbp)
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_fetch@PLT
	movq	%rax, -32(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -32(%rbp)
	jne	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_free@PLT
	movl	$1, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	is_encoder_fetchable, .-is_encoder_fetchable
	.type	include_legacy, @function
include_legacy:
.LFB659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	app_get0_propq@PLT
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	include_legacy, .-include_legacy
	.section	.rodata
.LC0:
	.string	"  %s\n"
.LC1:
	.string	"<undefined>"
.LC2:
	.string	"  %s => %s\n"
	.text
	.type	legacy_cipher_fn, @function
legacy_cipher_fn:
.LFB660:
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
	movq	select_name(%rip), %rax
	testq	%rax, %rax
	je	.L50
	cmpq	$0, -8(%rbp)
	je	.L56
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, %rdx
	movq	select_name(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L56
.L50:
	cmpq	$0, -8(%rbp)
	je	.L53
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L49
.L53:
	cmpq	$0, -16(%rbp)
	jne	.L54
	leaq	.LC1(%rip), %rax
	movq	%rax, -16(%rbp)
.L54:
	cmpq	$0, -24(%rbp)
	jne	.L55
	leaq	.LC1(%rip), %rax
	movq	%rax, -24(%rbp)
.L55:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L49
.L56:
	nop
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	legacy_cipher_fn, .-legacy_cipher_fn
	.type	sk_EVP_CIPHER_num, @function
sk_EVP_CIPHER_num:
.LFB661:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	sk_EVP_CIPHER_num, .-sk_EVP_CIPHER_num
	.type	sk_EVP_CIPHER_value, @function
sk_EVP_CIPHER_value:
.LFB662:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	sk_EVP_CIPHER_value, .-sk_EVP_CIPHER_value
	.type	sk_EVP_CIPHER_new, @function
sk_EVP_CIPHER_new:
.LFB663:
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
	call	OPENSSL_sk_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	sk_EVP_CIPHER_new, .-sk_EVP_CIPHER_new
	.type	sk_EVP_CIPHER_push, @function
sk_EVP_CIPHER_push:
.LFB671:
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
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	sk_EVP_CIPHER_push, .-sk_EVP_CIPHER_push
	.type	sk_EVP_CIPHER_pop_free, @function
sk_EVP_CIPHER_pop_free:
.LFB675:
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
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	sk_EVP_CIPHER_pop_free, .-sk_EVP_CIPHER_pop_free
	.type	sk_EVP_CIPHER_sort, @function
sk_EVP_CIPHER_sort:
.LFB681:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	sk_EVP_CIPHER_sort, .-sk_EVP_CIPHER_sort
	.type	cipher_cmp, @function
cipher_cmp:
.LFB686:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	cipher_cmp, .-cipher_cmp
	.type	collect_ciphers, @function
collect_ciphers:
.LFB687:
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
	movq	%rax, %rdi
	call	is_cipher_fetchable
	testl	%eax, %eax
	je	.L71
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_CIPHER_push
	testl	%eax, %eax
	jle	.L71
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_up_ref@PLT
.L71:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	collect_ciphers, .-collect_ciphers
	.section	.rodata
.LC3:
	.string	"ERROR: Memory allocation\n"
.LC4:
	.string	"%sLegacy:\n"
.LC5:
	.string	"%sProvided:\n"
.LC6:
	.string	"  "
.LC7:
	.string	" @ %s\n"
.LC8:
	.string	"    description: %s\n"
	.align 8
.LC9:
	.string	"retrievable algorithm parameters"
	.align 8
.LC10:
	.string	"retrievable operation parameters"
.LC11:
	.string	"settable operation parameters"
	.text
	.type	list_ciphers, @function
list_ciphers:
.LFB688:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	leaq	cipher_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_EVP_CIPHER_new
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L73
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L72
.L73:
	call	include_legacy
	testl	%eax, %eax
	je	.L75
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	legacy_cipher_fn(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	EVP_CIPHER_do_all_sorted@PLT
.L75:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	app_get0_libctx@PLT
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	leaq	collect_ciphers(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	call	EVP_CIPHER_do_all_provided@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_CIPHER_sort
	movl	$0, -4(%rbp)
	jmp	.L76
.L81:
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_CIPHER_value
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	select_name(%rip), %rax
	testq	%rax, %rax
	je	.L77
	movq	select_name(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_is_a@PLT
	testl	%eax, %eax
	je	.L82
.L77:
	movq	name_cmp@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L79
	movq	-32(%rbp), %rdx
	movq	collect_names@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_names_do_all@PLT
	testl	%eax, %eax
	je	.L79
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_names@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L79
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_description@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L80
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L80:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_gettable_params@PLT
	movq	%rax, %rcx
	leaq	.LC9(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_gettable_ctx_params@PLT
	movq	%rax, %rcx
	leaq	.LC10(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_settable_ctx_params@PLT
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
.L79:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	jmp	.L78
.L82:
	nop
.L78:
	addl	$1, -4(%rbp)
.L76:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_CIPHER_num
	cmpl	%eax, -4(%rbp)
	jl	.L81
	movq	EVP_CIPHER_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_CIPHER_pop_free
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE688:
	.size	list_ciphers, .-list_ciphers
	.type	legacy_md_fn, @function
legacy_md_fn:
.LFB689:
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
	cmpq	$0, -8(%rbp)
	je	.L84
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L88
.L84:
	cmpq	$0, -16(%rbp)
	jne	.L86
	leaq	.LC1(%rip), %rax
	movq	%rax, -16(%rbp)
.L86:
	cmpq	$0, -24(%rbp)
	jne	.L87
	leaq	.LC1(%rip), %rax
	movq	%rax, -24(%rbp)
.L87:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L88:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE689:
	.size	legacy_md_fn, .-legacy_md_fn
	.type	sk_EVP_MD_num, @function
sk_EVP_MD_num:
.LFB690:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE690:
	.size	sk_EVP_MD_num, .-sk_EVP_MD_num
	.type	sk_EVP_MD_value, @function
sk_EVP_MD_value:
.LFB691:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE691:
	.size	sk_EVP_MD_value, .-sk_EVP_MD_value
	.type	sk_EVP_MD_new, @function
sk_EVP_MD_new:
.LFB692:
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
	call	OPENSSL_sk_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE692:
	.size	sk_EVP_MD_new, .-sk_EVP_MD_new
	.type	sk_EVP_MD_push, @function
sk_EVP_MD_push:
.LFB700:
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
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	sk_EVP_MD_push, .-sk_EVP_MD_push
	.type	sk_EVP_MD_pop_free, @function
sk_EVP_MD_pop_free:
.LFB704:
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
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	sk_EVP_MD_pop_free, .-sk_EVP_MD_pop_free
	.type	sk_EVP_MD_sort, @function
sk_EVP_MD_sort:
.LFB710:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	sk_EVP_MD_sort, .-sk_EVP_MD_sort
	.type	md_cmp, @function
md_cmp:
.LFB715:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE715:
	.size	md_cmp, .-md_cmp
	.type	collect_digests, @function
collect_digests:
.LFB716:
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
	movq	%rax, %rdi
	call	is_digest_fetchable
	testl	%eax, %eax
	je	.L103
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_MD_push
	testl	%eax, %eax
	jle	.L103
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_up_ref@PLT
.L103:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE716:
	.size	collect_digests, .-collect_digests
	.type	list_digests, @function
list_digests:
.LFB717:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	leaq	md_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_EVP_MD_new
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L105
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L104
.L105:
	call	include_legacy
	testl	%eax, %eax
	je	.L107
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	legacy_md_fn(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	EVP_MD_do_all_sorted@PLT
.L107:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	app_get0_libctx@PLT
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	leaq	collect_digests(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	call	EVP_MD_do_all_provided@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_MD_sort
	movl	$0, -4(%rbp)
	jmp	.L108
.L113:
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_MD_value
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	select_name(%rip), %rax
	testq	%rax, %rax
	je	.L109
	movq	select_name(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	je	.L114
.L109:
	movq	name_cmp@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L111
	movq	-32(%rbp), %rdx
	movq	collect_names@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_names_do_all@PLT
	testl	%eax, %eax
	je	.L111
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_names@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L111
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_description@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L112
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L112:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_gettable_params@PLT
	movq	%rax, %rcx
	leaq	.LC9(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_gettable_ctx_params@PLT
	movq	%rax, %rcx
	leaq	.LC10(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_settable_ctx_params@PLT
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
.L111:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	jmp	.L110
.L114:
	nop
.L110:
	addl	$1, -4(%rbp)
.L108:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_MD_num
	cmpl	%eax, -4(%rbp)
	jl	.L113
	movq	EVP_MD_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_MD_pop_free
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE717:
	.size	list_digests, .-list_digests
	.type	sk_EVP_MAC_num, @function
sk_EVP_MAC_num:
.LFB718:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE718:
	.size	sk_EVP_MAC_num, .-sk_EVP_MAC_num
	.type	sk_EVP_MAC_value, @function
sk_EVP_MAC_value:
.LFB719:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE719:
	.size	sk_EVP_MAC_value, .-sk_EVP_MAC_value
	.type	sk_EVP_MAC_new, @function
sk_EVP_MAC_new:
.LFB720:
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
	call	OPENSSL_sk_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE720:
	.size	sk_EVP_MAC_new, .-sk_EVP_MAC_new
	.type	sk_EVP_MAC_push, @function
sk_EVP_MAC_push:
.LFB728:
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
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	sk_EVP_MAC_push, .-sk_EVP_MAC_push
	.type	sk_EVP_MAC_pop_free, @function
sk_EVP_MAC_pop_free:
.LFB732:
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
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	sk_EVP_MAC_pop_free, .-sk_EVP_MAC_pop_free
	.type	sk_EVP_MAC_sort, @function
sk_EVP_MAC_sort:
.LFB738:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	sk_EVP_MAC_sort, .-sk_EVP_MAC_sort
	.type	mac_cmp, @function
mac_cmp:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	mac_cmp, .-mac_cmp
	.type	collect_macs, @function
collect_macs:
.LFB744:
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
	movq	%rax, %rdi
	call	is_mac_fetchable
	testl	%eax, %eax
	je	.L129
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_MAC_push
	testl	%eax, %eax
	jle	.L129
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_up_ref@PLT
.L129:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	collect_macs, .-collect_macs
	.section	.rodata
.LC12:
	.string	"Provided MACs:\n"
	.text
	.type	list_macs, @function
list_macs:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	leaq	mac_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_EVP_MAC_new
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L131
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L130
.L131:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	app_get0_libctx@PLT
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	leaq	collect_macs(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	call	EVP_MAC_do_all_provided@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_MAC_sort
	movl	$0, -4(%rbp)
	jmp	.L133
.L138:
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_MAC_value
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	select_name(%rip), %rax
	testq	%rax, %rax
	je	.L134
	movq	select_name(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_is_a@PLT
	testl	%eax, %eax
	je	.L139
.L134:
	movq	name_cmp@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L136
	movq	-32(%rbp), %rdx
	movq	collect_names@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_names_do_all@PLT
	testl	%eax, %eax
	je	.L136
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_names@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L136
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_get0_description@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L137
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L137:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_gettable_params@PLT
	movq	%rax, %rcx
	leaq	.LC9(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_gettable_ctx_params@PLT
	movq	%rax, %rcx
	leaq	.LC10(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_settable_ctx_params@PLT
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
.L136:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	jmp	.L135
.L139:
	nop
.L135:
	addl	$1, -4(%rbp)
.L133:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_MAC_num
	cmpl	%eax, -4(%rbp)
	jl	.L138
	movq	EVP_MAC_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_MAC_pop_free
.L130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	list_macs, .-list_macs
	.type	sk_EVP_KDF_num, @function
sk_EVP_KDF_num:
.LFB746:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	sk_EVP_KDF_num, .-sk_EVP_KDF_num
	.type	sk_EVP_KDF_value, @function
sk_EVP_KDF_value:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	sk_EVP_KDF_value, .-sk_EVP_KDF_value
	.type	sk_EVP_KDF_new, @function
sk_EVP_KDF_new:
.LFB748:
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
	call	OPENSSL_sk_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	sk_EVP_KDF_new, .-sk_EVP_KDF_new
	.type	sk_EVP_KDF_push, @function
sk_EVP_KDF_push:
.LFB756:
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
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	sk_EVP_KDF_push, .-sk_EVP_KDF_push
	.type	sk_EVP_KDF_pop_free, @function
sk_EVP_KDF_pop_free:
.LFB760:
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
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	sk_EVP_KDF_pop_free, .-sk_EVP_KDF_pop_free
	.type	sk_EVP_KDF_sort, @function
sk_EVP_KDF_sort:
.LFB766:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	sk_EVP_KDF_sort, .-sk_EVP_KDF_sort
	.type	kdf_cmp, @function
kdf_cmp:
.LFB771:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KDF_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KDF_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	kdf_cmp, .-kdf_cmp
	.type	collect_kdfs, @function
collect_kdfs:
.LFB772:
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
	movq	%rax, %rdi
	call	is_kdf_fetchable
	testl	%eax, %eax
	je	.L154
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_KDF_push
	testl	%eax, %eax
	jle	.L154
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_up_ref@PLT
.L154:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	collect_kdfs, .-collect_kdfs
	.section	.rodata
.LC13:
	.string	"Provided KDFs and PDFs:\n"
	.text
	.type	list_kdfs, @function
list_kdfs:
.LFB773:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	leaq	kdf_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_EVP_KDF_new
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L156
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L155
.L156:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	app_get0_libctx@PLT
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	leaq	collect_kdfs(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	call	EVP_KDF_do_all_provided@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_KDF_sort
	movl	$0, -4(%rbp)
	jmp	.L158
.L163:
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_KDF_value
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	select_name(%rip), %rax
	testq	%rax, %rax
	je	.L159
	movq	select_name(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_is_a@PLT
	testl	%eax, %eax
	je	.L164
.L159:
	movq	name_cmp@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L161
	movq	-32(%rbp), %rdx
	movq	collect_names@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_names_do_all@PLT
	testl	%eax, %eax
	je	.L161
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_names@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L161
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_get0_description@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L162
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L162:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_gettable_params@PLT
	movq	%rax, %rcx
	leaq	.LC9(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_gettable_ctx_params@PLT
	movq	%rax, %rcx
	leaq	.LC10(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_settable_ctx_params@PLT
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
.L161:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	jmp	.L160
.L164:
	nop
.L160:
	addl	$1, -4(%rbp)
.L158:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_KDF_num
	cmpl	%eax, -4(%rbp)
	jl	.L163
	movq	EVP_KDF_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_KDF_pop_free
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	list_kdfs, .-list_kdfs
	.type	sk_EVP_RAND_num, @function
sk_EVP_RAND_num:
.LFB774:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	sk_EVP_RAND_num, .-sk_EVP_RAND_num
	.type	sk_EVP_RAND_value, @function
sk_EVP_RAND_value:
.LFB775:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE775:
	.size	sk_EVP_RAND_value, .-sk_EVP_RAND_value
	.type	sk_EVP_RAND_new, @function
sk_EVP_RAND_new:
.LFB776:
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
	call	OPENSSL_sk_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE776:
	.size	sk_EVP_RAND_new, .-sk_EVP_RAND_new
	.type	sk_EVP_RAND_push, @function
sk_EVP_RAND_push:
.LFB784:
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
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE784:
	.size	sk_EVP_RAND_push, .-sk_EVP_RAND_push
	.type	sk_EVP_RAND_pop_free, @function
sk_EVP_RAND_pop_free:
.LFB788:
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
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE788:
	.size	sk_EVP_RAND_pop_free, .-sk_EVP_RAND_pop_free
	.type	sk_EVP_RAND_sort, @function
sk_EVP_RAND_sort:
.LFB794:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE794:
	.size	sk_EVP_RAND_sort, .-sk_EVP_RAND_sort
	.type	rand_cmp, @function
rand_cmp:
.LFB799:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_RAND_get0_name@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_RAND_get0_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L176
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_RAND_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_RAND_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movl	%eax, -20(%rbp)
.L176:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE799:
	.size	rand_cmp, .-rand_cmp
	.type	collect_rands, @function
collect_rands:
.LFB800:
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
	movq	%rax, %rdi
	call	is_rand_fetchable
	testl	%eax, %eax
	je	.L180
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_RAND_push
	testl	%eax, %eax
	jle	.L180
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_up_ref@PLT
.L180:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE800:
	.size	collect_rands, .-collect_rands
	.section	.rodata
	.align 8
.LC14:
	.string	"Provided RNGs and seed sources:\n"
.LC15:
	.string	"  %s"
	.text
	.type	list_random_generators, @function
list_random_generators:
.LFB801:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	leaq	rand_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_EVP_RAND_new
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L182
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L181
.L182:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	app_get0_libctx@PLT
	movq	%rax, %rdi
	movq	-32(%rbp), %rax
	leaq	collect_rands(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	call	EVP_RAND_do_all_provided@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_RAND_sort
	movl	$0, -20(%rbp)
	jmp	.L184
.L188:
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_RAND_value
	movq	%rax, -40(%rbp)
	movq	select_name(%rip), %rax
	testq	%rax, %rax
	je	.L185
	movq	select_name(%rip), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_get0_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L189
.L185:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC15(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L186
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_get0_description@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L187
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L187:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_gettable_params@PLT
	movq	%rax, %rcx
	leaq	.LC9(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_gettable_ctx_params@PLT
	movq	%rax, %rcx
	leaq	.LC10(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_settable_ctx_params@PLT
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
	jmp	.L186
.L189:
	nop
.L186:
	addl	$1, -20(%rbp)
.L184:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_RAND_num
	cmpl	%eax, -20(%rbp)
	jl	.L188
	movq	EVP_RAND_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_RAND_pop_free
.L181:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE801:
	.size	list_random_generators, .-list_random_generators
	.section	.rodata
.LC16:
	.string	"%s:\n"
.LC17:
	.string	"uninitialised"
.LC18:
	.string	"ready"
.LC19:
	.string	"error"
.LC20:
	.string	"unknown"
.LC21:
	.string	"  state = %s\n"
.LC22:
	.string	"state"
	.text
	.type	display_random, @function
display_random:
.LFB802:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1136, %rsp
	movq	%rdi, -1128(%rbp)
	movq	%rsi, -1136(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-1128(%rbp), %rdx
	leaq	.LC16(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpq	$0, -1136(%rbp)
	je	.L205
	movq	-1136(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_get0_rand@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC15(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-1136(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_get_state@PLT
	cmpl	$2, %eax
	je	.L192
	cmpl	$2, %eax
	jg	.L193
	testl	%eax, %eax
	je	.L194
	cmpl	$1, %eax
	je	.L195
	jmp	.L193
.L194:
	leaq	.LC17(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L196
.L195:
	leaq	.LC18(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L196
.L192:
	leaq	.LC19(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L196
.L193:
	leaq	.LC20(%rip), %rax
	movq	%rax, -8(%rbp)
	nop
.L196:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	.LC21(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_gettable_ctx_params@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L205
	jmp	.L197
.L204:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC22(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L206
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L200
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$6, %eax
	je	.L200
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L207
.L200:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -104(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	je	.L201
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L202
.L201:
	leaq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$8, -88(%rbp)
	jmp	.L203
.L202:
	leaq	-1120(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$1000, -88(%rbp)
.L203:
	movq	$0, -80(%rbp)
	leaq	-112(%rbp), %rdx
	movq	-1136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_CTX_get_params@PLT
	testl	%eax, %eax
	je	.L199
	leaq	-112(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	print_param_value@PLT
	jmp	.L199
.L206:
	nop
	jmp	.L199
.L207:
	nop
.L199:
	addq	$40, -16(%rbp)
.L197:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L204
.L205:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE802:
	.size	display_random, .-display_random
	.section	.rodata
.LC23:
	.string	"primary"
.LC24:
	.string	"public"
.LC25:
	.string	"private"
	.text
	.type	list_random_instances, @function
list_random_instances:
.LFB803:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	RAND_get0_primary@PLT
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	display_random
	movl	$0, %edi
	call	RAND_get0_public@PLT
	movq	%rax, %rdx
	leaq	.LC24(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	display_random
	movl	$0, %edi
	call	RAND_get0_private@PLT
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	display_random
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE803:
	.size	list_random_instances, .-list_random_instances
	.type	sk_OSSL_ENCODER_num, @function
sk_OSSL_ENCODER_num:
.LFB804:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE804:
	.size	sk_OSSL_ENCODER_num, .-sk_OSSL_ENCODER_num
	.type	sk_OSSL_ENCODER_value, @function
sk_OSSL_ENCODER_value:
.LFB805:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE805:
	.size	sk_OSSL_ENCODER_value, .-sk_OSSL_ENCODER_value
	.type	sk_OSSL_ENCODER_new, @function
sk_OSSL_ENCODER_new:
.LFB806:
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
	call	OPENSSL_sk_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE806:
	.size	sk_OSSL_ENCODER_new, .-sk_OSSL_ENCODER_new
	.type	sk_OSSL_ENCODER_push, @function
sk_OSSL_ENCODER_push:
.LFB814:
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
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE814:
	.size	sk_OSSL_ENCODER_push, .-sk_OSSL_ENCODER_push
	.type	sk_OSSL_ENCODER_pop_free, @function
sk_OSSL_ENCODER_pop_free:
.LFB818:
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
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE818:
	.size	sk_OSSL_ENCODER_pop_free, .-sk_OSSL_ENCODER_pop_free
	.type	sk_OSSL_ENCODER_sort, @function
sk_OSSL_ENCODER_sort:
.LFB824:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE824:
	.size	sk_OSSL_ENCODER_sort, .-sk_OSSL_ENCODER_sort
	.type	encoder_cmp, @function
encoder_cmp:
.LFB829:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE829:
	.size	encoder_cmp, .-encoder_cmp
	.type	collect_encoders, @function
collect_encoders:
.LFB830:
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
	movq	%rax, %rdi
	call	is_encoder_fetchable
	testl	%eax, %eax
	je	.L223
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_ENCODER_push
	testl	%eax, %eax
	jle	.L223
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_up_ref@PLT
.L223:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE830:
	.size	collect_encoders, .-collect_encoders
	.section	.rodata
.LC26:
	.string	"Provided ENCODERs:\n"
.LC27:
	.string	" @ %s (%s)\n"
	.text
	.type	list_encoders, @function
list_encoders:
.LFB831:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	leaq	encoder_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_OSSL_ENCODER_new
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L225
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L224
.L225:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC26(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	app_get0_libctx@PLT
	movq	%rax, %rdi
	movq	-32(%rbp), %rax
	leaq	collect_encoders(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	call	OSSL_ENCODER_do_all_provided@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_ENCODER_sort
	movl	$0, -20(%rbp)
	jmp	.L227
.L232:
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_ENCODER_value
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	select_name(%rip), %rax
	testq	%rax, %rax
	je	.L228
	movq	select_name(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_is_a@PLT
	testl	%eax, %eax
	je	.L233
.L228:
	movq	name_cmp@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L230
	movq	-48(%rbp), %rdx
	movq	collect_names@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_names_do_all@PLT
	testl	%eax, %eax
	je	.L230
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_names@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_get0_properties@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC27(%rip), %rsi
	movq	%rbx, %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L230
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_get0_description@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L231
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L231:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_settable_ctx_params@PLT
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
.L230:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	jmp	.L229
.L233:
	nop
.L229:
	addl	$1, -20(%rbp)
.L227:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_ENCODER_num
	cmpl	%eax, -20(%rbp)
	jl	.L232
	movq	OSSL_ENCODER_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_ENCODER_pop_free
.L224:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE831:
	.size	list_encoders, .-list_encoders
	.type	sk_OSSL_DECODER_num, @function
sk_OSSL_DECODER_num:
.LFB832:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE832:
	.size	sk_OSSL_DECODER_num, .-sk_OSSL_DECODER_num
	.type	sk_OSSL_DECODER_value, @function
sk_OSSL_DECODER_value:
.LFB833:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE833:
	.size	sk_OSSL_DECODER_value, .-sk_OSSL_DECODER_value
	.type	sk_OSSL_DECODER_new, @function
sk_OSSL_DECODER_new:
.LFB834:
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
	call	OPENSSL_sk_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE834:
	.size	sk_OSSL_DECODER_new, .-sk_OSSL_DECODER_new
	.type	sk_OSSL_DECODER_push, @function
sk_OSSL_DECODER_push:
.LFB842:
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
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE842:
	.size	sk_OSSL_DECODER_push, .-sk_OSSL_DECODER_push
	.type	sk_OSSL_DECODER_pop_free, @function
sk_OSSL_DECODER_pop_free:
.LFB846:
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
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE846:
	.size	sk_OSSL_DECODER_pop_free, .-sk_OSSL_DECODER_pop_free
	.type	sk_OSSL_DECODER_sort, @function
sk_OSSL_DECODER_sort:
.LFB852:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE852:
	.size	sk_OSSL_DECODER_sort, .-sk_OSSL_DECODER_sort
	.type	decoder_cmp, @function
decoder_cmp:
.LFB857:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE857:
	.size	decoder_cmp, .-decoder_cmp
	.type	collect_decoders, @function
collect_decoders:
.LFB858:
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
	movq	%rax, %rdi
	call	is_decoder_fetchable
	testl	%eax, %eax
	je	.L248
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_DECODER_push
	testl	%eax, %eax
	jle	.L248
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_up_ref@PLT
.L248:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE858:
	.size	collect_decoders, .-collect_decoders
	.section	.rodata
.LC28:
	.string	"Provided DECODERs:\n"
	.text
	.type	list_decoders, @function
list_decoders:
.LFB859:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	leaq	decoder_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_OSSL_DECODER_new
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L250
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L249
.L250:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	app_get0_libctx@PLT
	movq	%rax, %rdi
	movq	-32(%rbp), %rax
	leaq	collect_decoders(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	call	OSSL_DECODER_do_all_provided@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_DECODER_sort
	movl	$0, -20(%rbp)
	jmp	.L252
.L257:
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_DECODER_value
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	select_name(%rip), %rax
	testq	%rax, %rax
	je	.L253
	movq	select_name(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_is_a@PLT
	testl	%eax, %eax
	je	.L258
.L253:
	movq	name_cmp@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L255
	movq	-48(%rbp), %rdx
	movq	collect_names@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_names_do_all@PLT
	testl	%eax, %eax
	je	.L255
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_names@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_get0_properties@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC27(%rip), %rsi
	movq	%rbx, %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L255
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_get0_description@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L256
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L256:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_settable_ctx_params@PLT
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
.L255:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	jmp	.L254
.L258:
	nop
.L254:
	addl	$1, -20(%rbp)
.L252:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_DECODER_num
	cmpl	%eax, -20(%rbp)
	jl	.L257
	movq	OSSL_DECODER_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_DECODER_pop_free
.L249:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE859:
	.size	list_decoders, .-list_decoders
	.type	sk_EVP_KEYMGMT_num, @function
sk_EVP_KEYMGMT_num:
.LFB860:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE860:
	.size	sk_EVP_KEYMGMT_num, .-sk_EVP_KEYMGMT_num
	.type	sk_EVP_KEYMGMT_value, @function
sk_EVP_KEYMGMT_value:
.LFB861:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE861:
	.size	sk_EVP_KEYMGMT_value, .-sk_EVP_KEYMGMT_value
	.type	sk_EVP_KEYMGMT_new, @function
sk_EVP_KEYMGMT_new:
.LFB862:
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
	call	OPENSSL_sk_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE862:
	.size	sk_EVP_KEYMGMT_new, .-sk_EVP_KEYMGMT_new
	.type	sk_EVP_KEYMGMT_push, @function
sk_EVP_KEYMGMT_push:
.LFB870:
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
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE870:
	.size	sk_EVP_KEYMGMT_push, .-sk_EVP_KEYMGMT_push
	.type	sk_EVP_KEYMGMT_pop_free, @function
sk_EVP_KEYMGMT_pop_free:
.LFB874:
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
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE874:
	.size	sk_EVP_KEYMGMT_pop_free, .-sk_EVP_KEYMGMT_pop_free
	.type	sk_EVP_KEYMGMT_sort, @function
sk_EVP_KEYMGMT_sort:
.LFB880:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE880:
	.size	sk_EVP_KEYMGMT_sort, .-sk_EVP_KEYMGMT_sort
	.type	keymanager_cmp, @function
keymanager_cmp:
.LFB885:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE885:
	.size	keymanager_cmp, .-keymanager_cmp
	.type	collect_keymanagers, @function
collect_keymanagers:
.LFB886:
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
	movq	%rax, %rdi
	call	is_keymgmt_fetchable
	testl	%eax, %eax
	je	.L273
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_KEYMGMT_push
	testl	%eax, %eax
	jle	.L273
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_up_ref@PLT
.L273:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE886:
	.size	collect_keymanagers, .-collect_keymanagers
	.section	.rodata
.LC29:
	.string	"  Name: "
.LC30:
	.string	"%s"
.LC31:
	.string	"\n"
.LC32:
	.string	"    Type: Provider Algorithm\n"
.LC33:
	.string	"    IDs: "
	.align 8
.LC34:
	.string	"settable key generation parameters"
	.text
	.type	list_keymanagers, @function
list_keymanagers:
.LFB887:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	leaq	keymanager_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_EVP_KEYMGMT_new
	movq	%rax, -16(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	leaq	collect_keymanagers(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	call	EVP_KEYMGMT_do_all_provided@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_KEYMGMT_sort
	movl	$0, -4(%rbp)
	jmp	.L275
.L281:
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_KEYMGMT_value
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	select_name(%rip), %rax
	testq	%rax, %rax
	je	.L276
	movq	select_name(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_is_a@PLT
	testl	%eax, %eax
	je	.L282
.L276:
	movq	name_cmp@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L278
	movq	-32(%rbp), %rdx
	movq	collect_names@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_names_do_all@PLT
	testl	%eax, %eax
	je	.L278
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_description@PLT
	movq	%rax, -40(%rbp)
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC29(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpq	$0, -40(%rbp)
	je	.L279
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC30(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L280
.L279:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_CSTRING_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC30(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L280:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC32(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC33(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_names@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L278
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_gen_settable_params@PLT
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_settable_params@PLT
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_gettable_params@PLT
	movq	%rax, %rcx
	leaq	.LC10(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
.L278:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	jmp	.L277
.L282:
	nop
.L277:
	addl	$1, -4(%rbp)
.L275:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_KEYMGMT_num
	cmpl	%eax, -4(%rbp)
	jl	.L281
	movq	EVP_KEYMGMT_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_KEYMGMT_pop_free
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE887:
	.size	list_keymanagers, .-list_keymanagers
	.type	sk_EVP_SIGNATURE_num, @function
sk_EVP_SIGNATURE_num:
.LFB888:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE888:
	.size	sk_EVP_SIGNATURE_num, .-sk_EVP_SIGNATURE_num
	.type	sk_EVP_SIGNATURE_value, @function
sk_EVP_SIGNATURE_value:
.LFB889:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE889:
	.size	sk_EVP_SIGNATURE_value, .-sk_EVP_SIGNATURE_value
	.type	sk_EVP_SIGNATURE_new, @function
sk_EVP_SIGNATURE_new:
.LFB890:
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
	call	OPENSSL_sk_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE890:
	.size	sk_EVP_SIGNATURE_new, .-sk_EVP_SIGNATURE_new
	.type	sk_EVP_SIGNATURE_push, @function
sk_EVP_SIGNATURE_push:
.LFB898:
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
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE898:
	.size	sk_EVP_SIGNATURE_push, .-sk_EVP_SIGNATURE_push
	.type	sk_EVP_SIGNATURE_pop_free, @function
sk_EVP_SIGNATURE_pop_free:
.LFB902:
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
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE902:
	.size	sk_EVP_SIGNATURE_pop_free, .-sk_EVP_SIGNATURE_pop_free
	.type	sk_EVP_SIGNATURE_sort, @function
sk_EVP_SIGNATURE_sort:
.LFB908:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE908:
	.size	sk_EVP_SIGNATURE_sort, .-sk_EVP_SIGNATURE_sort
	.type	signature_cmp, @function
signature_cmp:
.LFB913:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE913:
	.size	signature_cmp, .-signature_cmp
	.type	collect_signatures, @function
collect_signatures:
.LFB914:
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
	movq	%rax, %rdi
	call	is_signature_fetchable
	testl	%eax, %eax
	je	.L297
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_SIGNATURE_push
	testl	%eax, %eax
	jle	.L297
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_up_ref@PLT
.L297:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE914:
	.size	collect_signatures, .-collect_signatures
	.section	.rodata
.LC35:
	.string	" -\n"
	.text
	.type	list_signatures, @function
list_signatures:
.LFB915:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$0, -8(%rbp)
	leaq	signature_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_EVP_SIGNATURE_new
	movq	%rax, -16(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	leaq	collect_signatures(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	call	EVP_SIGNATURE_do_all_provided@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_SIGNATURE_sort
	movl	$0, -4(%rbp)
	jmp	.L299
.L304:
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_SIGNATURE_value
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	select_name(%rip), %rax
	testq	%rax, %rax
	je	.L300
	movq	select_name(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_SIGNATURE_is_a@PLT
	testl	%eax, %eax
	je	.L306
.L300:
	movq	name_cmp@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L302
	movq	-32(%rbp), %rdx
	movq	collect_names@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_SIGNATURE_names_do_all@PLT
	testl	%eax, %eax
	je	.L302
	addl	$1, -8(%rbp)
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_names@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L302
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_get0_description@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L303
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L303:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_settable_ctx_params@PLT
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_gettable_ctx_params@PLT
	movq	%rax, %rcx
	leaq	.LC10(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
.L302:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	jmp	.L301
.L306:
	nop
.L301:
	addl	$1, -4(%rbp)
.L299:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_SIGNATURE_num
	cmpl	%eax, -4(%rbp)
	jl	.L304
	movq	EVP_SIGNATURE_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_SIGNATURE_pop_free
	cmpl	$0, -8(%rbp)
	jne	.L307
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC35(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L307:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE915:
	.size	list_signatures, .-list_signatures
	.type	sk_EVP_KEM_num, @function
sk_EVP_KEM_num:
.LFB916:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE916:
	.size	sk_EVP_KEM_num, .-sk_EVP_KEM_num
	.type	sk_EVP_KEM_value, @function
sk_EVP_KEM_value:
.LFB917:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE917:
	.size	sk_EVP_KEM_value, .-sk_EVP_KEM_value
	.type	sk_EVP_KEM_new, @function
sk_EVP_KEM_new:
.LFB918:
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
	call	OPENSSL_sk_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE918:
	.size	sk_EVP_KEM_new, .-sk_EVP_KEM_new
	.type	sk_EVP_KEM_push, @function
sk_EVP_KEM_push:
.LFB926:
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
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE926:
	.size	sk_EVP_KEM_push, .-sk_EVP_KEM_push
	.type	sk_EVP_KEM_pop_free, @function
sk_EVP_KEM_pop_free:
.LFB930:
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
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE930:
	.size	sk_EVP_KEM_pop_free, .-sk_EVP_KEM_pop_free
	.type	sk_EVP_KEM_sort, @function
sk_EVP_KEM_sort:
.LFB936:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE936:
	.size	sk_EVP_KEM_sort, .-sk_EVP_KEM_sort
	.type	kem_cmp, @function
kem_cmp:
.LFB941:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEM_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEM_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE941:
	.size	kem_cmp, .-kem_cmp
	.type	collect_kem, @function
collect_kem:
.LFB942:
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
	movq	%rax, %rdi
	call	is_kem_fetchable
	testl	%eax, %eax
	je	.L322
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_KEM_push
	testl	%eax, %eax
	jle	.L322
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEM_up_ref@PLT
.L322:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE942:
	.size	collect_kem, .-collect_kem
	.type	list_kems, @function
list_kems:
.LFB943:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$0, -8(%rbp)
	leaq	kem_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_EVP_KEM_new
	movq	%rax, -16(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	leaq	collect_kem(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	call	EVP_KEM_do_all_provided@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_KEM_sort
	movl	$0, -4(%rbp)
	jmp	.L324
.L329:
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_KEM_value
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	select_name(%rip), %rax
	testq	%rax, %rax
	je	.L325
	movq	select_name(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KEM_is_a@PLT
	testl	%eax, %eax
	je	.L331
.L325:
	movq	name_cmp@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L327
	movq	-32(%rbp), %rdx
	movq	collect_names@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KEM_names_do_all@PLT
	testl	%eax, %eax
	je	.L327
	addl	$1, -8(%rbp)
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_names@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEM_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L327
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEM_get0_description@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L328
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L328:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEM_settable_ctx_params@PLT
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEM_gettable_ctx_params@PLT
	movq	%rax, %rcx
	leaq	.LC10(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
.L327:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	jmp	.L326
.L331:
	nop
.L326:
	addl	$1, -4(%rbp)
.L324:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_KEM_num
	cmpl	%eax, -4(%rbp)
	jl	.L329
	movq	EVP_KEM_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_KEM_pop_free
	cmpl	$0, -8(%rbp)
	jne	.L332
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC35(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L332:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE943:
	.size	list_kems, .-list_kems
	.type	sk_EVP_ASYM_CIPHER_num, @function
sk_EVP_ASYM_CIPHER_num:
.LFB944:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE944:
	.size	sk_EVP_ASYM_CIPHER_num, .-sk_EVP_ASYM_CIPHER_num
	.type	sk_EVP_ASYM_CIPHER_value, @function
sk_EVP_ASYM_CIPHER_value:
.LFB945:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE945:
	.size	sk_EVP_ASYM_CIPHER_value, .-sk_EVP_ASYM_CIPHER_value
	.type	sk_EVP_ASYM_CIPHER_new, @function
sk_EVP_ASYM_CIPHER_new:
.LFB946:
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
	call	OPENSSL_sk_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE946:
	.size	sk_EVP_ASYM_CIPHER_new, .-sk_EVP_ASYM_CIPHER_new
	.type	sk_EVP_ASYM_CIPHER_push, @function
sk_EVP_ASYM_CIPHER_push:
.LFB954:
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
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE954:
	.size	sk_EVP_ASYM_CIPHER_push, .-sk_EVP_ASYM_CIPHER_push
	.type	sk_EVP_ASYM_CIPHER_pop_free, @function
sk_EVP_ASYM_CIPHER_pop_free:
.LFB958:
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
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE958:
	.size	sk_EVP_ASYM_CIPHER_pop_free, .-sk_EVP_ASYM_CIPHER_pop_free
	.type	sk_EVP_ASYM_CIPHER_sort, @function
sk_EVP_ASYM_CIPHER_sort:
.LFB964:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE964:
	.size	sk_EVP_ASYM_CIPHER_sort, .-sk_EVP_ASYM_CIPHER_sort
	.type	asymcipher_cmp, @function
asymcipher_cmp:
.LFB969:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_ASYM_CIPHER_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_ASYM_CIPHER_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE969:
	.size	asymcipher_cmp, .-asymcipher_cmp
	.type	collect_asymciph, @function
collect_asymciph:
.LFB970:
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
	movq	%rax, %rdi
	call	is_asym_cipher_fetchable
	testl	%eax, %eax
	je	.L347
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_ASYM_CIPHER_push
	testl	%eax, %eax
	jle	.L347
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_ASYM_CIPHER_up_ref@PLT
.L347:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE970:
	.size	collect_asymciph, .-collect_asymciph
	.type	list_asymciphers, @function
list_asymciphers:
.LFB971:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$0, -8(%rbp)
	leaq	asymcipher_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_EVP_ASYM_CIPHER_new
	movq	%rax, -16(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	leaq	collect_asymciph(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	call	EVP_ASYM_CIPHER_do_all_provided@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_ASYM_CIPHER_sort
	movl	$0, -4(%rbp)
	jmp	.L349
.L354:
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_ASYM_CIPHER_value
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	select_name(%rip), %rax
	testq	%rax, %rax
	je	.L350
	movq	select_name(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_ASYM_CIPHER_is_a@PLT
	testl	%eax, %eax
	je	.L356
.L350:
	movq	name_cmp@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L352
	movq	-32(%rbp), %rdx
	movq	collect_names@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_ASYM_CIPHER_names_do_all@PLT
	testl	%eax, %eax
	je	.L352
	addl	$1, -8(%rbp)
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_names@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_ASYM_CIPHER_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L352
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_ASYM_CIPHER_get0_description@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L353
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L353:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_ASYM_CIPHER_settable_ctx_params@PLT
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_ASYM_CIPHER_gettable_ctx_params@PLT
	movq	%rax, %rcx
	leaq	.LC10(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
.L352:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	jmp	.L351
.L356:
	nop
.L351:
	addl	$1, -4(%rbp)
.L349:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_ASYM_CIPHER_num
	cmpl	%eax, -4(%rbp)
	jl	.L354
	movq	EVP_ASYM_CIPHER_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_ASYM_CIPHER_pop_free
	cmpl	$0, -8(%rbp)
	jne	.L357
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC35(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L357:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE971:
	.size	list_asymciphers, .-list_asymciphers
	.type	sk_EVP_KEYEXCH_num, @function
sk_EVP_KEYEXCH_num:
.LFB972:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE972:
	.size	sk_EVP_KEYEXCH_num, .-sk_EVP_KEYEXCH_num
	.type	sk_EVP_KEYEXCH_value, @function
sk_EVP_KEYEXCH_value:
.LFB973:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE973:
	.size	sk_EVP_KEYEXCH_value, .-sk_EVP_KEYEXCH_value
	.type	sk_EVP_KEYEXCH_new, @function
sk_EVP_KEYEXCH_new:
.LFB974:
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
	call	OPENSSL_sk_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE974:
	.size	sk_EVP_KEYEXCH_new, .-sk_EVP_KEYEXCH_new
	.type	sk_EVP_KEYEXCH_push, @function
sk_EVP_KEYEXCH_push:
.LFB982:
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
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE982:
	.size	sk_EVP_KEYEXCH_push, .-sk_EVP_KEYEXCH_push
	.type	sk_EVP_KEYEXCH_pop_free, @function
sk_EVP_KEYEXCH_pop_free:
.LFB986:
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
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE986:
	.size	sk_EVP_KEYEXCH_pop_free, .-sk_EVP_KEYEXCH_pop_free
	.type	sk_EVP_KEYEXCH_sort, @function
sk_EVP_KEYEXCH_sort:
.LFB992:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE992:
	.size	sk_EVP_KEYEXCH_sort, .-sk_EVP_KEYEXCH_sort
	.type	kex_cmp, @function
kex_cmp:
.LFB997:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYEXCH_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYEXCH_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE997:
	.size	kex_cmp, .-kex_cmp
	.type	collect_kex, @function
collect_kex:
.LFB998:
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
	movq	%rax, %rdi
	call	is_keyexch_fetchable
	testl	%eax, %eax
	je	.L372
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_KEYEXCH_push
	testl	%eax, %eax
	jle	.L372
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYEXCH_up_ref@PLT
.L372:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE998:
	.size	collect_kex, .-collect_kex
	.type	list_keyexchanges, @function
list_keyexchanges:
.LFB999:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$0, -8(%rbp)
	leaq	kex_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_EVP_KEYEXCH_new
	movq	%rax, -16(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	leaq	collect_kex(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	call	EVP_KEYEXCH_do_all_provided@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_KEYEXCH_sort
	movl	$0, -4(%rbp)
	jmp	.L374
.L379:
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_KEYEXCH_value
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	select_name(%rip), %rax
	testq	%rax, %rax
	je	.L375
	movq	select_name(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYEXCH_is_a@PLT
	testl	%eax, %eax
	je	.L381
.L375:
	movq	name_cmp@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L377
	movq	-32(%rbp), %rdx
	movq	collect_names@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYEXCH_names_do_all@PLT
	testl	%eax, %eax
	je	.L377
	addl	$1, -8(%rbp)
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_names@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYEXCH_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L377
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYEXCH_get0_description@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L378
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L378:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYEXCH_settable_ctx_params@PLT
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYEXCH_gettable_ctx_params@PLT
	movq	%rax, %rcx
	leaq	.LC10(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
.L377:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	jmp	.L376
.L381:
	nop
.L376:
	addl	$1, -4(%rbp)
.L374:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_KEYEXCH_num
	cmpl	%eax, -4(%rbp)
	jl	.L379
	movq	EVP_KEYEXCH_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_KEYEXCH_pop_free
	cmpl	$0, -8(%rbp)
	jne	.L382
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC35(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L382:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE999:
	.size	list_keyexchanges, .-list_keyexchanges
	.section	.rodata
.LC36:
	.string	"# None-OID object: %s, %s\n"
.LC37:
	.string	"../apps/list.c"
.LC38:
	.string	"%s = %s\n"
.LC39:
	.string	"%s = %s, %s\n"
	.text
	.type	list_objects, @function
list_objects:
.LFB1000:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$0, %edi
	call	OBJ_new_nid@PLT
	movl	%eax, -24(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L384
.L395:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -32(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, -40(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	testl	%eax, %eax
	je	.L396
	movq	-32(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	OBJ_obj2txt@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L387
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L386
.L387:
	cmpl	$0, -52(%rbp)
	js	.L397
	movl	-52(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L390
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	leaq	.LC37(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$962, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L391
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L389
.L391:
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.L390:
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	testl	%eax, %eax
	js	.L398
	cmpq	$0, -48(%rbp)
	je	.L393
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L394
.L393:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L386
.L394:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	.LC39(%rip), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L386
.L396:
	nop
.L386:
	addl	$1, -4(%rbp)
.L384:
	movl	-4(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L395
	jmp	.L389
.L397:
	nop
	jmp	.L389
.L398:
	nop
.L389:
	leaq	.LC37(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$977, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1000:
	.size	list_objects, .-list_objects
	.section	.rodata
	.align 8
.LC40:
	.string	"Invalid command '%s'; type \"help\" for a list.\n"
.LC41:
	.string	"%s %c\n"
.LC42:
	.string	"- -\n"
	.text
	.type	list_options_for_command, @function
list_options_for_command:
.LFB1001:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	functions@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L400
.L403:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L416
	addq	$48, -8(%rbp)
.L400:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L403
	jmp	.L402
.L416:
	nop
.L402:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L404
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC40(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L399
.L404:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L417
	jmp	.L407
.L415:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	OPT_PARAM_STR@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	je	.L418
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	OPT_HELP_STR@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	je	.L419
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	OPT_MORE_STR@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	je	.L419
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	OPT_SECTION_STR@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	je	.L419
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L419
	cmpb	$0, -17(%rbp)
	je	.L413
	movsbl	-17(%rbp), %eax
	jmp	.L414
.L413:
	movl	$45, %eax
.L414:
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	bio_out@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	leaq	.LC41(%rip), %rsi
	movl	%eax, %ecx
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L412
.L419:
	nop
.L412:
	addq	$24, -16(%rbp)
.L407:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L415
	jmp	.L409
.L418:
	nop
.L409:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC42(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L399
.L417:
	nop
.L399:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1001:
	.size	list_options_for_command, .-list_options_for_command
	.type	is_md_available, @function
is_md_available:
.LFB1002:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, -8(%rbp)
	call	ERR_set_mark@PLT
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -16(%rbp)
	je	.L421
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$1, %eax
	jmp	.L422
.L421:
	cmpq	$0, -8(%rbp)
	jne	.L423
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_digest_from_engine@PLT
	testq	%rax, %rax
	je	.L423
	movl	$1, %eax
	jmp	.L422
.L423:
	movl	$0, %eax
.L422:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1002:
	.size	is_md_available, .-is_md_available
	.type	is_cipher_available, @function
is_cipher_available:
.LFB1003:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, -8(%rbp)
	call	ERR_set_mark@PLT
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -16(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -16(%rbp)
	je	.L426
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	$1, %eax
	jmp	.L427
.L426:
	cmpq	$0, -8(%rbp)
	jne	.L428
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_cipher_from_engine@PLT
	testq	%rax, %rax
	je	.L428
	movl	$1, %eax
	jmp	.L427
.L428:
	movl	$0, %eax
.L427:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1003:
	.size	is_cipher_available, .-is_cipher_available
	.section	.rodata
.LC43:
	.string	"%s\n"
.LC44:
	.string	"%-*s"
.LC45:
	.string	"\n\n"
	.text
	.type	list_type, @function
list_type:
.LFB1004:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	$0, -12(%rbp)
	leaq	-20(%rbp), %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	cmpl	$0, -40(%rbp)
	jne	.L431
	leaq	-20(%rbp), %rax
	movq	functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	calculate_columns@PLT
.L431:
	movq	functions@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L432
.L442:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jne	.L444
	cmpl	$2, -36(%rbp)
	je	.L435
	cmpl	$3, -36(%rbp)
	jne	.L445
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	is_cipher_available
	testl	%eax, %eax
	jne	.L446
	jmp	.L434
.L435:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	is_md_available
	testl	%eax, %eax
	je	.L447
	jmp	.L438
.L445:
	nop
	jmp	.L438
.L446:
	nop
.L438:
	cmpl	$0, -40(%rbp)
	je	.L440
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L434
.L440:
	movl	-20(%rbp), %ecx
	movl	-12(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	.L441
	cmpl	$0, -12(%rbp)
	jle	.L441
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L441:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-16(%rbp), %edx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC44(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -12(%rbp)
	jmp	.L434
.L444:
	nop
	jmp	.L434
.L447:
	nop
.L434:
	addq	$48, -8(%rbp)
.L432:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L442
	cmpl	$0, -40(%rbp)
	jne	.L448
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC45(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L448:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1004:
	.size	list_type, .-list_type
	.section	.rodata
.LC46:
	.string	"Legacy:\n"
.LC47:
	.string	" Name: %s\n"
.LC48:
	.string	"\tAlias for: %s\n"
.LC49:
	.string	"External"
.LC50:
	.string	"Builtin"
.LC51:
	.string	"\tType: %s Algorithm\n"
.LC52:
	.string	"\tOID: %s\n"
.LC53:
	.string	"(none)"
.LC54:
	.string	"\tPEM string: %s\n"
.LC55:
	.string	"Provided:\n"
.LC56:
	.string	" Key Managers:\n"
	.text
	.type	list_pkey, @function
list_pkey:
.LFB1005:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	select_name(%rip), %rax
	testq	%rax, %rax
	jne	.L450
	call	include_legacy
	testl	%eax, %eax
	je	.L450
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC46(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -4(%rbp)
	jmp	.L451
.L457:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	EVP_PKEY_asn1_get0@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %r8
	leaq	-48(%rbp), %rdi
	leaq	-40(%rbp), %rcx
	leaq	-28(%rbp), %rdx
	leaq	-24(%rbp), %rsi
	leaq	-20(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_asn1_get0_info@PLT
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L452
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC47(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC48(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L453
.L452:
	movq	-40(%rbp), %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC47(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-28(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L454
	leaq	.LC49(%rip), %rax
	jmp	.L455
.L454:
	leaq	.LC50(%rip), %rax
.L455:
	movq	bio_out@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC52(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L456
	leaq	.LC53(%rip), %rax
	movq	%rax, -48(%rbp)
.L456:
	movq	-48(%rbp), %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC54(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L453:
	addl	$1, -4(%rbp)
.L451:
	call	EVP_PKEY_asn1_get_count@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L457
.L450:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC55(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC56(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	list_keymanagers
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1005:
	.size	list_pkey, .-list_pkey
	.section	.rodata
.LC57:
	.string	" %s\n"
.LC58:
	.string	" Encryption:\n"
.LC59:
	.string	" Key Exchange:\n"
.LC60:
	.string	" Signatures:\n"
.LC61:
	.string	" Key encapsulation:\n"
	.text
	.type	list_pkey_meth, @function
list_pkey_meth:
.LFB1006:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	call	EVP_PKEY_meth_get_count@PLT
	movq	%rax, -16(%rbp)
	movq	select_name(%rip), %rax
	testq	%rax, %rax
	jne	.L459
	call	include_legacy
	testl	%eax, %eax
	je	.L459
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC46(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	$0, -8(%rbp)
	jmp	.L460
.L463:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_meth_get0@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	leaq	-28(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_meth_get0_info@PLT
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC57(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-32(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L461
	leaq	.LC49(%rip), %rax
	jmp	.L462
.L461:
	leaq	.LC50(%rip), %rax
.L462:
	movq	bio_out@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$1, -8(%rbp)
.L460:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L463
.L459:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC55(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC58(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	list_asymciphers
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC59(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	list_keyexchanges
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC60(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	list_signatures
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC61(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	list_kems
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1006:
	.size	list_pkey_meth, .-list_pkey_meth
	.type	sk_OSSL_STORE_LOADER_num, @function
sk_OSSL_STORE_LOADER_num:
.LFB1007:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1007:
	.size	sk_OSSL_STORE_LOADER_num, .-sk_OSSL_STORE_LOADER_num
	.type	sk_OSSL_STORE_LOADER_value, @function
sk_OSSL_STORE_LOADER_value:
.LFB1008:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1008:
	.size	sk_OSSL_STORE_LOADER_value, .-sk_OSSL_STORE_LOADER_value
	.type	sk_OSSL_STORE_LOADER_new, @function
sk_OSSL_STORE_LOADER_new:
.LFB1009:
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
	call	OPENSSL_sk_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1009:
	.size	sk_OSSL_STORE_LOADER_new, .-sk_OSSL_STORE_LOADER_new
	.type	sk_OSSL_STORE_LOADER_push, @function
sk_OSSL_STORE_LOADER_push:
.LFB1017:
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
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1017:
	.size	sk_OSSL_STORE_LOADER_push, .-sk_OSSL_STORE_LOADER_push
	.type	sk_OSSL_STORE_LOADER_pop_free, @function
sk_OSSL_STORE_LOADER_pop_free:
.LFB1021:
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
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1021:
	.size	sk_OSSL_STORE_LOADER_pop_free, .-sk_OSSL_STORE_LOADER_pop_free
	.type	sk_OSSL_STORE_LOADER_sort, @function
sk_OSSL_STORE_LOADER_sort:
.LFB1027:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1027:
	.size	sk_OSSL_STORE_LOADER_sort, .-sk_OSSL_STORE_LOADER_sort
	.type	store_cmp, @function
store_cmp:
.LFB1032:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1032:
	.size	store_cmp, .-store_cmp
	.type	collect_store_loaders, @function
collect_store_loaders:
.LFB1033:
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
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_STORE_LOADER_push
	testl	%eax, %eax
	jle	.L478
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_up_ref@PLT
.L478:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1033:
	.size	collect_store_loaders, .-collect_store_loaders
	.section	.rodata
.LC62:
	.string	"Provided STORE LOADERs:\n"
	.text
	.type	list_store_loaders, @function
list_store_loaders:
.LFB1034:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	leaq	store_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_OSSL_STORE_LOADER_new
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L480
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L479
.L480:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC62(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	app_get0_libctx@PLT
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	leaq	collect_store_loaders(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	call	OSSL_STORE_LOADER_do_all_provided@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_STORE_LOADER_sort
	movl	$0, -4(%rbp)
	jmp	.L482
.L486:
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_STORE_LOADER_value
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	select_name(%rip), %rax
	testq	%rax, %rax
	je	.L483
	movq	select_name(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_is_a@PLT
	testl	%eax, %eax
	je	.L487
.L483:
	movq	name_cmp@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L485
	movq	-32(%rbp), %rdx
	movq	collect_names@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_names_do_all@PLT
	testl	%eax, %eax
	je	.L485
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_names@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L485:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	jmp	.L484
.L487:
	nop
.L484:
	addl	$1, -4(%rbp)
.L482:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_STORE_LOADER_num
	cmpl	%eax, -4(%rbp)
	jl	.L486
	movq	OSSL_STORE_LOADER_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_STORE_LOADER_pop_free
.L479:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1034:
	.size	list_store_loaders, .-list_store_loaders
	.type	sk_OSSL_PROVIDER_num, @function
sk_OSSL_PROVIDER_num:
.LFB1035:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1035:
	.size	sk_OSSL_PROVIDER_num, .-sk_OSSL_PROVIDER_num
	.type	sk_OSSL_PROVIDER_value, @function
sk_OSSL_PROVIDER_value:
.LFB1036:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1036:
	.size	sk_OSSL_PROVIDER_value, .-sk_OSSL_PROVIDER_value
	.type	sk_OSSL_PROVIDER_new, @function
sk_OSSL_PROVIDER_new:
.LFB1037:
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
	call	OPENSSL_sk_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1037:
	.size	sk_OSSL_PROVIDER_new, .-sk_OSSL_PROVIDER_new
	.type	sk_OSSL_PROVIDER_free, @function
sk_OSSL_PROVIDER_free:
.LFB1041:
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
	call	OPENSSL_sk_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1041:
	.size	sk_OSSL_PROVIDER_free, .-sk_OSSL_PROVIDER_free
	.type	sk_OSSL_PROVIDER_push, @function
sk_OSSL_PROVIDER_push:
.LFB1045:
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
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1045:
	.size	sk_OSSL_PROVIDER_push, .-sk_OSSL_PROVIDER_push
	.type	sk_OSSL_PROVIDER_sort, @function
sk_OSSL_PROVIDER_sort:
.LFB1055:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1055:
	.size	sk_OSSL_PROVIDER_sort, .-sk_OSSL_PROVIDER_sort
	.type	provider_cmp, @function
provider_cmp:
.LFB1060:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1060:
	.size	provider_cmp, .-provider_cmp
	.type	collect_providers, @function
collect_providers:
.LFB1061:
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
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_push
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1061:
	.size	collect_providers, .-collect_providers
	.section	.rodata
.LC63:
	.string	"Providers:\n"
.LC64:
	.string	"name"
.LC65:
	.string	"version"
.LC66:
	.string	"status"
.LC67:
	.string	"buildinfo"
	.align 8
.LC68:
	.string	"WARNING: Unable to query provider parameters for %s\n"
.LC69:
	.string	"    name: %s\n"
.LC70:
	.string	"    version: %s\n"
.LC71:
	.string	""
.LC72:
	.string	"in"
.LC73:
	.string	"    status: %sactive\n"
.LC74:
	.string	"    build info: %s\n"
.LC75:
	.string	"gettable provider parameters"
	.text
	.type	list_provider_info, @function
list_provider_info:
.LFB1062:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	leaq	provider_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_new
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L503
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L502
.L503:
	movq	-16(%rbp), %rax
	leaq	collect_providers(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_do_all@PLT
	cmpl	$1, %eax
	je	.L505
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_free
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L502
.L505:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC63(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_sort
	movl	$0, -4(%rbp)
	jmp	.L506
.L515:
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_value
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, -32(%rbp)
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	-320(%rbp), %rax
	leaq	-248(%rbp), %rdx
	leaq	.LC64(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_ptr@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-320(%rbp), %rax
	leaq	-256(%rbp), %rdx
	leaq	.LC65(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_ptr@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -168(%rbp)
	leaq	-320(%rbp), %rax
	leaq	-268(%rbp), %rdx
	leaq	.LC66(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-320(%rbp), %rax
	leaq	-264(%rbp), %rdx
	leaq	.LC67(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_ptr@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_set_all_unmodified@PLT
	leaq	-240(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get_params@PLT
	testl	%eax, %eax
	jne	.L507
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	.LC68(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L508
.L507:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	je	.L509
	movq	-248(%rbp), %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC69(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L509:
	leaq	-240(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	je	.L510
	movq	-256(%rbp), %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC70(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L510:
	leaq	-240(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	je	.L511
	movl	-268(%rbp), %eax
	testl	%eax, %eax
	je	.L512
	leaq	.LC71(%rip), %rax
	jmp	.L513
.L512:
	leaq	.LC72(%rip), %rax
.L513:
	movq	bio_out@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	leaq	.LC73(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L511:
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L508
	leaq	-240(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	je	.L514
	movq	-264(%rbp), %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC74(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L514:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_gettable_params@PLT
	movq	%rax, %rcx
	leaq	.LC75(%rip), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_param_types@PLT
.L508:
	addl	$1, -4(%rbp)
.L506:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_num
	cmpl	%eax, -4(%rbp)
	jl	.L515
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_free
.L502:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1062:
	.size	list_provider_info, .-list_provider_info
	.section	.rodata
.LC76:
	.string	"Engines:\n"
	.text
	.type	list_engines, @function
list_engines:
.LFB1063:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC76(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	call	ENGINE_get_first@PLT
	movq	%rax, -8(%rbp)
	jmp	.L518
.L519:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_id@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_next@PLT
	movq	%rax, -8(%rbp)
.L518:
	cmpq	$0, -8(%rbp)
	jne	.L519
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1063:
	.size	list_engines, .-list_engines
	.section	.rodata
.LC77:
	.string	"Disabled algorithms:\n"
.LC78:
	.string	"MD2\n"
.LC79:
	.string	"RC5\n"
.LC80:
	.string	"SCTP\n"
.LC81:
	.string	"SSL3\n"
.LC82:
	.string	"ZLIB\n"
.LC83:
	.string	"BROTLI\n"
.LC84:
	.string	"ZSTD\n"
	.text
	.type	list_disabled, @function
list_disabled:
.LFB1064:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC77(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC78(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC79(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC80(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC81(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC82(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC83(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC84(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1064:
	.size	list_disabled, .-list_disabled
	.globl	list_options
	.section	.rodata
.LC85:
	.string	"General options:\n"
.LC86:
	.string	"help"
.LC87:
	.string	"Display this summary"
.LC88:
	.string	"Output options:\n"
.LC89:
	.string	"1"
.LC90:
	.string	"List in one column"
.LC91:
	.string	"verbose"
.LC92:
	.string	"Verbose listing"
.LC93:
	.string	"select"
.LC94:
	.string	"Select a single algorithm"
.LC95:
	.string	"commands"
.LC96:
	.string	"List of standard commands"
.LC97:
	.string	"standard-commands"
.LC98:
	.string	"all-algorithms"
.LC99:
	.string	"List of all algorithms"
.LC100:
	.string	"digest-commands"
	.align 8
.LC101:
	.string	"List of message digest commands (deprecated)"
.LC102:
	.string	"digest-algorithms"
	.align 8
.LC103:
	.string	"List of message digest algorithms"
.LC104:
	.string	"kdf-algorithms"
	.align 8
.LC105:
	.string	"List of key derivation and pseudo random function algorithms"
.LC106:
	.string	"random-instances"
	.align 8
.LC107:
	.string	"List the primary, public and private random number generator details"
.LC108:
	.string	"random-generators"
	.align 8
.LC109:
	.string	"List of random number generators"
.LC110:
	.string	"mac-algorithms"
	.align 8
.LC111:
	.string	"List of message authentication code algorithms"
.LC112:
	.string	"cipher-commands"
	.align 8
.LC113:
	.string	"List of cipher commands (deprecated)"
.LC114:
	.string	"cipher-algorithms"
	.align 8
.LC115:
	.string	"List of symmetric cipher algorithms"
.LC116:
	.string	"encoders"
.LC117:
	.string	"List of encoding methods"
.LC118:
	.string	"decoders"
.LC119:
	.string	"List of decoding methods"
.LC120:
	.string	"key-managers"
.LC121:
	.string	"List of key managers"
.LC122:
	.string	"key-exchange-algorithms"
	.align 8
.LC123:
	.string	"List of key exchange algorithms"
.LC124:
	.string	"kem-algorithms"
	.align 8
.LC125:
	.string	"List of key encapsulation mechanism algorithms"
.LC126:
	.string	"signature-algorithms"
.LC127:
	.string	"List of signature algorithms"
.LC128:
	.string	"asymcipher-algorithms"
	.align 8
.LC129:
	.string	"List of asymmetric cipher algorithms"
.LC130:
	.string	"public-key-algorithms"
.LC131:
	.string	"List of public key algorithms"
.LC132:
	.string	"public-key-methods"
.LC133:
	.string	"List of public key methods"
.LC134:
	.string	"store-loaders"
.LC135:
	.string	"List of store loaders"
.LC136:
	.string	"providers"
.LC137:
	.string	"List of provider information"
.LC138:
	.string	"engines"
.LC139:
	.string	"List of loaded engines"
.LC140:
	.string	"disabled"
.LC141:
	.string	"List of disabled features"
.LC142:
	.string	"options"
	.align 8
.LC143:
	.string	"List options for specified command"
.LC144:
	.string	"objects"
	.align 8
.LC145:
	.string	"List built in objects (OID<->name mappings)"
.LC146:
	.string	"Provider options:\n"
.LC147:
	.string	"provider-path"
	.align 8
.LC148:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC149:
	.string	"provider"
	.align 8
.LC150:
	.string	"Provider to load (can be specified multiple times)"
.LC151:
	.string	"propquery"
	.align 8
.LC152:
	.string	"Property query used when fetching algorithms"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	list_options, @object
	.size	list_options, 888
list_options:
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC85
	.quad	.LC86
	.long	1
	.long	45
	.quad	.LC87
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC88
	.quad	.LC89
	.long	2
	.long	45
	.quad	.LC90
	.quad	.LC91
	.long	3
	.long	45
	.quad	.LC92
	.quad	.LC93
	.long	28
	.long	115
	.quad	.LC94
	.quad	.LC95
	.long	5
	.long	45
	.quad	.LC96
	.quad	.LC97
	.long	5
	.long	45
	.quad	.LC96
	.quad	.LC98
	.long	4
	.long	45
	.quad	.LC99
	.quad	.LC100
	.long	6
	.long	45
	.quad	.LC101
	.quad	.LC102
	.long	9
	.long	45
	.quad	.LC103
	.quad	.LC104
	.long	15
	.long	45
	.quad	.LC105
	.quad	.LC106
	.long	16
	.long	45
	.quad	.LC107
	.quad	.LC108
	.long	17
	.long	45
	.quad	.LC109
	.quad	.LC110
	.long	7
	.long	45
	.quad	.LC111
	.quad	.LC112
	.long	10
	.long	45
	.quad	.LC113
	.quad	.LC114
	.long	11
	.long	45
	.quad	.LC115
	.quad	.LC116
	.long	18
	.long	45
	.quad	.LC117
	.quad	.LC118
	.long	19
	.long	45
	.quad	.LC119
	.quad	.LC120
	.long	20
	.long	45
	.quad	.LC121
	.quad	.LC122
	.long	21
	.long	45
	.quad	.LC123
	.quad	.LC124
	.long	22
	.long	45
	.quad	.LC125
	.quad	.LC126
	.long	23
	.long	45
	.quad	.LC127
	.quad	.LC128
	.long	24
	.long	45
	.quad	.LC129
	.quad	.LC130
	.long	12
	.long	45
	.quad	.LC131
	.quad	.LC132
	.long	13
	.long	45
	.quad	.LC133
	.quad	.LC134
	.long	25
	.long	45
	.quad	.LC135
	.quad	.LC136
	.long	26
	.long	45
	.quad	.LC137
	.quad	.LC138
	.long	29
	.long	45
	.quad	.LC139
	.quad	.LC140
	.long	14
	.long	45
	.quad	.LC141
	.quad	.LC142
	.long	8
	.long	115
	.quad	.LC143
	.quad	.LC144
	.long	27
	.long	45
	.quad	.LC145
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC146
	.quad	.LC147
	.long	1602
	.long	115
	.quad	.LC148
	.quad	.LC149
	.long	1601
	.long	115
	.quad	.LC150
	.quad	.LC151
	.long	1603
	.long	115
	.quad	.LC152
	.quad	0
	.zero	16
	.section	.rodata
.LC153:
	.string	"%s: Use -help for summary.\n"
.LC154:
	.string	"Digests:\n"
.LC155:
	.string	" "
.LC156:
	.string	"\nSymmetric Ciphers:\n"
	.align 8
.LC157:
	.string	"\nProvided Asymmetric Encryption:\n"
.LC158:
	.string	"\nProvided Key Exchange:\n"
.LC159:
	.string	"\nProvided Signatures:\n"
.LC160:
	.string	"\nProvided Key encapsulation:\n"
.LC161:
	.string	"\nProvided Key managers:\n"
	.text
	.globl	list_main
	.type	list_main, @function
list_main:
.LFB1065:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, verbose(%rip)
	movq	list_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -24(%rbp)
	jmp	.L522
.L559:
	cmpl	$1604, -28(%rbp)
	je	.L611
	cmpl	$1604, -28(%rbp)
	jg	.L524
	cmpl	$1603, -28(%rbp)
	jg	.L524
	cmpl	$1601, -28(%rbp)
	jge	.L525
	cmpl	$1600, -28(%rbp)
	je	.L611
	cmpl	$1600, -28(%rbp)
	jg	.L524
	cmpl	$29, -28(%rbp)
	je	.L526
	cmpl	$29, -28(%rbp)
	jg	.L524
	cmpl	$28, -28(%rbp)
	je	.L527
	cmpl	$28, -28(%rbp)
	jg	.L524
	cmpl	$27, -28(%rbp)
	je	.L528
	cmpl	$27, -28(%rbp)
	jg	.L524
	cmpl	$26, -28(%rbp)
	je	.L529
	cmpl	$26, -28(%rbp)
	jg	.L524
	cmpl	$25, -28(%rbp)
	je	.L530
	cmpl	$25, -28(%rbp)
	jg	.L524
	cmpl	$24, -28(%rbp)
	je	.L531
	cmpl	$24, -28(%rbp)
	jg	.L524
	cmpl	$23, -28(%rbp)
	je	.L532
	cmpl	$23, -28(%rbp)
	jg	.L524
	cmpl	$22, -28(%rbp)
	je	.L533
	cmpl	$22, -28(%rbp)
	jg	.L524
	cmpl	$21, -28(%rbp)
	je	.L534
	cmpl	$21, -28(%rbp)
	jg	.L524
	cmpl	$20, -28(%rbp)
	je	.L535
	cmpl	$20, -28(%rbp)
	jg	.L524
	cmpl	$19, -28(%rbp)
	je	.L536
	cmpl	$19, -28(%rbp)
	jg	.L524
	cmpl	$18, -28(%rbp)
	je	.L537
	cmpl	$18, -28(%rbp)
	jg	.L524
	cmpl	$17, -28(%rbp)
	je	.L538
	cmpl	$17, -28(%rbp)
	jg	.L524
	cmpl	$16, -28(%rbp)
	je	.L539
	cmpl	$16, -28(%rbp)
	jg	.L524
	cmpl	$15, -28(%rbp)
	je	.L540
	cmpl	$15, -28(%rbp)
	jg	.L524
	cmpl	$14, -28(%rbp)
	je	.L541
	cmpl	$14, -28(%rbp)
	jg	.L524
	cmpl	$13, -28(%rbp)
	je	.L542
	cmpl	$13, -28(%rbp)
	jg	.L524
	cmpl	$12, -28(%rbp)
	je	.L543
	cmpl	$12, -28(%rbp)
	jg	.L524
	cmpl	$11, -28(%rbp)
	je	.L544
	cmpl	$11, -28(%rbp)
	jg	.L524
	cmpl	$10, -28(%rbp)
	je	.L545
	cmpl	$10, -28(%rbp)
	jg	.L524
	cmpl	$9, -28(%rbp)
	je	.L546
	cmpl	$9, -28(%rbp)
	jg	.L524
	cmpl	$8, -28(%rbp)
	je	.L547
	cmpl	$8, -28(%rbp)
	jg	.L524
	cmpl	$7, -28(%rbp)
	je	.L548
	cmpl	$7, -28(%rbp)
	jg	.L524
	cmpl	$6, -28(%rbp)
	je	.L549
	cmpl	$6, -28(%rbp)
	jg	.L524
	cmpl	$5, -28(%rbp)
	je	.L550
	cmpl	$5, -28(%rbp)
	jg	.L524
	cmpl	$4, -28(%rbp)
	je	.L551
	cmpl	$4, -28(%rbp)
	jg	.L524
	cmpl	$3, -28(%rbp)
	je	.L552
	cmpl	$3, -28(%rbp)
	jg	.L524
	cmpl	$2, -28(%rbp)
	je	.L553
	cmpl	$2, -28(%rbp)
	jg	.L524
	cmpl	$0, -28(%rbp)
	jg	.L554
	cmpl	$-1, -28(%rbp)
	jge	.L555
	jmp	.L524
.L554:
	cmpl	$1, -28(%rbp)
	je	.L556
	jmp	.L524
.L613:
	nop
	jmp	.L555
.L614:
	nop
.L555:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC153(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
	jmp	.L610
.L556:
	movq	list_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, %eax
	jmp	.L610
.L553:
	movl	$1, -4(%rbp)
	jmp	.L524
.L551:
	movzbl	-32(%rbp), %eax
	orl	$2, %eax
	movb	%al, -32(%rbp)
	jmp	.L524
.L550:
	movzbl	-32(%rbp), %eax
	orl	$1, %eax
	movb	%al, -32(%rbp)
	jmp	.L524
.L549:
	movzbl	-32(%rbp), %eax
	orl	$16, %eax
	movb	%al, -32(%rbp)
	jmp	.L524
.L546:
	movzbl	-32(%rbp), %eax
	orl	$32, %eax
	movb	%al, -32(%rbp)
	jmp	.L524
.L540:
	movzbl	-32(%rbp), %eax
	orl	$64, %eax
	movb	%al, -32(%rbp)
	jmp	.L524
.L539:
	movzbl	-32(%rbp), %eax
	orl	$4, %eax
	movb	%al, -32(%rbp)
	jmp	.L524
.L538:
	movzbl	-32(%rbp), %eax
	orl	$8, %eax
	movb	%al, -32(%rbp)
	jmp	.L524
.L548:
	movzbl	-32(%rbp), %eax
	orl	$-128, %eax
	movb	%al, -32(%rbp)
	jmp	.L524
.L545:
	movzbl	-31(%rbp), %eax
	orl	$1, %eax
	movb	%al, -31(%rbp)
	jmp	.L524
.L544:
	movzbl	-31(%rbp), %eax
	orl	$2, %eax
	movb	%al, -31(%rbp)
	jmp	.L524
.L537:
	movzbl	-31(%rbp), %eax
	orl	$4, %eax
	movb	%al, -31(%rbp)
	jmp	.L524
.L536:
	movzbl	-31(%rbp), %eax
	orl	$8, %eax
	movb	%al, -31(%rbp)
	jmp	.L524
.L535:
	movzbl	-31(%rbp), %eax
	orl	$16, %eax
	movb	%al, -31(%rbp)
	jmp	.L524
.L532:
	movzbl	-31(%rbp), %eax
	orl	$32, %eax
	movb	%al, -31(%rbp)
	jmp	.L524
.L534:
	movzbl	-31(%rbp), %eax
	orl	$64, %eax
	movb	%al, -31(%rbp)
	jmp	.L524
.L533:
	movzbl	-31(%rbp), %eax
	orl	$-128, %eax
	movb	%al, -31(%rbp)
	jmp	.L524
.L531:
	movzbl	-30(%rbp), %eax
	orl	$1, %eax
	movb	%al, -30(%rbp)
	jmp	.L524
.L543:
	movzbl	-30(%rbp), %eax
	orl	$2, %eax
	movb	%al, -30(%rbp)
	jmp	.L524
.L542:
	movzbl	-30(%rbp), %eax
	orl	$4, %eax
	movb	%al, -30(%rbp)
	jmp	.L524
.L530:
	movzbl	-30(%rbp), %eax
	orl	$8, %eax
	movb	%al, -30(%rbp)
	jmp	.L524
.L529:
	movzbl	-30(%rbp), %eax
	orl	$16, %eax
	movb	%al, -30(%rbp)
	jmp	.L524
.L526:
	movzbl	-30(%rbp), %eax
	orl	$32, %eax
	movb	%al, -30(%rbp)
	jmp	.L524
.L541:
	movzbl	-30(%rbp), %eax
	orl	$64, %eax
	movb	%al, -30(%rbp)
	jmp	.L524
.L528:
	movzbl	-30(%rbp), %eax
	orl	$-128, %eax
	movb	%al, -30(%rbp)
	jmp	.L524
.L547:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	list_options_for_command
	jmp	.L524
.L552:
	movl	$1, verbose(%rip)
	jmp	.L524
.L527:
	call	opt_arg@PLT
	movq	%rax, select_name(%rip)
	jmp	.L524
.L525:
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	jne	.L612
	movl	$1, %eax
	jmp	.L610
.L611:
	nop
	jmp	.L524
.L612:
	nop
.L524:
	movl	$1, -8(%rbp)
.L522:
	call	opt_next@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L559
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L613
	movzbl	-32(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L561
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L562
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L562:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$1, %edi
	call	list_type
.L561:
	movzbl	-32(%rbp), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L563
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L564
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L564:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC154(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC155(%rip), %rax
	movq	%rax, %rdi
	call	list_digests
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC156(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC155(%rip), %rax
	movq	%rax, %rdi
	call	list_ciphers
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	list_kdfs
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	list_macs
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC157(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	list_asymciphers
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC158(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	list_keyexchanges
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC159(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	list_signatures
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC160(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	list_kems
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC161(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	list_keymanagers
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	list_encoders
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	list_decoders
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	list_store_loaders
.L563:
	movzbl	-32(%rbp), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L565
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L566
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L566:
	call	list_random_instances
.L565:
	movzbl	-32(%rbp), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L567
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L568
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L568:
	call	list_random_generators
.L567:
	movzbl	-32(%rbp), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L569
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L570
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L570:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$2, %edi
	call	list_type
.L569:
	movzbl	-32(%rbp), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L571
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L572
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L572:
	leaq	.LC71(%rip), %rax
	movq	%rax, %rdi
	call	list_digests
.L571:
	movzbl	-32(%rbp), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L573
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L574
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L574:
	call	list_kdfs
.L573:
	movzbl	-32(%rbp), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L575
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L576
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L576:
	call	list_macs
.L575:
	movzbl	-31(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L577
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L578
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L578:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$3, %edi
	call	list_type
.L577:
	movzbl	-31(%rbp), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L579
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L580
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L580:
	leaq	.LC71(%rip), %rax
	movq	%rax, %rdi
	call	list_ciphers
.L579:
	movzbl	-31(%rbp), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L581
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L582
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L582:
	call	list_encoders
.L581:
	movzbl	-31(%rbp), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L583
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L584
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L584:
	call	list_decoders
.L583:
	movzbl	-31(%rbp), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L585
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L586
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L586:
	call	list_keymanagers
.L585:
	movzbl	-31(%rbp), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L587
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L588
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L588:
	call	list_signatures
.L587:
	movzbl	-30(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L589
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L590
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L590:
	call	list_asymciphers
.L589:
	movzbl	-31(%rbp), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L591
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L592
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L592:
	call	list_keyexchanges
.L591:
	movzbl	-31(%rbp), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L593
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L594
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L594:
	call	list_kems
.L593:
	movzbl	-30(%rbp), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L595
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L596
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L596:
	call	list_pkey
.L595:
	movzbl	-30(%rbp), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L597
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L598
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L598:
	call	list_pkey_meth
.L597:
	movzbl	-30(%rbp), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L599
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L600
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L600:
	call	list_store_loaders
.L599:
	movzbl	-30(%rbp), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L601
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L602
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L602:
	call	list_provider_info
.L601:
	movzbl	-30(%rbp), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L603
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L604
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L604:
	call	list_engines
.L603:
	movzbl	-30(%rbp), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L605
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L606
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L606:
	call	list_disabled
.L605:
	movzbl	-30(%rbp), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L607
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L608
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L608:
	call	list_objects
.L607:
	cmpl	$0, -8(%rbp)
	je	.L614
	movl	$0, %eax
.L610:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1065:
	.size	list_main, .-list_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

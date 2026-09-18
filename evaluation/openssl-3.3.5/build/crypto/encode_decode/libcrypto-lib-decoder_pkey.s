	.file	"decoder_pkey.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB579:
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
.LFE579:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB580:
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
.LFE580:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	sk_OSSL_DECODER_INSTANCE_deep_copy, @function
sk_OSSL_DECODER_INSTANCE_deep_copy:
.LFB643:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_deep_copy@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	sk_OSSL_DECODER_INSTANCE_deep_copy, .-sk_OSSL_DECODER_INSTANCE_deep_copy
	.globl	OSSL_DECODER_CTX_set_passphrase
	.type	OSSL_DECODER_CTX_set_passphrase, @function
OSSL_DECODER_CTX_set_passphrase:
.LFB645:
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
	movq	-8(%rbp), %rax
	leaq	56(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_pw_set_passphrase@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	OSSL_DECODER_CTX_set_passphrase, .-OSSL_DECODER_CTX_set_passphrase
	.globl	OSSL_DECODER_CTX_set_passphrase_ui
	.type	OSSL_DECODER_CTX_set_passphrase_ui, @function
OSSL_DECODER_CTX_set_passphrase_ui:
.LFB646:
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
	movq	-8(%rbp), %rax
	leaq	56(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_pw_set_ui_method@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	OSSL_DECODER_CTX_set_passphrase_ui, .-OSSL_DECODER_CTX_set_passphrase_ui
	.globl	OSSL_DECODER_CTX_set_pem_password_cb
	.type	OSSL_DECODER_CTX_set_pem_password_cb, @function
OSSL_DECODER_CTX_set_pem_password_cb:
.LFB647:
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
	movq	-8(%rbp), %rax
	leaq	56(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_pw_set_pem_password_cb@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	OSSL_DECODER_CTX_set_pem_password_cb, .-OSSL_DECODER_CTX_set_pem_password_cb
	.globl	OSSL_DECODER_CTX_set_passphrase_cb
	.type	OSSL_DECODER_CTX_set_passphrase_cb, @function
OSSL_DECODER_CTX_set_passphrase_cb:
.LFB648:
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
	movq	-8(%rbp), %rax
	leaq	56(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_pw_set_ossl_passphrase_cb@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	OSSL_DECODER_CTX_set_passphrase_cb, .-OSSL_DECODER_CTX_set_passphrase_cb
	.type	sk_EVP_KEYMGMT_num, @function
sk_EVP_KEYMGMT_num:
.LFB649:
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
.LFE649:
	.size	sk_EVP_KEYMGMT_num, .-sk_EVP_KEYMGMT_num
	.type	sk_EVP_KEYMGMT_value, @function
sk_EVP_KEYMGMT_value:
.LFB650:
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
.LFE650:
	.size	sk_EVP_KEYMGMT_value, .-sk_EVP_KEYMGMT_value
	.type	sk_EVP_KEYMGMT_new_null, @function
sk_EVP_KEYMGMT_new_null:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OPENSSL_sk_new_null@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	sk_EVP_KEYMGMT_new_null, .-sk_EVP_KEYMGMT_new_null
	.type	sk_EVP_KEYMGMT_push, @function
sk_EVP_KEYMGMT_push:
.LFB659:
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
.LFE659:
	.size	sk_EVP_KEYMGMT_push, .-sk_EVP_KEYMGMT_push
	.type	sk_EVP_KEYMGMT_pop_free, @function
sk_EVP_KEYMGMT_pop_free:
.LFB663:
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
.LFE663:
	.size	sk_EVP_KEYMGMT_pop_free, .-sk_EVP_KEYMGMT_pop_free
	.type	sk_EVP_KEYMGMT_deep_copy, @function
sk_EVP_KEYMGMT_deep_copy:
.LFB672:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_deep_copy@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	sk_EVP_KEYMGMT_deep_copy, .-sk_EVP_KEYMGMT_deep_copy
	.section	.rodata
.LC0:
	.string	"data-type"
	.align 8
.LC1:
	.string	"../crypto/encode_decode/decoder_pkey.c"
.LC2:
	.string	"reference"
	.text
	.type	decoder_construct_pkey, @function
decoder_construct_pkey:
.LFB674:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_INSTANCE_get_decoder@PLT
	movq	%rax, -56(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_INSTANCE_get_decoder_ctx@PLT
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_get0_provider@PLT
	movq	%rax, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	leaq	.LC0(%rip), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L27
	movq	$0, -112(%rbp)
	leaq	-112(%rbp), %rcx
	movq	-96(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$99, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-112(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 32(%rax)
.L27:
	leaq	.LC2(%rip), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L30
	movq	-96(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L31
.L30:
	movl	$0, %eax
	jmp	.L29
.L31:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	sk_EVP_KEYMGMT_num
	movl	%eax, -100(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L32
.L35:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_KEYMGMT_value
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_provider@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L33
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	evp_keymgmt_has_load@PLT
	testl	%eax, %eax
	je	.L33
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_is_a@PLT
	testl	%eax, %eax
	jne	.L44
.L33:
	addl	$1, -20(%rbp)
.L32:
	movl	-20(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L35
	jmp	.L34
.L44:
	nop
.L34:
	movl	-20(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.L36
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_up_ref@PLT
	testl	%eax, %eax
	jne	.L37
	movl	$0, %eax
	jmp	.L29
.L36:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_fetch@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L37
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_provider@PLT
	movq	%rax, -16(%rbp)
.L37:
	cmpq	$0, -8(%rbp)
	je	.L38
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L39
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_load@PLT
	movq	%rax, -40(%rbp)
	jmp	.L40
.L39:
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L41
	movl	$135, -128(%rbp)
	jmp	.L42
.L41:
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -128(%rbp)
.L42:
	movq	-56(%rbp), %rax
	movq	112(%rax), %r9
	leaq	-144(%rbp), %rcx
	movq	evp_keymgmt_util_try_import@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	*%r9
	movq	-136(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -136(%rbp)
.L40:
	cmpq	$0, -40(%rbp)
	je	.L43
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_util_make_pkey@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L43
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_freedata@PLT
.L43:
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
.L38:
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	decoder_construct_pkey, .-decoder_construct_pkey
	.type	decoder_clean_pkey_construct_arg, @function
decoder_clean_pkey_construct_arg:
.LFB675:
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
	je	.L47
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	EVP_KEYMGMT_free@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_KEYMGMT_pop_free
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$200, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$201, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$202, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L47:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	decoder_clean_pkey_construct_arg, .-decoder_clean_pkey_construct_arg
	.type	collect_decoder_keymgmt, @function
collect_decoder_keymgmt:
.LFB676:
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
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %edx
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jne	.L54
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L51
	movq	-64(%rbp), %rax
	movb	$1, 36(%rax)
	jmp	.L48
.L51:
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_decoder_instance_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L52
	movq	-48(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-64(%rbp), %rax
	movb	$1, 36(%rax)
	jmp	.L48
.L52:
	movq	$0, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_decoder_ctx_add_decoder_inst@PLT
	testl	%eax, %eax
	jne	.L53
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_decoder_instance_free@PLT
	movq	-64(%rbp), %rax
	movb	$1, 36(%rax)
	jmp	.L48
.L53:
	movq	-64(%rbp), %rax
	movl	32(%rax), %eax
	leal	1(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, 32(%rax)
	jmp	.L48
.L54:
	nop
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE676:
	.size	collect_decoder_keymgmt, .-collect_decoder_keymgmt
	.type	collect_decoder, @function
collect_decoder:
.LFB677:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movzbl	36(%rax), %eax
	testb	%al, %al
	jne	.L62
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_get0_provider@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_provider_ctx@PLT
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L58
	movq	-72(%rbp), %rax
	movq	96(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	16(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	je	.L63
.L58:
	movq	$0, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_KEYMGMT_num
	movl	%eax, -52(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L59
.L61:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_KEYMGMT_value
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	collect_decoder_keymgmt
	movq	-16(%rbp), %rax
	movzbl	36(%rax), %eax
	testb	%al, %al
	jne	.L64
	addl	$1, -4(%rbp)
.L59:
	movl	-4(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L61
	jmp	.L55
.L62:
	nop
	jmp	.L55
.L63:
	nop
	jmp	.L55
.L64:
	nop
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	collect_decoder, .-collect_decoder
	.section	.rodata
.LC3:
	.string	"id-ecPublicKey"
.LC4:
	.string	"1.2.840.10045.2.1"
.LC5:
	.string	"SM2"
	.text
	.type	check_keymgmt, @function
check_keymgmt:
.LFB678:
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
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L66
	movl	$1, %eax
	jmp	.L67
.L66:
	movq	-32(%rbp), %rax
	movzbl	37(%rax), %eax
	testb	%al, %al
	jne	.L68
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_namemap_stored@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_namemap_name2num@PLT
	movq	-32(%rbp), %rdx
	movl	%eax, 24(%rdx)
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L69
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L70
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L69
.L70:
	leaq	.LC5(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_namemap_name2num@PLT
	movq	-32(%rbp), %rdx
	movl	%eax, 28(%rdx)
.L69:
	movq	-32(%rbp), %rax
	movb	$1, 37(%rax)
.L68:
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L71
	movl	$0, %eax
	jmp	.L67
.L71:
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, %edx
	je	.L72
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	movq	-32(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, %edx
	je	.L72
	movl	$0, %eax
	jmp	.L67
.L72:
	movl	$1, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	check_keymgmt, .-check_keymgmt
	.type	collect_keymgmt, @function
collect_keymgmt:
.LFB679:
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
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_keymgmt
	testl	%eax, %eax
	je	.L77
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_up_ref@PLT
	testl	%eax, %eax
	je	.L78
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_KEYMGMT_push
	testl	%eax, %eax
	jg	.L73
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	movq	-8(%rbp), %rax
	movb	$1, 36(%rax)
	jmp	.L73
.L77:
	nop
	jmp	.L73
.L78:
	nop
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE679:
	.size	collect_keymgmt, .-collect_keymgmt
	.type	ossl_decoder_ctx_setup_for_pkey, @function
ossl_decoder_ctx_setup_for_pkey:
.LFB680:
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
	movq	%rcx, -128(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$404, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L90
	cmpq	$0, -128(%rbp)
	je	.L82
	leaq	.LC1(%rip), %rcx
	movq	-128(%rbp), %rax
	movl	$407, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L91
.L82:
	call	sk_EVP_KEYMGMT_new_null
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L83
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$413, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L81
.L83:
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-16(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-104(%rbp), %rax
	movl	16(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-104(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-96(%rbp), %rdx
	leaq	collect_keymgmt(%rip), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_do_all_provided@PLT
	movzbl	-60(%rbp), %eax
	testb	%al, %al
	jne	.L92
	leaq	-96(%rbp), %rdx
	leaq	collect_decoder(%rip), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_do_all_provided@PLT
	movzbl	-60(%rbp), %eax
	testb	%al, %al
	jne	.L93
	movq	$0, -40(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_get_num_decoders@PLT
	testl	%eax, %eax
	je	.L86
	leaq	decoder_construct_pkey(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_set_construct@PLT
	testl	%eax, %eax
	je	.L94
	movq	-16(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_set_construct_data@PLT
	testl	%eax, %eax
	je	.L94
	leaq	decoder_clean_pkey_construct_arg(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_set_cleanup@PLT
	testl	%eax, %eax
	je	.L94
	movq	$0, -16(%rbp)
.L86:
	movl	$1, -4(%rbp)
	jmp	.L81
.L90:
	nop
	jmp	.L81
.L91:
	nop
	jmp	.L81
.L92:
	nop
	jmp	.L81
.L93:
	nop
	jmp	.L81
.L94:
	nop
.L81:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	decoder_clean_pkey_construct_arg
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	ossl_decoder_ctx_setup_for_pkey, .-ossl_decoder_ctx_setup_for_pkey
	.type	keymgmt_dup, @function
keymgmt_dup:
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
	call	EVP_KEYMGMT_up_ref@PLT
	testl	%eax, %eax
	jne	.L96
	movl	$0, %eax
	jmp	.L97
.L96:
	movq	-8(%rbp), %rax
.L97:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	keymgmt_dup, .-keymgmt_dup
	.type	ossl_decoder_ctx_for_pkey_dup, @function
ossl_decoder_ctx_for_pkey_dup:
.LFB682:
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
	movq	$0, -8(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L99
	movl	$0, %eax
	jmp	.L100
.L99:
	call	OSSL_DECODER_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L101
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$507, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524348, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L100
.L101:
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_set_input_type@PLT
	testl	%eax, %eax
	je	.L102
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_set_input_structure@PLT
	testl	%eax, %eax
	jne	.L103
.L102:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$513, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524348, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L104
.L103:
	movq	-40(%rbp), %rax
	movl	16(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L105
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	ossl_decoder_instance_free@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	ossl_decoder_instance_dup@GOTPCREL(%rip), %rdx
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_DECODER_INSTANCE_deep_copy
	movq	-16(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L105
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$524, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524348, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L104
.L105:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_get_construct@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_set_construct@PLT
	testl	%eax, %eax
	jne	.L106
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$531, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524348, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L104
.L106:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_get_construct_data@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L107
	leaq	.LC1(%rip), %rax
	movl	$537, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L108
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$539, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L104
.L108:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L109
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$543, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L109
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$545, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L104
.L109:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L110
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	EVP_KEYMGMT_free@GOTPCREL(%rip), %rdx
	leaq	keymgmt_dup(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_KEYMGMT_deep_copy
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L110
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$556, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L104
.L110:
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	16(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_set_construct_data@PLT
	testl	%eax, %eax
	jne	.L111
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$565, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524348, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L104
.L111:
	movq	$0, -8(%rbp)
.L107:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_get_cleanup@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_set_cleanup@PLT
	testl	%eax, %eax
	jne	.L112
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$573, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524348, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L104
.L112:
	movq	-16(%rbp), %rax
	jmp	.L100
.L104:
	cmpq	$0, -8(%rbp)
	je	.L113
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$580, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	EVP_KEYMGMT_free@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_KEYMGMT_pop_free
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$582, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L113:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	movl	$0, %eax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	ossl_decoder_ctx_for_pkey_dup, .-ossl_decoder_ctx_for_pkey_dup
	.type	lh_DECODER_CACHE_ENTRY_hfn_thunk, @function
lh_DECODER_CACHE_ENTRY_hfn_thunk:
.LFB683:
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
.LFE683:
	.size	lh_DECODER_CACHE_ENTRY_hfn_thunk, .-lh_DECODER_CACHE_ENTRY_hfn_thunk
	.type	lh_DECODER_CACHE_ENTRY_cfn_thunk, @function
lh_DECODER_CACHE_ENTRY_cfn_thunk:
.LFB684:
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
.LFE684:
	.size	lh_DECODER_CACHE_ENTRY_cfn_thunk, .-lh_DECODER_CACHE_ENTRY_cfn_thunk
	.type	lh_DECODER_CACHE_ENTRY_free, @function
lh_DECODER_CACHE_ENTRY_free:
.LFB685:
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
	call	OPENSSL_LH_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	lh_DECODER_CACHE_ENTRY_free, .-lh_DECODER_CACHE_ENTRY_free
	.type	lh_DECODER_CACHE_ENTRY_flush, @function
lh_DECODER_CACHE_ENTRY_flush:
.LFB686:
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
	call	OPENSSL_LH_flush@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	lh_DECODER_CACHE_ENTRY_flush, .-lh_DECODER_CACHE_ENTRY_flush
	.type	lh_DECODER_CACHE_ENTRY_insert, @function
lh_DECODER_CACHE_ENTRY_insert:
.LFB687:
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
	call	OPENSSL_LH_insert@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	lh_DECODER_CACHE_ENTRY_insert, .-lh_DECODER_CACHE_ENTRY_insert
	.type	lh_DECODER_CACHE_ENTRY_retrieve, @function
lh_DECODER_CACHE_ENTRY_retrieve:
.LFB689:
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
	call	OPENSSL_LH_retrieve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE689:
	.size	lh_DECODER_CACHE_ENTRY_retrieve, .-lh_DECODER_CACHE_ENTRY_retrieve
	.type	lh_DECODER_CACHE_ENTRY_error, @function
lh_DECODER_CACHE_ENTRY_error:
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
	call	OPENSSL_LH_error@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE690:
	.size	lh_DECODER_CACHE_ENTRY_error, .-lh_DECODER_CACHE_ENTRY_error
	.type	lh_DECODER_CACHE_ENTRY_doall_thunk, @function
lh_DECODER_CACHE_ENTRY_doall_thunk:
.LFB694:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE694:
	.size	lh_DECODER_CACHE_ENTRY_doall_thunk, .-lh_DECODER_CACHE_ENTRY_doall_thunk
	.type	lh_DECODER_CACHE_ENTRY_doall_arg_thunk, @function
lh_DECODER_CACHE_ENTRY_doall_arg_thunk:
.LFB695:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE695:
	.size	lh_DECODER_CACHE_ENTRY_doall_arg_thunk, .-lh_DECODER_CACHE_ENTRY_doall_arg_thunk
	.type	lh_DECODER_CACHE_ENTRY_doall, @function
lh_DECODER_CACHE_ENTRY_doall:
.LFB696:
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
	call	OPENSSL_LH_doall@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	lh_DECODER_CACHE_ENTRY_doall, .-lh_DECODER_CACHE_ENTRY_doall
	.type	lh_DECODER_CACHE_ENTRY_new, @function
lh_DECODER_CACHE_ENTRY_new:
.LFB697:
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
	call	OPENSSL_LH_new@PLT
	movq	%rax, %rdi
	leaq	lh_DECODER_CACHE_ENTRY_doall_arg_thunk(%rip), %rsi
	leaq	lh_DECODER_CACHE_ENTRY_doall_thunk(%rip), %rcx
	leaq	lh_DECODER_CACHE_ENTRY_cfn_thunk(%rip), %rdx
	leaq	lh_DECODER_CACHE_ENTRY_hfn_thunk(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	OPENSSL_LH_set_thunks@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	lh_DECODER_CACHE_ENTRY_new, .-lh_DECODER_CACHE_ENTRY_new
	.type	decoder_cache_entry_free, @function
decoder_cache_entry_free:
.LFB699:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L134
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$608, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$609, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$610, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$611, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$613, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L131
.L134:
	nop
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	decoder_cache_entry_free, .-decoder_cache_entry_free
	.type	decoder_cache_entry_hash, @function
decoder_cache_entry_hash:
.LFB700:
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
	movq	$17, -24(%rbp)
	movq	-24(%rbp), %rax
	imulq	$23, %rax, %rbx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L136
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_lh_strcasehash@PLT
	jmp	.L137
.L136:
	movl	$0, %eax
.L137:
	addq	%rbx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	imulq	$23, %rax, %rbx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L138
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_lh_strcasehash@PLT
	jmp	.L139
.L138:
	movl	$0, %eax
.L139:
	addq	%rbx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	imulq	$23, %rax, %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L140
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_lh_strcasehash@PLT
	jmp	.L141
.L140:
	movl	$0, %eax
.L141:
	addq	%rbx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	imulq	$23, %rax, %rbx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L142
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_lh_strcasehash@PLT
	jmp	.L143
.L142:
	movl	$0, %eax
.L143:
	addq	%rbx, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	xorq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	decoder_cache_entry_hash, .-decoder_cache_entry_hash
	.type	nullstrcmp, @function
nullstrcmp:
.LFB701:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L146
	cmpq	$0, -16(%rbp)
	jne	.L147
.L146:
	cmpq	$0, -8(%rbp)
	jne	.L148
	cmpq	$0, -16(%rbp)
	jne	.L149
	movl	$0, %eax
	jmp	.L150
.L149:
	movl	$1, %eax
	jmp	.L150
.L148:
	movl	$-1, %eax
	jmp	.L150
.L147:
	cmpl	$0, -20(%rbp)
	je	.L151
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	jmp	.L150
.L151:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
.L150:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	nullstrcmp, .-nullstrcmp
	.type	decoder_cache_entry_cmp, @function
decoder_cache_entry_cmp:
.LFB702:
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
	movl	24(%rax), %edx
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, %edx
	je	.L153
	movq	-24(%rbp), %rax
	movl	24(%rax), %edx
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, %edx
	jge	.L154
	movl	$-1, %eax
	jmp	.L156
.L154:
	movl	$1, %eax
	jmp	.L156
.L153:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	nullstrcmp
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L157
	movl	-4(%rbp), %eax
	jmp	.L156
.L157:
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	nullstrcmp
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L158
	movl	-4(%rbp), %eax
	jmp	.L156
.L158:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	nullstrcmp
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L159
	movl	-4(%rbp), %eax
	jmp	.L156
.L159:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	nullstrcmp
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
.L156:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	decoder_cache_entry_cmp, .-decoder_cache_entry_cmp
	.globl	ossl_decoder_cache_new
	.type	ossl_decoder_cache_new, @function
ossl_decoder_cache_new:
.LFB703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$684, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L161
	movl	$0, %eax
	jmp	.L162
.L161:
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L163
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$691, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L162
.L163:
	leaq	decoder_cache_entry_cmp(%rip), %rdx
	leaq	decoder_cache_entry_hash(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_DECODER_CACHE_ENTRY_new
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L164
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$698, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L162
.L164:
	movq	-8(%rbp), %rax
.L162:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	ossl_decoder_cache_new, .-ossl_decoder_cache_new
	.globl	ossl_decoder_cache_free
	.type	ossl_decoder_cache_free, @function
ossl_decoder_cache_free:
.LFB704:
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
	movq	8(%rax), %rax
	leaq	decoder_cache_entry_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_DECODER_CACHE_ENTRY_doall
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	lh_DECODER_CACHE_ENTRY_free
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$712, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	ossl_decoder_cache_free, .-ossl_decoder_cache_free
	.globl	ossl_decoder_cache_flush
	.type	ossl_decoder_cache_flush, @function
ossl_decoder_cache_flush:
.LFB705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L167
	movl	$0, %eax
	jmp	.L168
.L167:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L169
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$729, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524348, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L168
.L169:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	decoder_cache_entry_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_DECODER_CACHE_ENTRY_doall
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	lh_DECODER_CACHE_ENTRY_flush
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$1, %eax
.L168:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	ossl_decoder_cache_flush, .-ossl_decoder_cache_flush
	.section	.rodata
.LC6:
	.string	"properties"
	.text
	.globl	OSSL_DECODER_CTX_new_for_pkey
	.type	OSSL_DECODER_CTX_new_for_pkey, @function
OSSL_DECODER_CTX_new_for_pkey:
.LFB706:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movl	%r8d, -212(%rbp)
	movq	%r9, -224(%rbp)
	movq	$0, -8(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movq	-224(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_data@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L171
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$757, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524348, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L189
.L171:
	cmpq	$0, 16(%rbp)
	je	.L173
	leaq	-272(%rbp), %rax
	movq	16(%rbp), %rdx
	leaq	.LC6(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -96(%rbp)
.L173:
	movq	-192(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	-212(%rbp), %eax
	movl	%eax, -152(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L174
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$772, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L189
.L174:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_DECODER_CACHE_ENTRY_retrieve
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L175
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	call	OSSL_DECODER_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L176
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$788, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524348, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L189
.L176:
	movq	$0, -40(%rbp)
	movq	-192(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_set_input_type@PLT
	testl	%eax, %eax
	je	.L177
	movq	-200(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_set_input_structure@PLT
	testl	%eax, %eax
	je	.L177
	movl	-212(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_set_selection@PLT
	testl	%eax, %eax
	je	.L177
	movq	16(%rbp), %rcx
	movq	-224(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_decoder_ctx_setup_for_pkey
	testl	%eax, %eax
	je	.L177
	movq	16(%rbp), %rdx
	movq	-224(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_add_extra@PLT
	testl	%eax, %eax
	je	.L177
	cmpq	$0, 16(%rbp)
	je	.L178
	leaq	-128(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_set_params@PLT
	testl	%eax, %eax
	je	.L177
.L178:
	movq	$0, -48(%rbp)
	nop
	leaq	.LC1(%rip), %rax
	movl	$817, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L180
	jmp	.L190
.L177:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$812, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524348, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	movl	$0, %eax
	jmp	.L189
.L190:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	movl	$0, %eax
	jmp	.L189
.L180:
	cmpq	$0, -192(%rbp)
	je	.L181
	leaq	.LC1(%rip), %rcx
	movq	-192(%rbp), %rax
	movl	$824, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L191
.L181:
	cmpq	$0, -200(%rbp)
	je	.L183
	leaq	.LC1(%rip), %rcx
	movq	-200(%rbp), %rax
	movl	$829, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L192
.L183:
	cmpq	$0, -208(%rbp)
	je	.L184
	leaq	.LC1(%rip), %rcx
	movq	-208(%rbp), %rax
	movl	$834, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L193
.L184:
	cmpq	$0, 16(%rbp)
	je	.L185
	leaq	.LC1(%rip), %rcx
	movq	16(%rbp), %rax
	movl	$839, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L194
.L185:
	movq	-24(%rbp), %rax
	movl	-212(%rbp), %edx
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L186
	movq	$0, -8(%rbp)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$848, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L182
.L186:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_DECODER_CACHE_ENTRY_retrieve
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L187
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_DECODER_CACHE_ENTRY_insert
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	lh_DECODER_CACHE_ENTRY_error
	testl	%eax, %eax
	je	.L188
	movq	$0, -8(%rbp)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$856, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L182
.L187:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	decoder_cache_entry_free
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L188
.L175:
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
.L188:
	movq	-200(%rbp), %rcx
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_decoder_ctx_for_pkey_dup
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-8(%rbp), %rax
	jmp	.L189
.L191:
	nop
	jmp	.L182
.L192:
	nop
	jmp	.L182
.L193:
	nop
	jmp	.L182
.L194:
	nop
.L182:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	decoder_cache_entry_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	movl	$0, %eax
.L189:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	OSSL_DECODER_CTX_new_for_pkey, .-OSSL_DECODER_CTX_new_for_pkey
	.section	.rodata
	.align 32
	.type	__func__.3, @object
	.size	__func__.3, 32
__func__.3:
	.string	"ossl_decoder_ctx_setup_for_pkey"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 30
__func__.2:
	.string	"ossl_decoder_ctx_for_pkey_dup"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 25
__func__.1:
	.string	"ossl_decoder_cache_flush"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 30
__func__.0:
	.string	"OSSL_DECODER_CTX_new_for_pkey"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

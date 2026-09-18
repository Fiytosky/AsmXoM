	.file	"quic_record_shared.c"
	.text
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB620:
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
.LFE620:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB621:
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
.LFE621:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB636:
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
.LFE636:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB637:
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
.LFE637:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB693:
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
.LFE693:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB694:
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
.LFE694:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
	.type	quic_v1_iv_label, @object
	.size	quic_v1_iv_label, 7
quic_v1_iv_label:
	.ascii	"quic iv"
	.align 8
	.type	quic_v1_key_label, @object
	.size	quic_v1_key_label, 8
quic_v1_key_label:
	.ascii	"quic key"
	.type	quic_v1_hp_label, @object
	.size	quic_v1_hp_label, 7
quic_v1_hp_label:
	.ascii	"quic hp"
	.type	quic_v1_ku_label, @object
	.size	quic_v1_ku_label, 7
quic_v1_ku_label:
	.ascii	"quic ku"
	.text
	.globl	ossl_qrl_enc_level_set_get
	.type	ossl_qrl_enc_level_set_get, @function
ossl_qrl_enc_level_set_get:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	cmpl	$3, -28(%rbp)
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movl	-28(%rbp), %eax
	imulq	$208, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -32(%rbp)
	je	.L16
	movq	-8(%rbp), %rax
	movzbl	104(%rax), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	cmpl	$2, %eax
	jbe	.L18
	movl	$0, %eax
	jmp	.L15
.L18:
	nop
.L16:
	movq	-8(%rbp), %rax
.L15:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	ossl_qrl_enc_level_set_get, .-ossl_qrl_enc_level_set_get
	.globl	ossl_qrl_enc_level_set_have_el
	.type	ossl_qrl_enc_level_set_have_el, @function
ossl_qrl_enc_level_set_have_el:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_qrl_enc_level_set_get@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	104(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L20
	testl	%eax, %eax
	js	.L21
	subl	$1, %eax
	cmpl	$2, %eax
	ja	.L21
	jmp	.L24
.L20:
	movl	$0, %eax
	jmp	.L23
.L24:
	movl	$1, %eax
	jmp	.L23
.L21:
	movl	$-1, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	ossl_qrl_enc_level_set_have_el, .-ossl_qrl_enc_level_set_have_el
	.globl	ossl_qrl_enc_level_set_has_keyslot
	.type	ossl_qrl_enc_level_set_has_keyslot, @function
ossl_qrl_enc_level_set_has_keyslot:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movb	%al, -32(%rbp)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_qrl_enc_level_set_get@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L26
	cmpq	$1, -40(%rbp)
	ja	.L26
	movl	$1, %eax
	jmp	.L27
.L26:
	movl	$0, %eax
.L27:
	cltq
	testq	%rax, %rax
	jne	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	movzbl	-32(%rbp), %eax
	cmpl	$2, %eax
	jg	.L30
	testl	%eax, %eax
	jg	.L31
	jmp	.L32
.L30:
	cmpl	$3, %eax
	je	.L33
	jmp	.L32
.L31:
	cmpl	$3, -28(%rbp)
	je	.L34
	cmpq	$0, -40(%rbp)
	jne	.L35
.L34:
	movl	$1, %eax
	jmp	.L29
.L35:
	movl	$0, %eax
	jmp	.L29
.L33:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	andl	$1, %eax
	cmpq	%rax, -40(%rbp)
	sete	%al
	movzbl	%al, %eax
	jmp	.L29
.L32:
	movl	$0, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	ossl_qrl_enc_level_set_has_keyslot, .-ossl_qrl_enc_level_set_has_keyslot
	.type	el_teardown_keyslot, @function
el_teardown_keyslot:
.LFB732:
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
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_qrl_enc_level_set_get@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	104(%rax), %eax
	movzbl	%al, %edx
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qrl_enc_level_set_has_keyslot@PLT
	testl	%eax, %eax
	je	.L41
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	addq	$6, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L40
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	addq	$6, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	addq	$6, %rdx
	movq	$0, (%rax,%rdx,8)
.L40:
	movq	-40(%rbp), %rax
	addq	$6, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$10, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	jmp	.L37
.L41:
	nop
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	el_teardown_keyslot, .-el_teardown_keyslot
	.section	.rodata
	.align 8
.LC0:
	.string	"../ssl/quic/quic_record_shared.c"
	.text
	.type	el_setup_keyslot, @function
el_setup_keyslot:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movl	%edx, %eax
	movq	%rcx, -136(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -152(%rbp)
	movb	%al, -128(%rbp)
	movl	-124(%rbp), %ecx
	movq	-120(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_qrl_enc_level_set_get@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L43
	movzbl	-128(%rbp), %edx
	movq	-136(%rbp), %rcx
	movl	-124(%rbp), %esi
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qrl_enc_level_set_has_keyslot@PLT
	testl	%eax, %eax
	je	.L43
	movl	$1, %eax
	jmp	.L44
.L43:
	movl	$0, %eax
.L44:
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L45
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$118, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L58
.L45:
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %edi
	call	ossl_qrl_get_suite_cipher_name@PLT
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %edi
	call	ossl_qrl_get_suite_cipher_iv_len@PLT
	movl	%eax, %eax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %edi
	call	ossl_qrl_get_suite_cipher_key_len@PLT
	movl	%eax, %eax
	movq	%rax, -32(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L47
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$126, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L58
.L47:
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %edi
	call	ossl_qrl_get_suite_secret_len@PLT
	movl	%eax, %eax
	cmpq	%rax, -152(%rbp)
	jne	.L48
	cmpq	$64, -152(%rbp)
	jbe	.L49
.L48:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$132, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L58
.L49:
	movq	-136(%rbp), %rax
	addq	$6, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	10(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	quic_v1_iv_label(%rip), %r8
	movq	-144(%rbp), %rcx
	subq	$8, %rsp
	pushq	$1
	pushq	-40(%rbp)
	pushq	%rdi
	pushq	$0
	pushq	$0
	movl	$7, %r9d
	movq	%rax, %rdi
	call	tls13_hkdf_expand_ex@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	je	.L59
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	quic_v1_key_label(%rip), %r8
	movq	-144(%rbp), %rcx
	subq	$8, %rsp
	pushq	$1
	pushq	-32(%rbp)
	leaq	-112(%rbp), %rdi
	pushq	%rdi
	pushq	$0
	pushq	$0
	movl	$8, %r9d
	movq	%rax, %rdi
	call	tls13_hkdf_expand_ex@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	je	.L60
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L53
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$160, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L53:
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L54
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$165, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L54:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	cltq
	cmpq	%rax, -40(%rbp)
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L55
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	cltq
	cmpq	%rax, -32(%rbp)
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L56
.L55:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$171, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L56:
	movq	-136(%rbp), %rax
	addq	$6, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	10(%rax), %rcx
	leaq	-112(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L57
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$177, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L57:
	movq	-24(%rbp), %rax
	movq	-136(%rbp), %rdx
	leaq	6(%rdx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax,%rcx,8)
	leaq	-112(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	$1, %eax
	jmp	.L58
.L59:
	nop
	jmp	.L51
.L60:
	nop
.L51:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-136(%rbp), %rax
	addq	$6, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$10, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-112(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$0, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	el_setup_keyslot, .-el_setup_keyslot
	.globl	ossl_qrl_enc_level_set_provide_secret
	.type	ossl_qrl_enc_level_set_provide_secret, @function
ossl_qrl_enc_level_set_provide_secret:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movl	%ecx, -204(%rbp)
	movl	%r8d, -208(%rbp)
	movq	%r9, -216(%rbp)
	movl	32(%rbp), %eax
	movb	%al, -220(%rbp)
	movl	-204(%rbp), %ecx
	movq	-184(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_qrl_enc_level_set_get@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	-208(%rbp), %eax
	movl	%eax, %edi
	call	ossl_qrl_get_suite_md_name@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L62
	cmpq	$0, -40(%rbp)
	je	.L62
	cmpb	$1, -220(%rbp)
	ja	.L62
	cmpl	$0, 40(%rbp)
	js	.L62
	cmpl	$1, 40(%rbp)
	jg	.L62
	cmpb	$0, -220(%rbp)
	je	.L63
	cmpl	$3, -204(%rbp)
	je	.L63
.L62:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$217, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L84
.L63:
	cmpl	$0, -204(%rbp)
	jne	.L65
	movq	-32(%rbp), %rax
	movzbl	104(%rax), %eax
	cmpb	$1, %al
	jne	.L65
	movl	-204(%rbp), %edx
	movq	-184(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_qrl_enc_level_set_discard@PLT
	movq	-32(%rbp), %rax
	movb	$0, 104(%rax)
.L65:
	movq	-32(%rbp), %rax
	movzbl	104(%rax), %eax
	testb	%al, %al
	je	.L66
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$234, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L84
.L66:
	cmpl	$0, 40(%rbp)
	jne	.L67
	movzbl	-220(%rbp), %eax
	movq	%rax, -24(%rbp)
	jmp	.L68
.L67:
	movq	$0, -24(%rbp)
.L68:
	movl	-208(%rbp), %eax
	movl	%eax, %edi
	call	ossl_qrl_get_suite_hdr_prot_key_len@PLT
	movl	%eax, %eax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L69
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$241, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L84
.L69:
	cmpq	$0, -216(%rbp)
	jne	.L70
	movq	-200(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-192(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.L71
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$248, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L84
.L71:
	movl	$1, -12(%rbp)
.L70:
	movq	-32(%rbp), %rax
	movq	-192(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-32(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-32(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, 96(%rax)
	movl	-208(%rbp), %eax
	movl	%eax, %edi
	call	ossl_qrl_get_suite_cipher_tag_len@PLT
	movq	-32(%rbp), %rdx
	movl	%eax, 100(%rdx)
	movq	-32(%rbp), %rax
	movq	$0, 88(%rax)
	movzbl	-220(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	%rdx, 80(%rax)
	movl	40(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, 105(%rax)
	leaq	quic_v1_hp_label(%rip), %r8
	movq	16(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-200(%rbp), %rsi
	movq	-192(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	pushq	-48(%rbp)
	leaq	-176(%rbp), %rdi
	pushq	%rdi
	pushq	$0
	pushq	$0
	movl	$7, %r9d
	movq	%rax, %rdi
	call	tls13_hkdf_expand_ex@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	je	.L85
	movq	24(%rbp), %rdi
	movq	16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-204(%rbp), %esi
	movq	-184(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	el_setup_keyslot
	testl	%eax, %eax
	je	.L86
	movl	$1, -4(%rbp)
	cmpl	$3, -204(%rbp)
	jne	.L75
	cmpl	$0, 40(%rbp)
	je	.L76
	movq	-32(%rbp), %rax
	addq	$138, %rax
	jmp	.L77
.L76:
	leaq	-112(%rbp), %rax
.L77:
	leaq	quic_v1_ku_label(%rip), %r8
	movq	16(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-200(%rbp), %rsi
	movq	-192(%rbp), %rdi
	subq	$8, %rsp
	pushq	$1
	pushq	24(%rbp)
	pushq	%rax
	pushq	$0
	pushq	$0
	movl	$7, %r9d
	call	tls13_hkdf_expand_ex@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	je	.L87
	cmpl	$0, 40(%rbp)
	jne	.L75
	cmpq	$0, -24(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	24(%rbp), %rdi
	leaq	-112(%rbp), %rcx
	movl	-204(%rbp), %esi
	movq	-184(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	el_setup_keyslot
	testl	%eax, %eax
	je	.L88
	movl	$1, -8(%rbp)
	movq	-32(%rbp), %rax
	leaq	138(%rax), %rdi
	leaq	quic_v1_ku_label(%rip), %r8
	leaq	-112(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-200(%rbp), %rsi
	movq	-192(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	pushq	24(%rbp)
	pushq	%rdi
	pushq	$0
	pushq	$0
	movl	$7, %r9d
	movq	%rax, %rdi
	call	tls13_hkdf_expand_ex@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	je	.L89
.L75:
	movl	-208(%rbp), %eax
	movl	%eax, %edi
	call	ossl_qrl_get_suite_hdr_prot_cipher_id@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %r8
	leaq	-176(%rbp), %rdi
	movq	-200(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_hdr_protector_init@PLT
	testl	%eax, %eax
	je	.L90
	leaq	-176(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-112(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-32(%rbp), %rax
	movb	$1, 104(%rax)
	movl	$1, %eax
	jmp	.L84
.L85:
	nop
	jmp	.L73
.L86:
	nop
	jmp	.L73
.L87:
	nop
	jmp	.L73
.L88:
	nop
	jmp	.L73
.L89:
	nop
	jmp	.L73
.L90:
	nop
.L73:
	movq	-32(%rbp), %rax
	movl	$0, 96(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 40(%rax)
	leaq	-176(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-112(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-32(%rbp), %rax
	addq	$138, %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	cmpl	$0, -4(%rbp)
	je	.L81
	movq	-24(%rbp), %rdx
	movl	-204(%rbp), %ecx
	movq	-184(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	el_teardown_keyslot
.L81:
	cmpl	$0, -8(%rbp)
	je	.L82
	cmpq	$0, -24(%rbp)
	sete	%al
	movzbl	%al, %edx
	movl	-204(%rbp), %ecx
	movq	-184(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	el_teardown_keyslot
.L82:
	cmpl	$0, -12(%rbp)
	je	.L83
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
.L83:
	movl	$0, %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	ossl_qrl_enc_level_set_provide_secret, .-ossl_qrl_enc_level_set_provide_secret
	.globl	ossl_qrl_enc_level_set_key_update
	.type	ossl_qrl_enc_level_set_key_update, @function
ossl_qrl_enc_level_set_key_update:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movl	-92(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_qrl_enc_level_set_get@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L92
	cmpl	$3, -92(%rbp)
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L93
.L92:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$353, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L99
.L93:
	movq	-8(%rbp), %rax
	movzbl	104(%rax), %eax
	cmpb	$1, %al
	je	.L95
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$358, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L99
.L95:
	movq	-8(%rbp), %rax
	movzbl	105(%rax), %eax
	testb	%al, %al
	jne	.L96
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-8(%rbp), %rax
	movb	$2, 104(%rax)
	movl	$1, %eax
	jmp	.L99
.L96:
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %edi
	call	ossl_qrl_get_suite_secret_len@PLT
	movl	%eax, %eax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	138(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	leaq	quic_v1_ku_label(%rip), %r8
	subq	$8, %rsp
	pushq	$1
	pushq	-16(%rbp)
	leaq	-80(%rbp), %rdi
	pushq	%rdi
	pushq	$0
	pushq	$0
	movl	$7, %r9d
	movq	%rax, %rdi
	call	tls13_hkdf_expand_ex@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	jne	.L97
	movl	$0, %eax
	jmp	.L99
.L97:
	movl	-92(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	el_teardown_keyslot
	movq	-8(%rbp), %rax
	leaq	138(%rax), %rcx
	movq	-16(%rbp), %rdx
	movl	-92(%rbp), %esi
	movq	-88(%rbp), %rax
	movq	%rdx, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	el_setup_keyslot
	testl	%eax, %eax
	jne	.L98
	movl	$0, %eax
	jmp	.L99
.L98:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-8(%rbp), %rax
	leaq	138(%rax), %rcx
	movq	-16(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	ossl_qrl_enc_level_set_key_update, .-ossl_qrl_enc_level_set_key_update
	.globl	ossl_qrl_enc_level_set_key_update_done
	.type	ossl_qrl_enc_level_set_key_update_done, @function
ossl_qrl_enc_level_set_key_update_done:
.LFB736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_qrl_enc_level_set_get@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L101
	cmpl	$3, -28(%rbp)
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L102
.L101:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$407, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L103
.L102:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	notq	%rax
	andl	$1, %eax
	movq	%rax, %rdx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	el_teardown_keyslot
	movq	-8(%rbp), %rax
	movb	$3, 104(%rax)
	movl	$1, %eax
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	ossl_qrl_enc_level_set_key_update_done, .-ossl_qrl_enc_level_set_key_update_done
	.globl	ossl_qrl_enc_level_set_key_cooldown_done
	.type	ossl_qrl_enc_level_set_key_cooldown_done, @function
ossl_qrl_enc_level_set_key_cooldown_done:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movl	-92(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_qrl_enc_level_set_get@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L105
	cmpl	$3, -92(%rbp)
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L106
.L105:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$429, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L112
.L106:
	movq	-8(%rbp), %rax
	movzbl	104(%rax), %eax
	cmpb	$2, %al
	jne	.L108
	movl	-92(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_qrl_enc_level_set_key_update_done@PLT
	testl	%eax, %eax
	jne	.L108
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$435, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L112
.L108:
	movq	-8(%rbp), %rax
	movzbl	104(%rax), %eax
	cmpb	$3, %al
	je	.L109
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$440, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L112
.L109:
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %edi
	call	ossl_qrl_get_suite_secret_len@PLT
	movl	%eax, %eax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	138(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	notq	%rax
	andl	$1, %eax
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movl	-92(%rbp), %esi
	movq	-88(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	el_setup_keyslot
	testl	%eax, %eax
	jne	.L110
	movl	$0, %eax
	jmp	.L112
.L110:
	movq	-8(%rbp), %rax
	leaq	138(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	leaq	quic_v1_ku_label(%rip), %r8
	subq	$8, %rsp
	pushq	$1
	pushq	-16(%rbp)
	leaq	-80(%rbp), %rdi
	pushq	%rdi
	pushq	$0
	pushq	$0
	movl	$7, %r9d
	movq	%rax, %rdi
	call	tls13_hkdf_expand_ex@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	jne	.L111
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	notq	%rax
	andl	$1, %eax
	movq	%rax, %rdx
	movl	-92(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	el_teardown_keyslot
	movl	$0, %eax
	jmp	.L112
.L111:
	movq	-8(%rbp), %rax
	leaq	138(%rax), %rcx
	movq	-16(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movb	$1, 104(%rax)
	movl	$1, %eax
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	ossl_qrl_enc_level_set_key_cooldown_done, .-ossl_qrl_enc_level_set_key_cooldown_done
	.globl	ossl_qrl_enc_level_set_discard
	.type	ossl_qrl_enc_level_set_discard, @function
ossl_qrl_enc_level_set_discard:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_qrl_enc_level_set_get@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L118
	movq	-8(%rbp), %rax
	movzbl	104(%rax), %eax
	cmpb	$4, %al
	je	.L118
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_qrl_enc_level_set_have_el@PLT
	cmpl	$1, %eax
	jne	.L117
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_hdr_protector_cleanup@PLT
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	el_teardown_keyslot
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	el_teardown_keyslot
.L117:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movb	$4, 104(%rax)
	jmp	.L113
.L118:
	nop
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	ossl_qrl_enc_level_set_discard, .-ossl_qrl_enc_level_set_discard
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 17
__func__.4:
	.string	"el_setup_keyslot"
	.align 32
	.type	__func__.3, @object
	.size	__func__.3, 38
__func__.3:
	.string	"ossl_qrl_enc_level_set_provide_secret"
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 34
__func__.2:
	.string	"ossl_qrl_enc_level_set_key_update"
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 39
__func__.1:
	.string	"ossl_qrl_enc_level_set_key_update_done"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 41
__func__.0:
	.string	"ossl_qrl_enc_level_set_key_cooldown_done"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

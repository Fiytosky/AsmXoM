	.file	"encoder_pkey.c"
	.text
	.type	ossl_check_OPENSSL_CSTRING_type, @function
ossl_check_OPENSSL_CSTRING_type:
.LFB12:
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
.LFE12:
	.size	ossl_check_OPENSSL_CSTRING_type, .-ossl_check_OPENSSL_CSTRING_type
	.type	ossl_check_const_OPENSSL_CSTRING_sk_type, @function
ossl_check_const_OPENSSL_CSTRING_sk_type:
.LFB13:
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
.LFE13:
	.size	ossl_check_const_OPENSSL_CSTRING_sk_type, .-ossl_check_const_OPENSSL_CSTRING_sk_type
	.type	ossl_check_OPENSSL_CSTRING_sk_type, @function
ossl_check_OPENSSL_CSTRING_sk_type:
.LFB14:
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
.LFE14:
	.size	ossl_check_OPENSSL_CSTRING_sk_type, .-ossl_check_OPENSSL_CSTRING_sk_type
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB499:
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
.LFE499:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB500:
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
.LFE500:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"cipher"
.LC1:
	.string	"properties"
	.text
	.globl	OSSL_ENCODER_CTX_set_cipher
	.type	OSSL_ENCODER_CTX_set_cipher, @function
OSSL_ENCODER_CTX_set_cipher:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	leaq	-128(%rbp), %rdx
	movl	$0, %eax
	movl	$15, %ecx
	movq	%rdx, %rdi
	rep stosq
	leaq	-208(%rbp), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC0(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-208(%rbp), %rax
	movq	-152(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-128(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	OSSL_ENCODER_CTX_set_cipher, .-OSSL_ENCODER_CTX_set_cipher
	.globl	OSSL_ENCODER_CTX_set_passphrase
	.type	OSSL_ENCODER_CTX_set_passphrase, @function
OSSL_ENCODER_CTX_set_passphrase:
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
	call	ossl_pw_set_passphrase@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	OSSL_ENCODER_CTX_set_passphrase, .-OSSL_ENCODER_CTX_set_passphrase
	.globl	OSSL_ENCODER_CTX_set_passphrase_ui
	.type	OSSL_ENCODER_CTX_set_passphrase_ui, @function
OSSL_ENCODER_CTX_set_passphrase_ui:
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
	call	ossl_pw_set_ui_method@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	OSSL_ENCODER_CTX_set_passphrase_ui, .-OSSL_ENCODER_CTX_set_passphrase_ui
	.globl	OSSL_ENCODER_CTX_set_pem_password_cb
	.type	OSSL_ENCODER_CTX_set_pem_password_cb, @function
OSSL_ENCODER_CTX_set_pem_password_cb:
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
	call	ossl_pw_set_pem_password_cb@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	OSSL_ENCODER_CTX_set_pem_password_cb, .-OSSL_ENCODER_CTX_set_pem_password_cb
	.globl	OSSL_ENCODER_CTX_set_passphrase_cb
	.type	OSSL_ENCODER_CTX_set_passphrase_cb, @function
OSSL_ENCODER_CTX_set_passphrase_cb:
.LFB649:
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
.LFE649:
	.size	OSSL_ENCODER_CTX_set_passphrase_cb, .-OSSL_ENCODER_CTX_set_passphrase_cb
	.type	collect_encoder, @function
collect_encoder:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	52(%rax), %eax
	testl	%eax, %eax
	jne	.L33
	movq	-16(%rbp), %rax
	movl	$1, 52(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_get0_provider@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -24(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	48(%rax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	jne	.L24
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_provider_ctx@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -36(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L25
.L32:
	movq	-16(%rbp), %rax
	movzbl	48(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L26
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	jmp	.L27
.L26:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_is_a@PLT
	movl	%eax, -8(%rbp)
.L27:
	cmpl	$0, -8(%rbp)
	je	.L34
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L29
	movq	-56(%rbp), %rax
	movq	96(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	je	.L34
.L29:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -24(%rbp)
	je	.L30
	movq	-56(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L34
.L30:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_add_encoder@PLT
	testl	%eax, %eax
	jne	.L35
	jmp	.L31
.L34:
	nop
.L31:
	addl	$1, -4(%rbp)
.L25:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L32
	jmp	.L24
.L35:
	nop
.L24:
	movq	-16(%rbp), %rax
	movl	$0, 52(%rax)
	jmp	.L21
.L33:
	nop
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	collect_encoder, .-collect_encoder
	.type	collect_name, @function
collect_name:
.LFB651:
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
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L40
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %edx
	orl	$1, %edx
	movb	%dl, 8(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jle	.L41
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 8(%rax)
	jmp	.L36
.L40:
	nop
	jmp	.L36
.L41:
	nop
.L36:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	collect_name, .-collect_name
	.type	encoder_import_cb, @function
encoder_import_cb:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_INSTANCE_get_encoder@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_INSTANCE_get_encoder_ctx@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	112(%rax), %r8
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	encoder_import_cb, .-encoder_import_cb
	.type	encoder_construct_pkey, @function
encoder_construct_pkey:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L45
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_INSTANCE_get_encoder@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_provider@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_get0_provider@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L46
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L47
	orl	$2, -4(%rbp)
.L47:
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	104(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	movq	-16(%rbp), %rdi
	leaq	encoder_import_cb(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	evp_keymgmt_export@PLT
	testl	%eax, %eax
	jne	.L48
	movl	$0, %eax
	jmp	.L49
.L48:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	jmp	.L45
.L46:
	movq	-32(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
.L45:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	encoder_construct_pkey, .-encoder_construct_pkey
	.type	encoder_destruct_pkey, @function
encoder_destruct_pkey:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L51
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_INSTANCE_get_encoder@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L51:
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	cmpl	$0, -12(%rbp)
	je	.L53
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
.L53:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	encoder_destruct_pkey, .-encoder_destruct_pkey
	.section	.rodata
	.align 8
.LC2:
	.string	"../crypto/encode_decode/encoder_pkey.c"
	.text
	.type	ossl_encoder_ctx_setup_for_pkey, @function
ossl_encoder_ctx_setup_for_pkey:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movl	%edx, -180(%rbp)
	movq	%rcx, -192(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	cmpq	$0, -168(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L55
	cmpq	$0, -176(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L56
.L55:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$244, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$59, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L57
.L56:
	movq	-176(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L58
	movq	-176(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_provider@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_libctx@PLT
	movq	%rax, -40(%rbp)
.L58:
	movq	-176(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L59
	leaq	.LC2(%rip), %rax
	movl	$257, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L74
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	jne	.L62
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$266, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$59, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L69
.L62:
	movzbl	-88(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -88(%rbp)
	movq	-176(%rbp), %rax
	movq	96(%rax), %rax
	leaq	-96(%rbp), %rdx
	leaq	collect_name(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_names_do_all@PLT
	movzbl	-88(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L63
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	jmp	.L69
.L63:
	movq	-96(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -144(%rbp)
	movl	$0, -108(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	$0, -152(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_namemap_stored@PLT
	movq	%rax, -56(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jle	.L64
	movl	-60(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	.LC2(%rip), %rcx
	movl	$293, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	testq	%rax, %rax
	jne	.L65
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	jmp	.L69
.L65:
	movl	$0, -48(%rbp)
	jmp	.L66
.L67:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -72(%rbp)
	movq	-152(%rbp), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_namemap_name2num@PLT
	movl	%eax, (%rbx)
	addl	$1, -48(%rbp)
.L66:
	movl	-48(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L67
.L64:
	movzbl	-112(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -112(%rbp)
	leaq	-160(%rbp), %rdx
	leaq	collect_encoder(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_do_all_provided@PLT
	movzbl	-112(%rbp), %eax
	orl	$1, %eax
	movb	%al, -112(%rbp)
	leaq	-160(%rbp), %rdx
	leaq	collect_encoder(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_do_all_provided@PLT
	movq	-152(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$318, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	-108(%rbp), %eax
	testl	%eax, %eax
	je	.L59
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$321, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$59, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L69
.L59:
	cmpq	$0, -24(%rbp)
	je	.L70
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_get_num_encoders@PLT
	testl	%eax, %eax
	je	.L70
	leaq	encoder_construct_pkey(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_construct@PLT
	testl	%eax, %eax
	je	.L75
	movq	-24(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_construct_data@PLT
	testl	%eax, %eax
	je	.L75
	leaq	encoder_destruct_pkey(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_cleanup@PLT
	testl	%eax, %eax
	je	.L75
	movq	-24(%rbp), %rax
	movq	-176(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	-180(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	$0, -24(%rbp)
.L70:
	movl	$1, -44(%rbp)
	jmp	.L69
.L74:
	nop
	jmp	.L69
.L75:
	nop
.L69:
	cmpq	$0, -24(%rbp)
	je	.L73
	movq	-168(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_construct_data@PLT
	leaq	.LC2(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$342, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L73:
	movl	-44(%rbp), %eax
.L57:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	ossl_encoder_ctx_setup_for_pkey, .-ossl_encoder_ctx_setup_for_pkey
	.section	.rodata
	.align 8
.LC3:
	.string	"The passed EVP_PKEY must be assigned a key"
.LC4:
	.string	"save-parameters"
	.text
	.globl	OSSL_ENCODER_CTX_new_for_pkey
	.type	OSSL_ENCODER_CTX_new_for_pkey, @function
OSSL_ENCODER_CTX_new_for_pkey:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -136(%rbp)
	movl	%esi, -140(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.L77
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$357, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$59, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L78
.L77:
	movq	-136(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L79
	movq	-136(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L79
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$362, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdx
	movl	$524550, %esi
	movl	$59, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L78
.L79:
	call	OSSL_ENCODER_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L80
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$368, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524347, %esi
	movl	$59, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L78
.L80:
	movq	-136(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L81
	movq	-136(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_provider@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_libctx@PLT
	movq	%rax, -8(%rbp)
.L81:
	movq	$0, -32(%rbp)
	movq	-152(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_output_type@PLT
	testl	%eax, %eax
	je	.L82
	cmpq	$0, -160(%rbp)
	je	.L83
	movq	-160(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_output_structure@PLT
	testl	%eax, %eax
	je	.L82
.L83:
	movl	-140(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_selection@PLT
	testl	%eax, %eax
	je	.L82
	movq	-168(%rbp), %rcx
	movl	-140(%rbp), %edx
	movq	-136(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_encoder_ctx_setup_for_pkey
	testl	%eax, %eax
	je	.L82
	movq	-168(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_add_extra@PLT
	testl	%eax, %eax
	je	.L82
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movq	-136(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, -44(%rbp)
	leaq	-224(%rbp), %rax
	leaq	-44(%rbp), %rdx
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-128(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_params@PLT
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	jmp	.L78
.L82:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movl	$0, %eax
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	OSSL_ENCODER_CTX_new_for_pkey, .-OSSL_ENCODER_CTX_new_for_pkey
	.section	.rodata
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 32
__func__.1:
	.string	"ossl_encoder_ctx_setup_for_pkey"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 30
__func__.0:
	.string	"OSSL_ENCODER_CTX_new_for_pkey"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"quic_record_util.c"
	.text
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB635:
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
.LFE635:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB636:
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
.LFE636:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB651:
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
.LFE651:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB652:
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
.LFE652:
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
.LC0:
	.string	"HKDF"
.LC1:
	.string	"mode"
.LC2:
	.string	"digest"
.LC3:
	.string	"salt"
.LC4:
	.string	"key"
	.text
	.globl	ossl_quic_hkdf_extract
	.type	ossl_quic_hkdf_extract, @function
ossl_quic_hkdf_extract:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$440, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -360(%rbp)
	movq	%rsi, -368(%rbp)
	movq	%rdx, -376(%rbp)
	movq	%rcx, -384(%rbp)
	movq	%r8, -392(%rbp)
	movq	%r9, -400(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	leaq	-336(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$1, -340(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L18
	movq	-368(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	-360(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_fetch@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L18
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L18
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-448(%rbp), %rax
	leaq	-340(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-448(%rbp), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-448(%rbp), %rax
	movq	-392(%rbp), %rcx
	movq	-384(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-448(%rbp), %rax
	movq	16(%rbp), %rcx
	movq	-400(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-336(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, -20(%rbp)
	jmp	.L16
.L18:
	nop
.L16:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	ossl_quic_hkdf_extract, .-ossl_quic_hkdf_extract
	.section	.rodata
	.align 8
	.type	quic_client_in_label, @object
	.size	quic_client_in_label, 9
quic_client_in_label:
	.ascii	"client in"
	.align 8
	.type	quic_server_in_label, @object
	.size	quic_server_in_label, 9
quic_server_in_label:
	.ascii	"server in"
	.align 16
	.type	quic_v1_initial_salt, @object
	.size	quic_v1_initial_salt, 20
quic_v1_initial_salt:
	.base64	"OHYs9/VZNLNNF5rmpMgMrcy7fwo="
.LC5:
	.string	"SHA256"
	.text
	.globl	ossl_quic_provide_initial_secret
	.type	ossl_quic_provide_initial_secret, @function
ossl_quic_provide_initial_secret:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movl	%ecx, -156(%rbp)
	movq	%r8, -168(%rbp)
	movq	%r9, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.L20
	cmpq	$0, -176(%rbp)
	jne	.L20
	movl	$1, %eax
	jmp	.L36
.L20:
	movq	-144(%rbp), %rdx
	leaq	.LC5(%rip), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L22
	movl	$0, %eax
	jmp	.L36
.L22:
	cmpl	$0, -156(%rbp)
	je	.L23
	leaq	-96(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L24
.L23:
	leaq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -16(%rbp)
.L24:
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edi
	movq	-152(%rbp), %rax
	leaq	1(%rax), %r9
	leaq	quic_v1_initial_salt(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-144(%rbp), %rsi
	movq	-136(%rbp), %rax
	subq	$8, %rsp
	pushq	$32
	leaq	-64(%rbp), %r8
	pushq	%r8
	pushq	%rdi
	movl	$20, %r8d
	movq	%rax, %rdi
	call	ossl_quic_hkdf_extract@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L37
	cmpq	$0, -176(%rbp)
	je	.L27
	leaq	-96(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	je	.L28
.L27:
	cmpq	$0, -168(%rbp)
	je	.L29
	leaq	-96(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L29
.L28:
	leaq	quic_client_in_label(%rip), %r8
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-144(%rbp), %rsi
	movq	-136(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	pushq	$32
	leaq	-96(%rbp), %rdi
	pushq	%rdi
	pushq	$0
	pushq	$0
	movl	$9, %r9d
	movq	%rax, %rdi
	call	tls13_hkdf_expand_ex@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	je	.L38
.L29:
	cmpq	$0, -176(%rbp)
	je	.L30
	leaq	-128(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	je	.L31
.L30:
	cmpq	$0, -168(%rbp)
	je	.L32
	leaq	-128(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L32
.L31:
	leaq	quic_server_in_label(%rip), %r8
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-144(%rbp), %rsi
	movq	-136(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	pushq	$32
	leaq	-128(%rbp), %rdi
	pushq	%rdi
	pushq	$0
	pushq	$0
	movl	$9, %r9d
	movq	%rax, %rdi
	call	tls13_hkdf_expand_ex@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	je	.L39
.L32:
	cmpq	$0, -168(%rbp)
	je	.L33
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-168(%rbp), %rax
	movl	$32, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_qrx_provide_secret@PLT
	testl	%eax, %eax
	je	.L40
.L33:
	cmpq	$0, -168(%rbp)
	je	.L34
	cmpq	$0, -176(%rbp)
	je	.L34
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_up_ref@PLT
	testl	%eax, %eax
	jne	.L34
	movq	$0, -24(%rbp)
	jmp	.L26
.L34:
	cmpq	$0, -176(%rbp)
	je	.L35
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-176(%rbp), %rax
	movl	$32, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_qtx_provide_secret@PLT
	testl	%eax, %eax
	je	.L41
.L35:
	movl	$1, %eax
	jmp	.L36
.L37:
	nop
	jmp	.L26
.L38:
	nop
	jmp	.L26
.L39:
	nop
	jmp	.L26
.L40:
	nop
	jmp	.L26
.L41:
	nop
.L26:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$0, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	ossl_quic_provide_initial_secret, .-ossl_quic_provide_initial_secret
	.section	.rodata
.LC6:
	.string	"AES-128-GCM"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	suite_aes128gcm, @object
	.size	suite_aes128gcm, 56
suite_aes128gcm:
	.quad	.LC6
	.quad	.LC5
	.long	32
	.long	16
	.long	12
	.long	16
	.long	16
	.long	1
	.quad	8388608
	.quad	4503599627370496
	.section	.rodata
.LC7:
	.string	"AES-256-GCM"
.LC8:
	.string	"SHA384"
	.section	.data.rel.ro.local
	.align 32
	.type	suite_aes256gcm, @object
	.size	suite_aes256gcm, 56
suite_aes256gcm:
	.quad	.LC7
	.quad	.LC8
	.long	48
	.long	32
	.long	12
	.long	16
	.long	32
	.long	2
	.quad	8388608
	.quad	4503599627370496
	.section	.rodata
.LC9:
	.string	"ChaCha20-Poly1305"
	.section	.data.rel.ro.local
	.align 32
	.type	suite_chacha20poly1305, @object
	.size	suite_chacha20poly1305, 56
suite_chacha20poly1305:
	.quad	.LC9
	.quad	.LC5
	.long	32
	.long	32
	.long	12
	.long	16
	.long	32
	.long	3
	.quad	-2
	.quad	68719476736
	.text
	.type	get_suite, @function
get_suite:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$3, -4(%rbp)
	je	.L43
	cmpl	$3, -4(%rbp)
	ja	.L44
	cmpl	$1, -4(%rbp)
	je	.L45
	cmpl	$2, -4(%rbp)
	je	.L46
	jmp	.L44
.L45:
	leaq	suite_aes128gcm(%rip), %rax
	jmp	.L47
.L46:
	leaq	suite_aes256gcm(%rip), %rax
	jmp	.L47
.L43:
	leaq	suite_chacha20poly1305(%rip), %rax
	jmp	.L47
.L44:
	movl	$0, %eax
.L47:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	get_suite, .-get_suite
	.globl	ossl_qrl_get_suite_cipher_name
	.type	ossl_qrl_get_suite_cipher_name, @function
ossl_qrl_get_suite_cipher_name:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	get_suite
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L49
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L51
.L49:
	movl	$0, %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	ossl_qrl_get_suite_cipher_name, .-ossl_qrl_get_suite_cipher_name
	.globl	ossl_qrl_get_suite_md_name
	.type	ossl_qrl_get_suite_md_name, @function
ossl_qrl_get_suite_md_name:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	get_suite
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L53
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L55
.L53:
	movl	$0, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	ossl_qrl_get_suite_md_name, .-ossl_qrl_get_suite_md_name
	.globl	ossl_qrl_get_suite_secret_len
	.type	ossl_qrl_get_suite_secret_len, @function
ossl_qrl_get_suite_secret_len:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	get_suite
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L57
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	jmp	.L59
.L57:
	movl	$0, %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	ossl_qrl_get_suite_secret_len, .-ossl_qrl_get_suite_secret_len
	.globl	ossl_qrl_get_suite_cipher_key_len
	.type	ossl_qrl_get_suite_cipher_key_len, @function
ossl_qrl_get_suite_cipher_key_len:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	get_suite
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L61
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	jmp	.L63
.L61:
	movl	$0, %eax
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	ossl_qrl_get_suite_cipher_key_len, .-ossl_qrl_get_suite_cipher_key_len
	.globl	ossl_qrl_get_suite_cipher_iv_len
	.type	ossl_qrl_get_suite_cipher_iv_len, @function
ossl_qrl_get_suite_cipher_iv_len:
.LFB736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	get_suite
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L65
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	jmp	.L67
.L65:
	movl	$0, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	ossl_qrl_get_suite_cipher_iv_len, .-ossl_qrl_get_suite_cipher_iv_len
	.globl	ossl_qrl_get_suite_cipher_tag_len
	.type	ossl_qrl_get_suite_cipher_tag_len, @function
ossl_qrl_get_suite_cipher_tag_len:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	get_suite
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L69
	movq	-8(%rbp), %rax
	movl	28(%rax), %eax
	jmp	.L71
.L69:
	movl	$0, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	ossl_qrl_get_suite_cipher_tag_len, .-ossl_qrl_get_suite_cipher_tag_len
	.globl	ossl_qrl_get_suite_hdr_prot_cipher_id
	.type	ossl_qrl_get_suite_hdr_prot_cipher_id, @function
ossl_qrl_get_suite_hdr_prot_cipher_id:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	get_suite
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L73
	movq	-8(%rbp), %rax
	movl	36(%rax), %eax
	jmp	.L75
.L73:
	movl	$0, %eax
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	ossl_qrl_get_suite_hdr_prot_cipher_id, .-ossl_qrl_get_suite_hdr_prot_cipher_id
	.globl	ossl_qrl_get_suite_hdr_prot_key_len
	.type	ossl_qrl_get_suite_hdr_prot_key_len, @function
ossl_qrl_get_suite_hdr_prot_key_len:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	get_suite
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L77
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	jmp	.L79
.L77:
	movl	$0, %eax
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	ossl_qrl_get_suite_hdr_prot_key_len, .-ossl_qrl_get_suite_hdr_prot_key_len
	.globl	ossl_qrl_get_suite_max_pkt
	.type	ossl_qrl_get_suite_max_pkt, @function
ossl_qrl_get_suite_max_pkt:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	get_suite
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L81
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	jmp	.L83
.L81:
	movq	$-1, %rax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	ossl_qrl_get_suite_max_pkt, .-ossl_qrl_get_suite_max_pkt
	.globl	ossl_qrl_get_suite_max_forged_pkt
	.type	ossl_qrl_get_suite_max_forged_pkt, @function
ossl_qrl_get_suite_max_forged_pkt:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	get_suite
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L85
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	jmp	.L87
.L85:
	movq	$-1, %rax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	ossl_qrl_get_suite_max_forged_pkt, .-ossl_qrl_get_suite_max_forged_pkt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

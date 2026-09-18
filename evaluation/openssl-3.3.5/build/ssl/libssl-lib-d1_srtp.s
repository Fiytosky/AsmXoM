	.file	"d1_srtp.c"
	.text
	.type	ossl_check_SRTP_PROTECTION_PROFILE_type, @function
ossl_check_SRTP_PROTECTION_PROFILE_type:
.LFB480:
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
.LFE480:
	.size	ossl_check_SRTP_PROTECTION_PROFILE_type, .-ossl_check_SRTP_PROTECTION_PROFILE_type
	.type	ossl_check_SRTP_PROTECTION_PROFILE_sk_type, @function
ossl_check_SRTP_PROTECTION_PROFILE_sk_type:
.LFB482:
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
.LFE482:
	.size	ossl_check_SRTP_PROTECTION_PROFILE_sk_type, .-ossl_check_SRTP_PROTECTION_PROFILE_sk_type
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB600:
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
.LFE600:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB601:
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
.LFE601:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB616:
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
.LFE616:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB617:
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
.LFE617:
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
	.string	"SRTP_AES128_CM_SHA1_80"
.LC1:
	.string	"SRTP_AES128_CM_SHA1_32"
.LC2:
	.string	"SRTP_AEAD_AES_128_GCM"
.LC3:
	.string	"SRTP_AEAD_AES_256_GCM"
	.align 8
.LC4:
	.string	"SRTP_DOUBLE_AEAD_AES_128_GCM_AEAD_AES_128_GCM"
	.align 8
.LC5:
	.string	"SRTP_DOUBLE_AEAD_AES_256_GCM_AEAD_AES_256_GCM"
	.align 8
.LC6:
	.string	"SRTP_ARIA_128_CTR_HMAC_SHA1_80"
	.align 8
.LC7:
	.string	"SRTP_ARIA_128_CTR_HMAC_SHA1_32"
	.align 8
.LC8:
	.string	"SRTP_ARIA_256_CTR_HMAC_SHA1_80"
	.align 8
.LC9:
	.string	"SRTP_ARIA_256_CTR_HMAC_SHA1_32"
.LC10:
	.string	"SRTP_AEAD_ARIA_128_GCM"
.LC11:
	.string	"SRTP_AEAD_ARIA_256_GCM"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	srtp_known_profiles, @object
	.size	srtp_known_profiles, 208
srtp_known_profiles:
	.quad	.LC0
	.quad	1
	.quad	.LC1
	.quad	2
	.quad	.LC2
	.quad	7
	.quad	.LC3
	.quad	8
	.quad	.LC4
	.quad	9
	.quad	.LC5
	.quad	10
	.quad	.LC6
	.quad	11
	.quad	.LC7
	.quad	12
	.quad	.LC8
	.quad	13
	.quad	.LC9
	.quad	14
	.quad	.LC10
	.quad	15
	.quad	.LC11
	.quad	16
	.quad	0
	.zero	8
	.text
	.type	find_profile_by_name, @function
find_profile_by_name:
.LFB729:
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
	leaq	srtp_known_profiles(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L18
.L21:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, -40(%rbp)
	jne	.L19
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L19
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, %eax
	jmp	.L20
.L19:
	addq	$16, -8(%rbp)
.L18:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L21
	movl	$1, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	find_profile_by_name, .-find_profile_by_name
	.section	.rodata
.LC12:
	.string	"../ssl/d1_srtp.c"
	.text
	.type	ssl_ctx_make_profiles, @function
ssl_ctx_make_profiles:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L23
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$362, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$1, %eax
	jmp	.L32
.L23:
	movq	-24(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L25
	movq	-40(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	jmp	.L26
.L25:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
.L26:
	leaq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_profile_by_name
	testl	%eax, %eax
	jne	.L27
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SRTP_PROTECTION_PROFILE_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SRTP_PROTECTION_PROFILE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_find@PLT
	testl	%eax, %eax
	js	.L28
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$115, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$353, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L29
.L28:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SRTP_PROTECTION_PROFILE_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SRTP_PROTECTION_PROFILE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L30
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$121, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$362, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L29
.L27:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$125, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$364, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L29
.L30:
	cmpq	$0, -40(%rbp)
	je	.L31
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.L31:
	cmpq	$0, -40(%rbp)
	jne	.L23
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_SRTP_PROTECTION_PROFILE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, %eax
	jmp	.L32
.L29:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SRTP_PROTECTION_PROFILE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$1, %eax
.L32:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	ssl_ctx_make_profiles, .-ssl_ctx_make_profiles
	.globl	SSL_CTX_set_tlsext_use_srtp
	.type	SSL_CTX_set_tlsext_use_srtp, @function
SSL_CTX_set_tlsext_use_srtp:
.LFB731:
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
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_QUIC_client_method@PLT
	cmpq	%rax, %rbx
	je	.L34
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_QUIC_client_thread_method@PLT
	cmpq	%rax, %rbx
	jne	.L35
.L34:
	movl	$1, %eax
	jmp	.L36
.L35:
	movq	-24(%rbp), %rax
	leaq	960(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_ctx_make_profiles
.L36:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	SSL_CTX_set_tlsext_use_srtp, .-SSL_CTX_set_tlsext_use_srtp
	.globl	SSL_set_tlsext_use_srtp
	.type	SSL_set_tlsext_use_srtp, @function
SSL_set_tlsext_use_srtp:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L38
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L39
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L40
.L39:
	movq	$0, -8(%rbp)
	jmp	.L40
.L38:
	movq	$0, -8(%rbp)
.L40:
	cmpq	$0, -8(%rbp)
	jne	.L41
	movl	$1, %eax
	jmp	.L42
.L41:
	movq	-8(%rbp), %rax
	leaq	2808(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_ctx_make_profiles
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	SSL_set_tlsext_use_srtp, .-SSL_set_tlsext_use_srtp
	.globl	SSL_get_srtp_profiles
	.type	SSL_get_srtp_profiles, @function
SSL_get_srtp_profiles:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L44
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L45
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L46
.L45:
	movq	$0, -8(%rbp)
	jmp	.L46
.L44:
	movq	$0, -8(%rbp)
.L46:
	cmpq	$0, -8(%rbp)
	je	.L47
	movq	-8(%rbp), %rax
	movq	2808(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-8(%rbp), %rax
	movq	2808(%rax), %rax
	jmp	.L49
.L48:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L47
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	960(%rax), %rax
	testq	%rax, %rax
	je	.L47
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	960(%rax), %rax
	jmp	.L49
.L47:
	movl	$0, %eax
.L49:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	SSL_get_srtp_profiles, .-SSL_get_srtp_profiles
	.globl	SSL_get_selected_srtp_profile
	.type	SSL_get_selected_srtp_profile, @function
SSL_get_selected_srtp_profile:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L51
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L52
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L53
.L52:
	movq	$0, -8(%rbp)
	jmp	.L53
.L51:
	movq	$0, -8(%rbp)
.L53:
	cmpq	$0, -8(%rbp)
	jne	.L54
	movl	$0, %eax
	jmp	.L55
.L54:
	movq	-8(%rbp), %rax
	movq	2816(%rax), %rax
.L55:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	SSL_get_selected_srtp_profile, .-SSL_get_selected_srtp_profile
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 22
__func__.0:
	.string	"ssl_ctx_make_profiles"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

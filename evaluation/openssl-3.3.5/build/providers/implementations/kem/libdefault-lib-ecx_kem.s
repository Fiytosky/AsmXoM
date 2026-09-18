	.file	"ecx_kem.c"
	.text
	.section	.rodata
	.type	LABEL_KEM, @object
	.size	LABEL_KEM, 4
LABEL_KEM:
	.string	"KEM"
.LC0:
	.string	"X25519"
.LC1:
	.string	"X448"
	.text
	.type	get_kem_info, @function
get_kem_info:
.LFB363:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	jne	.L2
	leaq	.LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L3
.L2:
	leaq	.LC1(%rip), %rax
	movq	%rax, -8(%rbp)
.L3:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_HPKE_KEM_INFO_find_curve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	get_kem_info, .-get_kem_info
	.section	.rodata
.LC2:
	.string	"HKDF"
	.text
	.type	recipient_key_set, @function
recipient_key_set:
.LFB364:
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
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -16(%rbp)
	je	.L6
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	get_kem_info
	movq	-8(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L7
	movl	$-2, %eax
	jmp	.L8
.L7:
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, 56(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_up_ref@PLT
	testl	%eax, %eax
	jne	.L9
	movl	$0, %eax
	jmp	.L8
.L9:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L6:
	movl	$1, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	recipient_key_set, .-recipient_key_set
	.type	sender_authkey_set, @function
sender_authkey_set:
.LFB365:
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
	call	ossl_ecx_key_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	cmpq	$0, -16(%rbp)
	je	.L11
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_up_ref@PLT
	testl	%eax, %eax
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L11:
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	sender_authkey_set, .-sender_authkey_set
	.section	.rodata
.LC3:
	.string	"pub"
	.text
	.type	ecxkey_pubfromdata, @function
ecxkey_pubfromdata:
.LFB366:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	$0, -24(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-192(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	-128(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movl	96(%rax), %esi
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ossl_ecx_key_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L15
	movl	$0, %eax
	jmp	.L18
.L15:
	leaq	-112(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ecx_key_fromdata@PLT
	testl	%eax, %eax
	jg	.L17
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_free@PLT
	movq	$0, -24(%rbp)
.L17:
	movq	-24(%rbp), %rax
.L18:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	ecxkey_pubfromdata, .-ecxkey_pubfromdata
	.section	.rodata
	.align 8
.LC4:
	.string	"../providers/implementations/kem/ecx_kem.c"
	.text
	.type	ecx_pubkey, @function
ecx_pubkey:
.LFB367:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L20
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L21
.L20:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$152, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$220, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L22
.L21:
	movq	-8(%rbp), %rax
	addq	$17, %rax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	ecx_pubkey, .-ecx_pubkey
	.type	ecxkem_newctx, @function
ecxkem_newctx:
.LFB368:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC4(%rip), %rax
	movl	$160, %edx
	movq	%rax, %rsi
	movl	$72, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	ecxkem_newctx, .-ecxkem_newctx
	.type	ecxkem_freectx, @function
ecxkem_freectx:
.LFB369:
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
	leaq	.LC4(%rip), %rdx
	movl	$173, %ecx
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
	leaq	.LC4(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$176, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	ecxkem_freectx, .-ecxkem_freectx
	.type	ecx_match_params, @function
ecx_match_params:
.LFB370:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	96(%rax), %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	%eax, %edx
	jne	.L28
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L28
	movl	$1, %eax
	jmp	.L30
.L28:
	movl	$0, %eax
.L30:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	ecx_match_params, .-ecx_match_params
	.type	ecx_key_check, @function
ecx_key_check:
.LFB371:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L32
	cmpl	$0, -12(%rbp)
	sete	%al
	movzbl	%al, %eax
	jmp	.L33
.L32:
	movl	$1, %eax
.L33:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	ecx_key_check, .-ecx_key_check
	.type	ecxkem_init, @function
ecxkem_init:
.LFB372:
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
	jne	.L35
	movl	$0, %eax
	jmp	.L36
.L35:
	cmpl	$8192, -44(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ecx_key_check
	testl	%eax, %eax
	jne	.L37
	movl	$0, %eax
	jmp	.L36
.L37:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	recipient_key_set
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L38
	movl	-28(%rbp), %eax
	jmp	.L36
.L38:
	cmpq	$0, -24(%rbp)
	je	.L39
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecx_match_params
	testl	%eax, %eax
	je	.L40
	cmpl	$4096, -44(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ecx_key_check
	testl	%eax, %eax
	je	.L40
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sender_authkey_set
	testl	%eax, %eax
	jne	.L39
.L40:
	movl	$0, %eax
	jmp	.L36
.L39:
	movl	-44(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecxkem_set_ctx_params
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE372:
	.size	ecxkem_init, .-ecxkem_init
	.type	ecxkem_encapsulate_init, @function
ecxkem_encapsulate_init:
.LFB373:
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
	call	ecxkem_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE373:
	.size	ecxkem_encapsulate_init, .-ecxkem_encapsulate_init
	.type	ecxkem_decapsulate_init, @function
ecxkem_decapsulate_init:
.LFB374:
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
	call	ecxkem_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE374:
	.size	ecxkem_decapsulate_init, .-ecxkem_decapsulate_init
	.type	ecxkem_auth_encapsulate_init, @function
ecxkem_auth_encapsulate_init:
.LFB375:
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
	call	ecxkem_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE375:
	.size	ecxkem_auth_encapsulate_init, .-ecxkem_auth_encapsulate_init
	.type	ecxkem_auth_decapsulate_init, @function
ecxkem_auth_decapsulate_init:
.LFB376:
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
	call	ecxkem_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE376:
	.size	ecxkem_auth_decapsulate_init, .-ecxkem_auth_decapsulate_init
	.section	.rodata
.LC5:
	.string	"ikme"
.LC6:
	.string	"operation"
	.text
	.type	ecxkem_set_ctx_params, @function
ecxkem_set_ctx_params:
.LFB377:
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
	cmpq	$0, -8(%rbp)
	jne	.L50
	movl	$0, %eax
	jmp	.L51
.L50:
	cmpq	$0, -64(%rbp)
	jne	.L52
	movl	$1, %eax
	jmp	.L51
.L52:
	leaq	.LC5(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L53
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L54
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L54
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L54
	movl	$0, %eax
	jmp	.L51
.L54:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movl	$263, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
.L53:
	leaq	.LC6(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L55
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L56
	movl	$0, %eax
	jmp	.L51
.L56:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_eckem_modename2id@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L57
	movl	$0, %eax
	jmp	.L51
.L57:
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 32(%rax)
.L55:
	movl	$1, %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE377:
	.size	ecxkem_set_ctx_params, .-ecxkem_set_ctx_params
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_settable_ecxkem_ctx_params, @object
	.size	known_settable_ecxkem_ctx_params, 120
known_settable_ecxkem_ctx_params:
	.quad	.LC6
	.long	4
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
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	ecxkem_settable_ctx_params, @function
ecxkem_settable_ctx_params:
.LFB378:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_settable_ecxkem_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE378:
	.size	ecxkem_settable_ctx_params, .-ecxkem_settable_ctx_params
	.section	.rodata
.LC7:
	.string	"eae_prk"
.LC8:
	.string	"shared_secret"
	.text
	.type	dhkem_extract_and_expand, @function
dhkem_extract_and_expand:
.LFB379:
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
	jbe	.L61
	movl	$0, %eax
	jmp	.L65
.L61:
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
	leaq	.LC7(%rip), %rcx
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
	je	.L63
	leaq	LABEL_KEM(%rip), %r9
	movq	-8(%rbp), %r8
	leaq	-80(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	pushq	16(%rbp)
	leaq	.LC8(%rip), %rdi
	pushq	%rdi
	pushq	$2
	leaq	-14(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_hpke_labeled_expand@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	je	.L63
	movl	$1, %eax
	jmp	.L64
.L63:
	movl	$0, %eax
.L64:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	-12(%rbp), %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE379:
	.size	dhkem_extract_and_expand, .-dhkem_extract_and_expand
	.section	.rodata
	.align 8
.LC9:
	.string	"ikm length is :%zu, should be at least %zu"
.LC10:
	.string	"dkp_prk"
.LC11:
	.string	"sk"
	.text
	.globl	ossl_ecx_dhkem_derive_private
	.type	ossl_ecx_dhkem_derive_private, @function
ossl_ecx_dhkem_derive_private:
.LFB380:
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
	movq	%rcx, -144(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	get_kem_info
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	%rax, -144(%rbp)
	jnb	.L67
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$349, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-144(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$230, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L68
.L67:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-120(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rsi
	call	ossl_kdf_ctx_create@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L69
	movl	$0, %eax
	jmp	.L73
.L69:
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	shrw	$8, %ax
	movb	%al, -98(%rbp)
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movb	%al, -97(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	leaq	LABEL_KEM(%rip), %rdi
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-144(%rbp)
	pushq	-136(%rbp)
	leaq	.LC10(%rip), %rcx
	pushq	%rcx
	pushq	$2
	leaq	-98(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_hpke_labeled_extract@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	je	.L74
	movq	-24(%rbp), %rax
	movq	32(%rax), %r8
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	leaq	LABEL_KEM(%rip), %r9
	leaq	-96(%rbp), %rcx
	movq	-128(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	leaq	.LC11(%rip), %rdi
	pushq	%rdi
	pushq	$2
	leaq	-98(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_hpke_labeled_expand@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	je	.L75
	movl	$1, -4(%rbp)
	jmp	.L68
.L74:
	nop
	jmp	.L68
.L75:
	nop
.L68:
	leaq	-96(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-4(%rbp), %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE380:
	.size	ossl_ecx_dhkem_derive_private, .-ossl_ecx_dhkem_derive_private
	.type	derivekey, @function
derivekey:
.LFB381:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movl	$0, -4(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-136(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-136(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movl	96(%rax), %esi
	movq	-136(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_ecx_key_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L77
	movl	$0, %eax
	jmp	.L89
.L77:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_allocate_privkey@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L90
	cmpq	$0, -24(%rbp)
	je	.L81
	cmpq	$0, -32(%rbp)
	jne	.L82
.L81:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	$66, %rax
	ja	.L91
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-128(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_priv_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L92
	leaq	-128(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)
.L82:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_dhkem_derive_private@PLT
	testl	%eax, %eax
	je	.L93
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_public_from_private@PLT
	testl	%eax, %eax
	je	.L94
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %edx
	orl	$1, %edx
	movb	%dl, 16(%rax)
	movl	$1, -4(%rbp)
	jmp	.L80
.L90:
	nop
	jmp	.L80
.L91:
	nop
	jmp	.L80
.L92:
	nop
	jmp	.L80
.L93:
	nop
	jmp	.L80
.L94:
	nop
.L80:
	cmpl	$0, -4(%rbp)
	jne	.L87
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_free@PLT
	movq	$0, -16(%rbp)
.L87:
	movq	-24(%rbp), %rax
	cmpq	-144(%rbp), %rax
	je	.L88
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L88:
	movq	-16(%rbp), %rax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE381:
	.size	derivekey, .-derivekey
	.type	generate_ecxdhkm, @function
generate_ecxdhkm:
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
	movl	%r8d, -52(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-48(%rbp), %r8
	leaq	-8(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_ecx_compute_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE382:
	.size	generate_ecxdhkm, .-generate_ecxdhkm
	.type	derive_secret, @function
derive_secret:
.LFB383:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$400, %rsp
	movq	%rdi, -360(%rbp)
	movq	%rsi, -368(%rbp)
	movq	%rdx, -376(%rbp)
	movq	%rcx, -384(%rbp)
	movq	%r8, -392(%rbp)
	movq	%r9, -400(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	-360(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-360(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	leaq	-176(%rbp), %rdx
	movq	-384(%rbp), %rsi
	movq	-376(%rbp), %rax
	movl	%ecx, %r8d
	movl	$112, %ecx
	movq	%rax, %rdi
	call	generate_ecxdhkm
	testl	%eax, %eax
	je	.L108
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L100
	movq	-64(%rbp), %rax
	movl	%eax, %r8d
	movl	$112, %eax
	subq	-32(%rbp), %rax
	movq	%rax, %rdx
	leaq	-176(%rbp), %rcx
	movq	-32(%rbp), %rax
	leaq	(%rcx,%rax), %rdi
	movq	-400(%rbp), %rsi
	movq	-392(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	generate_ecxdhkm
	testl	%eax, %eax
	je	.L109
	movq	-360(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ecx_pubkey
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L110
	movq	-64(%rbp), %rax
	addq	%rax, -32(%rbp)
.L100:
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	cmpq	$168, -40(%rbp)
	ja	.L111
	movq	-64(%rbp), %rdx
	movq	16(%rbp), %rcx
	leaq	-352(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	leaq	-352(%rbp), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	cmpl	$0, -52(%rbp)
	je	.L104
	movq	-64(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	leaq	-352(%rbp), %rax
	leaq	(%rax,%rdx), %rcx
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L104:
	movq	-360(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-360(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-360(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ossl_kdf_ctx_create@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L112
	movq	-48(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %ecx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %r9
	leaq	-176(%rbp), %r8
	movq	-368(%rbp), %rsi
	movq	-16(%rbp), %rax
	pushq	-40(%rbp)
	leaq	-352(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	dhkem_extract_and_expand
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L113
	movl	$1, -4(%rbp)
	jmp	.L99
.L108:
	nop
	jmp	.L99
.L109:
	nop
	jmp	.L99
.L110:
	nop
	jmp	.L99
.L111:
	nop
	jmp	.L99
.L112:
	nop
	jmp	.L99
.L113:
	nop
.L99:
	movq	-32(%rbp), %rdx
	leaq	-176(%rbp), %rax
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
.LFE383:
	.size	derive_secret, .-derive_secret
	.section	.rodata
.LC12:
	.string	"*secretlen too small"
.LC13:
	.string	"*enclen too small"
	.text
	.type	dhkem_encap, @function
dhkem_encap:
.LFB384:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L115
	cmpq	$0, -72(%rbp)
	jne	.L116
	cmpq	$0, -88(%rbp)
	jne	.L116
	movl	$0, %eax
	jmp	.L117
.L116:
	cmpq	$0, -72(%rbp)
	je	.L118
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
.L118:
	cmpq	$0, -88(%rbp)
	je	.L119
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
.L119:
	movl	$1, %eax
	jmp	.L117
.L115:
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L120
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$565, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L117
.L120:
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L121
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$569, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L117
.L121:
	movq	-56(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	derivekey
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ecx_pubkey
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecx_pubkey
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L126
	cmpq	$0, -40(%rbp)
	je	.L126
	movq	-56(%rbp), %rax
	movq	(%rax), %r8
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-56(%rbp), %rax
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	derive_secret
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L127
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L124
.L126:
	nop
	jmp	.L124
.L127:
	nop
.L124:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_free@PLT
	movl	-4(%rbp), %eax
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE384:
	.size	dhkem_encap, .-dhkem_encap
	.section	.rodata
.LC14:
	.string	"Invalid enc public key"
	.text
	.type	dhkem_decap, @function
dhkem_decap:
.LFB385:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L129
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L130
.L129:
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L131
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$628, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L130
.L131:
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, -88(%rbp)
	je	.L132
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$632, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdx
	movl	$158, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L130
.L132:
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecxkey_pubfromdata
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L137
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ecx_pubkey
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L138
	movq	-56(%rbp), %rax
	movq	8(%rax), %r8
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	pushq	-40(%rbp)
	pushq	-80(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	derive_secret
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L139
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L134
.L137:
	nop
	jmp	.L134
.L138:
	nop
	jmp	.L134
.L139:
	nop
.L134:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_free@PLT
	movl	-4(%rbp), %eax
.L130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE385:
	.size	dhkem_decap, .-dhkem_decap
	.type	ecxkem_encapsulate, @function
ecxkem_encapsulate:
.LFB386:
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
	jne	.L141
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	dhkem_encap
	jmp	.L142
.L141:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$667, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE386:
	.size	ecxkem_encapsulate, .-ecxkem_encapsulate
	.type	ecxkem_decapsulate, @function
ecxkem_decapsulate:
.LFB387:
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
	jne	.L144
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	dhkem_decap
	jmp	.L145
.L144:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$681, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
.L145:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE387:
	.size	ecxkem_decapsulate, .-ecxkem_decapsulate
	.globl	ossl_ecx_asym_kem_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ecx_asym_kem_functions, @object
	.size	ossl_ecx_asym_kem_functions, 176
ossl_ecx_asym_kem_functions:
	.long	1
	.zero	4
	.quad	ecxkem_newctx
	.long	2
	.zero	4
	.quad	ecxkem_encapsulate_init
	.long	3
	.zero	4
	.quad	ecxkem_encapsulate
	.long	4
	.zero	4
	.quad	ecxkem_decapsulate_init
	.long	5
	.zero	4
	.quad	ecxkem_decapsulate
	.long	6
	.zero	4
	.quad	ecxkem_freectx
	.long	10
	.zero	4
	.quad	ecxkem_set_ctx_params
	.long	11
	.zero	4
	.quad	ecxkem_settable_ctx_params
	.long	12
	.zero	4
	.quad	ecxkem_auth_encapsulate_init
	.long	13
	.zero	4
	.quad	ecxkem_auth_decapsulate_init
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 11
__func__.5:
	.string	"ecx_pubkey"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 30
__func__.4:
	.string	"ossl_ecx_dhkem_derive_private"
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
	.size	__func__.1, 19
__func__.1:
	.string	"ecxkem_encapsulate"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"ecxkem_decapsulate"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"handshake.c"
	.text
	.type	ossl_check_X509_NAME_sk_type, @function
ossl_check_X509_NAME_sk_type:
.LFB322:
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
.LFE322:
	.size	ossl_check_X509_NAME_sk_type, .-ossl_check_X509_NAME_sk_type
	.type	ossl_check_X509_NAME_freefunc_type, @function
ossl_check_X509_NAME_freefunc_type:
.LFB325:
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
.LFE325:
	.size	ossl_check_X509_NAME_freefunc_type, .-ossl_check_X509_NAME_freefunc_type
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
	.string	"../test/helpers/handshake.c"
	.align 8
.LC1:
	.string	"ret = OPENSSL_zalloc(sizeof(*ret))"
	.text
	.globl	HANDSHAKE_RESULT_new
	.type	HANDSHAKE_RESULT_new, @function
HANDSHAKE_RESULT_new:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$31, %edx
	movq	%rax, %rsi
	movl	$168, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$31, %esi
	call	test_ptr@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	HANDSHAKE_RESULT_new, .-HANDSHAKE_RESULT_new
	.globl	HANDSHAKE_RESULT_free
	.type	HANDSHAKE_RESULT_free, @function
HANDSHAKE_RESULT_free:
.LFB730:
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
	cmpq	$0, -24(%rbp)
	je	.L22
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$39, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$40, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$41, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$42, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$43, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	X509_NAME_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	X509_NAME_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$46, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$47, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L19
.L22:
	nop
.L19:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	HANDSHAKE_RESULT_free, .-HANDSHAKE_RESULT_free
	.type	ctx_data_free_data, @function
ctx_data_free_data:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$66, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$68, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$70, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$72, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$74, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	ctx_data_free_data, .-ctx_data_free_data
	.local	ex_data_idx
	.comm	ex_data_idx,4,4
	.section	.rodata
.LC2:
	.string	"F"
.LC3:
	.string	"CN"
	.text
	.type	info_cb, @function
info_cb:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L28
	movl	ex_data_idx(%rip), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_ex_data@PLT
	movq	%rax, -8(%rbp)
	movl	-28(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L26
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, (%rax)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	SSL_alert_type_string@PLT
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L27
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	SSL_alert_desc_string@PLT
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L28
.L27:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
	jmp	.L28
.L26:
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 8(%rax)
.L28:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	info_cb, .-info_cb
	.section	.rodata
.LC4:
	.string	"server2"
.LC5:
	.string	"server1"
	.text
	.type	select_server_ctx, @function
select_server_ctx:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_servername@PLT
	movq	%rax, -8(%rbp)
	movl	ex_data_idx(%rip), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_ex_data@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L30
	movq	-16(%rbp), %rax
	movl	$1, 16(%rax)
	movl	$3, %eax
	jmp	.L31
.L30:
	leaq	.LC4(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L32
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_SSL_CTX@PLT
	movq	-40(%rbp), %rax
	movl	$4294967295, %edx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_clear_options@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_get_options@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_options@PLT
	movq	-16(%rbp), %rax
	movl	$2, 16(%rax)
	movl	$0, %eax
	jmp	.L31
.L32:
	leaq	.LC5(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L33
	movq	-16(%rbp), %rax
	movl	$1, 16(%rax)
	movl	$0, %eax
	jmp	.L31
.L33:
	cmpl	$0, -52(%rbp)
	je	.L34
	movq	-16(%rbp), %rax
	movl	$1, 16(%rax)
	movl	$3, %eax
	jmp	.L31
.L34:
	movl	$2, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	select_server_ctx, .-select_server_ctx
	.type	client_hello_select_server_ctx, @function
client_hello_select_server_ctx:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	ex_data_idx(%rip), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_ex_data@PLT
	movq	%rax, -8(%rbp)
	leaq	-48(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_client_hello_get0_ext@PLT
	testl	%eax, %eax
	je	.L36
	movq	-48(%rbp), %rax
	cmpq	$2, %rax
	ja	.L37
.L36:
	movl	$0, %eax
	jmp	.L47
.L37:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	cltq
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-48(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L39
	movl	$0, %eax
	jmp	.L47
.L39:
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L40
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L41
.L40:
	movl	$0, %eax
	jmp	.L47
.L41:
	movq	-48(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$2, %rax
	ja	.L42
	movl	$0, %eax
	jmp	.L47
.L42:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	cltq
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movq	-48(%rbp), %rdx
	cmpq	%rax, %rdx
	jnb	.L43
	movl	$0, %eax
	jmp	.L47
.L43:
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$7, -16(%rbp)
	jne	.L44
	leaq	.LC4(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L44
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_SSL_CTX@PLT
	movq	-56(%rbp), %rax
	movl	$4294967295, %edx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_clear_options@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_get_options@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_options@PLT
	movq	-8(%rbp), %rax
	movl	$2, 16(%rax)
	movl	$1, %eax
	jmp	.L47
.L44:
	cmpq	$7, -16(%rbp)
	jne	.L45
	leaq	.LC5(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L45
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
	movl	$1, %eax
	jmp	.L47
.L45:
	cmpl	$0, -68(%rbp)
	je	.L46
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
	movl	$1, %eax
	jmp	.L47
.L46:
	movl	$0, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	client_hello_select_server_ctx, .-client_hello_select_server_ctx
	.type	servername_ignore_cb, @function
servername_ignore_cb:
.LFB735:
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
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	select_server_ctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	servername_ignore_cb, .-servername_ignore_cb
	.type	servername_reject_cb, @function
servername_reject_cb:
.LFB736:
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
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	select_server_ctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	servername_reject_cb, .-servername_reject_cb
	.type	client_hello_ignore_cb, @function
client_hello_ignore_cb:
.LFB737:
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
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	client_hello_select_server_ctx
	testl	%eax, %eax
	jne	.L53
	movq	-16(%rbp), %rax
	movl	$112, (%rax)
	movl	$0, %eax
	jmp	.L54
.L53:
	movl	$1, %eax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	client_hello_ignore_cb, .-client_hello_ignore_cb
	.type	client_hello_reject_cb, @function
client_hello_reject_cb:
.LFB738:
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
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	client_hello_select_server_ctx
	testl	%eax, %eax
	jne	.L56
	movq	-16(%rbp), %rax
	movl	$112, (%rax)
	movl	$0, %eax
	jmp	.L57
.L56:
	movl	$1, %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	client_hello_reject_cb, .-client_hello_reject_cb
	.type	client_hello_nov12_cb, @function
client_hello_nov12_cb:
.LFB739:
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
	movq	%rax, %rdi
	call	SSL_client_hello_get0_legacy_version@PLT
	movl	%eax, -4(%rbp)
	cmpl	$771, -4(%rbp)
	ja	.L59
	cmpl	$767, -4(%rbp)
	ja	.L60
.L59:
	movq	-32(%rbp), %rax
	movl	$70, (%rax)
	movl	$0, %eax
	jmp	.L65
.L60:
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_client_hello_get0_session_id@PLT
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L62
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_client_hello_get0_random@PLT
	testq	%rax, %rax
	je	.L62
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_client_hello_get0_ciphers@PLT
	testq	%rax, %rax
	je	.L62
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_client_hello_get0_compression_methods@PLT
	testq	%rax, %rax
	jne	.L63
.L62:
	movq	-32(%rbp), %rax
	movl	$80, (%rax)
	movl	$0, %eax
	jmp	.L65
.L63:
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	client_hello_select_server_ctx
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$770, %edx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	cmpl	$0, -8(%rbp)
	jne	.L64
	movq	-32(%rbp), %rax
	movl	$112, (%rax)
	movl	$0, %eax
	jmp	.L65
.L64:
	movl	$1, %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	client_hello_nov12_cb, .-client_hello_nov12_cb
	.data
	.type	dummy_ocsp_resp_good_val, @object
	.size	dummy_ocsp_resp_good_val, 1
dummy_ocsp_resp_good_val:
	.byte	-1
	.type	dummy_ocsp_resp_bad_val, @object
	.size	dummy_ocsp_resp_bad_val, 1
dummy_ocsp_resp_bad_val:
	.byte	-2
	.text
	.type	server_ocsp_cb, @function
server_ocsp_cb:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$274, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L67
	movl	$2, %eax
	jmp	.L68
.L67:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$71, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	jne	.L69
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$282, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$2, %eax
	jmp	.L68
.L69:
	movl	$0, %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	server_ocsp_cb, .-server_ocsp_cb
	.type	client_ocsp_cb, @function
client_ocsp_cb:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$70, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L71
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movzbl	dummy_ocsp_resp_good_val(%rip), %eax
	cmpb	%al, %dl
	je	.L72
.L71:
	movl	$0, %eax
	jmp	.L74
.L72:
	movl	$1, %eax
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	client_ocsp_cb, .-client_ocsp_cb
	.type	verify_reject_cb, @function
verify_reject_cb:
.LFB742:
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
	movl	$50, %esi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set_error@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	verify_reject_cb, .-verify_reject_cb
	.local	n_retries
	.comm	n_retries,4,4
	.type	verify_retry_cb, @function
verify_retry_cb:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	SSL_get_ex_data_X509_STORE_CTX_idx@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L78
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_ex_data@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L79
.L78:
	movl	$0, %eax
	jmp	.L80
.L79:
	movl	n_retries(%rip), %eax
	subl	$1, %eax
	movl	%eax, n_retries(%rip)
	movl	n_retries(%rip), %eax
	testl	%eax, %eax
	jns	.L81
	movl	$1, %eax
	jmp	.L80
.L81:
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$136, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	setg	%al
	movzbl	%al, %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	verify_retry_cb, .-verify_retry_cb
	.type	verify_accept_cb, @function
verify_accept_cb:
.LFB744:
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
.LFE744:
	.size	verify_accept_cb, .-verify_accept_cb
	.type	broken_session_ticket_cb, @function
broken_session_ticket_cb:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	broken_session_ticket_cb, .-broken_session_ticket_cb
	.type	do_not_call_session_ticket_cb, @function
do_not_call_session_ticket_cb:
.LFB746:
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
	movl	%r9d, -60(%rbp)
	movl	ex_data_idx(%rip), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_ex_data@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, 12(%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	do_not_call_session_ticket_cb, .-do_not_call_session_ticket_cb
	.section	.rodata
.LC6:
	.string	"*out"
	.align 8
.LC7:
	.string	"*out = OPENSSL_malloc(len + 1)"
.LC8:
	.string	"prefix"
.LC9:
	.string	"i - 1"
.LC10:
	.string	"len"
	.text
	.type	parse_protos, @function
parse_protos:
.LFB747:
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
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L89
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L90
.L89:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$358, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L91
	movq	-24(%rbp), %rax
	addq	$1, %rax
	leaq	.LC0(%rip), %rcx
	movl	$360, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$360, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L92
.L91:
	movl	$0, %eax
	jmp	.L90
.L92:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	$0, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.L93
.L97:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L94
	movq	-16(%rbp), %rax
	movl	%eax, %edi
	movq	-8(%rbp), %rax
	subl	$1, %eax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$374, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L99
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	leal	-1(%rcx), %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.L94:
	addq	$1, -8(%rbp)
.L93:
	movq	-8(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L97
	movq	-16(%rbp), %rax
	movl	%eax, %edi
	movq	-24(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$381, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L100
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%eax, %esi
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	subl	%esi, %ecx
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	$1, %eax
	jmp	.L90
.L99:
	nop
	jmp	.L96
.L100:
	nop
.L96:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$387, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	parse_protos, .-parse_protos
	.section	.rodata
	.align 8
.LC11:
	.string	"ret == OPENSSL_NPN_NEGOTIATED || ret == OPENSSL_NPN_NO_OVERLAP"
	.text
	.type	client_npn_cb, @function
client_npn_cb:
.LFB748:
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
	movq	%r9, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %r8d
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SSL_select_next_proto@PLT
	movl	%eax, -12(%rbp)
	cmpl	$1, -12(%rbp)
	je	.L102
	cmpl	$2, -12(%rbp)
	jne	.L103
.L102:
	movl	$1, %ecx
	jmp	.L104
.L103:
	movl	$0, %ecx
.L104:
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$410, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L105
	movl	$0, %eax
	jmp	.L107
.L105:
	movl	$2, %eax
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	client_npn_cb, .-client_npn_cb
	.type	server_npn_cb, @function
server_npn_cb:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	server_npn_cb, .-server_npn_cb
	.type	server_alpn_cb, @function
server_alpn_cb:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movq	%r9, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %r10d
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-68(%rbp), %edi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rsi
	leaq	-24(%rbp), %rax
	movl	%edi, %r9d
	movq	%rcx, %r8
	movl	%r10d, %ecx
	movq	%rax, %rdi
	call	SSL_select_next_proto@PLT
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	cmpl	$1, -12(%rbp)
	jne	.L111
	movl	$0, %eax
	jmp	.L113
.L111:
	movl	$2, %eax
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	server_alpn_cb, .-server_alpn_cb
	.type	generate_session_ticket_cb, @function
generate_session_ticket_cb:
.LFB751:
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
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_session@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L115
	cmpq	$0, -24(%rbp)
	jne	.L116
.L115:
	movl	$0, %eax
	jmp	.L117
.L116:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_set1_ticket_appdata@PLT
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	generate_session_ticket_cb, .-generate_session_ticket_cb
	.type	decrypt_session_ticket_cb, @function
decrypt_session_ticket_cb:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpl	$6, -36(%rbp)
	je	.L119
	cmpl	$6, -36(%rbp)
	jg	.L126
	cmpl	$4, -36(%rbp)
	jg	.L121
	cmpl	$3, -36(%rbp)
	jge	.L122
	jmp	.L126
.L121:
	cmpl	$5, -36(%rbp)
	je	.L123
	jmp	.L126
.L122:
	movl	$2, %eax
	jmp	.L124
.L123:
	movl	$3, %eax
	jmp	.L124
.L119:
	movl	$4, %eax
	jmp	.L124
.L126:
	nop
	movl	$0, %eax
.L124:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	decrypt_session_ticket_cb, .-decrypt_session_ticket_cb
	.section	.rodata
.LC12:
	.string	"1"
	.align 8
.LC13:
	.string	"SSL_CTX_set_max_send_fragment(server_ctx, test->max_fragment_size)"
	.align 8
.LC14:
	.string	"SSL_CTX_set_max_send_fragment(server2_ctx, test->max_fragment_size)"
	.align 8
.LC15:
	.string	"SSL_CTX_set_max_send_fragment(client_ctx, test->max_fragment_size)"
	.align 8
.LC16:
	.string	"parse_protos(extra->server.npn_protocols, &server_ctx_data->npn_protocols, &server_ctx_data->npn_protocols_len)"
	.align 8
.LC17:
	.string	"parse_protos(extra->server2.npn_protocols, &server2_ctx_data->npn_protocols, &server2_ctx_data->npn_protocols_len)"
.LC18:
	.string	"server2_ctx"
	.align 8
.LC19:
	.string	"parse_protos(extra->client.npn_protocols, &client_ctx_data->npn_protocols, &client_ctx_data->npn_protocols_len)"
	.align 8
.LC20:
	.string	"parse_protos(extra->server.alpn_protocols, &server_ctx_data->alpn_protocols, &server_ctx_data->alpn_protocols_len)"
	.align 8
.LC21:
	.string	"parse_protos(extra->server2.alpn_protocols, &server2_ctx_data->alpn_protocols, &server2_ctx_data->alpn_protocols_len )"
	.align 8
.LC22:
	.string	"parse_protos(extra->client.alpn_protocols, &alpn_protos, &alpn_protos_len)"
.LC23:
	.string	"0"
	.align 8
.LC24:
	.string	"SSL_CTX_set_alpn_protos(client_ctx, alpn_protos, alpn_protos_len)"
	.align 8
.LC25:
	.string	"server_ctx_data->session_ticket_app_data"
	.align 8
.LC26:
	.string	"server2_ctx_data->session_ticket_app_data"
	.align 8
.LC27:
	.string	"ticket_keys = OPENSSL_zalloc(ticket_key_len)"
	.align 8
.LC28:
	.string	"SSL_CTX_set_tlsext_ticket_keys(server_ctx, ticket_keys, ticket_key_len)"
	.align 8
.LC29:
	.string	"SSL_CTX_set_default_ctlog_list_file(client_ctx)"
	.align 8
.LC30:
	.string	"SSL_CTX_enable_ct(client_ctx, SSL_CT_VALIDATION_PERMISSIVE)"
	.align 8
.LC31:
	.string	"SSL_CTX_enable_ct(client_ctx, SSL_CT_VALIDATION_STRICT)"
	.text
	.type	configure_handshake_ctx, @function
configure_handshake_ctx:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	-64(%rbp), %rax
	movl	12(%rax), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$52, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$502, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L178
	cmpq	$0, -48(%rbp)
	je	.L130
	movq	-64(%rbp), %rax
	movl	12(%rax), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$52, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC12(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$506, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L179
.L130:
	movq	-64(%rbp), %rax
	movl	12(%rax), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$52, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC12(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$511, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L180
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	je	.L132
	cmpl	$3, %eax
	ja	.L133
	cmpl	$2, %eax
	je	.L134
	cmpl	$2, %eax
	ja	.L133
	testl	%eax, %eax
	je	.L181
	cmpl	$1, %eax
	jne	.L133
	leaq	verify_accept_cb(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cert_verify_callback@PLT
	jmp	.L133
.L134:
	movl	$1, n_retries(%rip)
	leaq	verify_retry_cb(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cert_verify_callback@PLT
	jmp	.L133
.L132:
	leaq	verify_reject_cb(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cert_verify_callback@PLT
	jmp	.L133
.L181:
	nop
.L133:
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	ja	.L136
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	movzbl	%al, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_tlsext_max_fragment_length@PLT
	nop
.L136:
	movq	-72(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$5, %eax
	je	.L137
	cmpl	$5, %eax
	ja	.L138
	cmpl	$4, %eax
	je	.L139
	cmpl	$4, %eax
	ja	.L138
	cmpl	$3, %eax
	je	.L140
	cmpl	$3, %eax
	ja	.L138
	cmpl	$2, %eax
	je	.L141
	cmpl	$2, %eax
	ja	.L138
	testl	%eax, %eax
	je	.L182
	cmpl	$1, %eax
	jne	.L138
	leaq	servername_ignore_cb(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	$53, %esi
	movq	%rax, %rdi
	call	SSL_CTX_callback_ctrl@PLT
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$54, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	jmp	.L138
.L141:
	leaq	servername_reject_cb(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	$53, %esi
	movq	%rax, %rdi
	call	SSL_CTX_callback_ctrl@PLT
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$54, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	jmp	.L138
.L140:
	movq	-48(%rbp), %rdx
	leaq	client_hello_ignore_cb(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_client_hello_cb@PLT
	jmp	.L138
.L139:
	movq	-48(%rbp), %rdx
	leaq	client_hello_reject_cb(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_client_hello_cb@PLT
	jmp	.L138
.L137:
	movq	-48(%rbp), %rdx
	leaq	client_hello_nov12_cb(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_client_hello_cb@PLT
	jmp	.L138
.L182:
	nop
.L138:
	movq	-72(%rbp), %rax
	movl	100(%rax), %eax
	testl	%eax, %eax
	je	.L143
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$65, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	leaq	client_ocsp_cb(%rip), %rdx
	movq	-56(%rbp), %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	SSL_CTX_callback_ctrl@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	leaq	server_ocsp_cb(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	SSL_CTX_callback_ctrl@PLT
	movq	-72(%rbp), %rax
	movl	100(%rax), %eax
	cmpl	$1, %eax
	jne	.L144
	leaq	dummy_ocsp_resp_good_val(%rip), %rax
	jmp	.L145
.L144:
	leaq	dummy_ocsp_resp_bad_val(%rip), %rax
.L145:
	movq	-40(%rbp), %rdi
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$64, %esi
	call	SSL_CTX_ctrl@PLT
.L143:
	cmpq	$0, -48(%rbp)
	je	.L146
	leaq	do_not_call_session_ticket_cb(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_tlsext_ticket_key_evp_cb@PLT
.L146:
	movq	-72(%rbp), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	je	.L147
	leaq	broken_session_ticket_cb(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_tlsext_ticket_key_evp_cb@PLT
.L147:
	movq	-72(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L148
	movq	-80(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_protos
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$592, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L183
	movq	-80(%rbp), %rdx
	leaq	server_npn_cb(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_next_protos_advertised_cb@PLT
.L148:
	movq	-72(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L150
	movq	16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	16(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_protos
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$600, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L184
	movq	-48(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$603, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L184
	movq	16(%rbp), %rdx
	leaq	server_npn_cb(%rip), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_next_protos_advertised_cb@PLT
.L150:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L153
	movq	24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	24(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_protos
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$609, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L185
	movq	24(%rbp), %rdx
	leaq	client_npn_cb(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_next_proto_select_cb@PLT
.L153:
	movq	-72(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L155
	movq	-80(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-80(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_protos
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$618, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L186
	movq	-80(%rbp), %rdx
	leaq	server_alpn_cb(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_alpn_select_cb@PLT
.L155:
	movq	-72(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	je	.L157
	movq	-48(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$625, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L187
	movq	16(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	16(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_protos
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$626, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L187
	movq	16(%rbp), %rdx
	leaq	server_alpn_cb(%rip), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_alpn_select_cb@PLT
.L157:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L160
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_protos
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$638, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L188
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_alpn_protos@PLT
	movl	%eax, %esi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$641, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L188
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$644, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L160:
	movq	-72(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L163
	movq	-72(%rbp), %rax
	movq	128(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$649, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-80(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-80(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$650, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L189
	movq	-80(%rbp), %rdx
	leaq	decrypt_session_ticket_cb(%rip), %rdi
	leaq	generate_session_ticket_cb(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	SSL_CTX_set_session_ticket_cb@PLT
.L163:
	movq	-72(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L165
	movq	-48(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$656, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L190
	movq	-72(%rbp), %rax
	movq	192(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$659, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	16(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	16(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$660, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L191
	movq	16(%rbp), %rdx
	leaq	decrypt_session_ticket_cb(%rip), %rsi
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_session_ticket_cb@PLT
.L165:
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$59, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	movq	%rax, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$671, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$671, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L168
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC12(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$672, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L169
.L168:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$675, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L129
.L169:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$678, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_set_default_ctlog_list_file@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$682, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L192
	movq	-72(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$2, %eax
	je	.L171
	cmpl	$2, %eax
	ja	.L172
	testl	%eax, %eax
	je	.L193
	cmpl	$1, %eax
	jne	.L172
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_enable_ct@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$686, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L194
	jmp	.L129
.L171:
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_CTX_enable_ct@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$691, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L195
	jmp	.L172
.L193:
	nop
	jmp	.L172
.L194:
	nop
.L172:
	movq	16(%rbp), %r8
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	configure_handshake_ctx_for_srp@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L196
	movl	$1, %eax
	jmp	.L177
.L178:
	nop
	jmp	.L129
.L179:
	nop
	jmp	.L129
.L180:
	nop
	jmp	.L129
.L183:
	nop
	jmp	.L129
.L184:
	nop
	jmp	.L129
.L185:
	nop
	jmp	.L129
.L186:
	nop
	jmp	.L129
.L187:
	nop
	jmp	.L129
.L188:
	nop
	jmp	.L129
.L189:
	nop
	jmp	.L129
.L190:
	nop
	jmp	.L129
.L191:
	nop
	jmp	.L129
.L192:
	nop
	jmp	.L129
.L195:
	nop
	jmp	.L129
.L196:
	nop
.L129:
	movl	$0, %eax
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	configure_handshake_ctx, .-configure_handshake_ctx
	.type	configure_handshake_ssl, @function
configure_handshake_ssl:
.LFB754:
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
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L198
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edi
	call	ssl_servername_name@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$55, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
.L198:
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L200
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_set_post_handshake_auth@PLT
.L200:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	configure_handshake_ssl, .-configure_handshake_ssl
	.section	.rodata
.LC32:
	.string	"ssl = SSL_new(ctx)"
	.align 8
.LC33:
	.string	"write_buf = OPENSSL_zalloc(peer_buffer_size)"
	.align 8
.LC34:
	.string	"read_buf = OPENSSL_zalloc(peer_buffer_size)"
	.text
	.type	create_peer, @function
create_peer:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$756, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L206
	movl	peer_buffer_size.0(%rip), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$757, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$757, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L206
	movl	peer_buffer_size.0(%rip), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$758, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC34(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$758, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L206
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	peer_buffer_size.0(%rip), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-40(%rbp), %rax
	movl	32(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 16(%rax)
	movl	$1, %eax
	jmp	.L205
.L206:
	nop
.L204:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$768, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$769, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L205:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	create_peer, .-create_peer
	.type	peer_free_data, @function
peer_free_data:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$776, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$777, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	peer_free_data, .-peer_free_data
	.section	.rodata
.LC35:
	.string	"PEER_RETRY"
.LC36:
	.string	"peer->status"
	.text
	.type	do_handshake_step, @function
do_handshake_step:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, %esi
	leaq	.LC35(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$786, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L209
	movq	-24(%rbp), %rax
	movl	$4, 44(%rax)
	jmp	.L213
.L209:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_do_handshake@PLT
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L211
	movq	-24(%rbp), %rax
	movl	$0, 44(%rax)
	jmp	.L213
.L211:
	cmpl	$0, -4(%rbp)
	jne	.L212
	movq	-24(%rbp), %rax
	movl	$2, 44(%rax)
	jmp	.L213
.L212:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, -8(%rbp)
	cmpl	$2, -8(%rbp)
	je	.L213
	cmpl	$12, -8(%rbp)
	je	.L213
	movq	-24(%rbp), %rax
	movl	$2, 44(%rax)
.L213:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	do_handshake_step, .-do_handshake_step
	.section	.rodata
.LC37:
	.string	"peer->bytes_to_read"
.LC38:
	.string	"ret"
.LC39:
	.string	"write_bytes"
	.text
	.type	do_app_data_step, @function
do_app_data_step:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, %esi
	leaq	.LC35(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$819, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L217
	movq	-24(%rbp), %rax
	movl	$4, 44(%rax)
	jmp	.L214
.L222:
	movq	-24(%rbp), %rax
	movl	32(%rax), %edx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_read@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L218
	movq	-24(%rbp), %rax
	movl	40(%rax), %edi
	movl	-4(%rbp), %esi
	leaq	.LC37(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$828, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	jne	.L219
	movq	-24(%rbp), %rax
	movl	$4, 44(%rax)
	jmp	.L214
.L219:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 40(%rax)
	jmp	.L217
.L218:
	cmpl	$0, -4(%rbp)
	jne	.L220
	movq	-24(%rbp), %rax
	movl	$2, 44(%rax)
	jmp	.L214
.L220:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, -8(%rbp)
	cmpl	$2, -8(%rbp)
	je	.L217
	movq	-24(%rbp), %rax
	movl	$2, 44(%rax)
	jmp	.L214
.L217:
	cmpl	$0, -4(%rbp)
	jle	.L221
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L222
.L221:
	movq	-24(%rbp), %rax
	movl	16(%rax), %edx
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L223
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_write@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L224
	movl	-12(%rbp), %edi
	movl	-4(%rbp), %esi
	leaq	.LC39(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$852, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L225
	movq	-24(%rbp), %rax
	movl	$4, 44(%rax)
	jmp	.L214
.L225:
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 36(%rax)
	jmp	.L223
.L224:
	movq	-24(%rbp), %rax
	movl	$2, 44(%rax)
	jmp	.L214
.L223:
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jne	.L214
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L214
	movq	-24(%rbp), %rax
	movl	$0, 44(%rax)
.L214:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	do_app_data_step, .-do_app_data_step
	.section	.rodata
	.align 8
.LC40:
	.ascii	"test_ctx->handshake_mode == SSL_TEST_HANDSHAKE_RENEG_SERVER "
	.ascii	"|| test_ctx-"
	.string	">handshake_mode == SSL_TEST_HANDSHAKE_RENEG_CLIENT || test_ctx->handshake_mode == SSL_TEST_HANDSHAKE_KEY_UPDATE_SERVER || test_ctx->handshake_mode == SSL_TEST_HANDSHAKE_KEY_UPDATE_CLIENT || test_ctx->handshake_mode == SSL_TEST_HANDSHAKE_POST_HANDSHAKE_AUTH"
	.text
	.type	do_reneg_setup_step, @function
do_reneg_setup_step:
.LFB759:
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
	movl	44(%rax), %eax
	testl	%eax, %eax
	jne	.L227
	movq	-48(%rbp), %rax
	movl	$1, 44(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	do_handshake_step
	jmp	.L226
.L227:
	movq	-48(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, %esi
	leaq	.LC35(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$894, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L229
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$2, %eax
	je	.L230
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$3, %eax
	je	.L230
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$4, %eax
	je	.L230
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$5, %eax
	je	.L230
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$6, %eax
	jne	.L231
.L230:
	movl	$1, %ecx
	jmp	.L232
.L231:
	movl	$0, %ecx
.L232:
	leaq	.LC40(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$895, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L233
.L229:
	movq	-48(%rbp), %rax
	movl	$4, 44(%rax)
	jmp	.L226
.L233:
	movq	-40(%rbp), %rax
	movl	8(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-48(%rbp), %rax
	movl	40(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$2, %eax
	jne	.L234
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_is_server@PLT
	testl	%eax, %eax
	jne	.L235
.L234:
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$3, %eax
	jne	.L236
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_is_server@PLT
	testl	%eax, %eax
	jne	.L236
.L235:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_renegotiate_pending@PLT
	testl	%eax, %eax
	jne	.L247
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_is_server@PLT
	testl	%eax, %eax
	je	.L238
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_renegotiate@PLT
	movl	%eax, -4(%rbp)
	jmp	.L239
.L238:
	movl	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	92(%rax), %eax
	testl	%eax, %eax
	je	.L240
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_set_options@PLT
	movl	$1, -8(%rbp)
.L240:
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L241
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_cipher_list@PLT
	testl	%eax, %eax
	jne	.L242
	movq	-48(%rbp), %rax
	movl	$2, 44(%rax)
	jmp	.L226
.L242:
	movl	$1, -8(%rbp)
.L241:
	cmpl	$0, -8(%rbp)
	je	.L243
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_renegotiate@PLT
	movl	%eax, -4(%rbp)
	jmp	.L239
.L243:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_renegotiate_abbreviated@PLT
	movl	%eax, -4(%rbp)
.L239:
	cmpl	$0, -4(%rbp)
	jne	.L244
	movq	-48(%rbp), %rax
	movl	$2, 44(%rax)
	jmp	.L226
.L244:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	do_handshake_step
	movq	-48(%rbp), %rax
	movl	44(%rax), %eax
	cmpl	$1, %eax
	jne	.L245
	movq	-48(%rbp), %rax
	movl	$0, 44(%rax)
	jmp	.L264
.L245:
	movq	-48(%rbp), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	jne	.L264
	movq	-48(%rbp), %rax
	movl	$1, 44(%rax)
	jmp	.L264
.L236:
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$4, %eax
	je	.L248
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$5, %eax
	jne	.L249
.L248:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_is_server@PLT
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$4, %eax
	sete	%al
	movzbl	%al, %eax
	cmpl	%eax, %edx
	je	.L250
	movq	-48(%rbp), %rax
	movl	$0, 44(%rax)
	jmp	.L226
.L250:
	movq	-40(%rbp), %rax
	movl	16(%rax), %edx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_key_update@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L251
	movq	-48(%rbp), %rax
	movl	$2, 44(%rax)
	jmp	.L226
.L251:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	do_handshake_step
	movq	-48(%rbp), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	je	.L265
	movq	-48(%rbp), %rax
	movl	$2, 44(%rax)
	jmp	.L265
.L249:
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$6, %eax
	jne	.L247
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_is_server@PLT
	testl	%eax, %eax
	je	.L253
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L254
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L255
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L256
.L255:
	movq	$0, -16(%rbp)
	jmp	.L256
.L254:
	movq	$0, -16(%rbp)
.L256:
	cmpq	$0, -16(%rbp)
	jne	.L257
	movq	-48(%rbp), %rax
	movl	$2, 44(%rax)
	jmp	.L226
.L257:
	movq	-40(%rbp), %rax
	movl	144(%rax), %eax
	testl	%eax, %eax
	je	.L258
	movq	-16(%rbp), %rax
	movl	$2, 2832(%rax)
.L258:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_verify_client_post_handshake@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L253
	movq	-48(%rbp), %rax
	movl	$2, 44(%rax)
	jmp	.L226
.L253:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	do_handshake_step
	movq	-48(%rbp), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	je	.L266
	movq	-48(%rbp), %rax
	movl	$2, 44(%rax)
	jmp	.L266
.L247:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	-21(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_read@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L260
	movq	-48(%rbp), %rax
	movl	$2, 44(%rax)
	jmp	.L226
.L260:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, -20(%rbp)
	cmpl	$2, -20(%rbp)
	je	.L261
	movq	-48(%rbp), %rax
	movl	$2, 44(%rax)
	jmp	.L226
.L261:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	je	.L267
	movq	-48(%rbp), %rax
	movl	$0, 44(%rax)
	jmp	.L226
.L264:
	nop
	jmp	.L226
.L265:
	nop
	jmp	.L226
.L266:
	nop
	jmp	.L226
.L267:
	nop
.L226:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	do_reneg_setup_step, .-do_reneg_setup_step
	.type	do_shutdown_step, @function
do_shutdown_step:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, %esi
	leaq	.LC35(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1067, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L269
	movq	-24(%rbp), %rax
	movl	$4, 44(%rax)
	jmp	.L268
.L269:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_shutdown@PLT
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L271
	movq	-24(%rbp), %rax
	movl	$0, 44(%rax)
	jmp	.L268
.L271:
	cmpl	$0, -4(%rbp)
	jns	.L268
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, -8(%rbp)
	cmpl	$2, -8(%rbp)
	je	.L268
	cmpl	$3, -8(%rbp)
	je	.L268
	movq	-24(%rbp), %rax
	movl	$2, 44(%rax)
.L268:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	do_shutdown_step, .-do_shutdown_step
	.type	renegotiate_op, @function
renegotiate_op:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	subl	$2, %eax
	cmpl	$1, %eax
	ja	.L273
	movl	$1, %eax
	jmp	.L274
.L273:
	movl	$0, %eax
.L274:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	renegotiate_op, .-renegotiate_op
	.type	post_handshake_op, @function
post_handshake_op:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	subl	$4, %eax
	cmpl	$2, %eax
	ja	.L276
	movl	$1, %eax
	jmp	.L277
.L276:
	movl	$0, %eax
.L277:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	post_handshake_op, .-post_handshake_op
	.section	.rodata
	.align 8
.LC41:
	.string	"Trying to progress after connection done"
	.text
	.type	next_phase, @function
next_phase:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$6, -12(%rbp)
	je	.L279
	cmpl	$6, -12(%rbp)
	ja	.L280
	cmpl	$5, -12(%rbp)
	je	.L281
	cmpl	$5, -12(%rbp)
	ja	.L280
	cmpl	$4, -12(%rbp)
	je	.L282
	cmpl	$4, -12(%rbp)
	ja	.L280
	cmpl	$3, -12(%rbp)
	je	.L283
	cmpl	$3, -12(%rbp)
	ja	.L280
	cmpl	$2, -12(%rbp)
	je	.L284
	cmpl	$2, -12(%rbp)
	ja	.L280
	cmpl	$0, -12(%rbp)
	je	.L285
	cmpl	$1, -12(%rbp)
	je	.L286
	jmp	.L280
.L285:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	renegotiate_op
	testl	%eax, %eax
	jne	.L287
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	post_handshake_op
	testl	%eax, %eax
	je	.L288
.L287:
	movl	$1, %eax
	jmp	.L289
.L288:
	movl	$4, %eax
	jmp	.L289
.L286:
	movl	$2, %eax
	jmp	.L289
.L284:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	post_handshake_op
	testl	%eax, %eax
	je	.L290
	movl	$4, %eax
	jmp	.L289
.L290:
	movl	$3, %eax
	jmp	.L289
.L283:
	movl	$4, %eax
	jmp	.L289
.L282:
	movl	$5, %eax
	jmp	.L289
.L281:
	movl	$6, %eax
	jmp	.L289
.L279:
	leaq	.LC41(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1137, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	nop
.L280:
	movl	$-1, %eax
.L289:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	next_phase, .-next_phase
	.section	.rodata
.LC42:
	.string	"Action after connection done"
	.text
	.type	do_connect_step, @function
do_connect_step:
.LFB764:
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
	cmpl	$6, -20(%rbp)
	je	.L292
	cmpl	$6, -20(%rbp)
	ja	.L300
	cmpl	$5, -20(%rbp)
	je	.L294
	cmpl	$5, -20(%rbp)
	ja	.L300
	cmpl	$4, -20(%rbp)
	je	.L295
	cmpl	$4, -20(%rbp)
	ja	.L300
	cmpl	$3, -20(%rbp)
	je	.L296
	cmpl	$3, -20(%rbp)
	ja	.L300
	cmpl	$2, -20(%rbp)
	je	.L297
	cmpl	$2, -20(%rbp)
	ja	.L300
	cmpl	$0, -20(%rbp)
	je	.L298
	cmpl	$1, -20(%rbp)
	je	.L299
	jmp	.L300
.L298:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	do_handshake_step
	jmp	.L293
.L299:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	do_app_data_step
	jmp	.L293
.L297:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_reneg_setup_step
	jmp	.L293
.L296:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	do_handshake_step
	jmp	.L293
.L295:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	do_app_data_step
	jmp	.L293
.L294:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	do_shutdown_step
	jmp	.L293
.L292:
	leaq	.LC42(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1166, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	nop
.L293:
.L300:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	do_connect_step, .-do_connect_step
	.type	handshake_status, @function
handshake_status:
.LFB765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	cmpl	$4, -4(%rbp)
	je	.L302
	cmpl	$4, -4(%rbp)
	ja	.L303
	cmpl	$3, -4(%rbp)
	je	.L304
	cmpl	$3, -4(%rbp)
	ja	.L303
	cmpl	$2, -4(%rbp)
	je	.L305
	cmpl	$2, -4(%rbp)
	ja	.L303
	cmpl	$0, -4(%rbp)
	je	.L306
	cmpl	$1, -4(%rbp)
	je	.L307
	jmp	.L303
.L302:
	movl	$3, %eax
	jmp	.L308
.L304:
	movl	$3, %eax
	jmp	.L308
.L306:
	cmpl	$4, -8(%rbp)
	je	.L309
	cmpl	$4, -8(%rbp)
	ja	.L325
	cmpl	$3, -8(%rbp)
	je	.L311
	cmpl	$3, -8(%rbp)
	ja	.L325
	cmpl	$2, -8(%rbp)
	je	.L312
	cmpl	$2, -8(%rbp)
	ja	.L325
	cmpl	$0, -8(%rbp)
	je	.L313
	cmpl	$1, -8(%rbp)
	je	.L311
	jmp	.L325
.L309:
	movl	$3, %eax
	jmp	.L308
.L313:
	movl	$0, %eax
	jmp	.L308
.L311:
	movl	$4, %eax
	jmp	.L308
.L312:
	movl	$3, %eax
	jmp	.L308
.L307:
	movl	$4, %eax
	jmp	.L308
.L305:
	cmpl	$4, -8(%rbp)
	je	.L314
	cmpl	$4, -8(%rbp)
	ja	.L303
	cmpl	$3, -8(%rbp)
	je	.L315
	cmpl	$3, -8(%rbp)
	ja	.L303
	cmpl	$2, -8(%rbp)
	je	.L316
	cmpl	$2, -8(%rbp)
	ja	.L303
	cmpl	$0, -8(%rbp)
	je	.L317
	cmpl	$1, -8(%rbp)
	je	.L318
	jmp	.L303
.L314:
	movl	$3, %eax
	jmp	.L308
.L315:
	cmpl	$0, -12(%rbp)
	je	.L319
	movl	$1, %eax
	jmp	.L308
.L319:
	movl	$3, %eax
	jmp	.L308
.L317:
	cmpl	$0, -12(%rbp)
	je	.L321
	movl	$1, %eax
	jmp	.L308
.L321:
	movl	$2, %eax
	jmp	.L308
.L318:
	movl	$4, %eax
	jmp	.L308
.L316:
	cmpl	$0, -12(%rbp)
	je	.L323
	movl	$2, %eax
	jmp	.L308
.L323:
	movl	$1, %eax
	jmp	.L308
.L325:
	nop
.L303:
	movl	$3, %eax
.L308:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	handshake_status, .-handshake_status
	.section	.rodata
	.align 8
.LC43:
	.string	"OPENSSL_strnlen((const char*)(in), len)"
	.align 8
.LC44:
	.string	"ret = OPENSSL_strndup((const char*)(in), len)"
	.text
	.type	dup_str, @function
dup_str:
.LFB766:
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
	cmpq	$0, -32(%rbp)
	jne	.L327
	movl	$0, %eax
	jmp	.L328
.L327:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strnlen@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1256, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L329
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1257, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC44(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1257, %esi
	call	test_ptr@PLT
.L329:
	movq	-8(%rbp), %rax
.L328:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	dup_str, .-dup_str
	.section	.rodata
.LC45:
	.string	"EC"
	.text
	.type	pkey_type, @function
pkey_type:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	leaq	.LC45(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L331
	leaq	-8(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rdx, %rcx
	movl	$80, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_get_group_name@PLT
	testl	%eax, %eax
	jne	.L332
	movl	$0, %eax
	jmp	.L334
.L332:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	jmp	.L334
.L331:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
.L334:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	pkey_type, .-pkey_type
	.type	peer_pkey_type, @function
peer_pkey_type:
.LFB768:
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
	call	SSL_get0_peer_certificate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L336
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, %rdi
	call	pkey_type
	jmp	.L337
.L336:
	movl	$0, %eax
.L337:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	peer_pkey_type, .-peer_pkey_type
	.section	.rodata
.LC46:
	.string	"configure_handshake_ctx"
.LC47:
	.string	"creating server context"
.LC48:
	.string	"creating client context"
	.align 8
.LC49:
	.string	"SSL_CTX_add_session(server_ctx, serv_sess_in)"
	.align 8
.LC50:
	.string	"SSL_set_session(client.ssl, session_in)"
.LC51:
	.string	"client_to_server"
.LC52:
	.string	"server_to_client"
.LC53:
	.string	"BIO_up_ref(server_to_client)"
.LC54:
	.string	"BIO_up_ref(client_to_server)"
.LC55:
	.string	"ex data"
.LC56:
	.string	"ex_data_idx"
	.align 8
.LC57:
	.string	"SSL_set_ex_data(server.ssl, ex_data_idx, &server_ex_data)"
	.align 8
.LC58:
	.string	"SSL_set_ex_data(client.ssl, ex_data_idx, &client_ex_data)"
	.text
	.type	do_handshake_internal, @function
do_handshake_internal:
.LFB769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$544, %rsp
	movq	%rdi, -504(%rbp)
	movq	%rsi, -512(%rbp)
	movq	%rdx, -520(%rbp)
	movq	%rcx, -528(%rbp)
	movq	%r8, -536(%rbp)
	movq	%r9, -544(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	call	HANDSHAKE_RESULT_new@PLT
	movq	%rax, -56(%rbp)
	movl	$1, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$4, -36(%rbp)
	movq	$0, -456(%rbp)
	movq	$0, -464(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -468(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -480(%rbp)
	movl	$0, -484(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L339
	movl	$0, %eax
	jmp	.L392
.L339:
	leaq	-384(%rbp), %rax
	movl	$56, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-448(%rbp), %rax
	movl	$56, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-320(%rbp), %rax
	movl	$56, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-144(%rbp), %rax
	movl	$48, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-192(%rbp), %rax
	movl	$48, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-224(%rbp), %rax
	movl	$20, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-256(%rbp), %rax
	movl	$20, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-384(%rbp), %r9
	movq	-536(%rbp), %r8
	movq	-528(%rbp), %rcx
	movq	-520(%rbp), %rdx
	movq	-512(%rbp), %rsi
	movq	-504(%rbp), %rax
	leaq	-320(%rbp), %rdi
	pushq	%rdi
	leaq	-448(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	configure_handshake_ctx
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L341
	leaq	.LC46(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	HANDSHAKE_RESULT_free@PLT
	movl	$0, %eax
	jmp	.L392
.L341:
	movq	-504(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	create_peer
	testl	%eax, %eax
	jne	.L342
	leaq	.LC47(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	jmp	.L343
.L342:
	movq	-520(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	create_peer
	testl	%eax, %eax
	jne	.L344
	leaq	.LC48(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	jmp	.L343
.L344:
	movq	-528(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -152(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -108(%rbp)
	movq	-528(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -156(%rbp)
	movq	-192(%rbp), %rcx
	movq	-144(%rbp), %rax
	movq	-536(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	configure_handshake_ssl
	cmpq	$0, -544(%rbp)
	je	.L345
	leaq	-468(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_get_id@PLT
	movl	-468(%rbp), %eax
	testl	%eax, %eax
	je	.L346
	movq	16(%rbp), %rdx
	movq	-504(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_add_session@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1488, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L393
.L346:
	movq	-192(%rbp), %rax
	movq	-544(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_session@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC50(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$1490, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L393
	movl	$0, -468(%rbp)
.L345:
	movq	-56(%rbp), %rax
	movl	$3, (%rax)
	movq	-528(%rbp), %rax
	movl	528(%rax), %eax
	testl	%eax, %eax
	jne	.L349
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
.L349:
	movq	-8(%rbp), %rax
	leaq	.LC51(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1511, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L394
	movq	-16(%rbp), %rax
	leaq	.LC52(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1512, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L394
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$102, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$102, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_connect_state@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_accept_state@PLT
	movq	-528(%rbp), %rax
	movl	528(%rax), %eax
	testl	%eax, %eax
	je	.L352
	movq	-192(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	movq	-144(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	jmp	.L353
.L352:
	movq	-192(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	movl	%eax, %esi
	leaq	.LC23(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1528, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L395
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	movl	%eax, %esi
	leaq	.LC23(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1529, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L395
	movq	-144(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
.L353:
	leaq	.LC55(%rip), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	CRYPTO_get_ex_new_index@PLT
	movl	%eax, ex_data_idx(%rip)
	movl	ex_data_idx(%rip), %esi
	leaq	.LC23(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1535, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L396
	movl	ex_data_idx(%rip), %ecx
	movq	-144(%rbp), %rax
	leaq	-224(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	SSL_set_ex_data@PLT
	movl	%eax, %esi
	leaq	.LC12(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1536, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L396
	movl	ex_data_idx(%rip), %ecx
	movq	-192(%rbp), %rax
	leaq	-256(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	SSL_set_ex_data@PLT
	movl	%eax, %esi
	leaq	.LC12(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1537, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L396
	movq	-144(%rbp), %rax
	leaq	info_cb(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_info_callback@PLT
	movq	-192(%rbp), %rax
	leaq	info_cb(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_info_callback@PLT
	movl	$1, -148(%rbp)
	movl	$3, -100(%rbp)
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -72(%rbp)
.L375:
	cmpl	$0, -20(%rbp)
	je	.L358
	movl	-32(%rbp), %edx
	leaq	-192(%rbp), %rcx
	movq	-528(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_connect_step
	movl	-100(%rbp), %ecx
	movl	-148(%rbp), %eax
	movl	$1, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	handshake_status
	movl	%eax, -36(%rbp)
	movl	-100(%rbp), %eax
	cmpl	$3, %eax
	jne	.L359
	movl	$1, -100(%rbp)
	jmp	.L359
.L358:
	movl	-32(%rbp), %edx
	leaq	-144(%rbp), %rcx
	movq	-528(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_connect_step
	movl	-148(%rbp), %ecx
	movl	-100(%rbp), %eax
	movl	$0, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	handshake_status
	movl	%eax, -36(%rbp)
.L359:
	cmpl	$4, -36(%rbp)
	je	.L360
	cmpl	$4, -36(%rbp)
	ja	.L375
	cmpl	$3, -36(%rbp)
	je	.L362
	cmpl	$3, -36(%rbp)
	ja	.L375
	cmpl	$2, -36(%rbp)
	je	.L363
	cmpl	$2, -36(%rbp)
	ja	.L375
	cmpl	$0, -36(%rbp)
	je	.L364
	cmpl	$1, -36(%rbp)
	je	.L365
	jmp	.L361
.L364:
	movl	$0, -24(%rbp)
	movl	-32(%rbp), %edx
	movq	-528(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	next_phase
	movl	%eax, -32(%rbp)
	cmpl	$6, -32(%rbp)
	jne	.L366
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L343
.L366:
	movl	$1, -100(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -148(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L361
.L365:
	movq	-56(%rbp), %rax
	movl	$2, (%rax)
	jmp	.L343
.L363:
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L343
.L362:
	movq	-56(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L343
.L360:
	movq	-528(%rbp), %rax
	movl	528(%rax), %eax
	testl	%eax, %eax
	je	.L367
	movl	$0, %edi
	call	time@PLT
	subq	-72(%rbp), %rax
	cmpq	$3, %rax
	jle	.L368
	movq	-56(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L343
.L368:
	cmpl	$0, -20(%rbp)
	je	.L369
	movl	-100(%rbp), %eax
	cmpl	$1, %eax
	je	.L370
.L369:
	cmpl	$0, -20(%rbp)
	jne	.L397
	movl	-148(%rbp), %eax
	cmpl	$1, %eax
	jne	.L397
.L370:
	xorl	$1, -20(%rbp)
	jmp	.L397
.L367:
	movl	-24(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -24(%rbp)
	cmpl	$1999, %eax
	jle	.L372
	movq	-56(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L343
.L372:
	cmpl	$0, -20(%rbp)
	je	.L373
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	jne	.L373
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -28(%rbp)
	cmpl	$1, %eax
	jle	.L371
	movq	-56(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L343
.L373:
	xorl	$1, -20(%rbp)
	jmp	.L397
.L371:
.L397:
	nop
.L361:
	jmp	.L375
.L393:
	nop
	jmp	.L343
.L394:
	nop
	jmp	.L343
.L395:
	nop
	jmp	.L343
.L396:
	nop
.L343:
	movl	-224(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 16(%rax)
	movl	-220(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 20(%rax)
	movl	-248(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 24(%rax)
	movl	-256(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	-252(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	-216(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	movq	-56(%rbp), %rdx
	movl	%eax, 28(%rdx)
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	movq	-56(%rbp), %rdx
	movl	%eax, 32(%rdx)
	movl	-208(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_session@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L376
	leaq	-464(%rbp), %rdx
	leaq	-456(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_get0_ticket@PLT
	leaq	-468(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_get_id@PLT
	movq	%rax, -48(%rbp)
.L376:
	movq	-456(%rbp), %rax
	testq	%rax, %rax
	je	.L377
	movq	-464(%rbp), %rax
	testq	%rax, %rax
	jne	.L378
.L377:
	movq	-56(%rbp), %rax
	movl	$2, 40(%rax)
	jmp	.L379
.L378:
	movq	-56(%rbp), %rax
	movl	$1, 40(%rax)
.L379:
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_current_compression@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 44(%rax)
	cmpq	$0, -48(%rbp)
	je	.L380
	movl	-468(%rbp), %eax
	testl	%eax, %eax
	jne	.L381
.L380:
	movq	-56(%rbp), %rax
	movl	$2, 144(%rax)
	jmp	.L382
.L381:
	movq	-56(%rbp), %rax
	movl	$1, 144(%rax)
.L382:
	movl	-212(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-536(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L383
	movl	n_retries(%rip), %eax
	cmpl	$-1, %eax
	je	.L383
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
.L383:
	movq	-192(%rbp), %rax
	leaq	-484(%rbp), %rdx
	leaq	-480(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_get0_next_proto_negotiated@PLT
	movl	-484(%rbp), %eax
	movl	%eax, %edx
	movq	-480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dup_str
	movq	-56(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-144(%rbp), %rax
	leaq	-484(%rbp), %rdx
	leaq	-480(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_get0_next_proto_negotiated@PLT
	movl	-484(%rbp), %eax
	movl	%eax, %edx
	movq	-480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dup_str
	movq	-56(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-192(%rbp), %rax
	leaq	-484(%rbp), %rdx
	leaq	-480(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_get0_alpn_selected@PLT
	movl	-484(%rbp), %eax
	movl	%eax, %edx
	movq	-480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dup_str
	movq	-56(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-144(%rbp), %rax
	leaq	-484(%rbp), %rdx
	leaq	-480(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_get0_alpn_selected@PLT
	movl	-484(%rbp), %eax
	movl	%eax, %edx
	movq	-480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dup_str
	movq	-56(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_session@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L384
	leaq	-464(%rbp), %rdx
	leaq	-456(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_get0_ticket_appdata@PLT
	movq	-464(%rbp), %rsi
	movq	-456(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$1687, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 160(%rdx)
.L384:
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_session_reused@PLT
	movq	-56(%rbp), %rdx
	movl	%eax, 88(%rdx)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_session_reused@PLT
	movq	-56(%rbp), %rdx
	movl	%eax, 92(%rdx)
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_current_cipher@PLT
	movq	%rax, %rdi
	call	SSL_CIPHER_get_name@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dup_str
	movq	-56(%rbp), %rdx
	movq	%rax, 152(%rdx)
	cmpq	$0, 24(%rbp)
	je	.L385
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get1_session@PLT
	movq	24(%rbp), %rdx
	movq	%rax, (%rdx)
.L385:
	cmpq	$0, 32(%rbp)
	je	.L386
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_session@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L386
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_dup@PLT
	movq	32(%rbp), %rdx
	movq	%rax, (%rdx)
.L386:
	movq	-192(%rbp), %rax
	leaq	-496(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$109, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	je	.L387
	movq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	pkey_type
	movq	-56(%rbp), %rdx
	movl	%eax, 96(%rdx)
	movq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L387:
	movq	-56(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$108, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movq	-56(%rbp), %rax
	leaq	124(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$108, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movq	-56(%rbp), %rax
	leaq	108(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_get_peer_signature_type_nid@PLT
	movq	-56(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_get_peer_signature_type_nid@PLT
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get0_peer_CA_list@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L388
	movq	-56(%rbp), %rax
	movq	$0, 136(%rax)
	jmp	.L389
.L388:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_dup_CA_list@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 136(%rdx)
.L389:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get0_peer_CA_list@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L390
	movq	-56(%rbp), %rax
	movq	$0, 112(%rax)
	jmp	.L391
.L390:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_dup_CA_list@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 112(%rdx)
.L391:
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	peer_pkey_type
	movq	-56(%rbp), %rdx
	movl	%eax, 100(%rdx)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	peer_pkey_type
	movq	-56(%rbp), %rdx
	movl	%eax, 120(%rdx)
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	ctx_data_free_data
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	ctx_data_free_data
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	ctx_data_free_data
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	peer_free_data
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	peer_free_data
	movq	-56(%rbp), %rax
.L392:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	do_handshake_internal, .-do_handshake_internal
	.globl	do_handshake
	.type	do_handshake, @function
do_handshake:
.LFB770:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-80(%rbp), %rax
	leaq	24(%rax), %r8
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	leaq	-24(%rbp), %rdi
	pushq	%rdi
	leaq	-16(%rbp), %rdi
	pushq	%rdi
	pushq	$0
	movl	$0, %r9d
	movq	%rax, %rdi
	call	do_handshake_internal
	addq	$32, %rsp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L404
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$1, %eax
	jne	.L404
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	je	.L404
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L402
	movq	-8(%rbp), %rax
	movl	$4, (%rax)
	jmp	.L401
.L402:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	HANDSHAKE_RESULT_free@PLT
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	leaq	224(%rax), %r8
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	%rsi
	movq	%rdi, %r9
	movl	$0, %esi
	movq	%rax, %rdi
	call	do_handshake_internal
	addq	$32, %rsp
	movq	%rax, -8(%rbp)
	jmp	.L401
.L404:
	nop
.L401:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	do_handshake, .-do_handshake
	.section	.rodata
	.align 4
	.type	peer_buffer_size.0, @object
	.size	peer_buffer_size.0, 4
peer_buffer_size.0:
	.long	65536
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

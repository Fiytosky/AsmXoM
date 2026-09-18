	.file	"t1_enc.c"
	.text
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
	.string	"../ssl/t1_enc.c"
.LC1:
	.string	"TLS1-PRF"
.LC2:
	.string	"digest"
.LC3:
	.string	"secret"
.LC4:
	.string	"seed"
	.text
	.type	tls1_PRF, @function
tls1_PRF:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$472, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -392(%rbp)
	movq	%rsi, -400(%rbp)
	movq	%rdx, -408(%rbp)
	movq	%rcx, -416(%rbp)
	movq	%r8, -424(%rbp)
	movq	%r9, -432(%rbp)
	movq	-392(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_prf_md@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
	leaq	-384(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L14
	cmpl	$0, 88(%rbp)
	je	.L15
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$43, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-392(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L16
.L15:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L16:
	movl	$0, %eax
	jmp	.L23
.L14:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	movq	1096(%rax), %rdx
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_fetch@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L24
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	cmpq	$0, -24(%rbp)
	je	.L25
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-480(%rbp), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-480(%rbp), %rax
	movq	64(%rbp), %rcx
	movq	56(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-480(%rbp), %rax
	movq	-408(%rbp), %rcx
	movq	-400(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-480(%rbp), %rax
	movq	-424(%rbp), %rcx
	movq	-416(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-480(%rbp), %rax
	movq	16(%rbp), %rcx
	movq	-432(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-480(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-480(%rbp), %rax
	movq	48(%rbp), %rcx
	movq	40(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-384(%rbp), %rcx
	movq	80(%rbp), %rdx
	movq	72(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	testl	%eax, %eax
	je	.L26
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	$1, %eax
	jmp	.L23
.L24:
	nop
	jmp	.L19
.L25:
	nop
	jmp	.L19
.L26:
	nop
.L19:
	cmpl	$0, 88(%rbp)
	je	.L21
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$81, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-392(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L22
.L21:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$83, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L22:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	$0, %eax
.L23:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	tls1_PRF, .-tls1_PRF
	.section	.rodata
.LC5:
	.string	"key expansion"
	.text
	.type	tls1_generate_key_block, @function
tls1_generate_key_block:
.LFB730:
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
	movq	2184(%rax), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	leaq	80(%rax), %rdi
	movq	-24(%rbp), %rax
	leaq	328(%rax), %r8
	movq	-24(%rbp), %rax
	leaq	296(%rax), %rdx
	leaq	.LC5(%rip), %rsi
	movq	-24(%rbp), %rax
	pushq	$1
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	pushq	%rcx
	pushq	%rdi
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$32
	movq	%r8, %r9
	movl	$32, %r8d
	movq	%rdx, %rcx
	movl	$13, %edx
	movq	%rax, %rdi
	call	tls1_PRF
	addq	$80, %rsp
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	tls1_generate_key_block, .-tls1_generate_key_block
	.type	tls_iv_length_within_key_block, @function
tls_iv_length_within_key_block:
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
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$6, %eax
	jne	.L30
	movl	$4, %eax
	jmp	.L31
.L30:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$7, %eax
	jne	.L32
	movl	$4, %eax
	jmp	.L31
.L32:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	tls_iv_length_within_key_block, .-tls_iv_length_within_key_block
	.section	.rodata
.LC6:
	.string	"CHACHA20-POLY1305"
	.text
	.globl	tls1_change_cipher_state
	.type	tls1_change_cipher_state, @function
tls1_change_cipher_state:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movl	%esi, -156(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -40(%rbp)
	movq	-152(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-152(%rbp), %rax
	movq	776(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-152(%rbp), %rax
	movl	784(%rax), %eax
	movl	%eax, -76(%rbp)
	movq	-152(%rbp), %rax
	movq	800(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-152(%rbp), %rax
	movq	760(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-152(%rbp), %rax
	movq	792(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	cltq
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tls_iv_length_within_key_block
	movl	%eax, -124(%rbp)
	cmpl	$0, -124(%rbp)
	jns	.L34
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$147, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L35
.L34:
	movl	-124(%rbp), %eax
	cltq
	movq	%rax, -136(%rbp)
	cmpl	$18, -156(%rbp)
	je	.L36
	cmpl	$33, -156(%rbp)
	jne	.L37
.L36:
	movq	-88(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-104(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-120(%rbp), %rax
	addq	%rax, %rax
	addq	%rax, -32(%rbp)
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-136(%rbp), %rax
	addq	%rax, %rax
	addq	%rax, -32(%rbp)
	jmp	.L38
.L37:
	movq	-104(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-104(%rbp), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	addq	%rax, -32(%rbp)
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-120(%rbp), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	addq	%rax, -32(%rbp)
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-136(%rbp), %rax
	addq	%rax, -32(%rbp)
.L38:
	movq	-152(%rbp), %rax
	movq	752(%rax), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L39
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$170, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L35
.L39:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$6, %eax
	je	.L40
	cmpl	$7, %eax
	je	.L41
	jmp	.L65
.L40:
	movq	$16, -40(%rbp)
	jmp	.L43
.L41:
	movq	-152(%rbp), %rax
	movq	704(%rax), %rax
	movl	36(%rax), %eax
	andl	$196608, %eax
	testl	%eax, %eax
	je	.L44
	movq	$8, -40(%rbp)
	jmp	.L43
.L44:
	movq	$16, -40(%rbp)
	jmp	.L43
.L65:
	leaq	.LC6(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_is_a@PLT
	testl	%eax, %eax
	je	.L46
	movq	$16, -40(%rbp)
	jmp	.L66
.L46:
	movq	-152(%rbp), %rax
	movq	792(%rax), %rax
	movq	%rax, -40(%rbp)
.L66:
	nop
.L43:
	movl	-156(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L48
	movq	-152(%rbp), %rax
	movl	2684(%rax), %eax
	testl	%eax, %eax
	je	.L49
	movq	-152(%rbp), %rax
	movq	288(%rax), %rax
	orb	$1, %ah
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, 288(%rax)
	jmp	.L50
.L49:
	movq	-152(%rbp), %rax
	movq	288(%rax), %rax
	andb	$-2, %ah
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, 288(%rax)
.L50:
	movq	-152(%rbp), %rax
	movq	704(%rax), %rax
	movl	64(%rax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L51
	movq	-152(%rbp), %rax
	movl	1280(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	movl	%edx, 1280(%rax)
	jmp	.L52
.L51:
	movq	-152(%rbp), %rax
	movl	1280(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	movl	%edx, 1280(%rax)
.L52:
	movq	-152(%rbp), %rax
	movq	704(%rax), %rax
	movl	64(%rax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	je	.L53
	movq	-152(%rbp), %rax
	movl	1280(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	movl	%edx, 1280(%rax)
	jmp	.L54
.L53:
	movq	-152(%rbp), %rax
	movl	1280(%rax), %eax
	andl	$-5, %eax
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	movl	%edx, 1280(%rax)
.L54:
	movl	$0, -44(%rbp)
	jmp	.L55
.L48:
	movq	-152(%rbp), %rax
	movl	2684(%rax), %eax
	testl	%eax, %eax
	je	.L56
	movq	-152(%rbp), %rax
	movq	288(%rax), %rax
	orb	$4, %ah
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, 288(%rax)
	jmp	.L57
.L56:
	movq	-152(%rbp), %rax
	movq	288(%rax), %rax
	andb	$-5, %ah
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, 288(%rax)
.L57:
	movq	-152(%rbp), %rax
	movq	704(%rax), %rax
	movl	64(%rax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L58
	movq	-152(%rbp), %rax
	movl	1280(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	movl	%edx, 1280(%rax)
	jmp	.L59
.L58:
	movq	-152(%rbp), %rax
	movl	1280(%rax), %eax
	andl	$-3, %eax
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	movl	%edx, 1280(%rax)
.L59:
	movq	-152(%rbp), %rax
	movq	704(%rax), %rax
	movl	64(%rax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	je	.L60
	movq	-152(%rbp), %rax
	movl	1280(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	movl	%edx, 1280(%rax)
	jmp	.L61
.L60:
	movq	-152(%rbp), %rax
	movl	1280(%rax), %eax
	andl	$-9, %eax
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	movl	%edx, 1280(%rax)
.L61:
	movl	$1, -44(%rbp)
.L55:
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L62
	movl	-156(%rbp), %edx
	movq	-152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	dtls1_increment_epoch@PLT
.L62:
	movq	-152(%rbp), %rax
	movl	72(%rax), %esi
	movl	-44(%rbp), %edx
	movq	-152(%rbp), %rax
	pushq	$0
	pushq	-56(%rbp)
	pushq	-72(%rbp)
	movl	-76(%rbp), %ecx
	pushq	%rcx
	pushq	-40(%rbp)
	pushq	-64(%rbp)
	pushq	-96(%rbp)
	pushq	-8(%rbp)
	pushq	-136(%rbp)
	pushq	-24(%rbp)
	pushq	-112(%rbp)
	pushq	-16(%rbp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$3, %ecx
	movq	%rax, %rdi
	call	ssl_set_new_record_layer@PLT
	addq	$96, %rsp
	testl	%eax, %eax
	je	.L67
	movq	$0, -144(%rbp)
	movl	$1, %eax
	jmp	.L64
.L67:
	nop
.L35:
	movl	$0, %eax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	tls1_change_cipher_state, .-tls1_change_cipher_state
	.globl	tls1_setup_key_block
	.type	tls1_setup_key_block, @function
tls1_setup_key_block:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movl	$0, -68(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	-88(%rbp), %rax
	movq	752(%rax), %rax
	testq	%rax, %rax
	je	.L69
	movl	$1, %eax
	jmp	.L76
.L69:
	movq	-88(%rbp), %rax
	movl	2684(%rax), %edi
	movq	-88(%rbp), %rax
	movq	2184(%rax), %rsi
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-80(%rbp), %r9
	leaq	-68(%rbp), %r8
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	pushq	%rdi
	leaq	-64(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ssl_cipher_get_evp@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L71
	movq	-88(%rbp), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	ossl_statem_send_fatal@PLT
	movl	$0, %eax
	jmp	.L76
.L71:
	movq	-88(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, %rdi
	call	ssl_evp_cipher_free@PLT
	movq	-48(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 768(%rax)
	movq	-88(%rbp), %rax
	movq	776(%rax), %rax
	movq	%rax, %rdi
	call	ssl_evp_md_free@PLT
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 776(%rax)
	movl	-68(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 784(%rax)
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 792(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	tls_iv_length_within_key_block
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L72
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$285, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L76
.L72:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	salq	-16(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_cleanup_key_block@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$293, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L73
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$294, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L74
.L73:
	movq	-88(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 752(%rax)
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 760(%rax)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_generate_key_block
	testl	%eax, %eax
	je	.L77
	movq	$0, -40(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L74
.L77:
	nop
.L74:
	movl	-4(%rbp), %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	tls1_setup_key_block, .-tls1_setup_key_block
	.globl	tls1_final_finish_mac
	.type	tls1_final_finish_mac, @function
tls1_final_finish_mac:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	$12, -8(%rbp)
	movq	-88(%rbp), %rax
	movq	704(%rax), %rax
	movl	28(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L79
	movq	$32, -8(%rbp)
.L79:
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl3_digest_cached_records@PLT
	testl	%eax, %eax
	jne	.L80
	movl	$0, %eax
	jmp	.L84
.L80:
	leaq	-16(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$64, %edx
	movq	%rax, %rdi
	call	ssl_handshake_hash@PLT
	testl	%eax, %eax
	jne	.L82
	movl	$0, %eax
	jmp	.L84
.L82:
	movq	-88(%rbp), %rax
	movq	2184(%rax), %rax
	movq	8(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	2184(%rax), %rax
	leaq	80(%rax), %r8
	movq	-16(%rbp), %r10
	leaq	-80(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	pushq	$1
	pushq	-8(%rbp)
	pushq	-112(%rbp)
	pushq	%rdi
	pushq	%r8
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movq	%r10, %r8
	movq	%rax, %rdi
	call	tls1_PRF
	addq	$80, %rsp
	testl	%eax, %eax
	jne	.L83
	movl	$0, %eax
	jmp	.L84
.L83:
	movq	-16(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	tls1_final_finish_mac, .-tls1_final_finish_mac
	.section	.rodata
.LC7:
	.string	"extended master secret"
.LC8:
	.string	"master secret"
	.text
	.globl	tls1_generate_master_secret
	.type	tls1_generate_master_secret, @function
tls1_generate_master_secret:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	%r8, -200(%rbp)
	movq	-168(%rbp), %rax
	movq	2184(%rax), %rax
	movl	888(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L86
	movq	-168(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ssl3_digest_cached_records@PLT
	testl	%eax, %eax
	je	.L87
	leaq	-24(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%rdx, %rcx
	movl	$128, %edx
	movq	%rax, %rdi
	call	ssl_handshake_hash@PLT
	testl	%eax, %eax
	jne	.L88
.L87:
	movl	$0, %eax
	jmp	.L92
.L88:
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	leaq	.LC7(%rip), %rsi
	movq	-168(%rbp), %rax
	pushq	$1
	pushq	$48
	pushq	-176(%rbp)
	pushq	-192(%rbp)
	pushq	-184(%rbp)
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$22, %edx
	movq	%rax, %rdi
	call	tls1_PRF
	addq	$80, %rsp
	testl	%eax, %eax
	jne	.L90
	movl	$0, %eax
	jmp	.L92
.L90:
	movq	-24(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	jmp	.L91
.L86:
	movq	-168(%rbp), %rax
	leaq	296(%rax), %rcx
	movq	-168(%rbp), %rax
	leaq	328(%rax), %rdx
	leaq	.LC8(%rip), %rsi
	movq	-168(%rbp), %rax
	pushq	$1
	pushq	$48
	pushq	-176(%rbp)
	pushq	-192(%rbp)
	pushq	-184(%rbp)
	pushq	$0
	pushq	$0
	pushq	$32
	pushq	%rcx
	pushq	$0
	movl	$0, %r9d
	movl	$32, %r8d
	movq	%rdx, %rcx
	movl	$13, %edx
	movq	%rax, %rdi
	call	tls1_PRF
	addq	$80, %rsp
	testl	%eax, %eax
	jne	.L91
	movl	$0, %eax
	jmp	.L92
.L91:
	movq	$0, -16(%rbp)
	movq	-200(%rbp), %rax
	movq	$48, (%rax)
	movl	$1, %eax
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	tls1_generate_master_secret, .-tls1_generate_master_secret
	.section	.rodata
.LC9:
	.string	"client finished"
.LC10:
	.string	"server finished"
	.text
	.globl	tls1_export_keying_material
	.type	tls1_export_keying_material, @function
tls1_export_keying_material:
.LFB736:
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
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$65535, 16(%rbp)
	jbe	.L94
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$436, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L95
.L94:
	movq	-72(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, 24(%rbp)
	je	.L96
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
.L96:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$450, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L107
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-72(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	leaq	328(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	addq	$32, -32(%rbp)
	movq	-40(%rbp), %rax
	leaq	296(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	addq	$32, -32(%rbp)
	cmpl	$0, 24(%rbp)
	je	.L99
	movq	16(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addq	$1, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movb	%dl, (%rax)
	addq	$1, -32(%rbp)
	cmpq	$0, 16(%rbp)
	jne	.L100
	cmpq	$0, -80(%rbp)
	je	.L99
.L100:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	16(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L99:
	leaq	.LC9(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$15, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L108
	leaq	.LC10(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$15, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L109
	leaq	.LC8(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$13, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L110
	leaq	.LC7(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$22, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L111
	leaq	.LC5(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$13, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L112
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	leaq	80(%rax), %rdi
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	$0
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	pushq	%rcx
	pushq	%rdi
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	tls1_PRF
	addq	$80, %rsp
	movl	%eax, -12(%rbp)
	jmp	.L98
.L108:
	nop
	jmp	.L102
.L109:
	nop
	jmp	.L102
.L110:
	nop
	jmp	.L102
.L111:
	nop
	jmp	.L102
.L112:
	nop
.L102:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$503, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$367, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L98
.L107:
	nop
.L98:
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$505, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-12(%rbp), %eax
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	tls1_export_keying_material, .-tls1_export_keying_material
	.globl	tls1_alert_code
	.type	tls1_alert_code, @function
tls1_alert_code:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$120, -4(%rbp)
	je	.L114
	cmpl	$120, -4(%rbp)
	jg	.L115
	cmpl	$116, -4(%rbp)
	je	.L116
	cmpl	$116, -4(%rbp)
	jg	.L115
	cmpl	$115, -4(%rbp)
	je	.L117
	cmpl	$115, -4(%rbp)
	jg	.L115
	cmpl	$114, -4(%rbp)
	je	.L118
	cmpl	$114, -4(%rbp)
	jg	.L115
	cmpl	$113, -4(%rbp)
	je	.L119
	cmpl	$113, -4(%rbp)
	jg	.L115
	cmpl	$112, -4(%rbp)
	je	.L120
	cmpl	$112, -4(%rbp)
	jg	.L115
	cmpl	$111, -4(%rbp)
	je	.L121
	cmpl	$111, -4(%rbp)
	jg	.L115
	cmpl	$110, -4(%rbp)
	je	.L122
	cmpl	$110, -4(%rbp)
	jg	.L115
	cmpl	$109, -4(%rbp)
	je	.L123
	cmpl	$109, -4(%rbp)
	jg	.L115
	cmpl	$100, -4(%rbp)
	je	.L124
	cmpl	$100, -4(%rbp)
	jg	.L115
	cmpl	$90, -4(%rbp)
	je	.L125
	cmpl	$90, -4(%rbp)
	jg	.L115
	cmpl	$86, -4(%rbp)
	je	.L126
	cmpl	$86, -4(%rbp)
	jg	.L115
	cmpl	$80, -4(%rbp)
	je	.L127
	cmpl	$80, -4(%rbp)
	jg	.L115
	cmpl	$71, -4(%rbp)
	je	.L128
	cmpl	$71, -4(%rbp)
	jg	.L115
	cmpl	$70, -4(%rbp)
	je	.L129
	cmpl	$70, -4(%rbp)
	jg	.L115
	cmpl	$60, -4(%rbp)
	je	.L130
	cmpl	$60, -4(%rbp)
	jg	.L115
	cmpl	$51, -4(%rbp)
	je	.L131
	cmpl	$51, -4(%rbp)
	jg	.L115
	cmpl	$50, -4(%rbp)
	je	.L132
	cmpl	$50, -4(%rbp)
	jg	.L115
	cmpl	$49, -4(%rbp)
	je	.L133
	cmpl	$49, -4(%rbp)
	jg	.L115
	cmpl	$48, -4(%rbp)
	je	.L134
	cmpl	$48, -4(%rbp)
	jg	.L115
	cmpl	$47, -4(%rbp)
	je	.L135
	cmpl	$47, -4(%rbp)
	jg	.L115
	cmpl	$46, -4(%rbp)
	je	.L136
	cmpl	$46, -4(%rbp)
	jg	.L115
	cmpl	$45, -4(%rbp)
	je	.L137
	cmpl	$45, -4(%rbp)
	jg	.L115
	cmpl	$44, -4(%rbp)
	je	.L138
	cmpl	$44, -4(%rbp)
	jg	.L115
	cmpl	$43, -4(%rbp)
	je	.L139
	cmpl	$43, -4(%rbp)
	jg	.L115
	cmpl	$42, -4(%rbp)
	je	.L140
	cmpl	$42, -4(%rbp)
	jg	.L115
	cmpl	$41, -4(%rbp)
	je	.L141
	cmpl	$41, -4(%rbp)
	jg	.L115
	cmpl	$40, -4(%rbp)
	je	.L142
	cmpl	$40, -4(%rbp)
	jg	.L115
	cmpl	$30, -4(%rbp)
	je	.L143
	cmpl	$30, -4(%rbp)
	jg	.L115
	cmpl	$22, -4(%rbp)
	je	.L144
	cmpl	$22, -4(%rbp)
	jg	.L115
	cmpl	$21, -4(%rbp)
	je	.L145
	cmpl	$21, -4(%rbp)
	jg	.L115
	cmpl	$20, -4(%rbp)
	je	.L146
	cmpl	$20, -4(%rbp)
	jg	.L115
	cmpl	$0, -4(%rbp)
	je	.L147
	cmpl	$10, -4(%rbp)
	je	.L148
	jmp	.L115
.L147:
	movl	$0, %eax
	jmp	.L149
.L148:
	movl	$10, %eax
	jmp	.L149
.L146:
	movl	$20, %eax
	jmp	.L149
.L145:
	movl	$21, %eax
	jmp	.L149
.L144:
	movl	$22, %eax
	jmp	.L149
.L143:
	movl	$30, %eax
	jmp	.L149
.L142:
	movl	$40, %eax
	jmp	.L149
.L141:
	movl	$-1, %eax
	jmp	.L149
.L140:
	movl	$42, %eax
	jmp	.L149
.L139:
	movl	$43, %eax
	jmp	.L149
.L138:
	movl	$44, %eax
	jmp	.L149
.L137:
	movl	$45, %eax
	jmp	.L149
.L136:
	movl	$46, %eax
	jmp	.L149
.L135:
	movl	$47, %eax
	jmp	.L149
.L134:
	movl	$48, %eax
	jmp	.L149
.L133:
	movl	$49, %eax
	jmp	.L149
.L132:
	movl	$50, %eax
	jmp	.L149
.L131:
	movl	$51, %eax
	jmp	.L149
.L130:
	movl	$60, %eax
	jmp	.L149
.L129:
	movl	$70, %eax
	jmp	.L149
.L128:
	movl	$71, %eax
	jmp	.L149
.L127:
	movl	$80, %eax
	jmp	.L149
.L125:
	movl	$90, %eax
	jmp	.L149
.L124:
	movl	$100, %eax
	jmp	.L149
.L122:
	movl	$110, %eax
	jmp	.L149
.L121:
	movl	$111, %eax
	jmp	.L149
.L120:
	movl	$112, %eax
	jmp	.L149
.L119:
	movl	$113, %eax
	jmp	.L149
.L118:
	movl	$114, %eax
	jmp	.L149
.L117:
	movl	$115, %eax
	jmp	.L149
.L126:
	movl	$86, %eax
	jmp	.L149
.L114:
	movl	$120, %eax
	jmp	.L149
.L116:
	movl	$40, %eax
	jmp	.L149
.L123:
	movl	$40, %eax
	jmp	.L149
.L115:
	movl	$-1, %eax
.L149:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	tls1_alert_code, .-tls1_alert_code
	.section	.rodata
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 9
__func__.3:
	.string	"tls1_PRF"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 25
__func__.2:
	.string	"tls1_change_cipher_state"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 21
__func__.1:
	.string	"tls1_setup_key_block"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 28
__func__.0:
	.string	"tls1_export_keying_material"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

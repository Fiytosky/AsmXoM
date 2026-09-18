	.file	"handshake_srp.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"../test/helpers/handshake_srp.c"
	.text
	.type	client_srp_cb, @function
client_srp_cb:
.LFB517:
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
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$25, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	client_srp_cb, .-client_srp_cb
	.section	.rodata
.LC1:
	.string	"2048"
	.text
	.type	server_srp_cb, @function
server_srp_cb:
.LFB518:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_srp_username@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L4
	movl	$2, %eax
	jmp	.L5
.L4:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_srp_server_param_pw@PLT
	testl	%eax, %eax
	jns	.L6
	movq	-32(%rbp), %rax
	movl	$80, (%rax)
	movl	$2, %eax
	jmp	.L5
.L6:
	movl	$0, %eax
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	server_srp_cb, .-server_srp_cb
	.section	.rodata
.LC2:
	.string	"server2_ctx"
	.align 8
.LC3:
	.string	"SSL_CTX_set_srp_username(client_ctx, extra->client.srp_user)"
	.text
	.globl	configure_handshake_ctx_for_srp
	.type	configure_handshake_ctx_for_srp, @function
configure_handshake_ctx_for_srp:
.LFB519:
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
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L8
	leaq	server_srp_cb(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_srp_username_callback@PLT
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$51, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$52, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L9
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L10
.L9:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$54, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$55, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 40(%rax)
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_srp_cb_arg@PLT
.L8:
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	je	.L12
	movq	-16(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$63, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L11
.L13:
	leaq	server_srp_cb(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_srp_username_callback@PLT
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$66, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$67, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L14
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L15
.L14:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$69, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$70, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 40(%rax)
	movl	$0, %eax
	jmp	.L11
.L15:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_srp_cb_arg@PLT
.L12:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L16
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_srp_username@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$78, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L17
	movl	$0, %eax
	jmp	.L11
.L17:
	leaq	client_srp_cb(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_srp_client_pwd_callback@PLT
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$82, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	16(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	16(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L18
	movl	$0, %eax
	jmp	.L11
.L18:
	movq	16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_srp_cb_arg@PLT
.L16:
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	configure_handshake_ctx_for_srp, .-configure_handshake_ctx_for_srp
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

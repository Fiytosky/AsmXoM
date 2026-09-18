	.file	"quic_tls.c"
	.text
	.type	OSSL_FUNC_rlayer_msg_callback, @function
OSSL_FUNC_rlayer_msg_callback:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	OSSL_FUNC_rlayer_msg_callback, .-OSSL_FUNC_rlayer_msg_callback
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
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
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
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
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB652:
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
.LFE652:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB653:
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
.LFE653:
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
	.string	"../ssl/quic/quic_tls.c"
.LC1:
	.string	"AES-128-GCM"
.LC2:
	.string	"AES-256-GCM"
.LC3:
	.string	"CHACHA20-POLY1305"
	.text
	.type	quic_new_record_layer, @function
quic_new_record_layer:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movl	%r9d, -64(%rbp)
	movl	16(%rbp), %eax
	movw	%ax, -68(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$105, %edx
	movq	%rax, %rsi
	movl	$96, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L16
	cmpq	$0, -24(%rbp)
	je	.L17
	movq	-24(%rbp), %rax
	movl	$80, 56(%rax)
.L17:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpq	$0, -24(%rbp)
	je	.L18
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	168(%rax), %edx
	orl	$2, %edx
	movb	%dl, 168(%rax)
.L18:
	movl	$0, %eax
	jmp	.L19
.L16:
	movq	-24(%rbp), %rax
	movq	208(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	-64(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	144(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	quic_set1_bio
	testl	%eax, %eax
	jne	.L20
	cmpq	$0, -24(%rbp)
	je	.L21
	movq	-24(%rbp), %rax
	movl	$80, 56(%rax)
.L21:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$118, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpq	$0, -24(%rbp)
	je	.L51
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	168(%rax), %edx
	orl	$2, %edx
	movb	%dl, 168(%rax)
	jmp	.L51
.L20:
	movq	-24(%rbp), %rax
	movq	200(%rbp), %rdx
	movq	%rdx, 88(%rax)
	movq	216(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, 192(%rbp)
	je	.L24
	jmp	.L25
.L28:
	movq	192(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L52
	movq	192(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rlayer_msg_callback
	movq	-24(%rbp), %rdx
	movq	%rax, 80(%rdx)
	jmp	.L27
.L52:
	nop
.L27:
	addq	$16, 192(%rbp)
.L25:
	movq	192(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L28
.L24:
	cmpl	$3, -64(%rbp)
	je	.L29
	cmpl	$3, -64(%rbp)
	jg	.L30
	cmpl	$2, -64(%rbp)
	je	.L31
	cmpl	$2, -64(%rbp)
	jg	.L30
	cmpl	$0, -64(%rbp)
	je	.L32
	cmpl	$1, -64(%rbp)
	je	.L33
	jmp	.L30
.L32:
	movl	$1, %eax
	jmp	.L19
.L33:
	movl	$2, -4(%rbp)
	jmp	.L34
.L31:
	movl	$1, -4(%rbp)
	jmp	.L34
.L29:
	movl	$3, -4(%rbp)
	jmp	.L34
.L30:
	cmpq	$0, -24(%rbp)
	je	.L35
	movq	-24(%rbp), %rax
	movl	$80, 56(%rax)
.L35:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$155, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpq	$0, -24(%rbp)
	je	.L53
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	168(%rax), %edx
	orl	$2, %edx
	movb	%dl, 168(%rax)
	jmp	.L53
.L34:
	cmpl	$0, -60(%rbp)
	jne	.L37
	movl	$0, -8(%rbp)
	jmp	.L38
.L37:
	movl	$1, -8(%rbp)
.L38:
	leaq	.LC1(%rip), %rdx
	movq	88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_is_a@PLT
	testl	%eax, %eax
	je	.L39
	movl	$1, -12(%rbp)
	jmp	.L40
.L39:
	leaq	.LC2(%rip), %rdx
	movq	88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_is_a@PLT
	testl	%eax, %eax
	je	.L41
	movl	$2, -12(%rbp)
	jmp	.L40
.L41:
	leaq	.LC3(%rip), %rdx
	movq	88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_is_a@PLT
	testl	%eax, %eax
	je	.L42
	movl	$3, -12(%rbp)
	jmp	.L40
.L42:
	cmpq	$0, -24(%rbp)
	je	.L43
	movq	-24(%rbp), %rax
	movl	$80, 56(%rax)
.L43:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$171, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$249, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpq	$0, -24(%rbp)
	je	.L54
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	168(%rax), %edx
	orl	$2, %edx
	movb	%dl, 168(%rax)
	jmp	.L54
.L40:
	movq	128(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_up_ref@PLT
	testl	%eax, %eax
	jne	.L45
	cmpq	$0, -24(%rbp)
	je	.L46
	movq	-24(%rbp), %rax
	movl	$80, 56(%rax)
.L46:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$178, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpq	$0, -24(%rbp)
	je	.L55
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	168(%rax), %edx
	orl	$2, %edx
	movb	%dl, 168(%rax)
	jmp	.L55
.L45:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	56(%rax), %r10
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rdi
	movq	32(%rbp), %r9
	movq	24(%rbp), %r8
	movq	128(%rbp), %rcx
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %eax
	subq	$8, %rsp
	pushq	%rdi
	movl	%eax, %edi
	call	*%r10
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L48
	cmpq	$0, -24(%rbp)
	je	.L49
	movq	-24(%rbp), %rax
	movl	$80, 56(%rax)
.L49:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$185, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpq	$0, -24(%rbp)
	je	.L50
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	168(%rax), %edx
	orl	$2, %edx
	movb	%dl, 168(%rax)
.L50:
	movq	128(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	jmp	.L23
.L48:
	movl	$1, %eax
	jmp	.L19
.L51:
	nop
	jmp	.L23
.L53:
	nop
	jmp	.L23
.L54:
	nop
	jmp	.L23
.L55:
	nop
.L23:
	movq	216(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	quic_free
	movl	$0, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	quic_new_record_layer, .-quic_new_record_layer
	.type	quic_free, @function
quic_free:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L57
	movl	$1, %eax
	jmp	.L58
.L57:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$203, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	quic_free, .-quic_free
	.type	quic_unprocessed_read_pending, @function
quic_unprocessed_read_pending:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	quic_unprocessed_read_pending, .-quic_unprocessed_read_pending
	.type	quic_processed_read_pending, @function
quic_processed_read_pending:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	quic_processed_read_pending, .-quic_processed_read_pending
	.type	quic_get_max_records, @function
quic_get_max_records:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movb	%al, -12(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	quic_get_max_records, .-quic_get_max_records
	.type	quic_write_records, @function
quic_write_records:
.LFB734:
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
	cmpq	$1, -56(%rbp)
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L66
	cmpq	$0, -40(%rbp)
	je	.L67
	movq	-40(%rbp), %rax
	movl	$80, 56(%rax)
.L67:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$250, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpq	$0, -40(%rbp)
	je	.L68
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movzbl	168(%rax), %edx
	orl	$2, %edx
	movb	%dl, 168(%rax)
.L68:
	movl	$-2, %eax
	jmp	.L93
.L66:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L70
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L71
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	jmp	.L72
.L71:
	movl	$23, %eax
.L72:
	movb	%al, -21(%rbp)
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$8, %eax
	movb	%al, -20(%rbp)
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movb	%al, -19(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	shrq	$8, %rax
	movb	%al, -18(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movb	%al, -17(%rbp)
	movq	-40(%rbp), %rax
	movq	80(%rax), %r10
	movq	-40(%rbp), %rax
	movq	88(%rax), %rdx
	leaq	-21(%rbp), %rax
	movq	%rdx, %r9
	movl	$5, %r8d
	movq	%rax, %rcx
	movl	$256, %edx
	movl	$772, %esi
	movl	$1, %edi
	call	*%r10
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L70
	movq	-40(%rbp), %rax
	movq	80(%rax), %r10
	movq	-40(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movq	%rax, %rcx
	movl	$257, %edx
	movl	$772, %esi
	movl	$1, %edi
	call	*%r10
.L70:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	$21, %eax
	je	.L74
	cmpl	$22, %eax
	je	.L75
	jmp	.L94
.L74:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$2, %rax
	je	.L77
	cmpq	$0, -40(%rbp)
	je	.L78
	movq	-40(%rbp), %rax
	movl	$80, 56(%rax)
.L78:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$294, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$384, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpq	$0, -40(%rbp)
	je	.L79
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movzbl	168(%rax), %edx
	orl	$2, %edx
	movb	%dl, 168(%rax)
.L79:
	movl	$-2, %eax
	jmp	.L93
.L77:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	104(%rax), %rcx
	movzbl	-1(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	112(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L95
	cmpq	$0, -40(%rbp)
	je	.L81
	movq	-40(%rbp), %rax
	movl	$80, 56(%rax)
.L81:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$304, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpq	$0, -40(%rbp)
	je	.L82
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movzbl	168(%rax), %edx
	orl	$2, %edx
	movb	%dl, 168(%rax)
.L82:
	movl	$-2, %eax
	jmp	.L93
.L75:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %r8
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rcx
	movq	%rcx, %rsi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	leaq	(%rcx,%rax), %rdi
	leaq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	*%r8
	testl	%eax, %eax
	jne	.L84
	cmpq	$0, -40(%rbp)
	je	.L85
	movq	-40(%rbp), %rax
	movl	$80, 56(%rax)
.L85:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$318, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpq	$0, -40(%rbp)
	je	.L86
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movzbl	168(%rax), %edx
	orl	$2, %edx
	movb	%dl, 168(%rax)
.L86:
	movl	$-2, %eax
	jmp	.L93
.L84:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L87
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	setb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L88
	cmpq	$0, -40(%rbp)
	je	.L89
	movq	-40(%rbp), %rax
	movl	$80, 56(%rax)
.L89:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$327, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpq	$0, -40(%rbp)
	je	.L90
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movzbl	168(%rax), %edx
	orl	$2, %edx
	movb	%dl, 168(%rax)
.L90:
	movl	$-2, %eax
	jmp	.L93
.L88:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, 32(%rcx)
	movq	%rdx, 40(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 48(%rcx)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	$0, %eax
	jmp	.L93
.L87:
	movq	-40(%rbp), %rax
	movq	$0, 24(%rax)
	jmp	.L83
.L94:
	cmpq	$0, -40(%rbp)
	je	.L91
	movq	-40(%rbp), %rax
	movl	$80, 56(%rax)
.L91:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$348, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpq	$0, -40(%rbp)
	je	.L92
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movzbl	168(%rax), %edx
	orl	$2, %edx
	movb	%dl, 168(%rax)
.L92:
	movl	$-2, %eax
	jmp	.L93
.L95:
	nop
.L83:
	movl	$1, %eax
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	quic_write_records, .-quic_write_records
	.type	quic_retry_write_records, @function
quic_retry_write_records:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	quic_write_records
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	quic_retry_write_records, .-quic_retry_write_records
	.type	quic_read_record, @function
quic_read_record:
.LFB736:
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
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L99
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L100
.L99:
	movl	$-2, %eax
	jmp	.L101
.L100:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %r8
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L102
	cmpq	$0, -24(%rbp)
	je	.L103
	movq	-24(%rbp), %rax
	movl	$80, 56(%rax)
.L103:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$372, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpq	$0, -24(%rbp)
	je	.L104
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	168(%rax), %edx
	orl	$2, %edx
	movb	%dl, 168(%rax)
.L104:
	movl	$-2, %eax
	jmp	.L101
.L102:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L105
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	$0, %eax
	jmp	.L101
.L105:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$772, (%rax)
	movq	-48(%rbp), %rax
	movb	$22, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L106
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L107
	movl	$22, %eax
	jmp	.L108
.L107:
	movl	$23, %eax
.L108:
	movb	%al, -5(%rbp)
	movb	$3, -4(%rbp)
	movb	$3, -3(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	shrq	$8, %rax
	movb	%al, -2(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %r10
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	leaq	-5(%rbp), %rax
	movq	%rdx, %r9
	movl	$5, %r8d
	movq	%rax, %rcx
	movl	$256, %edx
	movl	$772, %esi
	movl	$0, %edi
	call	*%r10
	movq	-24(%rbp), %rax
	movq	80(%rax), %r10
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movq	%rax, %rcx
	movl	$257, %edx
	movl	$772, %esi
	movl	$0, %edi
	call	*%r10
.L106:
	movl	$1, %eax
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	quic_read_record, .-quic_read_record
	.type	quic_release_record, @function
quic_release_record:
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
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L110
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	64(%rdx), %rdx
	cmpq	%rax, %rdx
	setnb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L110
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L110
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	-24(%rbp), %rax
	setnb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L111
.L110:
	cmpq	$0, -8(%rbp)
	je	.L112
	movq	-8(%rbp), %rax
	movl	$80, 56(%rax)
.L112:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$422, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpq	$0, -8(%rbp)
	je	.L113
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	168(%rax), %edx
	orl	$2, %edx
	movb	%dl, 168(%rax)
.L113:
	movl	$-2, %eax
	jmp	.L114
.L111:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L115
	movl	$1, %eax
	jmp	.L114
.L115:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L116
	cmpq	$0, -8(%rbp)
	je	.L117
	movq	-8(%rbp), %rax
	movl	$80, 56(%rax)
.L117:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$433, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpq	$0, -8(%rbp)
	je	.L118
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	168(%rax), %edx
	orl	$2, %edx
	movb	%dl, 168(%rax)
.L118:
	movl	$-2, %eax
	jmp	.L114
.L116:
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movl	$1, %eax
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	quic_release_record, .-quic_release_record
	.type	quic_get_alert_code, @function
quic_get_alert_code:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	quic_get_alert_code, .-quic_get_alert_code
	.type	quic_set_protocol_version, @function
quic_set_protocol_version:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$772, -12(%rbp)
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L122
	cmpq	$0, -8(%rbp)
	je	.L123
	movq	-8(%rbp), %rax
	movl	$80, 56(%rax)
.L123:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$450, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpq	$0, -8(%rbp)
	je	.L124
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	168(%rax), %edx
	orl	$2, %edx
	movb	%dl, 168(%rax)
.L124:
	movl	$0, %eax
	jmp	.L125
.L122:
	movl	$1, %eax
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	quic_set_protocol_version, .-quic_set_protocol_version
	.type	quic_set_plain_alerts, @function
quic_set_plain_alerts:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	quic_set_plain_alerts, .-quic_set_plain_alerts
	.type	quic_set_first_handshake, @function
quic_set_first_handshake:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	quic_set_first_handshake, .-quic_set_first_handshake
	.type	quic_set_max_pipelines, @function
quic_set_max_pipelines:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	quic_set_max_pipelines, .-quic_set_max_pipelines
	.section	.rodata
.LC4:
	.string	"unknown"
.LC5:
	.string	"RH"
.LC6:
	.string	"read header"
	.text
	.type	quic_get_state, @function
quic_get_state:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	168(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L130
	cmpq	$0, -16(%rbp)
	je	.L131
	movq	-16(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, (%rax)
.L131:
	cmpq	$0, -24(%rbp)
	je	.L134
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L134
.L130:
	cmpq	$0, -16(%rbp)
	je	.L133
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, (%rax)
.L133:
	cmpq	$0, -24(%rbp)
	je	.L134
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, (%rax)
.L134:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	quic_get_state, .-quic_get_state
	.type	quic_set_options, @function
quic_set_options:
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
	.size	quic_set_options, .-quic_set_options
	.type	quic_get_compression, @function
quic_get_compression:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	quic_get_compression, .-quic_get_compression
	.type	quic_set_max_frag_len, @function
quic_set_max_frag_len:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	quic_set_max_frag_len, .-quic_set_max_frag_len
	.type	quic_alloc_buffers, @function
quic_alloc_buffers:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	quic_alloc_buffers, .-quic_alloc_buffers
	.type	quic_free_buffers, @function
quic_free_buffers:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	quic_free_buffers, .-quic_free_buffers
	.type	quic_set1_bio, @function
quic_set1_bio:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L145
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	testl	%eax, %eax
	jne	.L145
	movl	$0, %eax
	jmp	.L146
.L145:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L146:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	quic_set1_bio, .-quic_set1_bio
	.type	quic_app_data_pending, @function
quic_app_data_pending:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L148
	movq	-8(%rbp), %rax
	movl	$80, 56(%rax)
.L148:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$552, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpq	$0, -8(%rbp)
	je	.L149
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	168(%rax), %edx
	orl	$2, %edx
	movb	%dl, 168(%rax)
.L149:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	quic_app_data_pending, .-quic_app_data_pending
	.type	quic_get_max_record_overhead, @function
quic_get_max_record_overhead:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L152
	movq	-8(%rbp), %rax
	movl	$80, 56(%rax)
.L152:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$558, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpq	$0, -8(%rbp)
	je	.L153
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	168(%rax), %edx
	orl	$2, %edx
	movb	%dl, 168(%rax)
.L153:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	quic_get_max_record_overhead, .-quic_get_max_record_overhead
	.type	quic_increment_sequence_ctr, @function
quic_increment_sequence_ctr:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L156
	movq	-8(%rbp), %rax
	movl	$80, 56(%rax)
.L156:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$564, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpq	$0, -8(%rbp)
	je	.L157
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	168(%rax), %edx
	orl	$2, %edx
	movb	%dl, 168(%rax)
.L157:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	quic_increment_sequence_ctr, .-quic_increment_sequence_ctr
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	quic_tls_record_method, @object
	.size	quic_tls_record_method, 200
quic_tls_record_method:
	.quad	quic_new_record_layer
	.quad	quic_free
	.quad	quic_unprocessed_read_pending
	.quad	quic_processed_read_pending
	.quad	quic_app_data_pending
	.quad	quic_get_max_records
	.quad	quic_write_records
	.quad	quic_retry_write_records
	.quad	quic_read_record
	.quad	quic_release_record
	.quad	quic_get_alert_code
	.quad	quic_set1_bio
	.quad	quic_set_protocol_version
	.quad	quic_set_plain_alerts
	.quad	quic_set_first_handshake
	.quad	quic_set_max_pipelines
	.quad	0
	.quad	quic_get_state
	.quad	quic_set_options
	.quad	quic_get_compression
	.quad	quic_set_max_frag_len
	.quad	quic_get_max_record_overhead
	.quad	quic_increment_sequence_ctr
	.quad	quic_alloc_buffers
	.quad	quic_free_buffers
	.text
	.type	add_transport_params_cb, @function
add_transport_params_cb:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	add_transport_params_cb, .-add_transport_params_cb
	.type	free_transport_params_cb, @function
free_transport_params_cb:
.LFB754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	free_transport_params_cb, .-free_transport_params_cb
	.type	parse_transport_params_cb, @function
parse_transport_params_cb:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %r8
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	parse_transport_params_cb, .-parse_transport_params_cb
	.globl	ossl_quic_tls_new
	.type	ossl_quic_tls_new, @function
ossl_quic_tls_new:
.LFB756:
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
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L165
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L165
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L166
.L165:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$638, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L167
.L166:
	leaq	.LC0(%rip), %rax
	movl	$642, %edx
	movq	%rax, %rsi
	movl	$176, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L168
	movl	$0, %eax
	jmp	.L167
.L168:
	call	OSSL_ERR_STATE_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 144(%rdx)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L169
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$647, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L167
.L169:
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	64(%rdx), %rcx
	movq	72(%rdx), %rbx
	movq	%rcx, 64(%rax)
	movq	%rbx, 72(%rax)
	movq	80(%rdx), %rcx
	movq	88(%rdx), %rbx
	movq	%rcx, 80(%rax)
	movq	%rbx, 88(%rax)
	movq	96(%rdx), %rcx
	movq	104(%rdx), %rbx
	movq	%rcx, 96(%rax)
	movq	%rbx, 104(%rax)
	movq	112(%rdx), %rcx
	movq	120(%rdx), %rbx
	movq	%rcx, 112(%rax)
	movq	%rbx, 120(%rax)
	movq	-24(%rbp), %rax
.L167:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	ossl_quic_tls_new, .-ossl_quic_tls_new
	.globl	ossl_quic_tls_free
	.type	ossl_quic_tls_free, @function
ossl_quic_tls_free:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L173
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_ERR_STATE_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$660, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L170
.L173:
	nop
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	ossl_quic_tls_free, .-ossl_quic_tls_free
	.section	.rodata
	.align 8
.LC7:
	.string	"handshake layer error, error code %llu (0x%llx) (\"%s\")"
	.text
	.type	raise_error, @function
raise_error:
.LFB758:
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
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	call	ERR_new@PLT
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$393, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_ERR_STATE_save_to_mark@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 152(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 160(%rax)
	movq	-8(%rbp), %rax
	movzbl	168(%rax), %edx
	orl	$2, %edx
	movb	%dl, 168(%rax)
	call	ERR_pop_to_mark@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	raise_error, .-raise_error
	.section	.rodata
.LC8:
	.string	"internal error"
	.align 8
.LC9:
	.string	"ALPN must be configured when using QUIC"
	.align 8
.LC10:
	.string	"no application protocol negotiated"
	.text
	.globl	ossl_quic_tls_tick
	.type	ossl_quic_tls_tick, @function
ossl_quic_tls_tick:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	168(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L177
	movl	$0, %eax
	jmp	.L201
.L177:
	call	ERR_set_mark@PLT
	movq	-72(%rbp), %rax
	movzbl	168(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L179
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L180
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L181
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L182
.L181:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L183
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L182
.L183:
	movq	$0, -16(%rbp)
	jmp	.L182
.L180:
	movq	$0, -16(%rbp)
.L182:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L184
	movq	-24(%rbp), %rax
	movq	672(%rax), %rax
	testq	%rax, %rax
	jne	.L185
	leaq	__func__.0(%rip), %rsi
	leaq	.LC0(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rsi, %r9
	movl	$746, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	raise_error
	jmp	.L201
.L184:
	movq	-16(%rbp), %rax
	movq	2648(%rax), %rax
	testq	%rax, %rax
	je	.L186
	movq	-16(%rbp), %rax
	movq	2656(%rax), %rax
	testq	%rax, %rax
	jne	.L185
.L186:
	leaq	__func__.0(%rip), %rsi
	leaq	.LC0(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rsi, %r9
	movl	$749, %r8d
	movl	$376, %esi
	movq	%rax, %rdi
	call	raise_error
	jmp	.L201
.L185:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$772, %edx
	movl	$123, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	jne	.L187
	leaq	__func__.0(%rip), %rsi
	leaq	.LC0(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rsi, %r9
	movl	$753, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	raise_error
	jmp	.L201
.L187:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	$1048576, %esi
	movq	%rax, %rdi
	call	SSL_clear_options@PLT
	movq	-72(%rbp), %rdx
	leaq	quic_tls_record_method(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ssl_set_custom_record_layer@PLT
	movq	-72(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movq	-16(%rbp), %rdx
	movq	2056(%rdx), %rdx
	leaq	128(%rdx), %rsi
	leaq	add_transport_params_cb(%rip), %rcx
	pushq	-72(%rbp)
	leaq	parse_transport_params_cb(%rip), %rdx
	pushq	%rdx
	pushq	-72(%rbp)
	leaq	free_transport_params_cb(%rip), %rdx
	pushq	%rdx
	movq	%rcx, %r9
	movl	$1184, %r8d
	movl	$57, %ecx
	movl	%eax, %edx
	movl	$0, %edi
	call	ossl_tls_add_custom_ext_intern@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L188
	leaq	__func__.0(%rip), %rsi
	leaq	.LC0(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rsi, %r9
	movl	$768, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	raise_error
	jmp	.L201
.L188:
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L189
	leaq	__func__.0(%rip), %rsi
	leaq	.LC0(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rsi, %r9
	movl	$772, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	raise_error
	jmp	.L201
.L189:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	movq	-72(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L190
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_set_accept_state@PLT
	jmp	.L191
.L190:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_set_connect_state@PLT
.L191:
	movq	-72(%rbp), %rax
	movzbl	168(%rax), %edx
	orl	$1, %edx
	movb	%dl, 168(%rax)
.L179:
	movq	-72(%rbp), %rax
	movzbl	168(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L192
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_read@PLT
	movl	%eax, -4(%rbp)
	jmp	.L193
.L192:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_do_handshake@PLT
	movl	%eax, -4(%rbp)
.L193:
	cmpl	$0, -4(%rbp)
	jg	.L194
	call	ERR_count_to_mark@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %edx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_ssl_get_error@PLT
	movl	%eax, -36(%rbp)
	cmpl	$4, -36(%rbp)
	jg	.L195
	cmpl	$2, -36(%rbp)
	jge	.L196
	jmp	.L197
.L195:
	movl	-36(%rbp), %eax
	subl	$11, %eax
	cmpl	$1, %eax
	ja	.L197
.L196:
	call	ERR_pop_to_mark@PLT
	movl	$1, %eax
	jmp	.L201
.L197:
	leaq	__func__.0(%rip), %rsi
	leaq	.LC0(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rsi, %r9
	movl	$811, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	raise_error
	jmp	.L201
.L194:
	movq	-72(%rbp), %rax
	movzbl	168(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L198
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	-52(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_get0_alpn_selected@PLT
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L199
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	jne	.L200
.L199:
	leaq	__func__.0(%rip), %rsi
	leaq	.LC0(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rsi, %r9
	movl	$819, %r8d
	movl	$376, %esi
	movq	%rax, %rdi
	call	raise_error
	jmp	.L201
.L200:
	movq	-72(%rbp), %rax
	movzbl	168(%rax), %edx
	orl	$4, %edx
	movb	%dl, 168(%rax)
	call	ERR_pop_to_mark@PLT
	movq	-72(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L201
.L198:
	call	ERR_pop_to_mark@PLT
	movl	$1, %eax
.L201:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	ossl_quic_tls_tick, .-ossl_quic_tls_tick
	.globl	ossl_quic_tls_set_transport_params
	.type	ossl_quic_tls_set_transport_params, @function
ossl_quic_tls_set_transport_params:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 128(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 136(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	ossl_quic_tls_set_transport_params, .-ossl_quic_tls_set_transport_params
	.globl	ossl_quic_tls_get_error
	.type	ossl_quic_tls_get_error, @function
ossl_quic_tls_get_error:
.LFB761:
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
	movq	-8(%rbp), %rax
	movzbl	168(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L205
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	160(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L205:
	movq	-8(%rbp), %rax
	movzbl	168(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	ossl_quic_tls_get_error, .-ossl_quic_tls_get_error
	.globl	ossl_quic_tls_is_cert_request
	.type	ossl_quic_tls_is_cert_request, @function
ossl_quic_tls_is_cert_request:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L208
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L209
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L210
.L209:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L211
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L210
.L211:
	movq	$0, -8(%rbp)
	jmp	.L210
.L208:
	movq	$0, -8(%rbp)
.L210:
	movq	-8(%rbp), %rax
	movl	696(%rax), %eax
	cmpl	$13, %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	ossl_quic_tls_is_cert_request, .-ossl_quic_tls_is_cert_request
	.globl	ossl_quic_tls_has_bad_max_early_data
	.type	ossl_quic_tls_has_bad_max_early_data, @function
ossl_quic_tls_has_bad_max_early_data:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SSL_get_session@PLT
	movl	836(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	je	.L214
	cmpl	$0, -4(%rbp)
	je	.L214
	movl	$1, %eax
	jmp	.L216
.L214:
	movl	$0, %eax
.L216:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	ossl_quic_tls_has_bad_max_early_data, .-ossl_quic_tls_has_bad_max_early_data
	.section	.rodata
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 22
__func__.9:
	.string	"quic_new_record_layer"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 19
__func__.8:
	.string	"quic_write_records"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 17
__func__.7:
	.string	"quic_read_record"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 20
__func__.6:
	.string	"quic_release_record"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 26
__func__.5:
	.string	"quic_set_protocol_version"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 22
__func__.4:
	.string	"quic_app_data_pending"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 29
__func__.3:
	.string	"quic_get_max_record_overhead"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 28
__func__.2:
	.string	"quic_increment_sequence_ctr"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"ossl_quic_tls_new"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"ossl_quic_tls_tick"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

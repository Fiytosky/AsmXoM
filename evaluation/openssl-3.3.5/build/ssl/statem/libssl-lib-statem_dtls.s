	.file	"statem_dtls.c"
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
	.align 8
	.type	bitmask_start_values, @object
	.size	bitmask_start_values, 8
bitmask_start_values:
	.base64	"//78+PDgwIA="
	.align 8
	.type	bitmask_end_values, @object
	.size	bitmask_end_values, 8
bitmask_end_values:
	.base64	"/wEDBw8fP38="
.LC0:
	.string	"../ssl/statem/statem_dtls.c"
	.text
	.type	dtls1_hm_fragment_new, @function
dtls1_hm_fragment_new:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$62, %edx
	movq	%rax, %rsi
	movl	$80, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	cmpq	$0, -40(%rbp)
	je	.L16
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$66, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L16
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$67, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L15
.L16:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 64(%rax)
	cmpl	$0, -44(%rbp)
	je	.L17
	movq	-40(%rbp), %rax
	addq	$7, %rax
	shrq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$77, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L17
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$79, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L15
.L17:
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-24(%rbp), %rax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	dtls1_hm_fragment_new, .-dtls1_hm_fragment_new
	.globl	dtls1_hm_fragment_free
	.type	dtls1_hm_fragment_free, @function
dtls1_hm_fragment_free:
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
	je	.L21
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$95, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$96, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$97, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L18
.L21:
	nop
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	dtls1_hm_fragment_free, .-dtls1_hm_fragment_free
	.globl	dtls1_do_write
	.type	dtls1_do_write, @function
dtls1_do_write:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movl	%esi, %eax
	movb	%al, -156(%rbp)
	movl	$1, -28(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-152(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_query_mtu@PLT
	testl	%eax, %eax
	jne	.L23
	movl	$-1, %eax
	jmp	.L56
.L23:
	movq	-152(%rbp), %rax
	movq	1144(%rax), %rax
	movq	304(%rax), %rbx
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_min_mtu@PLT
	cmpq	%rax, %rbx
	jnb	.L25
	movl	$-1, %eax
	jmp	.L56
.L25:
	movq	-152(%rbp), %rax
	movq	272(%rax), %rax
	testq	%rax, %rax
	jne	.L26
	cmpb	$22, -156(%rbp)
	jne	.L26
	movq	-152(%rbp), %rax
	movq	264(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	1144(%rax), %rax
	movq	320(%rax), %rax
	addq	$12, %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L26
	movl	$-1, %eax
	jmp	.L56
.L26:
	movq	-152(%rbp), %rax
	movq	3040(%rax), %rax
	movq	168(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	3056(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	movq	$0, -48(%rbp)
	movq	-152(%rbp), %rax
	movl	$1, 104(%rax)
	jmp	.L27
.L55:
	cmpb	$22, -156(%rbp)
	jne	.L28
	movq	-152(%rbp), %rax
	movq	272(%rax), %rax
	testq	%rax, %rax
	je	.L28
	cmpq	$0, -48(%rbp)
	je	.L29
	movq	-152(%rbp), %rax
	movq	272(%rax), %rax
	cmpq	$12, %rax
	ja	.L30
	movl	$-1, %eax
	jmp	.L56
.L30:
	movq	-152(%rbp), %rax
	movq	272(%rax), %rax
	leaq	-12(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, 272(%rax)
	movq	-152(%rbp), %rax
	movq	264(%rax), %rax
	leaq	12(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, 264(%rax)
	jmp	.L28
.L29:
	movq	-152(%rbp), %rax
	movq	1144(%rax), %rax
	movq	336(%rax), %rax
	movq	%rax, -48(%rbp)
.L28:
	movq	-152(%rbp), %rax
	movq	88(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$13, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-152(%rbp), %rax
	movq	1144(%rax), %rax
	movq	304(%rax), %rax
	cmpq	%rax, -96(%rbp)
	jnb	.L31
	movq	-152(%rbp), %rax
	movq	1144(%rax), %rax
	movq	304(%rax), %rax
	subq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L32
.L31:
	movq	$0, -24(%rbp)
.L32:
	cmpq	$12, -24(%rbp)
	ja	.L33
	movq	-152(%rbp), %rax
	movq	88(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	jg	.L34
	movq	-152(%rbp), %rax
	movl	$2, 104(%rax)
	movl	-100(%rbp), %eax
	jmp	.L56
.L34:
	movq	-152(%rbp), %rax
	movq	1144(%rax), %rax
	movq	304(%rax), %rax
	movq	-88(%rbp), %rdx
	addq	$12, %rdx
	cmpq	%rax, %rdx
	jnb	.L35
	movq	-152(%rbp), %rax
	movq	1144(%rax), %rax
	movq	304(%rax), %rax
	subq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L33
.L35:
	movl	$-1, %eax
	jmp	.L56
.L33:
	movq	-152(%rbp), %rax
	movq	264(%rax), %rax
	movl	%eax, %eax
	cmpq	%rax, -24(%rbp)
	jnb	.L36
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L37
.L36:
	movq	-152(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -40(%rbp)
.L37:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_get_max_send_fragment@PLT
	movl	%eax, %eax
	cmpq	-40(%rbp), %rax
	jnb	.L38
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_get_max_send_fragment@PLT
	movl	%eax, %eax
	movq	%rax, -40(%rbp)
.L38:
	cmpb	$22, -156(%rbp)
	jne	.L39
	cmpq	$11, -40(%rbp)
	ja	.L40
	movl	$-1, %eax
	jmp	.L56
.L40:
	movq	-40(%rbp), %rax
	leaq	-12(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dtls1_fix_message_header
	movq	-152(%rbp), %rax
	movq	1152(%rax), %rax
	testq	%rax, %rax
	je	.L41
	movq	-152(%rbp), %rax
	movq	272(%rax), %rax
	testq	%rax, %rax
	je	.L41
	movq	-152(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	272(%rax), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	%rdx, -132(%rbp)
	movl	8(%rax), %eax
	movl	%eax, -124(%rbp)
.L41:
	movq	-152(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	272(%rax), %rax
	addq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dtls1_write_message_header
.L39:
	movq	-152(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	272(%rax), %rax
	leaq	(%rdx,%rax), %rdi
	movzbl	-156(%rbp), %esi
	leaq	-120(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	dtls1_write_bytes@PLT
	movl	%eax, -100(%rbp)
	cmpb	$22, -156(%rbp)
	jne	.L42
	movq	-152(%rbp), %rax
	movq	1152(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-152(%rbp), %rax
	movq	272(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-152(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	272(%rax), %rax
	addq	%rdx, %rax
	movq	-132(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-124(%rbp), %edx
	movl	%edx, 8(%rax)
.L42:
	cmpl	$0, -100(%rbp)
	jg	.L43
	cmpl	$0, -28(%rbp)
	je	.L44
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movl	$0, %ecx
	movl	$0, %edx
	movl	$43, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jle	.L44
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_options@PLT
	andl	$4096, %eax
	testq	%rax, %rax
	jne	.L45
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_query_mtu@PLT
	testl	%eax, %eax
	jne	.L46
	movl	$-1, %eax
	jmp	.L56
.L46:
	movl	$0, -28(%rbp)
	nop
	jmp	.L27
.L45:
	movl	$-1, %eax
	jmp	.L56
.L44:
	movl	$-1, %eax
	jmp	.L56
.L43:
	movq	-120(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L49
	movl	$-1, %eax
	jmp	.L56
.L49:
	cmpb	$22, -156(%rbp)
	jne	.L50
	movq	-152(%rbp), %rax
	movq	1144(%rax), %rax
	movl	460(%rax), %eax
	testl	%eax, %eax
	jne	.L50
	movq	-152(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	272(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-152(%rbp), %rax
	movq	1144(%rax), %rax
	addq	$312, %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L51
	movq	-152(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$256, %eax
	je	.L51
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movq	-112(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	shrq	$16, %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movb	%dl, (%rax)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	addq	$3, -56(%rbp)
	movq	-112(%rbp), %rax
	movzwl	16(%rax), %eax
	shrw	$8, %ax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movb	%dl, (%rax)
	movq	-112(%rbp), %rax
	movzwl	16(%rax), %edx
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	addq	$2, -56(%rbp)
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movb	$0, (%rax)
	addq	$3, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	shrq	$16, %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movb	%dl, (%rax)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	addq	$3, -56(%rbp)
	subq	$12, -56(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L52
.L51:
	addq	$12, -56(%rbp)
	movq	-120(%rbp), %rax
	subq	$12, %rax
	movq	%rax, -64(%rbp)
.L52:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl3_finish_mac@PLT
	testl	%eax, %eax
	jne	.L50
	movl	$-1, %eax
	jmp	.L56
.L50:
	movq	-152(%rbp), %rax
	movq	264(%rax), %rdx
	movq	-120(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L53
	movq	-152(%rbp), %rax
	movq	1152(%rax), %rax
	testq	%rax, %rax
	je	.L54
	movq	-152(%rbp), %rax
	movq	1152(%rax), %r10
	movq	-152(%rbp), %rax
	movq	1160(%rax), %rsi
	movq	-152(%rbp), %rax
	movq	272(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	264(%rax), %rax
	leaq	(%rdx,%rax), %r8
	movq	-152(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rcx
	movzbl	-156(%rbp), %edx
	movq	-152(%rbp), %rax
	movl	72(%rax), %eax
	movq	-80(%rbp), %rdi
	subq	$8, %rsp
	pushq	%rsi
	movq	%rdi, %r9
	movl	%eax, %esi
	movl	$1, %edi
	call	*%r10
	addq	$16, %rsp
.L54:
	movq	-152(%rbp), %rax
	movq	$0, 272(%rax)
	movq	-152(%rbp), %rax
	movq	$0, 264(%rax)
	movl	$1, %eax
	jmp	.L56
.L53:
	movq	-152(%rbp), %rax
	movq	272(%rax), %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, 272(%rax)
	movq	-152(%rbp), %rax
	movq	264(%rax), %rdx
	movq	-120(%rbp), %rax
	subq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, 264(%rax)
	movq	-120(%rbp), %rax
	subq	$12, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	-152(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dtls1_fix_message_header
.L27:
	movq	-152(%rbp), %rax
	movq	264(%rax), %rax
	testq	%rax, %rax
	jne	.L55
	movl	$0, %eax
.L56:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	dtls1_do_write, .-dtls1_do_write
	.globl	dtls_get_message
	.type	dtls_get_message, @function
dtls_get_message:
.LFB732:
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
	movq	1144(%rax), %rax
	addq	$376, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L58:
	leaq	-32(%rbp), %rdx
	leaq	-36(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dtls_get_reassembled_message
	testl	%eax, %eax
	jne	.L59
	movl	-36(%rbp), %eax
	cmpl	$-2, %eax
	je	.L58
	movl	-36(%rbp), %eax
	cmpl	$-3, %eax
	jne	.L61
	jmp	.L58
.L61:
	movl	$0, %eax
	jmp	.L65
.L59:
	movq	-56(%rbp), %rax
	movl	696(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$257, %eax
	jne	.L63
	movq	-56(%rbp), %rax
	movq	1152(%rax), %rax
	testq	%rax, %rax
	je	.L64
	movq	-56(%rbp), %rax
	movq	1152(%rax), %r10
	movq	-56(%rbp), %rax
	movq	1160(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-56(%rbp), %rax
	movl	72(%rax), %eax
	movq	-16(%rbp), %rdx
	subq	$8, %rsp
	pushq	%rcx
	movq	%rsi, %r9
	movl	$1, %r8d
	movq	%rdx, %rcx
	movl	$20, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	*%r10
	addq	$16, %rsp
.L64:
	movl	$1, %eax
	jmp	.L65
.L63:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$16, %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movq	-24(%rbp), %rdx
	movb	%dl, (%rax)
	addq	$3, -16(%rbp)
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %eax
	shrw	$8, %ax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	addq	$2, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movb	$0, (%rax)
	addq	$3, -16(%rbp)
	movq	-24(%rbp), %rax
	shrq	$16, %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movq	-24(%rbp), %rdx
	movb	%dl, (%rax)
	addq	$3, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-56(%rbp), %rax
	movq	1144(%rax), %rax
	movzwl	272(%rax), %edx
	addl	$1, %edx
	movw	%dx, 272(%rax)
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rax
	leaq	12(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 256(%rax)
	movl	$1, %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	dtls_get_message, .-dtls_get_message
	.globl	dtls_get_message_body
	.type	dtls_get_message_body, @function
dtls_get_message_body:
.LFB733:
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
	movq	248(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	addq	$12, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	696(%rax), %eax
	cmpl	$257, %eax
	je	.L73
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$20, %al
	jne	.L69
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_take_mac@PLT
	testl	%eax, %eax
	jne	.L69
	movl	$0, %eax
	jmp	.L70
.L69:
	movq	-24(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$256, %eax
	jne	.L71
	addq	$12, -8(%rbp)
	subq	$12, -16(%rbp)
.L71:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl3_finish_mac@PLT
	testl	%eax, %eax
	jne	.L72
	movl	$0, %eax
	jmp	.L70
.L72:
	movq	-24(%rbp), %rax
	movq	1152(%rax), %rax
	testq	%rax, %rax
	je	.L74
	movq	-24(%rbp), %rax
	movq	1152(%rax), %r10
	movq	-24(%rbp), %rax
	movq	1160(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	leaq	12(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	72(%rax), %eax
	subq	$8, %rsp
	pushq	%rcx
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$22, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	*%r10
	addq	$16, %rsp
	jmp	.L68
.L73:
	nop
	jmp	.L68
.L74:
	nop
.L68:
	movq	-24(%rbp), %rax
	movq	264(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	dtls_get_message_body, .-dtls_get_message_body
	.type	dtls1_max_handshake_message_len, @function
dtls1_max_handshake_message_len:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	$17740, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	2384(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L76
	movq	-24(%rbp), %rax
	movq	2384(%rax), %rax
	jmp	.L77
.L76:
	movq	-8(%rbp), %rax
.L77:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	dtls1_max_handshake_message_len, .-dtls1_max_handshake_message_len
	.type	dtls1_preprocess_fragment, @function
dtls1_preprocess_fragment:
.LFB735:
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
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -8(%rbp)
	jb	.L79
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_max_handshake_message_len
	cmpq	-8(%rbp), %rax
	jnb	.L80
.L79:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$455, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$152, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L81
.L80:
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	400(%rax), %rax
	testq	%rax, %rax
	jne	.L82
	movq	-8(%rbp), %rax
	leaq	12(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow_clean@PLT
	testq	%rax, %rax
	jne	.L83
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$465, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$524295, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L81
.L83:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 688(%rax)
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 384(%rax)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 696(%rax)
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	-48(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, 376(%rax)
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	-48(%rbp), %rdx
	movzwl	16(%rdx), %edx
	movw	%dx, 392(%rax)
	jmp	.L84
.L82:
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	384(%rax), %rax
	cmpq	%rax, -8(%rbp)
	je	.L84
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$479, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$152, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L81
.L84:
	movl	$1, %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	dtls1_preprocess_fragment, .-dtls1_preprocess_fragment
	.type	dtls1_retrieve_buffered_fragment, @function
dtls1_retrieve_buffered_fragment:
.LFB736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	$0, -20(%rbp)
	movq	-88(%rbp), %rax
	movq	1144(%rax), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	call	pqueue_iterator@PLT
	movq	%rax, -72(%rbp)
.L93:
	leaq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	pqueue_next@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L86
	movl	$0, %eax
	jmp	.L100
.L86:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzwl	16(%rax), %edx
	movq	-88(%rbp), %rax
	movq	1144(%rax), %rax
	movzwl	272(%rax), %eax
	cmpw	%ax, %dx
	jnb	.L88
	movq	-88(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L89
	movq	-16(%rbp), %rax
	movzwl	16(%rax), %eax
	testw	%ax, %ax
	jne	.L89
	movq	-88(%rbp), %rax
	movq	1144(%rax), %rax
	movzwl	272(%rax), %eax
	cmpw	$1, %ax
	jne	.L89
	movq	-88(%rbp), %rax
	movl	172(%rax), %eax
	cmpl	$23, %eax
	je	.L90
.L89:
	movq	-88(%rbp), %rax
	movq	1144(%rax), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	call	pqueue_pop@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_hm_fragment_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	pitem_free@PLT
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L88
.L90:
	leaq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	pqueue_next@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L91
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movzwl	16(%rax), %edx
	movq	-88(%rbp), %rax
	movq	1144(%rax), %rax
	movzwl	272(%rax), %eax
	cmpw	%ax, %dx
	jne	.L92
	movq	-88(%rbp), %rax
	movq	1144(%rax), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	call	pqueue_pop@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_hm_fragment_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	pitem_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L88
.L92:
	movl	$1, -20(%rbp)
	jmp	.L88
.L91:
	movl	$1, -20(%rbp)
.L88:
	cmpq	$0, -8(%rbp)
	je	.L93
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L94
	movl	$0, %eax
	jmp	.L100
.L94:
	movq	-88(%rbp), %rax
	movq	1144(%rax), %rax
	movzwl	272(%rax), %edx
	movq	-16(%rbp), %rax
	movzwl	16(%rax), %eax
	cmpw	%ax, %dx
	je	.L95
	cmpl	$0, -20(%rbp)
	je	.L96
.L95:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	1144(%rax), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	call	pqueue_pop@PLT
	movq	-16(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dtls1_preprocess_fragment
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L97
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L97
	movq	-88(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rax
	addq	$12, %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rsi
	movq	-64(%rbp), %rcx
	addq	%rsi, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L97:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_hm_fragment_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	pitem_free@PLT
	cmpl	$0, -52(%rbp)
	je	.L98
	cmpl	$0, -20(%rbp)
	je	.L99
	movq	-88(%rbp), %rax
	movq	1144(%rax), %rax
	movw	$0, 272(%rax)
	movq	-88(%rbp), %rax
	movq	1144(%rax), %rax
	movw	$0, 270(%rax)
.L99:
	movq	-96(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L100
.L98:
	movq	-88(%rbp), %rax
	movq	$0, 264(%rax)
	movl	$-1, %eax
	jmp	.L100
.L96:
	movl	$0, %eax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	dtls1_retrieve_buffered_fragment, .-dtls1_retrieve_buffered_fragment
	.type	dtls1_reassemble_fragment, @function
dtls1_reassemble_fragment:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$360, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -360(%rbp)
	movq	%rsi, -368(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$-1, -36(%rbp)
	movq	-368(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-368(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-368(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rdx, %rax
	jb	.L134
	movq	-368(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_max_handshake_message_len
	cmpq	%rbx, %rax
	jb	.L134
	cmpq	$0, -48(%rbp)
	jne	.L105
	movl	$-3, %eax
	jmp	.L133
.L105:
	leaq	-88(%rbp), %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-368(%rbp), %rax
	movzwl	16(%rax), %eax
	shrw	$8, %ax
	movb	%al, -82(%rbp)
	movq	-368(%rbp), %rax
	movzwl	16(%rax), %eax
	movb	%al, -81(%rbp)
	movq	-360(%rbp), %rax
	movq	1144(%rax), %rax
	movq	280(%rax), %rax
	leaq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pqueue_find@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L107
	movq	-368(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	dtls1_hm_fragment_new
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L135
	movq	-24(%rbp), %rax
	movq	-368(%rbp), %rcx
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	jmp	.L109
.L107:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-368(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	je	.L109
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L104
.L109:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L110
	jmp	.L111
.L113:
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	128(%rax), %r10
	movq	-48(%rbp), %rax
	movl	$256, %edx
	cmpq	%rdx, %rax
	movq	%rdx, %rsi
	cmovbe	%rax, %rsi
	leaq	-352(%rbp), %rdx
	movq	-80(%rbp), %rax
	subq	$8, %rsp
	leaq	-96(%rbp), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jle	.L136
	movq	-96(%rbp), %rax
	subq	%rax, -48(%rbp)
.L111:
	cmpq	$0, -48(%rbp)
	jne	.L113
	movl	$-3, %eax
	jmp	.L133
.L110:
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	128(%rax), %r10
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-368(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rsi
	movq	-80(%rbp), %rax
	subq	$8, %rsp
	leaq	-96(%rbp), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jle	.L114
	movq	-96(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	je	.L115
.L114:
	movl	$-1, -36(%rbp)
.L115:
	cmpl	$0, -36(%rbp)
	jle	.L137
	movq	-48(%rbp), %rax
	cmpq	$8, %rax
	jg	.L117
	movq	-368(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.L118
.L119:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	-56(%rbp), %rdx
	sarq	$3, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rax
	andl	$7, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%esi, %ecx
	orl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	-56(%rbp), %rdx
	sarq	$3, %rdx
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addq	$1, -56(%rbp)
.L118:
	movq	-368(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -56(%rbp)
	jl	.L119
	jmp	.L120
.L117:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-368(%rbp), %rax
	movq	24(%rax), %rax
	sarq	$3, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-368(%rbp), %rax
	movq	24(%rax), %rax
	andl	$7, %eax
	movq	%rax, %rdx
	leaq	bitmask_start_values(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-368(%rbp), %rax
	movq	24(%rax), %rax
	sarq	$3, %rax
	addq	%rdx, %rax
	orl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	movq	-368(%rbp), %rax
	movq	24(%rax), %rax
	sarq	$3, %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.L121
.L122:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
	addq	$1, -64(%rbp)
.L121:
	movq	-368(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	sarq	$3, %rax
	cmpq	%rax, -64(%rbp)
	jl	.L122
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-368(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	subq	$1, %rax
	sarq	$3, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edi
	movq	-368(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	andl	$7, %eax
	movq	%rax, %rdx
	leaq	bitmask_end_values(%rip), %rax
	movzbl	(%rdx,%rax), %esi
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-368(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	subq	$1, %rax
	sarq	$3, %rax
	addq	%rdx, %rax
	orl	%esi, %edi
	movl	%edi, %edx
	movb	%dl, (%rax)
.L120:
	movq	-368(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L138
	movl	$1, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-368(%rbp), %rax
	movq	8(%rax), %rax
	subq	$1, %rax
	sarq	$3, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-368(%rbp), %rax
	movq	8(%rax), %rax
	andl	$7, %eax
	movq	%rax, %rcx
	leaq	bitmask_end_values(%rip), %rax
	movzbl	(%rcx,%rax), %eax
	cmpb	%al, %dl
	je	.L124
	movl	$0, -40(%rbp)
.L124:
	cmpl	$0, -40(%rbp)
	je	.L125
	movq	-368(%rbp), %rax
	movq	8(%rax), %rax
	subq	$1, %rax
	sarq	$3, %rax
	subq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.L126
.L128:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$-1, %al
	je	.L127
	movl	$0, -40(%rbp)
	jmp	.L125
.L127:
	subq	$1, -72(%rbp)
.L126:
	cmpq	$0, -72(%rbp)
	jns	.L128
.L125:
	cmpl	$0, -40(%rbp)
	je	.L129
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$684, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 72(%rax)
.L129:
	cmpq	$0, -32(%rbp)
	jne	.L130
	movq	-24(%rbp), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pitem_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L131
	movl	$-1, -36(%rbp)
	jmp	.L104
.L131:
	movq	-360(%rbp), %rax
	movq	1144(%rax), %rax
	movq	280(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pqueue_insert@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L139
.L130:
	movl	$-3, %eax
	jmp	.L133
.L134:
	nop
	jmp	.L104
.L135:
	nop
	jmp	.L104
.L136:
	nop
	jmp	.L104
.L137:
	nop
	jmp	.L104
.L138:
	nop
	jmp	.L104
.L139:
	nop
.L104:
	cmpq	$0, -32(%rbp)
	jne	.L132
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_hm_fragment_free@PLT
.L132:
	movl	$-1, %eax
.L133:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	dtls1_reassemble_fragment, .-dtls1_reassemble_fragment
	.type	dtls1_process_out_of_seq_message, @function
dtls1_process_out_of_seq_message:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movq	%rdi, -328(%rbp)
	movq	%rsi, -336(%rbp)
	movl	$-1, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-336(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-336(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-336(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rdx, %rax
	jb	.L160
	leaq	-48(%rbp), %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-336(%rbp), %rax
	movzwl	16(%rax), %eax
	shrw	$8, %ax
	movb	%al, -42(%rbp)
	movq	-336(%rbp), %rax
	movzwl	16(%rax), %eax
	movb	%al, -41(%rbp)
	movq	-328(%rbp), %rax
	movq	1144(%rax), %rax
	movq	280(%rax), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pqueue_find@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L143
	movq	-336(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -32(%rbp)
	je	.L143
	movq	$0, -24(%rbp)
.L143:
	movq	-336(%rbp), %rax
	movzwl	16(%rax), %edx
	movq	-328(%rbp), %rax
	movq	1144(%rax), %rax
	movzwl	272(%rax), %eax
	cmpw	%dx, %ax
	jnb	.L146
	movq	-336(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %edx
	movq	-328(%rbp), %rax
	movq	1144(%rax), %rax
	movzwl	272(%rax), %eax
	movzwl	%ax, %eax
	addl	$10, %eax
	cmpl	%eax, %edx
	jg	.L146
	cmpq	$0, -24(%rbp)
	jne	.L146
	movq	-328(%rbp), %rax
	movq	1144(%rax), %rax
	movzwl	272(%rax), %eax
	testw	%ax, %ax
	jne	.L145
	movq	-336(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$20, %al
	jne	.L145
	jmp	.L146
.L148:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	128(%rax), %r10
	movq	-32(%rbp), %rax
	movl	$256, %edx
	cmpq	%rdx, %rax
	movq	%rdx, %rsi
	cmovbe	%rax, %rsi
	leaq	-320(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	leaq	-56(%rbp), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L161
	movq	-56(%rbp), %rax
	subq	%rax, -32(%rbp)
.L146:
	cmpq	$0, -32(%rbp)
	jne	.L148
	jmp	.L149
.L145:
	movq	-336(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -32(%rbp)
	je	.L150
	movq	-336(%rbp), %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dtls1_reassemble_fragment
	jmp	.L159
.L150:
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_max_handshake_message_len
	cmpq	-32(%rbp), %rax
	jb	.L162
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	dtls1_hm_fragment_new
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L163
	movq	-16(%rbp), %rax
	movq	-336(%rbp), %rcx
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	cmpq	$0, -32(%rbp)
	je	.L154
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	128(%rax), %r10
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	leaq	-56(%rbp), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L155
	movq	-56(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	je	.L156
.L155:
	movl	$-1, -4(%rbp)
.L156:
	cmpl	$0, -4(%rbp)
	jle	.L164
.L154:
	movq	-16(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pitem_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L165
	movq	-328(%rbp), %rax
	movq	1144(%rax), %rax
	movq	280(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pqueue_insert@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L166
.L149:
	movl	$-3, %eax
	jmp	.L159
.L160:
	nop
	jmp	.L142
.L161:
	nop
	jmp	.L142
.L162:
	nop
	jmp	.L142
.L163:
	nop
	jmp	.L142
.L164:
	nop
	jmp	.L142
.L165:
	nop
	jmp	.L142
.L166:
	nop
.L142:
	cmpq	$0, -24(%rbp)
	jne	.L158
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_hm_fragment_free@PLT
.L158:
	movl	$0, %eax
.L159:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	dtls1_process_out_of_seq_message, .-dtls1_process_out_of_seq_message
	.type	dtls_get_reassembled_message, @function
dtls_get_reassembled_message:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-168(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-176(%rbp), %rax
	movl	$0, (%rax)
	movq	-168(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.L168:
	leaq	-64(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dtls1_retrieve_buffered_fragment
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jns	.L169
	movl	$0, %eax
	jmp	.L190
.L169:
	cmpl	$0, -36(%rbp)
	jle	.L171
	movq	-64(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, 264(%rax)
	movq	-64(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L190
.L171:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	128(%rax), %r10
	movq	-32(%rbp), %rcx
	leaq	-65(%rbp), %rdx
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	leaq	-152(%rbp), %rsi
	pushq	%rsi
	movl	$0, %r9d
	movl	$12, %r8d
	movl	$22, %esi
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jg	.L172
	movq	-168(%rbp), %rax
	movl	$3, 104(%rax)
	movq	-184(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L190
.L172:
	movzbl	-65(%rbp), %eax
	cmpb	$20, %al
	jne	.L173
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	je	.L174
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$853, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$103, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L175
.L174:
	movq	-152(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, 264(%rax)
	movq	-168(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, 256(%rax)
	movq	-168(%rbp), %rax
	movl	$257, 696(%rax)
	movq	-152(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, 688(%rax)
	movq	-152(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L190
.L173:
	movq	-152(%rbp), %rax
	cmpq	$12, %rax
	je	.L176
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$868, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$244, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L175
.L176:
	leaq	-144(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dtls1_get_message_header@PLT
	movq	-136(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-168(%rbp), %rax
	movq	3184(%rax), %rdx
	movq	-168(%rbp), %rax
	salq	$6, %rdx
	addq	%rdx, %rax
	addq	$3224, %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L177
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$884, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$271, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L175
.L177:
	movzwl	-128(%rbp), %edx
	movq	-168(%rbp), %rax
	movq	1144(%rax), %rax
	movzwl	272(%rax), %eax
	cmpw	%ax, %dx
	je	.L178
	movq	-168(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L179
	movzwl	-128(%rbp), %eax
	testw	%ax, %ax
	jne	.L179
	movq	-168(%rbp), %rax
	movq	1144(%rax), %rax
	movzwl	272(%rax), %eax
	cmpw	$1, %ax
	jne	.L179
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L179
	movq	-168(%rbp), %rax
	movl	172(%rax), %eax
	cmpl	$23, %eax
	je	.L180
.L179:
	leaq	-144(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dtls1_process_out_of_seq_message
	movq	-176(%rbp), %rdx
	movl	%eax, (%rdx)
	movl	$0, %eax
	jmp	.L190
.L180:
	movl	$1, -4(%rbp)
.L178:
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.L181
	movq	-64(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L181
	leaq	-144(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dtls1_reassemble_fragment
	movq	-176(%rbp), %rdx
	movl	%eax, (%rdx)
	movl	$0, %eax
	jmp	.L190
.L181:
	movq	-168(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L182
	movq	-168(%rbp), %rax
	movq	1144(%rax), %rax
	movq	400(%rax), %rax
	testq	%rax, %rax
	jne	.L182
	movq	-168(%rbp), %rax
	movl	172(%rax), %eax
	cmpl	$1, %eax
	je	.L182
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L182
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L183
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L183
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L183
	movq	-168(%rbp), %rax
	movq	1152(%rax), %rax
	testq	%rax, %rax
	je	.L184
	movq	-168(%rbp), %rax
	movq	1152(%rax), %r10
	movq	-168(%rbp), %rax
	movq	1160(%rax), %rcx
	movq	-168(%rbp), %rax
	movl	72(%rax), %eax
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	subq	$8, %rsp
	pushq	%rcx
	movq	%rsi, %r9
	movl	$12, %r8d
	movq	%rdx, %rcx
	movl	$22, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	*%r10
	addq	$16, %rsp
.L184:
	movq	-168(%rbp), %rax
	movq	$0, 264(%rax)
	jmp	.L168
.L183:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$935, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$244, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L175
.L182:
	leaq	-144(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dtls1_preprocess_fragment
	testl	%eax, %eax
	je	.L191
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.L186
	addq	$12, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	128(%rax), %r10
	movq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	leaq	-152(%rbp), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jg	.L187
	movq	-168(%rbp), %rax
	movl	$3, 104(%rax)
	movq	-184(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L190
.L186:
	movq	$0, -152(%rbp)
.L187:
	movq	-152(%rbp), %rdx
	movq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L188
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$969, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$271, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L175
.L188:
	cmpl	$0, -4(%rbp)
	je	.L189
	movq	-168(%rbp), %rax
	movq	1144(%rax), %rax
	movw	$0, 272(%rax)
	movq	-168(%rbp), %rax
	movq	1144(%rax), %rax
	movw	$0, 270(%rax)
.L189:
	movq	-64(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, 264(%rax)
	movq	-168(%rbp), %rax
	movq	264(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L190
.L191:
	nop
.L175:
	movq	-168(%rbp), %rax
	movq	$0, 264(%rax)
	movq	-184(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
.L190:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	dtls_get_reassembled_message, .-dtls_get_reassembled_message
	.globl	dtls_construct_change_cipher_spec
	.type	dtls_construct_change_cipher_spec, @function
dtls_construct_change_cipher_spec:
.LFB740:
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
	movl	72(%rax), %eax
	cmpl	$256, %eax
	jne	.L193
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movzwl	270(%rax), %edx
	addl	$1, %edx
	movw	%dx, 270(%rax)
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movzwl	268(%rax), %eax
	movzwl	%ax, %ecx
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L193
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1012, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L194
.L193:
	movl	$1, %eax
.L194:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	dtls_construct_change_cipher_spec, .-dtls_construct_change_cipher_spec
	.globl	dtls1_read_failed
	.type	dtls1_read_failed, @function
dtls1_read_failed:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L196
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1066, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L197
.L196:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_is_timer_expired@PLT
	testl	%eax, %eax
	je	.L198
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_in_error@PLT
	testl	%eax, %eax
	je	.L199
.L198:
	movl	-28(%rbp), %eax
	jmp	.L197
.L199:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	jne	.L200
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	-28(%rbp), %eax
	jmp	.L197
.L200:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_handle_timeout@PLT
.L197:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	dtls1_read_failed, .-dtls1_read_failed
	.globl	dtls1_get_queue_priority
	.type	dtls1_get_queue_priority, @function
dtls1_get_queue_priority:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movl	%esi, -8(%rbp)
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	addl	%eax, %eax
	subl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	dtls1_get_queue_priority, .-dtls1_get_queue_priority
	.globl	dtls1_retransmit_buffered_messages
	.type	dtls1_retransmit_buffered_messages, @function
dtls1_retransmit_buffered_messages:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	1144(%rax), %rax
	movq	288(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	pqueue_iterator@PLT
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	pqueue_next@PLT
	movq	%rax, -8(%rbp)
	jmp	.L204
.L207:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	dtls1_get_queue_priority@PLT
	movzwl	%ax, %ecx
	leaq	-36(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	dtls1_retransmit_message@PLT
	testl	%eax, %eax
	jg	.L205
	movl	$-1, %eax
	jmp	.L208
.L205:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	pqueue_next@PLT
	movq	%rax, -8(%rbp)
.L204:
	cmpq	$0, -8(%rbp)
	jne	.L207
	movl	$1, %eax
.L208:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	dtls1_retransmit_buffered_messages, .-dtls1_retransmit_buffered_messages
	.globl	dtls1_buffer_message
	.type	dtls1_buffer_message, @function
dtls1_buffer_message:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	272(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L210
	movl	$0, %eax
	jmp	.L218
.L210:
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	dtls1_hm_fragment_new
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L212
	movl	$0, %eax
	jmp	.L218
.L212:
	movq	-40(%rbp), %rax
	movq	264(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	cmpl	$0, -44(%rbp)
	je	.L213
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	320(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$256, %eax
	jne	.L214
	movl	$3, %eax
	jmp	.L215
.L214:
	movl	$1, %eax
.L215:
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movl	%eax, %eax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L216
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_hm_fragment_free@PLT
	movl	$0, %eax
	jmp	.L218
.L213:
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	320(%rax), %rax
	leaq	12(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movl	%eax, %eax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L216
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_hm_fragment_free@PLT
	movl	$0, %eax
	jmp	.L218
.L216:
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	320(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movzwl	328(%rax), %edx
	movq	-8(%rbp), %rax
	movw	%dx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movzbl	312(%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	320(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	-44(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-40(%rbp), %rax
	movq	3040(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-40(%rbp), %rax
	movq	3056(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
	leaq	-24(%rbp), %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	dtls1_get_queue_priority@PLT
	sarl	$8, %eax
	movb	%al, -18(%rbp)
	movq	-8(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	dtls1_get_queue_priority@PLT
	movb	%al, -17(%rbp)
	movq	-8(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pitem_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L217
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_hm_fragment_free@PLT
	movl	$0, %eax
	jmp	.L218
.L217:
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	288(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pqueue_insert@PLT
	movl	$1, %eax
.L218:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	dtls1_buffer_message, .-dtls1_buffer_message
	.globl	dtls1_retransmit_message
	.type	dtls1_retransmit_message, @function
dtls1_retransmit_message:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, %eax
	movq	%rdx, -88(%rbp)
	movw	%ax, -76(%rbp)
	leaq	-36(%rbp), %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movzwl	-76(%rbp), %eax
	shrw	$8, %ax
	movb	%al, -30(%rbp)
	movzwl	-76(%rbp), %eax
	movb	%al, -29(%rbp)
	movq	-72(%rbp), %rax
	movq	1144(%rax), %rax
	movq	288(%rax), %rax
	leaq	-36(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pqueue_find@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L220
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1209, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movq	-88(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, %eax
	jmp	.L226
.L220:
	movq	-88(%rbp), %rax
	movl	$1, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L222
	movq	$1, -8(%rbp)
	jmp	.L223
.L222:
	movq	$12, -8(%rbp)
.L223:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 264(%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movq	-72(%rbp), %rax
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	dtls1_set_message_header_int
	movq	-72(%rbp), %rax
	movq	3040(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	3056(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	1144(%rax), %rax
	movl	$1, 460(%rax)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 3040(%rax)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 3056(%rax)
	movq	-72(%rbp), %rax
	movq	3040(%rax), %rax
	movq	88(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	3056(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L224
	movl	$20, %edx
	jmp	.L225
.L224:
	movl	$22, %edx
.L225:
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	dtls1_do_write@PLT
	movl	%eax, -28(%rbp)
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 3040(%rax)
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 3056(%rax)
	movq	-72(%rbp), %rax
	movq	1144(%rax), %rax
	movl	$0, 460(%rax)
	movq	-72(%rbp), %rax
	movq	88(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	-28(%rbp), %eax
.L226:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	dtls1_retransmit_message, .-dtls1_retransmit_message
	.globl	dtls1_set_message_header
	.type	dtls1_set_message_header, @function
dtls1_set_message_header:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movb	%al, -12(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L228
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movzwl	270(%rdx), %edx
	movw	%dx, 268(%rax)
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movzwl	270(%rax), %edx
	addl	$1, %edx
	movw	%dx, 270(%rax)
.L228:
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movzwl	268(%rax), %eax
	movzwl	%ax, %ecx
	movzbl	-12(%rbp), %esi
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	dtls1_set_message_header_int
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	dtls1_set_message_header, .-dtls1_set_message_header
	.type	dtls1_set_message_header_int, @function
dtls1_set_message_header_int:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, %eax
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	%esi, %edx
	movb	%dl, -28(%rbp)
	movw	%ax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	addq	$312, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	-28(%rbp), %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movzwl	-32(%rbp), %edx
	movw	%dx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 32(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	dtls1_set_message_header_int, .-dtls1_set_message_header_int
	.type	dtls1_fix_message_header, @function
dtls1_fix_message_header:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	addq	$312, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 32(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	dtls1_fix_message_header, .-dtls1_fix_message_header
	.type	dtls1_write_message_header, @function
dtls1_write_message_header:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	addq	$312, %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	shrq	$16, %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	addq	$3, -32(%rbp)
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %eax
	shrw	$8, %ax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	addq	$2, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	shrq	$16, %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	addq	$3, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	shrq	$16, %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	addq	$3, -32(%rbp)
	movq	-32(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	dtls1_write_message_header, .-dtls1_write_message_header
	.globl	dtls1_get_message_header
	.type	dtls1_get_message_header, @function
dtls1_get_message_header:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	addq	$3, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-16(%rbp), %rax
	movw	%dx, 16(%rax)
	addq	$2, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	addq	$3, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	addq	$3, -8(%rbp)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	dtls1_get_message_header, .-dtls1_get_message_header
	.globl	dtls1_set_handshake_header
	.type	dtls1_set_handshake_header, @function
dtls1_set_handshake_header:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	cmpl	$257, -36(%rbp)
	jne	.L235
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	movzwl	270(%rdx), %edx
	movw	%dx, 268(%rax)
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	movzwl	268(%rax), %eax
	movzwl	%ax, %edx
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	dtls1_set_message_header_int
	movq	-32(%rbp), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L236
	movl	$0, %eax
	jmp	.L239
.L235:
	movl	-36(%rbp), %eax
	movzbl	%al, %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	dtls1_set_message_header@PLT
	leaq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	je	.L238
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet@PLT
	testl	%eax, %eax
	jne	.L236
.L238:
	movl	$0, %eax
	jmp	.L239
.L236:
	movl	$1, %eax
.L239:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	dtls1_set_handshake_header, .-dtls1_set_handshake_header
	.globl	dtls1_close_construct_packet
	.type	dtls1_close_construct_packet, @function
dtls1_close_construct_packet:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	cmpl	$257, -36(%rbp)
	je	.L241
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L242
.L241:
	leaq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_length@PLT
	testl	%eax, %eax
	je	.L242
	movq	-8(%rbp), %rax
	cmpq	$2147483647, %rax
	jbe	.L243
.L242:
	movl	$0, %eax
	jmp	.L247
.L243:
	cmpl	$257, -36(%rbp)
	je	.L245
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	subq	$12, %rdx
	movq	%rdx, 320(%rax)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	subq	$12, %rdx
	movq	%rdx, 344(%rax)
.L245:
	movq	-8(%rbp), %rax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 264(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 272(%rax)
	cmpl	$3, -36(%rbp)
	je	.L246
	cmpl	$257, -36(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	dtls1_buffer_message@PLT
	testl	%eax, %eax
	jne	.L246
	movl	$0, %eax
	jmp	.L247
.L246:
	movl	$1, %eax
.L247:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	dtls1_close_construct_packet, .-dtls1_close_construct_packet
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 26
__func__.4:
	.string	"dtls1_preprocess_fragment"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 29
__func__.3:
	.string	"dtls_get_reassembled_message"
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 34
__func__.2:
	.string	"dtls_construct_change_cipher_spec"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"dtls1_read_failed"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 25
__func__.0:
	.string	"dtls1_retransmit_message"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

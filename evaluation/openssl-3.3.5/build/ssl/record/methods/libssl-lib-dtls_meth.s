	.file	"dtls_meth.c"
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
	.type	satsub64be, @function
satsub64be:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$56, %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$48, %rax
	orq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$40, %rax
	orq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$32, %rax
	orq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$56, %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$48, %rax
	orq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$40, %rax
	orq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$32, %rax
	orq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L14
	cmpq	$0, -24(%rbp)
	jns	.L14
	movl	$128, %eax
	jmp	.L15
.L14:
	movq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L16
	cmpq	$0, -24(%rbp)
	jle	.L16
	movl	$-128, %eax
	jmp	.L15
.L16:
	cmpq	$128, -24(%rbp)
	jle	.L17
	movl	$128, %eax
	jmp	.L15
.L17:
	cmpq	$-128, -24(%rbp)
	jge	.L18
	movl	$-128, %eax
	jmp	.L15
.L18:
	movq	-24(%rbp), %rax
.L15:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	satsub64be, .-satsub64be
	.type	dtls_record_replay_check, @function
dtls_record_replay_check:
.LFB730:
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
	addq	$4096, %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	satsub64be
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.L20
	movq	-24(%rbp), %rax
	leaq	1744(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_tls_rl_record_set_seq_num@PLT
	movl	$1, %eax
	jmp	.L21
.L20:
	movl	-12(%rbp), %eax
	negl	%eax
	movl	%eax, -16(%rbp)
	cmpl	$63, -16(%rbp)
	jbe	.L22
	movl	$0, %eax
	jmp	.L21
.L22:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L23
	movl	$0, %eax
	jmp	.L21
.L23:
	movq	-24(%rbp), %rax
	leaq	1744(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_tls_rl_record_set_seq_num@PLT
	movl	$1, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	dtls_record_replay_check, .-dtls_record_replay_check
	.type	dtls_record_bitmap_update, @function
dtls_record_bitmap_update:
.LFB731:
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
	addq	$4096, %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	satsub64be
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.L25
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	cmpl	$63, -16(%rbp)
	ja	.L26
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	orq	$1, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L27
.L26:
	movq	-32(%rbp), %rax
	movq	$1, (%rax)
.L27:
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	jmp	.L29
.L25:
	movl	-12(%rbp), %eax
	negl	%eax
	movl	%eax, -16(%rbp)
	cmpl	$63, -16(%rbp)
	ja	.L29
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rax
	orq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L29:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	dtls_record_bitmap_update, .-dtls_record_bitmap_update
	.type	dtls_get_bitmap, @function
dtls_get_bitmap:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movzwl	56(%rax), %edx
	movq	-8(%rbp), %rax
	movzwl	48(%rax), %eax
	cmpw	%ax, %dx
	jne	.L31
	movq	-8(%rbp), %rax
	addq	$4320, %rax
	jmp	.L32
.L31:
	movq	-16(%rbp), %rax
	movzwl	56(%rax), %eax
	movzwl	%ax, %edx
	movq	-8(%rbp), %rax
	movzwl	48(%rax), %eax
	movzwl	%ax, %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	jne	.L33
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	addq	$4336, %rax
	jmp	.L32
.L33:
	movl	$0, %eax
.L32:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	dtls_get_bitmap, .-dtls_get_bitmap
	.type	dtls_set_in_init, @function
dtls_set_in_init:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 4352(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	dtls_set_in_init, .-dtls_set_in_init
	.section	.rodata
	.align 8
.LC0:
	.string	"../ssl/record/methods/dtls_meth.c"
	.text
	.type	dtls_process_record, @function
dtls_process_record:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -160(%rbp)
	movl	$0, -152(%rbp)
	movl	$0, -20(%rbp)
	movq	-168(%rbp), %rax
	addq	$1744, %rax
	movq	%rax, -32(%rbp)
	movq	-168(%rbp), %rax
	movq	4080(%rax), %rax
	leaq	13(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$17728, %rax
	jbe	.L36
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$141, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$150, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L57
.L36:
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-168(%rbp), %rax
	movq	4144(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-168(%rbp), %rax
	movq	4144(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L38
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	js	.L39
	cmpl	$64, -44(%rbp)
	jg	.L39
	movl	$1, %eax
	jmp	.L40
.L39:
	movl	$0, %eax
.L40:
	cltq
	testq	%rax, %rax
	jne	.L41
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$155, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L57
.L41:
	movl	-44(%rbp), %eax
	cltq
	movq	%rax, -16(%rbp)
.L38:
	movq	-168(%rbp), %rax
	movl	4256(%rax), %eax
	testl	%eax, %eax
	je	.L42
	movq	-168(%rbp), %rax
	movq	4144(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L43
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$166, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$160, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L57
.L43:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-168(%rbp), %rax
	movq	4408(%rax), %rax
	movq	16(%rax), %r8
	leaq	-144(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L44
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L45
.L44:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$173, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$281, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L57
.L45:
	movq	$0, -16(%rbp)
.L42:
	call	ERR_set_mark@PLT
	movq	-168(%rbp), %rax
	movq	4408(%rax), %rax
	movq	8(%rax), %r10
	movq	-16(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	*%r10
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L46
	call	ERR_pop_to_mark@PLT
	movq	-168(%rbp), %rax
	movl	4104(%rax), %eax
	cmpl	$-1, %eax
	jne	.L58
	movq	-32(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-168(%rbp), %rax
	movq	$0, 4088(%rax)
	jmp	.L48
.L46:
	call	ERR_clear_last_mark@PLT
	movq	$0, -72(%rbp)
	movq	-168(%rbp), %rax
	movl	4256(%rax), %eax
	testl	%eax, %eax
	jne	.L49
	movq	-168(%rbp), %rax
	movq	4128(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movq	-168(%rbp), %rax
	movq	4144(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	testq	%rax, %rax
	je	.L49
	movq	-168(%rbp), %rax
	movq	4408(%rax), %rax
	movq	16(%rax), %r8
	leaq	-144(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L50
	movq	-160(%rbp), %rax
	testq	%rax, %rax
	je	.L50
	movq	-160(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L51
.L50:
	movl	$0, -4(%rbp)
.L51:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	$17408, %rdx
	cmpq	%rax, %rdx
	jnb	.L49
	movl	$0, -4(%rbp)
.L49:
	cmpl	$0, -4(%rbp)
	jne	.L52
	movq	-32(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-168(%rbp), %rax
	movq	$0, 4088(%rax)
	jmp	.L48
.L52:
	movq	-168(%rbp), %rax
	movq	4152(%rax), %rax
	testq	%rax, %rax
	je	.L53
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$17408, %rax
	jbe	.L54
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$239, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$140, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	jmp	.L48
.L54:
	movq	-32(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_do_uncompress@PLT
	testl	%eax, %eax
	jne	.L53
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$244, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$107, %edx
	movl	$30, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	jmp	.L48
.L53:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-168(%rbp), %rdx
	movl	4164(%rdx), %edx
	movl	%edx, %edx
	cmpq	%rax, %rdx
	jnb	.L55
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$254, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$146, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	jmp	.L48
.L55:
	movq	-32(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-168(%rbp), %rax
	movq	$0, 4088(%rax)
	movq	-176(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dtls_record_bitmap_update
	movl	$1, -20(%rbp)
	jmp	.L48
.L58:
	nop
.L48:
	movl	-152(%rbp), %eax
	testl	%eax, %eax
	je	.L56
	movq	-160(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$277, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L56:
	movl	-20(%rbp), %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	dtls_process_record, .-dtls_process_record
	.type	dtls_rlayer_buffer_record, @function
dtls_rlayer_buffer_record:
.LFB735:
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
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	pqueue_size@PLT
	cmpq	$99, %rax
	jbe	.L60
	movl	$0, %eax
	jmp	.L61
.L60:
	leaq	.LC0(%rip), %rax
	movl	$291, %edx
	movq	%rax, %rsi
	movl	$136, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pitem_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L62
	cmpq	$0, -16(%rbp)
	jne	.L63
.L62:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$294, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	pitem_free@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$296, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-1, %eax
	jmp	.L61
.L63:
	movq	-24(%rbp), %rax
	movq	4080(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	4088(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	leaq	1696(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	leaq	1744(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movl	$72, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 4080(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 4088(%rax)
	movq	-24(%rbp), %rax
	addq	$1696, %rax
	movl	$48, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	addq	$1744, %rax
	movl	$72, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tls_setup_read_buffer@PLT
	testl	%eax, %eax
	jne	.L64
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$314, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$315, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	pitem_free@PLT
	movl	$-1, %eax
	jmp	.L61
.L64:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pqueue_insert@PLT
	testq	%rax, %rax
	jne	.L65
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$322, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$323, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	pitem_free@PLT
.L65:
	movl	$1, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	dtls_rlayer_buffer_record, .-dtls_rlayer_buffer_record
	.type	dtls_copy_rlayer_record, @function
dtls_copy_rlayer_record:
.LFB736:
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
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$1696, %rax
	movq	%rax, %rdi
	call	ossl_tls_buffer_release@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 4080(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 4088(%rax)
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	$1696, %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	$1744, %rax
	movl	$72, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	5(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	$4098, %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	dtls_copy_rlayer_record, .-dtls_copy_rlayer_record
	.type	dtls_retrieve_rlayer_buffered_record, @function
dtls_retrieve_rlayer_buffered_record:
.LFB737:
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
	movq	%rax, %rdi
	call	pqueue_pop@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L69
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dtls_copy_rlayer_record
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$359, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	pitem_free@PLT
	movl	$1, %eax
	jmp	.L70
.L69:
	movl	$0, %eax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	dtls_retrieve_rlayer_buffered_record, .-dtls_retrieve_rlayer_buffered_record
	.globl	dtls_get_more_records
	.type	dtls_get_more_records, @function
dtls_get_more_records:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	$0, 4048(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 4056(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 4064(%rax)
	movq	-72(%rbp), %rax
	addq	$1744, %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	1696(%rax), %rax
	testq	%rax, %rax
	jne	.L99
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	tls_setup_read_buffer@PLT
	testl	%eax, %eax
	jne	.L99
	movl	$-2, %eax
	jmp	.L98
.L99:
	nop
.L72:
.L79:
	movq	-72(%rbp), %rax
	movq	4312(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dtls_retrieve_rlayer_buffered_record
	testl	%eax, %eax
	je	.L74
	movq	-72(%rbp), %rax
	movq	$1, 4048(%rax)
	movl	$1, %eax
	jmp	.L98
.L74:
	movq	-72(%rbp), %rax
	movl	4072(%rax), %eax
	cmpl	$241, %eax
	jne	.L75
	movq	-72(%rbp), %rax
	movq	4088(%rax), %rax
	cmpq	$12, %rax
	ja	.L76
.L75:
	movq	-72(%rbp), %rax
	movq	4408(%rax), %rax
	movq	32(%rax), %r10
	movq	-72(%rbp), %rax
	movq	1712(%rax), %rdx
	leaq	-56(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %r9
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$13, %esi
	movq	%rax, %rdi
	call	*%r10
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L77
	movl	-20(%rbp), %eax
	jmp	.L98
.L77:
	movq	-72(%rbp), %rax
	movq	4088(%rax), %rax
	cmpq	$13, %rax
	je	.L78
	movq	-72(%rbp), %rax
	movq	$0, 4088(%rax)
	jmp	.L79
.L78:
	movq	-72(%rbp), %rax
	movl	$241, 4072(%rax)
	movq	-72(%rbp), %rax
	movq	4080(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	sall	$8, %eax
	orl	-28(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
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
	movw	%dx, 56(%rax)
	addq	$2, -8(%rbp)
	movq	-72(%rbp), %rax
	leaq	4098(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	$6, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	addq	$6, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	addq	$2, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	4376(%rax), %rax
	testq	%rax, %rax
	je	.L80
	movq	-72(%rbp), %rax
	movq	4376(%rax), %r10
	movq	-72(%rbp), %rax
	movq	4360(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	4080(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	%rcx, %r9
	movl	$13, %r8d
	movq	%rdx, %rcx
	movl	$256, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	*%r10
.L80:
	movq	-72(%rbp), %rax
	movl	4288(%rax), %eax
	testl	%eax, %eax
	jne	.L81
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$21, %eax
	je	.L81
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, %edx
	je	.L81
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 4088(%rax)
	jmp	.L79
.L81:
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$131071, %eax
	je	.L82
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	sarl	$8, %eax
	jmp	.L83
.L82:
	movl	$254, %eax
.L83:
	cmpl	-24(%rbp), %eax
	je	.L84
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 4088(%rax)
	jmp	.L79
.L84:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$17728, %rax
	jbe	.L85
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 4088(%rax)
	jmp	.L79
.L85:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movl	4164(%rdx), %edx
	addl	$320, %edx
	movl	%edx, %edx
	cmpq	%rax, %rdx
	jnb	.L76
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 4088(%rax)
	jmp	.L79
.L76:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	4088(%rdx), %rdx
	subq	$13, %rdx
	cmpq	%rax, %rdx
	jnb	.L86
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	4408(%rax), %rax
	movq	32(%rax), %r10
	leaq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rcx, %r9
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	*%r10
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L87
	movq	-56(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	je	.L86
.L87:
	movq	-72(%rbp), %rax
	movl	4104(%rax), %eax
	cmpl	$-1, %eax
	je	.L88
	movl	$-2, %eax
	jmp	.L98
.L88:
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 4088(%rax)
	jmp	.L79
.L86:
	movq	-72(%rbp), %rax
	movl	$240, 4072(%rax)
	leaq	-60(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dtls_get_bitmap
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L89
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 4088(%rax)
	jmp	.L79
.L89:
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dtls_record_replay_check
	testl	%eax, %eax
	jne	.L90
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 4088(%rax)
	jmp	.L79
.L90:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L91
	jmp	.L79
.L91:
	movl	-60(%rbp), %eax
	testl	%eax, %eax
	je	.L92
	movq	-72(%rbp), %rax
	movl	4352(%rax), %eax
	testl	%eax, %eax
	je	.L93
	movq	-16(%rbp), %rax
	leaq	58(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	4304(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dtls_rlayer_buffer_record
	testl	%eax, %eax
	jns	.L93
	movl	$-2, %eax
	jmp	.L98
.L93:
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 4088(%rax)
	jmp	.L79
.L92:
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dtls_process_record
	testl	%eax, %eax
	jne	.L94
	movq	-72(%rbp), %rax
	movl	4104(%rax), %eax
	cmpl	$-1, %eax
	je	.L95
	movl	$-2, %eax
	jmp	.L98
.L95:
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 4088(%rax)
	jmp	.L79
.L94:
	movq	-72(%rbp), %rax
	movq	4408(%rax), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L96
	movq	-72(%rbp), %rax
	movq	4408(%rax), %rax
	movq	56(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L96
	movl	$-2, %eax
	jmp	.L98
.L96:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L97
	movq	-72(%rbp), %rax
	movq	$0, 4088(%rax)
	jmp	.L79
.L97:
	movq	-72(%rbp), %rax
	movq	$1, 4048(%rax)
	movl	$1, %eax
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	dtls_get_more_records, .-dtls_get_more_records
	.type	dtls_free, @function
dtls_free:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	$1, -4(%rbp)
	movq	-56(%rbp), %rax
	addq	$1696, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L101
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	leaq	-48(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	call	BIO_write_ex@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.L101:
	movq	-56(%rbp), %rax
	movq	4304(%rax), %rax
	testq	%rax, %rax
	je	.L102
	jmp	.L103
.L104:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	leaq	-48(%rbp), %rcx
	movq	%rax, %rdi
	call	BIO_write_ex@PLT
	andl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$610, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$611, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	pitem_free@PLT
.L103:
	movq	-56(%rbp), %rax
	movq	4304(%rax), %rax
	movq	%rax, %rdi
	call	pqueue_pop@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L104
	movq	-56(%rbp), %rax
	movq	4304(%rax), %rax
	movq	%rax, %rdi
	call	pqueue_free@PLT
.L102:
	movq	-56(%rbp), %rax
	movq	4312(%rax), %rax
	testq	%rax, %rax
	je	.L105
	jmp	.L106
.L107:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$620, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$621, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	pitem_free@PLT
.L106:
	movq	-56(%rbp), %rax
	movq	4312(%rax), %rax
	movq	%rax, %rdi
	call	pqueue_pop@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L107
	movq	-56(%rbp), %rax
	movq	4312(%rax), %rax
	movq	%rax, %rdi
	call	pqueue_free@PLT
.L105:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	tls_free@PLT
	testl	%eax, %eax
	je	.L108
	cmpl	$0, -4(%rbp)
	je	.L108
	movl	$1, %eax
	jmp	.L110
.L108:
	movl	$0, %eax
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	dtls_free, .-dtls_free
	.type	dtls_new_record_layer, @function
dtls_new_record_layer:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movl	%r9d, -64(%rbp)
	movl	16(%rbp), %eax
	movw	%ax, -68(%rbp)
	movl	-64(%rbp), %r8d
	movl	-60(%rbp), %edi
	movl	-56(%rbp), %ecx
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	216(%rbp)
	pushq	200(%rbp)
	pushq	192(%rbp)
	pushq	184(%rbp)
	pushq	176(%rbp)
	pushq	152(%rbp)
	pushq	144(%rbp)
	pushq	136(%rbp)
	pushq	120(%rbp)
	pushq	112(%rbp)
	pushq	96(%rbp)
	pushq	88(%rbp)
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	tls_int_new_record_layer@PLT
	addq	$96, %rsp
	movl	%eax, -20(%rbp)
	cmpl	$1, -20(%rbp)
	je	.L112
	movl	-20(%rbp), %eax
	jmp	.L113
.L112:
	movq	216(%rbp), %rax
	movq	(%rax), %rbx
	call	pqueue_new@PLT
	movq	%rax, 4304(%rbx)
	movq	216(%rbp), %rax
	movq	(%rax), %rbx
	call	pqueue_new@PLT
	movq	%rax, 4312(%rbx)
	movq	216(%rbp), %rax
	movq	(%rax), %rax
	movq	4304(%rax), %rax
	testq	%rax, %rax
	je	.L114
	movq	216(%rbp), %rax
	movq	(%rax), %rax
	movq	4312(%rax), %rax
	testq	%rax, %rax
	jne	.L115
.L114:
	movq	216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	dtls_free
	movq	216(%rbp), %rax
	movq	$0, (%rax)
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$662, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524308, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L113
.L115:
	movq	216(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, 16(%rax)
	movq	216(%rbp), %rax
	movq	(%rax), %rax
	movzwl	-68(%rbp), %edx
	movw	%dx, 48(%rax)
	movq	216(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, 4352(%rax)
	cmpl	$131071, -52(%rbp)
	je	.L116
	cmpl	$131071, -52(%rbp)
	jg	.L117
	cmpl	$65279, -52(%rbp)
	je	.L118
	cmpl	$65279, -52(%rbp)
	jg	.L117
	cmpl	$256, -52(%rbp)
	je	.L118
	cmpl	$65277, -52(%rbp)
	je	.L118
	jmp	.L117
.L116:
	movq	216(%rbp), %rax
	movq	(%rax), %rax
	movq	dtls_any_funcs@GOTPCREL(%rip), %rdx
	movq	%rdx, 4408(%rax)
	jmp	.L119
.L118:
	movq	216(%rbp), %rax
	movq	(%rax), %rax
	movq	dtls_1_funcs@GOTPCREL(%rip), %rdx
	movq	%rdx, 4408(%rax)
	jmp	.L119
.L117:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$681, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, -20(%rbp)
	jmp	.L120
.L119:
	movq	216(%rbp), %rax
	movq	(%rax), %rax
	movq	4408(%rax), %rax
	movq	(%rax), %r10
	movq	216(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rbp), %r9
	movq	56(%rbp), %r8
	movq	48(%rbp), %rcx
	movq	40(%rbp), %rdx
	movl	-64(%rbp), %esi
	subq	$8, %rsp
	pushq	120(%rbp)
	pushq	112(%rbp)
	movl	104(%rbp), %edi
	pushq	%rdi
	pushq	96(%rbp)
	pushq	88(%rbp)
	pushq	80(%rbp)
	pushq	72(%rbp)
	movq	%rax, %rdi
	call	*%r10
	addq	$64, %rsp
	movl	%eax, -20(%rbp)
.L120:
	cmpl	$1, -20(%rbp)
	je	.L121
	movq	216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	dtls_free
	movq	216(%rbp), %rax
	movq	$0, (%rax)
.L121:
	movl	-20(%rbp), %eax
.L113:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	dtls_new_record_layer, .-dtls_new_record_layer
	.globl	dtls_prepare_record_header
	.type	dtls_prepare_record_header, @function
dtls_prepare_record_header:
.LFB741:
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
	movl	%ecx, %eax
	movq	%r8, -56(%rbp)
	movb	%al, -44(%rbp)
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	4152(%rax), %rax
	testq	%rax, %rax
	je	.L123
	addq	$1024, -8(%rbp)
.L123:
	movzbl	-44(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L124
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L124
	movq	-24(%rbp), %rax
	movzwl	48(%rax), %eax
	movzwl	%ax, %ecx
	movq	-32(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L124
	movq	-24(%rbp), %rax
	leaq	4098(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L124
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L124
	movq	-24(%rbp), %rax
	movq	4136(%rax), %rax
	testq	%rax, %rax
	je	.L125
	movq	-24(%rbp), %rax
	movq	4136(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	je	.L124
.L125:
	cmpq	$0, -8(%rbp)
	je	.L126
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_reserve_bytes@PLT
	testl	%eax, %eax
	jne	.L126
.L124:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$722, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L127
.L126:
	movl	$1, %eax
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	dtls_prepare_record_header, .-dtls_prepare_record_header
	.globl	dtls_post_encryption_processing
	.type	dtls_post_encryption_processing, @function
dtls_post_encryption_processing:
.LFB742:
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
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	tls_post_encryption_processing_default@PLT
	testl	%eax, %eax
	jne	.L129
	movl	$0, %eax
	jmp	.L130
.L129:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tls_increment_sequence_ctr@PLT
.L130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	dtls_post_encryption_processing, .-dtls_post_encryption_processing
	.type	dtls_get_max_record_overhead, @function
dtls_get_max_record_overhead:
.LFB743:
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
	movq	4128(%rax), %rax
	testq	%rax, %rax
	je	.L132
	movq	-24(%rbp), %rax
	movq	4128(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$2, %eax
	jne	.L132
	movq	-24(%rbp), %rax
	movq	4128(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_block_size@PLT
	cltq
	movq	%rax, -8(%rbp)
.L132:
	movq	-24(%rbp), %rax
	movq	4136(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	4296(%rax), %rax
	addq	%rdx, %rax
	addq	$13, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	dtls_get_max_record_overhead, .-dtls_get_max_record_overhead
	.globl	ossl_dtls_record_method
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_dtls_record_method, @object
	.size	ossl_dtls_record_method, 200
ossl_dtls_record_method:
	.quad	dtls_new_record_layer
	.quad	dtls_free
	.quad	tls_unprocessed_read_pending
	.quad	tls_processed_read_pending
	.quad	tls_app_data_pending
	.quad	tls_get_max_records
	.quad	tls_write_records
	.quad	tls_retry_write_records
	.quad	tls_read_record
	.quad	tls_release_record
	.quad	tls_get_alert_code
	.quad	tls_set1_bio
	.quad	tls_set_protocol_version
	.quad	0
	.quad	tls_set_first_handshake
	.quad	tls_set_max_pipelines
	.quad	dtls_set_in_init
	.quad	tls_get_state
	.quad	tls_set_options
	.quad	tls_get_compression
	.quad	tls_set_max_frag_len
	.quad	dtls_get_max_record_overhead
	.quad	tls_increment_sequence_ctr
	.quad	tls_alloc_buffers
	.quad	tls_free_buffers
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 20
__func__.3:
	.string	"dtls_process_record"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 26
__func__.2:
	.string	"dtls_rlayer_buffer_record"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 22
__func__.1:
	.string	"dtls_new_record_layer"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 27
__func__.0:
	.string	"dtls_prepare_record_header"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

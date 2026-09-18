	.file	"quic_sf_list.c"
	.text
	.section	.rodata
.LC0:
	.string	"../ssl/quic/quic_sf_list.c"
	.text
	.type	stream_frame_free, @function
stream_frame_free:
.LFB598:
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
	movl	44(%rax), %eax
	testl	%eax, %eax
	je	.L2
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L2
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L2:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qrx_pkt_release@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$27, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	stream_frame_free, .-stream_frame_free
	.type	stream_frame_new, @function
stream_frame_new:
.LFB599:
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
	leaq	.LC0(%rip), %rax
	movl	$33, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L5
.L4:
	cmpq	$0, -32(%rbp)
	je	.L6
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qrx_pkt_up_ref@PLT
.L6:
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	stream_frame_new, .-stream_frame_new
	.globl	ossl_sframe_list_init
	.type	ossl_sframe_list_init, @function
ossl_sframe_list_init:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$48, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	ossl_sframe_list_init, .-ossl_sframe_list_init
	.globl	ossl_sframe_list_destroy
	.type	ossl_sframe_list_destroy, @function
ossl_sframe_list_destroy:
.LFB601:
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
	movq	%rax, -8(%rbp)
	jmp	.L9
.L10:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stream_frame_free
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L9:
	cmpq	$0, -8(%rbp)
	jne	.L10
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	ossl_sframe_list_destroy, .-ossl_sframe_list_destroy
	.type	append_frame, @function
append_frame:
.LFB602:
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
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stream_frame_new
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L14
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L14:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	append_frame, .-append_frame
	.globl	ossl_sframe_list_insert
	.type	ossl_sframe_list_insert, @function
ossl_sframe_list_insert:
.LFB603:
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
	movl	%r8d, -84(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L45
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L18
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stream_frame_new
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 24(%rax)
	jmp	.L17
.L18:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L21
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L46
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	append_frame
	testl	%eax, %eax
	jne	.L47
	movl	$0, %eax
	jmp	.L20
.L21:
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L24
.L26:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L24:
	cmpq	$0, -8(%rbp)
	je	.L25
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L26
.L25:
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L27
	movl	$0, %eax
	jmp	.L20
.L27:
	cmpq	$0, -16(%rbp)
	je	.L28
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L48
.L28:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stream_frame_new
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L29
	movl	$0, %eax
	jmp	.L20
.L29:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L30
.L36:
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L31
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L31:
	cmpq	$0, -16(%rbp)
	je	.L32
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
.L32:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jne	.L33
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L33:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jne	.L34
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L34:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stream_frame_free
.L30:
	cmpq	$0, -24(%rbp)
	je	.L35
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	8(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L36
.L35:
	cmpq	$0, -24(%rbp)
	je	.L37
	cmpq	$0, -16(%rbp)
	je	.L38
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	cmpq	%rax, %rdx
	jb	.L38
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stream_frame_free
	jmp	.L17
.L38:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L39
.L37:
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L39:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -16(%rbp)
	je	.L40
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L41
.L40:
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
.L41:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 24(%rax)
	jmp	.L17
.L45:
	nop
	jmp	.L17
.L46:
	nop
	jmp	.L17
.L47:
	nop
	jmp	.L17
.L48:
	nop
.L17:
	cmpl	$0, -84(%rbp)
	jne	.L42
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L43
.L42:
	movl	$1, %eax
	jmp	.L44
.L43:
	movl	$0, %eax
.L44:
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 16(%rax)
	movl	$1, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	ossl_sframe_list_insert, .-ossl_sframe_list_insert
	.globl	ossl_sframe_list_peek
	.type	ossl_sframe_list_peek, @function
ossl_sframe_list_peek:
.LFB604:
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
	movq	%r8, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L50
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L51
.L50:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L51:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -8(%rbp)
	je	.L52
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L52
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -16(%rbp)
	setb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L53
.L52:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -8(%rbp)
	jne	.L54
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %edx
	jmp	.L55
.L54:
	movl	$0, %edx
.L55:
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L56
.L53:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	subq	%rax, %rcx
	addq	%rcx, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L58
.L57:
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
.L58:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L59
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %edx
	jmp	.L60
.L59:
	movl	$0, %edx
.L60:
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L56:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	ossl_sframe_list_peek, .-ossl_sframe_list_peek
	.globl	ossl_sframe_list_drop_frames
	.type	ossl_sframe_list_drop_frames, @function
ossl_sframe_list_drop_frames:
.LFB605:
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
	movq	32(%rax), %rax
	cmpq	%rax, -32(%rbp)
	setnb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L62
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L63
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	cmpq	-32(%rbp), %rax
	jb	.L64
.L63:
	movl	$1, %eax
	jmp	.L65
.L64:
	movl	$0, %eax
.L65:
	cltq
	testq	%rax, %rax
	je	.L62
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L66
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L67
.L66:
	movl	$1, %eax
	jmp	.L68
.L67:
	movl	$0, %eax
.L68:
	cltq
	testq	%rax, %rax
	jne	.L69
.L62:
	movl	$0, %eax
	jmp	.L70
.L69:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L71
.L73:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stream_frame_free
.L71:
	cmpq	$0, -8(%rbp)
	je	.L72
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L73
.L72:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -8(%rbp)
	je	.L74
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L75
.L74:
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
.L75:
	movq	-24(%rbp), %rax
	movl	$0, 40(%rax)
	movl	$1, %eax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	ossl_sframe_list_drop_frames, .-ossl_sframe_list_drop_frames
	.globl	ossl_sframe_list_lock_head
	.type	ossl_sframe_list_lock_head, @function
ossl_sframe_list_lock_head:
.LFB606:
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
	movq	%rcx, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L77
	movl	$0, %eax
	jmp	.L80
.L77:
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_sframe_list_peek@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L79
	movq	-24(%rbp), %rax
	movl	$1, 40(%rax)
.L79:
	movl	-4(%rbp), %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	ossl_sframe_list_lock_head, .-ossl_sframe_list_lock_head
	.globl	ossl_sframe_list_is_head_locked
	.type	ossl_sframe_list_is_head_locked, @function
ossl_sframe_list_is_head_locked:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	40(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	ossl_sframe_list_is_head_locked, .-ossl_sframe_list_is_head_locked
	.globl	ossl_sframe_list_move_data
	.type	ossl_sframe_list_move_data, @function
ossl_sframe_list_move_data:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L84
	movl	$1, %eax
	jmp	.L85
.L84:
	movq	-56(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L87
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L87
.L97:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L88
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.L88:
	cmpq	$0, -32(%rbp)
	je	.L89
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L90
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	addq	%rdx, -32(%rbp)
.L90:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L91
	movl	$0, %eax
	jmp	.L85
.L91:
	movq	-56(%rbp), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	je	.L92
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L92:
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qrx_pkt_release@PLT
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
.L89:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L93
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L93
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L94
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L95
.L94:
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L95:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stream_frame_free
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L96
.L93:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.L96:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L87:
	cmpq	$0, -8(%rbp)
	jne	.L97
	movl	$1, %eax
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	ossl_sframe_list_move_data, .-ossl_sframe_list_move_data
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

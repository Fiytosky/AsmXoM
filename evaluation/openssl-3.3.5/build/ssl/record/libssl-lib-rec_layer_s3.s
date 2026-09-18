	.file	"rec_layer_s3.c"
	.text
	.type	packet_forward, @function
packet_forward:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	packet_forward, .-packet_forward
	.type	PACKET_remaining, @function
PACKET_remaining:
.LFB500:
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
.LFE500:
	.size	PACKET_remaining, .-PACKET_remaining
	.type	PACKET_buf_init, @function
PACKET_buf_init:
.LFB503:
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
	testq	%rax, %rax
	jns	.L5
	movl	$0, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	PACKET_peek_1, @function
PACKET_peek_1:
.LFB519:
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
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	PACKET_peek_1, .-PACKET_peek_1
	.type	PACKET_get_1, @function
PACKET_get_1:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_peek_1
	testl	%eax, %eax
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	PACKET_get_1, .-PACKET_get_1
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
	.globl	RECORD_LAYER_init
	.type	RECORD_LAYER_init, @function
RECORD_LAYER_init:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	RECORD_LAYER_init, .-RECORD_LAYER_init
	.globl	RECORD_LAYER_clear
	.type	RECORD_LAYER_clear, @function
RECORD_LAYER_clear:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L27
.L28:
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 176(%rdx)
	salq	$6, %rax
	leaq	176(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_release_record@PLT
	andl	%eax, -4(%rbp)
.L27:
	movq	-24(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L28
	movq	-24(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-24(%rbp), %rax
	addq	$88, %rax
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-24(%rbp), %rax
	movb	$0, 112(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 128(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 176(%rax)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L29
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L29:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L30
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L30:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DTLS_RECORD_LAYER_clear@PLT
.L31:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	RECORD_LAYER_clear, .-RECORD_LAYER_clear
	.globl	RECORD_LAYER_reset
	.type	RECORD_LAYER_reset, @function
RECORD_LAYER_reset:
.LFB731:
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
	call	RECORD_LAYER_clear@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L34
	movl	$131071, %esi
	jmp	.L35
.L34:
	movl	$65536, %esi
.L35:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ssl_set_new_record_layer@PLT
	addq	$96, %rsp
	andl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L36
	movl	$131071, %esi
	jmp	.L37
.L36:
	movl	$65536, %esi
.L37:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ssl_set_new_record_layer@PLT
	addq	$96, %rsp
	andl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	RECORD_LAYER_reset, .-RECORD_LAYER_reset
	.globl	RECORD_LAYER_read_pending
	.type	RECORD_LAYER_read_pending, @function
RECORD_LAYER_read_pending:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	RECORD_LAYER_read_pending, .-RECORD_LAYER_read_pending
	.globl	RECORD_LAYER_processed_read_pending
	.type	RECORD_LAYER_processed_read_pending, @function
RECORD_LAYER_processed_read_pending:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L42
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L43
.L42:
	movl	$1, %eax
	jmp	.L45
.L43:
	movl	$0, %eax
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	RECORD_LAYER_processed_read_pending, .-RECORD_LAYER_processed_read_pending
	.globl	RECORD_LAYER_write_pending
	.type	RECORD_LAYER_write_pending, @function
RECORD_LAYER_write_pending:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	RECORD_LAYER_write_pending, .-RECORD_LAYER_write_pending
	.section	.rodata
.LC0:
	.string	"../ssl/record/rec_layer_s3.c"
	.text
	.type	ossl_get_max_early_data, @function
ossl_get_max_early_data:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L49
	movq	-16(%rbp), %rax
	movl	836(%rax), %eax
	testl	%eax, %eax
	jne	.L49
	movq	-24(%rbp), %rax
	movq	2192(%rax), %rax
	testq	%rax, %rax
	je	.L50
	movq	-24(%rbp), %rax
	movq	2192(%rax), %rax
	movl	836(%rax), %eax
	testl	%eax, %eax
	je	.L50
	movl	$1, %eax
	jmp	.L51
.L50:
	movl	$0, %eax
.L51:
	cltq
	testq	%rax, %rax
	jne	.L52
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$127, %esi
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
	jmp	.L53
.L52:
	movq	-24(%rbp), %rax
	movq	2192(%rax), %rax
	movq	%rax, -16(%rbp)
.L49:
	movq	-24(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L54
	movq	-16(%rbp), %rax
	movl	836(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L55
.L54:
	movq	-24(%rbp), %rax
	movl	2688(%rax), %eax
	cmpl	$2, %eax
	je	.L56
	movq	-24(%rbp), %rax
	movl	5284(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L55
.L56:
	movq	-16(%rbp), %rax
	movl	836(%rax), %edx
	movq	-24(%rbp), %rax
	movl	5284(%rax), %eax
	cmpl	%eax, %edx
	cmovbe	%edx, %eax
	movl	%eax, -4(%rbp)
.L55:
	movl	-4(%rbp), %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	ossl_get_max_early_data, .-ossl_get_max_early_data
	.type	ossl_early_data_count_ok, @function
ossl_early_data_count_ok:
.LFB736:
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
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_get_max_early_data
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L58
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$152, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	cmpl	$0, -44(%rbp)
	je	.L59
	movl	$80, %esi
	jmp	.L60
.L59:
	movl	$10, %esi
.L60:
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$164, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L61
.L58:
	movq	-40(%rbp), %rax
	addl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	5288(%rax), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	cmpq	%rax, %rdx
	jnb	.L62
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$161, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	cmpl	$0, -44(%rbp)
	je	.L63
	movl	$80, %esi
	jmp	.L64
.L63:
	movl	$10, %esi
.L64:
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$164, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L61
.L62:
	movq	-24(%rbp), %rax
	movl	5288(%rax), %eax
	movq	-32(%rbp), %rdx
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 5288(%rax)
	movl	$1, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	ossl_early_data_count_ok, .-ossl_early_data_count_ok
	.globl	ssl3_pending
	.type	ssl3_pending, @function
ssl3_pending:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L66
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L67
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L68
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L69
.L68:
	movq	$0, -24(%rbp)
	jmp	.L69
.L67:
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L69
.L66:
	movq	$0, -24(%rbp)
.L69:
	cmpq	$0, -24(%rbp)
	jne	.L70
	movl	$0, %eax
	jmp	.L71
.L70:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L72
	movq	-24(%rbp), %rax
	movq	3144(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	pqueue_iterator@PLT
	movq	%rax, -48(%rbp)
	jmp	.L73
.L74:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	addq	%rax, -16(%rbp)
.L73:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	pqueue_next@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L74
.L72:
	movq	$0, -8(%rbp)
	jmp	.L75
.L77:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	salq	$6, %rdx
	addq	%rdx, %rax
	addq	$3204, %rax
	movzbl	(%rax), %eax
	cmpb	$23, %al
	je	.L76
	movq	-16(%rbp), %rax
	jmp	.L71
.L76:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	salq	$6, %rdx
	addq	%rdx, %rax
	addq	$3224, %rax
	movq	(%rax), %rax
	addq	%rax, -16(%rbp)
	addq	$1, -8(%rbp)
.L75:
	movq	-24(%rbp), %rax
	movq	3176(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L77
	movq	-24(%rbp), %rax
	movq	3032(%rax), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	3048(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	addq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	ssl3_pending, .-ssl3_pending
	.globl	SSL_CTX_set_default_read_buffer_len
	.type	SSL_CTX_set_default_read_buffer_len, @function
SSL_CTX_set_default_read_buffer_len:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 512(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	SSL_CTX_set_default_read_buffer_len, .-SSL_CTX_set_default_read_buffer_len
	.globl	SSL_set_default_read_buffer_len
	.type	SSL_set_default_read_buffer_len, @function
SSL_set_default_read_buffer_len:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L80
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L81
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L82
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L83
.L82:
	movq	$0, -8(%rbp)
	jmp	.L83
.L81:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L83
.L80:
	movq	$0, -8(%rbp)
.L83:
	cmpq	$0, -8(%rbp)
	je	.L87
	cmpq	$0, -24(%rbp)
	je	.L85
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L87
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L87
.L85:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 3072(%rax)
	jmp	.L79
.L87:
	nop
.L79:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	SSL_set_default_read_buffer_len, .-SSL_set_default_read_buffer_len
	.section	.rodata
.LC1:
	.string	"unknown"
	.text
	.globl	SSL_rstate_string_long
	.type	SSL_rstate_string_long, @function
SSL_rstate_string_long:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L89
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L90
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L91
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L92
.L91:
	movq	$0, -8(%rbp)
	jmp	.L92
.L90:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L92
.L89:
	movq	$0, -8(%rbp)
.L92:
	cmpq	$0, -8(%rbp)
	jne	.L93
	movl	$0, %eax
	jmp	.L97
.L93:
	movq	-8(%rbp), %rax
	movq	3032(%rax), %rax
	testq	%rax, %rax
	je	.L95
	movq	-8(%rbp), %rax
	movq	3048(%rax), %rax
	testq	%rax, %rax
	jne	.L96
.L95:
	leaq	.LC1(%rip), %rax
	jmp	.L97
.L96:
	movq	-8(%rbp), %rax
	movq	3032(%rax), %rax
	movq	136(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	3048(%rax), %rax
	leaq	-16(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%rcx
	movq	-16(%rbp), %rax
.L97:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	SSL_rstate_string_long, .-SSL_rstate_string_long
	.globl	SSL_rstate_string
	.type	SSL_rstate_string, @function
SSL_rstate_string:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L99
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L100
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L101
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L102
.L101:
	movq	$0, -8(%rbp)
	jmp	.L102
.L100:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L102
.L99:
	movq	$0, -8(%rbp)
.L102:
	cmpq	$0, -8(%rbp)
	jne	.L103
	movl	$0, %eax
	jmp	.L107
.L103:
	movq	-8(%rbp), %rax
	movq	3032(%rax), %rax
	testq	%rax, %rax
	je	.L105
	movq	-8(%rbp), %rax
	movq	3048(%rax), %rax
	testq	%rax, %rax
	jne	.L106
.L105:
	leaq	.LC1(%rip), %rax
	jmp	.L107
.L106:
	movq	-8(%rbp), %rax
	movq	3032(%rax), %rax
	movq	136(%rax), %r8
	movq	-8(%rbp), %rax
	movq	3048(%rax), %rax
	leaq	-16(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-16(%rbp), %rax
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	SSL_rstate_string, .-SSL_rstate_string
	.type	tls_write_check_pending, @function
tls_write_check_pending:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movb	%al, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	3112(%rax), %rax
	testq	%rax, %rax
	jne	.L109
	movl	$0, %eax
	jmp	.L110
.L109:
	movq	-8(%rbp), %rax
	movq	3112(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L111
	movq	-8(%rbp), %rax
	movl	2368(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L112
	movq	-8(%rbp), %rax
	movq	3128(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jne	.L111
.L112:
	movq	-8(%rbp), %rax
	movzbl	3120(%rax), %eax
	cmpb	%al, -12(%rbp)
	je	.L113
.L111:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$257, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$127, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L110
.L113:
	movl	$1, %eax
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	tls_write_check_pending, .-tls_write_check_pending
	.globl	ssl3_write_bytes
	.type	ssl3_write_bytes, @function
ssl3_write_bytes:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$928, %rsp
	movq	%rdi, -888(%rbp)
	movl	%esi, %eax
	movq	%rdx, -904(%rbp)
	movq	%rcx, -912(%rbp)
	movq	%r8, -920(%rbp)
	movb	%al, -892(%rbp)
	movq	-904(%rbp), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -888(%rbp)
	je	.L115
	movq	-888(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L116
	movq	-888(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L117
.L116:
	movq	$0, -32(%rbp)
	jmp	.L117
.L115:
	movq	$0, -32(%rbp)
.L117:
	cmpq	$0, -32(%rbp)
	jne	.L118
	movl	$-1, %eax
	jmp	.L153
.L118:
	movq	-32(%rbp), %rax
	movl	$1, 104(%rax)
	movq	-32(%rbp), %rax
	movq	3088(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	3088(%rax), %rax
	cmpq	%rax, -912(%rbp)
	jb	.L120
	movq	-32(%rbp), %rax
	movq	3112(%rax), %rax
	testq	%rax, %rax
	je	.L121
	movq	-32(%rbp), %rax
	movq	3088(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	3112(%rax), %rax
	addq	%rdx, %rax
	cmpq	%rax, -912(%rbp)
	jnb	.L121
.L120:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$295, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$271, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L153
.L121:
	movq	-32(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$4, %eax
	jne	.L122
	movq	-912(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_early_data_count_ok
	testl	%eax, %eax
	jne	.L122
	movl	$-1, %eax
	jmp	.L153
.L122:
	movq	-32(%rbp), %rax
	movq	$0, 3088(%rax)
	movq	-32(%rbp), %rax
	movq	3112(%rax), %rax
	testq	%rax, %rax
	jne	.L123
	movq	-32(%rbp), %rax
	movl	2828(%rax), %eax
	cmpl	$-1, %eax
	jne	.L124
	movq	-32(%rbp), %rax
	movl	2540(%rax), %eax
	testl	%eax, %eax
	jle	.L123
.L124:
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_statem_set_in_init@PLT
.L123:
	movq	-888(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	je	.L125
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_get_in_handshake@PLT
	testl	%eax, %eax
	jne	.L125
	movq	-32(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$6, %eax
	je	.L125
	movq	-32(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-888(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jns	.L126
	movl	-76(%rbp), %eax
	jmp	.L153
.L126:
	cmpl	$0, -76(%rbp)
	jne	.L125
	movl	$-1, %eax
	jmp	.L153
.L125:
	movzbl	-892(%rbp), %esi
	movq	-912(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	tls_write_check_pending
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jns	.L127
	movl	-76(%rbp), %eax
	jmp	.L153
.L127:
	cmpl	$0, -76(%rbp)
	jle	.L128
	movq	-32(%rbp), %rax
	movq	3040(%rax), %rax
	movq	56(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	3056(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rax
	movl	$338, %r8d
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_tls_handle_rlayer_return@PLT
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jg	.L129
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 3088(%rax)
	movl	-76(%rbp), %eax
	jmp	.L153
.L129:
	movq	-32(%rbp), %rax
	movq	3112(%rax), %rax
	addq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	$0, 3112(%rax)
.L128:
	cmpq	$0, -8(%rbp)
	jne	.L130
	movq	-32(%rbp), %rax
	movq	$0, 3112(%rax)
	movq	-32(%rbp), %rax
	movzbl	-892(%rbp), %edx
	movb	%dl, 3120(%rax)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 3128(%rax)
.L130:
	movq	-8(%rbp), %rax
	cmpq	-912(%rbp), %rax
	jne	.L131
	movq	-920(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L153
.L131:
	movq	-32(%rbp), %rax
	movl	388(%rax), %eax
	testl	%eax, %eax
	jle	.L132
	movq	-888(%rbp), %rax
	movq	24(%rax), %rax
	movq	144(%rax), %rdx
	movq	-888(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jg	.L132
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 3088(%rax)
	movl	-76(%rbp), %eax
	jmp	.L153
.L132:
	movq	-912(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_get_max_send_fragment@PLT
	movl	%eax, %eax
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_get_split_send_fragment@PLT
	movl	%eax, %eax
	movq	%rax, -104(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L133
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	je	.L133
	movq	-104(%rbp), %rax
	cmpq	%rax, -88(%rbp)
	jnb	.L134
.L133:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$386, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L153
.L134:
	movq	-32(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$772, %eax
	je	.L135
	movq	-32(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, -36(%rbp)
	jmp	.L136
.L135:
	movl	$771, -36(%rbp)
.L136:
	movq	-888(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_state@PLT
	cmpl	$13, %eax
	jne	.L152
	movq	-32(%rbp), %rax
	movl	2824(%rax), %eax
	testl	%eax, %eax
	jne	.L152
	movq	-888(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	sarl	$8, %eax
	cmpl	$3, %eax
	jne	.L152
	movq	-888(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	cmpl	$769, %eax
	jle	.L152
	movq	-32(%rbp), %rax
	movl	2136(%rax), %eax
	testl	%eax, %eax
	jne	.L152
	movl	$769, -36(%rbp)
.L152:
	movq	$0, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	3040(%rax), %rax
	movq	40(%rax), %r9
	movzbl	-892(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	3056(%rax), %rax
	leaq	-104(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	2416(%rax), %rax
	testq	%rax, %rax
	je	.L138
	movq	-32(%rbp), %rax
	movq	2416(%rax), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L138
	movq	-32(%rbp), %rax
	movq	2416(%rax), %rax
	movq	%rax, -24(%rbp)
.L138:
	cmpq	$32, -24(%rbp)
	jbe	.L139
	movq	$32, -24(%rbp)
.L139:
	movq	-104(%rbp), %rax
	cmpq	%rax, -88(%rbp)
	jnb	.L140
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$425, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L153
.L140:
	movq	-16(%rbp), %rax
	movl	$0, %edx
	divq	-24(%rbp)
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	cmpq	%rax, %rdx
	jb	.L141
	movq	$0, -56(%rbp)
	jmp	.L142
.L143:
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	leaq	-880(%rax), %rdx
	movzbl	-892(%rbp), %eax
	movb	%al, (%rdx)
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	leaq	-876(%rax), %rdx
	movl	-36(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-104(%rbp), %rax
	imulq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$872, %rax
	movq	%rcx, (%rax)
	movq	-104(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$864, %rax
	movq	%rcx, (%rax)
	addq	$1, -56(%rbp)
.L142:
	movq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L143
	movq	-104(%rbp), %rax
	imulq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 3112(%rax)
	jmp	.L144
.L141:
	movq	-16(%rbp), %rax
	movl	$0, %edx
	divq	-24(%rbp)
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %edx
	divq	-24(%rbp)
	movq	%rdx, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L145
	addq	$1, -48(%rbp)
.L145:
	movq	$0, -56(%rbp)
	jmp	.L146
.L148:
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	leaq	-880(%rax), %rdx
	movzbl	-892(%rbp), %eax
	movb	%al, (%rdx)
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	leaq	-876(%rax), %rdx
	movl	-36(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$872, %rax
	movq	%rcx, (%rax)
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	leaq	-864(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	addq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -96(%rbp)
	jne	.L147
	subq	$1, -48(%rbp)
.L147:
	addq	$1, -56(%rbp)
.L146:
	movq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L148
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 3112(%rax)
.L144:
	movq	-32(%rbp), %rax
	movq	3040(%rax), %rax
	movq	48(%rax), %r8
	movq	-32(%rbp), %rax
	movq	3056(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	-880(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rax
	movl	$465, %r8d
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_tls_handle_rlayer_return@PLT
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jg	.L149
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 3088(%rax)
	movl	-76(%rbp), %eax
	jmp	.L153
.L149:
	movq	-32(%rbp), %rax
	movq	3112(%rax), %rax
	cmpq	%rax, -16(%rbp)
	je	.L150
	cmpb	$23, -892(%rbp)
	jne	.L151
	movq	-32(%rbp), %rax
	movl	2368(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L151
.L150:
	movq	-32(%rbp), %rax
	movq	3112(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-920(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	$0, 3112(%rax)
	movl	$1, %eax
	jmp	.L153
.L151:
	movq	-32(%rbp), %rax
	movq	3112(%rax), %rax
	subq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	3112(%rax), %rax
	addq	%rax, -8(%rbp)
	jmp	.L152
.L153:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	ssl3_write_bytes, .-ssl3_write_bytes
	.globl	ossl_tls_handle_rlayer_return
	.type	ossl_tls_handle_rlayer_return, @function
ossl_tls_handle_rlayer_return:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.L155
	cmpl	$0, -28(%rbp)
	je	.L156
	movl	$2, %edx
	jmp	.L157
.L156:
	movl	$3, %edx
.L157:
	movq	-24(%rbp), %rax
	movl	%edx, 104(%rax)
	movl	$-1, -32(%rbp)
	jmp	.L158
.L155:
	movq	-24(%rbp), %rax
	movl	$1, 104(%rax)
	cmpl	$-3, -32(%rbp)
	jne	.L159
	cmpl	$0, -28(%rbp)
	je	.L160
	call	ERR_new@PLT
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-2, -32(%rbp)
	jmp	.L161
.L160:
	movq	-24(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$128, %eax
	testq	%rax, %rax
	je	.L162
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	SSL_set_shutdown@PLT
	movq	-24(%rbp), %rax
	movl	$0, 380(%rax)
	jmp	.L161
.L162:
	call	ERR_new@PLT
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$294, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L161
.L159:
	cmpl	$-2, -32(%rbp)
	jne	.L161
	movq	-24(%rbp), %rax
	movq	3032(%rax), %rax
	movq	80(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	3048(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	je	.L161
	call	ERR_new@PLT
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$313, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L161:
	cmpl	$-1, -32(%rbp)
	je	.L163
	cmpl	$-3, -32(%rbp)
	jne	.L164
.L163:
	movl	$0, -32(%rbp)
	jmp	.L158
.L164:
	cmpl	$-1, -32(%rbp)
	jge	.L158
	movl	$-1, -32(%rbp)
.L158:
	movl	-32(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	ossl_tls_handle_rlayer_return, .-ossl_tls_handle_rlayer_return
	.globl	ssl_release_record
	.type	ssl_release_record, @function
ssl_release_record:
.LFB745:
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
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L167
	cmpq	$0, -24(%rbp)
	jne	.L168
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
.L168:
	movq	-8(%rbp), %rax
	movq	3032(%rax), %rax
	movq	72(%rax), %r8
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	3048(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$561, %r8d
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_tls_handle_rlayer_return@PLT
	testl	%eax, %eax
	jg	.L169
	movl	$0, %eax
	jmp	.L170
.L169:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jne	.L171
	movq	-8(%rbp), %rax
	movq	3184(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 3184(%rax)
	jmp	.L171
.L167:
	cmpq	$0, -24(%rbp)
	je	.L172
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jne	.L171
.L172:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$573, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	3184(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 3184(%rax)
.L171:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L173
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	jmp	.L174
.L173:
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.L174:
	movl	$1, %eax
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	ssl_release_record, .-ssl_release_record
	.section	.rodata
.LC2:
	.string	"SSL alert number %d"
	.text
	.globl	ssl3_read_bytes
	.type	ssl3_read_bytes, @function
ssl3_read_bytes:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -184(%rbp)
	movl	%esi, %eax
	movq	%rdx, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	%r8, -216(%rbp)
	movl	%r9d, -192(%rbp)
	movb	%al, -188(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -184(%rbp)
	je	.L176
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L177
	movq	-184(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L178
.L177:
	movq	$0, -48(%rbp)
	jmp	.L178
.L176:
	movq	$0, -48(%rbp)
.L178:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L179
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L179
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L179
	movl	$1, %eax
	jmp	.L180
.L179:
	movl	$0, %eax
.L180:
	movl	%eax, -72(%rbp)
	cmpb	$0, -188(%rbp)
	je	.L181
	cmpb	$23, -188(%rbp)
	je	.L181
	cmpb	$22, -188(%rbp)
	jne	.L182
.L181:
	cmpl	$0, -192(%rbp)
	je	.L183
	cmpb	$23, -188(%rbp)
	je	.L183
.L182:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$633, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L184
.L183:
	cmpb	$22, -188(%rbp)
	jne	.L185
	movq	-48(%rbp), %rax
	movq	3104(%rax), %rax
	testq	%rax, %rax
	je	.L185
	movq	-48(%rbp), %rax
	addq	$3096, %rax
	movq	%rax, -56(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L186
.L188:
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	subq	$1, -216(%rbp)
	movq	-48(%rbp), %rax
	movq	3104(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 3104(%rax)
	addq	$1, -8(%rbp)
.L186:
	cmpq	$0, -216(%rbp)
	je	.L187
	movq	-48(%rbp), %rax
	movq	3104(%rax), %rax
	testq	%rax, %rax
	jne	.L188
.L187:
	movl	$0, -68(%rbp)
	jmp	.L189
.L190:
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %ecx
	movq	-48(%rbp), %rdx
	movl	-68(%rbp), %eax
	movb	%cl, 3096(%rdx,%rax)
	addl	$1, -68(%rbp)
.L189:
	movl	-68(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	3104(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L190
	cmpq	$0, -200(%rbp)
	je	.L191
	movq	-200(%rbp), %rax
	movb	$22, (%rax)
.L191:
	movq	16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L184
.L185:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_get_in_handshake@PLT
	testl	%eax, %eax
	jne	.L268
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	je	.L268
	movq	-48(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jns	.L193
	movl	-76(%rbp), %eax
	jmp	.L184
.L193:
	cmpl	$0, -76(%rbp)
	jne	.L268
	movl	$-1, %eax
	jmp	.L184
.L268:
	nop
.L192:
.L218:
	movq	-48(%rbp), %rax
	movl	$1, 104(%rax)
	movq	-48(%rbp), %rax
	movq	3184(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	3176(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L194
	movq	-48(%rbp), %rax
	movq	$0, 3176(%rax)
	movq	-48(%rbp), %rax
	movq	3176(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 3184(%rax)
.L196:
	movq	-48(%rbp), %rax
	movq	3176(%rax), %rax
	salq	$6, %rax
	leaq	3184(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	3032(%rax), %rax
	movq	64(%rax), %r10
	movq	-32(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-32(%rbp), %rax
	leaq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	leaq	12(%rax), %rcx
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	3048(%rax), %rax
	pushq	$0
	pushq	$0
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdx
	movq	-48(%rbp), %rax
	movl	$692, %r8d
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_tls_handle_rlayer_return@PLT
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	jg	.L195
	movl	-80(%rbp), %eax
	jmp	.L184
.L195:
	movq	-32(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-48(%rbp), %rax
	movq	3176(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 3176(%rax)
	movq	-48(%rbp), %rax
	movq	3032(%rax), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	3048(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L194
	movq	-48(%rbp), %rax
	movq	3176(%rax), %rax
	cmpq	$31, %rax
	jbe	.L196
.L194:
	movq	-48(%rbp), %rax
	movq	3184(%rax), %rax
	salq	$6, %rax
	leaq	3184(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	3104(%rax), %rax
	testq	%rax, %rax
	je	.L197
	movq	-32(%rbp), %rax
	movzbl	12(%rax), %eax
	cmpb	$22, %al
	je	.L197
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L197
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L197
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L197
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$712, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$293, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L184
.L197:
	movq	-32(%rbp), %rax
	movzbl	12(%rax), %eax
	cmpb	$21, %al
	je	.L198
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L198
	movq	-48(%rbp), %rax
	movl	$0, 3136(%rax)
.L198:
	movq	-48(%rbp), %rax
	movl	376(%rax), %eax
	testl	%eax, %eax
	je	.L199
	movq	-32(%rbp), %rax
	movzbl	12(%rax), %eax
	cmpb	$22, %al
	je	.L199
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$729, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$145, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L184
.L199:
	movq	-48(%rbp), %rax
	movl	132(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L200
	movq	-48(%rbp), %rax
	movq	3184(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 3184(%rax)
	movq	-48(%rbp), %rax
	movl	$1, 104(%rax)
	movl	$0, %eax
	jmp	.L184
.L200:
	movq	-32(%rbp), %rax
	movzbl	12(%rax), %eax
	cmpb	%al, -188(%rbp)
	je	.L201
	movq	-32(%rbp), %rax
	movzbl	12(%rax), %eax
	cmpb	$20, %al
	jne	.L202
	cmpb	$22, -188(%rbp)
	jne	.L202
	cmpq	$0, -200(%rbp)
	je	.L202
	cmpl	$0, -72(%rbp)
	jne	.L202
.L201:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	je	.L203
	cmpb	$23, -188(%rbp)
	jne	.L203
	movq	-48(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L204
	movq	-48(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	jne	.L203
.L204:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$759, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$100, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L184
.L203:
	cmpb	$22, -188(%rbp)
	jne	.L205
	movq	-32(%rbp), %rax
	movzbl	12(%rax), %eax
	cmpb	$20, %al
	jne	.L205
	movq	-48(%rbp), %rax
	movq	3104(%rax), %rax
	testq	%rax, %rax
	je	.L205
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$766, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$133, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L184
.L205:
	cmpq	$0, -200(%rbp)
	je	.L206
	movq	-32(%rbp), %rax
	movzbl	12(%rax), %edx
	movq	-200(%rbp), %rax
	movb	%dl, (%rax)
.L206:
	cmpq	$0, -216(%rbp)
	jne	.L207
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L208
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_release_record@PLT
	testl	%eax, %eax
	jne	.L208
	movl	$-1, %eax
	jmp	.L184
.L208:
	movl	$0, %eax
	jmp	.L184
.L207:
	movq	$0, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	3184(%rax), %rax
	movq	%rax, -16(%rbp)
.L216:
	movq	-216(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L209
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L210
.L209:
	movq	-216(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.L210:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	addq	%rax, -208(%rbp)
	cmpl	$0, -192(%rbp)
	je	.L211
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L212
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_release_record@PLT
	testl	%eax, %eax
	jne	.L212
	movl	$-1, %eax
	jmp	.L184
.L211:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_release_record@PLT
	testl	%eax, %eax
	jne	.L212
	movl	$-1, %eax
	jmp	.L184
.L212:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L213
	cmpl	$0, -192(%rbp)
	je	.L214
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L214
.L213:
	addq	$64, -32(%rbp)
	addq	$1, -16(%rbp)
.L214:
	movq	-8(%rbp), %rax
	addq	%rax, -24(%rbp)
	cmpb	$23, -188(%rbp)
	jne	.L215
	movq	-48(%rbp), %rax
	movq	3176(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L215
	movq	-24(%rbp), %rax
	cmpq	-216(%rbp), %rax
	jb	.L216
.L215:
	cmpq	$0, -24(%rbp)
	jne	.L217
	jmp	.L218
.L217:
	movq	16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L184
.L202:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L219
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$836, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L184
.L219:
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L220
	movq	-48(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L221
	movq	-32(%rbp), %rax
	movzbl	12(%rax), %eax
	cmpb	$21, %al
	je	.L220
.L221:
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 72(%rax)
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$849, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$244, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L184
.L220:
	movq	-32(%rbp), %rax
	movzbl	12(%rax), %eax
	cmpb	$21, %al
	jne	.L222
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-136(%rbp), %rcx
	leaq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	je	.L223
	leaq	-144(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L223
	leaq	-148(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L223
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L224
.L223:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$867, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$205, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L184
.L224:
	movq	-48(%rbp), %rax
	movq	1152(%rax), %rax
	testq	%rax, %rax
	je	.L226
	movq	-48(%rbp), %rax
	movq	1152(%rax), %r10
	movq	-48(%rbp), %rax
	movq	1160(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	72(%rax), %eax
	movq	-184(%rbp), %rsi
	movq	-136(%rbp), %rdx
	subq	$8, %rsp
	pushq	%rcx
	movq	%rsi, %r9
	movl	$2, %r8d
	movq	%rdx, %rcx
	movl	$21, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	*%r10
	addq	$16, %rsp
.L226:
	movq	-48(%rbp), %rax
	movq	2280(%rax), %rax
	testq	%rax, %rax
	je	.L227
	movq	-48(%rbp), %rax
	movq	2280(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L228
.L227:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L228
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	288(%rax), %rax
	movq	%rax, -40(%rbp)
.L228:
	cmpq	$0, -40(%rbp)
	je	.L229
	movl	-144(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-148(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %edx
	movq	-184(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	$16388, %esi
	movq	%rax, %rdi
	call	*%rcx
.L229:
	cmpl	$0, -72(%rbp)
	jne	.L230
	movl	-144(%rbp), %eax
	cmpl	$1, %eax
	je	.L231
.L230:
	cmpl	$0, -72(%rbp)
	je	.L232
	movl	-148(%rbp), %eax
	cmpl	$90, %eax
	jne	.L232
.L231:
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 380(%rax)
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_release_record@PLT
	testl	%eax, %eax
	jne	.L233
	movl	$-1, %eax
	jmp	.L184
.L233:
	movq	-48(%rbp), %rax
	movl	3136(%rax), %eax
	leal	1(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 3136(%rax)
	movq	-48(%rbp), %rax
	movl	3136(%rax), %eax
	cmpl	$5, %eax
	jne	.L232
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$893, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$409, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L184
.L232:
	cmpl	$0, -72(%rbp)
	je	.L234
	movl	-148(%rbp), %eax
	cmpl	$90, %eax
	je	.L269
.L234:
	movl	-148(%rbp), %eax
	testl	%eax, %eax
	jne	.L236
	cmpl	$0, -72(%rbp)
	jne	.L237
	movl	-144(%rbp), %eax
	cmpl	$1, %eax
	jne	.L236
.L237:
	movq	-48(%rbp), %rax
	movl	132(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 132(%rax)
	movl	$0, %eax
	jmp	.L184
.L236:
	movl	-144(%rbp), %eax
	cmpl	$2, %eax
	je	.L238
	cmpl	$0, -72(%rbp)
	je	.L239
.L238:
	movq	-48(%rbp), %rax
	movl	$1, 104(%rax)
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 384(%rax)
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$912, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-148(%rbp), %ecx
	movl	-148(%rbp), %eax
	addl	$1000, %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdx
	movq	-48(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movq	-48(%rbp), %rax
	movl	132(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 132(%rax)
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_release_record@PLT
	testl	%eax, %eax
	jne	.L240
	movl	$-1, %eax
	jmp	.L184
.L240:
	movq	-48(%rbp), %rax
	movq	2184(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_remove_session@PLT
	movl	$0, %eax
	jmp	.L184
.L239:
	movl	-148(%rbp), %eax
	cmpl	$100, %eax
	jne	.L241
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$929, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$339, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L184
.L241:
	movl	-144(%rbp), %eax
	cmpl	$1, %eax
	je	.L270
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$936, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$246, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L184
.L269:
	nop
	jmp	.L218
.L270:
	nop
	jmp	.L218
.L222:
	movq	-48(%rbp), %rax
	movl	132(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L243
	movq	-32(%rbp), %rax
	movzbl	12(%rax), %eax
	cmpb	$22, %al
	jne	.L244
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L245
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L245
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L243
.L245:
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_release_record@PLT
	testl	%eax, %eax
	jne	.L246
	movl	$-1, %eax
	jmp	.L184
.L246:
	movq	-48(%rbp), %rax
	movl	2368(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L247
	jmp	.L218
.L247:
	movq	-48(%rbp), %rax
	movl	$3, 104(%rax)
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-88(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	$-1, %eax
	jmp	.L184
.L244:
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_release_record@PLT
	testl	%eax, %eax
	jne	.L248
	movl	$-1, %eax
	jmp	.L184
.L248:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$974, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$291, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L184
.L243:
	movq	-32(%rbp), %rax
	movzbl	12(%rax), %eax
	cmpb	$22, %al
	jne	.L249
	movq	$4, -96(%rbp)
	movq	-48(%rbp), %rax
	addq	$3096, %rax
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rax
	addq	$3104, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	-96(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L250
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.L250:
	cmpq	$0, -8(%rbp)
	je	.L251
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-112(%rbp), %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-112(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, (%rax)
.L251:
	cmpq	$0, -8(%rbp)
	jne	.L252
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L253
.L252:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_release_record@PLT
	testl	%eax, %eax
	jne	.L253
	movl	$-1, %eax
	jmp	.L184
.L253:
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jnb	.L249
	jmp	.L218
.L249:
	movq	-32(%rbp), %rax
	movzbl	12(%rax), %eax
	cmpb	$20, %al
	jne	.L254
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1012, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$133, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L184
.L254:
	movq	-48(%rbp), %rax
	movq	3104(%rax), %rax
	cmpq	$3, %rax
	jbe	.L255
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_get_in_handshake@PLT
	testl	%eax, %eax
	jne	.L255
	movq	-48(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$11, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -116(%rbp)
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_statem_set_in_init@PLT
	movq	-48(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jns	.L256
	movl	-76(%rbp), %eax
	jmp	.L184
.L256:
	cmpl	$0, -76(%rbp)
	jne	.L257
	movl	$-1, %eax
	jmp	.L184
.L257:
	cmpl	$0, -116(%rbp)
	je	.L258
	movl	$-1, %eax
	jmp	.L184
.L258:
	movq	-48(%rbp), %rax
	movl	2368(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L218
	movq	-48(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, %rdi
	call	RECORD_LAYER_read_pending@PLT
	testl	%eax, %eax
	jne	.L218
	movq	-48(%rbp), %rax
	movl	$3, 104(%rax)
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-128(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	$-1, %eax
	jmp	.L184
.L255:
	movq	-32(%rbp), %rax
	movzbl	12(%rax), %eax
	movzbl	%al, %eax
	cmpl	$22, %eax
	jg	.L260
	cmpl	$20, %eax
	jge	.L261
	jmp	.L262
.L260:
	cmpl	$23, %eax
	je	.L263
.L262:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1071, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$245, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L184
.L261:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1081, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L184
.L263:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_app_data_allowed@PLT
	testl	%eax, %eax
	je	.L264
	movq	-48(%rbp), %rax
	movl	$2, 408(%rax)
	movl	$-1, %eax
	jmp	.L184
.L264:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_skip_early_data@PLT
	testl	%eax, %eax
	je	.L265
	movq	-32(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$104, %edx
	movq	%rax, %rdi
	call	ossl_early_data_count_ok
	testl	%eax, %eax
	jne	.L266
	movl	$-1, %eax
	jmp	.L184
.L266:
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_release_record@PLT
	testl	%eax, %eax
	jne	.L218
	movl	$-1, %eax
	jmp	.L184
.L265:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1113, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$245, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
.L184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	ssl3_read_bytes, .-ssl3_read_bytes
	.globl	RECORD_LAYER_is_sslv2_record
	.type	RECORD_LAYER_is_sslv2_record, @function
RECORD_LAYER_is_sslv2_record:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L272
	movl	$0, %eax
	jmp	.L273
.L272:
	movq	-8(%rbp), %rax
	movl	192(%rax), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
.L273:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	RECORD_LAYER_is_sslv2_record, .-RECORD_LAYER_is_sslv2_record
	.type	rlayer_msg_callback_wrapper, @function
rlayer_msg_callback_wrapper:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	1152(%rax), %rax
	testq	%rax, %rax
	je	.L276
	movq	-8(%rbp), %rax
	movq	1152(%rax), %r10
	movq	-8(%rbp), %rax
	movq	1160(%rax), %rdi
	movq	-16(%rbp), %r9
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %esi
	movl	-20(%rbp), %eax
	subq	$8, %rsp
	pushq	%rdi
	movl	%eax, %edi
	call	*%r10
	addq	$16, %rsp
.L276:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	rlayer_msg_callback_wrapper, .-rlayer_msg_callback_wrapper
	.type	rlayer_security_wrapper, @function
rlayer_security_wrapper:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rdi
	movl	-36(%rbp), %ecx
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl_security@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	rlayer_security_wrapper, .-rlayer_security_wrapper
	.type	rlayer_padding_wrapper, @function
rlayer_padding_wrapper:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	3152(%rax), %r8
	movq	-8(%rbp), %rax
	movq	3160(%rax), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	rlayer_padding_wrapper, .-rlayer_padding_wrapper
	.section	.data.rel.ro,"aw"
	.align 32
	.type	rlayer_dispatch, @object
	.size	rlayer_dispatch, 80
rlayer_dispatch:
	.long	1
	.zero	4
	.quad	ossl_statem_skip_early_data
	.long	2
	.zero	4
	.quad	rlayer_msg_callback_wrapper
	.long	3
	.zero	4
	.quad	rlayer_security_wrapper
	.long	4
	.zero	4
	.quad	rlayer_padding_wrapper
	.long	0
	.zero	4
	.quad	0
	.text
	.globl	ossl_ssl_set_custom_record_layer
	.type	ossl_ssl_set_custom_record_layer, @function
ossl_ssl_set_custom_record_layer:
.LFB751:
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
	movq	%rdx, 3016(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 3024(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	ossl_ssl_set_custom_record_layer, .-ossl_ssl_set_custom_record_layer
	.type	ssl_select_next_record_layer, @function
ssl_select_next_record_layer:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	3016(%rax), %rax
	testq	%rax, %rax
	je	.L283
	movq	-8(%rbp), %rax
	movq	3016(%rax), %rax
	jmp	.L284
.L283:
	cmpl	$0, -16(%rbp)
	jne	.L285
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L286
	movq	ossl_dtls_record_method@GOTPCREL(%rip), %rax
	jmp	.L284
.L286:
	movq	ossl_tls_record_method@GOTPCREL(%rip), %rax
	jmp	.L284
.L285:
	cmpl	$0, -12(%rbp)
	jne	.L287
	movq	-8(%rbp), %rax
	movq	3032(%rax), %rax
	jmp	.L284
.L287:
	movq	-8(%rbp), %rax
	movq	3040(%rax), %rax
.L284:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	ssl_select_next_record_layer, .-ssl_select_next_record_layer
	.type	ssl_post_record_layer_select, @function
ssl_post_record_layer_select:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L290
	movq	-24(%rbp), %rax
	movq	3032(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	3048(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L291
.L290:
	movq	-24(%rbp), %rax
	movq	3040(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	3056(%rax), %rax
	movq	%rax, -16(%rbp)
.L291:
	movq	-24(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L292
	movq	-24(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	jne	.L293
.L292:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L293
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	*%rdx
.L293:
	movq	-24(%rbp), %rax
	movq	2416(%rax), %rax
	testq	%rax, %rax
	je	.L294
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L294
	movq	-8(%rbp), %rax
	movq	120(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	2416(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L294:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	ssl_post_record_layer_select, .-ssl_post_record_layer_select
	.section	.rodata
.LC3:
	.string	"options"
.LC4:
	.string	"mode"
.LC5:
	.string	"read_buffer_len"
.LC6:
	.string	"read_ahead"
.LC7:
	.string	"block_padding"
.LC8:
	.string	"use_etm"
.LC9:
	.string	"stream_mac"
.LC10:
	.string	"tlstree"
.LC11:
	.string	"max_frag_len"
.LC12:
	.string	"max_early_data"
	.text
	.globl	ssl_set_new_record_layer
	.type	ssl_set_new_record_layer, @function
ssl_set_new_record_layer:
.LFB754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$776, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -696(%rbp)
	movl	%esi, -700(%rbp)
	movl	%edx, -704(%rbp)
	movl	%ecx, -708(%rbp)
	movq	%r8, -720(%rbp)
	movq	%r9, -728(%rbp)
	leaq	-336(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -584(%rbp)
	movq	-696(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	movl	$0, -592(%rbp)
	movl	$0, -596(%rbp)
	cmpl	$1, -704(%rbp)
	jne	.L297
	movq	-696(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_get_max_send_fragment@PLT
	jmp	.L298
.L297:
	movl	$16384, %eax
.L298:
	movl	%eax, -600(%rbp)
	movl	$0, -68(%rbp)
	cmpq	$0, 96(%rbp)
	je	.L299
	movq	96(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.L300
.L299:
	movq	$0, -80(%rbp)
.L300:
	movl	-708(%rbp), %edx
	movl	-704(%rbp), %ecx
	movq	-696(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_select_next_record_layer
	movq	%rax, -64(%rbp)
	cmpl	$0, -704(%rbp)
	jne	.L301
	movq	-696(%rbp), %rax
	addq	$3032, %rax
	movq	%rax, -40(%rbp)
	movq	-696(%rbp), %rax
	addq	$3048, %rax
	movq	%rax, -48(%rbp)
	movq	-696(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.L302
.L301:
	movq	-696(%rbp), %rax
	addq	$3040, %rax
	movq	%rax, -40(%rbp)
	movq	-696(%rbp), %rax
	addq	$3056, %rax
	movq	%rax, -48(%rbp)
	movq	-696(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -56(%rbp)
.L302:
	cmpq	$0, -64(%rbp)
	jne	.L303
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
.L303:
	cmpq	$0, -64(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L304
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1278, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L349
.L304:
	movq	-696(%rbp), %rax
	leaq	2360(%rax), %rdx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-784(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint64@PLT
	movq	-784(%rbp), %rax
	movq	-776(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-768(%rbp), %rax
	movq	-760(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-752(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-696(%rbp), %rax
	leaq	2368(%rax), %rdx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-784(%rbp), %rax
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint32@PLT
	movq	-784(%rbp), %rax
	movq	-776(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-768(%rbp), %rax
	movq	-760(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-752(%rbp), %rax
	movq	%rax, 32(%rbx)
	cmpl	$0, -704(%rbp)
	jne	.L306
	movq	-696(%rbp), %rax
	leaq	3072(%rax), %rdx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-784(%rbp), %rax
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-784(%rbp), %rax
	movq	-776(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-768(%rbp), %rax
	movq	-760(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-752(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-696(%rbp), %rax
	leaq	3080(%rax), %rdx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-784(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-784(%rbp), %rax
	movq	-776(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-768(%rbp), %rax
	movq	-760(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-752(%rbp), %rax
	movq	%rax, 32(%rbx)
	jmp	.L307
.L306:
	movq	-696(%rbp), %rax
	leaq	3168(%rax), %rdx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-784(%rbp), %rax
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-784(%rbp), %rax
	movq	-776(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-768(%rbp), %rax
	movq	-760(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-752(%rbp), %rax
	movq	%rax, 32(%rbx)
.L307:
	movq	-24(%rbp), %rbx
	leaq	-784(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-784(%rbp), %rax
	movq	-776(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-768(%rbp), %rax
	movq	-760(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-752(%rbp), %rax
	movq	%rax, 32(%rbx)
	cmpl	$0, -704(%rbp)
	jne	.L308
	movq	-696(%rbp), %rax
	movq	288(%rax), %rax
	sarq	$8, %rax
	andl	$1, %eax
	movl	%eax, -588(%rbp)
	movq	-696(%rbp), %rax
	movl	1280(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L309
	movl	$1, -592(%rbp)
.L309:
	movq	-696(%rbp), %rax
	movl	1280(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L310
	movl	$1, -596(%rbp)
	jmp	.L310
.L308:
	movq	-696(%rbp), %rax
	movq	288(%rax), %rax
	sarq	$10, %rax
	andl	$1, %eax
	movl	%eax, -588(%rbp)
	movq	-696(%rbp), %rax
	movl	1280(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L311
	movl	$1, -592(%rbp)
.L311:
	movq	-696(%rbp), %rax
	movl	1280(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L310
	movl	$1, -596(%rbp)
.L310:
	movl	-588(%rbp), %eax
	testl	%eax, %eax
	je	.L312
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-784(%rbp), %rax
	leaq	-588(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-784(%rbp), %rax
	movq	-776(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-768(%rbp), %rax
	movq	-760(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-752(%rbp), %rax
	movq	%rax, 32(%rbx)
.L312:
	movl	-592(%rbp), %eax
	testl	%eax, %eax
	je	.L313
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-784(%rbp), %rax
	leaq	-592(%rbp), %rdx
	leaq	.LC9(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-784(%rbp), %rax
	movq	-776(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-768(%rbp), %rax
	movq	-760(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-752(%rbp), %rax
	movq	%rax, 32(%rbx)
.L313:
	movl	-596(%rbp), %eax
	testl	%eax, %eax
	je	.L314
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-784(%rbp), %rax
	leaq	-596(%rbp), %rdx
	leaq	.LC10(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-784(%rbp), %rax
	movq	-776(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-768(%rbp), %rax
	movq	-760(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-752(%rbp), %rax
	movq	%rax, 32(%rbx)
.L314:
	cmpl	$0, -704(%rbp)
	jne	.L315
	movq	-696(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	je	.L315
	movq	-696(%rbp), %rax
	movq	2184(%rax), %rax
	movzbl	856(%rax), %eax
	testb	%al, %al
	je	.L315
	movq	-696(%rbp), %rax
	movq	2184(%rax), %rax
	movzbl	856(%rax), %eax
	cmpb	$4, %al
	ja	.L315
	movq	-696(%rbp), %rax
	movq	2184(%rax), %rax
	movzbl	856(%rax), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	$512, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -600(%rbp)
.L315:
	movl	-600(%rbp), %eax
	cmpl	$16384, %eax
	je	.L316
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-784(%rbp), %rax
	leaq	-600(%rbp), %rdx
	leaq	.LC11(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-784(%rbp), %rax
	movq	-776(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-768(%rbp), %rax
	movq	-760(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-752(%rbp), %rax
	movq	%rax, 32(%rbx)
.L316:
	movq	-696(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L317
	cmpl	$0, -704(%rbp)
	jne	.L317
	cmpl	$1, -708(%rbp)
	je	.L318
	cmpl	$2, -708(%rbp)
	jne	.L319
.L318:
	movl	$1, %eax
	jmp	.L320
.L319:
	movl	$0, %eax
.L320:
	movl	%eax, -68(%rbp)
	jmp	.L321
.L317:
	movq	-696(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L321
	cmpl	$1, -704(%rbp)
	jne	.L321
	cmpl	$1, -708(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
.L321:
	cmpl	$0, -68(%rbp)
	je	.L322
	movq	-696(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_get_max_early_data
	movl	%eax, -604(%rbp)
	movl	-604(%rbp), %eax
	testl	%eax, %eax
	je	.L322
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-784(%rbp), %rax
	leaq	-604(%rbp), %rdx
	leaq	.LC12(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint32@PLT
	movq	-784(%rbp), %rax
	movq	-776(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-768(%rbp), %rax
	movq	-760(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-752(%rbp), %rax
	movq	%rax, 32(%rbx)
.L322:
	movq	-32(%rbp), %rbx
	leaq	-784(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-784(%rbp), %rax
	movq	-776(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-768(%rbp), %rax
	movq	-760(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-752(%rbp), %rax
	movq	%rax, 32(%rbx)
.L344:
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	cmpl	$0, -704(%rbp)
	jne	.L323
	movq	-696(%rbp), %rax
	movq	3064(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-696(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L324
	cmpl	$0, -708(%rbp)
	je	.L324
	movq	-696(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	dtls1_get_epoch@PLT
	movzwl	%ax, %eax
	movl	%eax, -100(%rbp)
.L324:
	movq	-696(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L325
	call	BIO_s_dgram_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -96(%rbp)
	jmp	.L326
.L325:
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -96(%rbp)
.L326:
	cmpq	$0, -96(%rbp)
	jne	.L327
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1384, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-696(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L349
.L327:
	movq	-696(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 3064(%rax)
	jmp	.L329
.L323:
	movq	-696(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L329
	cmpl	$0, -708(%rbp)
	je	.L329
	movq	-696(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	dtls1_get_epoch@PLT
	movzwl	%ax, %eax
	movl	%eax, -100(%rbp)
.L329:
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	jmp	.L330
.L338:
	movq	-112(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	rlayer_dispatch(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	je	.L331
	cmpl	$4, %eax
	je	.L332
	jmp	.L336
.L331:
	movq	-696(%rbp), %rax
	movq	1152(%rax), %rax
	testq	%rax, %rax
	jne	.L350
	jmp	.L335
.L332:
	movq	-696(%rbp), %rax
	movq	3152(%rax), %rax
	testq	%rax, %rax
	je	.L351
	jmp	.L336
.L350:
	nop
.L336:
	movq	-120(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -120(%rbp)
	salq	$4, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-672(%rax), %rcx
	movq	-112(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	rlayer_dispatch(%rip), %rax
	leaq	(%rdx,%rax), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	jmp	.L335
.L351:
	nop
.L335:
	addq	$1, -112(%rbp)
.L330:
	cmpq	$4, -112(%rbp)
	jbe	.L338
	movq	-64(%rbp), %rax
	movq	(%rax), %r10
	movq	-696(%rbp), %rax
	movq	3024(%rax), %r8
	movl	-100(%rbp), %eax
	movzwl	%ax, %edi
	movq	-696(%rbp), %rax
	movl	120(%rax), %ecx
	movq	-128(%rbp), %rax
	movq	1096(%rax), %rsi
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movl	-708(%rbp), %ebx
	movl	-704(%rbp), %r11d
	movl	-700(%rbp), %edx
	leaq	-584(%rbp), %r9
	pushq	%r9
	pushq	%r8
	pushq	-696(%rbp)
	leaq	-688(%rbp), %r8
	pushq	%r8
	leaq	-336(%rbp), %r8
	pushq	%r8
	leaq	-576(%rbp), %r8
	pushq	%r8
	pushq	$0
	pushq	$0
	pushq	-96(%rbp)
	pushq	-56(%rbp)
	pushq	-88(%rbp)
	pushq	104(%rbp)
	pushq	-80(%rbp)
	pushq	88(%rbp)
	movl	80(%rbp), %r8d
	pushq	%r8
	pushq	72(%rbp)
	pushq	64(%rbp)
	pushq	56(%rbp)
	pushq	48(%rbp)
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	pushq	-728(%rbp)
	pushq	-720(%rbp)
	pushq	%rdi
	movl	%ebx, %r9d
	movl	%r11d, %r8d
	movq	%rax, %rdi
	call	*%r10
	addq	$208, %rsp
	movl	%eax, -132(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	cmpl	$1, -132(%rbp)
	je	.L352
	cmpl	$1, -132(%rbp)
	jg	.L340
	cmpl	$-2, -132(%rbp)
	je	.L341
	cmpl	$-1, -132(%rbp)
	je	.L342
	jmp	.L340
.L341:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1425, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-696(%rbp), %rax
	movl	$0, %ecx
	movl	$313, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L349
.L342:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -64(%rbp)
	je	.L343
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L343
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.L344
.L343:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1437, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-696(%rbp), %rax
	movl	$0, %ecx
	movl	$322, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L349
.L340:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1445, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-696(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L349
.L352:
	nop
	movq	-696(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L346
	cmpl	$0, -704(%rbp)
	je	.L346
	movq	-696(%rbp), %rax
	movq	1144(%rax), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	call	pqueue_peek@PLT
	testq	%rax, %rax
	jne	.L348
.L346:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L348
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L348
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1462, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-696(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L349
.L348:
	movq	-584(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-704(%rbp), %edx
	movq	-696(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_post_record_layer_select
.L349:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	ssl_set_new_record_layer, .-ssl_set_new_record_layer
	.globl	ssl_set_record_protocol_version
	.type	ssl_set_record_protocol_version, @function
ssl_set_record_protocol_version:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	3032(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L354
	movq	-8(%rbp), %rax
	movq	3040(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L355
.L354:
	movl	$0, %eax
	jmp	.L356
.L355:
	movq	-8(%rbp), %rax
	movq	3032(%rax), %rax
	movq	96(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	72(%rax), %edx
	movq	-8(%rbp), %rax
	movq	3048(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	movq	-8(%rbp), %rax
	movq	3040(%rax), %rax
	movq	96(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	72(%rax), %edx
	movq	-8(%rbp), %rax
	movq	3056(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	movl	$1, %eax
.L356:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	ssl_set_record_protocol_version, .-ssl_set_record_protocol_version
	.section	.rodata
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 24
__func__.5:
	.string	"ossl_get_max_early_data"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 25
__func__.4:
	.string	"ossl_early_data_count_ok"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 24
__func__.3:
	.string	"tls_write_check_pending"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 17
__func__.2:
	.string	"ssl3_write_bytes"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"ssl3_read_bytes"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 25
__func__.0:
	.string	"ssl_set_new_record_layer"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

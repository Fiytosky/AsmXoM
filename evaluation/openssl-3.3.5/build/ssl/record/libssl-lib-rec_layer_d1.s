	.file	"rec_layer_d1.c"
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
	.section	.rodata
.LC0:
	.string	"../ssl/record/rec_layer_d1.c"
	.text
	.globl	DTLS_RECORD_LAYER_new
	.type	DTLS_RECORD_LAYER_new, @function
DTLS_RECORD_LAYER_new:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$23, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 136(%rax)
	call	pqueue_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L28
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$31, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 136(%rax)
	movl	$0, %eax
	jmp	.L27
.L28:
	movl	$1, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	DTLS_RECORD_LAYER_new, .-DTLS_RECORD_LAYER_new
	.globl	DTLS_RECORD_LAYER_free
	.type	DTLS_RECORD_LAYER_free, @function
DTLS_RECORD_LAYER_free:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L32
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DTLS_RECORD_LAYER_clear@PLT
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	pqueue_free@PLT
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$46, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 136(%rax)
	jmp	.L29
.L32:
	nop
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	DTLS_RECORD_LAYER_free, .-DTLS_RECORD_LAYER_free
	.globl	DTLS_RECORD_LAYER_clear
	.type	DTLS_RECORD_LAYER_clear, @function
DTLS_RECORD_LAYER_clear:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L34
.L36:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	2360(%rax), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L35
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L35:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$65, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	pitem_free@PLT
.L34:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	pqueue_pop@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L36
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	DTLS_RECORD_LAYER_clear, .-DTLS_RECORD_LAYER_clear
	.type	dtls_buffer_record, @function
dtls_buffer_record:
.LFB732:
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
	movq	3144(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	pqueue_size@PLT
	cmpq	$99, %rax
	jbe	.L38
	movl	$0, %eax
	jmp	.L39
.L38:
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L40
	movl	$-1, %eax
	jmp	.L39
.L40:
	leaq	.LC0(%rip), %rax
	movl	$88, %edx
	movq	%rax, %rsi
	movl	$64, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	leaq	50(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	pitem_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L41
	cmpq	$0, -40(%rbp)
	jne	.L42
.L41:
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$91, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	pitem_free@PLT
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$93, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L39
.L42:
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rdx
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
	movq	-64(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$103, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L43
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$105, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	pitem_free@PLT
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$107, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L39
.L43:
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pqueue_insert@PLT
	testq	%rax, %rax
	jne	.L44
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$130, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$131, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	pitem_free@PLT
.L44:
	movl	$1, %eax
.L39:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	dtls_buffer_record, .-dtls_buffer_record
	.type	dtls_unbuffer_record, @function
dtls_unbuffer_record:
.LFB733:
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
	movq	3184(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	3176(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L48
	movq	-40(%rbp), %rax
	movq	3144(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	pqueue_pop@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L45
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, 3192(%rax)
	movq	%rbx, 3200(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 3208(%rax)
	movq	%rbx, 3216(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 3224(%rax)
	movq	%rbx, 3232(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 3240(%rax)
	movq	%rbx, 3248(%rax)
	movq	-40(%rbp), %rax
	movq	$1, 3176(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 3184(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$164, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	pitem_free@PLT
	jmp	.L45
.L48:
	nop
.L45:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	dtls_unbuffer_record, .-dtls_unbuffer_record
	.section	.rodata
.LC1:
	.string	"SSL alert number %d"
	.text
	.globl	dtls1_read_bytes
	.type	dtls1_read_bytes, @function
dtls1_read_bytes:
.LFB734:
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
	movq	$0, -16(%rbp)
	cmpq	$0, -184(%rbp)
	je	.L50
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L51
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L52
	movq	-184(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L53
.L52:
	movq	$0, -24(%rbp)
	jmp	.L53
.L51:
	movq	-184(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L53
.L50:
	movq	$0, -24(%rbp)
.L53:
	cmpq	$0, -24(%rbp)
	jne	.L54
	movl	$-1, %eax
	jmp	.L55
.L54:
	cmpb	$0, -188(%rbp)
	je	.L56
	cmpb	$23, -188(%rbp)
	je	.L56
	cmpb	$22, -188(%rbp)
	jne	.L57
.L56:
	cmpl	$0, -192(%rbp)
	je	.L58
	cmpb	$23, -188(%rbp)
	je	.L58
.L57:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$214, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L55
.L58:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_get_in_handshake@PLT
	testl	%eax, %eax
	jne	.L125
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	je	.L125
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L60
	movl	-28(%rbp), %eax
	jmp	.L55
.L60:
	cmpl	$0, -28(%rbp)
	jne	.L125
	movl	$-1, %eax
	jmp	.L55
.L125:
	nop
.L59:
.L63:
	movq	-24(%rbp), %rax
	movl	$1, 104(%rax)
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_is_init_finished@PLT
	testl	%eax, %eax
	je	.L61
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dtls_unbuffer_record
.L61:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_handle_timeout@PLT
	testl	%eax, %eax
	jle	.L62
	jmp	.L63
.L62:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_in_error@PLT
	testl	%eax, %eax
	je	.L64
	movl	$-1, %eax
	jmp	.L55
.L64:
	movq	-24(%rbp), %rax
	movq	3184(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	3176(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L65
	movq	-24(%rbp), %rax
	movq	$0, 3176(%rax)
	movq	-24(%rbp), %rax
	movq	3176(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 3184(%rax)
.L68:
	movq	-24(%rbp), %rax
	movq	3176(%rax), %rax
	salq	$6, %rax
	leaq	3184(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	3032(%rax), %rax
	movq	64(%rax), %r10
	movq	-40(%rbp), %rax
	leaq	50(%rax), %r8
	movq	-40(%rbp), %rax
	leaq	48(%rax), %rdi
	movq	-40(%rbp), %rax
	leaq	32(%rax), %r9
	movq	-40(%rbp), %rax
	leaq	16(%rax), %r11
	movq	-40(%rbp), %rax
	leaq	12(%rax), %rcx
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	3048(%rax), %rax
	pushq	%r8
	pushq	%rdi
	movq	%r11, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$252, %r8d
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_tls_handle_rlayer_return@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jg	.L66
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	dtls1_read_failed@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jg	.L63
	movl	-44(%rbp), %eax
	jmp	.L55
.L66:
	movq	-40(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-24(%rbp), %rax
	movq	3176(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 3176(%rax)
	movq	-24(%rbp), %rax
	movq	3032(%rax), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	3048(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L65
	movq	-24(%rbp), %rax
	movq	3176(%rax), %rax
	cmpq	$31, %rax
	jbe	.L68
.L65:
	movq	-24(%rbp), %rax
	movq	3184(%rax), %rax
	salq	$6, %rax
	leaq	3184(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	12(%rax), %eax
	cmpb	$21, %al
	je	.L69
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L69
	movq	-24(%rbp), %rax
	movl	$0, 3136(%rax)
.L69:
	movq	-24(%rbp), %rax
	movl	376(%rax), %eax
	testl	%eax, %eax
	je	.L70
	movq	-40(%rbp), %rax
	movzbl	12(%rax), %eax
	cmpb	$22, %al
	je	.L70
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dtls_buffer_record
	testl	%eax, %eax
	jns	.L71
	movl	$-1, %eax
	jmp	.L55
.L71:
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_release_record@PLT
	testl	%eax, %eax
	jne	.L63
	movl	$-1, %eax
	jmp	.L55
.L70:
	movq	-24(%rbp), %rax
	movl	132(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L73
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_release_record@PLT
	testl	%eax, %eax
	jne	.L74
	movl	$-1, %eax
	jmp	.L55
.L74:
	movq	-24(%rbp), %rax
	movl	$1, 104(%rax)
	movl	$0, %eax
	jmp	.L55
.L73:
	movq	-40(%rbp), %rax
	movzbl	12(%rax), %eax
	cmpb	%al, -188(%rbp)
	je	.L75
	movq	-40(%rbp), %rax
	movzbl	12(%rax), %eax
	cmpb	$20, %al
	jne	.L76
	cmpb	$22, -188(%rbp)
	jne	.L76
	cmpq	$0, -200(%rbp)
	je	.L76
.L75:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	je	.L77
	cmpb	$23, -188(%rbp)
	jne	.L77
	movq	-24(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L78
	movq	-24(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	jne	.L77
.L78:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$327, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$100, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L55
.L77:
	cmpq	$0, -200(%rbp)
	je	.L79
	movq	-40(%rbp), %rax
	movzbl	12(%rax), %edx
	movq	-200(%rbp), %rax
	movb	%dl, (%rax)
.L79:
	cmpq	$0, -216(%rbp)
	jne	.L80
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L81
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_release_record@PLT
	testl	%eax, %eax
	jne	.L81
	movl	$-1, %eax
	jmp	.L55
.L81:
	movl	$0, %eax
	jmp	.L55
.L80:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	-216(%rbp), %rax
	jnb	.L82
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L83
.L82:
	movq	-216(%rbp), %rax
	movq	%rax, -8(%rbp)
.L83:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	cmpl	$0, -192(%rbp)
	je	.L84
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L85
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_release_record@PLT
	testl	%eax, %eax
	jne	.L85
	movl	$-1, %eax
	jmp	.L55
.L84:
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_release_record@PLT
	testl	%eax, %eax
	jne	.L85
	movl	$-1, %eax
	jmp	.L55
.L85:
	movq	16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L55
.L76:
	movq	-40(%rbp), %rax
	movzbl	12(%rax), %eax
	cmpb	$21, %al
	jne	.L86
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-72(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	je	.L87
	leaq	-80(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L87
	leaq	-84(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L87
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L88
.L87:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$390, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$205, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L55
.L88:
	movq	-24(%rbp), %rax
	movq	1152(%rax), %rax
	testq	%rax, %rax
	je	.L90
	movq	-24(%rbp), %rax
	movq	1152(%rax), %r10
	movq	-24(%rbp), %rax
	movq	1160(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	72(%rax), %eax
	movq	-184(%rbp), %rsi
	movq	-72(%rbp), %rdx
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
.L90:
	movq	-24(%rbp), %rax
	movq	2280(%rax), %rax
	testq	%rax, %rax
	je	.L91
	movq	-24(%rbp), %rax
	movq	2280(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L92
.L91:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L92
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	288(%rax), %rax
	movq	%rax, -16(%rbp)
.L92:
	cmpq	$0, -16(%rbp)
	je	.L93
	movl	-80(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-84(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %edx
	movq	-184(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	$16388, %esi
	movq	%rax, %rdi
	call	*%rcx
.L93:
	movl	-80(%rbp), %eax
	cmpl	$1, %eax
	jne	.L94
	movl	-84(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 380(%rax)
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_release_record@PLT
	testl	%eax, %eax
	jne	.L95
	movl	$-1, %eax
	jmp	.L55
.L95:
	movq	-24(%rbp), %rax
	movl	3136(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 3136(%rax)
	movq	-24(%rbp), %rax
	movl	3136(%rax), %eax
	cmpl	$5, %eax
	jne	.L96
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$415, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$409, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L55
.L96:
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	jne	.L97
	movq	-24(%rbp), %rax
	movl	132(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 132(%rax)
	movl	$0, %eax
	jmp	.L55
.L97:
	movl	-84(%rbp), %eax
	cmpl	$100, %eax
	jne	.L63
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$447, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$339, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L55
.L94:
	movl	-80(%rbp), %eax
	cmpl	$2, %eax
	jne	.L99
	movq	-24(%rbp), %rax
	movl	$1, 104(%rax)
	movl	-84(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 384(%rax)
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$453, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-84(%rbp), %ecx
	movl	-84(%rbp), %eax
	addl	$1000, %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movq	-24(%rbp), %rax
	movl	132(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 132(%rax)
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_release_record@PLT
	testl	%eax, %eax
	jne	.L100
	movl	$-1, %eax
	jmp	.L55
.L100:
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_remove_session@PLT
	movl	$0, %eax
	jmp	.L55
.L99:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$462, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$246, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L55
.L86:
	movq	-24(%rbp), %rax
	movl	132(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L101
	movq	-24(%rbp), %rax
	movl	$1, 104(%rax)
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_release_record@PLT
	testl	%eax, %eax
	jne	.L102
	movl	$-1, %eax
	jmp	.L55
.L102:
	movl	$0, %eax
	jmp	.L55
.L101:
	movq	-40(%rbp), %rax
	movzbl	12(%rax), %eax
	cmpb	$20, %al
	jne	.L103
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_release_record@PLT
	testl	%eax, %eax
	jne	.L63
	movl	$-1, %eax
	jmp	.L55
.L103:
	movq	-40(%rbp), %rax
	movzbl	12(%rax), %eax
	cmpb	$22, %al
	jne	.L105
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_get_in_handshake@PLT
	testl	%eax, %eax
	jne	.L105
	movq	-40(%rbp), %rax
	movzwl	48(%rax), %edx
	movq	-24(%rbp), %rax
	movq	3144(%rax), %rax
	movzwl	(%rax), %eax
	cmpw	%ax, %dx
	jne	.L106
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$11, %rax
	ja	.L107
.L106:
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_release_record@PLT
	testl	%eax, %eax
	jne	.L126
	movl	$-1, %eax
	jmp	.L55
.L107:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dtls1_get_message_header@PLT
	movzbl	-176(%rbp), %eax
	cmpb	$20, %al
	jne	.L111
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_check_timeout_num@PLT
	testl	%eax, %eax
	jns	.L112
	movl	$-1, %eax
	jmp	.L55
.L112:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_retransmit_buffered_messages@PLT
	testl	%eax, %eax
	jg	.L113
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_in_error@PLT
	testl	%eax, %eax
	je	.L113
	movl	$-1, %eax
	jmp	.L55
.L113:
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_release_record@PLT
	testl	%eax, %eax
	jne	.L114
	movl	$-1, %eax
	jmp	.L55
.L114:
	movq	-24(%rbp), %rax
	movl	2368(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L127
	movq	-24(%rbp), %rax
	movq	3032(%rax), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	3048(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L127
	movq	-24(%rbp), %rax
	movl	$3, 104(%rax)
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-64(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	$-1, %eax
	jmp	.L55
.L111:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_is_init_finished@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L116
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$545, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L55
.L116:
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_statem_set_in_init@PLT
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L117
	movl	-28(%rbp), %eax
	jmp	.L55
.L117:
	cmpl	$0, -28(%rbp)
	jne	.L118
	movl	$-1, %eax
	jmp	.L55
.L118:
	movq	-24(%rbp), %rax
	movl	2368(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L128
	movq	-24(%rbp), %rax
	movq	3032(%rax), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	3048(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L128
	movq	-24(%rbp), %rax
	movl	$3, 104(%rax)
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-56(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	$-1, %eax
	jmp	.L55
.L126:
	nop
	jmp	.L63
.L127:
	nop
	jmp	.L63
.L128:
	nop
	jmp	.L63
.L105:
	movq	-40(%rbp), %rax
	movzbl	12(%rax), %eax
	movzbl	%al, %eax
	cmpl	$22, %eax
	jg	.L120
	cmpl	$20, %eax
	jge	.L121
	jmp	.L122
.L120:
	cmpl	$23, %eax
	je	.L123
.L122:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$581, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$245, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L55
.L121:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$591, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L55
.L123:
	movq	-24(%rbp), %rax
	movl	408(%rax), %eax
	testl	%eax, %eax
	je	.L124
	movq	-24(%rbp), %rax
	movl	400(%rax), %eax
	testl	%eax, %eax
	je	.L124
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_app_data_allowed@PLT
	testl	%eax, %eax
	je	.L124
	movq	-24(%rbp), %rax
	movl	$2, 408(%rax)
	movl	$-1, %eax
	jmp	.L55
.L124:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$607, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$245, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	dtls1_read_bytes, .-dtls1_read_bytes
	.globl	dtls1_write_bytes
	.type	dtls1_write_bytes, @function
dtls1_write_bytes:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movb	%al, -28(%rbp)
	cmpq	$16384, -48(%rbp)
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L130
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$624, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L131
.L130:
	movq	-24(%rbp), %rax
	movl	$1, 104(%rax)
	movzbl	-28(%rbp), %esi
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	do_dtls1_write@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	dtls1_write_bytes, .-dtls1_write_bytes
	.globl	do_dtls1_write
	.type	do_dtls1_write, @function
do_dtls1_write:
.LFB736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, %eax
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movb	%al, -60(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movl	388(%rax), %eax
	testl	%eax, %eax
	jle	.L133
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	144(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L133
	movl	-12(%rbp), %eax
	jmp	.L140
.L133:
	cmpq	$0, -80(%rbp)
	jne	.L135
	movl	$0, %eax
	jmp	.L140
.L135:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_get_max_send_fragment@PLT
	movl	%eax, %eax
	cmpq	-80(%rbp), %rax
	jnb	.L136
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$652, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$194, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L140
.L136:
	movzbl	-60(%rbp), %eax
	movb	%al, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$131071, %eax
	jne	.L137
	movq	-56(%rbp), %rax
	movl	2376(%rax), %eax
	cmpl	$256, %eax
	je	.L137
	movl	$65279, -44(%rbp)
	jmp	.L138
.L137:
	movq	-56(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, -44(%rbp)
.L138:
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	3040(%rax), %rax
	movq	48(%rax), %r8
	movq	-56(%rbp), %rax
	movq	3056(%rax), %rax
	leaq	-48(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdx
	movq	-56(%rbp), %rax
	movl	$670, %r8d
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_tls_handle_rlayer_return@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jle	.L139
	movq	-80(%rbp), %rax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
.L139:
	movl	-16(%rbp), %eax
.L140:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	do_dtls1_write, .-do_dtls1_write
	.globl	dtls1_increment_epoch
	.type	dtls1_increment_epoch, @function
dtls1_increment_epoch:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L142
	movq	-8(%rbp), %rax
	movq	3144(%rax), %rax
	movzwl	(%rax), %edx
	addl	$1, %edx
	movw	%dx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_clear_received_buffer@PLT
	jmp	.L144
.L142:
	movq	-8(%rbp), %rax
	movq	3144(%rax), %rax
	movzwl	2(%rax), %edx
	addl	$1, %edx
	movw	%dx, 2(%rax)
.L144:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	dtls1_increment_epoch, .-dtls1_increment_epoch
	.globl	dtls1_get_epoch
	.type	dtls1_get_epoch, @function
dtls1_get_epoch:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L146
	movq	-24(%rbp), %rax
	movq	3144(%rax), %rax
	movzwl	(%rax), %eax
	movw	%ax, -2(%rbp)
	jmp	.L147
.L146:
	movq	-24(%rbp), %rax
	movq	3144(%rax), %rax
	movzwl	2(%rax), %eax
	movw	%ax, -2(%rbp)
.L147:
	movzwl	-2(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	dtls1_get_epoch, .-dtls1_get_epoch
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 19
__func__.3:
	.string	"dtls_buffer_record"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 17
__func__.2:
	.string	"dtls1_read_bytes"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"dtls1_write_bytes"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"do_dtls1_write"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

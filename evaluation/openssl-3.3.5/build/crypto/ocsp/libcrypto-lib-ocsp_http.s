	.file	"ocsp_http.c"
	.text
	.section	.rodata
.LC0:
	.string	"application/ocsp-request"
	.text
	.globl	OCSP_sendreq_new
	.type	OCSP_sendreq_new, @function
OCSP_sendreq_new:
.LFB581:
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
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_set_request_line@PLT
	testl	%eax, %eax
	je	.L8
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_set_expected@PLT
	testl	%eax, %eax
	je	.L9
	cmpq	$0, -40(%rbp)
	je	.L7
	call	OCSP_REQUEST_it@PLT
	movq	%rax, %rdi
	movq	-40(%rbp), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_set1_req@PLT
	testl	%eax, %eax
	je	.L10
.L7:
	movq	-8(%rbp), %rax
	jmp	.L3
.L8:
	nop
	jmp	.L5
.L9:
	nop
	jmp	.L5
.L10:
	nop
.L5:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_free@PLT
	movl	$0, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	OCSP_sendreq_new, .-OCSP_sendreq_new
	.globl	OCSP_sendreq_bio
	.type	OCSP_sendreq_bio, @function
OCSP_sendreq_bio:
.LFB582:
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
	movq	$0, -8(%rbp)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OCSP_sendreq_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_exchange@PLT
	movq	%rax, -24(%rbp)
	call	OCSP_RESPONSE_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_d2i_bio@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HTTP_REQ_CTX_free@PLT
	movq	-8(%rbp), %rax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	OCSP_sendreq_bio, .-OCSP_sendreq_bio
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"x_req.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
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
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
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
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	rinf_cb, @function
rinf_cb:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.L6
	call	OPENSSL_sk_new_null@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movl	$1, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	rinf_cb, .-rinf_cb
	.section	.rodata
.LC0:
	.string	"../crypto/x509/x_req.c"
	.text
	.type	req_cb, @function
req_cb:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$17, -52(%rbp)
	je	.L9
	cmpl	$17, -52(%rbp)
	jg	.L10
	cmpl	$16, -52(%rbp)
	je	.L11
	cmpl	$16, -52(%rbp)
	jg	.L10
	cmpl	$15, -52(%rbp)
	je	.L12
	cmpl	$15, -52(%rbp)
	jg	.L10
	cmpl	$4, -52(%rbp)
	je	.L13
	cmpl	$4, -52(%rbp)
	jg	.L10
	cmpl	$1, -52(%rbp)
	je	.L14
	cmpl	$3, -52(%rbp)
	je	.L15
	jmp	.L10
.L13:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
.L14:
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	jmp	.L10
.L15:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$63, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L10
.L12:
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_req_set0_libctx@PLT
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L21
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L21
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_dup@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L19
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$77, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L17
.L19:
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_PUBKEY_set@PLT
	testl	%eax, %eax
	jne	.L20
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$82, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L17
.L20:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	jmp	.L21
.L11:
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L10
.L9:
	movq	-80(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L10
.L21:
	nop
.L10:
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	req_cb, .-req_cb
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	X509_REQ_INFO_aux, @object
	.size	X509_REQ_INFO_aux, 48
X509_REQ_INFO_aux:
	.quad	0
	.long	2
	.long	0
	.long	0
	.zero	4
	.quad	rinf_cb
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC1:
	.string	"version"
.LC2:
	.string	"subject"
.LC3:
	.string	"pubkey"
.LC4:
	.string	"attributes"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	X509_REQ_INFO_seq_tt, @object
	.size	X509_REQ_INFO_seq_tt, 160
X509_REQ_INFO_seq_tt:
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC1
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	32
	.quad	.LC2
	.quad	X509_NAME_it
	.quad	0
	.quad	0
	.quad	40
	.quad	.LC3
	.quad	X509_PUBKEY_it
	.quad	139
	.quad	0
	.quad	48
	.quad	.LC4
	.quad	X509_ATTRIBUTE_it
	.text
	.globl	X509_REQ_INFO_it
	.type	X509_REQ_INFO_it, @function
X509_REQ_INFO_it:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	X509_REQ_INFO_it, .-X509_REQ_INFO_it
	.globl	d2i_X509_REQ_INFO
	.type	d2i_X509_REQ_INFO, @function
d2i_X509_REQ_INFO:
.LFB523:
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
	call	X509_REQ_INFO_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	d2i_X509_REQ_INFO, .-d2i_X509_REQ_INFO
	.globl	i2d_X509_REQ_INFO
	.type	i2d_X509_REQ_INFO, @function
i2d_X509_REQ_INFO:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	X509_REQ_INFO_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	i2d_X509_REQ_INFO, .-i2d_X509_REQ_INFO
	.globl	X509_REQ_INFO_new
	.type	X509_REQ_INFO_new, @function
X509_REQ_INFO_new:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	X509_REQ_INFO_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	X509_REQ_INFO_new, .-X509_REQ_INFO_new
	.globl	X509_REQ_INFO_free
	.type	X509_REQ_INFO_free, @function
X509_REQ_INFO_free:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_REQ_INFO_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	X509_REQ_INFO_free, .-X509_REQ_INFO_free
	.section	.data.rel.ro.local
	.align 32
	.type	X509_REQ_aux, @object
	.size	X509_REQ_aux, 48
X509_REQ_aux:
	.quad	0
	.long	1
	.long	80
	.long	88
	.zero	4
	.quad	req_cb
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC5:
	.string	"req_info"
.LC6:
	.string	"sig_alg"
.LC7:
	.string	"signature"
	.section	.data.rel.ro
	.align 32
	.type	X509_REQ_seq_tt, @object
	.size	X509_REQ_seq_tt, 120
X509_REQ_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC5
	.quad	X509_REQ_INFO_it
	.quad	4096
	.quad	0
	.quad	56
	.quad	.LC6
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	72
	.quad	.LC7
	.quad	ASN1_BIT_STRING_it
	.text
	.globl	X509_REQ_it
	.type	X509_REQ_it, @function
X509_REQ_it:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	X509_REQ_it, .-X509_REQ_it
	.globl	d2i_X509_REQ
	.type	d2i_X509_REQ, @function
d2i_X509_REQ:
.LFB528:
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
	call	X509_REQ_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	d2i_X509_REQ, .-d2i_X509_REQ
	.globl	i2d_X509_REQ
	.type	i2d_X509_REQ, @function
i2d_X509_REQ:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	X509_REQ_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	i2d_X509_REQ, .-i2d_X509_REQ
	.globl	X509_REQ_new
	.type	X509_REQ_new, @function
X509_REQ_new:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	X509_REQ_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	X509_REQ_new, .-X509_REQ_new
	.globl	X509_REQ_free
	.type	X509_REQ_free, @function
X509_REQ_free:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_REQ_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	X509_REQ_free, .-X509_REQ_free
	.globl	X509_REQ_dup
	.type	X509_REQ_dup, @function
X509_REQ_dup:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_REQ_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	X509_REQ_dup, .-X509_REQ_dup
	.globl	X509_REQ_set0_distinguishing_id
	.type	X509_REQ_set0_distinguishing_id, @function
X509_REQ_set0_distinguishing_id:
.LFB533:
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
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 96(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	X509_REQ_set0_distinguishing_id, .-X509_REQ_set0_distinguishing_id
	.globl	X509_REQ_get0_distinguishing_id
	.type	X509_REQ_get0_distinguishing_id, @function
X509_REQ_get0_distinguishing_id:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	X509_REQ_get0_distinguishing_id, .-X509_REQ_get0_distinguishing_id
	.globl	ossl_x509_req_set0_libctx
	.type	ossl_x509_req_set0_libctx, @function
ossl_x509_req_set0_libctx:
.LFB535:
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
	cmpq	$0, -8(%rbp)
	je	.L46
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 104(%rax)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$152, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 112(%rax)
	cmpq	$0, -24(%rbp)
	je	.L46
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$155, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 112(%rdx)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	movl	$1, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	ossl_x509_req_set0_libctx, .-ossl_x509_req_set0_libctx
	.globl	X509_REQ_new_ex
	.type	X509_REQ_new_ex, @function
X509_REQ_new_ex:
.LFB536:
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
	call	X509_REQ_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_req_set0_libctx@PLT
	testl	%eax, %eax
	jne	.L49
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_free@PLT
	movq	$0, -8(%rbp)
.L49:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	X509_REQ_new_ex, .-X509_REQ_new_ex
	.section	.rodata
	.type	__func__.2, @object
	.size	__func__.2, 7
__func__.2:
	.string	"req_cb"
.LC8:
	.string	"X509_REQ_INFO"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	X509_REQ_INFO_seq_tt
	.quad	4
	.quad	X509_REQ_INFO_aux
	.quad	56
	.quad	.LC8
	.section	.rodata
.LC9:
	.string	"X509_REQ"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	1
	.zero	7
	.quad	16
	.quad	X509_REQ_seq_tt
	.quad	3
	.quad	X509_REQ_aux
	.quad	120
	.quad	.LC9
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

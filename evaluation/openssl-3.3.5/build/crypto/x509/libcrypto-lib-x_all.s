	.file	"x_all.c"
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
	.type	ossl_check_const_X509_EXTENSION_sk_type, @function
ossl_check_const_X509_EXTENSION_sk_type:
.LFB433:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	ossl_check_const_X509_EXTENSION_sk_type, .-ossl_check_const_X509_EXTENSION_sk_type
	.globl	X509_verify
	.type	X509_verify, @function
X509_verify:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$136, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_ALGOR_cmp@PLT
	testl	%eax, %eax
	je	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-56(%rbp), %rax
	movq	376(%rax), %r15
	movq	-56(%rbp), %rax
	movq	368(%rax), %r14
	movq	-56(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rbx
	movq	-56(%rbp), %rax
	leaq	152(%rax), %r13
	movq	-56(%rbp), %rax
	leaq	136(%rax), %r12
	call	X509_CINF_it@PLT
	movq	-64(%rbp), %rdx
	pushq	%r15
	pushq	%r14
	movq	%rdx, %r9
	movq	-72(%rbp), %r8
	movq	%rbx, %rcx
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	ASN1_item_verify_ex@PLT
	addq	$16, %rsp
.L9:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	X509_verify, .-X509_verify
	.globl	X509_REQ_verify_ex
	.type	X509_REQ_verify_ex, @function
X509_REQ_verify_ex:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	96(%rax), %r14
	movq	-40(%rbp), %r12
	movq	-40(%rbp), %rax
	movq	72(%rax), %rbx
	movq	-40(%rbp), %rax
	leaq	56(%rax), %r13
	call	X509_REQ_INFO_it@PLT
	movq	-48(%rbp), %rdx
	pushq	-64(%rbp)
	pushq	-56(%rbp)
	movq	%rdx, %r9
	movq	%r14, %r8
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	ASN1_item_verify_ex@PLT
	addq	$16, %rsp
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	X509_REQ_verify_ex, .-X509_REQ_verify_ex
	.globl	X509_REQ_verify
	.type	X509_REQ_verify, @function
X509_REQ_verify:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_REQ_verify_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	X509_REQ_verify, .-X509_REQ_verify
	.globl	NETSCAPE_SPKI_verify
	.type	NETSCAPE_SPKI_verify, @function
NETSCAPE_SPKI_verify:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %r12
	movq	-40(%rbp), %rax
	movq	24(%rax), %rbx
	movq	-40(%rbp), %rax
	leaq	8(%rax), %r13
	call	NETSCAPE_SPKAC_it@PLT
	movq	-48(%rbp), %rdx
	movq	%rdx, %r8
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	ASN1_item_verify@PLT
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	NETSCAPE_SPKI_verify, .-NETSCAPE_SPKI_verify
	.section	.rodata
.LC0:
	.string	"../crypto/x509/x_all.c"
	.text
	.globl	X509_sign
	.type	X509_sign, @function
X509_sign:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L17
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_extensions@PLT
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jle	.L19
	movq	-56(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	X509_set_version@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L18
.L19:
	movq	-56(%rbp), %rax
	movl	$1, 128(%rax)
	movq	-56(%rbp), %rax
	movq	376(%rax), %r15
	movq	-56(%rbp), %rax
	movq	368(%rax), %r14
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	leaq	152(%rax), %r13
	movq	-56(%rbp), %rax
	leaq	136(%rax), %r12
	movq	-56(%rbp), %rax
	leaq	32(%rax), %rbx
	call	X509_CINF_it@PLT
	pushq	%r15
	pushq	%r14
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	movl	$0, %r9d
	movq	-80(%rbp), %r8
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_sign_ex@PLT
	addq	$32, %rsp
.L18:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	X509_sign, .-X509_sign
	.globl	X509_sign_ctx
	.type	X509_sign_ctx, @function
X509_sign_ctx:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L21
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$86, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L22
.L21:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_extensions@PLT
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jle	.L23
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	X509_set_version@PLT
	testl	%eax, %eax
	jne	.L23
	movl	$0, %eax
	jmp	.L22
.L23:
	movq	-40(%rbp), %rax
	movl	$1, 128(%rax)
	movq	-40(%rbp), %r14
	movq	-40(%rbp), %rax
	leaq	152(%rax), %r13
	movq	-40(%rbp), %rax
	leaq	136(%rax), %r12
	movq	-40(%rbp), %rax
	leaq	32(%rax), %rbx
	call	X509_CINF_it@PLT
	movq	-48(%rbp), %rdx
	movq	%rdx, %r9
	movq	%r14, %r8
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_sign_ctx@PLT
.L22:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	X509_sign_ctx, .-X509_sign_ctx
	.type	simple_get_asn1, @function
simple_get_asn1:
.LFB628:
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
	movl	%ecx, -60(%rbp)
	movq	%r8, -72(%rbp)
	call	X509_CRL_it@PLT
	cmpq	%rax, -72(%rbp)
	jne	.L25
	movq	$33554432, -8(%rbp)
	jmp	.L26
.L25:
	movq	$102400, -8(%rbp)
.L26:
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	movl	-60(%rbp), %ecx
	pushq	%rcx
	pushq	-8(%rbp)
	pushq	$1
	pushq	$0
	pushq	$0
	pushq	$1024
	pushq	$0
	movl	$0, %r9d
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_HTTP_get@PLT
	addq	$64, %rsp
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_d2i_bio@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	simple_get_asn1, .-simple_get_asn1
	.globl	X509_load_http
	.type	X509_load_http, @function
X509_load_http:
.LFB629:
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
	movl	%ecx, -28(%rbp)
	call	X509_it@PLT
	movq	%rax, %rdi
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	simple_get_asn1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	X509_load_http, .-X509_load_http
	.globl	X509_REQ_sign
	.type	X509_REQ_sign, @function
X509_REQ_sign:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L31
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$127, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L32
.L31:
	movq	-56(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-56(%rbp), %rax
	movq	112(%rax), %r14
	movq	-56(%rbp), %rax
	movq	104(%rax), %r13
	movq	-56(%rbp), %r15
	movq	-56(%rbp), %rax
	movq	72(%rax), %rbx
	movq	-56(%rbp), %rax
	leaq	56(%rax), %r12
	call	X509_REQ_INFO_it@PLT
	pushq	%r14
	pushq	%r13
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	movl	$0, %r9d
	movq	%r15, %r8
	movq	%rbx, %rcx
	movl	$0, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	ASN1_item_sign_ex@PLT
	addq	$32, %rsp
.L32:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	X509_REQ_sign, .-X509_REQ_sign
	.globl	X509_REQ_sign_ctx
	.type	X509_REQ_sign_ctx, @function
X509_REQ_sign_ctx:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$139, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L34:
	movq	-40(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-40(%rbp), %r13
	movq	-40(%rbp), %rax
	movq	72(%rax), %rbx
	movq	-40(%rbp), %rax
	leaq	56(%rax), %r12
	call	X509_REQ_INFO_it@PLT
	movq	-48(%rbp), %rdx
	movq	%rdx, %r9
	movq	%r13, %r8
	movq	%rbx, %rcx
	movl	$0, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	ASN1_item_sign_ctx@PLT
.L35:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	X509_REQ_sign_ctx, .-X509_REQ_sign_ctx
	.globl	X509_CRL_sign
	.type	X509_CRL_sign, @function
X509_CRL_sign:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L37
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$151, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L37:
	movq	-56(%rbp), %rax
	movl	$1, 80(%rax)
	movq	-56(%rbp), %rax
	movq	240(%rax), %r15
	movq	-56(%rbp), %rax
	movq	232(%rax), %r14
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	leaq	104(%rax), %r13
	movq	-56(%rbp), %rax
	leaq	88(%rax), %r12
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rbx
	call	X509_CRL_INFO_it@PLT
	pushq	%r15
	pushq	%r14
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	movl	$0, %r9d
	movq	-80(%rbp), %r8
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_sign_ex@PLT
	addq	$32, %rsp
.L38:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	X509_CRL_sign, .-X509_CRL_sign
	.globl	X509_CRL_sign_ctx
	.type	X509_CRL_sign_ctx, @function
X509_CRL_sign_ctx:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L40
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$163, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L41
.L40:
	movq	-40(%rbp), %rax
	movl	$1, 80(%rax)
	movq	-40(%rbp), %r14
	movq	-40(%rbp), %rax
	leaq	104(%rax), %r13
	movq	-40(%rbp), %rax
	leaq	88(%rax), %r12
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rbx
	call	X509_CRL_INFO_it@PLT
	movq	-48(%rbp), %rdx
	movq	%rdx, %r9
	movq	%r14, %r8
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_sign_ctx@PLT
.L41:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	X509_CRL_sign_ctx, .-X509_CRL_sign_ctx
	.globl	X509_CRL_load_http
	.type	X509_CRL_load_http, @function
X509_CRL_load_http:
.LFB634:
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
	movl	%ecx, -28(%rbp)
	call	X509_CRL_it@PLT
	movq	%rax, %rdi
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	simple_get_asn1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	X509_CRL_load_http, .-X509_CRL_load_http
	.globl	NETSCAPE_SPKI_sign
	.type	NETSCAPE_SPKI_sign, @function
NETSCAPE_SPKI_sign:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %r13
	movq	-40(%rbp), %rax
	movq	24(%rax), %rbx
	movq	-40(%rbp), %rax
	leaq	8(%rax), %r12
	call	NETSCAPE_SPKAC_it@PLT
	pushq	$0
	pushq	$0
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	movl	$0, %r9d
	movq	%r13, %r8
	movq	%rbx, %rcx
	movl	$0, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	ASN1_item_sign_ex@PLT
	addq	$32, %rsp
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	NETSCAPE_SPKI_sign, .-NETSCAPE_SPKI_sign
	.globl	d2i_X509_fp
	.type	d2i_X509_fp, @function
d2i_X509_fp:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	X509_it@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_d2i_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	d2i_X509_fp, .-d2i_X509_fp
	.globl	i2d_X509_fp
	.type	i2d_X509_fp, @function
i2d_X509_fp:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	X509_it@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_i2d_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	i2d_X509_fp, .-i2d_X509_fp
	.globl	d2i_X509_bio
	.type	d2i_X509_bio, @function
d2i_X509_bio:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	X509_it@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_d2i_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	d2i_X509_bio, .-d2i_X509_bio
	.globl	i2d_X509_bio
	.type	i2d_X509_bio, @function
i2d_X509_bio:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	X509_it@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	i2d_X509_bio, .-i2d_X509_bio
	.globl	d2i_X509_CRL_fp
	.type	d2i_X509_CRL_fp, @function
d2i_X509_CRL_fp:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	X509_CRL_it@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_d2i_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	d2i_X509_CRL_fp, .-d2i_X509_CRL_fp
	.globl	i2d_X509_CRL_fp
	.type	i2d_X509_CRL_fp, @function
i2d_X509_CRL_fp:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	X509_CRL_it@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_i2d_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	i2d_X509_CRL_fp, .-i2d_X509_CRL_fp
	.globl	d2i_X509_CRL_bio
	.type	d2i_X509_CRL_bio, @function
d2i_X509_CRL_bio:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	X509_CRL_it@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_d2i_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	d2i_X509_CRL_bio, .-d2i_X509_CRL_bio
	.globl	i2d_X509_CRL_bio
	.type	i2d_X509_CRL_bio, @function
i2d_X509_CRL_bio:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	X509_CRL_it@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	i2d_X509_CRL_bio, .-i2d_X509_CRL_bio
	.globl	d2i_PKCS7_fp
	.type	d2i_PKCS7_fp, @function
d2i_PKCS7_fp:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L63
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L63
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
.L63:
	call	PKCS7_it@PLT
	movq	%rax, %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	ASN1_item_d2i_fp_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L64
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_resolve_libctx@PLT
.L64:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	d2i_PKCS7_fp, .-d2i_PKCS7_fp
	.globl	i2d_PKCS7_fp
	.type	i2d_PKCS7_fp, @function
i2d_PKCS7_fp:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PKCS7_it@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_i2d_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	i2d_PKCS7_fp, .-i2d_PKCS7_fp
	.globl	d2i_PKCS7_bio
	.type	d2i_PKCS7_bio, @function
d2i_PKCS7_bio:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L69
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L69
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
.L69:
	call	PKCS7_it@PLT
	movq	%rax, %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	ASN1_item_d2i_bio_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L70
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_resolve_libctx@PLT
.L70:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	d2i_PKCS7_bio, .-d2i_PKCS7_bio
	.globl	i2d_PKCS7_bio
	.type	i2d_PKCS7_bio, @function
i2d_PKCS7_bio:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PKCS7_it@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	i2d_PKCS7_bio, .-i2d_PKCS7_bio
	.globl	d2i_X509_REQ_fp
	.type	d2i_X509_REQ_fp, @function
d2i_X509_REQ_fp:
.LFB648:
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
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_d2i_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	d2i_X509_REQ_fp, .-d2i_X509_REQ_fp
	.globl	i2d_X509_REQ_fp
	.type	i2d_X509_REQ_fp, @function
i2d_X509_REQ_fp:
.LFB649:
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
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_i2d_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	i2d_X509_REQ_fp, .-i2d_X509_REQ_fp
	.globl	d2i_X509_REQ_bio
	.type	d2i_X509_REQ_bio, @function
d2i_X509_REQ_bio:
.LFB650:
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
	movq	$0, -16(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L79
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L79
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -16(%rbp)
.L79:
	call	X509_REQ_it@PLT
	movq	%rax, %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	ASN1_item_d2i_bio_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	d2i_X509_REQ_bio, .-d2i_X509_REQ_bio
	.globl	i2d_X509_REQ_bio
	.type	i2d_X509_REQ_bio, @function
i2d_X509_REQ_bio:
.LFB651:
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
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	i2d_X509_REQ_bio, .-i2d_X509_REQ_bio
	.globl	d2i_RSAPrivateKey_fp
	.type	d2i_RSAPrivateKey_fp, @function
d2i_RSAPrivateKey_fp:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	RSAPrivateKey_it@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_d2i_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	d2i_RSAPrivateKey_fp, .-d2i_RSAPrivateKey_fp
	.globl	i2d_RSAPrivateKey_fp
	.type	i2d_RSAPrivateKey_fp, @function
i2d_RSAPrivateKey_fp:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	RSAPrivateKey_it@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_i2d_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	i2d_RSAPrivateKey_fp, .-i2d_RSAPrivateKey_fp
	.globl	d2i_RSAPublicKey_fp
	.type	d2i_RSAPublicKey_fp, @function
d2i_RSAPublicKey_fp:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	RSAPublicKey_it@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_d2i_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	d2i_RSAPublicKey_fp, .-d2i_RSAPublicKey_fp
	.globl	d2i_RSA_PUBKEY_fp
	.type	d2i_RSA_PUBKEY_fp, @function
d2i_RSA_PUBKEY_fp:
.LFB655:
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
	movq	d2i_RSA_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	RSA_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	d2i_RSA_PUBKEY_fp, .-d2i_RSA_PUBKEY_fp
	.globl	i2d_RSAPublicKey_fp
	.type	i2d_RSAPublicKey_fp, @function
i2d_RSAPublicKey_fp:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	RSAPublicKey_it@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_i2d_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	i2d_RSAPublicKey_fp, .-i2d_RSAPublicKey_fp
	.globl	i2d_RSA_PUBKEY_fp
	.type	i2d_RSA_PUBKEY_fp, @function
i2d_RSA_PUBKEY_fp:
.LFB657:
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
	movq	i2d_RSA_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	i2d_RSA_PUBKEY_fp, .-i2d_RSA_PUBKEY_fp
	.globl	d2i_RSAPrivateKey_bio
	.type	d2i_RSAPrivateKey_bio, @function
d2i_RSAPrivateKey_bio:
.LFB658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	RSAPrivateKey_it@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_d2i_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	d2i_RSAPrivateKey_bio, .-d2i_RSAPrivateKey_bio
	.globl	i2d_RSAPrivateKey_bio
	.type	i2d_RSAPrivateKey_bio, @function
i2d_RSAPrivateKey_bio:
.LFB659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	RSAPrivateKey_it@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	i2d_RSAPrivateKey_bio, .-i2d_RSAPrivateKey_bio
	.globl	d2i_RSAPublicKey_bio
	.type	d2i_RSAPublicKey_bio, @function
d2i_RSAPublicKey_bio:
.LFB660:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	RSAPublicKey_it@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_d2i_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	d2i_RSAPublicKey_bio, .-d2i_RSAPublicKey_bio
	.globl	d2i_RSA_PUBKEY_bio
	.type	d2i_RSA_PUBKEY_bio, @function
d2i_RSA_PUBKEY_bio:
.LFB661:
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
	movq	d2i_RSA_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	RSA_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	d2i_RSA_PUBKEY_bio, .-d2i_RSA_PUBKEY_bio
	.globl	i2d_RSAPublicKey_bio
	.type	i2d_RSAPublicKey_bio, @function
i2d_RSAPublicKey_bio:
.LFB662:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	RSAPublicKey_it@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	i2d_RSAPublicKey_bio, .-i2d_RSAPublicKey_bio
	.globl	i2d_RSA_PUBKEY_bio
	.type	i2d_RSA_PUBKEY_bio, @function
i2d_RSA_PUBKEY_bio:
.LFB663:
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
	movq	i2d_RSA_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	i2d_RSA_PUBKEY_bio, .-i2d_RSA_PUBKEY_bio
	.globl	d2i_DSAPrivateKey_fp
	.type	d2i_DSAPrivateKey_fp, @function
d2i_DSAPrivateKey_fp:
.LFB664:
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
	movq	d2i_DSAPrivateKey@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	DSA_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	d2i_DSAPrivateKey_fp, .-d2i_DSAPrivateKey_fp
	.globl	i2d_DSAPrivateKey_fp
	.type	i2d_DSAPrivateKey_fp, @function
i2d_DSAPrivateKey_fp:
.LFB665:
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
	movq	i2d_DSAPrivateKey@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	i2d_DSAPrivateKey_fp, .-i2d_DSAPrivateKey_fp
	.globl	d2i_DSA_PUBKEY_fp
	.type	d2i_DSA_PUBKEY_fp, @function
d2i_DSA_PUBKEY_fp:
.LFB666:
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
	movq	d2i_DSA_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	DSA_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	d2i_DSA_PUBKEY_fp, .-d2i_DSA_PUBKEY_fp
	.globl	i2d_DSA_PUBKEY_fp
	.type	i2d_DSA_PUBKEY_fp, @function
i2d_DSA_PUBKEY_fp:
.LFB667:
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
	movq	i2d_DSA_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE667:
	.size	i2d_DSA_PUBKEY_fp, .-i2d_DSA_PUBKEY_fp
	.globl	d2i_DSAPrivateKey_bio
	.type	d2i_DSAPrivateKey_bio, @function
d2i_DSAPrivateKey_bio:
.LFB668:
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
	movq	d2i_DSAPrivateKey@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	DSA_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	d2i_DSAPrivateKey_bio, .-d2i_DSAPrivateKey_bio
	.globl	i2d_DSAPrivateKey_bio
	.type	i2d_DSAPrivateKey_bio, @function
i2d_DSAPrivateKey_bio:
.LFB669:
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
	movq	i2d_DSAPrivateKey@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE669:
	.size	i2d_DSAPrivateKey_bio, .-i2d_DSAPrivateKey_bio
	.globl	d2i_DSA_PUBKEY_bio
	.type	d2i_DSA_PUBKEY_bio, @function
d2i_DSA_PUBKEY_bio:
.LFB670:
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
	movq	d2i_DSA_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	DSA_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	d2i_DSA_PUBKEY_bio, .-d2i_DSA_PUBKEY_bio
	.globl	i2d_DSA_PUBKEY_bio
	.type	i2d_DSA_PUBKEY_bio, @function
i2d_DSA_PUBKEY_bio:
.LFB671:
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
	movq	i2d_DSA_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	i2d_DSA_PUBKEY_bio, .-i2d_DSA_PUBKEY_bio
	.globl	d2i_EC_PUBKEY_fp
	.type	d2i_EC_PUBKEY_fp, @function
d2i_EC_PUBKEY_fp:
.LFB672:
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
	movq	d2i_EC_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	EC_KEY_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	d2i_EC_PUBKEY_fp, .-d2i_EC_PUBKEY_fp
	.globl	i2d_EC_PUBKEY_fp
	.type	i2d_EC_PUBKEY_fp, @function
i2d_EC_PUBKEY_fp:
.LFB673:
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
	movq	i2d_EC_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	i2d_EC_PUBKEY_fp, .-i2d_EC_PUBKEY_fp
	.globl	d2i_ECPrivateKey_fp
	.type	d2i_ECPrivateKey_fp, @function
d2i_ECPrivateKey_fp:
.LFB674:
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
	movq	d2i_ECPrivateKey@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	EC_KEY_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	d2i_ECPrivateKey_fp, .-d2i_ECPrivateKey_fp
	.globl	i2d_ECPrivateKey_fp
	.type	i2d_ECPrivateKey_fp, @function
i2d_ECPrivateKey_fp:
.LFB675:
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
	movq	i2d_ECPrivateKey@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	i2d_ECPrivateKey_fp, .-i2d_ECPrivateKey_fp
	.globl	d2i_EC_PUBKEY_bio
	.type	d2i_EC_PUBKEY_bio, @function
d2i_EC_PUBKEY_bio:
.LFB676:
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
	movq	d2i_EC_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	EC_KEY_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE676:
	.size	d2i_EC_PUBKEY_bio, .-d2i_EC_PUBKEY_bio
	.globl	i2d_EC_PUBKEY_bio
	.type	i2d_EC_PUBKEY_bio, @function
i2d_EC_PUBKEY_bio:
.LFB677:
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
	movq	i2d_EC_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	i2d_EC_PUBKEY_bio, .-i2d_EC_PUBKEY_bio
	.globl	d2i_ECPrivateKey_bio
	.type	d2i_ECPrivateKey_bio, @function
d2i_ECPrivateKey_bio:
.LFB678:
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
	movq	d2i_ECPrivateKey@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	EC_KEY_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	d2i_ECPrivateKey_bio, .-d2i_ECPrivateKey_bio
	.globl	i2d_ECPrivateKey_bio
	.type	i2d_ECPrivateKey_bio, @function
i2d_ECPrivateKey_bio:
.LFB679:
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
	movq	i2d_ECPrivateKey@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE679:
	.size	i2d_ECPrivateKey_bio, .-i2d_ECPrivateKey_bio
	.globl	X509_pubkey_digest
	.type	X509_pubkey_digest, @function
X509_pubkey_digest:
.LFB680:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey_bitstr@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L140
	movl	$0, %eax
	jmp	.L141
.L140:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_Digest@PLT
.L141:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	X509_pubkey_digest, .-X509_pubkey_digest
	.section	.rodata
.LC1:
	.string	"SHA1"
	.text
	.globl	X509_digest
	.type	X509_digest, @function
X509_digest:
.LFB681:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	je	.L143
	movq	-24(%rbp), %rax
	movl	232(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L143
	movq	-24(%rbp), %rax
	movl	232(%rax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L143
	cmpq	$0, -48(%rbp)
	je	.L144
	movq	-48(%rbp), %rax
	movl	$20, (%rax)
.L144:
	movq	-24(%rbp), %rax
	leaq	312(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
	jmp	.L145
.L143:
	movq	-24(%rbp), %rax
	movq	376(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	368(%rax), %r12
	call	X509_it@PLT
	movq	%rax, %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%r12, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	ossl_asn1_item_digest_ex@PLT
	addq	$16, %rsp
.L145:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	X509_digest, .-X509_digest
	.section	.rodata
.LC2:
	.string	"SHA512"
.LC3:
	.string	"SHAKE256"
.LC4:
	.string	"SHA256"
	.text
	.globl	X509_digest_sig
	.type	X509_digest_sig, @function
X509_digest_sig:
.LFB682:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -176(%rbp)
	je	.L147
	movq	-176(%rbp), %rax
	movq	$0, (%rax)
.L147:
	cmpq	$0, -184(%rbp)
	je	.L148
	movq	-184(%rbp), %rax
	movl	$0, (%rax)
.L148:
	cmpq	$0, -168(%rbp)
	jne	.L149
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$500, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L171
.L149:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_signature_nid@PLT
	movl	%eax, %ecx
	leaq	-136(%rbp), %rdx
	leaq	-132(%rbp), %rax
	movq	%rax, %rsi
	movl	%ecx, %edi
	call	OBJ_find_sigid_algs@PLT
	testl	%eax, %eax
	jne	.L151
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$505, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$144, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L171
.L151:
	movl	-132(%rbp), %eax
	testl	%eax, %eax
	jne	.L152
	movl	-136(%rbp), %eax
	cmpl	$912, %eax
	jne	.L153
	movq	-168(%rbp), %rax
	addq	$136, %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_decode@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -152(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L154
	leaq	-160(%rbp), %rdi
	leaq	-156(%rbp), %rcx
	leaq	-144(%rbp), %rdx
	leaq	-152(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_rsa_pss_get_param_unverified@PLT
	testl	%eax, %eax
	je	.L154
	movq	-152(%rbp), %rax
	testq	%rax, %rax
	jne	.L155
.L154:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_PSS_PARAMS_free@PLT
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$521, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L171
.L155:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_PSS_PARAMS_free@PLT
	movq	-168(%rbp), %rax
	movq	376(%rax), %rbx
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rcx
	movq	-168(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L158
	movl	$0, %eax
	jmp	.L171
.L153:
	movl	-136(%rbp), %eax
	testl	%eax, %eax
	je	.L159
	movl	-136(%rbp), %eax
	cmpl	$1087, %eax
	je	.L160
	cmpl	$1088, %eax
	je	.L161
	jmp	.L172
.L160:
	leaq	.LC2(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L163
.L161:
	leaq	.LC3(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L163
.L172:
	leaq	.LC4(%rip), %rax
	movq	%rax, -32(%rbp)
	nop
.L163:
	movq	-168(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	368(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L164
	movl	$0, %eax
	jmp	.L171
.L164:
	cmpq	$0, -184(%rbp)
	je	.L158
	movq	-184(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L158
.L159:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$550, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L171
.L152:
	movq	-168(%rbp), %rax
	movq	376(%rax), %rbx
	movl	-132(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	movq	-168(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L158
	movl	-132(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L158
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$556, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L171
.L158:
	leaq	-52(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	X509_digest@PLT
	testl	%eax, %eax
	je	.L173
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L173
	movl	-52(%rbp), %eax
	movl	%eax, %edx
	leaq	-128(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	je	.L168
	cmpq	$0, -176(%rbp)
	je	.L169
	movq	-176(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L170
.L169:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
.L170:
	movq	-48(%rbp), %rax
	jmp	.L171
.L168:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	jmp	.L167
.L173:
	nop
.L167:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$0, %eax
.L171:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	X509_digest_sig, .-X509_digest_sig
	.globl	X509_CRL_digest
	.type	X509_CRL_digest, @function
X509_CRL_digest:
.LFB683:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L175
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$579, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L176
.L175:
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	je	.L177
	movq	-24(%rbp), %rax
	movl	132(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L177
	movq	-24(%rbp), %rax
	movl	132(%rax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L177
	cmpq	$0, -48(%rbp)
	je	.L178
	movq	-48(%rbp), %rax
	movl	$20, (%rax)
.L178:
	movq	-24(%rbp), %rax
	leaq	184(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
	jmp	.L176
.L177:
	movq	-24(%rbp), %rax
	movq	240(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	232(%rax), %r12
	call	X509_CRL_it@PLT
	movq	%rax, %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%r12, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	ossl_asn1_item_digest_ex@PLT
	addq	$16, %rsp
.L176:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	X509_CRL_digest, .-X509_CRL_digest
	.globl	X509_REQ_digest
	.type	X509_REQ_digest, @function
X509_REQ_digest:
.LFB684:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	104(%rax), %r12
	call	X509_REQ_it@PLT
	movq	%rax, %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%r12, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	ossl_asn1_item_digest_ex@PLT
	addq	$16, %rsp
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	X509_REQ_digest, .-X509_REQ_digest
	.globl	X509_NAME_digest
	.type	X509_NAME_digest, @function
X509_NAME_digest:
.LFB685:
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
	movq	%rcx, -32(%rbp)
	call	X509_NAME_it@PLT
	movq	%rax, %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	ASN1_item_digest@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	X509_NAME_digest, .-X509_NAME_digest
	.globl	PKCS7_ISSUER_AND_SERIAL_digest
	.type	PKCS7_ISSUER_AND_SERIAL_digest, @function
PKCS7_ISSUER_AND_SERIAL_digest:
.LFB686:
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
	movq	%rcx, -32(%rbp)
	call	PKCS7_ISSUER_AND_SERIAL_it@PLT
	movq	%rax, %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	ASN1_item_digest@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	PKCS7_ISSUER_AND_SERIAL_digest, .-PKCS7_ISSUER_AND_SERIAL_digest
	.globl	d2i_PKCS8_fp
	.type	d2i_PKCS8_fp, @function
d2i_PKCS8_fp:
.LFB687:
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
	movq	d2i_X509_SIG@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	X509_SIG_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	d2i_PKCS8_fp, .-d2i_PKCS8_fp
	.globl	i2d_PKCS8_fp
	.type	i2d_PKCS8_fp, @function
i2d_PKCS8_fp:
.LFB688:
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
	movq	i2d_X509_SIG@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE688:
	.size	i2d_PKCS8_fp, .-i2d_PKCS8_fp
	.globl	d2i_PKCS8_bio
	.type	d2i_PKCS8_bio, @function
d2i_PKCS8_bio:
.LFB689:
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
	movq	d2i_X509_SIG@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	X509_SIG_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE689:
	.size	d2i_PKCS8_bio, .-d2i_PKCS8_bio
	.globl	i2d_PKCS8_bio
	.type	i2d_PKCS8_bio, @function
i2d_PKCS8_bio:
.LFB690:
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
	movq	i2d_X509_SIG@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE690:
	.size	i2d_PKCS8_bio, .-i2d_PKCS8_bio
	.globl	d2i_X509_PUBKEY_fp
	.type	d2i_X509_PUBKEY_fp, @function
d2i_X509_PUBKEY_fp:
.LFB691:
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
	movq	d2i_X509_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	X509_PUBKEY_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE691:
	.size	d2i_X509_PUBKEY_fp, .-d2i_X509_PUBKEY_fp
	.globl	i2d_X509_PUBKEY_fp
	.type	i2d_X509_PUBKEY_fp, @function
i2d_X509_PUBKEY_fp:
.LFB692:
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
	movq	i2d_X509_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE692:
	.size	i2d_X509_PUBKEY_fp, .-i2d_X509_PUBKEY_fp
	.globl	d2i_X509_PUBKEY_bio
	.type	d2i_X509_PUBKEY_bio, @function
d2i_X509_PUBKEY_bio:
.LFB693:
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
	movq	d2i_X509_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	X509_PUBKEY_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE693:
	.size	d2i_X509_PUBKEY_bio, .-d2i_X509_PUBKEY_bio
	.globl	i2d_X509_PUBKEY_bio
	.type	i2d_X509_PUBKEY_bio, @function
i2d_X509_PUBKEY_bio:
.LFB694:
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
	movq	i2d_X509_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE694:
	.size	i2d_X509_PUBKEY_bio, .-i2d_X509_PUBKEY_bio
	.globl	d2i_PKCS8_PRIV_KEY_INFO_fp
	.type	d2i_PKCS8_PRIV_KEY_INFO_fp, @function
d2i_PKCS8_PRIV_KEY_INFO_fp:
.LFB695:
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
	movq	d2i_PKCS8_PRIV_KEY_INFO@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	PKCS8_PRIV_KEY_INFO_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE695:
	.size	d2i_PKCS8_PRIV_KEY_INFO_fp, .-d2i_PKCS8_PRIV_KEY_INFO_fp
	.globl	i2d_PKCS8_PRIV_KEY_INFO_fp
	.type	i2d_PKCS8_PRIV_KEY_INFO_fp, @function
i2d_PKCS8_PRIV_KEY_INFO_fp:
.LFB696:
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
	movq	i2d_PKCS8_PRIV_KEY_INFO@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	i2d_PKCS8_PRIV_KEY_INFO_fp, .-i2d_PKCS8_PRIV_KEY_INFO_fp
	.globl	i2d_PKCS8PrivateKeyInfo_fp
	.type	i2d_PKCS8PrivateKeyInfo_fp, @function
i2d_PKCS8PrivateKeyInfo_fp:
.LFB697:
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
	call	EVP_PKEY2PKCS8@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L206
	movl	$0, %eax
	jmp	.L207
.L206:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PKCS8_PRIV_KEY_INFO_fp@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	movl	-12(%rbp), %eax
.L207:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	i2d_PKCS8PrivateKeyInfo_fp, .-i2d_PKCS8PrivateKeyInfo_fp
	.globl	i2d_PrivateKey_fp
	.type	i2d_PrivateKey_fp, @function
i2d_PrivateKey_fp:
.LFB698:
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
	movq	i2d_PrivateKey@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	i2d_PrivateKey_fp, .-i2d_PrivateKey_fp
	.globl	d2i_PrivateKey_fp
	.type	d2i_PrivateKey_fp, @function
d2i_PrivateKey_fp:
.LFB699:
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
	movq	d2i_AutoPrivateKey@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	EVP_PKEY_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	d2i_PrivateKey_fp, .-d2i_PrivateKey_fp
	.globl	d2i_PrivateKey_ex_fp
	.type	d2i_PrivateKey_ex_fp, @function
d2i_PrivateKey_ex_fp:
.LFB700:
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
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L213
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$709, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L214
.L213:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	d2i_PrivateKey_ex_bio@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
.L214:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	d2i_PrivateKey_ex_fp, .-d2i_PrivateKey_ex_fp
	.globl	i2d_PUBKEY_fp
	.type	i2d_PUBKEY_fp, @function
i2d_PUBKEY_fp:
.LFB701:
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
	movq	i2d_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	i2d_PUBKEY_fp, .-i2d_PUBKEY_fp
	.globl	d2i_PUBKEY_ex_fp
	.type	d2i_PUBKEY_ex_fp, @function
d2i_PUBKEY_ex_fp:
.LFB702:
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
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L218
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$730, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L219
.L218:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	d2i_PUBKEY_ex_bio@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
.L219:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	d2i_PUBKEY_ex_fp, .-d2i_PUBKEY_ex_fp
	.globl	d2i_PUBKEY_fp
	.type	d2i_PUBKEY_fp, @function
d2i_PUBKEY_fp:
.LFB703:
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
	movq	d2i_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	EVP_PKEY_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	d2i_PUBKEY_fp, .-d2i_PUBKEY_fp
	.globl	d2i_PKCS8_PRIV_KEY_INFO_bio
	.type	d2i_PKCS8_PRIV_KEY_INFO_bio, @function
d2i_PKCS8_PRIV_KEY_INFO_bio:
.LFB704:
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
	movq	d2i_PKCS8_PRIV_KEY_INFO@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	PKCS8_PRIV_KEY_INFO_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	d2i_PKCS8_PRIV_KEY_INFO_bio, .-d2i_PKCS8_PRIV_KEY_INFO_bio
	.globl	i2d_PKCS8_PRIV_KEY_INFO_bio
	.type	i2d_PKCS8_PRIV_KEY_INFO_bio, @function
i2d_PKCS8_PRIV_KEY_INFO_bio:
.LFB705:
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
	movq	i2d_PKCS8_PRIV_KEY_INFO@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	i2d_PKCS8_PRIV_KEY_INFO_bio, .-i2d_PKCS8_PRIV_KEY_INFO_bio
	.globl	i2d_PKCS8PrivateKeyInfo_bio
	.type	i2d_PKCS8PrivateKeyInfo_bio, @function
i2d_PKCS8PrivateKeyInfo_bio:
.LFB706:
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
	call	EVP_PKEY2PKCS8@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L227
	movl	$0, %eax
	jmp	.L228
.L227:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PKCS8_PRIV_KEY_INFO_bio@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	movl	-12(%rbp), %eax
.L228:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	i2d_PKCS8PrivateKeyInfo_bio, .-i2d_PKCS8PrivateKeyInfo_bio
	.globl	i2d_PrivateKey_bio
	.type	i2d_PrivateKey_bio, @function
i2d_PrivateKey_bio:
.LFB707:
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
	movq	i2d_PrivateKey@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	i2d_PrivateKey_bio, .-i2d_PrivateKey_bio
	.globl	d2i_PrivateKey_bio
	.type	d2i_PrivateKey_bio, @function
d2i_PrivateKey_bio:
.LFB708:
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
	movq	d2i_AutoPrivateKey@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	EVP_PKEY_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	d2i_PrivateKey_bio, .-d2i_PrivateKey_bio
	.globl	d2i_PrivateKey_ex_bio
	.type	d2i_PrivateKey_ex_bio, @function
d2i_PrivateKey_ex_bio:
.LFB709:
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
	movq	%rcx, -64(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_d2i_read_bio@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L237
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	leaq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	d2i_AutoPrivateKey_ex@PLT
	movq	%rax, -8(%rbp)
	jmp	.L235
.L237:
	nop
.L235:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	d2i_PrivateKey_ex_bio, .-d2i_PrivateKey_ex_bio
	.globl	i2d_PUBKEY_bio
	.type	i2d_PUBKEY_bio, @function
i2d_PUBKEY_bio:
.LFB710:
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
	movq	i2d_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	i2d_PUBKEY_bio, .-i2d_PUBKEY_bio
	.globl	d2i_PUBKEY_ex_bio
	.type	d2i_PUBKEY_ex_bio, @function
d2i_PUBKEY_ex_bio:
.LFB711:
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
	movq	%rcx, -64(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_d2i_read_bio@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L244
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	leaq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	d2i_PUBKEY_ex@PLT
	movq	%rax, -8(%rbp)
	jmp	.L242
.L244:
	nop
.L242:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	d2i_PUBKEY_ex_bio, .-d2i_PUBKEY_ex_bio
	.globl	d2i_PUBKEY_bio
	.type	d2i_PUBKEY_bio, @function
d2i_PUBKEY_bio:
.LFB712:
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
	movq	d2i_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	EVP_PKEY_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	d2i_PUBKEY_bio, .-d2i_PUBKEY_bio
	.section	.rodata
	.align 8
	.type	__func__.9, @object
	.size	__func__.9, 10
__func__.9:
	.string	"X509_sign"
	.align 8
	.type	__func__.8, @object
	.size	__func__.8, 14
__func__.8:
	.string	"X509_sign_ctx"
	.align 8
	.type	__func__.7, @object
	.size	__func__.7, 14
__func__.7:
	.string	"X509_REQ_sign"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 18
__func__.6:
	.string	"X509_REQ_sign_ctx"
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 14
__func__.5:
	.string	"X509_CRL_sign"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 18
__func__.4:
	.string	"X509_CRL_sign_ctx"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 16
__func__.3:
	.string	"X509_digest_sig"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 16
__func__.2:
	.string	"X509_CRL_digest"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 21
__func__.1:
	.string	"d2i_PrivateKey_ex_fp"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 17
__func__.0:
	.string	"d2i_PUBKEY_ex_fp"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

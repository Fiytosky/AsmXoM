	.file	"x_x509a.c"
	.text
	.type	ossl_check_ASN1_OBJECT_type, @function
ossl_check_ASN1_OBJECT_type:
.LFB57:
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
.LFE57:
	.size	ossl_check_ASN1_OBJECT_type, .-ossl_check_ASN1_OBJECT_type
	.type	ossl_check_ASN1_OBJECT_sk_type, @function
ossl_check_ASN1_OBJECT_sk_type:
.LFB59:
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
.LFE59:
	.size	ossl_check_ASN1_OBJECT_sk_type, .-ossl_check_ASN1_OBJECT_sk_type
	.type	ossl_check_ASN1_OBJECT_freefunc_type, @function
ossl_check_ASN1_OBJECT_freefunc_type:
.LFB62:
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
.LFE62:
	.size	ossl_check_ASN1_OBJECT_freefunc_type, .-ossl_check_ASN1_OBJECT_freefunc_type
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
	.section	.rodata
.LC0:
	.string	"trust"
.LC1:
	.string	"reject"
.LC2:
	.string	"alias"
.LC3:
	.string	"keyid"
.LC4:
	.string	"other"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	X509_CERT_AUX_seq_tt, @object
	.size	X509_CERT_AUX_seq_tt, 200
X509_CERT_AUX_seq_tt:
	.quad	5
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_OBJECT_it
	.quad	141
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	ASN1_OBJECT_it
	.quad	1
	.quad	0
	.quad	16
	.quad	.LC2
	.quad	ASN1_UTF8STRING_it
	.quad	1
	.quad	0
	.quad	24
	.quad	.LC3
	.quad	ASN1_OCTET_STRING_it
	.quad	141
	.quad	1
	.quad	32
	.quad	.LC4
	.quad	X509_ALGOR_it
	.text
	.globl	X509_CERT_AUX_it
	.type	X509_CERT_AUX_it, @function
X509_CERT_AUX_it:
.LFB520:
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
.LFE520:
	.size	X509_CERT_AUX_it, .-X509_CERT_AUX_it
	.globl	d2i_X509_CERT_AUX
	.type	d2i_X509_CERT_AUX, @function
d2i_X509_CERT_AUX:
.LFB521:
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
	call	X509_CERT_AUX_it@PLT
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
.LFE521:
	.size	d2i_X509_CERT_AUX, .-d2i_X509_CERT_AUX
	.globl	i2d_X509_CERT_AUX
	.type	i2d_X509_CERT_AUX, @function
i2d_X509_CERT_AUX:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	X509_CERT_AUX_it@PLT
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
.LFE522:
	.size	i2d_X509_CERT_AUX, .-i2d_X509_CERT_AUX
	.globl	X509_CERT_AUX_new
	.type	X509_CERT_AUX_new, @function
X509_CERT_AUX_new:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	X509_CERT_AUX_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	X509_CERT_AUX_new, .-X509_CERT_AUX_new
	.globl	X509_CERT_AUX_free
	.type	X509_CERT_AUX_free, @function
X509_CERT_AUX_free:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_CERT_AUX_it@PLT
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
.LFE524:
	.size	X509_CERT_AUX_free, .-X509_CERT_AUX_free
	.globl	X509_trusted
	.type	X509_trusted, @function
X509_trusted:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	X509_trusted, .-X509_trusted
	.type	aux_get, @function
aux_get:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L23
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	testq	%rax, %rax
	jne	.L25
	call	X509_CERT_AUX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 336(%rdx)
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	testq	%rax, %rax
	jne	.L25
	movl	$0, %eax
	jmp	.L24
.L25:
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	aux_get, .-aux_get
	.globl	X509_alias_set1
	.type	X509_alias_set1, @function
X509_alias_set1:
.LFB527:
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
	cmpq	$0, -32(%rbp)
	jne	.L27
	cmpq	$0, -24(%rbp)
	je	.L28
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L29
.L28:
	movl	$1, %eax
	jmp	.L30
.L29:
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_UTF8STRING_free@PLT
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	$0, 16(%rax)
	movl	$1, %eax
	jmp	.L30
.L27:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	aux_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L31
	movl	$0, %eax
	jmp	.L30
.L31:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L32
	call	ASN1_UTF8STRING_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L32
	movl	$0, %eax
	jmp	.L30
.L32:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	X509_alias_set1, .-X509_alias_set1
	.globl	X509_keyid_set1
	.type	X509_keyid_set1, @function
X509_keyid_set1:
.LFB528:
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
	cmpq	$0, -32(%rbp)
	jne	.L34
	cmpq	$0, -24(%rbp)
	je	.L35
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	testq	%rax, %rax
	je	.L35
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L36
.L35:
	movl	$1, %eax
	jmp	.L37
.L36:
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	$0, 24(%rax)
	movl	$1, %eax
	jmp	.L37
.L34:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	aux_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L38
	movl	$0, %eax
	jmp	.L37
.L38:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L39
	call	ASN1_OCTET_STRING_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L39
	movl	$0, %eax
	jmp	.L37
.L39:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	X509_keyid_set1, .-X509_keyid_set1
	.globl	X509_alias_get0
	.type	X509_alias_get0, @function
X509_alias_get0:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	testq	%rax, %rax
	je	.L41
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L42
.L41:
	movl	$0, %eax
	jmp	.L43
.L42:
	cmpq	$0, -16(%rbp)
	je	.L44
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	16(%rax), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.L44:
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
.L43:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	X509_alias_get0, .-X509_alias_get0
	.globl	X509_keyid_get0
	.type	X509_keyid_get0, @function
X509_keyid_get0:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	testq	%rax, %rax
	je	.L46
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L47
.L46:
	movl	$0, %eax
	jmp	.L48
.L47:
	cmpq	$0, -16(%rbp)
	je	.L49
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	24(%rax), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.L49:
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
.L48:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	X509_keyid_get0, .-X509_keyid_get0
	.globl	X509_add1_trust_object
	.type	X509_add1_trust_object, @function
X509_add1_trust_object:
.LFB531:
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
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L51
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_dup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L51
	movl	$0, %eax
	jmp	.L52
.L51:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	aux_get
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L57
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L55
	call	OPENSSL_sk_new_null@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L58
.L55:
	cmpq	$0, -24(%rbp)
	je	.L56
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_OBJECT_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_OBJECT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L59
.L56:
	movl	$1, %eax
	jmp	.L52
.L57:
	nop
	jmp	.L54
.L58:
	nop
	jmp	.L54
.L59:
	nop
.L54:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movl	$0, %eax
.L52:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	X509_add1_trust_object, .-X509_add1_trust_object
	.globl	X509_add1_reject_object
	.type	X509_add1_reject_object, @function
X509_add1_reject_object:
.LFB532:
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
	movl	$0, -20(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_dup@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L61
	movl	$0, %eax
	jmp	.L62
.L61:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	aux_get
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L67
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L65
	call	OPENSSL_sk_new_null@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L68
.L65:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_OBJECT_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_OBJECT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jle	.L69
	movl	$1, -20(%rbp)
	jmp	.L64
.L67:
	nop
	jmp	.L64
.L68:
	nop
	jmp	.L64
.L69:
	nop
.L64:
	cmpl	$0, -20(%rbp)
	jne	.L66
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
.L66:
	movl	-20(%rbp), %eax
.L62:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	X509_add1_reject_object, .-X509_add1_reject_object
	.globl	X509_trust_clear
	.type	X509_trust_clear, @function
X509_trust_clear:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	testq	%rax, %rax
	je	.L72
	movq	ASN1_OBJECT_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_OBJECT_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_OBJECT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	$0, (%rax)
.L72:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	X509_trust_clear, .-X509_trust_clear
	.globl	X509_reject_clear
	.type	X509_reject_clear, @function
X509_reject_clear:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movq	ASN1_OBJECT_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_OBJECT_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_OBJECT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	$0, 8(%rax)
.L75:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	X509_reject_clear, .-X509_reject_clear
	.globl	X509_get0_trust_objects
	.type	X509_get0_trust_objects, @function
X509_get0_trust_objects:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	testq	%rax, %rax
	je	.L77
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	(%rax), %rax
	jmp	.L78
.L77:
	movl	$0, %eax
.L78:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	X509_get0_trust_objects, .-X509_get0_trust_objects
	.globl	X509_get0_reject_objects
	.type	X509_get0_reject_objects, @function
X509_get0_reject_objects:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	testq	%rax, %rax
	je	.L80
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	8(%rax), %rax
	jmp	.L81
.L80:
	movl	$0, %eax
.L81:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	X509_get0_reject_objects, .-X509_get0_reject_objects
	.section	.rodata
.LC5:
	.string	"X509_CERT_AUX"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	1
	.zero	7
	.quad	16
	.quad	X509_CERT_AUX_seq_tt
	.quad	5
	.quad	0
	.quad	40
	.quad	.LC5
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

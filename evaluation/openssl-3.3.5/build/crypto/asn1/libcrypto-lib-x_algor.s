	.file	"x_algor.c"
	.text
	.section	.rodata
.LC0:
	.string	"algorithm"
.LC1:
	.string	"parameter"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	X509_ALGOR_seq_tt, @object
	.size	X509_ALGOR_seq_tt, 80
X509_ALGOR_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_OBJECT_it
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	ASN1_ANY_it
	.text
	.globl	X509_ALGOR_it
	.type	X509_ALGOR_it, @function
X509_ALGOR_it:
.LFB551:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.2(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE551:
	.size	X509_ALGOR_it, .-X509_ALGOR_it
	.section	.rodata
.LC2:
	.string	"algorithms"
	.section	.data.rel.ro
	.align 32
	.type	X509_ALGORS_item_tt, @object
	.size	X509_ALGORS_item_tt, 40
X509_ALGORS_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	X509_ALGOR_it
	.text
	.globl	X509_ALGORS_it
	.type	X509_ALGORS_it, @function
X509_ALGORS_it:
.LFB552:
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
.LFE552:
	.size	X509_ALGORS_it, .-X509_ALGORS_it
	.globl	d2i_X509_ALGOR
	.type	d2i_X509_ALGOR, @function
d2i_X509_ALGOR:
.LFB553:
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
	call	X509_ALGOR_it@PLT
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
.LFE553:
	.size	d2i_X509_ALGOR, .-d2i_X509_ALGOR
	.globl	i2d_X509_ALGOR
	.type	i2d_X509_ALGOR, @function
i2d_X509_ALGOR:
.LFB554:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	X509_ALGOR_it@PLT
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
.LFE554:
	.size	i2d_X509_ALGOR, .-i2d_X509_ALGOR
	.globl	X509_ALGOR_new
	.type	X509_ALGOR_new, @function
X509_ALGOR_new:
.LFB555:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	X509_ALGOR_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	X509_ALGOR_new, .-X509_ALGOR_new
	.globl	X509_ALGOR_free
	.type	X509_ALGOR_free, @function
X509_ALGOR_free:
.LFB556:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_ALGOR_it@PLT
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
.LFE556:
	.size	X509_ALGOR_free, .-X509_ALGOR_free
	.globl	d2i_X509_ALGORS
	.type	d2i_X509_ALGORS, @function
d2i_X509_ALGORS:
.LFB557:
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
	call	X509_ALGORS_it@PLT
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
.LFE557:
	.size	d2i_X509_ALGORS, .-d2i_X509_ALGORS
	.globl	i2d_X509_ALGORS
	.type	i2d_X509_ALGORS, @function
i2d_X509_ALGORS:
.LFB558:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	X509_ALGORS_it@PLT
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
.LFE558:
	.size	i2d_X509_ALGORS, .-i2d_X509_ALGORS
	.globl	X509_ALGOR_dup
	.type	X509_ALGOR_dup, @function
X509_ALGOR_dup:
.LFB559:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_ALGOR_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE559:
	.size	X509_ALGOR_dup, .-X509_ALGOR_dup
	.globl	X509_ALGOR_set0
	.type	X509_ALGOR_set0, @function
X509_ALGOR_set0:
.LFB560:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	cmpl	$-1, -20(%rbp)
	je	.L21
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L21
	call	ASN1_TYPE_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L21
	movl	$0, %eax
	jmp	.L20
.L21:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpl	$0, -20(%rbp)
	jne	.L22
	movl	$1, %eax
	jmp	.L20
.L22:
	cmpl	$-1, -20(%rbp)
	jne	.L23
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L24
.L23:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ASN1_TYPE_set@PLT
.L24:
	movl	$1, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	X509_ALGOR_set0, .-X509_ALGOR_set0
	.globl	ossl_X509_ALGOR_from_nid
	.type	ossl_X509_ALGOR_from_nid, @function
ossl_X509_ALGOR_from_nid:
.LFB561:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	call	X509_ALGOR_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L31
	movq	-32(%rbp), %rcx
	movl	-24(%rbp), %edx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	testl	%eax, %eax
	je	.L30
	movq	-16(%rbp), %rax
	jmp	.L27
.L30:
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L29
.L31:
	nop
.L29:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movl	$0, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE561:
	.size	ossl_X509_ALGOR_from_nid, .-ossl_X509_ALGOR_from_nid
	.globl	X509_ALGOR_get0
	.type	X509_ALGOR_get0, @function
X509_ALGOR_get0:
.LFB562:
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
	cmpq	$0, -8(%rbp)
	je	.L33
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L33:
	cmpq	$0, -16(%rbp)
	je	.L32
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L35
	movq	-16(%rbp), %rax
	movl	$-1, (%rax)
	jmp	.L32
.L35:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	cmpq	$0, -24(%rbp)
	je	.L32
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L32:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	X509_ALGOR_get0, .-X509_ALGOR_get0
	.globl	X509_ALGOR_set_md
	.type	X509_ALGOR_set_md, @function
X509_ALGOR_set_md:
.LFB563:
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
	movq	16(%rax), %rax
	andl	$8, %eax
	testq	%rax, %rax
	je	.L37
	movl	$-1, -4(%rbp)
	jmp	.L38
.L37:
	movl	$5, -4(%rbp)
.L38:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	X509_ALGOR_set_md, .-X509_ALGOR_set_md
	.globl	X509_ALGOR_cmp
	.type	X509_ALGOR_cmp, @function
X509_ALGOR_cmp:
.LFB564:
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
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L40
	movl	-4(%rbp), %eax
	jmp	.L41
.L40:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L42
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L42
	movl	$0, %eax
	jmp	.L41
.L42:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TYPE_cmp@PLT
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	X509_ALGOR_cmp, .-X509_ALGOR_cmp
	.globl	X509_ALGOR_copy
	.type	X509_ALGOR_copy, @function
X509_ALGOR_copy:
.LFB565:
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
	je	.L44
	cmpq	$0, -8(%rbp)
	jne	.L45
.L44:
	movl	$0, %eax
	jmp	.L46
.L45:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L47
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
.L47:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
.L48:
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L49
	movl	$0, %eax
	jmp	.L46
.L49:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L50
	call	ASN1_TYPE_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L51
	movl	$0, %eax
	jmp	.L46
.L51:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ASN1_TYPE_set1@PLT
	testl	%eax, %eax
	jne	.L50
	movl	$0, %eax
	jmp	.L46
.L50:
	movl	$1, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	X509_ALGOR_copy, .-X509_ALGOR_copy
	.section	.rodata
.LC3:
	.string	"SHA1"
	.text
	.globl	ossl_x509_algor_new_from_md
	.type	ossl_x509_algor_new_from_md, @function
ossl_x509_algor_new_from_md:
.LFB566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L53
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	je	.L54
.L53:
	movl	$1, %eax
	jmp	.L55
.L54:
	call	X509_ALGOR_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L56
	movl	$0, %eax
	jmp	.L55
.L56:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_ALGOR_set_md@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	ossl_x509_algor_new_from_md, .-ossl_x509_algor_new_from_md
	.section	.rodata
.LC4:
	.string	"../crypto/asn1/x_algor.c"
	.text
	.globl	ossl_x509_algor_get_md
	.type	ossl_x509_algor_get_md, @function
ossl_x509_algor_get_md:
.LFB567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L58
	call	EVP_sha1@PLT
	jmp	.L59
.L58:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L60
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$165, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$229, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L60:
	movq	-8(%rbp), %rax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	ossl_x509_algor_get_md, .-ossl_x509_algor_get_md
	.globl	ossl_x509_algor_mgf1_decode
	.type	ossl_x509_algor_mgf1_decode, @function
ossl_x509_algor_mgf1_decode:
.LFB568:
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
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$911, %eax
	je	.L62
	movl	$0, %eax
	jmp	.L63
.L62:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	call	X509_ALGOR_it@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ASN1_TYPE_unpack_sequence@PLT
.L63:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	ossl_x509_algor_mgf1_decode, .-ossl_x509_algor_mgf1_decode
	.globl	ossl_x509_algor_md_to_mgf1
	.type	ossl_x509_algor_md_to_mgf1, @function
ossl_x509_algor_md_to_mgf1:
.LFB569:
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
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -32(%rbp)
	je	.L65
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	je	.L66
.L65:
	movl	$1, %eax
	jmp	.L72
.L66:
	movq	-32(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_algor_new_from_md@PLT
	testl	%eax, %eax
	je	.L73
	call	X509_ALGOR_it@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	leaq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_pack@PLT
	testq	%rax, %rax
	je	.L74
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movl	$16, %esi
	movl	$911, %edi
	call	ossl_X509_ALGOR_from_nid@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movq	$0, -16(%rbp)
	jmp	.L69
.L73:
	nop
	jmp	.L69
.L74:
	nop
	jmp	.L69
.L75:
	nop
.L69:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	ossl_x509_algor_md_to_mgf1, .-ossl_x509_algor_md_to_mgf1
	.section	.rodata
.LC5:
	.string	"X509_ALGOR"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	1
	.zero	7
	.quad	16
	.quad	X509_ALGOR_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC5
	.section	.rodata
.LC6:
	.string	"X509_ALGORS"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	0
	.zero	7
	.quad	-1
	.quad	X509_ALGORS_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC6
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"ossl_x509_algor_get_md"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

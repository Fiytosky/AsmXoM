	.file	"cms_io.c"
	.text
	.section	.rodata
.LC0:
	.string	"../crypto/cms/cms_io.c"
	.text
	.globl	CMS_stream
	.type	CMS_stream, @function
CMS_stream:
.LFB628:
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
	call	CMS_get0_content@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L4
	call	ASN1_OCTET_STRING_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
.L4:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L5
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	orq	$16, %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	andq	$-33, %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L3
.L5:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$33, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524334, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	CMS_stream, .-CMS_stream
	.globl	d2i_CMS_bio
	.type	d2i_CMS_bio, @function
d2i_CMS_bio:
.LFB629:
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
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L7
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L8
.L7:
	movl	$0, %eax
.L8:
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, %r12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rax, %rbx
	call	CMS_ContentInfo_it@PLT
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rsi
	call	ASN1_item_d2i_bio_ex@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L9
	call	ERR_set_mark@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_resolve_libctx@PLT
	call	ERR_pop_to_mark@PLT
.L9:
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	d2i_CMS_bio, .-d2i_CMS_bio
	.globl	i2d_CMS_bio
	.type	i2d_CMS_bio, @function
i2d_CMS_bio:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	CMS_ContentInfo_it@PLT
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
.LFE630:
	.size	i2d_CMS_bio, .-i2d_CMS_bio
	.section	.rodata
.LC1:
	.string	"CMS"
	.text
	.globl	PEM_read_bio_CMS
	.type	PEM_read_bio_CMS, @function
PEM_read_bio_CMS:
.LFB631:
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
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	d2i_CMS_ContentInfo@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	PEM_read_bio_CMS, .-PEM_read_bio_CMS
	.globl	PEM_read_CMS
	.type	PEM_read_CMS, @function
PEM_read_CMS:
.LFB632:
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
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	d2i_CMS_ContentInfo@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	PEM_read_CMS, .-PEM_read_CMS
	.globl	PEM_write_bio_CMS
	.type	PEM_write_bio_CMS, @function
PEM_write_bio_CMS:
.LFB633:
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
	leaq	.LC1(%rip), %rsi
	movq	i2d_CMS_ContentInfo@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	PEM_write_bio_CMS, .-PEM_write_bio_CMS
	.globl	PEM_write_CMS
	.type	PEM_write_CMS, @function
PEM_write_CMS:
.LFB634:
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
	leaq	.LC1(%rip), %rsi
	movq	i2d_CMS_ContentInfo@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	PEM_write_CMS, .-PEM_write_CMS
	.globl	BIO_new_CMS
	.type	BIO_new_CMS, @function
BIO_new_CMS:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	CMS_ContentInfo_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_new_NDEF@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	BIO_new_CMS, .-BIO_new_CMS
	.globl	i2d_CMS_bio_stream
	.type	i2d_CMS_bio_stream, @function
i2d_CMS_bio_stream:
.LFB636:
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
	call	CMS_ContentInfo_it@PLT
	movq	%rax, %rdi
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	i2d_ASN1_bio_stream@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	i2d_CMS_bio_stream, .-i2d_CMS_bio_stream
	.globl	PEM_write_bio_CMS_stream
	.type	PEM_write_bio_CMS_stream, @function
PEM_write_bio_CMS_stream:
.LFB637:
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
	call	CMS_ContentInfo_it@PLT
	movq	%rax, %rdi
	leaq	.LC1(%rip), %r8
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	PEM_write_bio_ASN1_stream@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	PEM_write_bio_CMS_stream, .-PEM_write_bio_CMS_stream
	.globl	SMIME_write_CMS
	.type	SMIME_write_CMS, @function
SMIME_write_CMS:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -28(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_eContentType@PLT
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, -40(%rbp)
	cmpl	$22, -28(%rbp)
	jne	.L28
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L29
.L28:
	movq	$0, -24(%rbp)
.L29:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, %r12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rax, %rbx
	call	CMS_ContentInfo_it@PLT
	movq	%rax, %rdi
	movl	-32(%rbp), %r9d
	movl	-28(%rbp), %r8d
	movl	-76(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	pushq	%r12
	pushq	%rbx
	pushq	%rdi
	pushq	-24(%rbp)
	movq	%rax, %rdi
	call	SMIME_write_ASN1_ex@PLT
	addq	$32, %rsp
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	SMIME_write_CMS, .-SMIME_write_CMS
	.globl	SMIME_read_CMS_ex
	.type	SMIME_read_CMS_ex, @function
SMIME_read_CMS_ex:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L32
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L33
.L32:
	movl	$0, %eax
.L33:
	movq	%rax, %rdi
	call	ossl_cms_get0_cmsctx@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rax, %r12
	call	CMS_ContentInfo_it@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%r12, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SMIME_read_ASN1_ex@PLT
	addq	$16, %rsp
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L34
	call	ERR_set_mark@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_resolve_libctx@PLT
	call	ERR_pop_to_mark@PLT
.L34:
	movq	-32(%rbp), %rax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	SMIME_read_CMS_ex, .-SMIME_read_CMS_ex
	.globl	SMIME_read_CMS
	.type	SMIME_read_CMS, @function
SMIME_read_CMS:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SMIME_read_CMS_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	SMIME_read_CMS, .-SMIME_read_CMS
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 11
__func__.0:
	.string	"CMS_stream"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

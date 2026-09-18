	.file	"a_d2i_fp.c"
	.text
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB105:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L2
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
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
	.string	"../crypto/asn1/a_d2i_fp.c"
	.text
	.globl	ASN1_d2i_fp
	.type	ASN1_d2i_fp, @function
ASN1_d2i_fp:
.LFB427:
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
	jne	.L9
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$28, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L10
.L9:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_d2i_bio@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE427:
	.size	ASN1_d2i_fp, .-ASN1_d2i_fp
	.globl	ASN1_d2i_bio
	.type	ASN1_d2i_bio, @function
ASN1_d2i_bio:
.LFB428:
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
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_d2i_read_bio@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L15
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-32(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -8(%rbp)
	jmp	.L13
.L15:
	nop
.L13:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE428:
	.size	ASN1_d2i_bio, .-ASN1_d2i_bio
	.globl	ASN1_item_d2i_bio_ex
	.type	ASN1_item_d2i_bio_ex, @function
ASN1_item_d2i_bio_ex:
.LFB429:
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
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L17
	movl	$0, %eax
	jmp	.L21
.L17:
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_d2i_read_bio@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L22
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %r8
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rcx
	leaq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ASN1_item_d2i_ex@PLT
	movq	%rax, -8(%rbp)
	jmp	.L20
.L22:
	nop
.L20:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movq	-8(%rbp), %rax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	ASN1_item_d2i_bio_ex, .-ASN1_item_d2i_bio_ex
	.globl	ASN1_item_d2i_bio
	.type	ASN1_item_d2i_bio, @function
ASN1_item_d2i_bio:
.LFB430:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_item_d2i_bio_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE430:
	.size	ASN1_item_d2i_bio, .-ASN1_item_d2i_bio
	.globl	ASN1_item_d2i_fp_ex
	.type	ASN1_item_d2i_fp_ex, @function
ASN1_item_d2i_fp_ex:
.LFB431:
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
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L26
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$92, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ASN1_item_d2i_bio_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE431:
	.size	ASN1_item_d2i_fp_ex, .-ASN1_item_d2i_fp_ex
	.globl	ASN1_item_d2i_fp
	.type	ASN1_item_d2i_fp, @function
ASN1_item_d2i_fp:
.LFB432:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_item_d2i_fp_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE432:
	.size	ASN1_item_d2i_fp, .-ASN1_item_d2i_fp
	.globl	asn1_d2i_read_bio
	.type	asn1_d2i_read_bio, @function
asn1_d2i_read_bio:
.LFB433:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	$8, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	call	BUF_MEM_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L31
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$126, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L61
.L31:
	call	ERR_set_mark@PLT
.L59:
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L33
	movq	-64(%rbp), %rax
	subq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-32(%rbp), %rax
	jb	.L34
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow_clean@PLT
	testq	%rax, %rax
	jne	.L35
.L34:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$137, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L35:
	movq	-8(%rbp), %rax
	movl	%eax, %esi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-136(%rbp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jns	.L37
	cmpq	$0, -64(%rbp)
	jne	.L37
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$142, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$142, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L37:
	cmpl	$0, -68(%rbp)
	jle	.L33
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-32(%rbp), %rax
	jnb	.L38
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$147, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$155, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L38:
	movl	-68(%rbp), %eax
	cltq
	addq	%rax, -32(%rbp)
	movl	-68(%rbp), %eax
	cltq
	cmpq	-8(%rbp), %rax
	jb	.L62
.L33:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L63
	movq	-64(%rbp), %rdi
	leaq	-120(%rbp), %rcx
	leaq	-116(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	leaq	-104(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ASN1_get_object@PLT
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L41
	call	ERR_peek_last_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cltq
	movq	%rax, -96(%rbp)
	cmpq	$155, -96(%rbp)
	jne	.L64
	call	ERR_pop_to_mark@PLT
.L41:
	movq	-104(%rbp), %rax
	subq	-80(%rbp), %rax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	cltq
	addq	%rax, -24(%rbp)
	movl	-84(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L43
	cmpl	$-1, -12(%rbp)
	jne	.L44
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$178, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L44:
	addl	$1, -12(%rbp)
	movq	$8, -8(%rbp)
	jmp	.L59
.L43:
	cmpl	$0, -12(%rbp)
	je	.L45
	movq	-112(%rbp), %rax
	testq	%rax, %rax
	jne	.L45
	movl	-116(%rbp), %eax
	testl	%eax, %eax
	jne	.L45
	subl	$1, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L65
	movq	$8, -8(%rbp)
	jmp	.L39
.L45:
	movq	-112(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L48
	movq	$16384, -40(%rbp)
	movq	-24(%rbp), %rax
	subq	-32(%rbp), %rax
	addq	%rax, -8(%rbp)
	cmpq	$2147483647, -8(%rbp)
	ja	.L49
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-32(%rbp), %rax
	jnb	.L51
.L49:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$199, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$155, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L56:
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow_clean@PLT
	testq	%rax, %rax
	jne	.L52
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$212, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L52:
	movq	-48(%rbp), %rax
	subq	%rax, -8(%rbp)
	jmp	.L53
.L55:
	movq	-48(%rbp), %rax
	movl	%eax, %esi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-136(%rbp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jg	.L54
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$219, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$142, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L54:
	movl	-68(%rbp), %eax
	cltq
	addq	%rax, -32(%rbp)
	movl	-68(%rbp), %eax
	cltq
	subq	%rax, -48(%rbp)
.L53:
	cmpq	$0, -48(%rbp)
	jne	.L55
	cmpq	$1073741822, -40(%rbp)
	ja	.L51
	salq	-40(%rbp)
.L51:
	cmpq	$0, -8(%rbp)
	jne	.L56
.L48:
	movq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-24(%rbp), %rax
	jnb	.L57
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$234, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$155, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L57:
	movq	-112(%rbp), %rax
	addq	%rax, -24(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L66
	movq	$8, -8(%rbp)
	jmp	.L59
.L62:
	nop
.L39:
	jmp	.L59
.L65:
	nop
	jmp	.L47
.L66:
	nop
.L47:
	cmpq	$2147483647, -24(%rbp)
	jbe	.L60
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$246, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$155, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L60:
	movq	-144(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	jmp	.L61
.L63:
	nop
	jmp	.L36
.L64:
	nop
.L36:
	call	ERR_clear_last_mark@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movl	$-1, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	asn1_d2i_read_bio, .-asn1_d2i_read_bio
	.section	.rodata
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 12
__func__.2:
	.string	"ASN1_d2i_fp"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 20
__func__.1:
	.string	"ASN1_item_d2i_fp_ex"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"asn1_d2i_read_bio"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

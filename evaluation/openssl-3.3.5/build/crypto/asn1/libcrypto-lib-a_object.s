	.file	"a_object.c"
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
	.section	.rodata
.LC0:
	.string	"../crypto/asn1/a_object.c"
	.text
	.globl	i2d_ASN1_OBJECT
	.type	i2d_ASN1_OBJECT, @function
i2d_ASN1_OBJECT:
.LFB502:
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
	cmpq	$0, -40(%rbp)
	je	.L6
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L7
.L6:
	movl	$0, %eax
	jmp	.L15
.L7:
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	movl	$6, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	ASN1_object_size@PLT
	movl	%eax, -12(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L9
	cmpl	$-1, -12(%rbp)
	jne	.L10
.L9:
	movl	-12(%rbp), %eax
	jmp	.L15
.L10:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L11
	movl	-12(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$34, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L12
	movl	$0, %eax
	jmp	.L15
.L11:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L12:
	movq	-40(%rbp), %rax
	movl	20(%rax), %edx
	leaq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$6, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_put_object@PLT
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	cmpq	$0, -8(%rbp)
	jne	.L13
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	addq	%rdx, %rax
	jmp	.L14
.L13:
	movq	-8(%rbp), %rax
.L14:
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	-12(%rbp), %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	i2d_ASN1_OBJECT, .-i2d_ASN1_OBJECT
	.globl	a2d_ASN1_OBJECT
	.type	a2d_ASN1_OBJECT, @function
a2d_ASN1_OBJECT:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movq	%rdx, -120(%rbp)
	movl	%ecx, -112(%rbp)
	movl	$0, -8(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$24, -28(%rbp)
	movq	$0, -56(%rbp)
	cmpl	$0, -112(%rbp)
	jne	.L17
	movl	$0, %eax
	jmp	.L56
.L17:
	cmpl	$-1, -112(%rbp)
	jne	.L19
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -112(%rbp)
.L19:
	movq	-120(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -12(%rbp)
	subl	$1, -112(%rbp)
	cmpl	$47, -12(%rbp)
	jle	.L20
	cmpl	$50, -12(%rbp)
	jg	.L20
	movl	-12(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -112(%rbp)
	jle	.L21
	jmp	.L57
.L20:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$71, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L21:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$76, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$138, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L57:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -12(%rbp)
	subl	$1, -112(%rbp)
.L53:
	cmpl	$0, -112(%rbp)
	jle	.L59
	cmpl	$46, -12(%rbp)
	je	.L26
	cmpl	$32, -12(%rbp)
	je	.L26
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$85, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$131, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L26:
	movq	$0, -48(%rbp)
	movl	$0, -16(%rbp)
.L36:
	cmpl	$0, -112(%rbp)
	jle	.L60
	subl	$1, -112(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$32, -12(%rbp)
	je	.L28
	cmpl	$46, -12(%rbp)
	je	.L28
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	ossl_isdigit@PLT
	testl	%eax, %eax
	jne	.L29
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$98, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L29:
	cmpl	$0, -16(%rbp)
	jne	.L30
	movabsq	$1844674407370955152, %rax
	cmpq	-48(%rbp), %rax
	jnb	.L30
	movl	$1, -16(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L31
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
.L31:
	cmpq	$0, -56(%rbp)
	je	.L61
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L61
.L30:
	cmpl	$0, -16(%rbp)
	je	.L33
	movq	-56(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	BN_mul_word@PLT
	testl	%eax, %eax
	je	.L62
	movl	-12(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	jne	.L36
	jmp	.L62
.L33:
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	subl	$48, %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	jmp	.L36
.L60:
	nop
.L28:
	cmpl	$0, -8(%rbp)
	jne	.L37
	cmpl	$1, -64(%rbp)
	jg	.L38
	cmpq	$39, -48(%rbp)
	jbe	.L38
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$117, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L38:
	cmpl	$0, -16(%rbp)
	je	.L39
	movl	-64(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	jne	.L37
	jmp	.L23
.L39:
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, -48(%rbp)
.L37:
	movl	$0, -4(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L40
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	addl	$6, %eax
	movslq	%eax, %rdx
	imulq	$-1840700269, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	%edx, %ecx
	sarl	$2, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L43
	leaq	-96(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	je	.L42
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$133, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L42:
	movl	-60(%rbp), %eax
	addl	$32, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$135, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L63
	jmp	.L43
.L45:
	movq	-56(%rbp), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	BN_div_word@PLT
	movq	%rax, -72(%rbp)
	cmpq	$-1, -72(%rbp)
	je	.L64
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	-72(%rbp), %rdx
	movb	%dl, (%rax)
.L43:
	movl	-60(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -60(%rbp)
	testl	%eax, %eax
	jne	.L45
	jmp	.L46
.L40:
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	andl	$127, %ecx
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrq	$7, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L65
	jmp	.L40
.L65:
	nop
.L46:
	cmpq	$0, -104(%rbp)
	je	.L48
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -108(%rbp)
	jge	.L50
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$157, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L51:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	orl	$-128, %eax
	movl	%eax, %ecx
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L50:
	subl	$1, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L51
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L53
.L48:
	movl	-4(%rbp), %eax
	addl	%eax, -8(%rbp)
	jmp	.L53
.L59:
	nop
	leaq	-96(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	je	.L54
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$167, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L54:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-8(%rbp), %eax
	jmp	.L56
.L61:
	nop
	jmp	.L23
.L62:
	nop
	jmp	.L23
.L63:
	nop
	jmp	.L23
.L64:
	nop
.L23:
	leaq	-96(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	je	.L55
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$172, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L55:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	$0, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	a2d_ASN1_OBJECT, .-a2d_ASN1_OBJECT
	.globl	i2t_ASN1_OBJECT
	.type	i2t_ASN1_OBJECT, @function
i2t_ASN1_OBJECT:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	i2t_ASN1_OBJECT, .-i2t_ASN1_OBJECT
	.section	.rodata
.LC1:
	.string	"NULL"
.LC2:
	.string	"<INVALID>"
	.text
	.globl	i2a_ASN1_OBJECT
	.type	i2a_ASN1_OBJECT, @function
i2a_ASN1_OBJECT:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L69
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L70
.L69:
	leaq	.LC1(%rip), %rcx
	movq	-104(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	jmp	.L77
.L70:
	movq	-112(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	i2t_ASN1_OBJECT@PLT
	movl	%eax, -12(%rbp)
	cmpl	$79, -12(%rbp)
	jle	.L72
	cmpl	$2147483647, -12(%rbp)
	jne	.L73
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$192, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$231, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L77
.L73:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$195, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L74
	movl	$-1, %eax
	jmp	.L77
.L74:
	movl	-12(%rbp), %eax
	leal	1(%rax), %ecx
	movq	-112(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	i2t_ASN1_OBJECT@PLT
.L72:
	cmpl	$0, -12(%rbp)
	jg	.L75
	leaq	.LC2(%rip), %rcx
	movq	-104(%rbp), %rax
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -12(%rbp)
	movq	-112(%rbp), %rax
	movl	20(%rax), %edx
	movq	-112(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_dump@PLT
	addl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	jmp	.L77
.L75:
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	leaq	-96(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	je	.L76
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$206, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L76:
	movl	-12(%rbp), %eax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	i2a_ASN1_OBJECT, .-i2a_ASN1_OBJECT
	.globl	d2i_ASN1_OBJECT
	.type	d2i_ASN1_OBJECT, @function
d2i_ASN1_OBJECT:
.LFB506:
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
	movq	$0, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	leaq	-44(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	leaq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ASN1_get_object@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L79
	movl	$102, -4(%rbp)
	jmp	.L80
.L79:
	movl	-44(%rbp), %eax
	cmpl	$6, %eax
	je	.L81
	movl	$116, -4(%rbp)
	jmp	.L80
.L81:
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_c2i_ASN1_OBJECT@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L82
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
.L82:
	movq	-16(%rbp), %rax
	jmp	.L84
.L80:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$234, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	d2i_ASN1_OBJECT, .-d2i_ASN1_OBJECT
	.globl	ossl_c2i_ASN1_OBJECT
	.type	ossl_c2i_ASN1_OBJECT, @function
ossl_c2i_ASN1_OBJECT:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -104(%rbp)
	jle	.L86
	cmpq	$2147483647, -104(%rbp)
	jg	.L86
	cmpq	$0, -96(%rbp)
	je	.L86
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L86
	movq	-104(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jns	.L87
.L86:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$253, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$216, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L107
.L87:
	movq	-104(%rbp), %rax
	movl	%eax, -32(%rbp)
	movl	$0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	$0, -48(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L89
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L90
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-88(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L90:
	movq	-96(%rbp), %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L107
.L89:
	movl	$0, -28(%rbp)
	jmp	.L91
.L94:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-128, %al
	jne	.L92
	cmpl	$0, -28(%rbp)
	je	.L93
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	js	.L92
.L93:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$283, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$216, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L107
.L92:
	addl	$1, -28(%rbp)
	addq	$1, -16(%rbp)
.L91:
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L94
	cmpq	$0, -88(%rbp)
	je	.L95
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L95
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	32(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L96
.L95:
	call	ASN1_OBJECT_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L98
	movl	$0, %eax
	jmp	.L107
.L96:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L98:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	cmpq	$0, -24(%rbp)
	je	.L99
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jle	.L100
.L99:
	movq	-8(%rbp), %rax
	movl	$0, 20(%rax)
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$303, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-32(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$304, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L109
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 32(%rax)
.L100:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L103
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$312, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$313, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	andl	$-5, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 32(%rax)
.L103:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 20(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movl	-32(%rbp), %eax
	cltq
	addq	%rax, -16(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L104
	movq	-88(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L104:
	movq	-96(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L107
.L109:
	nop
.L102:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$329, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-28(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpq	$0, -88(%rbp)
	je	.L105
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	je	.L106
.L105:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
.L106:
	movl	$0, %eax
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	ossl_c2i_ASN1_OBJECT, .-ossl_c2i_ASN1_OBJECT
	.globl	ASN1_OBJECT_new
	.type	ASN1_OBJECT_new, @function
ASN1_OBJECT_new:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$339, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L111
	movl	$0, %eax
	jmp	.L112
.L111:
	movq	-8(%rbp), %rax
	movl	$1, 32(%rax)
	movq	-8(%rbp), %rax
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	ASN1_OBJECT_new, .-ASN1_OBJECT_new
	.globl	ASN1_OBJECT_free
	.type	ASN1_OBJECT_free, @function
ASN1_OBJECT_free:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L118
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L116
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$356, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$357, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L116:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L117
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$362, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 20(%rax)
.L117:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L113
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$367, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L113
.L118:
	nop
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	ASN1_OBJECT_free, .-ASN1_OBJECT_free
	.globl	ASN1_OBJECT_create
	.type	ASN1_OBJECT_create, @function
ASN1_OBJECT_create:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -56(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$13, -16(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	ASN1_OBJECT_create, .-ASN1_OBJECT_create
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 16
__func__.3:
	.string	"a2d_ASN1_OBJECT"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 16
__func__.2:
	.string	"i2a_ASN1_OBJECT"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"d2i_ASN1_OBJECT"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"ossl_c2i_ASN1_OBJECT"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

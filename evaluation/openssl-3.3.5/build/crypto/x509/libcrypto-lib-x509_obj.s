	.file	"x509_obj.c"
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
	.type	ossl_check_const_X509_NAME_ENTRY_sk_type, @function
ossl_check_const_X509_NAME_ENTRY_sk_type:
.LFB427:
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
.LFE427:
	.size	ossl_check_const_X509_NAME_ENTRY_sk_type, .-ossl_check_const_X509_NAME_ENTRY_sk_type
	.section	.rodata
.LC0:
	.string	"../crypto/x509/x509_obj.c"
.LC1:
	.string	"NO X509_NAME"
	.text
	.globl	X509_NAME_oneline
	.type	X509_NAME_oneline, @function
X509_NAME_oneline:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movl	%edx, -212(%rbp)
	movl	$-1, -20(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.L8
	call	BUF_MEM_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L56
	movq	-48(%rbp), %rax
	movl	$200, %esi
	movq	%rax, %rdi
	call	BUF_MEM_grow@PLT
	testq	%rax, %rax
	je	.L57
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movb	$0, (%rax)
	movl	$200, -212(%rbp)
	jmp	.L12
.L8:
	cmpl	$0, -212(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L55
.L12:
	cmpq	$0, -200(%rbp)
	jne	.L14
	cmpq	$0, -48(%rbp)
	je	.L15
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -208(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$55, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L15:
	movl	-212(%rbp), %eax
	movslq	%eax, %rdx
	leaq	.LC1(%rip), %rcx
	movq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movl	-212(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-208(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-208(%rbp), %rax
	jmp	.L55
.L14:
	subl	$1, -212(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L16
.L51:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L17
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L18
.L17:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-192(%rbp), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	i2t_ASN1_OBJECT@PLT
	leaq	-192(%rbp), %rax
	movq	%rax, -32(%rbp)
.L18:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	4(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -72(%rbp)
	cmpl	$1048576, -72(%rbp)
	jle	.L19
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$76, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L20
.L19:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpl	$27, -68(%rbp)
	jne	.L21
	movl	-72(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L21
	movl	$0, -100(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L22
.L24:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L23
	movl	-16(%rbp), %eax
	andl	$3, %eax
	cltq
	movl	$1, -112(%rbp,%rax,4)
.L23:
	addl	$1, -16(%rbp)
.L22:
	movl	-16(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jl	.L24
	movl	-112(%rbp), %edx
	movl	-108(%rbp), %eax
	orl	%eax, %edx
	movl	-104(%rbp), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L25
	movl	$1, -100(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	jmp	.L27
.L25:
	movl	$0, -104(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	$1, -100(%rbp)
	jmp	.L27
.L21:
	movl	$1, -100(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
.L27:
	movl	$0, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L28
.L34:
	movl	-16(%rbp), %eax
	andl	$3, %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L58
	addl	$1, -12(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L31
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	jne	.L32
.L31:
	addl	$1, -12(%rbp)
	jmp	.L30
.L32:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$31, %al
	jbe	.L33
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jbe	.L30
.L33:
	addl	$3, -12(%rbp)
	jmp	.L30
.L58:
	nop
.L30:
	addl	$1, -16(%rbp)
.L28:
	movl	-16(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jl	.L34
	movl	-8(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-64(%rbp), %eax
	leal	2(%rax), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -8(%rbp)
	cmpl	$1048576, -8(%rbp)
	jle	.L35
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$122, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L20
.L35:
	cmpq	$0, -48(%rbp)
	je	.L36
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow@PLT
	testq	%rax, %rax
	je	.L59
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	jmp	.L38
.L36:
	movl	-8(%rbp), %eax
	cmpl	-212(%rbp), %eax
	jg	.L60
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-208(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
.L38:
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L41
	movl	$43, %ecx
	jmp	.L42
.L41:
	movl	$47, %ecx
.L42:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movb	%cl, (%rax)
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-64(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movb	$61, (%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L43
.L50:
	movl	-16(%rbp), %eax
	andl	$3, %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L61
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%rbp)
	cmpl	$31, -60(%rbp)
	jle	.L46
	cmpl	$126, -60(%rbp)
	jle	.L47
.L46:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movb	$92, (%rax)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movb	$120, (%rax)
	movl	-60(%rbp), %eax
	sarl	$4, %eax
	andl	$15, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movslq	%ecx, %rdx
	leaq	hex.0(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	movb	%dl, (%rax)
	movl	-60(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movslq	%ecx, %rdx
	leaq	hex.0(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	movb	%dl, (%rax)
	jmp	.L45
.L47:
	cmpl	$47, -60(%rbp)
	je	.L48
	cmpl	$43, -60(%rbp)
	jne	.L49
.L48:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movb	$92, (%rax)
.L49:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	-60(%rbp), %edx
	movb	%dl, (%rax)
	jmp	.L45
.L61:
	nop
.L45:
	addl	$1, -16(%rbp)
.L43:
	movl	-16(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jl	.L50
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -20(%rbp)
	addl	$1, -4(%rbp)
.L16:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L51
	jmp	.L40
.L60:
	nop
.L40:
	cmpq	$0, -48(%rbp)
	je	.L52
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$176, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L53
.L52:
	movq	-208(%rbp), %rax
	movq	%rax, -40(%rbp)
.L53:
	cmpl	$0, -4(%rbp)
	jne	.L54
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
.L54:
	movq	-40(%rbp), %rax
	jmp	.L55
.L56:
	nop
	jmp	.L10
.L57:
	nop
	jmp	.L10
.L59:
	nop
.L10:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$183, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L20:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movl	$0, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	X509_NAME_oneline, .-X509_NAME_oneline
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"X509_NAME_oneline"
	.align 16
	.type	hex.0, @object
	.size	hex.0, 17
hex.0:
	.string	"0123456789ABCDEF"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"asn1_lib.c"
	.text
	.type	ossl_check_const_ASN1_UTF8STRING_sk_type, @function
ossl_check_const_ASN1_UTF8STRING_sk_type:
.LFB70:
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
.LFE70:
	.size	ossl_check_const_ASN1_UTF8STRING_sk_type, .-ossl_check_const_ASN1_UTF8STRING_sk_type
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
	.type	_asn1_check_infinite_end, @function
_asn1_check_infinite_end:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jg	.L8
	movl	$1, %eax
	jmp	.L9
.L8:
	cmpq	$1, -16(%rbp)
	jle	.L10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	2(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L9
.L10:
	movl	$0, %eax
.L9:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	_asn1_check_infinite_end, .-_asn1_check_infinite_end
	.globl	ASN1_check_infinite_end
	.type	ASN1_check_infinite_end, @function
ASN1_check_infinite_end:
.LFB503:
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
	call	_asn1_check_infinite_end
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	ASN1_check_infinite_end, .-ASN1_check_infinite_end
	.globl	ASN1_const_check_infinite_end
	.type	ASN1_const_check_infinite_end, @function
ASN1_const_check_infinite_end:
.LFB504:
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
	call	_asn1_check_infinite_end
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	ASN1_const_check_infinite_end, .-ASN1_const_check_infinite_end
	.section	.rodata
.LC0:
	.string	"../crypto/asn1/asn1_lib.c"
	.text
	.globl	ASN1_get_object
	.type	ASN1_get_object, @function
ASN1_get_object:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -104(%rbp)
	jg	.L16
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$224, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$128, %eax
	jmp	.L28
.L16:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$32, %eax
	movl	%eax, -4(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$192, %eax
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$31, %eax
	movl	%eax, -40(%rbp)
	cmpl	$31, -40(%rbp)
	jne	.L18
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	subq	$1, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L29
	movq	$0, -16(%rbp)
	jmp	.L21
.L23:
	salq	$7, -16(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$127, %eax
	cltq
	orq	%rax, -16(%rbp)
	subq	$1, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L30
	cmpq	$16777215, -16(%rbp)
	jg	.L31
.L21:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	js	.L23
	salq	$7, -16(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$127, %eax
	cltq
	orq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, -20(%rbp)
	subq	$1, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L24
	jmp	.L20
.L18:
	movl	-40(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	subq	$1, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L32
.L24:
	movq	-88(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movq	-96(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	movq	-32(%rbp), %rcx
	movq	-80(%rbp), %rdx
	leaq	-52(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	asn1_get_length
	testl	%eax, %eax
	je	.L33
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	je	.L26
	movl	-4(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L34
.L26:
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rcx
	movq	-104(%rbp), %rax
	subq	%rcx, %rax
	cmpq	%rax, %rdx
	jle	.L27
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$95, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$155, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	orl	$128, -4(%rbp)
.L27:
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-52(%rbp), %eax
	orl	-4(%rbp), %eax
	jmp	.L28
.L29:
	nop
	jmp	.L20
.L30:
	nop
	jmp	.L20
.L31:
	nop
	jmp	.L20
.L32:
	nop
	jmp	.L20
.L33:
	nop
	jmp	.L20
.L34:
	nop
.L20:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$105, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$128, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	ASN1_get_object, .-ASN1_get_object
	.type	asn1_get_length, @function
asn1_get_length:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-64(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	testq	%rax, %rax
	jg	.L36
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-128, %al
	jne	.L38
	movq	-48(%rbp), %rax
	movl	$1, (%rax)
	addq	$1, -8(%rbp)
	jmp	.L39
.L38:
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$127, %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jns	.L40
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	cmpq	%rax, -64(%rbp)
	jge	.L42
	movl	$0, %eax
	jmp	.L37
.L44:
	addq	$1, -8(%rbp)
	subl	$1, -20(%rbp)
.L42:
	cmpl	$0, -20(%rbp)
	jle	.L43
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L44
.L43:
	cmpl	$8, -20(%rbp)
	jle	.L46
	movl	$0, %eax
	jmp	.L37
.L47:
	salq	$8, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, -16(%rbp)
	subl	$1, -20(%rbp)
.L46:
	cmpl	$0, -20(%rbp)
	jg	.L47
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jns	.L39
	movl	$0, %eax
	jmp	.L37
.L40:
	movl	-20(%rbp), %eax
	cltq
	movq	%rax, -16(%rbp)
.L39:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L37:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	asn1_get_length, .-asn1_get_length
	.globl	ASN1_put_object
	.type	ASN1_put_object, @function
ASN1_put_object:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L49
	movl	$32, -4(%rbp)
	jmp	.L50
.L49:
	movl	$0, -4(%rbp)
.L50:
	movl	-40(%rbp), %eax
	andl	$192, %eax
	orl	%eax, -4(%rbp)
	cmpl	$30, -36(%rbp)
	jg	.L51
	movl	-36(%rbp), %eax
	andl	$31, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L52
.L51:
	movl	-4(%rbp), %eax
	orl	$31, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	$0, -4(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L53
.L54:
	sarl	$7, -8(%rbp)
	addl	$1, -4(%rbp)
.L53:
	cmpl	$0, -8(%rbp)
	jg	.L54
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L55
.L57:
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	andl	$127, %ecx
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -4(%rbp)
	je	.L56
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	cltq
	addq	%rcx, %rax
	orl	$-128, %edx
	movb	%dl, (%rax)
.L56:
	sarl	$7, -36(%rbp)
.L55:
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -4(%rbp)
	testl	%eax, %eax
	jg	.L57
	movq	-16(%rbp), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
.L52:
	cmpl	$2, -28(%rbp)
	jne	.L58
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$-128, (%rax)
	jmp	.L59
.L58:
	movl	-32(%rbp), %edx
	leaq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	asn1_put_length
.L59:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	ASN1_put_object, .-ASN1_put_object
	.globl	ASN1_put_eoc
	.type	ASN1_put_eoc, @function
ASN1_put_eoc:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$2, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	ASN1_put_eoc, .-ASN1_put_eoc
	.type	asn1_put_length, @function
asn1_put_length:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$127, -28(%rbp)
	jg	.L63
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
	jmp	.L64
.L63:
	movl	-28(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L65
.L66:
	sarl	$8, -16(%rbp)
	addl	$1, -12(%rbp)
.L65:
	cmpl	$0, -16(%rbp)
	jg	.L66
	movl	-12(%rbp), %eax
	orl	$-128, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.L67
.L68:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
	sarl	$8, -28(%rbp)
.L67:
	movl	-12(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	jg	.L68
	movl	-16(%rbp), %eax
	cltq
	addq	%rax, -8(%rbp)
.L64:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	asn1_put_length, .-asn1_put_length
	.globl	ASN1_object_size
	.type	ASN1_object_size, @function
ASN1_object_size:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$1, -4(%rbp)
	cmpl	$0, -24(%rbp)
	jns	.L70
	movl	$-1, %eax
	jmp	.L71
.L70:
	cmpl	$30, -28(%rbp)
	jle	.L72
	jmp	.L73
.L74:
	sarl	$7, -28(%rbp)
	addl	$1, -4(%rbp)
.L73:
	cmpl	$0, -28(%rbp)
	jg	.L74
.L72:
	cmpl	$2, -20(%rbp)
	jne	.L75
	addl	$3, -4(%rbp)
	jmp	.L76
.L75:
	addl	$1, -4(%rbp)
	cmpl	$127, -24(%rbp)
	jle	.L76
	movl	-24(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L77
.L78:
	sarl	$8, -8(%rbp)
	addl	$1, -4(%rbp)
.L77:
	cmpl	$0, -8(%rbp)
	jg	.L78
.L76:
	movl	$2147483647, %eax
	subl	-24(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L79
	movl	$-1, %eax
	jmp	.L71
.L79:
	movl	-4(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
.L71:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	ASN1_object_size, .-ASN1_object_size
	.globl	ossl_asn1_string_set_bits_left
	.type	ossl_asn1_string_set_bits_left, @function
ossl_asn1_string_set_bits_left:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	andq	$-8, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	andl	$7, %edx
	orl	$8, %edx
	movl	%edx, %edx
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	ossl_asn1_string_set_bits_left, .-ossl_asn1_string_set_bits_left
	.globl	ASN1_STRING_copy
	.type	ASN1_STRING_copy, @function
ASN1_STRING_copy:
.LFB512:
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
	jne	.L82
	movl	$0, %eax
	jmp	.L83
.L82:
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L84
	movl	$0, %eax
	jmp	.L83
.L84:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	andl	$128, %eax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	andb	$127, %al
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	ASN1_STRING_copy, .-ASN1_STRING_copy
	.globl	ASN1_STRING_dup
	.type	ASN1_STRING_dup, @function
ASN1_STRING_dup:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L86
	movl	$0, %eax
	jmp	.L87
.L86:
	call	ASN1_STRING_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L88
	movl	$0, %eax
	jmp	.L87
.L88:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_copy@PLT
	testl	%eax, %eax
	jne	.L89
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	$0, %eax
	jmp	.L87
.L89:
	movq	-8(%rbp), %rax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	ASN1_STRING_dup, .-ASN1_STRING_dup
	.globl	ASN1_STRING_set
	.type	ASN1_STRING_set, @function
ASN1_STRING_set:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, -52(%rbp)
	jns	.L91
	cmpq	$0, -16(%rbp)
	jne	.L92
	movl	$0, %eax
	jmp	.L93
.L92:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	jmp	.L94
.L91:
	movl	-52(%rbp), %eax
	cltq
	movq	%rax, -8(%rbp)
.L94:
	cmpq	$2147483646, -8(%rbp)
	jbe	.L95
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$305, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$223, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L93
.L95:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cltq
	cmpq	%rax, -8(%rbp)
	jnb	.L96
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L97
.L96:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rsi
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$314, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L97
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$0, %eax
	jmp	.L93
.L97:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	cmpq	$0, -16(%rbp)
	je	.L98
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L98:
	movl	$1, %eax
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	ASN1_STRING_set, .-ASN1_STRING_set
	.globl	ASN1_STRING_set0
	.type	ASN1_STRING_set0, @function
ASN1_STRING_set0:
.LFB515:
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
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$341, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	ASN1_STRING_set0, .-ASN1_STRING_set0
	.globl	ASN1_STRING_new
	.type	ASN1_STRING_new, @function
ASN1_STRING_new:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$4, %edi
	call	ASN1_STRING_type_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	ASN1_STRING_new, .-ASN1_STRING_new
	.globl	ASN1_STRING_type_new
	.type	ASN1_STRING_type_new, @function
ASN1_STRING_type_new:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$355, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L103
	movl	$0, %eax
	jmp	.L104
.L103:
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	ASN1_STRING_type_new, .-ASN1_STRING_type_new
	.globl	ossl_asn1_string_embed_free
	.type	ossl_asn1_string_embed_free, @function
ossl_asn1_string_embed_free:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L109
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	andl	$16, %eax
	testq	%rax, %rax
	jne	.L108
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$367, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L108:
	cmpl	$0, -12(%rbp)
	jne	.L105
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$369, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L105
.L109:
	nop
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	ossl_asn1_string_embed_free, .-ossl_asn1_string_embed_free
	.globl	ASN1_STRING_free
	.type	ASN1_STRING_free, @function
ASN1_STRING_free:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L113
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	andl	$128, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_asn1_string_embed_free@PLT
	jmp	.L110
.L113:
	nop
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	ASN1_STRING_free, .-ASN1_STRING_free
	.globl	ASN1_STRING_clear_free
	.type	ASN1_STRING_clear_free, @function
ASN1_STRING_clear_free:
.LFB520:
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
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L117
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	andl	$16, %eax
	testq	%rax, %rax
	jne	.L117
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L117:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	jmp	.L114
.L118:
	nop
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	ASN1_STRING_clear_free, .-ASN1_STRING_clear_free
	.globl	ASN1_STRING_cmp
	.type	ASN1_STRING_cmp, @function
ASN1_STRING_cmp:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L120
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L121
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, -4(%rbp)
.L121:
	cmpl	$0, -4(%rbp)
	jne	.L122
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	jmp	.L123
.L122:
	movl	-4(%rbp), %eax
	jmp	.L123
.L120:
	movl	-4(%rbp), %eax
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	ASN1_STRING_cmp, .-ASN1_STRING_cmp
	.globl	ASN1_STRING_length
	.type	ASN1_STRING_length, @function
ASN1_STRING_length:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	ASN1_STRING_length, .-ASN1_STRING_length
	.globl	ASN1_STRING_length_set
	.type	ASN1_STRING_length_set, @function
ASN1_STRING_length_set:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	ASN1_STRING_length_set, .-ASN1_STRING_length_set
	.globl	ASN1_STRING_type
	.type	ASN1_STRING_type, @function
ASN1_STRING_type:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	ASN1_STRING_type, .-ASN1_STRING_type
	.globl	ASN1_STRING_get0_data
	.type	ASN1_STRING_get0_data, @function
ASN1_STRING_get0_data:
.LFB525:
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
.LFE525:
	.size	ASN1_STRING_get0_data, .-ASN1_STRING_get0_data
	.globl	ASN1_STRING_data
	.type	ASN1_STRING_data, @function
ASN1_STRING_data:
.LFB526:
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
.LFE526:
	.size	ASN1_STRING_data, .-ASN1_STRING_data
	.section	.rodata
.LC1:
	.string	""
	.text
	.globl	ossl_sk_ASN1_UTF8STRING2text
	.type	ossl_sk_ASN1_UTF8STRING2text, @function
ossl_sk_ASN1_UTF8STRING2text:
.LFB527:
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
	movq	$0, -32(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L134
	leaq	.LC1(%rip), %rax
	movq	%rax, -64(%rbp)
.L134:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L135
.L139:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_UTF8STRING_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L136
	movq	-40(%rbp), %rax
	addq	%rax, -16(%rbp)
.L136:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	cltq
	addq	%rax, -16(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L137
	movq	-16(%rbp), %rax
	cmpq	%rax, -72(%rbp)
	jnb	.L137
	movl	$0, %eax
	jmp	.L138
.L137:
	addl	$1, -4(%rbp)
.L135:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_UTF8STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L139
	movq	-16(%rbp), %rax
	addq	$1, %rax
	leaq	.LC0(%rip), %rcx
	movl	$456, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L140
	movl	$0, %eax
	jmp	.L138
.L140:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L141
.L143:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_UTF8STRING_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	cltq
	movq	%rax, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L142
	cmpq	$0, -40(%rbp)
	je	.L142
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movq	-40(%rbp), %rax
	addq	%rax, -24(%rbp)
.L142:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movq	-16(%rbp), %rax
	addq	%rax, -24(%rbp)
	addl	$1, -4(%rbp)
.L141:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_UTF8STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L143
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	ossl_sk_ASN1_UTF8STRING2text, .-ossl_sk_ASN1_UTF8STRING2text
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"ASN1_get_object"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"ASN1_STRING_set"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

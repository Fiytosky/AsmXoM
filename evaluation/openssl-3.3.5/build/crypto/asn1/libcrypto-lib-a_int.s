	.file	"a_int.c"
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
	.globl	ASN1_INTEGER_dup
	.type	ASN1_INTEGER_dup, @function
ASN1_INTEGER_dup:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	ASN1_INTEGER_dup, .-ASN1_INTEGER_dup
	.globl	ASN1_INTEGER_cmp
	.type	ASN1_INTEGER_cmp, @function
ASN1_INTEGER_cmp:
.LFB503:
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
	movl	4(%rax), %eax
	andl	$256, %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	andl	$256, %eax
	cmpl	%eax, -4(%rbp)
	je	.L8
	cmpl	$0, -4(%rbp)
	je	.L9
	movl	$-1, %eax
	jmp	.L10
.L9:
	movl	$1, %eax
	jmp	.L10
.L8:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_cmp@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L11
	movl	-8(%rbp), %eax
	negl	%eax
	jmp	.L10
.L11:
	movl	-8(%rbp), %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	ASN1_INTEGER_cmp, .-ASN1_INTEGER_cmp
	.type	twos_complement, @function
twos_complement:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, %eax
	movb	%al, -44(%rbp)
	movzbl	-44(%rbp), %eax
	andl	$1, %eax
	movl	%eax, -4(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L14
	movq	-40(%rbp), %rax
	addq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -32(%rbp)
	jmp	.L14
.L15:
	subq	$1, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	xorb	-44(%rbp), %al
	movzbl	%al, %eax
	addl	%eax, -4(%rbp)
	subq	$1, -24(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	shrl	$8, -4(%rbp)
.L14:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L15
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	twos_complement, .-twos_complement
	.type	i2c_ibuf, @function
i2c_ibuf:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movl	$0, -4(%rbp)
	movb	$0, -25(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L17
	cmpq	$0, -64(%rbp)
	je	.L17
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -24(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L18
	cmpq	$127, -24(%rbp)
	jbe	.L18
	movl	$1, -4(%rbp)
	movb	$0, -25(%rbp)
	jmp	.L19
.L18:
	cmpl	$0, -68(%rbp)
	je	.L19
	movb	$-1, -25(%rbp)
	cmpq	$128, -24(%rbp)
	jbe	.L20
	movl	$1, -4(%rbp)
	jmp	.L19
.L20:
	cmpq	$128, -24(%rbp)
	jne	.L19
	movl	$0, -4(%rbp)
	movq	$1, -24(%rbp)
	jmp	.L21
.L22:
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, -4(%rbp)
	addq	$1, -24(%rbp)
.L21:
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L22
	cmpl	$0, -4(%rbp)
	je	.L23
	movb	$-1, -25(%rbp)
	jmp	.L24
.L23:
	movb	$0, -25(%rbp)
.L24:
	movzbl	-25(%rbp), %eax
	andl	$1, %eax
	movl	%eax, -4(%rbp)
.L19:
	movl	-4(%rbp), %eax
	addq	%rax, -16(%rbp)
	jmp	.L25
.L17:
	movq	$1, -16(%rbp)
	movq	$0, -64(%rbp)
.L25:
	cmpq	$0, -80(%rbp)
	je	.L26
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L27
.L26:
	movq	-16(%rbp), %rax
	jmp	.L28
.L27:
	movq	-40(%rbp), %rax
	movzbl	-25(%rbp), %edx
	movb	%dl, (%rax)
	movl	-4(%rbp), %eax
	addq	%rax, -40(%rbp)
	movzbl	-25(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	twos_complement
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	i2c_ibuf, .-i2c_ibuf
	.section	.rodata
.LC0:
	.string	"../crypto/asn1/a_int.c"
	.text
	.type	c2i_ibuf, @function
c2i_ibuf:
.LFB506:
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
	cmpq	$0, -64(%rbp)
	jne	.L30
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$160, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$222, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L31
.L30:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$128, %eax
	movl	%eax, -20(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L32
	movq	-48(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
.L32:
	cmpq	$1, -64(%rbp)
	jne	.L33
	cmpq	$0, -40(%rbp)
	je	.L34
	cmpl	$0, -20(%rbp)
	je	.L35
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L34
.L35:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
.L34:
	movl	$1, %eax
	jmp	.L31
.L33:
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L36
	movl	$1, -4(%rbp)
	jmp	.L37
.L36:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-1, %al
	jne	.L37
	movl	$0, -4(%rbp)
	movq	$1, -16(%rbp)
	jmp	.L38
.L39:
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, -4(%rbp)
	addq	$1, -16(%rbp)
.L38:
	movq	-16(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L39
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.L37:
	cmpl	$0, -4(%rbp)
	je	.L40
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$128, %eax
	cmpl	%eax, -20(%rbp)
	jne	.L40
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$193, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$221, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L31
.L40:
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, -56(%rbp)
	movl	-4(%rbp), %eax
	cltq
	subq	%rax, -64(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L41
	cmpl	$0, -20(%rbp)
	je	.L42
	movl	$255, %ecx
	jmp	.L43
.L42:
	movl	$0, %ecx
.L43:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	twos_complement
.L41:
	movq	-64(%rbp), %rax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	c2i_ibuf, .-c2i_ibuf
	.globl	ossl_i2c_ASN1_INTEGER
	.type	ossl_i2c_ASN1_INTEGER, @function
ossl_i2c_ASN1_INTEGER:
.LFB507:
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
	movl	4(%rax), %eax
	andl	$256, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	i2c_ibuf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	ossl_i2c_ASN1_INTEGER, .-ossl_i2c_ASN1_INTEGER
	.type	asn1_get_uint64, @function
asn1_get_uint64:
.LFB508:
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
	cmpq	$8, -40(%rbp)
	jbe	.L47
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$219, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$223, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L47:
	cmpq	$0, -32(%rbp)
	jne	.L49
	movl	$0, %eax
	jmp	.L48
.L49:
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L50
.L51:
	salq	$8, -16(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, -16(%rbp)
	addq	$1, -8(%rbp)
.L50:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L51
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	asn1_get_uint64, .-asn1_get_uint64
	.type	asn1_put_uint64, @function
asn1_put_uint64:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$8, -8(%rbp)
.L53:
	subq	$1, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	movb	%dl, (%rax)
	shrq	$8, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L53
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	asn1_put_uint64, .-asn1_put_uint64
	.type	asn1_get_int64, @function
asn1_get_int64:
.LFB510:
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
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	leaq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	asn1_get_uint64
	testl	%eax, %eax
	jne	.L56
	movl	$0, %eax
	jmp	.L63
.L56:
	cmpl	$0, -44(%rbp)
	je	.L58
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	js	.L59
	movq	-8(%rbp), %rax
	negq	%rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L60
.L59:
	movq	-8(%rbp), %rdx
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, %rdx
	jne	.L61
	movq	-8(%rbp), %rax
	negq	%rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L60
.L61:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$271, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$224, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L63
.L58:
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	js	.L62
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L60
.L62:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$278, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$223, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L63
.L60:
	movl	$1, %eax
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	asn1_get_int64, .-asn1_get_int64
	.globl	ossl_c2i_ASN1_INTEGER
	.type	ossl_c2i_ASN1_INTEGER, @function
ossl_c2i_ASN1_INTEGER:
.LFB511:
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
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	c2i_ibuf
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L65
	movl	$0, %eax
	jmp	.L78
.L65:
	cmpq	$0, -40(%rbp)
	je	.L67
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L68
.L67:
	call	ASN1_INTEGER_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L69
	movl	$0, %eax
	jmp	.L78
.L69:
	movq	-8(%rbp), %rax
	movl	$2, 4(%rax)
	jmp	.L70
.L68:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L70:
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L71
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$307, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	nop
.L72:
	cmpq	$0, -40(%rbp)
	je	.L76
	jmp	.L79
.L71:
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-20(%rbp), %rsi
	movq	%rax, %rdi
	call	c2i_ibuf
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L73
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	orb	$1, %ah
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
	jmp	.L74
.L73:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	andb	$-2, %ah
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
.L74:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.L75
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L75:
	movq	-8(%rbp), %rax
	jmp	.L78
.L79:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	je	.L77
.L76:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
.L77:
	movl	$0, %eax
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	ossl_c2i_ASN1_INTEGER, .-ossl_c2i_ASN1_INTEGER
	.type	asn1_string_get_int64, @function
asn1_string_get_int64:
.LFB512:
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
	cmpq	$0, -16(%rbp)
	jne	.L81
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$331, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L82
.L81:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	andb	$-2, %ah
	cmpl	%eax, -20(%rbp)
	je	.L83
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$335, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$225, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L82
.L83:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	andl	$256, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	asn1_get_int64
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	asn1_string_get_int64, .-asn1_string_get_int64
	.type	asn1_string_set_int64, @function
asn1_string_set_int64:
.LFB513:
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
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 4(%rax)
	cmpq	$0, -32(%rbp)
	jns	.L85
	movq	-32(%rbp), %rax
	negq	%rax
	movq	%rax, %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_put_uint64
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	orb	$1, %ah
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 4(%rax)
	jmp	.L86
.L85:
	movq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_put_uint64
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	andb	$-2, %ah
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 4(%rax)
.L86:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movl	$8, %eax
	subl	%edx, %eax
	movl	%eax, %esi
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	asn1_string_set_int64, .-asn1_string_set_int64
	.type	asn1_string_get_uint64, @function
asn1_string_get_uint64:
.LFB514:
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
	cmpq	$0, -16(%rbp)
	jne	.L89
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$366, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L90
.L89:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	andb	$-2, %ah
	cmpl	%eax, -20(%rbp)
	je	.L91
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$370, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$225, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L90
.L91:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L92
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$374, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$226, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L90
.L92:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	asn1_get_uint64
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	asn1_string_get_uint64, .-asn1_string_get_uint64
	.type	asn1_string_set_uint64, @function
asn1_string_set_uint64:
.LFB515:
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
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_put_uint64
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movl	$8, %eax
	subl	%edx, %eax
	movl	%eax, %esi
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	asn1_string_set_uint64, .-asn1_string_set_uint64
	.globl	d2i_ASN1_UINTEGER
	.type	d2i_ASN1_UINTEGER, @function
d2i_ASN1_UINTEGER:
.LFB516:
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
	movq	$0, -8(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L96
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L97
.L96:
	call	ASN1_INTEGER_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L98
	movl	$0, %eax
	jmp	.L112
.L98:
	movq	-8(%rbp), %rax
	movl	$2, 4(%rax)
	jmp	.L100
.L97:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L100:
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
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L101
	movl	$102, -12(%rbp)
	jmp	.L102
.L101:
	movl	-44(%rbp), %eax
	cmpl	$2, %eax
	je	.L103
	movl	$115, -12(%rbp)
	jmp	.L102
.L103:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jns	.L104
	movl	$226, -12(%rbp)
	jmp	.L102
.L104:
	movq	-40(%rbp), %rax
	addl	$1, %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$433, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L113
	movq	-8(%rbp), %rax
	movl	$2, 4(%rax)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L106
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L107
	movq	-40(%rbp), %rax
	cmpq	$1, %rax
	je	.L107
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -40(%rbp)
.L107:
	movq	-40(%rbp), %rax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
.L106:
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	cmpq	$0, -56(%rbp)
	je	.L108
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L108:
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L112
.L113:
	nop
.L102:
	cmpl	$0, -12(%rbp)
	je	.L109
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$453, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L109:
	cmpq	$0, -56(%rbp)
	je	.L110
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	je	.L111
.L110:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
.L111:
	movl	$0, %eax
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	d2i_ASN1_UINTEGER, .-d2i_ASN1_UINTEGER
	.type	bn_to_asn1_string, @function
bn_to_asn1_string:
.LFB517:
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
	jne	.L115
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	ASN1_STRING_type_new@PLT
	movq	%rax, -8(%rbp)
	jmp	.L116
.L115:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 4(%rax)
.L116:
	cmpq	$0, -8(%rbp)
	jne	.L117
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$473, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524554, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L118
.L117:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L119
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L119
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	orl	$258, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
.L119:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L120
	movl	$1, -12(%rbp)
.L120:
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L121
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$486, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L118
.L121:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L122
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movb	$0, (%rax)
	jmp	.L123
.L122:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	movl	%eax, -12(%rbp)
.L123:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L124
.L118:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L125
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
.L125:
	movl	$0, %eax
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	bn_to_asn1_string, .-bn_to_asn1_string
	.type	asn1_string_to_bn, @function
asn1_string_to_bn:
.LFB518:
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
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	andb	$-2, %ah
	cmpl	%eax, -36(%rbp)
	je	.L127
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$509, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$225, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L128
.L127:
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L129
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$515, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L128
.L129:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L130
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
.L130:
	movq	-8(%rbp), %rax
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	asn1_string_to_bn, .-asn1_string_to_bn
	.globl	ASN1_INTEGER_get_int64
	.type	ASN1_INTEGER_get_int64, @function
ASN1_INTEGER_get_int64:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	asn1_string_get_int64
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	ASN1_INTEGER_get_int64, .-ASN1_INTEGER_get_int64
	.globl	ASN1_INTEGER_set_int64
	.type	ASN1_INTEGER_set_int64, @function
ASN1_INTEGER_set_int64:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	asn1_string_set_int64
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	ASN1_INTEGER_set_int64, .-ASN1_INTEGER_set_int64
	.globl	ASN1_INTEGER_get_uint64
	.type	ASN1_INTEGER_get_uint64, @function
ASN1_INTEGER_get_uint64:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	asn1_string_get_uint64
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	ASN1_INTEGER_get_uint64, .-ASN1_INTEGER_get_uint64
	.globl	ASN1_INTEGER_set_uint64
	.type	ASN1_INTEGER_set_uint64, @function
ASN1_INTEGER_set_uint64:
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
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	asn1_string_set_uint64
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	ASN1_INTEGER_set_uint64, .-ASN1_INTEGER_set_uint64
	.globl	ASN1_INTEGER_set
	.type	ASN1_INTEGER_set, @function
ASN1_INTEGER_set:
.LFB523:
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
	call	ASN1_INTEGER_set_int64@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	ASN1_INTEGER_set, .-ASN1_INTEGER_set
	.globl	ASN1_INTEGER_get
	.type	ASN1_INTEGER_get, @function
ASN1_INTEGER_get:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L142
	movl	$0, %eax
	jmp	.L145
.L142:
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_get_int64@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L144
	movq	$-1, %rax
	jmp	.L145
.L144:
	movq	-16(%rbp), %rax
.L145:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	ASN1_INTEGER_get, .-ASN1_INTEGER_get
	.globl	BN_to_ASN1_INTEGER
	.type	BN_to_ASN1_INTEGER, @function
BN_to_ASN1_INTEGER:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_to_asn1_string
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	BN_to_ASN1_INTEGER, .-BN_to_ASN1_INTEGER
	.globl	ASN1_INTEGER_to_BN
	.type	ASN1_INTEGER_to_BN, @function
ASN1_INTEGER_to_BN:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	asn1_string_to_bn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	ASN1_INTEGER_to_BN, .-ASN1_INTEGER_to_BN
	.globl	ASN1_ENUMERATED_get_int64
	.type	ASN1_ENUMERATED_get_int64, @function
ASN1_ENUMERATED_get_int64:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	asn1_string_get_int64
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	ASN1_ENUMERATED_get_int64, .-ASN1_ENUMERATED_get_int64
	.globl	ASN1_ENUMERATED_set_int64
	.type	ASN1_ENUMERATED_set_int64, @function
ASN1_ENUMERATED_set_int64:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	asn1_string_set_int64
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	ASN1_ENUMERATED_set_int64, .-ASN1_ENUMERATED_set_int64
	.globl	ASN1_ENUMERATED_set
	.type	ASN1_ENUMERATED_set, @function
ASN1_ENUMERATED_set:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_ENUMERATED_set_int64@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	ASN1_ENUMERATED_set, .-ASN1_ENUMERATED_set
	.globl	ASN1_ENUMERATED_get
	.type	ASN1_ENUMERATED_get, @function
ASN1_ENUMERATED_get:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L157
	movl	$0, %eax
	jmp	.L162
.L157:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	andb	$-2, %ah
	cmpl	$10, %eax
	je	.L159
	movq	$-1, %rax
	jmp	.L162
.L159:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$8, %eax
	jle	.L160
	movl	$4294967295, %eax
	jmp	.L162
.L160:
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_ENUMERATED_get_int64@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L161
	movq	$-1, %rax
	jmp	.L162
.L161:
	movq	-16(%rbp), %rax
.L162:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	ASN1_ENUMERATED_get, .-ASN1_ENUMERATED_get
	.globl	BN_to_ASN1_ENUMERATED
	.type	BN_to_ASN1_ENUMERATED, @function
BN_to_ASN1_ENUMERATED:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_to_asn1_string
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	BN_to_ASN1_ENUMERATED, .-BN_to_ASN1_ENUMERATED
	.globl	ASN1_ENUMERATED_to_BN
	.type	ASN1_ENUMERATED_to_BN, @function
ASN1_ENUMERATED_to_BN:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	asn1_string_to_bn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	ASN1_ENUMERATED_to_BN, .-ASN1_ENUMERATED_to_BN
	.globl	ossl_c2i_uint64_int
	.type	ossl_c2i_uint64_int, @function
ossl_c2i_uint64_int:
.LFB533:
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
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	c2i_ibuf
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L168
	movl	$0, %eax
	jmp	.L171
.L168:
	cmpq	$8, -8(%rbp)
	jbe	.L170
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$626, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$223, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L171
.L170:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	c2i_ibuf
	movq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	asn1_get_uint64
.L171:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	ossl_c2i_uint64_int, .-ossl_c2i_uint64_int
	.globl	ossl_i2c_uint64_int
	.type	ossl_i2c_uint64_int, @function
ossl_i2c_uint64_int:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_put_uint64
	movq	%rax, -8(%rbp)
	movl	$8, %eax
	subq	-8(%rbp), %rax
	leaq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	leaq	(%rcx,%rdx), %rdi
	leaq	-24(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	%rax, %rsi
	call	i2c_ibuf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	ossl_i2c_uint64_int, .-ossl_i2c_uint64_int
	.section	.rodata
	.align 8
	.type	__func__.9, @object
	.size	__func__.9, 9
__func__.9:
	.string	"c2i_ibuf"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 16
__func__.8:
	.string	"asn1_get_uint64"
	.align 8
	.type	__func__.7, @object
	.size	__func__.7, 15
__func__.7:
	.string	"asn1_get_int64"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 22
__func__.6:
	.string	"ossl_c2i_ASN1_INTEGER"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 22
__func__.5:
	.string	"asn1_string_get_int64"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 23
__func__.4:
	.string	"asn1_string_get_uint64"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 18
__func__.3:
	.string	"d2i_ASN1_UINTEGER"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 18
__func__.2:
	.string	"bn_to_asn1_string"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"asn1_string_to_bn"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"ossl_c2i_uint64_int"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"a_bitstr.c"
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
	.globl	ASN1_BIT_STRING_set
	.type	ASN1_BIT_STRING_set, @function
ASN1_BIT_STRING_set:
.LFB502:
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
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	ASN1_BIT_STRING_set, .-ASN1_BIT_STRING_set
	.globl	ossl_i2c_ASN1_BIT_STRING
	.type	ossl_i2c_ASN1_BIT_STRING, @function
ossl_i2c_ASN1_BIT_STRING:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jle	.L10
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	andl	$8, %eax
	testq	%rax, %rax
	je	.L13
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	andl	$7, %eax
	movl	%eax, -4(%rbp)
	jmp	.L12
.L16:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L28
	subl	$1, -8(%rbp)
.L13:
	cmpl	$0, -8(%rbp)
	jg	.L16
	jmp	.L15
.L28:
	nop
.L15:
	cmpl	$0, -8(%rbp)
	jne	.L17
	movl	$0, -4(%rbp)
	jmp	.L12
.L17:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L18
	movl	$0, -4(%rbp)
	jmp	.L12
.L18:
	movl	-20(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L19
	movl	$1, -4(%rbp)
	jmp	.L12
.L19:
	movl	-20(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L20
	movl	$2, -4(%rbp)
	jmp	.L12
.L20:
	movl	-20(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L21
	movl	$3, -4(%rbp)
	jmp	.L12
.L21:
	movl	-20(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L22
	movl	$4, -4(%rbp)
	jmp	.L12
.L22:
	movl	-20(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L23
	movl	$5, -4(%rbp)
	jmp	.L12
.L23:
	movl	-20(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L24
	movl	$6, -4(%rbp)
	jmp	.L12
.L24:
	movl	-20(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L25
	movl	$7, -4(%rbp)
	jmp	.L12
.L25:
	movl	$0, -4(%rbp)
	jmp	.L12
.L10:
	movl	$0, -4(%rbp)
.L12:
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L26
	movl	-24(%rbp), %eax
	jmp	.L9
.L26:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	-4(%rbp), %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, -8(%rbp)
	jle	.L27
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-8(%rbp), %eax
	cltq
	addq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	-4(%rbp), %eax
	movl	$255, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	andl	%eax, %esi
	movl	%esi, %edx
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movb	%dl, (%rax)
.L27:
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-24(%rbp), %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	ossl_i2c_ASN1_BIT_STRING, .-ossl_i2c_ASN1_BIT_STRING
	.section	.rodata
.LC0:
	.string	"../crypto/asn1/a_bitstr.c"
	.text
	.globl	ossl_c2i_ASN1_BIT_STRING
	.type	ossl_c2i_ASN1_BIT_STRING, @function
ossl_c2i_ASN1_BIT_STRING:
.LFB504:
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
	movl	$0, -28(%rbp)
	cmpq	$0, -56(%rbp)
	jg	.L30
	movl	$152, -28(%rbp)
	jmp	.L31
.L30:
	cmpq	$2147483647, -56(%rbp)
	jle	.L32
	movl	$151, -28(%rbp)
	jmp	.L31
.L32:
	cmpq	$0, -40(%rbp)
	je	.L33
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L34
.L33:
	call	ASN1_BIT_STRING_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L37
	movl	$0, %eax
	jmp	.L36
.L34:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L37:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	cmpl	$7, -28(%rbp)
	jle	.L38
	movl	$220, -28(%rbp)
	jmp	.L31
.L38:
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_asn1_string_set_bits_left@PLT
	movq	-56(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	cmpq	$1, %rax
	jle	.L39
	movq	-56(%rbp), %rax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$121, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L46
	movq	-56(%rbp), %rax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-56(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	movl	$255, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	andl	%eax, %esi
	movl	%esi, %ecx
	movq	-56(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	addq	%rax, -16(%rbp)
	jmp	.L41
.L39:
	movq	$0, -24(%rbp)
.L41:
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	movq	-8(%rbp), %rax
	movl	$3, 4(%rax)
	cmpq	$0, -40(%rbp)
	je	.L42
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L42:
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L36
.L46:
	nop
.L31:
	cmpl	$0, -28(%rbp)
	je	.L43
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$139, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-28(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L43:
	cmpq	$0, -40(%rbp)
	je	.L44
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	je	.L45
.L44:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_free@PLT
.L45:
	movl	$0, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	ossl_c2i_ASN1_BIT_STRING, .-ossl_c2i_ASN1_BIT_STRING
	.globl	ASN1_BIT_STRING_set_bit
	.type	ASN1_BIT_STRING_set_bit, @function
ASN1_BIT_STRING_set_bit:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	cmpl	$0, -44(%rbp)
	jns	.L48
	movl	$0, %eax
	jmp	.L49
.L48:
	movl	-44(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -8(%rbp)
	movl	-44(%rbp), %eax
	notl	%eax
	andl	$7, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	notl	%eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.L50
	movl	$0, -4(%rbp)
.L50:
	cmpq	$0, -40(%rbp)
	jne	.L51
	movl	$0, %eax
	jmp	.L49
.L51:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	andq	$-16, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jge	.L52
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L53
.L52:
	cmpl	$0, -48(%rbp)
	jne	.L54
	movl	$1, %eax
	jmp	.L49
.L54:
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rsi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$170, %r8d
	movq	%rax, %rdi
	call	CRYPTO_clear_realloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L55
	movl	$0, %eax
	jmp	.L49
.L55:
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	testl	%edx, %edx
	jle	.L56
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movslq	%edx, %rax
	movq	-40(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
.L56:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
.L53:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	andl	%eax, %edx
	movl	-4(%rbp), %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L57
.L59:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
.L57:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L58
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L59
.L58:
	movl	$1, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	ASN1_BIT_STRING_set_bit, .-ASN1_BIT_STRING_set_bit
	.globl	ASN1_BIT_STRING_get_bit
	.type	ASN1_BIT_STRING_get_bit, @function
ASN1_BIT_STRING_get_bit:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L61
	movl	$0, %eax
	jmp	.L62
.L61:
	movl	-28(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %eax
	notl	%eax
	andl	$7, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L63
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L63
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L64
.L63:
	movl	$0, %eax
	jmp	.L62
.L64:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	-8(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
.L62:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	ASN1_BIT_STRING_get_bit, .-ASN1_BIT_STRING_get_bit
	.globl	ASN1_BIT_STRING_check
	.type	ASN1_BIT_STRING_check, @function
ASN1_BIT_STRING_check:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L66
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L67
.L66:
	movl	$1, %eax
	jmp	.L68
.L67:
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L69
.L73:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.L70
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	notl	%eax
	movb	%al, -9(%rbp)
	jmp	.L71
.L70:
	movb	$-1, -9(%rbp)
.L71:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	andb	-9(%rbp), %al
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L69:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L72
	cmpl	$0, -8(%rbp)
	jne	.L73
.L72:
	movl	-8(%rbp), %eax
.L68:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	ASN1_BIT_STRING_check, .-ASN1_BIT_STRING_check
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 25
__func__.0:
	.string	"ossl_c2i_ASN1_BIT_STRING"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

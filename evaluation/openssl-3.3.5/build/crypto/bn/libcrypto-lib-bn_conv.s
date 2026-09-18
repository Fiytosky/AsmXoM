	.file	"bn_conv.c"
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
	.type	bn_expand, @function
bn_expand:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$2147483584, -12(%rbp)
	jle	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movl	-12(%rbp), %eax
	addl	$63, %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, %edx
	jg	.L8
	movq	-8(%rbp), %rax
	jmp	.L7
.L8:
	movl	-12(%rbp), %eax
	addl	$63, %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_expand2@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	bn_expand, .-bn_expand
	.section	.rodata
	.align 16
	.type	Hex, @object
	.size	Hex, 17
Hex:
	.string	"0123456789ABCDEF"
.LC0:
	.string	"../crypto/bn/bn_conv.c"
.LC1:
	.string	"0"
	.text
	.globl	BN_bn2hex
	.type	BN_bn2hex, @function
BN_bn2hex:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	$0, -12(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L10
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$24, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	jmp	.L11
.L10:
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	sall	$4, %eax
	addl	$2, %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$25, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L21
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L14
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$45, (%rax)
.L14:
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L15
.L20:
	movl	$56, -8(%rbp)
	jmp	.L16
.L19:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	andl	$255, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L17
	cmpl	$0, -36(%rbp)
	je	.L18
.L17:
	movl	-36(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movslq	%ecx, %rdx
	leaq	Hex(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	movb	%dl, (%rax)
	movl	-36(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movslq	%ecx, %rdx
	leaq	Hex(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	movb	%dl, (%rax)
	movl	$1, -12(%rbp)
.L18:
	subl	$8, -8(%rbp)
.L16:
	cmpl	$0, -8(%rbp)
	jns	.L19
	subl	$1, -4(%rbp)
.L15:
	cmpl	$0, -4(%rbp)
	jns	.L20
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L13
.L21:
	nop
.L13:
	movq	-32(%rbp), %rax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	BN_bn2hex, .-BN_bn2hex
	.section	.rodata
.LC2:
	.string	"%lu"
.LC3:
	.string	"%019lu"
	.text
	.globl	BN_bn2dec
	.type	BN_bn2dec, @function
BN_bn2dec:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$2, %edx
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$274877907, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$6, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%rcx,%rdx), %eax
	addl	$2, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1808407283, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$3, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$69, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -56(%rbp)
	movl	-64(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$70, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L40
	cmpq	$0, -56(%rbp)
	je	.L40
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L41
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L27
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$48, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$0, (%rax)
	jmp	.L28
.L27:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L30
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$45, (%rax)
	jmp	.L30
.L33:
	movq	-32(%rbp), %rax
	subq	-56(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movl	-68(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	jge	.L42
	movabsq	$-8446744073709551616, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_div_word@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$-1, %rax
	je	.L43
	addq	$8, -32(%rbp)
.L30:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L33
	subq	$8, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movl	-64(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	%rcx, %rsi
	subq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	js	.L44
	movl	-72(%rbp), %eax
	cltq
	addq	%rax, -16(%rbp)
	jmp	.L35
.L37:
	subq	$8, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movl	-64(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	%rcx, %rsi
	subq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	js	.L45
	movl	-72(%rbp), %eax
	cltq
	addq	%rax, -16(%rbp)
.L35:
	movq	-32(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.L37
.L28:
	movl	$1, -4(%rbp)
	jmp	.L25
.L40:
	nop
	jmp	.L25
.L41:
	nop
	jmp	.L25
.L42:
	nop
	jmp	.L25
.L43:
	nop
	jmp	.L25
.L44:
	nop
	jmp	.L25
.L45:
	nop
.L25:
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$113, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	cmpl	$0, -4(%rbp)
	je	.L38
	movq	-48(%rbp), %rax
	jmp	.L39
.L38:
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$117, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	BN_bn2dec, .-BN_bn2dec
	.globl	BN_hex2bn
	.type	BN_hex2bn, @function
BN_hex2bn:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L47
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L48
.L47:
	movl	$0, %eax
	jmp	.L49
.L48:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L50
	movl	$1, -20(%rbp)
	addq	$1, -64(%rbp)
.L50:
	movl	$0, -32(%rbp)
	jmp	.L51
.L73:
	nop
	addl	$1, -32(%rbp)
.L51:
	cmpl	$536870911, -32(%rbp)
	jg	.L52
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L73
.L52:
	cmpl	$0, -32(%rbp)
	je	.L54
	cmpl	$536870911, -32(%rbp)
	jle	.L55
.L54:
	movl	$0, %eax
	jmp	.L49
.L55:
	movl	-32(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -44(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L56
	movl	-44(%rbp), %eax
	jmp	.L49
.L56:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L57
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L58
	movl	$0, %eax
	jmp	.L49
.L57:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	je	.L59
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$154, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L49
.L59:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
.L58:
	movl	-32(%rbp), %eax
	leal	0(,%rax,4), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_expand
	testq	%rax, %rax
	je	.L74
	movl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L62
.L67:
	movl	-36(%rbp), %eax
	movl	$16, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, -28(%rbp)
	movq	$0, -16(%rbp)
.L66:
	movl	-36(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	OPENSSL_hexchar2int@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jns	.L63
	movl	$0, -40(%rbp)
.L63:
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movl	-40(%rbp), %eax
	cltq
	orq	%rdx, %rax
	movq	%rax, -16(%rbp)
	subl	$1, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L66
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movl	-24(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -24(%rbp)
	cltq
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	nop
	subl	$16, -36(%rbp)
.L62:
	cmpl	$0, -36(%rbp)
	jg	.L67
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L68
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 16(%rax)
.L68:
	movl	-44(%rbp), %eax
	jmp	.L49
.L74:
	nop
.L61:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L69
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L69:
	movl	$0, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	BN_hex2bn, .-BN_hex2bn
	.globl	BN_dec2bn
	.type	BN_dec2bn, @function
BN_dec2bn:
.LFB164:
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
	movl	$0, -20(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L76
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L77
.L76:
	movl	$0, %eax
	jmp	.L78
.L77:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L79
	movl	$1, -20(%rbp)
	addq	$1, -48(%rbp)
.L79:
	movl	$0, -24(%rbp)
	jmp	.L80
.L98:
	nop
	addl	$1, -24(%rbp)
.L80:
	cmpl	$536870911, -24(%rbp)
	jg	.L81
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_isdigit@PLT
	testl	%eax, %eax
	jne	.L98
.L81:
	cmpl	$0, -24(%rbp)
	je	.L99
	cmpl	$536870911, -24(%rbp)
	jg	.L99
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L86
	movl	-32(%rbp), %eax
	jmp	.L78
.L86:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L87
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L88
	movl	$0, %eax
	jmp	.L78
.L87:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
.L88:
	movl	-24(%rbp), %eax
	leal	0(,%rax,4), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_expand
	testq	%rax, %rax
	je	.L100
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1808407283, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	$19, %eax
	subl	%edx, %eax
	movl	%eax, -28(%rbp)
	cmpl	$19, -28(%rbp)
	jne	.L90
	movl	$0, -28(%rbp)
.L90:
	movq	$0, -16(%rbp)
	jmp	.L91
.L94:
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cltq
	addq	%rax, -16(%rbp)
	addq	$1, -48(%rbp)
	addl	$1, -28(%rbp)
	cmpl	$19, -28(%rbp)
	jne	.L91
	movabsq	$-8446744073709551616, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_mul_word@PLT
	testl	%eax, %eax
	je	.L101
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	je	.L101
	movq	$0, -16(%rbp)
	movl	$0, -28(%rbp)
.L91:
	subl	$1, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jns	.L94
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L95
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 16(%rax)
.L95:
	movl	-32(%rbp), %eax
	jmp	.L78
.L99:
	nop
	jmp	.L85
.L100:
	nop
	jmp	.L85
.L101:
	nop
.L85:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L96
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L96:
	movl	$0, %eax
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	BN_dec2bn, .-BN_dec2bn
	.globl	BN_asc2bn
	.type	BN_asc2bn, @function
BN_asc2bn:
.LFB165:
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
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L103
	addq	$1, -8(%rbp)
.L103:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L104
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$88, %al
	je	.L105
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$120, %al
	jne	.L104
.L105:
	movq	-8(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	jne	.L108
	movl	$0, %eax
	jmp	.L107
.L104:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_dec2bn@PLT
	testl	%eax, %eax
	jne	.L108
	movl	$0, %eax
	jmp	.L107
.L108:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L109
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L109
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, 16(%rax)
.L109:
	movl	$1, %eax
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BN_asc2bn, .-BN_asc2bn
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 10
__func__.0:
	.string	"BN_hex2bn"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
